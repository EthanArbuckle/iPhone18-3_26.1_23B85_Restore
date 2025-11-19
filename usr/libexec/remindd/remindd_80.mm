uint64_t sub_100728C80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000FCBFC;

  return sub_1007268C4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100728D48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_100936FA8, &qword_100791B70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100728DB8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000FDA74;

  return sub_100726E8C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100728E80()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100728EC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100728F1C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100950D78);
  v1 = sub_100006654(v0, qword_100950D78);
  if (qword_1009364D0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100728FE4(void *a1, uint64_t a2, unint64_t a3, void *a4)
{
  v5 = v4;
  v118 = a3;
  v119 = a4;
  v117 = a2;
  v7 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = v94 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = v12[8];
  __chkstk_darwin(v11);
  v15 = v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [objc_opt_self() fetchRequest];
  sub_1000060C8(0, &qword_100950D90, off_1008D4180);
  v17 = NSManagedObjectContext.fetch<A>(_:)();
  if (v4)
  {

    return;
  }

  v100 = v16;
  v105 = v10;
  v106 = v7;
  v97 = a1;
  if (v17 >> 62)
  {
LABEL_54:
    v92 = v5;
    v93 = v17;
    v18 = _CocoaArrayWrapper.endIndex.getter();
    v17 = v93;
    v5 = v92;
    if (!v18)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v18)
    {
LABEL_43:

      return;
    }
  }

  v19 = v15;
  v109 = v17;
  v20 = [v97 persistentStoreCoordinator];
  if (!v20)
  {
    goto LABEL_43;
  }

  v21 = v20;
  v22 = v5;
  v23 = [v20 persistentStores];
  sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
  v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10027122C(v24);

  isa = Array._bridgeToObjectiveC()().super.isa;

  v26 = [v21 currentPersistentHistoryTokenFromStores:isa];

  if (!v26)
  {

    return;
  }

  v104 = v11;
  v27 = v26;
  v28 = [objc_allocWithZone(REMNSPersistentHistoryToken) initWithPersistentHistoryToken:v26];
  v29 = objc_opt_self();
  v120 = 0;
  v5 = [v29 archivedDataWithRootObject:v28 requiringSecureCoding:1 error:&v120];
  v30 = v120;
  if (!v5)
  {
    v90 = v30;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    return;
  }

  v95 = v27;
  v96 = v21;
  v94[1] = v22;
  v113 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v114 = v31;

  v17 = static Date.now.getter();
  v32 = v12;
  v15 = 0;
  v116 = v109 & 0xC000000000000001;
  v99 = v109 & 0xFFFFFFFFFFFFFF8;
  v98 = v109 + 32;
  v11 = v119;
  v12 = v119 + 7;
  v103 = "com.apple.siri.understanding";
  v94[0] = v32;
  v102 = (v32 + 7);
  *&v33 = 136316162;
  v101 = v33;
  v111 = v28;
  v112 = v19;
  v115 = v18;
  v110 = v119 + 7;
  do
  {
    if (v116)
    {
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v15 >= *(v99 + 16))
      {
        goto LABEL_53;
      }

      v17 = *(v98 + 8 * v15);
    }

    v5 = v17;
    if (__OFADD__(v15++, 1))
    {
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v35 = [v17 clientName];
    if (!v35)
    {
      goto LABEL_29;
    }

    v36 = v19;
    v37 = v35;
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    if (!v11 || !v119[2] || (v41 = v119, v42 = v119[5], Hasher.init(_seed:)(), String.hash(into:)(), v43 = Hasher._finalize()(), v44 = -1 << *(v41 + 32), v45 = v43 & ~v44, ((*(v12 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0))
    {
LABEL_28:

      v11 = v119;
LABEL_29:
      v49 = v117;
      v50 = Data._bridgeToObjectiveC()().super.isa;
      [v5 setLastConsumedChangeTokenData:v50];

      v51 = Date._bridgeToObjectiveC()().super.isa;
      [v5 setLastConsumedDate:v51];

      if (qword_100936798 != -1)
      {
        swift_once();
      }

      v52 = type metadata accessor for Logger();
      sub_100006654(v52, qword_100950D78);
      v53 = v5;
      v54 = v118;

      v5 = Logger.logObject.getter();
      v55 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v5, v55))
      {
        v108 = v55;
        v56 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        v122 = v107;
        *v56 = v101;
        *(v56 + 4) = sub_10000668C(v49, v54, &v122);
        *(v56 + 12) = 2080;
        *(v56 + 14) = sub_10000668C(0xD000000000000087, v103 | 0x8000000000000000, &v122);
        *(v56 + 22) = 2082;
        v57 = [v53 accountIdentifier];
        if (v57)
        {
          v58 = v57;
          v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v61 = v60;
        }

        else
        {
          v59 = 0;
          v61 = 0;
        }

        v120 = v59;
        v121 = v61;
        sub_1000F5104(&unk_100939E40, &qword_100791BD0);
        v62 = Optional.descriptionOrNil.getter();
        v64 = v63;

        v65 = sub_10000668C(v62, v64, &v122);

        *(v56 + 24) = v65;
        *(v56 + 32) = 2082;
        v66 = [v53 clientName];
        if (v66)
        {
          v67 = v66;
          v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v70 = v69;
        }

        else
        {
          v68 = 0;
          v70 = 0;
        }

        v71 = v104;
        v120 = v68;
        v121 = v70;
        v72 = Optional.descriptionOrNil.getter();
        v74 = v73;

        v75 = sub_10000668C(v72, v74, &v122);

        *(v56 + 34) = v75;
        *(v56 + 42) = 2082;
        v76 = [v53 lastConsumedDate];
        if (v76)
        {
          v77 = v105;
          v78 = v76;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v79 = 0;
        }

        else
        {
          v79 = 1;
          v77 = v105;
        }

        v80 = v108;
        (*v102)(v77, v79, 1, v71);
        v81 = Optional.descriptionOrNil.getter();
        v83 = v82;
        sub_1001AAD5C(v77);
        v84 = sub_10000668C(v81, v83, &v122);

        *(v56 + 44) = v84;
        _os_log_impl(&_mh_execute_header, v5, v80, "[%s|%s] Did reset change tracking state {accountIdentifier: %{public}s, clientName: %{public}s, lastConsumedDate: %{public}s}", v56, 0x34u);
        swift_arrayDestroy();

        v19 = v112;
        v11 = v119;
      }

      else
      {

        v19 = v112;
      }

      v12 = v110;
      v28 = v111;
      continue;
    }

    v46 = ~v44;
    while (1)
    {
      v47 = (v119[6] + 16 * v45);
      v48 = *v47 == v38 && v47[1] == v40;
      if (v48 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v45 = (v45 + 1) & v46;
      if (((*(v12 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    v11 = v119;
    v19 = v36;
  }

  while (v15 != v115);

  v85 = v97;
  if ([v97 hasChanges])
  {
    v120 = 0;
    v86 = [v85 save:&v120];
    v87 = v94[0];
    v88 = v100;
    if (v86)
    {
      v89 = v120;
      [v85 refreshAllObjects];
    }

    else
    {
      v91 = v120;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    sub_10001BBA0(v113, v114);
    (*(v87 + 8))(v19, v104);
  }

  else
  {
    (*(v94[0] + 8))(v19, v104);

    sub_10001BBA0(v113, v114);
  }
}

uint64_t sub_100729BA4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for REMCDBaseSection();
  result = Identifiable<>.id.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100729BE8()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100950D98);
  v1 = sub_100006654(v0, qword_100950D98);
  if (qword_100936410 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974F78);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100729CB0(__int16 a1)
{
  if ((a1 & 1) == 0)
  {
    v2 = &_swiftEmptyArrayStorage;
    if ((a1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_100365788(0, 1, 1, &_swiftEmptyArrayStorage);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_100365788((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0xD000000000000010;
  *(v5 + 5) = 0x80000001007FF9E0;
  if ((a1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100365788(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_100365788((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0xD000000000000017;
    *(v8 + 5) = 0x80000001007FF9C0;
  }

LABEL_12:
  if ((a1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100365788(0, *(v2 + 2) + 1, 1, v2);
    }

    v10 = *(v2 + 2);
    v9 = *(v2 + 3);
    if (v10 >= v9 >> 1)
    {
      v2 = sub_100365788((v9 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 2) = v10 + 1;
    v11 = &v2[16 * v10];
    strcpy(v11 + 32, ".writePrivate");
    *(v11 + 23) = -4864;
    if ((a1 & 8) == 0)
    {
LABEL_14:
      if ((a1 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_33;
    }
  }

  else if ((a1 & 8) == 0)
  {
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100365788(0, *(v2 + 2) + 1, 1, v2);
  }

  v13 = *(v2 + 2);
  v12 = *(v2 + 3);
  if (v13 >= v12 >> 1)
  {
    v2 = sub_100365788((v12 > 1), v13 + 1, 1, v2);
  }

  *(v2 + 2) = v13 + 1;
  v14 = &v2[16 * v13];
  *(v14 + 4) = 0x636E79732ELL;
  *(v14 + 5) = 0xE500000000000000;
  if ((a1 & 0x10) == 0)
  {
LABEL_15:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_33:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100365788(0, *(v2 + 2) + 1, 1, v2);
  }

  v16 = *(v2 + 2);
  v15 = *(v2 + 3);
  if (v16 >= v15 >> 1)
  {
    v2 = sub_100365788((v15 > 1), v16 + 1, 1, v2);
  }

  *(v2 + 2) = v16 + 1;
  v17 = &v2[16 * v16];
  *(v17 + 4) = 0x5465676E6168632ELL;
  *(v17 + 5) = 0xEF676E696B636172;
  if ((a1 & 0x20) == 0)
  {
LABEL_16:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_43;
  }

LABEL_38:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100365788(0, *(v2 + 2) + 1, 1, v2);
  }

  v19 = *(v2 + 2);
  v18 = *(v2 + 3);
  if (v19 >= v18 >> 1)
  {
    v2 = sub_100365788((v18 > 1), v19 + 1, 1, v2);
  }

  *(v2 + 2) = v19 + 1;
  v20 = &v2[16 * v19];
  *(v20 + 4) = 0x67756265642ELL;
  *(v20 + 5) = 0xE600000000000000;
  if ((a1 & 0x40) == 0)
  {
LABEL_17:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_48;
  }

LABEL_43:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100365788(0, *(v2 + 2) + 1, 1, v2);
  }

  v22 = *(v2 + 2);
  v21 = *(v2 + 3);
  if (v22 >= v21 >> 1)
  {
    v2 = sub_100365788((v21 > 1), v22 + 1, 1, v2);
  }

  *(v2 + 2) = v22 + 1;
  v23 = &v2[16 * v22];
  *(v23 + 4) = 0x6E697865646E692ELL;
  *(v23 + 5) = 0xE900000000000067;
  if ((a1 & 0x80) == 0)
  {
LABEL_18:
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_53;
  }

LABEL_48:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100365788(0, *(v2 + 2) + 1, 1, v2);
  }

  v25 = *(v2 + 2);
  v24 = *(v2 + 3);
  if (v25 >= v24 >> 1)
  {
    v2 = sub_100365788((v24 > 1), v25 + 1, 1, v2);
  }

  *(v2 + 2) = v25 + 1;
  v26 = &v2[16 * v25];
  *(v26 + 4) = 0x696C417065656B2ELL;
  *(v26 + 5) = 0xEA00000000006576;
  if ((a1 & 0x100) == 0)
  {
LABEL_19:
    if ((a1 & 0x200) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_58;
  }

LABEL_53:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100365788(0, *(v2 + 2) + 1, 1, v2);
  }

  v28 = *(v2 + 2);
  v27 = *(v2 + 3);
  if (v28 >= v27 >> 1)
  {
    v2 = sub_100365788((v27 > 1), v28 + 1, 1, v2);
  }

  *(v2 + 2) = v28 + 1;
  v29 = &v2[16 * v28];
  *(v29 + 4) = 0xD000000000000010;
  *(v29 + 5) = 0x80000001007FF9A0;
  if ((a1 & 0x200) == 0)
  {
LABEL_20:
    if ((a1 & 0x400) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_63;
  }

LABEL_58:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100365788(0, *(v2 + 2) + 1, 1, v2);
  }

  v31 = *(v2 + 2);
  v30 = *(v2 + 3);
  if (v31 >= v30 >> 1)
  {
    v2 = sub_100365788((v30 > 1), v31 + 1, 1, v2);
  }

  *(v2 + 2) = v31 + 1;
  v32 = &v2[16 * v31];
  *(v32 + 4) = 0x6163696C7065722ELL;
  *(v32 + 5) = 0xEF726567616E614DLL;
  if ((a1 & 0x400) == 0)
  {
LABEL_21:
    if ((a1 & 0x800) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_68;
  }

LABEL_63:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100365788(0, *(v2 + 2) + 1, 1, v2);
  }

  v34 = *(v2 + 2);
  v33 = *(v2 + 3);
  if (v34 >= v33 >> 1)
  {
    v2 = sub_100365788((v33 > 1), v34 + 1, 1, v2);
  }

  *(v2 + 2) = v34 + 1;
  v35 = &v2[16 * v34];
  *(v35 + 4) = 0xD000000000000012;
  *(v35 + 5) = 0x80000001007FF980;
  if ((a1 & 0x800) != 0)
  {
LABEL_68:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100365788(0, *(v2 + 2) + 1, 1, v2);
    }

    v37 = *(v2 + 2);
    v36 = *(v2 + 3);
    if (v37 >= v36 >> 1)
    {
      v2 = sub_100365788((v36 > 1), v37 + 1, 1, v2);
    }

    *(v2 + 2) = v37 + 1;
    v38 = &v2[16 * v37];
    *(v38 + 4) = 0xD000000000000011;
    *(v38 + 5) = 0x80000001007FF960;
  }

LABEL_73:
  sub_1000F5104(&unk_10093B300, &unk_100797780);
  sub_10025D9A0();
  v39 = BidirectionalCollection<>.joined(separator:)();
  v41 = v40;

  v42._countAndFlagsBits = v39;
  v42._object = v41;
  String.append(_:)(v42);

  v43._countAndFlagsBits = 93;
  v43._object = 0xE100000000000000;
  String.append(_:)(v43);
  return 91;
}

BOOL sub_10072A40C(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_10072A43C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_10072A468@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

_DWORD *sub_10072A528@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_10072A558@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = sub_10072A740(a1);

  *a2 = v3;
  return result;
}

unint64_t sub_10072A5AC()
{
  result = qword_100950DB0;
  if (!qword_100950DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100950DB0);
  }

  return result;
}

unint64_t sub_10072A604()
{
  result = qword_100950DB8;
  if (!qword_100950DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100950DB8);
  }

  return result;
}

unint64_t sub_10072A65C()
{
  result = qword_100950DC0;
  if (!qword_100950DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100950DC0);
  }

  return result;
}

unint64_t sub_10072A6B4()
{
  result = qword_100950DC8;
  if (!qword_100950DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100950DC8);
  }

  return result;
}

uint64_t sub_10072A708(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_10072A740(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_10072A77C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100950DD0);
  v1 = sub_100006654(v0, qword_100950DD0);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10072A844(uint64_t a1)
{
  v2 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v28[-v4];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v28[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(a1 + 16))
  {
    v11 = sub_100005F4C(0x7265746E756F63, 0xE700000000000000);
    if (v12)
    {
      sub_100005EF0(*(a1 + 56) + 32 * v11, v28);
      if (swift_dynamicCast())
      {
        if (*(a1 + 16))
        {
          v13 = v27;
          v14 = sub_100005F4C(0xD000000000000010, 0x80000001007FFD20);
          if (v15)
          {
            sub_100005EF0(*(a1 + 56) + 32 * v14, v28);
            if (swift_dynamicCast())
            {
              if (*(a1 + 16))
              {
                v16 = v27;
                v17 = sub_100005F4C(0x496163696C706572, 0xE900000000000044);
                if (v18)
                {
                  sub_100005EF0(*(a1 + 56) + 32 * v17, v28);
                  if (swift_dynamicCast())
                  {
                    UUID.init(uuidString:)();

                    if ((*(v7 + 48))(v5, 1, v6) != 1)
                    {
                      (*(v7 + 32))(v10, v5, v6);
                      v24 = objc_allocWithZone(swift_getObjCClassFromMetadata());
                      isa = UUID._bridgeToObjectiveC()().super.isa;
                      v26 = [v24 initWithCounter:*&v13 modificationTime:isa replicaID:v16];

                      (*(v7 + 8))(v10, v6);
                      return v26;
                    }

                    sub_1001A4F9C(v5);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  if (qword_1009367A8 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100006654(v19, qword_100950DD0);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Can't construct REMResolutionToken from invalid JSON", v22, 2u);
  }

  return 0;
}

id sub_10072ABE8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_10072A844(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10072AC10(uint64_t a1)
{
  if (!*(a1 + 16) || (v2 = sub_100005F4C(7364973, 0xE300000000000000), (v3 & 1) == 0) || (sub_100005EF0(*(a1 + 56) + 32 * v2, v37), sub_1000F5104(&qword_100950DE8, &qword_1007B7298), (swift_dynamicCast() & 1) == 0))
  {
    if (qword_1009367A8 == -1)
    {
LABEL_17:
      v26 = type metadata accessor for Logger();
      sub_100006654(v26, qword_100950DD0);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v27, v28, "Can't construct REMResolutionTokenMap from invalid JSON", v29, 2u);
      }

      return 0;
    }

LABEL_22:
    swift_once();
    goto LABEL_17;
  }

  sub_1000F5104(&qword_100950DF0, &unk_1007B72A0);
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  v6 = 0;
  v35 = v4;
  v7 = 1 << *(v36 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v36 + 64);
  v10 = (v7 + 63) >> 6;
  v34 = v4 + 64;
  if (!v9)
  {
LABEL_8:
    v12 = v6;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        sub_10045B758(v5);

        v30 = objc_allocWithZone(NSMutableDictionary);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v32 = [v30 initWithDictionary:isa];

        v33 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithMap:v32];
        return v33;
      }

      v13 = *(v36 + 64 + 8 * v6);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

  while (1)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_13:
    v14 = v11 | (v6 << 6);
    v15 = (*(v36 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(*(v36 + 56) + 8 * v14);
    sub_10072B12C();

    v20 = sub_10072A844(v19);

    v5 = v35;
    *(v34 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
    v22 = (v35[6] + 16 * v14);
    *v22 = v16;
    v22[1] = v17;
    *(v35[7] + 8 * v14) = v20;
    v23 = v35[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      break;
    }

    v35[2] = v25;
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10072B104@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10072AC10(a1);
  *a2 = result;
  return result;
}

unint64_t sub_10072B12C()
{
  result = qword_100950DF8;
  if (!qword_100950DF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100950DF8);
  }

  return result;
}

void _sSo13REMCDReminderC7reminddE24prepareForDeletion_SwiftyyF_0()
{
  v1 = v0;
  v2 = [v0 managedObjectContext];
  if (!v2)
  {
    return;
  }

  v43 = v2;
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
    v18 = v43;
LABEL_8:

    return;
  }

  v4 = v3;
  v42 = sub_10072DC30(v0);
  type metadata accessor for REMCDDueDateDeltaAlert();
  v5 = [objc_allocWithZone(NSFetchRequest) init];
  v6 = [swift_getObjCClassFromMetadata() entity];
  [v5 setEntity:v6];

  [v5 setAffectedStores:0];
  [v5 setPredicate:v42];
  v23 = NSManagedObjectContext.fetch<A>(_:)();

  if (qword_1009367B0 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_100006654(v24, qword_100950E00);
  swift_bridgeObjectRetain_n();
  v25 = v0;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  v28 = v23 >> 62;
  if (os_log_type_enabled(v26, v27))
  {
    v1 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v44[0] = v29;
    *v1 = 136446466;
    v30 = [v25 remObjectID];
    if (v30)
    {
      v31 = v30;
      v32 = [v30 description];

      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;
    }

    else
    {
      v33 = 7104878;
      v35 = 0xE300000000000000;
    }

    v36 = sub_10000668C(v33, v35, v44);

    *(v1 + 4) = v36;
    *(v1 + 12) = 2048;
    if (v28)
    {
      v37 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v37 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v1 + 14) = v37;

    _os_log_impl(&_mh_execute_header, v26, v27, "cleanUpCachedDueDateDeltaAlertsOnPreparationToReminderDeletion: prepareForDeletion on reminder {reminderID: %{public}s, alerts.count: %ld}", v1, 0x16u);
    sub_10000607C(v29);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  if (!v28)
  {
    v38 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v38)
    {
      goto LABEL_29;
    }

    goto LABEL_40;
  }

  v38 = _CocoaArrayWrapper.endIndex.getter();
  if (!v38)
  {
LABEL_40:

    v18 = v42;
    goto LABEL_8;
  }

LABEL_29:
  v39 = 0;
  while (1)
  {
    if ((v23 & 0xC000000000000001) != 0)
    {
      v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v39 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_38;
      }

      v40 = *(v23 + 8 * v39 + 32);
    }

    v1 = v40;
    v41 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    [v4 deleteObject:v40];

    ++v39;
    if (v41 == v38)
    {
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
  swift_once();
  v7 = type metadata accessor for Logger();
  sub_100006654(v7, qword_100950E00);
  v8 = v1;
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v44[0] = swift_slowAlloc();
    *v11 = 136446466;
    v12 = [v8 remObjectID];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 description];

      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;
    }

    else
    {
      v15 = 7104878;
      v17 = 0xE300000000000000;
    }

    v19 = sub_10000668C(v15, v17, v44);

    *(v11 + 4) = v19;
    *(v11 + 12) = 2082;
    swift_getErrorValue();
    v20 = Error.rem_errorDescription.getter();
    v22 = sub_10000668C(v20, v21, v44);

    *(v11 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v9, v10, "cleanUpCachedDueDateDeltaAlertsOnPreparationToReminderDeletion: Failed to delete REMCDDueDateDeltaAlert(s) on the side table {reminderID: %{public}s, error: %{public}s}", v11, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

uint64_t sub_10072B7A0()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100950E00);
  v1 = sub_100006654(v0, qword_100950E00);
  if (qword_1009364E0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Swift::Void __swiftcall REMCDReminder.processDueDateDeltaAlertsDataChanges()()
{
  _s44DueDateDeltaAlertsDataCDIngestionCoordinatorCMa();
  swift_allocObject();
  sub_10072C2FC(v0);
  static os_log_type_t.info.getter();
  measureTimeElapsed(_:level:block:)();
}

void sub_10072BAD0()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);
  v4 = sub_10072DC30(v3);
  if (!v1)
  {
    v5 = v4;
    v38 = v0;
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007953F0;
    *(inited + 32) = swift_getKeyPath();
    type metadata accessor for REMCDDueDateDeltaAlert();
    v7 = [objc_allocWithZone(NSFetchRequest) init];
    v8 = [swift_getObjCClassFromMetadata() entity];
    [v7 setEntity:v8];

    [v7 setAffectedStores:0];
    [v7 setPredicate:v5];
    v40 = _swiftEmptySetSingleton;

    sub_100391890(v9);

    sub_1003FE04C(_swiftEmptySetSingleton);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v7 setPropertiesToFetch:isa];

    swift_setDeallocating();
    v11 = *(inited + 16);
    swift_arrayDestroy();
    v12 = NSManagedObjectContext.fetch<A>(_:)();

    v13 = v3;
    v14 = sub_1002AFCFC();
    v15 = *(v38 + 24);
    v40 = 0;
    v16 = [v15 remObjectIDWithError:{&v40, v3}];
    v17 = v40;
    if (v16)
    {
      v18 = v16;
      v40 = 0;
      v19 = v17;
      v20 = [v13 remObjectIDWithError:&v40];
      v21 = v40;
      if (v20)
      {
        v22 = v20;
        type metadata accessor for REMDueDateDeltaAlertCDIngestor();
        v23 = swift_allocObject();
        *(v23 + 16) = v18;
        *(v23 + 24) = v22;
        v24 = v21;
        sub_10072C514(v14, v23);
        v40 = v14;

        sub_1000F5104(&qword_10093F5E0, &unk_1007B5240);
        type metadata accessor for UUID();
        sub_10072DEDC();
        sub_1001BE27C(&qword_10093B410);
        v27 = Sequence.mapToSet<A>(_:)();

        v40 = _swiftEmptyArrayStorage;

        sub_10072D7D8(v12, v27, v38, &v40);

        swift_bridgeObjectRelease_n();

        v28 = v40;
        if (v40[2])
        {
          if (qword_1009367B0 != -1)
          {
            swift_once();
          }

          v29 = type metadata accessor for Logger();
          sub_100006654(v29, qword_100950E00);
          v30 = Logger.logObject.getter();
          v31 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v30, v31))
          {
            v32 = swift_slowAlloc();
            v33 = swift_slowAlloc();
            v39 = v33;
            *v32 = 134218242;
            *(v32 + 4) = v28[2];
            *(v32 + 12) = 2080;

            v34 = Array.description.getter();
            v36 = v35;

            v37 = sub_10000668C(v34, v36, &v39);

            *(v32 + 14) = v37;
            _os_log_impl(&_mh_execute_header, v30, v31, "DueDateDeltaAlertsDataCDIngestionCoordinator: %ld REMCDDueDateDeltaAlert entries deleted {identifiers: %s}", v32, 0x16u);
            sub_10000607C(v33);
          }
        }

        sub_10072CE78(v14);
      }

      else
      {
        v26 = v40;

        _convertNSErrorToError(_:)();
        swift_willThrow();
      }
    }

    else
    {
      v25 = v40;

      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }
}

uint64_t *sub_10072C2FC(void *a1)
{
  v3 = v1;
  v4 = *v1;
  v1[2] = a1;
  v5 = a1;
  v8 = [v5 account];
  sub_1000F5104(&unk_100939D70, &qword_10079C100);
  Optional.tryUnwrap(_:file:line:)();

  if (v2)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    v1[3] = v10;
    v9 = [v5 storeControllerManagedObjectContext];
    sub_1000F5104(&unk_100950F60, &unk_1007B7350);
    Optional.tryUnwrap(_:file:line:)();

    v1[4] = v10;
    v7 = [objc_allocWithZone(RDPersistentStoreLookupForREMCDObject) init:v5];

    v3[5] = v7;
  }

  return v3;
}

uint64_t sub_10072C514(unint64_t a1, uint64_t a2)
{
  v76 = a2;
  v83 = type metadata accessor for UUID();
  v3 = *(v83 - 8);
  v4 = v3[8];
  __chkstk_darwin(v83);
  v82 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_34;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = a1; v6; i = a1)
  {
    v7 = 0;
    v80 = a1 & 0xFFFFFFFFFFFFFF8;
    v81 = a1 & 0xC000000000000001;
    v79 = v3 + 1;
    v8 = _swiftEmptyDictionarySingleton;
    v78 = v6;
    while (1)
    {
      if (v81)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *(v80 + 16))
        {
          goto LABEL_30;
        }

        v10 = *(a1 + 8 * v7 + 32);
      }

      a1 = v10;
      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v12 = [v10 identifier];
      v13 = v82;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v87 = type metadata accessor for REMCDDueDateDeltaAlert();
      sub_1000F5104(&unk_100950F40, &qword_1007AE990);
      String.init<A>(describing:)();
      v14 = objc_allocWithZone(REMObjectID);
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v16 = String._bridgeToObjectiveC()();

      v17 = [v14 initWithUUID:isa entityName:v16];

      (*v79)(v13, v83);
      if ((v8 & 0xC000000000000001) != 0)
      {
        if (v8 < 0)
        {
          v3 = v8;
        }

        else
        {
          v3 = (v8 & 0xFFFFFFFFFFFFFF8);
        }

        v18 = a1;
        v19 = __CocoaDictionary.count.getter();
        if (__OFADD__(v19, 1))
        {
          goto LABEL_32;
        }

        v8 = sub_10021EBBC(v3, v19 + 1);
      }

      else
      {
        v20 = a1;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v87 = v8;
      v3 = v8;
      v23 = sub_10002B924(v17);
      v24 = *(v8 + 16);
      v25 = (v22 & 1) == 0;
      v26 = v24 + v25;
      if (__OFADD__(v24, v25))
      {
        goto LABEL_31;
      }

      v27 = v22;
      if (*(v8 + 24) >= v26)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v8 = v87;
          if (v22)
          {
            goto LABEL_4;
          }
        }

        else
        {
          v3 = &v87;
          sub_100377D2C();
          v8 = v87;
          if (v27)
          {
            goto LABEL_4;
          }
        }
      }

      else
      {
        sub_100372788(v26, isUniquelyReferenced_nonNull_native);
        v3 = v87;
        v28 = sub_10002B924(v17);
        if ((v27 & 1) != (v29 & 1))
        {
          goto LABEL_98;
        }

        v23 = v28;
        v8 = v87;
        if (v27)
        {
LABEL_4:
          v9 = *(v8 + 56);
          v3 = *(v9 + 8 * v23);
          *(v9 + 8 * v23) = a1;

          goto LABEL_5;
        }
      }

      *(v8 + 8 * (v23 >> 6) + 64) |= 1 << v23;
      *(*(v8 + 48) + 8 * v23) = v17;
      *(*(v8 + 56) + 8 * v23) = a1;

      v30 = *(v8 + 16);
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_33;
      }

      *(v8 + 16) = v32;
LABEL_5:
      ++v7;
      a1 = i;
      if (v11 == v78)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  v8 = _swiftEmptyDictionarySingleton;
LABEL_36:
  v87 = _swiftEmptyArrayStorage;
  sub_100026EF4(0, 6, 0);
  v33 = 0;
  v34 = v87;
  v35 = 0x80000001007EA730;
  v36 = 0x80000001007E9F10;
  v37 = 0x80000001007EA710;
  do
  {
    v38 = *(&off_1008E44F0 + v33 + 32);
    v39 = 0xD00000000000001ALL;
    if (v38 == 4)
    {
      v39 = 0xD000000000000010;
      v40 = v36;
    }

    else
    {
      v40 = v35;
    }

    if (v38 == 3)
    {
      v39 = 0x6E6F697461657263;
      v40 = 0xEC00000065746144;
    }

    v41 = 0xD000000000000012;
    if (v38 == 1)
    {
      v42 = v37;
    }

    else
    {
      v41 = 0x4465746144657564;
      v42 = 0xEC00000061746C65;
    }

    if (!*(&off_1008E44F0 + v33 + 32))
    {
      v41 = 0x44497463656A626FLL;
      v42 = 0xE800000000000000;
    }

    if (*(&off_1008E44F0 + v33 + 32) <= 2u)
    {
      v43 = v41;
    }

    else
    {
      v43 = v39;
    }

    if (*(&off_1008E44F0 + v33 + 32) <= 2u)
    {
      v44 = v42;
    }

    else
    {
      v44 = v40;
    }

    v87 = v34;
    v46 = v34[2];
    v45 = v34[3];
    if (v46 >= v45 >> 1)
    {
      v48 = v35;
      v83 = v36;
      v49 = v37;
      sub_100026EF4((v45 > 1), v46 + 1, 1);
      v37 = v49;
      v36 = v83;
      v35 = v48;
      v34 = v87;
    }

    ++v33;
    v34[2] = (v46 + 1);
    v47 = &v34[2 * v46 + 4];
    *v47 = v43;
    v47[1] = v44;
  }

  while (v33 != 6);
  v85 = v34;
  v50 = _swiftEmptyArrayStorage;
  v87 = _swiftEmptyArrayStorage;
  sub_100026EF4(0, 1, 0);
  v51 = v87;
  v53 = v87[2];
  v52 = v87[3];
  v54 = (v53 + 1);
  if (v53 >= v52 >> 1)
  {
    goto LABEL_96;
  }

  while (1)
  {
    v51[2] = v54;
    v52 = &v51[2 * v53];
    *(v52 + 32) = 0x49746E756F636361;
    *(v52 + 40) = 0xE900000000000044;
    v86 = v51;
    v53 = v34[2];
    v50 = v50[2];
    v55 = v50 + v53;
    if (__OFADD__(v50, v53))
    {
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    v56 = swift_isUniquelyReferenced_nonNull_native();
    if (v56 && (v54 = _swiftEmptyArrayStorage, v55 <= _swiftEmptyArrayStorage[3] >> 1))
    {
      if (!v34[2])
      {
        goto LABEL_69;
      }
    }

    else
    {
      if (v50 <= v55)
      {
        v57 = v50 + v53;
      }

      else
      {
        v57 = v50;
      }

      v54 = sub_100365788(v56, v57, 1, _swiftEmptyArrayStorage);
      if (!v34[2])
      {
LABEL_69:

        if (v53)
        {
          goto LABEL_94;
        }

        v50 = *(v54 + 2);
        goto LABEL_71;
      }
    }

    v52 = (*(v54 + 3) >> 1) - *(v54 + 2);
    if (v52 < v53)
    {
      goto LABEL_95;
    }

    swift_arrayInitWithCopy();

    v50 = *(v54 + 2);
    if (v53)
    {
      v31 = __OFADD__(v50, v53);
      v50 = (v50 + v53);
      if (v31)
      {
        goto LABEL_97;
      }

      *(v54 + 2) = v50;
    }

LABEL_71:
    v58 = v86;
    v34 = v86[2];
    v53 = v34 + v50;
    if (__OFADD__(v50, v34))
    {
      goto LABEL_93;
    }

    v59 = swift_isUniquelyReferenced_nonNull_native();
    if (v59 && v53 <= *(v54 + 3) >> 1)
    {
      if (!v58[2])
      {
        goto LABEL_83;
      }
    }

    else
    {
      if (v50 <= v53)
      {
        v62 = v34 + v50;
      }

      else
      {
        v62 = v50;
      }

      v54 = sub_100365788(v59, v62, 1, v54);
      if (!v58[2])
      {
LABEL_83:

        if (!v34)
        {
          goto LABEL_84;
        }

        goto LABEL_94;
      }
    }

    v52 = (*(v54 + 3) >> 1) - *(v54 + 2);
    if (v52 >= v34)
    {
      break;
    }

LABEL_95:
    __break(1u);
LABEL_96:
    sub_100026EF4((v52 > 1), v54, 1);
    v51 = v87;
  }

  swift_arrayInitWithCopy();

  if (!v34)
  {
    goto LABEL_84;
  }

  v60 = *(v54 + 2);
  v31 = __OFADD__(v60, v34);
  v61 = v34 + v60;
  if (v31)
  {
LABEL_97:
    __break(1u);
LABEL_98:
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    goto LABEL_99;
  }

  *(v54 + 2) = v61;
LABEL_84:
  sub_1000F5104(&unk_10093B300, &unk_100797780);
  swift_arrayDestroy();
  v63 = sub_1001A5660(v54);

  if ((v8 & 0xC000000000000001) == 0)
  {
    v68 = v77;
    v69 = sub_1001BAF9C(v8, v63);
    if (v68)
    {
      goto LABEL_100;
    }

    v67 = v69;

    goto LABEL_92;
  }

  if (v8 < 0)
  {
    v64 = v8;
  }

  else
  {
    v64 = v8 & 0xFFFFFFFFFFFFFF8;
  }

  swift_bridgeObjectRetain_n();
  v65 = v77;
  v66 = sub_10072DF40(v64, v63);
  if (!v65)
  {
    v67 = v66;

LABEL_92:

    swift_bridgeObjectRelease_n();
    v71 = *(v75 + 32);
    v70 = *(v75 + 40);
    type metadata accessor for CDIngestionCoordinator();
    v72 = swift_allocObject();
    *(v72 + 16) = 0;
    *(v72 + 112) = _swiftEmptyArrayStorage;
    *(v72 + 120) = _swiftEmptyArrayStorage;
    *(v72 + 128) = _swiftEmptyArrayStorage;
    *(v72 + 136) = _swiftEmptyArrayStorage;
    *(v72 + 72) = v67;
    *(v72 + 80) = v70;
    *(v72 + 88) = v71;
    *(v72 + 24) = 0xD00000000000003ALL;
    *(v72 + 32) = 0x80000001007FFDE0;
    *(v72 + 48) = 0;
    *(v72 + 56) = 0;
    *(v72 + 40) = 0;
    *(v72 + 62) = 0;
    v73 = v71;
    swift_unknownObjectRetain();
    *(v72 + 144) = sub_10038F67C(_swiftEmptyArrayStorage);
    *(v72 + 96) = 0;
    *(v72 + 104) = 0;
    sub_1006006EC(i, v76);
    sub_1003DA48C();
  }

LABEL_99:
  swift_bridgeObjectRelease_n();
LABEL_100:

  __break(1u);
  return result;
}

void sub_10072CE20(id *a1)
{
  v1 = [*a1 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
}

void sub_10072CE78(unint64_t a1)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 32);
  v10 = sub_10072DC30(*(v1 + 16));
  if (!v2)
  {
    v11 = v10;
    v58 = v4;
    v59 = v8;
    v54 = v5;
    v51 = a1;
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007953F0;
    *(inited + 32) = swift_getKeyPath();
    type metadata accessor for REMCDDueDateDeltaAlert();
    v13 = [objc_allocWithZone(NSFetchRequest) init];
    v14 = [swift_getObjCClassFromMetadata() entity];
    [v13 setEntity:v14];

    [v13 setAffectedStores:0];
    [v13 setPredicate:v11];
    v62 = _swiftEmptySetSingleton;

    sub_100391890(v15);

    sub_1003FE04C(v62);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v13 setPropertiesToFetch:isa];

    swift_setDeallocating();
    v17 = *(inited + 16);
    swift_arrayDestroy();
    isUniquelyReferenced_nonNull_native = NSManagedObjectContext.fetch<A>(_:)();
    v19 = 0;

    if (isUniquelyReferenced_nonNull_native >> 62)
    {
LABEL_27:
      v20 = _CocoaArrayWrapper.endIndex.getter();
      v21 = v59;
      if (v20)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v20 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
      v21 = v59;
      if (v20)
      {
LABEL_4:
        v22 = 0;
        v23 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
        v53 = v54 + 16;
        v56 = (v54 + 8);
        v57 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
        v24 = _swiftEmptyDictionarySingleton;
        v55 = isUniquelyReferenced_nonNull_native;
        v52 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
        while (1)
        {
          if (v23)
          {
            v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v22 >= *(v57 + 16))
            {
              goto LABEL_24;
            }

            v27 = *(isUniquelyReferenced_nonNull_native + 8 * v22 + 32);
          }

          v28 = v27;
          if (__OFADD__(v22, 1))
          {
            __break(1u);
LABEL_24:
            __break(1u);
LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

          v60 = v22 + 1;
          v29 = [v27 identifier];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v30 = v28;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v62 = v24;
          v32 = sub_100363F20(v21);
          v33 = v24[2];
          v34 = (v31 & 1) == 0;
          v35 = v33 + v34;
          if (__OFADD__(v33, v34))
          {
            goto LABEL_25;
          }

          v36 = v31;
          if (v24[3] >= v35)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              v24 = v62;
              if (v31)
              {
                goto LABEL_5;
              }
            }

            else
            {
              sub_100377D40();
              v24 = v62;
              if (v36)
              {
                goto LABEL_5;
              }
            }
          }

          else
          {
            sub_10037279C(v35, isUniquelyReferenced_nonNull_native);
            v37 = sub_100363F20(v59);
            if ((v36 & 1) != (v38 & 1))
            {
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return;
            }

            v32 = v37;
            v24 = v62;
            if (v36)
            {
LABEL_5:
              v25 = v24[7];
              v26 = *(v25 + 8 * v32);
              *(v25 + 8 * v32) = v30;

              v21 = v59;
              (*v56)(v59, v58);
              goto LABEL_6;
            }
          }

          v39 = v20;
          v40 = v19;
          v24[(v32 >> 6) + 8] |= 1 << v32;
          v41 = v54;
          isUniquelyReferenced_nonNull_native = v58;
          v19 = v59;
          (*(v54 + 16))(v24[6] + *(v54 + 72) * v32, v59, v58);
          *(v24[7] + 8 * v32) = v30;
          v21 = v19;

          (*(v41 + 8))(v19, isUniquelyReferenced_nonNull_native);
          v42 = v24[2];
          v43 = __OFADD__(v42, 1);
          v44 = v42 + 1;
          if (v43)
          {
            goto LABEL_26;
          }

          v24[2] = v44;
          v19 = v40;
          v20 = v39;
          v23 = v52;
LABEL_6:
          ++v22;
          isUniquelyReferenced_nonNull_native = v55;
          if (v60 == v20)
          {
            goto LABEL_29;
          }
        }
      }
    }

    v24 = _swiftEmptyDictionarySingleton;
LABEL_29:

    v62 = 1;
    v45 = v51;
    if (v51 >> 62)
    {
      goto LABEL_41;
    }

    for (i = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v47 = 0;
      while (1)
      {
        if ((v45 & 0xC000000000000001) != 0)
        {
          v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v47 >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_40;
          }

          v48 = *(v45 + 8 * v47 + 32);
        }

        v49 = v48;
        v50 = v47 + 1;
        if (__OFADD__(v47, 1))
        {
          break;
        }

        v61 = v48;
        sub_10072D438(&v61, v24, &v62);

        ++v47;
        if (v50 == i)
        {
          goto LABEL_42;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      ;
    }

LABEL_42:
  }
}

void sub_10072D438(void **a1, uint64_t a2, void *a3)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = __chkstk_darwin(v12).n128_u64[0];
  v15 = v35 - v14;
  v16 = *a1;
  v17 = [v16 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(a2 + 16) && (v18 = sub_100363F20(v15), (v19 & 1) != 0))
  {
    v20 = *(v8 + 8);
    v21 = *(*(a2 + 56) + 8 * v18);
    v20(v15, v7);
    [v21 setSortOrder:*a3];

    if (__OFADD__(*a3, 1))
    {
      __break(1u);
    }

    else
    {
      ++*a3;
    }
  }

  else
  {
    v35[1] = v3;
    v22 = *(v8 + 8);
    v22(v15, v7);
    if (qword_1009367B0 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100006654(v23, qword_100950E00);
    v24 = v16;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v35[0] = v22;
      v29 = v28;
      v36 = v28;
      *v27 = 136315138;
      v30 = [v24 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1001BE27C(&qword_10093F2A0);
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v32;
      (v35[0])(v11, v7);
      v34 = sub_10000668C(v31, v33, &v36);

      *(v27 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v25, v26, "DueDateDeltaAlertsDataCDIngestionCoordinator.applySortOrder: No CD alert found for alert identifier %s", v27, 0xCu);
      sub_10000607C(v29);
    }
  }
}

uint64_t sub_10072D770()
{
  v1 = *(v0 + 40);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_10072D7D8(unint64_t a1, void *a2, uint64_t a3, void **a4)
{
  v39 = a3;
  v40 = a4;
  v51 = a2;
  v5 = type metadata accessor for UUID();
  v45 = *(v5 - 8);
  v6 = *(v45 + 64);
  __chkstk_darwin(v5);
  v46 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v38 - v9;
  __chkstk_darwin(v11);
  v52 = v38 - v12;
  v38[0] = a1;
  if (a1 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v14 = 0;
    v43 = v38[0] & 0xFFFFFFFFFFFFFF8;
    v44 = v38[0] & 0xC000000000000001;
    v41 = v38[0] + 32;
    v42 = i;
    v49 = v45 + 16;
    v50 = v51 + 7;
    v15 = (v45 + 8);
    v38[2] = v45 + 32;
    while (v44)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v19 = __OFADD__(v14, 1);
      v20 = v14 + 1;
      if (v19)
      {
        goto LABEL_21;
      }

LABEL_9:
      v47 = v18;
      v48 = v20;
      v21 = [v18 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      if (v51[2] && (v22 = v51, v23 = v51[5], sub_1001BE27C(&qword_10093B410), v24 = dispatch thunk of Hashable._rawHashValue(seed:)(), v25 = -1 << *(v22 + 32), v26 = v24 & ~v25, ((*(v50 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) != 0))
      {
        v27 = ~v25;
        v28 = *(v45 + 72);
        v29 = *(v45 + 16);
        while (1)
        {
          v29(v10, v51[6] + v28 * v26, v5);
          sub_1001BE27C(&qword_10093A3E0);
          v30 = dispatch thunk of static Equatable.== infix(_:_:)();
          v31 = *v15;
          (*v15)(v10, v5);
          if (v30)
          {
            break;
          }

          v26 = (v26 + 1) & v27;
          if (((*(v50 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
          {
            goto LABEL_14;
          }
        }

        v31(v52, v5);
        v16 = v42;
        v17 = v47;
      }

      else
      {
LABEL_14:
        (*v15)(v52, v5);
        v17 = v47;
        [*(v39 + 32) deleteObject:v47];
        v32 = [v17 identifier];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v33 = v40;
        v34 = *v40;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v33 = v34;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v34 = sub_100366328(0, v34[2] + 1, 1, v34);
          *v40 = v34;
        }

        v16 = v42;
        v37 = v34[2];
        v36 = v34[3];
        if (v37 >= v36 >> 1)
        {
          v34 = sub_100366328(v36 > 1, v37 + 1, 1, v34);
          *v40 = v34;
        }

        v34[2] = v37 + 1;
        (*(v45 + 32))(v34 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v37, v46, v5);
      }

      v14 = v48;
      if (v48 == v16)
      {
        return;
      }
    }

    if (v14 >= *(v43 + 16))
    {
      goto LABEL_22;
    }

    v18 = *(v41 + 8 * v14);
    v19 = __OFADD__(v14, 1);
    v20 = v14 + 1;
    if (!v19)
    {
      goto LABEL_9;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }
}

uint64_t sub_10072DC30(void *a1)
{
  v2 = v1;
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v23 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = __chkstk_darwin(v13).n128_u64[0];
  v16 = &v23 - v15;
  v17 = [a1 identifier];
  if (v17)
  {
    v18 = v17;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v9 + 32))(v7, v12, v8);
    (*(v9 + 56))(v7, 0, 1, v8);
  }

  else
  {
    (*(v9 + 56))(v7, 1, 1, v8);
  }

  Optional.tryUnwrap(_:file:line:)();
  sub_1001A4F9C(v7);
  if (!v1)
  {
    sub_1000F5104(&qword_10093D000, &qword_10079D320);
    v19 = *(v9 + 72);
    v20 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_100791300;
    (*(v9 + 16))(v21 + v20, v16, v8);
    v2 = sub_100231B7C(v21, 129);

    (*(v9 + 8))(v16, v8);
  }

  return v2;
}

unint64_t sub_10072DEDC()
{
  result = qword_100950F30;
  if (!qword_100950F30)
  {
    sub_1000F514C(&qword_10093F5E0, &unk_1007B5240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100950F30);
  }

  return result;
}

Swift::Int sub_10072DF40(uint64_t a1, uint64_t a2)
{
  if (__CocoaDictionary.count.getter())
  {
    sub_1000F5104(&unk_100943C60, &unk_100798920);
    v3 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v3 = _swiftEmptyDictionarySingleton;
  }

  v20 = v3;
  __CocoaDictionary.makeIterator()();
  swift_unknownObjectRetain();
  v4 = __CocoaDictionary.Iterator.next()();
  if (v4)
  {
    v5 = v4;
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    v6 = v5;
    do
    {
      v18 = v6;
      swift_dynamicCast();
      sub_1000060C8(0, &unk_100950F50, REMDueDateDeltaAlert_ptr);
      swift_dynamicCast();

      v13 = v3[2];
      if (v3[3] <= v13)
      {
        sub_10036CE68(v13 + 1, 1);
      }

      v3 = v20;
      result = NSObject._rawHashValue(seed:)(v20[5]);
      v8 = v20 + 8;
      v9 = -1 << *(v20 + 32);
      v10 = result & ~v9;
      v11 = v10 >> 6;
      if (((-1 << v10) & ~v20[(v10 >> 6) + 8]) != 0)
      {
        v12 = __clz(__rbit64((-1 << v10) & ~v20[(v10 >> 6) + 8])) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v14 = 0;
        v15 = (63 - v9) >> 6;
        do
        {
          if (++v11 == v15 && (v14 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v16 = v11 == v15;
          if (v11 == v15)
          {
            v11 = 0;
          }

          v14 |= v16;
          v17 = v8[v11];
        }

        while (v17 == -1);
        v12 = __clz(__rbit64(~v17)) + (v11 << 6);
      }

      *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(v20[6] + 8 * v12) = v19;
      *(v20[7] + 8 * v12) = a2;
      ++v20[2];
      v6 = __CocoaDictionary.Iterator.next()();
    }

    while (v6);
  }

  return v3;
}

uint64_t sub_10072E1A8(uint64_t a1)
{
  v2 = type metadata accessor for REMRemindersListDataView.ReminderLite();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = _swiftEmptyArrayStorage;
  v50 = *(a1 + 16);
  if (!v50)
  {
    return v8;
  }

  v45 = &v44 - v7;
  v47 = v5;
  v9 = type metadata accessor for REMRemindersListDataView.DatesModel.Group();
  v10 = 0;
  v11 = *(v9 - 8);
  v49 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v48 = *(v11 + 72);
  v56[5] = v3 + 16;
  v52 = v3;
  v46 = (v3 + 8);
  while (1)
  {
    v53 = v10;
    v14 = REMRemindersListDataView.DatesModel.Group.reminders.getter();
    v15 = *(v14 + 16);
    if (v15)
    {
      v54 = v8;
      v56[0] = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v16 = *(v3 + 80);
      v51 = v14;
      v17 = v14 + ((v16 + 32) & ~v16);
      v55 = *(v3 + 72);
      v18 = *(v3 + 16);
      v20 = v46;
      v19 = v47;
      v21 = v45;
      do
      {
        v18(v21, v17, v19);
        REMRemindersListDataView.ReminderLite.objectID.getter();
        (*v20)(v21, v19);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v22 = *(v56[0] + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v17 += v55;
        --v15;
      }

      while (v15);

      v23 = v56[0];
      v3 = v52;
      v8 = v54;
    }

    else
    {

      v23 = _swiftEmptyArrayStorage;
    }

    v24 = v23 >> 62;
    v25 = v23 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v26 = v8 >> 62;
    if (v8 >> 62)
    {
      v43 = _CocoaArrayWrapper.endIndex.getter();
      v28 = v43 + v25;
      if (__OFADD__(v43, v25))
      {
LABEL_39:
        __break(1u);
        return v8;
      }
    }

    else
    {
      v27 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v28 = v27 + v25;
      if (__OFADD__(v27, v25))
      {
        goto LABEL_39;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v55 = v25;
    if (result)
    {
      if (v26)
      {
        goto LABEL_21;
      }

      v29 = v8 & 0xFFFFFFFFFFFFFF8;
      if (v28 <= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v26)
      {
LABEL_21:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_22;
      }

      v29 = v8 & 0xFFFFFFFFFFFFFF8;
    }

    v30 = *(v29 + 16);
LABEL_22:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v8 = result;
    v29 = result & 0xFFFFFFFFFFFFFF8;
LABEL_23:
    v31 = *(v29 + 16);
    v32 = *(v29 + 24);
    if (v24)
    {
      break;
    }

    v33 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v33)
    {
      goto LABEL_3;
    }

LABEL_27:
    if (((v32 >> 1) - v31) < v55)
    {
      goto LABEL_42;
    }

    v54 = v8;
    v35 = v29 + 8 * v31 + 32;
    v51 = v29;
    if (v24)
    {
      if (v33 < 1)
      {
        goto LABEL_44;
      }

      sub_10000CB48(&qword_10093F5A0, &qword_10093F598, &qword_1007A2640);
      for (i = 0; i != v33; ++i)
      {
        sub_1000F5104(&qword_10093F598, &qword_1007A2640);
        v37 = sub_10038D6F8(v56, i, v23);
        v39 = *v38;
        (v37)(v56, 0);
        *(v35 + 8 * i) = v39;
      }
    }

    else
    {
      type metadata accessor for REMObjectID_Codable();
      swift_arrayInitWithCopy();
    }

    v8 = v54;
    v3 = v52;
    v13 = v53;
    if (v55 >= 1)
    {
      v40 = *(v51 + 16);
      v41 = __OFADD__(v40, v55);
      v42 = v40 + v55;
      if (v41)
      {
        goto LABEL_43;
      }

      *(v51 + 16) = v42;
    }

LABEL_4:
    v10 = v13 + 1;
    if (v10 == v50)
    {
      return v8;
    }
  }

  v34 = v29;
  result = _CocoaArrayWrapper.endIndex.getter();
  v29 = v34;
  v33 = result;
  if (result)
  {
    goto LABEL_27;
  }

LABEL_3:

  v13 = v53;
  if (v55 <= 0)
  {
    goto LABEL_4;
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

uint64_t sub_10072E660()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100950F70);
  v1 = sub_100006654(v0, qword_100950F70);
  if (qword_100936448 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975020);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10072E728()
{
  v1 = v0;
  v2 = sub_1000F5104(&qword_100942CA0, &qword_1007A3810);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v29[-v4];
  v6 = type metadata accessor for RDStoreControllerNotificationCenter.Token(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v29[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = OBJC_IVAR____TtC7remindd25RDTodayNotificationEngine_storeControllerObservationToken;
  swift_beginAccess();
  sub_100010364(v1 + v11, v5, &qword_100942CA0, &qword_1007A3810);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1000050A4(v5, &qword_100942CA0, &qword_1007A3810);
  }

  else
  {
    sub_10014D83C(v5, v10, type metadata accessor for RDStoreControllerNotificationCenter.Token);
    v12 = *(v1 + 72);
    v13 = *(v12 + 40);

    os_unfair_lock_lock(v13);
    __chkstk_darwin(v14);
    *&v29[-16] = v10;
    swift_beginAccess();
    v15 = sub_1002601AC(sub_10014D8A4, &v29[-32]);
    v16 = *(*(v12 + 48) + 16);
    if (v16 < v15)
    {
      __break(1u);
      result = swift_endAccess();
      __break(1u);
      return result;
    }

    sub_100260C60(v15, v16);
    swift_endAccess();
    os_unfair_lock_unlock(v13);

    sub_10014D8C4(v10, type metadata accessor for RDStoreControllerNotificationCenter.Token);
  }

  v17 = OBJC_IVAR____TtC7remindd25RDTodayNotificationEngine_lastDismissedDateDidChangeExternally;
  if (*(v1 + OBJC_IVAR____TtC7remindd25RDTodayNotificationEngine_lastDismissedDateDidChangeExternally))
  {
    v18 = *(v1 + OBJC_IVAR____TtC7remindd25RDTodayNotificationEngine_lastDismissedDateDidChangeExternally);

    AnyCancellable.cancel()();

    v19 = *(v1 + v17);
  }

  *(v1 + v17) = 0;

  v20 = *(v1 + 24);
  swift_unknownObjectRelease();
  v21 = *(v1 + 40);
  swift_unknownObjectRelease();
  v22 = *(v1 + 56);
  swift_unknownObjectRelease();
  v23 = *(v1 + 72);

  sub_10000607C((v1 + 80));

  v24 = *(v1 + 128);

  sub_1000050A4(v1 + v11, &qword_100942CA0, &qword_1007A3810);
  v25 = *(v1 + OBJC_IVAR____TtC7remindd25RDTodayNotificationEngine_todayNotificationTimeObserver);
  swift_unknownObjectRelease();
  v26 = *(v1 + OBJC_IVAR____TtC7remindd25RDTodayNotificationEngine_badgeCountCriteriaObserver);
  swift_unknownObjectRelease();
  v27 = *(v1 + v17);

  sub_1000050A4(v1 + OBJC_IVAR____TtC7remindd25RDTodayNotificationEngine_cachedLastDismissedDate, &unk_100938850, qword_100795AE0);
  return v1;
}

uint64_t sub_10072EA7C()
{
  sub_10072E728();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RDTodayNotificationEngine()
{
  result = qword_100950FE0;
  if (!qword_100950FE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10072EB28()
{
  sub_10073B0EC(319, &qword_100938FA0, type metadata accessor for RDStoreControllerNotificationCenter.Token);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_10073B0EC(319, &qword_100938D60, &type metadata accessor for Date);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_10072EC78()
{
  v1 = v0;
  v128 = type metadata accessor for RDStoreControllerNotificationCenter.Observer(0);
  v2 = *(v128 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v128);
  v135 = &v116 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v116 - v6;
  v8 = sub_1000F5104(&qword_100942CA0, &qword_1007A3810);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v116 - v10;
  v12 = sub_1000F5104(&qword_100939980, &unk_10079ADA0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v124 = &v116 - v14;
  v127 = sub_1000F5104(&qword_100951200, &unk_1007B7460);
  v126 = *(v127 - 8);
  v15 = *(v126 + 64);
  __chkstk_darwin(v127);
  v125 = &v116 - v16;
  v118 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v17 = *(*(v118 - 8) + 64);
  v18 = __chkstk_darwin(v118);
  v20 = &v116 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v116 - v21;
  v23 = type metadata accessor for DispatchPredicate();
  v24 = *(v23 - 8);
  v25 = v24[8];
  __chkstk_darwin(v23);
  v27 = (&v116 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = v0[2];
  *v27 = v28;
  v29 = v24[13];
  v131 = enum case for DispatchPredicate.onQueue(_:);
  v132 = v24 + 13;
  v130 = v29;
  v29(v27);
  v123 = v28;
  LOBYTE(v28) = _dispatchPreconditionTest(_:)();
  v30 = v24[1];
  v134 = v23;
  v133 = v24 + 1;
  v129 = v30;
  v30(v27, v23);
  if ((v28 & 1) == 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  v120 = v2;
  v31 = OBJC_IVAR____TtC7remindd25RDTodayNotificationEngine_started;
  if (*(v1 + OBJC_IVAR____TtC7remindd25RDTodayNotificationEngine_started))
  {
    if (qword_1009367B8 == -1)
    {
LABEL_4:
      v32 = type metadata accessor for Logger();
      sub_100006654(v32, qword_100950F70);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&_mh_execute_header, v33, v34, "RDTodayNotificationEngine.start() must be called exactly once", v35, 2u);
      }

      return;
    }

LABEL_23:
    swift_once();
    goto LABEL_4;
  }

  v121 = v7;
  v122 = v11;
  v119 = v22;
  if (qword_1009367B8 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  sub_100006654(v36, qword_100950F70);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&_mh_execute_header, v37, v38, "Starting RDTodayNotificationEngine", v39, 2u);
  }

  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&_mh_execute_header, v40, v41, "os_transaction INIT {name: com.apple.remindd.todayEngine.start}", v42, 2u);
  }

  v43 = os_transaction_create();
  *(v1 + v31) = 1;
  swift_beginAccess();
  sub_10000A87C((v1 + 10), &v143);
  v44 = v144;
  v45 = v145;
  sub_10000F61C(&v143, v144);
  v46 = v119;
  (*(v45 + 8))(v44, v45);
  v47 = OBJC_IVAR____TtC7remindd25RDTodayNotificationEngine_cachedLastDismissedDate;
  swift_beginAccess();
  sub_1003CA59C(v46, v1 + v47);
  swift_endAccess();
  sub_100010364(v46, v20, &unk_100938850, qword_100795AE0);
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();
  v50 = os_log_type_enabled(v48, v49);
  v117 = v43;
  v116 = v27;
  if (v50)
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    aBlock = v52;
    *v51 = 136315138;
    v53 = Optional.descriptionOrNil.getter();
    v55 = v54;
    sub_1000050A4(v20, &unk_100938850, qword_100795AE0);
    v56 = sub_10000668C(v53, v55, &aBlock);

    *(v51 + 4) = v56;
    _os_log_impl(&_mh_execute_header, v48, v49, "RDTodayNotificationEngine: bootstrapping cachedLastDismissedDate from RDSynchronizedDismissedTodayNotificationStates {value: %s}", v51, 0xCu);
    sub_10000607C(v52);
  }

  else
  {

    sub_1000050A4(v20, &unk_100938850, qword_100795AE0);
  }

  sub_100736F1C(0x61727473746F6F62, 0xE900000000000070);
  v57 = v144;
  v58 = v145;
  sub_10000F61C(&v143, v144);
  aBlock = (*(v58 + 32))(v57, v58);
  v59 = v123;
  v142 = v123;
  v60 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v61 = v124;
  (*(*(v60 - 8) + 56))(v124, 1, 1, v60);
  v62 = v59;
  v123 = v62;
  sub_1000F5104(&qword_10094DB70, &qword_1007B3770);
  sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
  sub_10000CB48(&qword_10094DB78, &qword_10094DB70, &qword_1007B3770);
  sub_10000CDE4(&qword_10093CD40, &qword_10093E6E0, OS_dispatch_queue_ptr);
  v63 = v125;
  Publisher.receive<A>(on:options:)();
  sub_1000050A4(v61, &qword_100939980, &unk_10079ADA0);

  type metadata accessor for RDTodayNotificationEngine();
  sub_10000CB48(&qword_100951208, &qword_100951200, &unk_1007B7460);
  v64 = v127;
  v65 = Publisher.sink<A>(weakTarget:receiveValue:receiveCompletion:)();
  (*(v126 + 8))(v63, v64);
  v66 = *(v1 + OBJC_IVAR____TtC7remindd25RDTodayNotificationEngine_lastDismissedDateDidChangeExternally);
  *(v1 + OBJC_IVAR____TtC7remindd25RDTodayNotificationEngine_lastDismissedDateDidChangeExternally) = v65;

  v67 = v1[3];
  v68 = v1[4];
  ObjectType = swift_getObjectType();
  v70 = swift_allocObject();
  swift_weakInit();
  v71 = *(v68 + 8);
  v72 = *(v71 + 16);

  v72(sub_10073E664, v70, ObjectType, v71);

  v73 = objc_opt_self();
  v74 = [v73 daemonUserDefaults];
  v75 = swift_allocObject();
  swift_weakInit();
  v140 = sub_10073E66C;
  v141 = v75;
  aBlock = _NSConcreteStackBlock;
  v137 = 1107296256;
  v138 = sub_1007307E8;
  v139 = &unk_1008FD910;
  v76 = _Block_copy(&aBlock);

  v77 = [v74 streamTodayNotificationFireTime:v76];
  _Block_release(v76);

  v78 = *(v1 + OBJC_IVAR____TtC7remindd25RDTodayNotificationEngine_todayNotificationTimeObserver);
  *(v1 + OBJC_IVAR____TtC7remindd25RDTodayNotificationEngine_todayNotificationTimeObserver) = v77;
  swift_unknownObjectRelease();
  v79 = v1[5];
  v80 = v1[6];
  v81 = swift_getObjectType();
  v82 = swift_allocObject();
  swift_weakInit();
  v83 = *(v80 + 16);

  v83(sub_10073E674, v82, v81, v80);

  v84 = [v73 daemonUserDefaults];
  v85 = swift_allocObject();
  swift_weakInit();
  v140 = sub_10073E67C;
  v141 = v85;
  aBlock = _NSConcreteStackBlock;
  v137 = 1107296256;
  v138 = sub_10073150C;
  v139 = &unk_1008FD938;
  v86 = _Block_copy(&aBlock);

  v87 = [v84 streamShouldIncludeRemindersDueTodayInBadgeCount:v86];
  _Block_release(v86);

  v88 = *(v1 + OBJC_IVAR____TtC7remindd25RDTodayNotificationEngine_badgeCountCriteriaObserver);
  *(v1 + OBJC_IVAR____TtC7remindd25RDTodayNotificationEngine_badgeCountCriteriaObserver) = v87;
  swift_unknownObjectRelease();
  v89 = v1[9];
  sub_1000F5104(&unk_100936FD0, &unk_100795D40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  v91 = [objc_opt_self() cdEntityName];
  v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v94 = v93;

  *(inited + 32) = v92;
  *(inited + 40) = v94;
  v95 = sub_10038D894(inited);
  swift_setDeallocating();
  sub_100034610(inited + 32);
  v96 = swift_allocObject();
  swift_weakInit();

  v97 = v122;
  UUID.init()();
  v98 = v121;
  sub_100026CD8(v97, v121, type metadata accessor for RDStoreControllerNotificationCenter.Token);
  v99 = v128;
  *(v98 + *(v128 + 20)) = v95;
  v100 = v123;
  *(v98 + *(v99 + 24)) = v123;
  v101 = (v98 + *(v99 + 28));
  *v101 = sub_10073E684;
  v101[1] = v96;
  v102 = *(v89 + 40);
  v103 = v100;

  os_unfair_lock_lock(v102);
  sub_100026CD8(v98, v135, type metadata accessor for RDStoreControllerNotificationCenter.Observer);
  swift_beginAccess();
  v104 = *(v89 + 48);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v89 + 48) = v104;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v104 = sub_100365714(0, v104[2] + 1, 1, v104);
    *(v89 + 48) = v104;
  }

  v106 = v116;
  v108 = v104[2];
  v107 = v104[3];
  if (v108 >= v107 >> 1)
  {
    v104 = sub_100365714(v107 > 1, v108 + 1, 1, v104);
  }

  v104[2] = v108 + 1;
  sub_10014D83C(v135, v104 + ((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v108, type metadata accessor for RDStoreControllerNotificationCenter.Observer);
  *(v89 + 48) = v104;
  swift_endAccess();
  os_unfair_lock_unlock(v102);

  sub_10014D8C4(v121, type metadata accessor for RDStoreControllerNotificationCenter.Observer);

  v109 = type metadata accessor for RDStoreControllerNotificationCenter.Token(0);
  v110 = v122;
  (*(*(v109 - 8) + 56))(v122, 0, 1, v109);
  v111 = OBJC_IVAR____TtC7remindd25RDTodayNotificationEngine_storeControllerObservationToken;
  swift_beginAccess();
  sub_100117A3C(v110, v1 + v111, &qword_100942CA0, &qword_1007A3810);
  swift_endAccess();
  v112 = swift_allocObject();
  *(v112 + 16) = v117;
  *v106 = v103;
  v113 = v134;
  v130(v106, v131, v134);
  swift_unknownObjectRetain();
  v114 = _dispatchPreconditionTest(_:)();
  v129(v106, v113);
  if (v114)
  {
    v115 = swift_allocObject();
    *(v115 + 16) = sub_10073E68C;
    *(v115 + 24) = v112;

    sub_100739E7C(sub_10073E6B0, v115);
    swift_unknownObjectRelease();

    sub_1000050A4(v119, &unk_100938850, qword_100795AE0);
    sub_10000607C(&v143);
  }

  else
  {
    __break(1u);
  }
}

void sub_10072FD84()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = (&v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (qword_1009367B8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100006654(v7, qword_100950F70);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "todayNotification XPC Event triggered", v10, 2u);
    }

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "os_transaction INIT {name: com.apple.remindd.todayEngine.bannerTimeEventStream}", v13, 2u);
    }

    v14 = os_transaction_create();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    v16 = *(v6 + 16);
    *v4 = v16;
    (*(v1 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v0);
    swift_unknownObjectRetain();
    v17 = v16;
    LOBYTE(v16) = _dispatchPreconditionTest(_:)();
    (*(v1 + 8))(v4, v0);
    if (v16)
    {
      v18 = swift_allocObject();
      v18[2] = v6;
      v18[3] = sub_10073E914;
      v18[4] = v15;

      sub_100732288(sub_10073EA08, v18);

      swift_unknownObjectRelease();

      return;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (qword_1009367B8 != -1)
  {
LABEL_15:
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100006654(v19, qword_100950F70);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Received RDTimeEventHandler event on deallocated RDTodayNotificationEngine", v22, 2u);
  }
}

void sub_100730144(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v46 = *(v4 - 8);
  v47 = v4;
  v5 = *(v46 + 64);
  __chkstk_darwin(v4);
  v44 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for DispatchQoS();
  v43 = *(v45 - 8);
  v7 = *(v43 + 64);
  __chkstk_darwin(v45);
  v42 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F5104(&qword_10093B790, &qword_100798D88);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v41 - v14;
  if (qword_1009367B8 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v17 = sub_100006654(v16, qword_100950F70);
  sub_100010364(a1, v15, &qword_10093B790, &qword_100798D88);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v41[0] = v17;
    v41[1] = a2;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    aBlock[0] = v21;
    *v20 = 136315138;
    sub_100010364(v15, v13, &qword_10093B790, &qword_100798D88);
    v22 = type metadata accessor for DateComponents();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v13, 1, v22) == 1)
    {
      sub_1000050A4(v13, &qword_10093B790, &qword_100798D88);
      v24 = 0xE300000000000000;
      v25 = 7104878;
    }

    else
    {
      v25 = DateComponents.description.getter();
      v24 = v26;
      (*(v23 + 8))(v13, v22);
    }

    sub_1000050A4(v15, &qword_10093B790, &qword_100798D88);
    v27 = sub_10000668C(v25, v24, aBlock);

    *(v20 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v18, v19, "streamTodayNotificationFireTime: %s", v20, 0xCu);
    sub_10000607C(v21);
  }

  else
  {

    sub_1000050A4(v15, &qword_10093B790, &qword_100798D88);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v29 = Logger.logObject.getter();
  if (Strong)
  {
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "os_transaction INIT {name: com.apple.remindd.todayEngine.todayNotificationTimeObserver}", v31, 2u);
    }

    v32 = os_transaction_create();
    v33 = *(Strong + 16);
    v34 = swift_allocObject();
    *(v34 + 16) = Strong;
    *(v34 + 24) = v32;
    aBlock[4] = sub_10073E89C;
    aBlock[5] = v34;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019200;
    aBlock[3] = &unk_1008FDB68;
    v35 = _Block_copy(aBlock);

    swift_unknownObjectRetain();
    v36 = v42;
    static DispatchQoS.unspecified.getter();
    v48 = _swiftEmptyArrayStorage;
    sub_100054724(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000F5104(&unk_100939E50, &unk_100791AD0);
    sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
    v37 = v44;
    v38 = v47;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v35);
    swift_unknownObjectRelease();
    (*(v46 + 8))(v37, v38);
    (*(v43 + 8))(v36, v45);
  }

  else
  {
    v39 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v29, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v29, v39, "Received streamTodayNotificationFireTime callback on deallocated RDTodayNotificationEngine", v40, 2u);
    }
  }
}

uint64_t sub_1007307E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_10093B790, &qword_100798D88);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v13 - v6;
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  if (a2)
  {
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = type metadata accessor for DateComponents();
    (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
  }

  else
  {
    v11 = type metadata accessor for DateComponents();
    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  }

  v9(v7);

  return sub_1000050A4(v7, &qword_10093B790, &qword_100798D88);
}

void sub_100730920()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = (&v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (qword_1009367B8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100006654(v7, qword_100950F70);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "todayNotificationBadge event triggered", v10, 2u);
    }

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "os_transaction INIT {name: com.apple.remindd.todayEngine.badgeEventStream}", v13, 2u);
    }

    v14 = os_transaction_create();
    v15 = swift_allocObject();
    *(v15 + 16) = v6;
    *(v15 + 24) = v14;
    v16 = *(v6 + 16);
    *v4 = v16;
    (*(v1 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v0);

    swift_unknownObjectRetain();
    v17 = v16;
    LOBYTE(v16) = _dispatchPreconditionTest(_:)();
    (*(v1 + 8))(v4, v0);
    if (v16)
    {
      v18 = swift_allocObject();
      *(v18 + 16) = sub_10073E7E0;
      *(v18 + 24) = v15;

      sub_100739E7C(sub_10073EA04, v18);

      swift_unknownObjectRelease();

      return;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (qword_1009367B8 != -1)
  {
LABEL_15:
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100006654(v19, qword_100950F70);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Received RDTimeEventHandler event on deallocated RDTodayNotificationEngine", v22, 2u);
  }
}

uint64_t sub_100730CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = (&v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  v16 = *(a1 + 16);
  *v14 = v16;
  (*(v11 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v10);
  swift_unknownObjectRetain();
  v17 = v16;
  LOBYTE(a2) = _dispatchPreconditionTest(_:)();
  result = (*(v11 + 8))(v14, v10);
  if (a2)
  {
    v19 = swift_allocObject();
    v19[2] = a1;
    v19[3] = a5;
    v19[4] = v15;

    sub_100732288(a6, v19);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100730E74()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v0 - 8);
  v30 = v0;
  v1 = *(v29 + 64);
  __chkstk_darwin(v0);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v27 = *(v4 - 8);
  v28 = v4;
  v5 = *(v27 + 64);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009367B8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100006654(v8, qword_100950F70);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock[0] = v12;
    *v11 = 136315138;
    v13 = Bool.yesno.getter();
    v15 = sub_10000668C(v13, v14, aBlock);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "includeToday: %s", v11, 0xCu);
    sub_10000607C(v12);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v17 = Logger.logObject.getter();
  if (Strong)
  {
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "os_transaction INIT {name: com.apple.remindd.todayEngine.streamBadgeCountCriteriaObserver}", v19, 2u);
    }

    v20 = os_transaction_create();
    v21 = *(Strong + 16);
    v22 = swift_allocObject();
    *(v22 + 16) = Strong;
    *(v22 + 24) = v20;
    aBlock[4] = sub_10073E7B4;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019200;
    aBlock[3] = &unk_1008FDA28;
    v23 = _Block_copy(aBlock);

    swift_unknownObjectRetain();
    static DispatchQoS.unspecified.getter();
    v31 = _swiftEmptyArrayStorage;
    sub_100054724(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000F5104(&unk_100939E50, &unk_100791AD0);
    sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
    v24 = v30;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v23);
    swift_unknownObjectRelease();
    (*(v29 + 8))(v3, v24);
    (*(v27 + 8))(v7, v28);
  }

  else
  {
    v25 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v17, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v17, v25, "Received streamBadgeCountCriteria callback on deallocated RDTodayNotificationEngine", v26, 2u);
    }
  }
}

uint64_t sub_100731370(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  v10 = *(a1 + 16);
  *v8 = v10;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  swift_unknownObjectRetain();
  v11 = v10;
  LOBYTE(a2) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v8, v4);
  if (a2)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = sub_10073E7BC;
    *(v13 + 24) = v9;

    sub_100739E7C(sub_10073EA04, v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10073150C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_100731560()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = (&v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (qword_1009367B8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100006654(v7, qword_100950F70);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "os_transaction INIT {name: com.apple.remindd.todayEngine.storeControllerChange}", v10, 2u);
    }

    v11 = os_transaction_create();
    v12 = swift_allocObject();
    *(v12 + 16) = v6;
    *(v12 + 24) = v11;
    v13 = *(v6 + 16);
    *v4 = v13;
    (*(v1 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v0);

    swift_unknownObjectRetain();
    v14 = v13;
    LOBYTE(v13) = _dispatchPreconditionTest(_:)();
    (*(v1 + 8))(v4, v0);
    if (v13)
    {
      v15 = swift_allocObject();
      *(v15 + 16) = sub_10073E6B4;
      *(v15 + 24) = v12;

      sub_100739E7C(sub_10073EA04, v15);

      swift_unknownObjectRelease();

      return;
    }

    __break(1u);
    goto LABEL_13;
  }

  if (qword_1009367B8 != -1)
  {
LABEL_13:
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100006654(v16, qword_100950F70);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Received storeController changed notification after RDTodayNotificationEngine was deallocated", v19, 2u);
  }
}

uint64_t sub_1007318B0(uint64_t a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + 16);
  *v6 = v7;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  swift_unknownObjectRetain_n();
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v6, v2);
  if (v7)
  {
    sub_1007382EC();
    sub_10073E6BC(&static os_log_type_t.default.getter, "os_transaction RELEASE {name: com.apple.remindd.todayEngine.storeControllerChange}");
    return swift_unknownObjectRelease_n();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1007319FC(uint64_t a1, const char *a2)
{
  if (qword_1009367B8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100006654(v3, qword_100950F70);
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v4, a2, v5, 2u);
  }
}

void sub_100731AEC()
{
  v1 = v0;
  v61 = type metadata accessor for Date();
  v59 = *(v61 - 8);
  v2 = *(v59 + 64);
  v3 = __chkstk_darwin(v61);
  v56 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v55 - v5;
  v7 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v55 - v13;
  __chkstk_darwin(v12);
  v60 = &v55 - v15;
  if (qword_1009367B8 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100006654(v16, qword_100950F70);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  v19 = os_log_type_enabled(v17, v18);
  v58 = v6;
  v57 = v11;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v62[0] = v55;
    *v20 = 136315394;
    swift_beginAccess();
    sub_10000A87C(v0 + 80, v63);
    v21 = v64;
    v22 = v65;
    sub_10000F61C(v63, v64);
    v23 = v60;
    (*(v22 + 8))(v21, v22);
    sub_10000607C(v63);
    v24 = Optional.descriptionOrNil.getter();
    v26 = v25;
    sub_1000050A4(v23, &unk_100938850, qword_100795AE0);
    v27 = sub_10000668C(v24, v26, v62);

    *(v20 + 4) = v27;
    *(v20 + 12) = 2080;
    v28 = OBJC_IVAR____TtC7remindd25RDTodayNotificationEngine_cachedLastDismissedDate;
    swift_beginAccess();
    sub_100010364(v1 + v28, v23, &unk_100938850, qword_100795AE0);
    v29 = Optional.descriptionOrNil.getter();
    v31 = v30;
    sub_1000050A4(v23, &unk_100938850, qword_100795AE0);
    v32 = sub_10000668C(v29, v31, v62);

    *(v20 + 14) = v32;
    _os_log_impl(&_mh_execute_header, v17, v18, "RDTodayNotificationEngine: received RDSynchronizedDismissedTodayNotificationStates.lastDismissedDateDidChangeExternally {remoteValue: %s, localValue: %s}", v20, 0x16u);
    swift_arrayDestroy();
  }

  swift_beginAccess();
  sub_10000A87C(v1 + 80, v63);
  v33 = v64;
  v34 = v65;
  sub_10000F61C(v63, v64);
  (*(v34 + 8))(v33, v34);
  v35 = v59;
  v36 = *(v59 + 48);
  if (v36(v14, 1, v61) == 1)
  {
    sub_1000050A4(v14, &unk_100938850, qword_100795AE0);
    sub_10000607C(v63);
LABEL_9:
    sub_10000A87C(v1 + 80, v63);
    v43 = v64;
    v44 = v65;
    sub_10000F61C(v63, v64);
    v45 = v60;
    (*(v44 + 8))(v43, v44);
    sub_10000607C(v63);
    v46 = OBJC_IVAR____TtC7remindd25RDTodayNotificationEngine_cachedLastDismissedDate;
    swift_beginAccess();
    sub_100117A3C(v45, v1 + v46, &unk_100938850, qword_100795AE0);
LABEL_10:
    swift_endAccess();
    sub_100736F1C(0xD000000000000024, 0x8000000100800040);
    return;
  }

  v37 = *(v35 + 32);
  v38 = v58;
  v39 = v14;
  v40 = v61;
  v37(v58, v39, v61);
  sub_10000607C(v63);
  v41 = OBJC_IVAR____TtC7remindd25RDTodayNotificationEngine_cachedLastDismissedDate;
  swift_beginAccess();
  v42 = v57;
  sub_100010364(v1 + v41, v57, &unk_100938850, qword_100795AE0);
  if (v36(v42, 1, v40) == 1)
  {
    (*(v35 + 8))(v38, v61);
    sub_1000050A4(v42, &unk_100938850, qword_100795AE0);
    goto LABEL_9;
  }

  v47 = v56;
  v37(v56, v42, v61);
  if (static Date.< infix(_:_:)())
  {
    v48 = v61;
    (*(v35 + 8))(v47, v61);
    v49 = v60;
    v37(v60, v38, v48);
    (*(v35 + 56))(v49, 0, 1, v48);
    swift_beginAccess();
    sub_100117A3C(v49, v1 + v41, &unk_100938850, qword_100795AE0);
    goto LABEL_10;
  }

  v50 = v60;
  v51 = v61;
  (*(v35 + 16))(v60, v47, v61);
  (*(v35 + 56))(v50, 0, 1, v51);
  swift_beginAccess();
  v52 = *(v1 + 104);
  v53 = *(v1 + 112);
  sub_10000C9DC(v1 + 80, v52);
  (*(v53 + 16))(v50, v52, v53);
  swift_endAccess();
  v54 = *(v35 + 8);
  v54(v47, v51);
  v54(v38, v51);
}

uint64_t sub_100732288(uint64_t (*a1)(void), void *a2)
{
  v305 = a2;
  v308 = a1;
  v277 = type metadata accessor for RDUserNotificationType();
  v276 = *(v277 - 8);
  v3 = *(v276 + 64);
  __chkstk_darwin(v277);
  v275 = &v264 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v278 = type metadata accessor for RDUserNotificationCategory();
  v274 = *(v278 - 8);
  v5 = *(v274 + 64);
  v6 = __chkstk_darwin(v278);
  v271 = &v264 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v269 = v7;
  __chkstk_darwin(v6);
  v9 = (&v264 - v8);
  v298 = sub_1000F5104(&qword_1009431C0, &qword_10079D3E0);
  v312 = *(v298 - 8);
  v10 = *(v312 + 8);
  v11 = __chkstk_darwin(v298);
  v267 = &v264 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = (&v264 - v14);
  v16 = __chkstk_darwin(v13);
  v297 = (&v264 - v17);
  v18 = __chkstk_darwin(v16);
  v300 = &v264 - v19;
  __chkstk_darwin(v18);
  v292 = (&v264 - v20);
  v311 = type metadata accessor for REMRemindersListDataView.DatesModel.Group();
  v314 = *(v311 - 1);
  v21 = *(v314 + 64);
  v22 = __chkstk_darwin(v311);
  v315 = &v264 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v310 = &v264 - v24;
  v290 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch();
  v304 = *(v290 - 8);
  v25 = *(v304 + 64);
  __chkstk_darwin(v290);
  v289 = (&v264 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v303 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v306 = *(v303 - 1);
  v27 = v306[8];
  __chkstk_darwin(v303);
  v296 = &v264 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v302 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v301 = *(v302 - 8);
  v29 = *(v301 + 64);
  __chkstk_darwin(v302);
  v295 = &v264 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v282 = sub_1000F5104(&unk_1009511F0, &unk_1007B7450);
  v281 = *(v282 - 8);
  v31 = *(v281 + 64);
  __chkstk_darwin(v282);
  v291 = &v264 - v32;
  v279 = type metadata accessor for REMRemindersListDataView.DatesModel();
  v280 = *(v279 - 8);
  v33 = *(v280 + 64);
  __chkstk_darwin(v279);
  v285 = &v264 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v36 = *(*(v35 - 8) + 64);
  v37 = __chkstk_darwin(v35 - 8);
  v39 = &v264 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v37);
  v42 = &v264 - v41;
  __chkstk_darwin(v40);
  v44 = &v264 - v43;
  v316 = type metadata accessor for Date();
  v313 = *(v316 - 8);
  v45 = *(v313 + 64);
  v46 = __chkstk_darwin(v316);
  v288 = &v264 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __chkstk_darwin(v46);
  v287 = &v264 - v49;
  v50 = __chkstk_darwin(v48);
  v270 = &v264 - v51;
  v52 = __chkstk_darwin(v50);
  v286 = &v264 - v53;
  v54 = __chkstk_darwin(v52);
  v284 = &v264 - v55;
  v56 = __chkstk_darwin(v54);
  v283 = &v264 - v57;
  v58 = __chkstk_darwin(v56);
  v293 = &v264 - v59;
  v60 = __chkstk_darwin(v58);
  v307 = &v264 - v61;
  v272 = v62;
  __chkstk_darwin(v60);
  v317 = &v264 - v63;
  v64 = type metadata accessor for DispatchPredicate();
  v65 = *(v64 - 8);
  v66 = *(v65 + 64);
  __chkstk_darwin(v64);
  v68 = (&v264 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0));
  v299 = v2;
  v69 = *(v2 + 16);
  *v68 = v69;
  (*(v65 + 104))(v68, enum case for DispatchPredicate.onQueue(_:), v64);
  v70 = v69;
  LOBYTE(v69) = _dispatchPreconditionTest(_:)();
  (*(v65 + 8))(v68, v64);
  if ((v69 & 1) == 0)
  {
    goto LABEL_97;
  }

  v268 = v70;
  if (qword_1009367B8 != -1)
  {
    goto LABEL_98;
  }

  while (1)
  {
    v273 = v9;
    v71 = type metadata accessor for Logger();
    v309 = sub_100006654(v71, qword_100950F70);
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.default.getter();
    v74 = os_log_type_enabled(v72, v73);
    v75 = v316;
    if (v74)
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&_mh_execute_header, v72, v73, "RDTodayNotificationEngine: started postTodayNotificationIfApplicable", v76, 2u);
    }

    v77 = v317;
    static Date.now.getter();
    v78 = v313;
    v79 = v313 + 16;
    v294 = *(v313 + 16);
    v294(v42, v77, v75);
    (*(v78 + 56))(v42, 0, 1, v75);
    sub_100734AD8(v42, v44);
    sub_1000050A4(v42, &unk_100938850, qword_100795AE0);
    v80 = *(v78 + 48);
    if (v80(v44, 1, v75) == 1)
    {
      sub_1000050A4(v44, &unk_100938850, qword_100795AE0);
      v81 = Logger.logObject.getter();
      v82 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        *v83 = 0;
        _os_log_impl(&_mh_execute_header, v81, v82, "Skipping postTodayNotificationIfApplicable because user has disabled today notification or there was error getting lastTodayNotificationFireDate", v83, 2u);
      }

      result = (*(v78 + 8))(v77, v75);
      if (v308)
      {
        return v308(0);
      }

      return result;
    }

    v265 = v15;
    v266 = v79;
    v85 = *(v78 + 32);
    v86 = v307;
    v85(v307, v44, v75);
    v87 = OBJC_IVAR____TtC7remindd25RDTodayNotificationEngine_cachedLastDismissedDate;
    v88 = v299;
    swift_beginAccess();
    v89 = v88 + v87;
    v90 = v88;
    sub_100010364(v89, v39, &unk_100938850, qword_100795AE0);
    if (v80(v39, 1, v75) == 1)
    {
      v283 = v85;
      v284 = (v78 + 32);
      sub_1000050A4(v39, &unk_100938850, qword_100795AE0);
      v9 = v317;
      v91 = v306;
    }

    else
    {
      v92 = v293;
      v85(v293, v39, v75);
      v93 = static Date.< infix(_:_:)();
      v91 = v306;
      if (v93)
      {
        v94 = v283;
        v95 = v294;
        v294(v283, v86, v75);
        v96 = v284;
        v95(v284, v92, v75);
        v97 = Logger.logObject.getter();
        v98 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v97, v98))
        {
          v99 = swift_slowAlloc();
          v315 = swift_slowAlloc();
          aBlock[0] = v315;
          *v99 = 136446466;
          sub_100054724(&qword_100937010, &type metadata accessor for Date);
          LODWORD(v314) = v98;
          v100 = v94;
          v101 = v96;
          v102 = dispatch thunk of CustomStringConvertible.description.getter();
          v104 = v103;
          v105 = *(v78 + 8);
          v105(v100, v316);
          v106 = sub_10000668C(v102, v104, aBlock);

          *(v99 + 4) = v106;
          *(v99 + 12) = 2082;
          v107 = dispatch thunk of CustomStringConvertible.description.getter();
          v109 = v108;
          v105(v101, v316);
          v110 = sub_10000668C(v107, v109, aBlock);

          *(v99 + 14) = v110;
          _os_log_impl(&_mh_execute_header, v97, v314, "Skipping postTodayNotificationIfApplicable because {lastTodayNotificationFireDate: %{public}s < lastDismissedDate: %{public}s}", v99, 0x16u);
          swift_arrayDestroy();

          v75 = v316;

          v105(v293, v75);
          v111 = v307;
        }

        else
        {

          v105 = *(v78 + 8);
          v105(v96, v75);
          v105(v94, v75);
          v105(v92, v75);
          v111 = v86;
        }

        v105(v111, v75);
        v151 = v308;
        result = (v105)(v317, v75);
        if (!v151)
        {
          return result;
        }

        return v151(0);
      }

      v283 = v85;
      v284 = (v78 + 32);
      (*(v78 + 8))(v92, v75);
      v9 = v317;
    }

    Date.timeIntervalSince(_:)();
    v113 = v112;
    sub_1000060C8(0, &qword_100945E60, NSDateInterval_ptr);
    static NSDateInterval.rem1Minute.getter();
    v39 = v311;
    v42 = v310;
    v115 = v304;
    v116 = v302;
    v117 = v301;
    if (v113 >= v114)
    {
      v134 = v114;
      v135 = v287;
      v136 = v294;
      v294(v287, v86, v75);
      v137 = v288;
      v136(v288, v9, v75);
      v138 = Logger.logObject.getter();
      v139 = v86;
      v140 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v138, v140))
      {
        v141 = swift_slowAlloc();
        aBlock[0] = swift_slowAlloc();
        *v141 = 134349570;
        *(v141 + 4) = v134;
        *(v141 + 12) = 2082;
        v142 = Date.description.getter();
        v144 = v143;
        v145 = *(v313 + 8);
        v145(v135, v316);
        v146 = sub_10000668C(v142, v144, aBlock);

        *(v141 + 14) = v146;
        *(v141 + 22) = 2082;
        v147 = Date.description.getter();
        v149 = v148;
        v145(v137, v316);
        v150 = sub_10000668C(v147, v149, aBlock);
        v9 = v317;

        *(v141 + 24) = v150;
        _os_log_impl(&_mh_execute_header, v138, v140, "Current time is >%{public}fs after desired fire time. Not firing Today Notification {lastFireDate: %{public}s, now: %{public}s}", v141, 0x20u);
        swift_arrayDestroy();
        v75 = v316;

        v145(v307, v75);
      }

      else
      {

        v145 = *(v313 + 8);
        v145(v137, v75);
        v145(v135, v75);
        v145(v139, v75);
      }

      v151 = v308;
      result = (v145)(v9, v75);
      if (!v151)
      {
        return result;
      }

      return v151(0);
    }

    v118 = *(v90 + 120);
    v119 = v303;
    v120 = objc_allocWithZone(REMStore);
    v287 = v118;
    v293 = [v120 initWithDaemonController:v118];
    (*(v117 + 104))(v295, enum case for REMRemindersListDataView.SortingStyle.default(_:), v116);
    (v91[13])(v296, enum case for REMRemindersListDataView.ShowCompleted.off(_:), v119);
    v121 = *(v115 + 104);
    v15 = v289;
    v122 = v290;
    v121(v289, enum case for REMRemindersListDataView.RemindersPrefetch.none(_:), v290);
    v123 = v306;
    static REMRemindersListDataView.fetchScheduled(store:sortingStyle:showCompleted:countCompleted:remindersPrefetch:alwaysIncludeTodayGroup:diffingAgainst:)();
    v288 = 0;
    (*(v304 + 8))(v15, v122);
    (v123[1])(v296, v303);
    (*(v301 + 8))(v295, v302);
    v154 = v282;
    v155 = v291;
    REMRemindersListDataView.Result.model.getter();
    (*(v281 + 8))(v155, v154);
    v156 = REMRemindersListDataView.DatesModel.groups.getter();
    v157 = v156;
    v306 = *(v156 + 16);
    if (!v306)
    {
      break;
    }

    v44 = 0;
    v304 = v314 + 16;
    v158 = (v314 + 32);
    v303 = (v314 + 8);
    v159 = _swiftEmptyArrayStorage;
    while (v44 < *(v157 + 16))
    {
      v15 = ((*(v314 + 80) + 32) & ~*(v314 + 80));
      v160 = *(v314 + 72);
      (*(v314 + 16))(v42, v15 + v157 + v160 * v44, v39);
      v161 = *(REMRemindersListDataView.DatesModel.Group.reminders.getter() + 16);

      if (v161)
      {
        v162 = *v158;
        (*v158)(v315, v42, v39);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v159;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100253DE0(0, *(v159 + 16) + 1, 1);
          v159 = aBlock[0];
        }

        v165 = *(v159 + 16);
        v164 = *(v159 + 24);
        if (v165 >= v164 >> 1)
        {
          sub_100253DE0(v164 > 1, v165 + 1, 1);
          v159 = aBlock[0];
        }

        *(v159 + 16) = v165 + 1;
        v39 = v311;
        v162(v15 + v159 + v165 * v160, v315, v311);
        v42 = v310;
      }

      else
      {
        (*v303)(v42, v39);
      }

      ++v44;
      v9 = v317;
      if (v306 == v44)
      {
        goto LABEL_45;
      }
    }

    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    swift_once();
  }

  v159 = _swiftEmptyArrayStorage;
LABEL_45:

  v166 = sub_10072E1A8(v159);

  v167 = v9;
  if (v166 >> 62)
  {
    goto LABEL_101;
  }

  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  while (1)
  {
    v168 = v293;
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    aBlock[0] = 0;
    v170 = [v168 fetchRemindersWithObjectIDs:isa error:aBlock];

    v171 = aBlock[0];
    if (!v170)
    {
      v190 = aBlock[0];

      _convertNSErrorToError(_:)();

      swift_willThrow();
      (*(v280 + 8))(v285, v279);
      v133 = v316;
      v132 = v167;
      swift_errorRetain();
      v124 = Logger.logObject.getter();
      v125 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v124, v125))
      {
        v126 = swift_slowAlloc();
        v127 = v167;
        v128 = swift_slowAlloc();
        aBlock[0] = v128;
        *v126 = 136315138;
        swift_getErrorValue();
        v129 = Error.localizedDescription.getter();
        v131 = sub_10000668C(v129, v130, aBlock);

        *(v126 + 4) = v131;
        _os_log_impl(&_mh_execute_header, v124, v125, "Unable to fetch REMTodayDataView. Not posting any todayNotification. {error: %s}", v126, 0xCu);
        sub_10000607C(v128);
        v132 = v127;

        v133 = v316;
      }

      else
      {
      }

      v152 = *(v313 + 8);
      v152(v307, v133);
      v153 = v308;
      goto LABEL_27;
    }

    sub_1000060C8(0, &unk_100942FB0, REMReminder_ptr);
    sub_10000CDE4(&qword_1009391F0, &qword_1009391E0, REMObjectID_ptr);
    v172 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v173 = v171;

    __chkstk_darwin(v174);
    v311 = v172;
    *(&v264 - 2) = v172;
    *(&v264 - 1) = v167;
    v314 = v166;
    v175 = sub_1003E0578(sub_10073E4DC, (&v264 - 4), v166);
    v176 = v175[2];
    v177 = _swiftEmptyArrayStorage;
    v315 = v176;
    if (!v176)
    {
      break;
    }

    v178 = 0;
    v167 = &qword_10079D3E0;
    v179 = v292;
    while (v178 < v175[2])
    {
      v180 = (*(v312 + 80) + 32) & ~*(v312 + 80);
      v181 = *(v312 + 9);
      sub_100010364(v175 + v180 + v181 * v178, v179, &qword_1009431C0, &qword_10079D3E0);
      v182 = [*v179 displayDate];
      if (v182 && (v183 = v182, v166 = [v182 isAllDay], v183, v176 = v315, v166))
      {
        sub_100031B58(v179, v300, &qword_1009431C0, &qword_10079D3E0);
        v184 = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v177;
        if ((v184 & 1) == 0)
        {
          sub_100253DA0(0, v177[2] + 1, 1);
          v176 = v315;
          v177 = aBlock[0];
        }

        v186 = v177[2];
        v185 = v177[3];
        v166 = v186 + 1;
        if (v186 >= v185 >> 1)
        {
          sub_100253DA0(v185 > 1, v186 + 1, 1);
          v176 = v315;
          v177 = aBlock[0];
        }

        v177[2] = v166;
        sub_100031B58(v300, v177 + v180 + v186 * v181, &qword_1009431C0, &qword_10079D3E0);
        v179 = v292;
      }

      else
      {
        sub_1000050A4(v179, &qword_1009431C0, &qword_10079D3E0);
      }

      if (v176 == ++v178)
      {
        goto LABEL_60;
      }
    }

    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);

    _bridgeCocoaArray<A>(_:)();
  }

LABEL_60:

  v187 = Logger.logObject.getter();
  v188 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v187, v188))
  {
    v189 = swift_slowAlloc();
    *v189 = 134217984;
    *(v189 + 4) = v177[2];

    _os_log_impl(&_mh_execute_header, v187, v188, "REMRemindersListDataView.fetchScheduled up to now fetched AllDay reminders. {count: %ld}", v189, 0xCu);
  }

  else
  {
  }

  v133 = v316;
  v167 = v177[2];
  if (v167)
  {
    v166 = 0;
    v191 = v297;
    do
    {
      if (v167 == v166)
      {

        v215 = Logger.logObject.getter();
        v216 = static os_log_type_t.default.getter();
        v219 = os_log_type_enabled(v215, v216);
        v133 = v316;
        if (!v219)
        {
          goto LABEL_82;
        }

        v217 = swift_slowAlloc();
        *v217 = 0;
        v218 = "No all-day reminder whose lastBannerPresentationDate is before their own dueDate (at TodayNotificationFireTime). Not posting TodayNotification.";
        goto LABEL_81;
      }

      if (v166 >= v177[2])
      {
        goto LABEL_100;
      }

      v192 = (*(v312 + 80) + 32) & ~*(v312 + 80);
      v193 = *(v312 + 9);
      sub_100010364(v177 + v192 + v193 * v166++, v191, &qword_1009431C0, &qword_10079D3E0);
      v194 = sub_100735900(*v191, v191 + *(v298 + 48), v317);
      sub_1000050A4(v191, &qword_1009431C0, &qword_10079D3E0);
    }

    while ((v194 & 1) == 0);
    v314 = v193;
    if (v315)
    {
      v195 = v175[2];
      if (v315 > v195)
      {
        __break(1u);
      }

      v196 = v265;
      sub_100010364(v175 + v192 + v314 * (v315 - 1), v265, &qword_1009431C0, &qword_10079D3E0);

      v197 = *v196;
      v198 = *(v313 + 8);
      v199 = v196 + *(v298 + 48);
      v315 = (v313 + 8);
      v312 = v198;
      v198(v199, v316);
      v200 = [v197 titleAsString];
      if (!v200)
      {
        v200 = _REMGetLocalizedString();
      }

      v201 = v200;
      v202 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v204 = v203;

      v205 = _REMGetLocalizedString();
      if (!v205)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v205 = String._bridgeToObjectiveC()();
      }

      v206 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v309 = v197;
      v311 = v206;
      v310 = v207;
      v306 = v205;
      if (v195 < 2)
      {
        v304 = v202;
        v223 = v274;
        v212 = v273;
        v213 = v278;
        (*(v274 + 104))(v273, enum case for RDUserNotificationCategory.todayNotificationForSingleReminder(_:), v278);
        v224 = v197;
        v225 = v275;
        REMNotificationIdentifier.init(reminder:)();
        (*(v276 + 104))(v225, enum case for RDUserNotificationType.todayNotificationForSingleReminder(_:), v277);
        v226 = v224;
        v214 = sub_1002D833C(v224, 0, 0);

        v211 = v223;
      }

      else
      {
        v208 = _REMGetLocalizedString();
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
        v209 = swift_allocObject();
        *(v209 + 16) = xmmword_100791340;
        *(v209 + 56) = &type metadata for String;
        v210 = sub_100006600();
        *(v209 + 32) = v202;
        *(v209 + 40) = v204;
        *(v209 + 96) = &type metadata for Int;
        *(v209 + 104) = &protocol witness table for Int;
        *(v209 + 64) = v210;
        *(v209 + 72) = v195 - 1;
        v304 = static String.localizedStringWithFormat(_:_:)();

        v211 = v274;
        v212 = v273;
        v213 = v278;
        (*(v274 + 104))(v273, enum case for RDUserNotificationCategory.todayNotification(_:), v278);
        (*(v276 + 104))(v275, enum case for RDUserNotificationType.todayNotification(_:), v277);
        v214 = sub_1002D833C(0, 0, 0);
      }

      v227 = v269;
      v228 = v214;
      v229 = String._bridgeToObjectiveC()();

      [v228 setTitle:v229];

      v230 = v306;
      [v228 setBody:v306];

      v231 = Date._bridgeToObjectiveC()().super.isa;
      [v228 setDate:v231];

      v232 = v299;
      v306 = *(v299 + 56);
      v304 = RDUserNotificationCategory.rawValue.getter();
      v303 = v233;
      v234 = v271;
      (*(v211 + 16))(v271, v212, v213);
      v235 = (*(v211 + 80) + 24) & ~*(v211 + 80);
      v236 = (v227 + v235 + 7) & 0xFFFFFFFFFFFFFFF8;
      v237 = (v236 + 23) & 0xFFFFFFFFFFFFFFF8;
      v238 = swift_allocObject();
      *(v238 + 16) = v232;
      (*(v211 + 32))(v238 + v235, v234, v278);
      v239 = (v238 + v236);
      v240 = v308;
      v241 = v305;
      *v239 = v308;
      v239[1] = v241;
      v242 = (v238 + v237);
      v243 = v310;
      *v242 = v311;
      v242[1] = v243;

      sub_10014D92C(v240);
      sub_10052554C(v304, v303, v228, sub_10073E4F8, v238);

      v244 = objc_allocWithZone(REMStore);
      v245 = [v244 initWithDaemonController:v287];
      v246 = [objc_allocWithZone(REMSaveRequest) initWithStore:v245];
      [v246 setAuthor:RDTodayNotificationLastBannerPresentationDateAuthor];
      [v246 setUpdateLastModifiedDates:0];
      v311 = v246;
      [v246 setSyncToCloudKit:0];
      Date.init()();
      v247 = swift_allocObject();
      v308 = v247;
      *(v247 + 16) = _swiftEmptyArrayStorage;
      v248 = (v247 + 16);
      v249 = v177[2];
      if (v249)
      {
        v305 = v245;
        v306 = v228;
        v310 = *(v298 + 48);
        v250 = v177 + v192;
        v251 = v267;
        do
        {
          sub_100010364(v250, v251, &qword_1009431C0, &qword_10079D3E0);
          v252 = *v251;
          v253 = [v311 updateReminder:*v251];
          v254 = Date._bridgeToObjectiveC()().super.isa;
          [v253 setLastBannerPresentationDate:v254];

          v255 = [v252 objectID];
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*v248 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v248 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v256 = v316;
          v312(&v310[v251], v316);
          v250 += v314;
          --v249;
        }

        while (v249);

        v228 = v306;
        v245 = v305;
      }

      else
      {

        v256 = v316;
      }

      v257 = v270;
      v258 = v286;
      v294(v270, v286, v256);
      v259 = (*(v313 + 80) + 24) & ~*(v313 + 80);
      v260 = swift_allocObject();
      v260[2] = v308;
      (v283)(v260 + v259, v257, v256);
      aBlock[4] = sub_10073E5AC;
      aBlock[5] = v260;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100042968;
      aBlock[3] = &unk_1008FD8C0;
      v261 = _Block_copy(aBlock);

      v262 = v311;
      [v311 saveWithQueue:v268 completion:v261];
      _Block_release(v261);

      v263 = v312;
      v312(v258, v256);
      (*(v276 + 8))(v275, v277);
      (*(v274 + 8))(v273, v278);
      (*(v280 + 8))(v285, v279);
      v263(v307, v256);

      return (v263)(v317, v256);
    }

    v220 = Logger.logObject.getter();
    v221 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v220, v221))
    {
      v222 = swift_slowAlloc();
      *v222 = 0;
      _os_log_impl(&_mh_execute_header, v220, v221, "No reminderIDs found in Today smart list. Not posting TodayNotification.", v222, 2u);
    }

    (*(v280 + 8))(v285, v279);
    v152 = *(v313 + 8);
    v133 = v316;
    v152(v307, v316);
  }

  else
  {

    v215 = Logger.logObject.getter();
    v216 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v215, v216))
    {
      v217 = swift_slowAlloc();
      *v217 = 0;
      v218 = "No reminders in Today view. Not showing today notification.";
LABEL_81:
      _os_log_impl(&_mh_execute_header, v215, v216, v218, v217, 2u);
    }

LABEL_82:

    (*(v280 + 8))(v285, v279);
    v152 = *(v313 + 8);
    v152(v307, v133);
  }

  v153 = v308;
  v132 = v317;
LABEL_27:
  result = (v152)(v132, v133);
  if (v153)
  {
    return v153(0);
  }

  return result;
}

uint64_t sub_100734AD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v106 = a1;
  v109 = a2;
  v105 = type metadata accessor for Calendar.RepeatedTimePolicy();
  v103 = *(v105 - 8);
  v2 = *(v103 + 64);
  __chkstk_darwin(v105);
  v104 = &v89 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for Calendar.SearchDirection();
  v100 = *(v102 - 8);
  v4 = *(v100 + 64);
  __chkstk_darwin(v102);
  v101 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for Calendar.MatchingPolicy();
  v98 = *(v108 - 8);
  v6 = *(v98 + 64);
  __chkstk_darwin(v108);
  v8 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date();
  v111 = *(v9 - 8);
  v112 = v9;
  v10 = *(v111 + 64);
  __chkstk_darwin(v9);
  v12 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for Calendar();
  v97 = *(v99 - 8);
  v13 = *(v97 + 64);
  __chkstk_darwin(v99);
  v15 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v16 = *(*(v94 - 8) + 64);
  v17 = __chkstk_darwin(v94);
  v96 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v89 - v20;
  __chkstk_darwin(v19);
  v107 = &v89 - v22;
  v23 = sub_1000F5104(&qword_10093B790, &qword_100798D88);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v27 = &v89 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v89 - v28;
  v30 = type metadata accessor for DateComponents();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v33 = __chkstk_darwin(v30);
  v95 = &v89 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v110 = &v89 - v35;
  v36 = [objc_opt_self() daemonUserDefaults];
  v37 = [v36 todayNotificationFireTime];

  if (v37)
  {
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v31 + 56))(v27, 0, 1, v30);
  }

  else
  {
    (*(v31 + 56))(v27, 1, 1, v30);
  }

  sub_100031B58(v27, v29, &qword_10093B790, &qword_100798D88);
  v38 = (*(v31 + 48))(v29, 1, v30);
  v39 = v111;
  if (v38 == 1)
  {
    sub_1000050A4(v29, &qword_10093B790, &qword_100798D88);
    v40 = v112;
    if (qword_1009367B8 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_100006654(v41, qword_100950F70);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "DateUtils.lastTodayNotificationFireDate: Early return because user has disabled today notifications.", v44, 2u);
    }
  }

  else
  {
    v92 = v31;
    v47 = *(v31 + 32);
    v93 = v30;
    v47(v110, v29, v30);
    v89 = v15;
    static Calendar.current.getter();
    sub_100010364(v106, v21, &unk_100938850, qword_100795AE0);
    v48 = *(v39 + 48);
    v49 = v112;
    v50 = v48(v21, 1, v112);
    v91 = v39 + 48;
    v90 = v48;
    if (v50 == 1)
    {
      static Date.now.getter();
      v51 = v12;
      if (v48(v21, 1, v49) != 1)
      {
        sub_1000050A4(v21, &unk_100938850, qword_100795AE0);
      }
    }

    else
    {
      (*(v39 + 32))(v12, v21, v49);
      v51 = v12;
    }

    v52 = v98;
    v53 = v8;
    (*(v98 + 104))(v8, enum case for Calendar.MatchingPolicy.nextTime(_:), v108);
    v55 = v100;
    v54 = v101;
    v56 = v102;
    (*(v100 + 104))(v101, enum case for Calendar.SearchDirection.backward(_:), v102);
    v58 = v103;
    v57 = v104;
    v59 = v105;
    (*(v103 + 104))(v104, enum case for Calendar.RepeatedTimePolicy.first(_:), v105);
    v60 = v89;
    Calendar.nextDate(after:matching:matchingPolicy:repeatedTimePolicy:direction:)();
    (*(v58 + 8))(v57, v59);
    (*(v55 + 8))(v54, v56);
    (*(v52 + 8))(v53, v108);
    v39 = v111;
    v61 = v51;
    v40 = v112;
    (*(v111 + 8))(v61, v112);
    v62 = v60;
    v63 = v107;
    (*(v97 + 8))(v62, v99);
    if (v90(v63, 1, v40) != 1)
    {
      (*(v92 + 8))(v110, v93);
      v86 = v109;
      (*(v39 + 32))(v109, v63, v40);
      v46 = v86;
      v45 = 0;
      return (*(v39 + 56))(v46, v45, 1, v40);
    }

    v64 = v110;
    sub_1000050A4(v63, &unk_100938850, qword_100795AE0);
    v65 = v93;
    v66 = v92;
    if (qword_1009367B8 != -1)
    {
      swift_once();
    }

    v67 = type metadata accessor for Logger();
    sub_100006654(v67, qword_100950F70);
    v68 = v95;
    (*(v66 + 16))(v95, v64, v65);
    v69 = v96;
    sub_100010364(v106, v96, &unk_100938850, qword_100795AE0);
    v70 = v65;
    v71 = v66;
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = v69;
      v75 = swift_slowAlloc();
      v113[0] = swift_slowAlloc();
      *v75 = 136446466;
      LODWORD(v108) = v73;
      v76 = v70;
      v77 = DateComponents.description.getter();
      v79 = v78;
      v80 = *(v71 + 8);
      v80(v68, v76);
      v81 = sub_10000668C(v77, v79, v113);

      *(v75 + 4) = v81;
      *(v75 + 12) = 2082;
      v82 = Optional.descriptionOrNil.getter();
      v84 = v83;
      sub_1000050A4(v74, &unk_100938850, qword_100795AE0);
      v85 = sub_10000668C(v82, v84, v113);
      v39 = v111;

      *(v75 + 14) = v85;
      _os_log_impl(&_mh_execute_header, v72, v108, "DateUtils.lastTodayNotificationFireDate: Unable to find last fire date. {todayNotificationFireTime: %{public}s, referenceDate: %{public}s}", v75, 0x16u);
      swift_arrayDestroy();
      v40 = v112;

      v80(v110, v76);
    }

    else
    {

      sub_1000050A4(v69, &unk_100938850, qword_100795AE0);
      v88 = *(v71 + 8);
      v88(v68, v70);
      v88(v64, v70);
    }
  }

  v45 = 1;
  v46 = v109;
  return (*(v39 + 56))(v46, v45, 1, v40);
}

uint64_t sub_100735644@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v9 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100353844(*a1, a2);
  if (v18)
  {
    v19 = v18;
    v27[1] = v4;
    v20 = [v18 assignmentContext];
    v21 = [v20 currentAssignment];

    if (v21 && (v21, (sub_1005815C8(0) & 1) == 0))
    {
    }

    else
    {
      sub_1004F25C4(v19, a3, v12);
      if ((*(v14 + 48))(v12, 1, v13) != 1)
      {
        v22 = *(v14 + 32);
        v22(v17, v12, v13);
        v23 = sub_1000F5104(&qword_1009431C0, &qword_10079D3E0);
        v24 = *(v23 + 48);
        *a4 = v19;
        v22(&a4[v24], v17, v13);
        return (*(*(v23 - 8) + 56))(a4, 0, 1, v23);
      }

      sub_1000050A4(v12, &unk_100938850, qword_100795AE0);
    }
  }

  v26 = sub_1000F5104(&qword_1009431C0, &qword_10079D3E0);
  return (*(*(v26 - 8) + 56))(a4, 1, 1, v26);
}

uint64_t sub_100735900(void *a1, _BYTE *a2, _BYTE *a3)
{
  v68 = a3;
  v70 = a2;
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v63[-v6];
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v63[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __chkstk_darwin(v11);
  v16 = &v63[-v15];
  v17 = __chkstk_darwin(v14);
  v19 = &v63[-v18];
  v20 = __chkstk_darwin(v17);
  v22 = &v63[-v21];
  __chkstk_darwin(v20);
  v24 = &v63[-v23];
  v25 = [a1 lastBannerPresentationDate];
  v69 = v24;
  if (v25)
  {
    v26 = v25;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v67 = a1;
    v27 = v19;
    v28 = v16;
    v29 = v13;
    v30 = *(v9 + 32);
    v30(v7, v22, v8);
    v31 = v9;
    (*(v9 + 56))(v7, 0, 1, v8);
    v32 = v8;
    v30(v24, v7, v8);
    v13 = v29;
    v16 = v28;
    v19 = v27;
    a1 = v67;
  }

  else
  {
    (*(v9 + 56))(v7, 1, 1, v8);
    static Date.distantPast.getter();
    v31 = v9;
    v33 = *(v9 + 48);
    v32 = v8;
    if (v33(v7, 1, v8) != 1)
    {
      sub_1000050A4(v7, &unk_100938850, qword_100795AE0);
    }
  }

  if (qword_1009367B8 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_100006654(v34, qword_100950F70);
  v35 = v31;
  v36 = *(v31 + 16);
  v37 = v32;
  v36(v19, v69, v32);
  v36(v16, v70, v32);
  v36(v13, v68, v32);
  v38 = a1;
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();

  v41 = v13;
  if (os_log_type_enabled(v39, v40))
  {
    v42 = swift_slowAlloc();
    v66 = v39;
    v43 = v42;
    v44 = swift_slowAlloc();
    v65 = v44;
    v67 = swift_slowAlloc();
    v71 = v67;
    *v43 = 138544130;
    v45 = [v38 objectID];
    *(v43 + 4) = v45;
    *v44 = v45;
    *(v43 + 12) = 2082;
    v64 = v40;
    v46 = Date.description.getter();
    v48 = v47;
    v49 = *(v35 + 8);
    v49(v19, v37);
    v50 = sub_10000668C(v46, v48, &v71);

    *(v43 + 14) = v50;
    *(v43 + 22) = 2082;
    v51 = Date.description.getter();
    v53 = v52;
    v49(v16, v37);
    v54 = sub_10000668C(v51, v53, &v71);

    *(v43 + 24) = v54;
    *(v43 + 32) = 2082;
    v55 = Date.description.getter();
    v57 = v56;
    v49(v41, v37);
    v58 = v69;
    v59 = sub_10000668C(v55, v57, &v71);

    *(v43 + 34) = v59;
    v60 = v66;
    _os_log_impl(&_mh_execute_header, v66, v64, "Evaluating whether to trigger TodayNotification {reminderID: %{public}@, lastPresentationTime: %{public}s, fireDate: %{public}s, now: %{public}s}", v43, 0x2Au);
    sub_1000050A4(v65, &unk_100938E70, &unk_100797230);

    swift_arrayDestroy();
  }

  else
  {

    v49 = *(v35 + 8);
    v49(v41, v32);
    v49(v16, v32);
    v49(v19, v32);
    v58 = v69;
  }

  if (static Date.< infix(_:_:)())
  {
    v61 = static Date.< infix(_:_:)();
  }

  else
  {
    v61 = 0;
  }

  v49(v58, v37);
  return v61 & 1;
}

void sub_100735F18(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6, unint64_t a7)
{
  v92 = a7;
  v90 = a6;
  v101 = a5;
  v102 = a4;
  v103 = a3;
  v9 = type metadata accessor for DateComponents();
  v99 = *(v9 - 8);
  v100 = v9;
  v10 = *(v99 + 64);
  __chkstk_darwin(v9);
  v98 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for TimeZone();
  v96 = *(v97 - 8);
  v12 = *(v96 + 64);
  __chkstk_darwin(v97);
  v95 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for Date();
  v93 = *(v94 - 8);
  v14 = *(v93 + 64);
  __chkstk_darwin(v94);
  v16 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for RDUserNotificationCategory();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v91 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v24 = &v84 - v23;
  __chkstk_darwin(v22);
  v26 = &v84 - v25;
  v27 = type metadata accessor for DispatchPredicate();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v31 = (&v84 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = *(a2 + 16);
  *v31 = v32;
  (*(v28 + 104))(v31, enum case for DispatchPredicate.onQueue(_:), v27);
  v33 = v32;
  LOBYTE(v32) = _dispatchPreconditionTest(_:)();
  (*(v28 + 8))(v31, v27);
  if ((v32 & 1) == 0)
  {
    __break(1u);
LABEL_25:
    swift_once();
LABEL_4:
    v34 = type metadata accessor for Logger();
    sub_100006654(v34, qword_100950F70);
    v35 = v18;
    (*(v18 + 16))(v26, v103, v31);
    swift_errorRetain();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      *v38 = 136446466;
      v39 = RDUserNotificationCategory.rawValue.getter();
      v41 = v40;
      (*(v35 + 8))(v26, v31);
      v42 = sub_10000668C(v39, v41, &v104);

      *(v38 + 4) = v42;
      *(v38 + 12) = 2082;
      swift_getErrorValue();
      v43 = Error.rem_errorDescription.getter();
      v45 = sub_10000668C(v43, v44, &v104);

      *(v38 + 14) = v45;
      _os_log_impl(&_mh_execute_header, v36, v37, "RDTodayNotificationEngine: Unable to post Today notification {category: %{public}s, error: %{public}s}", v38, 0x16u);
      swift_arrayDestroy();

      v46 = v102;
      if (!v102)
      {
        goto LABEL_13;
      }
    }

    else
    {

      (*(v18 + 8))(v26, v31);
      v46 = v102;
      if (!v102)
      {
LABEL_13:

        return;
      }
    }

    v46(0);
    goto LABEL_13;
  }

  if (a1)
  {
    swift_errorRetain();
    v31 = v17;
    if (qword_1009367B8 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_25;
  }

  v47 = v17;
  if (qword_1009367B8 != -1)
  {
    swift_once();
  }

  v48 = type metadata accessor for Logger();
  v49 = sub_100006654(v48, qword_100950F70);
  v50 = v18;
  v51 = *(v18 + 16);
  v89 = v18 + 16;
  v88 = v51;
  v51(v24, v103, v17);
  v52 = v92;

  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.default.getter();

  v55 = os_log_type_enabled(v53, v54);
  v87 = v50;
  if (v55)
  {
    v56 = swift_slowAlloc();
    v86 = v49;
    v57 = v56;
    v85 = swift_slowAlloc();
    v104 = v85;
    *v57 = 136446466;
    v58 = RDUserNotificationCategory.rawValue.getter();
    v60 = v59;
    v61 = *(v50 + 8);
    v61(v24, v47);
    v62 = sub_10000668C(v58, v60, &v104);

    *(v57 + 4) = v62;
    *(v57 + 12) = 2080;
    *(v57 + 14) = sub_10000668C(v90, v52, &v104);
    _os_log_impl(&_mh_execute_header, v53, v54, "RDTodayNotificationEngine: Posted Today notification {category: %{public}s, body: %s}", v57, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v61 = *(v50 + 8);
    v61(v24, v47);
  }

  v63 = v47;
  v64 = objc_opt_self();
  Date.init()();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v93 + 8))(v16, v94);
  v66 = v95;
  static TimeZone.current.getter();
  v67 = TimeZone._bridgeToObjectiveC()().super.isa;
  (*(v96 + 8))(v66, v97);
  v68 = [v64 rem_dateComponentsWithDate:isa timeZone:v67 isAllDay:0];

  v69 = v98;
  static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

  DateComponents.hour.getter();
  LOBYTE(v68) = v70;
  (*(v99 + 8))(v69, v100);
  if ((v68 & 1) == 0)
  {
    type metadata accessor for Analytics();
    sub_1000F5104(&unk_100939240, &unk_100798990);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100791340;
    *(inited + 32) = 1701869940;
    *(inited + 40) = 0xE400000000000000;
    RDUserNotificationCategory.rawValue.getter();
    v83 = String._bridgeToObjectiveC()();

    *(inited + 48) = v83;
    *(inited + 56) = 0x4872656767697274;
    *(inited + 64) = 0xEB0000000072756FLL;
    *(inited + 72) = Int._bridgeToObjectiveC()();
    sub_10038D880(inited);
    swift_setDeallocating();
    sub_1000F5104(&unk_100939250, &unk_100795D30);
    swift_arrayDestroy();
    static Analytics.postEvent(_:payload:duration:)();

    v81 = v102;
    if (!v102)
    {
      return;
    }

    goto LABEL_20;
  }

  v71 = v91;
  v88(v91, v103, v63);
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = v71;
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v104 = v76;
    *v75 = 136446210;
    v77 = RDUserNotificationCategory.rawValue.getter();
    v79 = v78;
    v61(v74, v63);
    v80 = sub_10000668C(v77, v79, &v104);

    *(v75 + 4) = v80;
    _os_log_impl(&_mh_execute_header, v72, v73, "Failed to compute current hour when posting analytics to event com.apple.reminders.notification with {category: %{public}s}", v75, 0xCu);
    sub_10000607C(v76);

    v81 = v102;
    if (!v102)
    {
      return;
    }

    goto LABEL_20;
  }

  v61(v71, v63);
  v81 = v102;
  if (v102)
  {
LABEL_20:
    v81(1);
  }
}

void sub_100736A28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    if (qword_1009367B8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100006654(v11, qword_100950F70);
    swift_errorRetain();

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v14 = 136446466;
      swift_beginAccess();
      v15 = *(a2 + 16);
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);

      v16 = Array.description.getter();
      v18 = v17;

      v19 = sub_10000668C(v16, v18, &v37);

      *(v14 + 4) = v19;
      *(v14 + 12) = 2080;
      swift_getErrorValue();
      v20 = Error.localizedDescription.getter();
      v22 = sub_10000668C(v20, v21, &v37);

      *(v14 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v12, v13, "TodayNotificationEngine is unable to update lastBannerPresentationDate {reminderIDs: %{public}s, error: %s}", v14, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {
    if (qword_1009367B8 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100006654(v23, qword_100950F70);
    (*(v7 + 16))(v10, a3, v6);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v26 = 136446466;
      swift_beginAccess();
      v27 = *(a2 + 16);
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);

      v28 = Array.description.getter();
      v30 = v29;

      v31 = sub_10000668C(v28, v30, &v37);

      *(v26 + 4) = v31;
      *(v26 + 12) = 2082;
      v32 = Date.description.getter();
      v34 = v33;
      (*(v7 + 8))(v10, v6);
      v35 = sub_10000668C(v32, v34, &v37);

      *(v26 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v24, v25, "TodayNotificationEngine has updated lastBannerPresentationDate {reminderIDs: %{public}s, lastBannerPresentationDate: %{public}s}", v26, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }
  }
}

void sub_100736F1C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v100 = a2;
  v98 = a1;
  v4 = type metadata accessor for RDUserNotificationCategory();
  v94 = *(v4 - 8);
  v95 = v4;
  v5 = *(v94 + 64);
  __chkstk_darwin(v4);
  v93 = &v86[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v86[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __chkstk_darwin(v9);
  v97 = &v86[-v13];
  __chkstk_darwin(v12);
  v15 = &v86[-v14];
  v16 = type metadata accessor for Date();
  v101 = *(v16 - 8);
  v17 = v101[8];
  v18 = __chkstk_darwin(v16);
  v20 = &v86[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = __chkstk_darwin(v18);
  v92 = &v86[-v22];
  v23 = __chkstk_darwin(v21);
  v96 = &v86[-v24];
  __chkstk_darwin(v23);
  v99 = &v86[-v25];
  v26 = type metadata accessor for DispatchPredicate();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = &v86[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = *(v3 + 16);
  *v30 = v31;
  (*(v27 + 104))(v30, enum case for DispatchPredicate.onQueue(_:), v26);
  v32 = v31;
  v33 = _dispatchPreconditionTest(_:)();
  (*(v27 + 8))(v30, v26);
  if (v33)
  {
    if (qword_1009367B8 == -1)
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
  v34 = type metadata accessor for Logger();
  sub_100006654(v34, qword_100950F70);
  v35 = v100;

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v40 = v35;
    v41 = v39;
    v103[0] = v39;
    *v38 = 136446210;
    *(v38 + 4) = sub_10000668C(v98, v40, v103);
    _os_log_impl(&_mh_execute_header, v36, v37, "RDTodayNotificationEngine: started retractTodayNotificationIfApplicable {reason: %{public}s}", v38, 0xCu);
    sub_10000607C(v41);
  }

  v42 = v101;
  v43 = OBJC_IVAR____TtC7remindd25RDTodayNotificationEngine_cachedLastDismissedDate;
  swift_beginAccess();
  sub_100010364(v3 + v43, v15, &unk_100938850, qword_100795AE0);
  v44 = v42[6];
  if (v44(v15, 1, v16) == 1)
  {
    sub_1000050A4(v15, &unk_100938850, qword_100795AE0);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
    }
  }

  else
  {
    v90 = v20;
    v91 = v3;
    v48 = v16;
    v49 = v42[4];
    v50 = v99;
    v49(v99, v15, v16);
    (v42[7])(v11, 1, 1, v16);
    v51 = v97;
    sub_100734AD8(v11, v97);
    sub_1000050A4(v11, &unk_100938850, qword_100795AE0);
    if (v44(v51, 1, v16) == 1)
    {
      sub_1000050A4(v51, &unk_100938850, qword_100795AE0);
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&_mh_execute_header, v52, v53, "RDTodayNotificationEngine: Skipping retractTodayNotificationIfApplicable because user has disabled today notification or there was error getting lastTodayNotificationFireDate", v54, 2u);
      }

      (v101[1])(v99, v16);
    }

    else
    {
      v55 = v96;
      v49(v96, v51, v16);
      v56 = v50;
      if (static Date.< infix(_:_:)())
      {
        v57 = v101;
        v58 = v101[2];
        v59 = v92;
        v58(v92, v55, v48);
        v60 = v90;
        v58(v90, v56, v48);
        v61 = Logger.logObject.getter();
        v62 = static os_log_type_t.default.getter();
        v63 = os_log_type_enabled(v61, v62);
        v64 = v48;
        v89 = v48;
        if (v63)
        {
          v65 = swift_slowAlloc();
          v88 = swift_slowAlloc();
          v102 = v88;
          *v65 = 136446466;
          sub_100054724(&qword_100937010, &type metadata accessor for Date);
          v87 = v62;
          v66 = dispatch thunk of CustomStringConvertible.description.getter();
          v68 = v67;
          v69 = v57[1];
          v97 = ((v57 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
          (v69)(v59, v64);
          v70 = sub_10000668C(v66, v68, &v102);
          v56 = v99;

          *(v65 + 4) = v70;
          *(v65 + 12) = 2082;
          v71 = dispatch thunk of CustomStringConvertible.description.getter();
          v73 = v72;
          v101 = v69;
          (v69)(v60, v64);
          v74 = sub_10000668C(v71, v73, &v102);

          *(v65 + 14) = v74;
          _os_log_impl(&_mh_execute_header, v61, v87, "RDTodayNotificationEngine: proceeding to retractTodayNotificationIfApplicable because {lastTodayNotificationFireDate: %{public}s < lastDismissedDate: %{public}s}", v65, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          v76 = v57[1];
          v97 = ((v57 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
          (v76)(v60, v48);
          v101 = v76;
          (v76)(v59, v48);
        }

        v77 = v93;
        v78 = v94;
        v79 = *(v94 + 104);
        v80 = v95;
        v79(v93, enum case for RDUserNotificationCategory.todayNotification(_:), v95);
        v81 = v98;
        v82 = v100;
        sub_1007378E0(v77, v98, v100, v56);
        v83 = *(v78 + 8);
        v83(v77, v80);
        v79(v77, enum case for RDUserNotificationCategory.todayNotificationForSingleReminder(_:), v80);
        sub_1007378E0(v77, v81, v82, v56);
        v83(v77, v80);
        v84 = v89;
        v85 = v101;
        (v101)(v96, v89);
        v85(v56, v84);
      }

      else
      {
        v75 = v101[1];
        v75(v55, v16);
        v75(v50, v16);
      }
    }
  }
}

void sub_1007378E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v33 = a4;
  v34 = a2;
  v35 = a3;
  v7 = type metadata accessor for Date();
  v28 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = type metadata accessor for RDUserNotificationCategory();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *(v5 + 56);
  v14 = RDUserNotificationCategory.rawValue.getter();
  v29 = v15;
  v30 = v14;
  v16 = RDUserNotificationCategory.rawValue.getter();
  v31 = v17;
  v32 = v16;
  (*(v11 + 16))(v13, a1, v10);
  (*(v8 + 16))(&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v33, v7);
  v18 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v19 = (v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (*(v8 + 80) + v19 + 16) & ~*(v8 + 80);
  v21 = swift_allocObject();
  (*(v11 + 32))(v21 + v18, v13, v10);
  v22 = (v21 + v19);
  v23 = v35;
  *v22 = v34;
  v22[1] = v23;
  (*(v8 + 32))(v21 + v20, &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v28);

  v24 = String._bridgeToObjectiveC()();

  v25 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_10073E3F4;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100042968;
  aBlock[3] = &unk_1008FD820;
  v26 = _Block_copy(aBlock);

  [v36 releaseNotificationWithIdentifier:v24 reference:v25 completion:v26];
  _Block_release(v26);
}

void sub_100737BEC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v60 = a5;
  v61 = a4;
  v59 = a3;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v57 - v13;
  v15 = type metadata accessor for RDUserNotificationCategory();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v57 - v21;
  if (a1)
  {
    swift_errorRetain();
    if (qword_1009367B8 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100006654(v23, qword_100950F70);
    (*(v16 + 16))(v22, a2, v15);
    v24 = v7;
    (*(v8 + 16))(v14, v60, v7);
    swift_errorRetain();

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v62 = v60;
      *v27 = 136446978;
      v58 = v25;
      v28 = RDUserNotificationCategory.rawValue.getter();
      LODWORD(v57) = v26;
      v29 = v24;
      v31 = v30;
      (*(v16 + 8))(v22, v15);
      v32 = sub_10000668C(v28, v31, &v62);

      *(v27 + 4) = v32;
      *(v27 + 12) = 2082;
      *(v27 + 14) = sub_10000668C(v59, v61, &v62);
      *(v27 + 22) = 2082;
      sub_100054724(&qword_100937010, &type metadata accessor for Date);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      (*(v8 + 8))(v14, v29);
      v36 = sub_10000668C(v33, v35, &v62);

      *(v27 + 24) = v36;
      *(v27 + 32) = 2080;
      swift_getErrorValue();
      v37 = Error.rem_errorDescription.getter();
      v39 = sub_10000668C(v37, v38, &v62);

      *(v27 + 34) = v39;
      v40 = v58;
      _os_log_impl(&_mh_execute_header, v58, v57, "RDTodayNotificationEngine: retractTodayNotificationIfApplicable failed {category: %{public}s, retractReason: %{public}s, lastDismissedDate: %{public}s, error: %s}", v27, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {

      (*(v8 + 8))(v14, v24);
      (*(v16 + 8))(v22, v15);
    }
  }

  else
  {
    if (qword_1009367B8 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_100006654(v41, qword_100950F70);
    (*(v16 + 16))(v20, a2, v15);
    v42 = v7;
    (*(v8 + 16))(v12, v60, v7);
    v43 = v61;

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v57 = v42;
      v47 = v46;
      v60 = swift_slowAlloc();
      v62 = v60;
      *v47 = 136446722;
      LODWORD(v58) = v45;
      v48 = RDUserNotificationCategory.rawValue.getter();
      v50 = v49;
      (*(v16 + 8))(v20, v15);
      v51 = sub_10000668C(v48, v50, &v62);

      *(v47 + 4) = v51;
      *(v47 + 12) = 2082;
      *(v47 + 14) = sub_10000668C(v59, v43, &v62);
      *(v47 + 22) = 2082;
      sub_100054724(&qword_100937010, &type metadata accessor for Date);
      v52 = v57;
      v53 = dispatch thunk of CustomStringConvertible.description.getter();
      v55 = v54;
      (*(v8 + 8))(v12, v52);
      v56 = sub_10000668C(v53, v55, &v62);

      *(v47 + 24) = v56;
      _os_log_impl(&_mh_execute_header, v44, v58, "RDTodayNotificationEngine: retractTodayNotificationIfApplicable completed {category: %{public}s, retractReason: %{public}s, lastDismissedDate: %{public}s}", v47, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v8 + 8))(v12, v42);
      (*(v16 + 8))(v20, v15);
    }
  }
}

void sub_1007382EC()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 16);
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  if (*(v0 + OBJC_IVAR____TtC7remindd25RDTodayNotificationEngine_started) == 1)
  {
    sub_1007384C4();
    return;
  }

  if (qword_1009367B8 != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v8 = type metadata accessor for Logger();
  sub_100006654(v8, qword_100950F70);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "RDTodayNotificationEngine.start() must be called before setupTimers", v11, 2u);
  }
}

void sub_1007384C4()
{
  v1 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v162 = v155 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v167 = v155 - v5;
  v180 = type metadata accessor for REMRemindersListDataView.DatesModel.Group();
  v184 = *(v180 - 8);
  v6 = *(v184 + 8);
  v7 = __chkstk_darwin(v180);
  v185 = v155 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v179 = v155 - v9;
  v10 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch();
  v173 = *(v10 - 8);
  v174 = v10;
  v11 = *(v173 + 64);
  __chkstk_darwin(v10);
  v171 = v155 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v172 = *(v182 - 8);
  v13 = *(v172 + 64);
  __chkstk_darwin(v182);
  v170 = v155 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v181 = *(v15 - 1);
  v16 = v181[8];
  __chkstk_darwin(v15);
  v18 = (v155 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v166 = sub_1000F5104(&unk_1009511F0, &unk_1007B7450);
  v165 = *(v166 - 8);
  v19 = *(v165 + 64);
  __chkstk_darwin(v166);
  v169 = v155 - v20;
  v164 = type metadata accessor for REMRemindersListDataView.DatesModel();
  v163 = *(v164 - 8);
  v21 = *(v163 + 64);
  __chkstk_darwin(v164);
  v168 = v155 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Date();
  v178 = *(v23 - 8);
  v24 = *(v178 + 64);
  v25 = __chkstk_darwin(v23);
  v160 = v155 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v161 = v155 - v28;
  v29 = __chkstk_darwin(v27);
  v158 = v155 - v30;
  v31 = __chkstk_darwin(v29);
  v159 = v155 - v32;
  v33 = __chkstk_darwin(v31);
  v157 = v155 - v34;
  __chkstk_darwin(v33);
  v176 = v155 - v35;
  v36 = sub_1000F5104(&qword_10093B790, &qword_100798D88);
  v37 = *(*(v36 - 8) + 64);
  v38 = __chkstk_darwin(v36 - 8);
  v40 = v155 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v42 = v155 - v41;
  v43 = type metadata accessor for DispatchPredicate();
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  __chkstk_darwin(v43);
  v47 = (v155 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  v177 = v0;
  v48 = v0[2];
  *v47 = v48;
  (*(v44 + 104))(v47, enum case for DispatchPredicate.onQueue(_:), v43);
  v49 = v48;
  LOBYTE(v48) = _dispatchPreconditionTest(_:)();
  (*(v44 + 8))(v47, v43);
  if ((v48 & 1) == 0)
  {
    goto LABEL_57;
  }

  if (qword_1009367B8 != -1)
  {
    goto LABEL_58;
  }

  while (1)
  {
    v50 = type metadata accessor for Logger();
    v175 = sub_100006654(v50, qword_100950F70);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.default.getter();
    v53 = v15;
    if (os_log_type_enabled(v51, v52))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&_mh_execute_header, v51, v52, "RDTodayNotificationEngine: started addNextBannerTimeEvent", v54, 2u);
    }

    v55 = v177[16];
    sub_1004FEB2C();
    v56 = [objc_opt_self() daemonUserDefaults];
    v57 = [v56 todayNotificationFireTime];

    v58 = v181;
    if (v57)
    {
      static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

      v59 = 0;
    }

    else
    {
      v59 = 1;
    }

    v60 = type metadata accessor for DateComponents();
    v61 = *(v60 - 8);
    (*(v61 + 56))(v40, v59, 1, v60);
    sub_100031B58(v40, v42, &qword_10093B790, &qword_100798D88);
    LODWORD(v60) = (*(v61 + 48))(v42, 1, v60);
    sub_1000050A4(v42, &qword_10093B790, &qword_100798D88);
    if (v60 == 1)
    {
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&_mh_execute_header, v62, v63, "User doesn't want today notifications at all. Not adding next time event.", v64, 2u);
      }

      return;
    }

    v183 = v23;
    Date.init()();
    v65 = [objc_allocWithZone(REMStore) initWithDaemonController:v177[15]];
    v66 = v18;
    (v58[13])(v18, enum case for REMRemindersListDataView.SortingStyle.default(_:), v53);
    v156 = v53;
    v67 = v172;
    v68 = v170;
    (*(v172 + 104))(v170, enum case for REMRemindersListDataView.ShowCompleted.off(_:), v182);
    v70 = v173;
    v69 = v174;
    v71 = v171;
    (*(v173 + 104))(v171, enum case for REMRemindersListDataView.RemindersPrefetch.none(_:), v174);
    v72 = v169;
    static REMRemindersListDataView.fetchScheduled(store:sortingStyle:showCompleted:countCompleted:remindersPrefetch:alwaysIncludeTodayGroup:diffingAgainst:)();
    v155[1] = 0;
    v155[0] = v65;
    (*(v70 + 8))(v71, v69);
    (*(v67 + 8))(v68, v182);
    (v58[1])(v66, v156);
    v80 = v166;
    REMRemindersListDataView.Result.model.getter();
    (*(v165 + 8))(v72, v80);
    v81 = REMRemindersListDataView.DatesModel.groups.getter();
    v82 = v81;
    v23 = v183;
    v182 = *(v81 + 16);
    if (v182)
    {
      v40 = 0;
      v181 = v184 + 16;
      v15 = (v184 + 32);
      v174 = (v184 + 8);
      v18 = _swiftEmptyArrayStorage;
      v83 = v179;
      v42 = v180;
      while (v40 < *(v82 + 16))
      {
        v84 = (v184[80] + 32) & ~v184[80];
        v85 = *(v184 + 9);
        (*(v184 + 2))(v83, v82 + v84 + v85 * v40, v42);
        v86 = *(REMRemindersListDataView.DatesModel.Group.reminders.getter() + 16);

        if (v86)
        {
          v87 = *v15;
          (*v15)(v185, v83, v42);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v186 = v18;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_100253DE0(0, v18[2] + 1, 1);
            v18 = v186;
          }

          v90 = v18[2];
          v89 = v18[3];
          if (v90 >= v89 >> 1)
          {
            sub_100253DE0(v89 > 1, v90 + 1, 1);
            v18 = v186;
          }

          v18[2] = v90 + 1;
          v42 = v180;
          v87(v18 + v84 + v90 * v85, v185, v180);
          v23 = v183;
          v83 = v179;
        }

        else
        {
          (*v174)(v83, v42);
        }

        if (v182 == ++v40)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
      goto LABEL_56;
    }

    v18 = _swiftEmptyArrayStorage;
LABEL_28:

    v91 = sub_10072E1A8(v18);

    v92 = v155[0];
    if (v91 >> 62)
    {
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);

      _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    }

    v93 = v178;
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v186 = 0;
    v95 = [v92 fetchRemindersWithObjectIDs:isa error:&v186];

    v96 = v186;
    if (!v95)
    {
      v108 = v186;

      _convertNSErrorToError(_:)();

      swift_willThrow();
      (*(v163 + 8))(v168, v164);
      swift_errorRetain();
      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v186 = v76;
        *v75 = 136315138;
        swift_getErrorValue();
        v77 = Error.localizedDescription.getter();
        v79 = sub_10000668C(v77, v78, &v186);

        *(v75 + 4) = v79;
        _os_log_impl(&_mh_execute_header, v73, v74, "Error fetching scheduled reminders when getting nextReminderDueDateMidnight {error: %s}", v75, 0xCu);
        sub_10000607C(v76);
      }

      else
      {
      }

LABEL_54:
      (*(v93 + 8))(v176, v23);
      return;
    }

    sub_1000060C8(0, &unk_100942FB0, REMReminder_ptr);
    sub_10000CDE4(&qword_1009391F0, &qword_1009391E0, REMObjectID_ptr);
    v97 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v98 = v96;

    __chkstk_darwin(v99);
    v100 = v176;
    v155[-2] = v97;
    v155[-1] = v100;
    v101 = sub_1003E08D8(sub_10073E3D8, &v155[-4], v91);

    v42 = v101[2];
    if (!v42)
    {
      break;
    }

    v102 = *(v93 + 16);
    v40 = v93 + 16;
    v103 = v157;
    v184 = v101 + ((*(v40 + 64) + 32) & ~*(v40 + 64));
    v185 = v102;
    v23 = v40;
    (v102)(v157);
    v15 = v158;
    if (v42 == 1)
    {
LABEL_33:
      v104 = v23 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v105 = v178;
      v106 = v167;
      v23 = v183;
      (*(v178 + 32))(v167, v103, v183);
      (*(v105 + 56))(v106, 0, 1, v23);
      v107 = v185;
      goto LABEL_36;
    }

    v18 = (v178 + 32);
    v146 = 1;
    while (v146 < v101[2])
    {
      v40 = v101;
      v147 = v103;
      v148 = v178;
      v149 = v183;
      (v185)(v15, &v184[*(v178 + 72) * v146], v183);
      v150 = static Date.< infix(_:_:)();
      v151 = *(v148 + 8);
      if (v150)
      {
        v151(v147, v149);
        (*v18)(v147, v15, v149);
      }

      else
      {
        v151(v15, v149);
      }

      v103 = v147;
      ++v146;
      v101 = v40;
      if (v42 == v146)
      {
        goto LABEL_33;
      }
    }

LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    swift_once();
  }

  (*(v93 + 56))(v167, 1, 1, v23);
  v107 = *(v93 + 16);
  v104 = (v93 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
LABEL_36:
  v109 = v159;
  v107(v159, v176, v23);

  v110 = Logger.logObject.getter();
  v111 = static os_log_type_t.debug.getter();

  v112 = os_log_type_enabled(v110, v111);
  v182 = v104;
  v185 = v107;
  if (v112)
  {
    v113 = swift_slowAlloc();
    v181 = swift_slowAlloc();
    v186 = v181;
    *v113 = 136315394;
    v114 = Array.description.getter();
    v116 = sub_10000668C(v114, v115, &v186);

    *(v113 + 4) = v116;
    *(v113 + 12) = 2080;
    sub_1000F5104(&unk_1009431B0, &qword_10079D490);
    v117 = v178;
    v118 = *(v178 + 72);
    v119 = (*(v178 + 80) + 32) & ~*(v178 + 80);
    v120 = swift_allocObject();
    *(v120 + 16) = xmmword_100791300;
    v107((v120 + v119), v109, v183);
    v121 = Array.description.getter();
    v123 = v122;

    v184 = *(v117 + 8);
    (v184)(v109, v183);
    v124 = v121;
    v23 = v183;
    v125 = sub_10000668C(v124, v123, &v186);

    *(v113 + 14) = v125;
    _os_log_impl(&_mh_execute_header, v110, v111, "Deciding when to wake up for the next TodayNotification {todayTimeCandidates: %s, now: %s}", v113, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v117 = v178;
    v184 = *(v178 + 8);
    (v184)(v109, v23);
  }

  v126 = v160;
  v127 = v162;
  sub_100010364(v167, v162, &unk_100938850, qword_100795AE0);
  if ((*(v117 + 48))(v127, 1, v23) != 1)
  {

    v136 = v161;
    (*(v117 + 32))(v161, v127, v23);
    (v185)(v126, v136, v23);
    v137 = Logger.logObject.getter();
    v138 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v137, v138))
    {
      v139 = swift_slowAlloc();
      v140 = swift_slowAlloc();
      v186 = v140;
      *v139 = 136446210;
      v141 = Date.description.getter();
      v142 = v126;
      v144 = v143;
      (v184)(v142, v23);
      v145 = sub_10000668C(v141, v144, &v186);

      *(v139 + 4) = v145;
      _os_log_impl(&_mh_execute_header, v137, v138, "Scheduling next todayNotification fire date {nextFireDate: %{public}s}", v139, 0xCu);
      sub_10000607C(v140);
    }

    else
    {

      (v184)(v126, v23);
    }

    v93 = v117;
    v152 = v155[0];
    v153 = v177[3];
    v154 = v161;
    sub_1003B80B8(v161);

    (v184)(v154, v23);
    sub_1000050A4(v167, &unk_100938850, qword_100795AE0);
    (*(v163 + 8))(v168, v164);
    goto LABEL_54;
  }

  sub_1000050A4(v127, &unk_100938850, qword_100795AE0);

  v128 = Logger.logObject.getter();
  v129 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v128, v129))
  {
    v130 = swift_slowAlloc();
    v131 = swift_slowAlloc();
    v186 = v131;
    *v130 = 136315138;
    v132 = Array.description.getter();
    v134 = v133;

    v135 = sub_10000668C(v132, v134, &v186);
    v23 = v183;

    *(v130 + 4) = v135;
    _os_log_impl(&_mh_execute_header, v128, v129, "No time in todayTimeCandidates is in the future. Not adding next time event. {todayTimeCandidates: %s}", v130, 0xCu);
    sub_10000607C(v131);
  }

  else
  {
  }

  sub_1000050A4(v167, &unk_100938850, qword_100795AE0);
  (*(v163 + 8))(v168, v164);
  (v184)(v176, v23);
}

uint64_t sub_100739C30@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v22 - v10;
  v12 = sub_100353844(*a1, a2);
  if (v12)
  {
    v13 = v12;
    v14 = [v12 displayDate];
    if (v14)
    {
      v15 = v14;
      if ([v14 isAllDay] & 1) != 0 && ((v16 = objc_msgSend(v13, "assignmentContext"), v17 = objc_msgSend(v16, "currentAssignment"), v16, !v17) || (v17, (sub_1005815C8(0))))
      {
        sub_1004F1548(v13, a3, v11);

        v18 = type metadata accessor for Date();
        v19 = *(v18 - 8);
        if ((*(v19 + 48))(v11, 1, v18) != 1)
        {
          (*(v19 + 32))(a4, v11, v18);
          return (*(v19 + 56))(a4, 0, 1, v18);
        }

        sub_1000050A4(v11, &unk_100938850, qword_100795AE0);
      }

      else
      {
      }
    }

    else
    {
    }
  }

  v20 = type metadata accessor for Date();
  return (*(*(v20 - 8) + 56))(a4, 1, 1, v20);
}

void sub_100739E7C(void (*a1)(void), uint64_t a2)
{
  v124 = a2;
  v128 = a1;
  v112 = type metadata accessor for RDUserNotificationCategory();
  v116 = *(v112 - 8);
  v3 = *(v116 + 64);
  __chkstk_darwin(v112);
  v115 = &v110 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for RDUserNotificationType();
  v113 = *(v114 - 8);
  v5 = *(v113 + 64);
  __chkstk_darwin(v114);
  v111 = &v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for REMRemindersListDataView.ReminderLite();
  v119 = *(v118 - 8);
  v7 = *(v119 + 64);
  __chkstk_darwin(v118);
  v117 = &v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = type metadata accessor for Date();
  v138 = *(v141 - 1);
  v9 = *(v138 + 64);
  __chkstk_darwin(v141);
  v137 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_1000F5104(&unk_1009511E0, &qword_1007B7448);
  v122 = *(v123 - 8);
  v11 = *(v122 + 64);
  __chkstk_darwin(v123);
  v136 = &v110 - v12;
  v121 = type metadata accessor for REMRemindersListDataView.TodayGroupModel();
  v120 = *(v121 - 8);
  v13 = *(v120 + 64);
  __chkstk_darwin(v121);
  v125 = &v110 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  Subtasks = type metadata accessor for REMRemindersListDataView.FetchSubtasks();
  v133 = *(Subtasks - 1);
  v15 = *(v133 + 64);
  __chkstk_darwin(Subtasks);
  v134 = &v110 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch();
  v130 = *(v132 - 8);
  v17 = *(v130 + 64);
  __chkstk_darwin(v132);
  v131 = &v110 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v19 = *(v129 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v129);
  v22 = &v110 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = &v110 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration();
  v126 = *(Configuration - 8);
  v28 = *(v126 + 64);
  __chkstk_darwin(Configuration);
  v140 = &v110 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for DispatchPredicate();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  v34 = (&v110 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v139 = v2;
  v35 = *(v2 + 16);
  *v34 = v35;
  (*(v31 + 104))(v34, enum case for DispatchPredicate.onQueue(_:), v30);
  v36 = v35;
  LOBYTE(v35) = _dispatchPreconditionTest(_:)();
  (*(v31 + 8))(v34, v30);
  if ((v35 & 1) == 0)
  {
    goto LABEL_54;
  }

  if (qword_1009367B8 != -1)
  {
LABEL_55:
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  v38 = sub_100006654(v37, qword_100950F70);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  v41 = os_log_type_enabled(v39, v40);
  v42 = v140;
  if (v41)
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&_mh_execute_header, v39, v40, "RDTodayNotificationEngine: started updateApplicationBadge", v43, 2u);
  }

  v44 = [objc_allocWithZone(REMStore) initWithDaemonController:*(v139 + 120)];
  (*(v24 + 104))(v27, enum case for REMRemindersListDataView.SortingStyle.default(_:), v23);
  (*(v19 + 104))(v22, enum case for REMRemindersListDataView.ShowCompleted.off(_:), v129);
  (*(v130 + 104))(v131, enum case for REMRemindersListDataView.RemindersPrefetch.none(_:), v132);
  (*(v133 + 104))(v134, enum case for REMRemindersListDataView.FetchSubtasks.off(_:), Subtasks);
  REMRemindersListDataView.FetchConfiguration.init(sortingStyle:showCompleted:countCompleted:remindersPrefetch:fetchSubtasks:)();
  v45 = v137;
  Date.init()();
  v46 = v136;
  static REMRemindersListDataView.fetchToday_Groups(store:grouped:currentLocation:today:configuration:diffingAgainst:)();
  v134 = v38;
  Subtasks = v44;
  (*(v138 + 8))(v45, v141);
  v54 = v123;
  REMRemindersListDataView.Result.model.getter();
  (*(v122 + 8))(v46, v54);
  v55 = REMRemindersListDataView.TodayGroupModel.todayReminders.getter();
  v56 = v55;
  v57 = *(v55 + 16);
  if (v57)
  {
    v144 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v58 = v117;
    v59 = v118;
    v141 = *(v119 + 16);
    v60 = *(v119 + 80);
    v138 = v56;
    v61 = v56 + ((v60 + 32) & ~v60);
    v62 = *(v119 + 72);
    v63 = (v119 + 8);
    do
    {
      v141(v58, v61, v59);
      REMRemindersListDataView.ReminderLite.objectID.getter();
      (*v63)(v58, v59);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v64 = *(v144 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v61 += v62;
      --v57;
    }

    while (v57);

    v65 = v144;
    v42 = v140;
  }

  else
  {

    v65 = _swiftEmptyArrayStorage;
  }

  v66 = Subtasks;
  if (v65 >> 62)
  {
    v23 = sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);

    _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    v23 = sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  }

  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v144 = 0;
  v68 = [v66 fetchRemindersWithObjectIDs:isa error:&v144];

  v69 = v144;
  if (v68)
  {
    sub_1000060C8(0, &unk_100942FB0, REMReminder_ptr);
    sub_10000CDE4(&qword_1009391F0, &qword_1009391E0, REMObjectID_ptr);
    v70 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v71 = v69;

    v72 = [objc_opt_self() daemonUserDefaults];
    v73 = [v72 shouldIncludeRemindersDueTodayInBadgeCount];

    LODWORD(v141) = v73;
    if (!v73)
    {
      v144 = _swiftEmptyArrayStorage;
      if ((v70 & 0xC000000000000001) != 0)
      {
        v77 = __CocoaDictionary.makeIterator()();
        v24 = 0;
        v78 = 0;
        v22 = 0;
        v70 = v77 | 0x8000000000000000;
      }

      else
      {
        v79 = -1 << *(v70 + 32);
        v24 = v70 + 64;
        v78 = ~v79;
        v80 = -v79;
        if (v80 < 64)
        {
          v81 = ~(-1 << v80);
        }

        else
        {
          v81 = -1;
        }

        v22 = (v81 & *(v70 + 64));
      }

      v27 = 0;
      v138 = v78;
      v82 = (v78 + 64) >> 6;
      while (1)
      {
        if ((v70 & 0x8000000000000000) != 0)
        {
          if (!__CocoaDictionary.Iterator.next()() || (v87 = v86, swift_unknownObjectRelease(), v142 = v87, swift_dynamicCast(), v85 = v143, v19 = v27, v23 = v22, !v143))
          {
LABEL_45:
            sub_10001B860();
            if ((v144 & 0x8000000000000000) != 0 || (v144 & 0x4000000000000000) != 0)
            {
              v75 = _CocoaArrayWrapper.endIndex.getter();
            }

            else
            {
              v75 = *(v144 + 16);
            }

            v74 = v112;
            v42 = v140;
            goto LABEL_49;
          }
        }

        else
        {
          v83 = v27;
          v84 = v22;
          v19 = v27;
          if (!v22)
          {
            while (1)
            {
              v19 = (v83 + 1);
              if (__OFADD__(v83, 1))
              {
                break;
              }

              if (v19 >= v82)
              {
                goto LABEL_45;
              }

              v84 = *(v24 + 8 * v19);
              ++v83;
              if (v84)
              {
                goto LABEL_39;
              }
            }

            __break(1u);
LABEL_54:
            __break(1u);
            goto LABEL_55;
          }

LABEL_39:
          v23 = (v84 - 1) & v84;
          v85 = *(*(v70 + 56) + ((v19 << 9) | (8 * __clz(__rbit64(v84)))));
          if (!v85)
          {
            goto LABEL_45;
          }
        }

        if ([v85 isOverdue])
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v88 = *(v144 + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        v27 = v19;
        v22 = v23;
      }
    }

    v74 = v112;
    if ((v70 & 0xC000000000000001) != 0)
    {
      v75 = __CocoaDictionary.count.getter();
    }

    else
    {
      v75 = *(v70 + 16);
    }

LABEL_49:
    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v144 = v92;
      *v91 = 136315394;
      v93 = Bool.yesno.getter();
      v95 = sub_10000668C(v93, v94, &v144);

      *(v91 + 4) = v95;
      *(v91 + 12) = 2048;
      *(v91 + 14) = v75;
      _os_log_impl(&_mh_execute_header, v89, v90, "Updating application badge. {includeToday: %s, count: %ld}", v91, 0x16u);
      sub_10000607C(v92);
    }

    v96 = v116;
    v97 = v115;
    v98 = v114;
    v99 = v113;
    v100 = v111;
    (*(v113 + 104))(v111, enum case for RDUserNotificationType.todayNotificationBadge(_:), v114);
    v101 = sub_1002D833C(0, 0, 0);
    (*(v99 + 8))(v100, v98);
    v102 = [objc_allocWithZone(NSNumber) initWithInteger:v75];
    [v101 setBadge:v102];

    v103 = v139;
    v104 = *(v139 + 56);
    (*(v96 + 104))(v97, enum case for RDUserNotificationCategory.todayNotificationBadge(_:), v74);
    v105 = RDUserNotificationCategory.rawValue.getter();
    v107 = v106;
    (*(v96 + 8))(v97, v74);
    v108 = swift_allocObject();
    v109 = v128;
    *(v108 + 16) = v103;
    *(v108 + 24) = v109;
    *(v108 + 32) = v124;
    *(v108 + 40) = v141;
    *(v108 + 48) = v75;

    sub_10014D92C(v109);
    sub_10052554C(v105, v107, v101, sub_10073E3C4, v108);

    (*(v120 + 8))(v125, v121);
    (*(v126 + 8))(v42, Configuration);
  }

  else
  {
    v76 = v144;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v120 + 8))(v125, v121);
    (*(v126 + 8))(v42, Configuration);
    swift_errorRetain();
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v144 = v50;
      *v49 = 136315138;
      swift_getErrorValue();
      v51 = Error.localizedDescription.getter();
      v53 = sub_10000668C(v51, v52, &v144);

      *(v49 + 4) = v53;
      _os_log_impl(&_mh_execute_header, v47, v48, "Failed to fetch reminder count. Failed to update today badge {error: %s}", v49, 0xCu);
      sub_10000607C(v50);
    }

    else
    {
    }

    if (v128)
    {
      v128(0);
    }
  }
}

void sub_10073B0EC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10073B140(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = (&v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(a2 + 16);
  *v14 = v15;
  (*(v11 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v10);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v14, v10);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (a1)
  {
    swift_errorRetain();
    if (qword_1009367B8 == -1)
    {
LABEL_4:
      v17 = type metadata accessor for Logger();
      sub_100006654(v17, qword_100950F70);
      swift_errorRetain();
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v34 = v21;
        *v20 = 136315138;
        swift_getErrorValue();
        v22 = Error.localizedDescription.getter();
        v24 = sub_10000668C(v22, v23, &v34);

        *(v20 + 4) = v24;
        _os_log_impl(&_mh_execute_header, v18, v19, "Unable to post today badge notification. {error: %s}", v20, 0xCu);
        sub_10000607C(v21);
      }

      if (a3)
      {
        a3(0);
      }

      return;
    }

LABEL_17:
    swift_once();
    goto LABEL_4;
  }

  if (qword_1009367B8 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_100006654(v25, qword_100950F70);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v34 = v29;
    *v28 = 136315394;
    v30 = Bool.yesno.getter();
    v32 = sub_10000668C(v30, v31, &v34);

    *(v28 + 4) = v32;
    *(v28 + 12) = 2048;
    *(v28 + 14) = a6;
    _os_log_impl(&_mh_execute_header, v26, v27, "Posted today badge notification. {includeToday: %s, count: %ld}", v28, 0x16u);
    sub_10000607C(v29);
  }

  if (a3)
  {
    a3(1);
  }
}

uint64_t sub_10073B4FC(uint64_t a1)
{
  v2 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v11 - v4;
  Date.init()();
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  v7 = OBJC_IVAR____TtC7remindd25RDTodayNotificationEngine_cachedLastDismissedDate;
  swift_beginAccess();
  sub_100117A3C(v5, a1 + v7, &unk_100938850, qword_100795AE0);
  swift_endAccess();
  sub_100010364(a1 + v7, v5, &unk_100938850, qword_100795AE0);
  swift_beginAccess();
  v8 = *(a1 + 104);
  v9 = *(a1 + 112);
  sub_10000C9DC(a1 + 80, v8);
  (*(v9 + 16))(v5, v8, v9);
  return swift_endAccess();
}

void sub_10073B690(uint64_t a1, void (*a2)(void), uint64_t a3, void (*a4)(void))
{
  v7 = type metadata accessor for RDUserNotificationAction();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v12, v4, v7, v10);
  v13 = (*(v8 + 88))(v12, v7);
  if (v13 == enum case for RDUserNotificationAction.defaultDismiss(_:))
  {
    if (a2)
    {
      a2();
    }

    return;
  }

  if (v13 == enum case for RDUserNotificationAction.debugDismiss(_:))
  {
    return;
  }

  if (v13 != enum case for RDUserNotificationAction.markAsCompleted(_:))
  {
    if (v13 == enum case for RDUserNotificationAction.snoozeForOneHour(_:) || v13 == enum case for RDUserNotificationAction.snoozeForOneDay(_:) || v13 == enum case for RDUserNotificationAction.snoozeToNextThirds(_:) || v13 == enum case for RDUserNotificationAction.snoozeToNextWeekend(_:))
    {
      if (qword_1009367B8 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_100006654(v17, qword_100950F70);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v18, v19))
      {
        goto LABEL_44;
      }

      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = "RDTodayNotificationEngine: Unexpected .snooze* actions for today notification";
    }

    else if (v13 == enum case for RDUserNotificationAction.addToReminders(_:))
    {
      if (qword_1009367B8 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_100006654(v22, qword_100950F70);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v18, v19))
      {
        goto LABEL_44;
      }

      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = "RDTodayNotificationEngine: Unexpected .addToReminders action for today notification";
    }

    else if (v13 == enum case for RDUserNotificationAction.viewAssignmentInList(_:))
    {
      if (qword_1009367B8 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_100006654(v23, qword_100950F70);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v18, v19))
      {
        goto LABEL_44;
      }

      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = "RDTodayNotificationEngine: Unexpected .viewAssignmentInList action for today notification";
    }

    else if (v13 == enum case for RDUserNotificationAction.declineAssignment(_:))
    {
      if (qword_1009367B8 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_100006654(v24, qword_100950F70);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v18, v19))
      {
        goto LABEL_44;
      }

      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = "RDTodayNotificationEngine: Unexpected .declineAssignment action for today notification";
    }

    else
    {
      if (v13 != enum case for RDUserNotificationAction.viewRemindersInList(_:))
      {
        _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return;
      }

      if (qword_1009367B8 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_100006654(v25, qword_100950F70);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v18, v19))
      {
        goto LABEL_44;
      }

      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = "RDTodayNotificationEngine: Unexpected .viewRemindersInList action for today notification";
    }

    _os_log_impl(&_mh_execute_header, v18, v19, v21, v20, 2u);

LABEL_44:

    return;
  }

  if (a4)
  {
    a4();
  }
}

void sub_10073BB84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = a2;
  v4 = type metadata accessor for RDUserNotificationAction();
  v54 = *(v4 - 8);
  v5 = *(v54 + 64);
  __chkstk_darwin(v4);
  __chkstk_darwin(v6);
  v8 = &v44 - v7;
  v9 = type metadata accessor for REMNotificationIdentifier();
  v52 = *(v9 - 8);
  v10 = *(v52 + 8);
  __chkstk_darwin(v9);
  v51 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v13 = [objc_allocWithZone(REMStore) initWithDaemonController:*(a3 + 120)];
  v14 = REMStore.fetchReminder(notificationIdentifier:includingDueDateDeltaAlerts:)();
  v55 = v13;
  v50 = v5;
  v52 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a3;
  v15 = v53;
  v16 = v14;
  v17 = [v14 objectID];
  v49 = [objc_allocWithZone(REMSaveRequest) initWithStore:v13];
  v51 = v16;
  v48 = [v49 updateReminder:v16];
  [v48 snoozeForever];
  if (qword_1009367B8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100006654(v18, qword_100950F70);
  v19 = v54;
  v20 = *(v54 + 16);
  v21 = v8;
  v20(v8, v15, v4);
  v22 = v17;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v46 = v20;
    v26 = v21;
    v27 = v25;
    v28 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    aBlock[0] = v45;
    *v27 = 138543618;
    *(v27 + 4) = v22;
    *v28 = v22;
    *(v27 + 12) = 2082;
    v29 = v22;
    v30 = RDUserNotificationAction.rawValue.getter();
    v32 = v31;
    v33 = v26;
    v20 = v46;
    (*(v54 + 8))(v33, v4);
    v34 = sub_10000668C(v30, v32, aBlock);
    v19 = v54;

    *(v27 + 14) = v34;
    _os_log_impl(&_mh_execute_header, v23, v24, "RDTodayNotificationEngine: Updating reminder for notification action {reminderID: %{public}@, action: %{public}s}", v27, 0x16u);
    sub_1000050A4(v28, &unk_100938E70, &unk_100797230);

    sub_10000607C(v45);
  }

  else
  {

    (*(v19 + 8))(v21, v4);
  }

  v35 = v52;
  v36 = *(v47 + 16);
  v20(v52, v53, v4);
  v37 = (*(v19 + 80) + 24) & ~*(v19 + 80);
  v38 = swift_allocObject();
  v39 = v35;
  v40 = v38;
  *(v38 + 16) = v22;
  (*(v19 + 32))(v38 + v37, v39, v4);
  aBlock[4] = sub_10073EA00;
  aBlock[5] = v40;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100042968;
  aBlock[3] = &unk_1008FD7A8;
  v41 = _Block_copy(aBlock);
  v42 = v22;

  v43 = v49;
  [v49 saveWithQueue:v36 completion:v41];

  _Block_release(v41);
}

void sub_10073C304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v64 = a2;
  v4 = type metadata accessor for RDUserNotificationAction();
  v65 = *(v4 - 8);
  v66 = v4;
  v5 = *(v65 + 64);
  __chkstk_darwin(v4);
  __chkstk_darwin(v6);
  v8 = &v55 - v7;
  v63 = type metadata accessor for REMAnalyticsEvent();
  v60 = *(v63 - 8);
  v9 = v60[8];
  __chkstk_darwin(v63);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for REMNotificationIdentifier();
  v13 = *(v12 - 8);
  v61 = v12;
  v62 = v13;
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v59 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v17 = [objc_allocWithZone(REMStore) initWithDaemonController:*(a3 + 120)];
  v18 = REMStore.fetchReminder(notificationIdentifier:includingDueDateDeltaAlerts:)();
  v56 = v8;
  v59 = v5;
  v61 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a3;
  v19 = v18;
  v20 = [v18 objectID];
  v57 = [objc_allocWithZone(REMSaveRequest) initWithStore:v17];
  v58 = v19;
  v21 = [v57 updateReminder:v19];
  type metadata accessor for REMAnalyticsManager();
  static REMAnalyticsManager.shared.getter();
  v22 = sub_1000F5104(&qword_1009511D8, &qword_1007B7440);
  v23 = &v11[v22[12]];
  v24 = v22[16];
  v25 = &v11[v22[20]];
  v26 = enum case for REMUserOperation.markReminderCompletedNotification(_:);
  v27 = type metadata accessor for REMUserOperation();
  (*(*(v27 - 8) + 104))(v11, v26, v27);
  v28 = type metadata accessor for Date();
  *v23 = 0;
  *(v23 + 1) = 0;
  (*(*(v28 - 8) + 56))(&v11[v24], 1, 1, v28);
  *v25 = 0;
  *(v25 + 1) = 0;
  v29 = v60;
  v30 = v63;
  (v60[13])(v11, enum case for REMAnalyticsEvent.userOperation(_:), v63);
  REMAnalyticsManager.post(event:)();

  (v29[1])(v11, v30);
  v60 = v21;
  [v21 setCompleted:1];
  if (qword_1009367B8 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_100006654(v31, qword_100950F70);
  v32 = v65;
  v33 = v56;
  v34 = v66;
  v55 = *(v65 + 16);
  v55(v56, v64, v66);
  v35 = v20;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v63 = v17;
    v40 = v39;
    v41 = swift_slowAlloc();
    aBlock[0] = v41;
    *v38 = 138543618;
    *(v38 + 4) = v35;
    *v40 = v35;
    *(v38 + 12) = 2082;
    v42 = v35;
    v43 = RDUserNotificationAction.rawValue.getter();
    v45 = v44;
    (*(v65 + 8))(v33, v66);
    v46 = sub_10000668C(v43, v45, aBlock);
    v32 = v65;

    *(v38 + 14) = v46;
    _os_log_impl(&_mh_execute_header, v36, v37, "RDTodayNotificationEngine: Updating reminder for notification action {reminderID: %{public}@, action: %{public}s}", v38, 0x16u);
    sub_1000050A4(v40, &unk_100938E70, &unk_100797230);
    v17 = v63;

    sub_10000607C(v41);
    v34 = v66;
  }

  else
  {

    (*(v32 + 8))(v33, v34);
  }

  v47 = v61;
  v48 = *(v62 + 16);
  v55(v61, v64, v34);
  v49 = v32;
  v50 = (*(v32 + 80) + 24) & ~*(v32 + 80);
  v51 = swift_allocObject();
  *(v51 + 16) = v35;
  (*(v49 + 32))(v51 + v50, v47, v34);
  aBlock[4] = sub_10073E2D4;
  aBlock[5] = v51;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100042968;
  aBlock[3] = &unk_1008FD758;
  v52 = _Block_copy(aBlock);
  v53 = v35;

  v54 = v57;
  [v57 saveWithQueue:v48 completion:v52];

  _Block_release(v52);
}

uint64_t sub_10073CC18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v8 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v17 - v10;
  Date.init()();
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  v13 = OBJC_IVAR____TtC7remindd25RDTodayNotificationEngine_cachedLastDismissedDate;
  swift_beginAccess();
  sub_100117A3C(v11, a1 + v13, &unk_100938850, qword_100795AE0);
  swift_endAccess();
  sub_100010364(a1 + v13, v11, &unk_100938850, qword_100795AE0);
  swift_beginAccess();
  v14 = *(a1 + 104);
  v15 = *(a1 + 112);
  sub_10000C9DC(a1 + 80, v14);
  (*(v15 + 16))(v11, v14, v15);
  swift_endAccess();
  return a4(a2, a3, a1);
}

void sub_10073CDB4(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for RDUserNotificationAction();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v40 - v12;
  if (a1)
  {
    swift_errorRetain();
    if (qword_1009367B8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100006654(v14, qword_100950F70);
    (*(v7 + 16))(v13, a3, v6);
    swift_errorRetain();
    v15 = a2;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v43 = v42;
      *v18 = 136446722;
      swift_getErrorValue();
      v41 = v16;
      v20 = Error.rem_errorDescription.getter();
      v22 = sub_10000668C(v20, v21, &v43);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2114;
      *(v18 + 14) = v15;
      *v19 = v15;
      *(v18 + 22) = 2082;
      v23 = v15;
      v24 = RDUserNotificationAction.rawValue.getter();
      v26 = v25;
      (*(v7 + 8))(v13, v6);
      v27 = sub_10000668C(v24, v26, &v43);

      *(v18 + 24) = v27;
      v28 = v41;
      _os_log_impl(&_mh_execute_header, v41, v17, "RDTodayNotificationEngine: Save error. Failed to save updates from notification response {error: %{public}s, reminderID: %{public}@, action: %{public}s}", v18, 0x20u);
      sub_1000050A4(v19, &unk_100938E70, &unk_100797230);

      swift_arrayDestroy();
    }

    else
    {

      (*(v7 + 8))(v13, v6);
    }
  }

  else
  {
    if (qword_1009367B8 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100006654(v29, qword_100950F70);
    (*(v7 + 16))(v10, a3, v6);
    v30 = a2;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v43 = v42;
      *v33 = 136446466;
      v35 = RDUserNotificationAction.rawValue.getter();
      v37 = v36;
      (*(v7 + 8))(v10, v6);
      v38 = sub_10000668C(v35, v37, &v43);

      *(v33 + 4) = v38;
      *(v33 + 12) = 2114;
      *(v33 + 14) = v30;
      *v34 = v30;
      v39 = v30;
      _os_log_impl(&_mh_execute_header, v31, v32, "RDTodayNotificationEngine: Updated reminder successfully. {action: %{public}s, reminderID: %{public}@}", v33, 0x16u);
      sub_1000050A4(v34, &unk_100938E70, &unk_100797230);

      sub_10000607C(v42);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }
  }
}

uint64_t sub_10073D2CC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v144 = a5;
  v145 = a4;
  v141 = a3;
  v143 = a1;
  v135 = type metadata accessor for REMNotificationIdentifier();
  v142 = *(v135 - 8);
  v6 = *(v142 + 64);
  __chkstk_darwin(v135);
  v134 = &v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v132 = &v120 - v8;
  __chkstk_darwin(v9);
  v139 = &v120 - v10;
  v11 = sub_1000F5104(&qword_1009511D0, &qword_1007A0A90);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v133 = &v120 - v13;
  v140 = type metadata accessor for RDUserNotificationAction();
  v137 = *(v140 - 8);
  v14 = *(v137 + 64);
  __chkstk_darwin(v140);
  v136 = &v120 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v131 = &v120 - v17;
  v19 = v18;
  __chkstk_darwin(v20);
  v130 = &v120 - v21;
  v22 = type metadata accessor for RDUserNotificationType();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = &v120 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v120 - v28;
  v31 = __chkstk_darwin(v30);
  v33 = (&v120 - v32);
  v34 = *(v23 + 16);
  (v34)(&v120 - v32, a2, v22, v31);
  v35 = (*(v23 + 88))(v33, v22);
  if (v35 == enum case for RDUserNotificationType.reminderAlarm(_:))
  {
    goto LABEL_2;
  }

  if (v35 == enum case for RDUserNotificationType.todayNotificationForSingleReminder(_:))
  {
    (*(v23 + 96))(v33, v22);
    v47 = v142;
    v48 = v139;
    v49 = v135;
    v127 = *(v142 + 32);
    v128 = v142 + 32;
    v127(v139, v33, v135);
    if (qword_1009367B8 != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    sub_100006654(v50, qword_100950F70);
    v51 = v132;
    v129 = *(v47 + 16);
    v130 = (v47 + 16);
    v129(v132, v48, v49);
    v52 = v137;
    v53 = *(v137 + 16);
    v54 = v131;
    v126 = v137 + 16;
    v125 = v53;
    v53(v131, v141, v140);
    v55 = v143;
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.default.getter();

    v122 = v57;
    v58 = os_log_type_enabled(v56, v57);
    v59 = v134;
    if (v58)
    {
      v60 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v146[0] = v121;
      *v60 = 136446722;
      v129(v59, v51, v49);
      v61 = String.init<A>(describing:)();
      v120 = v56;
      v63 = v62;
      v64 = *(v142 + 8);
      v124 = (v142 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v143 = v64;
      (v64)(v51, v49);
      v65 = sub_10000668C(v61, v63, v146);

      *(v60 + 4) = v65;
      v66 = v52;
      *(v60 + 12) = 2082;
      v67 = [v55 actionIdentifier];
      v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v70 = v69;

      v71 = sub_10000668C(v68, v70, v146);
      v49 = v135;

      *(v60 + 14) = v71;
      *(v60 + 22) = 2082;
      v72 = v141;
      v73 = RDUserNotificationAction.rawValue.getter();
      v75 = v74;
      v76 = v54;
      v77 = v140;
      (*(v66 + 8))(v76, v140);
      v78 = sub_10000668C(v73, v75, v146);

      *(v60 + 24) = v78;
      v59 = v134;
      v79 = v120;
      _os_log_impl(&_mh_execute_header, v120, v122, "TodayNotification: Processing notification response {type: .todayNotificationForSingleReminder, notificationIdentifier: %{public}s, actionIdentifier: %{public}s, action: %{public}s}", v60, 0x20u);
      swift_arrayDestroy();

      v48 = v139;

      v80 = v142;
    }

    else
    {

      v95 = v54;
      v77 = v140;
      (*(v52 + 8))(v95, v140);
      v96 = v142;
      v97 = *(v142 + 8);
      v124 = (v142 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v143 = v97;
      (v97)(v51, v49);
      v80 = v96;
      v72 = v141;
    }

    v129(v59, v48, v49);
    v125(v136, v72, v77);
    v98 = *(v80 + 80);
    v99 = v49;
    v100 = v137;
    v101 = *(v137 + 80);
    v102 = (v98 + 24) & ~v98;
    v103 = (v6 + v101 + v102) & ~v101;
    v104 = v48;
    v134 = v102;
    v135 = v98 | v101;
    v123 = v19;
    v105 = swift_allocObject();
    *(v105 + 16) = v138;
    v106 = v72;
    v127((v105 + v102), v59, v99);
    v107 = *(v100 + 32);
    v108 = v136;
    v109 = v140;
    v107(v105 + v103, v136, v140);
    v129(v59, v104, v99);
    v125(v108, v106, v109);
    v110 = swift_allocObject();
    *(v110 + 16) = v138;
    v127(&v134[v110], v59, v99);
    v107(v110 + v103, v108, v109);
    v111 = v133;
    (*(v142 + 56))(v133, 1, 1, v99);
    swift_retain_n();
    sub_10073B690(v111, sub_10073E1D0, v105, sub_10073E1E8);

    sub_1000050A4(v111, &qword_1009511D0, &qword_1007A0A90);
    (v143)(v139, v99);
    goto LABEL_24;
  }

  if (v35 == enum case for RDUserNotificationType.caldavSharedList(_:) || v35 == enum case for RDUserNotificationType.assignmentNotification(_:) || v35 == enum case for RDUserNotificationType.sharedListAddedReminderNotification(_:) || v35 == enum case for RDUserNotificationType.dueDateDeltaAlarm(_:))
  {
LABEL_2:
    (*(v23 + 8))(v33, v22);
    goto LABEL_3;
  }

  if (v35 != enum case for RDUserNotificationType.todayNotification(_:))
  {
    if (v35 != enum case for RDUserNotificationType.todayNotificationBadge(_:) && v35 != enum case for RDUserNotificationType.beforeFirstUnlock(_:))
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
LABEL_33:

      (*(v34 + 8))(v26, v29);
      goto LABEL_34;
    }

LABEL_3:
    if (qword_1009367B8 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_100006654(v36, qword_100950F70);
    (v34)(v29, a2, v22);
    v37 = v143;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v142 = swift_slowAlloc();
      v143 = swift_slowAlloc();
      v146[0] = v143;
      *v40 = 136315394;
      (v34)(v26, v29, v22);
      v41 = String.init<A>(describing:)();
      v43 = v42;
      (*(v23 + 8))(v29, v22);
      v44 = sub_10000668C(v41, v43, v146);

      *(v40 + 4) = v44;
      *(v40 + 12) = 2112;
      *(v40 + 14) = v37;
      v45 = v142;
      *v142 = v37;
      v46 = v37;
      _os_log_impl(&_mh_execute_header, v38, v39, "RDTodayNotificationEngine didn't expect to receive actions of this type. {type: %s, response: %@}", v40, 0x16u);
      sub_1000050A4(v45, &unk_100938E70, &unk_100797230);

      sub_10000607C(v143);
    }

    else
    {

      (*(v23 + 8))(v29, v22);
    }

LABEL_24:
    v112 = v145;
    goto LABEL_25;
  }

  if (qword_1009367B8 != -1)
  {
    swift_once();
  }

  v81 = type metadata accessor for Logger();
  sub_100006654(v81, qword_100950F70);
  v34 = v137;
  v26 = v130;
  v29 = v140;
  (*(v137 + 16))(v130, v141, v140);
  v82 = v143;
  v33 = Logger.logObject.getter();
  v83 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v33, v83))
  {
    goto LABEL_33;
  }

  v84 = swift_slowAlloc();
  v143 = swift_slowAlloc();
  v146[0] = v143;
  *v84 = 136446466;
  v85 = [v82 actionIdentifier];
  v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v87 = v29;
  v89 = v88;

  v90 = sub_10000668C(v86, v89, v146);

  *(v84 + 4) = v90;
  *(v84 + 12) = 2082;
  v91 = RDUserNotificationAction.rawValue.getter();
  v93 = v92;
  (*(v34 + 8))(v26, v87);
  v94 = sub_10000668C(v91, v93, v146);

  *(v84 + 14) = v94;
  _os_log_impl(&_mh_execute_header, v33, v83, "TodayNotification: Processing notification response {type: .todayNotification, actionIdentifier: %{public}s, action: %{public}s}", v84, 0x16u);
  swift_arrayDestroy();

LABEL_34:
  v118 = v138;
  v112 = v145;
  v119 = v133;
  (*(v142 + 56))(v133, 1, 1, v135);

  sub_10073B690(v119, sub_10073E2CC, v118, sub_10073B670);

  sub_1000050A4(v119, &qword_1009511D0, &qword_1007A0A90);
LABEL_25:
  if (qword_1009367B8 != -1)
  {
    swift_once();
  }

  v113 = type metadata accessor for Logger();
  sub_100006654(v113, qword_100950F70);
  v114 = Logger.logObject.getter();
  v115 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v114, v115))
  {
    v116 = swift_slowAlloc();
    *v116 = 0;
    _os_log_impl(&_mh_execute_header, v114, v115, "RDTodayNotificationEngine: Completing action handler by calling completionHandler now.", v116, 2u);
  }

  return v112();
}

uint64_t sub_10073E200(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v3 = *(type metadata accessor for REMNotificationIdentifier() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for RDUserNotificationAction() - 8);
  return sub_10073CC18(*(v1 + 16), v1 + v4, v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80)), a1);
}

uint64_t sub_10073E300()
{
  v1 = type metadata accessor for RDUserNotificationAction();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_10073E3F4(uint64_t a1)
{
  v3 = *(type metadata accessor for RDUserNotificationCategory() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for Date() - 8);
  v7 = *(v1 + v5);
  v8 = *(v1 + v5 + 8);
  v9 = v1 + ((v5 + *(v6 + 80) + 16) & ~*(v6 + 80));

  sub_100737BEC(a1, v1 + v4, v7, v8, v9);
}

void sub_10073E4F8(uint64_t a1)
{
  v3 = *(type metadata accessor for RDUserNotificationCategory() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = v1 + v5;
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v1 + v6);
  v12 = *(v1 + v6 + 8);

  sub_100735F18(a1, v7, v1 + v4, v9, v10, v11, v12);
}

uint64_t sub_10073E5D8(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = *(v3 + 16);
  v7 = v3 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return a3(a1, v6, v7);
}

void sub_10073E6BC(uint64_t (*a1)(void), const char *a2)
{
  if (qword_1009367B8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006654(v4, qword_100950F70);
  oslog = Logger.logObject.getter();
  v5 = a1();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v5, a2, v6, 2u);
  }
}

uint64_t sub_10073E834()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10073E938(uint64_t a1)
{
  v3 = v1[2];

  if (v1[3])
  {
    v4 = v1[4];
  }

  return _swift_deallocObject(v1, a1, 7);
}

void sub_10073E98C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  sub_1007382EC();
  if (v1)
  {
    v1();
  }
}

uint64_t sub_10073EA0C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100951210);
  v1 = sub_100006654(v0, qword_100951210);
  if (qword_100936428 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FC0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10073EAD4()
{
  result = [objc_opt_self() housekeepingingActivityScheduler];
  qword_100951228 = result;
  return result;
}

uint64_t sub_10073EB10()
{
  v1 = v0;
  v55 = type metadata accessor for Date();
  v2 = *(v55 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v55);
  v5 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v46 - v7;
  v9 = type metadata accessor for OSSignpostID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.begin.getter();
  if (qword_1009367C8 != -1)
  {
    swift_once();
  }

  v52 = v8;
  v14 = qword_100951228;
  static OSSignpostID.exclusive.getter();
  v51 = v14;
  os_signpost(_:dso:log:name:signpostID:)();
  v50 = *(v10 + 8);
  v53 = v10 + 8;
  v50(v13, v9);
  v15 = v1[3];
  v54 = v1[2];
  v16 = qword_1009367C0;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v18 = sub_100006654(v17, qword_100951210);

  v46[1] = v18;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  v21 = os_log_type_enabled(v19, v20);
  v48 = v5;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v47 = v9;
    v23 = v22;
    v24 = swift_slowAlloc();
    v56 = v24;
    *v23 = 136446210;
    v25 = v54;
    *(v23 + 4) = sub_10000668C(v54, v15, &v56);
    _os_log_impl(&_mh_execute_header, v19, v20, "[%{public}s] start execute()", v23, 0xCu);
    sub_10000607C(v24);

    v9 = v47;
  }

  else
  {

    v25 = v54;
  }

  v26 = v52;
  v27 = Date.init()();
  v57[0] = 0xD000000000000028;
  v57[1] = 0x80000001007B7600;
  v57[3] = 0;
  v58[0] = 0;
  v57[2] = 0;
  *(v58 + 6) = 0;
  v28 = v1[4];
  __chkstk_darwin(v27);
  v46[-4] = v1;
  v46[-3] = v25;
  v46[-2] = v15;
  v29 = v49;
  sub_100014A64(v57, sub_1007415B4, &v46[-6]);
  if (v29)
  {
    (*(v2 + 8))(v26, v55);
  }

  else
  {
    (*(v2 + 16))(v48, v26, v55);

    v30 = v2;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v47 = v9;
      v34 = v33;
      v49 = swift_slowAlloc();
      v56 = v49;
      *v34 = 136446466;
      v35 = sub_10000668C(v54, v15, &v56);
      LODWORD(v54) = v32;
      v36 = v35;

      *(v34 + 4) = v36;
      *(v34 + 12) = 2048;
      v37 = v48;
      Date.rem_elapsedInMilliseconds.getter();
      v39 = v38;
      v40 = *(v30 + 8);
      v41 = v37;
      v42 = v55;
      v40(v41, v55);
      *(v34 + 14) = v39;
      _os_log_impl(&_mh_execute_header, v31, v54, "[%{public}s] end execute(), elapsedSeconds: %f ms", v34, 0x16u);
      sub_10000607C(v49);

      v9 = v47;

      v40(v26, v42);
    }

    else
    {

      v43 = *(v2 + 8);
      v44 = v55;
      v43(v48, v55);
      v43(v26, v44);
    }
  }

  static os_signpost_type_t.end.getter();
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  return (v50)(v13, v9);
}

void sub_10073F0F0(void *a1, void **a2, uint64_t a3, unint64_t a4)
{
  v9 = objc_autoreleasePoolPush();
  sub_10073F208(a2, a1, a3, a4, &v12);
  if (v4)
  {
    objc_autoreleasePoolPop(v9);
  }

  else
  {
    objc_autoreleasePoolPop(v9);
    if ([a1 hasChanges])
    {
      v12 = 0;
      if ([a1 save:&v12])
      {
        v10 = v12;
      }

      else
      {
        v11 = v12;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }
    }
  }
}

void sub_10073F208(void **a1, unint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v72 = a5;
  v6 = v5;
  v87 = a3;
  v78 = a1;
  v9 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v71 - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = v14[8];
  __chkstk_darwin(v13);
  v17 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1007419AC();
  v20 = v18;
  if (v18 >> 62)
  {
    goto LABEL_77;
  }

  v21 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v21)
  {
LABEL_78:

    return;
  }

LABEL_3:
  v22 = 0;
  v23 = v20 & 0xC000000000000001;
  v77 = v20 & 0xFFFFFFFFFFFFFF8;
  v76 = v20 + 32;
  v83 = 0x80000001007EA120;
  v89 = (v14 + 7);
  v85 = (v14 + 6);
  v82 = (v14 + 4);
  v81 = (v14 + 1);
  *&v19 = 136446466;
  v86 = v19;
  *&v19 = 136446210;
  v71 = v19;
  v96 = a4;
  v88 = a2;
  v74 = v21;
  v73 = v20 & 0xC000000000000001;
  v90 = v12;
  v91 = v13;
  v75 = v20;
  v84 = v17;
  while (1)
  {
    if (v23)
    {
      v24 = v22;
      v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v22 >= *(v77 + 16))
      {
        goto LABEL_76;
      }

      v24 = v22;
      v25 = *&v76[8 * v22];
    }

    v98 = v25;
    v26 = __OFADD__(v24, 1);
    v14 = (v24 + 1);
    if (v26)
    {
      goto LABEL_75;
    }

    v79 = v14;
    v27 = [v98 remObjectID];
    if (!v27)
    {

      if (qword_1009367C0 == -1)
      {
        goto LABEL_69;
      }

      goto LABEL_80;
    }

    v28 = v27;
    v14 = v78;
    v29 = sub_10073FE70(a2, v27);
    if (v6)
    {

LABEL_67:
      *v72 = v6;
      return;
    }

    v30 = v29;
    v104 = _swiftEmptyArrayStorage;
    v31 = v29 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v95 = 0;
    v80 = v28;
    if (v31)
    {
      break;
    }

    v97 = _swiftEmptyArrayStorage;
LABEL_47:

    v12 = v97;
    if (v97 >> 62)
    {
      v64 = _CocoaArrayWrapper.endIndex.getter();
      v12 = v97;
      v13 = v64;
    }

    else
    {
      v13 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 = v95;
    a2 = v88;
    if (v13)
    {
      v20 = 0;
      v93 = (v12 & 0xFFFFFFFFFFFFFF8);
      v94 = v12 & 0xC000000000000001;
      v92 = v13;
      while (1)
      {
        if (v94)
        {
          v53 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v20 >= v93[2].isa)
          {
            goto LABEL_74;
          }

          v53 = *(v12 + 8 * v20 + 32);
        }

        v17 = v53;
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        sub_1000F5104(&unk_100939E10, &qword_1007970D0);
        v54 = v17;
        v55 = sub_100015620(v17, 0, 64, v98, a2);
        if (v6)
        {

          goto LABEL_67;
        }

        v56 = v55;

        if (qword_1009367C0 != -1)
        {
          swift_once();
        }

        v57 = type metadata accessor for Logger();
        sub_100006654(v57, qword_100951210);

        v58 = v54;
        v14 = Logger.logObject.getter();
        v59 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v14, v59))
        {
          v60 = swift_slowAlloc();
          v95 = 0;
          v61 = v60;
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          *&v102 = v63;
          *v61 = v86;
          *(v61 + 4) = sub_10000668C(v87, v96, &v102);
          *(v61 + 12) = 2114;
          *(v61 + 14) = v58;
          *v62 = v17;
          v17 = v58;
          _os_log_impl(&_mh_execute_header, v14, v59, "[%{public}s] inserted grocery operation queue item for determine whether to suggest to convert this list into a grocery list {listObjectID: %{public}@", v61, 0x16u);
          sub_1000050A4(v62, &unk_100938E70, &unk_100797230);
          a4 = v96;

          sub_10000607C(v63);
          a2 = v88;

          v6 = v95;
        }

        else
        {
        }

        v20 = (v20 + 1);
        v13 = v92;
        v52 = v12 == v92;
        v12 = v97;
        if (v52)
        {
          goto LABEL_4;
        }
      }

      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      v21 = _CocoaArrayWrapper.endIndex.getter();
      if (!v21)
      {
        goto LABEL_78;
      }

      goto LABEL_3;
    }

LABEL_4:

    v22 = v79;
    v20 = v75;
    v23 = v73;
    if (v79 == v74)
    {
      goto LABEL_78;
    }
  }

  if (v31 >= 1)
  {
    v32 = 0;
    v17 = (v30 & 0xC000000000000001);
    v97 = _swiftEmptyArrayStorage;
    v33 = v83;
    v94 = v31;
    while (1)
    {
      if (v17)
      {
        v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v34 = *(v30 + 8 * v32 + 32);
      }

      v35 = v34;
      *&v100 = 0xD000000000000024;
      *(&v100 + 1) = v33;
      v14 = [v34 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
      swift_unknownObjectRelease();
      if (v14)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v100 = 0u;
        v101 = 0u;
      }

      v102 = v100;
      v103 = v101;
      if (*(&v101 + 1))
      {
        if (swift_dynamicCast())
        {
          v36 = v99;
          *&v100 = 0x696669746E656469;
          *(&v100 + 1) = 0xEA00000000007265;
          v37 = [v35 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
          swift_unknownObjectRelease();
          if (v37)
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
          }

          else
          {
            v100 = 0u;
            v101 = 0u;
          }

          v102 = v100;
          v103 = v101;
          if (*(&v101 + 1))
          {
            v14 = v90;
            v38 = v91;
            v39 = swift_dynamicCast();
            (*v89)(v14, v39 ^ 1u, 1, v38);
            if ((*v85)(v14, 1, v38) == 1)
            {

              goto LABEL_34;
            }

            v40 = v84;
            (*v82)(v84, v14, v38);
            if (v36)
            {
              v33 = v83;
              if (qword_1009367C0 != -1)
              {
                swift_once();
              }

              v41 = type metadata accessor for Logger();
              sub_100006654(v41, qword_100951210);

              v14 = Logger.logObject.getter();
              v42 = static os_log_type_t.default.getter();

              v43 = os_log_type_enabled(v14, v42);
              v31 = v94;
              if (v43)
              {
                v44 = swift_slowAlloc();
                v93 = v14;
                v14 = v44;
                v45 = swift_slowAlloc();
                *&v102 = v45;
                *v14 = v71;
                *(v14 + 4) = sub_10000668C(v87, v96, &v102);
                v46 = v42;
                v47 = v93;
                _os_log_impl(&_mh_execute_header, v93, v46, "[%{public}s] found existing an list that is already suggested to be converted into a grocery list.", v14, 0xCu);
                sub_10000607C(v45);
                a4 = v96;
              }

              else
              {
              }

              (*v81)(v84, v91);
              goto LABEL_17;
            }

            sub_1000060C8(0, &unk_100938880, off_1008D41A8);
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
            isa = UUID._bridgeToObjectiveC()().super.isa;
            v50 = [ObjCClassFromMetadata objectIDWithUUID:isa];

            v14 = &v104;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v104 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v104 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v51 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            (*v81)(v40, v91);
            v97 = v104;
            a4 = v96;
            v33 = v83;
          }

          else
          {

            sub_1000050A4(&v102, &qword_100939ED0, &qword_100791B10);
            v14 = v90;
            (*v89)(v90, 1, 1, v91);
LABEL_34:
            sub_1000050A4(v14, &unk_100939D90, "8\n\r");
          }

          v31 = v94;
          goto LABEL_17;
        }
      }

      else
      {

        sub_1000050A4(&v102, &qword_100939ED0, &qword_100791B10);
      }

LABEL_17:
      if (v31 == ++v32)
      {
        goto LABEL_47;
      }
    }
  }

  __break(1u);
LABEL_80:
  swift_once();
LABEL_69:
  v65 = type metadata accessor for Logger();
  sub_100006654(v65, qword_100951210);

  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v66, v67))
  {
    v68 = a4;
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    *&v102 = v70;
    *v69 = v71;
    *(v69 + 4) = sub_10000668C(v87, v68, &v102);
    _os_log_impl(&_mh_execute_header, v66, v67, "[%{public}s] found no accounts that support grocery lists. Not suggesting grocery list conversion.", v69, 0xCu);
    sub_10000607C(v70);
  }
}

void *sub_10073FE70(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v36[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = _s10PredicatesOMa_1();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v36[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v13 = a2;
  swift_storeEnumTagMultiPayload();
  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = a2;
  v16 = [ObjCClassFromMetadata cdEntityName];
  if (!v16)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = String._bridgeToObjectiveC()();
  }

  v17 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:v16];

  [v17 setResultType:2];
  v18 = sub_10001F6F4();
  [v17 setPredicate:v18];

  v19 = [v15 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = UUID.uuidString.getter();
  v22 = v21;
  (*(v6 + 8))(v9, v5);
  v23 = *(v3 + 32);
  v24 = String._bridgeToObjectiveC()();
  v25 = [v23 storeForAccountIdentifier:v24];

  if (v25)
  {

    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1007953F0;
    *(v26 + 32) = v25;
    sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
    v27 = v25;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v17 setAffectedStores:isa];

    sub_1000F5104(&unk_100938E80, &unk_1007959D0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_100791340;
    *(v29 + 32) = 0x696669746E656469;
    *(v29 + 40) = 0xEA00000000007265;
    *(v29 + 88) = &type metadata for String;
    *(v29 + 56) = &type metadata for String;
    *(v29 + 64) = 0xD000000000000024;
    *(v29 + 72) = 0x80000001007EA120;
    v30 = Array._bridgeToObjectiveC()().super.isa;

    [v17 setPropertiesToFetch:v30];

    sub_1000060C8(0, &qword_100939F50, NSDictionary_ptr);
    v31 = NSManagedObjectContext.fetch<A>(_:)();
    sub_1001555B4(v13);
  }

  else
  {
    v31 = objc_opt_self();
    sub_1000F5104(&unk_100936FD0, &unk_100795D40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100791300;
    *(inited + 32) = v20;
    v33 = inited + 32;
    *(inited + 40) = v22;
    sub_1001A5660(inited);
    swift_setDeallocating();
    sub_100034610(v33);
    v34 = Set._bridgeToObjectiveC()().super.isa;

    [v31 accountStoreMissingError:v34];

    swift_willThrow();
    sub_1001555B4(v13);
  }

  return v31;
}

uint64_t sub_10074032C()
{
  v1 = *(v0 + 24);

  sub_10000607C((v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t sub_100740398()
{
  v1 = type metadata accessor for Locale();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  __chkstk_darwin(v4);
  v6 = &v20 - v5;
  v7 = (v0 + OBJC_IVAR____TtC7remindd40RDSuggestConversionToGroceryListActivity_userDefaults);
  v8 = *(v0 + OBJC_IVAR____TtC7remindd40RDSuggestConversionToGroceryListActivity_userDefaults + 24);
  v9 = *(v0 + OBJC_IVAR____TtC7remindd40RDSuggestConversionToGroceryListActivity_userDefaults + 32);
  sub_10000F61C((v0 + OBJC_IVAR____TtC7remindd40RDSuggestConversionToGroceryListActivity_userDefaults), v8);
  if ((*(v9 + 16))(v8, v9))
  {
    if (qword_1009367C0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100006654(v10, qword_100951210);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_12;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "RDSuggestConversionToGroceryListActivity: not executing because the user already dismissed a grocery tip.";
    goto LABEL_11;
  }

  v15 = v7[3];
  v16 = v7[4];
  sub_10000F61C(v7, v15);
  if (((*(v16 + 8))(v15, v16) & 1) == 0)
  {
    static Locale.current.getter();
    Locale.identifier.getter();
    (*(v2 + 8))(v6, v1);
    type metadata accessor for REMGroceryDummyModel();
    v18 = static REMGroceryDummyModel.isSupported(localeIdentifier:)();

    return v18 & 1;
  }

  if (qword_1009367C0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100006654(v17, qword_100951210);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "RDSuggestConversionToGroceryListActivity: not executing because the user already created a grocery list.";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v11, v12, v14, v13, 2u);
  }

LABEL_12:

  v18 = 0;
  return v18 & 1;
}

unint64_t sub_1007407E8()
{
  _StringGuts.grow(_:)(31);

  v1 = *(v0 + OBJC_IVAR____TtC7remindd40RDSuggestConversionToGroceryListActivity_identifier);
  v2 = *(v0 + OBJC_IVAR____TtC7remindd40RDSuggestConversionToGroceryListActivity_identifier + 8);

  v3._countAndFlagsBits = v1;
  v3._object = v2;
  String.append(_:)(v3);

  v4._countAndFlagsBits = 0x746973796261622ELL;
  v4._object = 0xEB00000000726574;
  String.append(_:)(v4);
  return 0xD000000000000012;
}

double sub_100740910()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_10000F61C(v0, v1);
  v3 = (*(v2 + 8))(v1, v2);
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

uint64_t sub_100740988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10000A87C(a1, v23);
  sub_1000F5104(&qword_10093D900, &qword_10079B610);
  type metadata accessor for RDSuggestConversionToGroceryListActivity();
  if (swift_dynamicCast())
  {

    swift_beginAccess();
    sub_10000A87C(v2 + 16, v19);
    v5 = v20;
    v6 = v21;
    sub_10000F61C(v19, v20);
    (*(v6 + 8))(v5, v6);
    sub_10000607C(v19);
    return sub_10000607C(v23);
  }

  else
  {
    if (qword_1009367C0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100006654(v8, qword_100951210);
    sub_10000A87C(a1, v19);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v22 = v12;
      *v11 = 136446210;
      sub_10000A87C(v19, &v18);
      v13 = String.init<A>(describing:)();
      v15 = v14;
      sub_10000607C(v19);
      v16 = sub_10000668C(v13, v15, &v22);

      *(v11 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v9, v10, "RDSuggestConversionToGroceryListExecutionDateStorage.lastExecutedDate(for:) must work with RDSuggestConversionToGroceryListActivity only {executable: %{public}s}", v11, 0xCu);
      sub_10000607C(v12);
    }

    else
    {

      sub_10000607C(v19);
    }

    sub_10000607C(v23);
    v17 = type metadata accessor for Date();
    return (*(*(v17 - 8) + 56))(a2, 1, 1, v17);
  }
}

uint64_t sub_100740C10(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v23 - v7;
  sub_10000A87C(a1, v26);
  sub_1000F5104(&qword_10093D900, &qword_10079B610);
  type metadata accessor for RDSuggestConversionToGroceryListActivity();
  if (swift_dynamicCast())
  {

    v9 = type metadata accessor for Date();
    v10 = *(v9 - 8);
    (*(v10 + 16))(v8, a2, v9);
    (*(v10 + 56))(v8, 0, 1, v9);
    swift_beginAccess();
    v11 = *(v2 + 40);
    v12 = *(v2 + 48);
    sub_10000C9DC(v2 + 16, v11);
    (*(v12 + 16))(v8, v11, v12);
    swift_endAccess();
  }

  else
  {
    if (qword_1009367C0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100006654(v13, qword_100951210);
    sub_10000A87C(a1, v25);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v24 = v17;
      *v16 = 136446210;
      sub_10000A87C(v25, v23);
      v18 = String.init<A>(describing:)();
      v20 = v19;
      sub_10000607C(v25);
      v21 = sub_10000668C(v18, v20, &v24);

      *(v16 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v14, v15, "RDSuggestConversionToGroceryListExecutionDateStorage.updateLastExecutedDate(for:) must work with RDSuggestConversionToGroceryListActivity only {executable: %{public}s}", v16, 0xCu);
      sub_10000607C(v17);
    }

    else
    {

      sub_10000607C(v25);
    }
  }

  return sub_10000607C(v26);
}

uint64_t sub_100741064@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC7remindd40RDSuggestConversionToGroceryListActivity_executable);
  a1[3] = type metadata accessor for RDSuggestConversionToGroceryListActivity.RDSuggestConversionToGroceryListActivityExecutable();
  a1[4] = &off_1008FDCB8;
  a1[5] = &off_1008FDCC8;
  *a1 = v3;
}

uint64_t sub_1007410C8()
{
  v1 = (v0 + OBJC_IVAR____TtC7remindd40RDSuggestConversionToGroceryListActivity_configurations);
  v2 = *(v0 + OBJC_IVAR____TtC7remindd40RDSuggestConversionToGroceryListActivity_configurations + 24);
  v3 = *(v0 + OBJC_IVAR____TtC7remindd40RDSuggestConversionToGroceryListActivity_configurations + 32);
  sub_10000F61C(v1, v2);
  return (*(*(v3 + 16) + 8))(v2);
}

uint64_t sub_100741158@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7remindd40RDSuggestConversionToGroceryListActivity_babysitter;
  swift_beginAccess();
  return sub_100010364(v1 + v3, a1, &unk_10093D8F0, &unk_10079B600);
}

char *sub_1007411C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v11 = *v2;
  v6 = *(*v2 + OBJC_IVAR____TtC7remindd40RDSuggestConversionToGroceryListActivity_configurations + 24);
  v5 = *(*v2 + OBJC_IVAR____TtC7remindd40RDSuggestConversionToGroceryListActivity_configurations + 32);
  sub_10000F61C(&v11[OBJC_IVAR____TtC7remindd40RDSuggestConversionToGroceryListActivity_configurations], *&v11[OBJC_IVAR____TtC7remindd40RDSuggestConversionToGroceryListActivity_configurations + 24]);
  v7 = (*(*(v5 + 16) + 8))(v6);
  v13 = a1;
  v14 = &off_1008FDD08;
  *&v12 = v11;
  v8 = type metadata accessor for RDExecutionIntervalThrottlingPolicy();
  v9 = swift_allocObject();
  sub_100054B6C(&v12, v9 + 16);
  *(v9 + 56) = v7;
  a2[3] = v8;
  a2[4] = &off_1008F5B28;
  *a2 = v9;

  return v11;
}

uint64_t sub_1007412A4()
{
  v1 = (*v0 + OBJC_IVAR____TtC7remindd40RDSuggestConversionToGroceryListActivity_identifier);
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_100741310@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 suggestConversionToGroceryListLastExecutionDate];
  if (v3)
  {
    v4 = v3;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

void sub_1007413B4(uint64_t a1)
{
  v3 = *v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(a1, 1, v4);
  v7 = 0;
  if (v6 != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v5 + 8))(a1, v4);
    v7 = isa;
  }

  v9 = v7;
  [v3 setSuggestConversionToGroceryListLastExecutionDate:?];
}

id sub_100741510()
{
  v1 = [*v0 suggestConversionToGroceryListRateReduceFactor];

  return v1;
}

uint64_t sub_1007415D4()
{
  v0 = sub_10000F8A4(3uLL, 0, 7u);
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100796900;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = swift_getKeyPath();
  sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
  v2 = [objc_allocWithZone(NSFetchRequest) init];
  v3 = [swift_getObjCClassFromMetadata() entity];
  [v2 setEntity:v3];

  [v2 setAffectedStores:0];
  [v2 setPredicate:v0];

  sub_100010864(v4);

  sub_1002137C0(_swiftEmptySetSingleton);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 setPropertiesToFetch:isa];

  swift_setDeallocating();
  v6 = *(inited + 16);
  swift_arrayDestroy();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007953F0;
  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  swift_getKeyPath();
  *(v7 + 32) = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  v8 = Array._bridgeToObjectiveC()().super.isa;

  [v2 setSortDescriptors:v8];

  v9 = NSManagedObjectContext.fetch<A>(_:)();
  return v9;
}

void *sub_1007419AC()
{
  v0 = sub_1007415D4();
  v1 = v0;
  if (v0 >> 62)
  {
    goto LABEL_31;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    if (i)
    {
      v3 = 0;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          v4 = *(v1 + 8 * v3 + 32);
        }

        v5 = v4;
        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        v7 = [objc_allocWithZone(REMAccountCapabilities) initWithAccountType:{objc_msgSend(v4, "type")}];
        v8 = [v7 supportsGroceriesList];

        if (v8)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v9 = _swiftEmptyArrayStorage[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v3;
        if (v6 == i)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

LABEL_14:

    if ((_swiftEmptyArrayStorage & 0x8000000000000000) == 0 && (_swiftEmptyArrayStorage & 0x4000000000000000) == 0)
    {
      v1 = _swiftEmptyArrayStorage[2];
      if (!v1)
      {
        break;
      }

      goto LABEL_17;
    }

    v1 = _CocoaArrayWrapper.endIndex.getter();
    if (!v1)
    {
      break;
    }

LABEL_17:
    v10 = 0;
    while (1)
    {
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v10 >= _swiftEmptyArrayStorage[2])
        {
          goto LABEL_30;
        }

        v11 = _swiftEmptyArrayStorage[v10 + 4];
      }

      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v13 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      ++v10;
      if (v12 == v1)
      {
        goto LABEL_33;
      }
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    ;
  }

LABEL_33:

  return _swiftEmptyArrayStorage;
}

id sub_100741C30(id result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 >> 6 == 1)
  {

    return result;
  }

  else if (!(a3 >> 6))
  {
    v4 = result;
  }

  return result;
}

void sub_100741C9C(void *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 >> 6 == 1)
  {
  }

  else if (!(a3 >> 6))
  {
  }
}

uint64_t sub_100741CF8(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_100741C30(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for RDGroceryQueueItemConfiguration(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_100741C30(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  sub_100741C9C(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for RDGroceryQueueItemConfiguration(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  sub_100741C9C(v4, v5, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for RDGroceryQueueItemConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 17))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 16) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 16) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for RDGroceryQueueItemConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 16) = 0;
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_100741E8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_100741EBC(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 16) = *(result + 16) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    *(result + 16) = 0x80;
  }

  return result;
}

uint64_t sub_100741EF8()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100951480);
  v1 = sub_100006654(v0, qword_100951480);
  if (qword_100936460 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975068);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

double sub_100741FC0@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v94 = a2;
  v100 = a3;
  v4 = type metadata accessor for REMCDOperationQueueItem.ThreadSafeRepresentation();
  v5 = *(*(v4 - 1) + 64);
  __chkstk_darwin(v4);
  v6 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v88[-v8];
  v10 = type metadata accessor for Date();
  v95 = *(v10 - 8);
  v96 = v10;
  v11 = *(v95 + 64);
  v12 = __chkstk_darwin(v10);
  v14 = &v88[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __chkstk_darwin(v12);
  v17 = &v88[-v16];
  __chkstk_darwin(v15);
  v93 = &v88[-v18];
  v19 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v23 = &v88[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v21);
  v25 = &v88[-v24];
  v26 = type metadata accessor for UUID();
  v27 = *(v26 - 8);
  v98 = v26;
  v99 = v27;
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v26);
  v31 = &v88[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v29);
  v97 = &v88[-v32];
  v33 = *(a1 + 8);
  if (v33 == 4 || !sub_10018F950(*(a1 + 8), &off_1008E4228))
  {
    goto LABEL_21;
  }

  if (v33 > 1)
  {
    if (v33 != 2)
    {
      goto LABEL_21;
    }

    sub_100010364(a1 + v4[9], v23, &unk_100939D90, "8\n\r");
    v36 = v98;
    v37 = v99;
    if ((*(v99 + 48))(v23, 1, v98) == 1)
    {
      sub_1000050A4(v23, &unk_100939D90, "8\n\r");
      result = 0.0;
      v39 = v100;
      *v100 = 0u;
      *(v39 + 1) = 0u;
      v39[4] = 0;
    }

    else
    {
      (*(v37 + 32))(v31, v23, v36);
      v46 = objc_opt_self();
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v48 = [v46 objectIDWithUUID:isa];

      v49 = type metadata accessor for RDGroceryOperationSuggestConversionToGroceryList();
      v50 = swift_allocObject();
      *(v50 + 16) = 2;
      v51 = v94;
      *(v50 + 24) = v48;
      *(v50 + 32) = v51;
      *(v50 + 40) = sub_100742D34;
      *(v50 + 48) = 0;
      v52 = v100;
      v100[3] = v49;
      v52[4] = &off_1008F94E0;
      *v52 = v50;
      v53 = *(v37 + 8);
      v54 = v51;
      v53(v31, v36);
    }
  }

  else
  {
    if (v33)
    {
      v40 = type metadata accessor for RDGroceryOperationDownloadGroceryModelAssetsFromTrial();
      v41 = swift_allocObject();
      *(v41 + 16) = 1;
      v42 = v100;
      v100[3] = v40;
      v42[4] = &off_1008FD3F0;
      *v42 = v41;
      return result;
    }

    sub_100010364(a1 + v4[9], v25, &unk_100939D90, "8\n\r");
    v34 = v98;
    v35 = v99;
    if ((*(v99 + 48))(v25, 1, v98) == 1)
    {
      sub_1000050A4(v25, &unk_100939D90, "8\n\r");
LABEL_21:
      v87 = v100;
      v100[4] = 0;
      result = 0.0;
      *v87 = 0u;
      *(v87 + 1) = 0u;
      return result;
    }

    (*(v35 + 32))(v97, v25, v34);
    sub_100010364(a1 + v4[7], v9, &unk_100938850, qword_100795AE0);
    v43 = v35;
    v44 = v95;
    v45 = v96;
    if ((*(v95 + 48))(v9, 1, v96) == 1)
    {
      (*(v43 + 8))(v97, v34);
      sub_1000050A4(v9, &unk_100938850, qword_100795AE0);
      goto LABEL_21;
    }

    v55 = v93;
    (*(v44 + 32))(v93, v9, v45);
    v56 = (a1 + v4[10]);
    v57 = v56[1];
    if (v57 >> 60 == 15)
    {
      (*(v44 + 8))(v55, v45);
      (*(v99 + 8))(v97, v34);
      goto LABEL_21;
    }

    v58 = *v56;
    v59 = objc_opt_self();
    sub_100029344(v58, v57);
    v60 = UUID._bridgeToObjectiveC()().super.isa;
    v61 = [v59 objectIDWithUUID:v60];

    v62 = objc_autoreleasePoolPush();
    v63 = type metadata accessor for JSONDecoder();
    v64 = *(v63 + 48);
    v65 = *(v63 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    sub_100742DB8();
    v92 = v58;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v90 = v57;

    objc_autoreleasePoolPop(v62);
    v89 = v102;
    v66 = *(v95 + 16);
    v66(v17, v93, v96);
    type metadata accessor for REMObjectID_Codable();
    sub_100190948();
    v91 = v61;

    v67 = Array<A>.removingDuplicates()();

    if (v67 >> 62)
    {
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);

      v68 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v68 = v67;
    }

    v69 = v96;
    v66(v14, v17, v96);
    v70 = [objc_opt_self() sharedConfiguration];
    v103 = sub_1000060C8(0, &qword_100936F28, off_1008D4108);
    v104 = &off_1008E5A40;
    v101 = v70;
    v71 = type metadata accessor for RDGroceryOperationCategorizeRemindersInList();
    v72 = *(v71 + 48);
    v73 = *(v71 + 52);
    v74 = swift_allocObject();
    *(v74 + 16) = 0;
    v75 = OBJC_IVAR____TtC7remindd43RDGroceryOperationCategorizeRemindersInList_rdLog;
    if (qword_100936460 != -1)
    {
      swift_once();
    }

    v76 = type metadata accessor for Logger();
    v77 = sub_100006654(v76, qword_100975068);
    (*(*(v76 - 8) + 16))(v74 + v75, v77, v76);
    v78 = v91;
    *(v74 + OBJC_IVAR____TtC7remindd43RDGroceryOperationCategorizeRemindersInList_listObjectID) = v91;
    *(v74 + OBJC_IVAR____TtC7remindd43RDGroceryOperationCategorizeRemindersInList_reminderIDs) = v68;
    *(v74 + OBJC_IVAR____TtC7remindd43RDGroceryOperationCategorizeRemindersInList_isListCategorization) = v89 & 1;
    v66((v74 + OBJC_IVAR____TtC7remindd43RDGroceryOperationCategorizeRemindersInList_queuedAt), v14, v69);
    v79 = v94;
    *(v74 + OBJC_IVAR____TtC7remindd43RDGroceryOperationCategorizeRemindersInList_store) = v94;
    sub_10000A87C(&v101, v74 + OBJC_IVAR____TtC7remindd43RDGroceryOperationCategorizeRemindersInList_classifierConfiguration);
    v80 = (v74 + OBJC_IVAR____TtC7remindd43RDGroceryOperationCategorizeRemindersInList_groceryClassifierProvider);
    *v80 = &unk_1007B7858;
    v80[1] = 0;
    v81 = objc_opt_self();
    v82 = v79;
    v83 = [v81 daemonUserDefaults];
    v84 = *(v95 + 8);
    v84(v14, v69);
    v84(v17, v69);
    sub_10000607C(&v101);
    type metadata accessor for RDFeedbackProvider();
    v85 = swift_allocObject();
    *(v85 + 16) = v83;
    *(v74 + OBJC_IVAR____TtC7remindd43RDGroceryOperationCategorizeRemindersInList_rdFeedbackProvider) = v85;
    v86 = v100;
    v100[3] = v71;
    v86[4] = &off_1008EE168;
    sub_100031A14(v92, v90);

    *v86 = v74;
    v84(v93, v69);
    (*(v99 + 8))(v97, v98);
  }

  return result;
}

uint64_t sub_100742C80(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100742CA0, 0, 0);
}

uint64_t sub_100742CA0()
{
  v1 = sub_100759D94(*(v0 + 16), *(v0 + 24), 0xD000000000000019, 0x8000000100800400);
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_100742D64()
{
  result = qword_100951498;
  if (!qword_100951498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100951498);
  }

  return result;
}

unint64_t sub_100742DB8()
{
  result = qword_1009514A0;
  if (!qword_1009514A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009514A0);
  }

  return result;
}

void sub_100742E10(void *a1@<X1>, uint64_t a2@<X2>, char *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v35 = a4;
  v42 = a2;
  v43 = a3;
  v41 = a1;
  v39 = a5;
  v40 = type metadata accessor for REMListPickerDataView.Model();
  v38 = *(v40 - 8);
  v5 = *(v38 + 64);
  __chkstk_darwin(v40);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v36 = &v32 - v8;
  v9 = type metadata accessor for REMAccountsListDataView.Model();
  v33 = *(v9 - 8);
  v34 = v9;
  v10 = *(v33 + 64);
  __chkstk_darwin(v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Options = type metadata accessor for REMAccountsListDataView.FetchOptions();
  v14 = *(Options - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(Options);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for REMAccountsListDataView.Invocation.Result();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for REMAccountsListDataView.Invocation();
  v23 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  static REMAccountsListDataView.FetchOptions.accountsOnly.getter();
  v24 = v44;
  sub_10000ABF4(v41, v42, v43, v17, v22);
  (*(v14 + 8))(v17, Options);

  if (!v24)
  {
    REMAccountsListDataView.Invocation.Result.model.getter();
    (*(v19 + 8))(v22, v18);
    v25 = REMAccountsListDataView.Model.accounts.getter();
    (*(v33 + 8))(v12, v34);
    v26 = v35;
    v27 = REMListPickerDataView.Invocation.Parameters.shouldIncludeCustomSmartLists.getter();
    __chkstk_darwin(v27);
    *(&v32 - 2) = v26;
    *(&v32 - 8) = v28 & 1;
    sub_1003DEA00(sub_1007127FC, (&v32 - 4), v25);

    v29 = v36;
    REMListPickerDataView.Model.init(accounts:)();
    v30 = v38;
    v31 = v40;
    (*(v38 + 16))(v37, v29, v40);
    REMListPickerDataView.Invocation.Result.init(model:)();
    (*(v30 + 8))(v29, v31);
  }
}

uint64_t sub_10074320C@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  v24[3] = a2;
  v5 = type metadata accessor for REMAccountsListDataView.Model.Account();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for REMListPickerDataView.PickerMode();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = (v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  REMListPickerDataView.Invocation.Parameters.pickerMode.getter();
  v15 = (*(v11 + 88))(v14, v10);
  if (v15 == enum case for REMListPickerDataView.PickerMode.specificAccount(_:))
  {
    (*(v11 + 96))(v14, v10);
    v16 = *v14;
    sub_100003C4C();
    v17 = REMAccountsListDataView.Model.Account.account.getter();
    v18 = [v17 objectID];

    LOBYTE(v17) = static NSObject.== infix(_:_:)();
    if ((v17 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v15 == enum case for REMListPickerDataView.PickerMode.allAccounts(_:))
  {
    goto LABEL_7;
  }

  if (v15 == enum case for REMListPickerDataView.PickerMode.cloudKitOnlyAccounts(_:))
  {
    v19 = REMAccountsListDataView.Model.Account.account.getter();
    v20 = [v19 capabilities];

    LOBYTE(v19) = [v20 supportsSubtasks];
    if ((v19 & 1) == 0)
    {
LABEL_8:
      v21 = 1;
      goto LABEL_9;
    }

LABEL_7:
    (*(v6 + 16))(v9, a1, v5);
    REMListPickerDataView.Model.Account.init(account:shouldIncludeCustomSmartLists:)();
    v21 = 0;
LABEL_9:
    v22 = type metadata accessor for REMListPickerDataView.Model.Account();
    return (*(*(v22 - 8) + 56))(a3, v21, 1, v22);
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

unint64_t sub_100743518(uint64_t a1)
{
  result = sub_100743540();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100743540()
{
  result = qword_1009514D0;
  if (!qword_1009514D0)
  {
    type metadata accessor for REMListPickerDataView.Invocation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009514D0);
  }

  return result;
}

uint64_t sub_1007435FC()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v18 = *(v0 - 8);
  v19 = v0;
  v1 = *(v18 + 64);
  __chkstk_darwin();
  v17 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = *(*(type metadata accessor for OS_dispatch_queue.Attributes() - 8) + 64);
  __chkstk_darwin();
  v4 = *(*(type metadata accessor for DispatchQoS() - 8) + 64);
  __chkstk_darwin();
  v5 = type metadata accessor for DispatchQoS.QoSClass();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
  active = type metadata accessor for RDPrimaryActiveCloudKitAccountManagedObjectIDCache(0);
  v20 = active;
  sub_1000F5104(&qword_1009516B8, &qword_1007B79E8);
  v11 = String.init<A>(reflecting:)();
  v16[0] = v12;
  v16[1] = v11;
  (*(v6 + 104))(v9, enum case for DispatchQoS.QoSClass.default(_:), v5);
  static OS_dispatch_queue.global(qos:)();
  (*(v6 + 8))(v9, v5);
  static DispatchQoS.unspecified.getter();
  v20 = &_swiftEmptyArrayStorage;
  sub_100008D58();
  sub_1000F5104(&unk_10093FEE0, &qword_100791B00);
  sub_100007FA0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v18 + 104))(v17, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v19);
  OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v13 = *(active + 48);
  v14 = *(active + 52);
  swift_allocObject();
  result = REMCache.init(cacheQueue:countLimit:)();
  qword_1009752E8 = result;
  return result;
}

uint64_t sub_100743930(uint64_t a1)
{
  swift_getObjectType();
  sub_10014F5CC(a1, v10);
  if (!v11)
  {
    sub_1001B2134(v10);
    goto LABEL_7;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v7 = 0;
    return v7 & 1;
  }

  sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
  v3 = *(v1 + OBJC_IVAR____TtC7remindd21RDPredefinedObjectKey_accountID);
  v4 = *&v9[OBJC_IVAR____TtC7remindd21RDPredefinedObjectKey_accountID];
  LOBYTE(v3) = static NSObject.== infix(_:_:)();

  if ((v3 & 1) == 0)
  {

    goto LABEL_7;
  }

  v5 = *(v1 + OBJC_IVAR____TtC7remindd21RDPredefinedObjectKey_objectID);
  v6 = *&v9[OBJC_IVAR____TtC7remindd21RDPredefinedObjectKey_objectID];
  v7 = static NSObject.== infix(_:_:)();

  return v7 & 1;
}

uint64_t sub_100743B88()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  *&v5 = __chkstk_darwin(v2).n128_u64[0];
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [*(v1 + OBJC_IVAR____TtC7remindd21RDPredefinedObjectKey_accountID) uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = UUID.uuidString.getter();
  v11 = v10;
  (*(v3 + 8))(v7, v2);
  v21 = v9;
  v22 = v11;

  v12._countAndFlagsBits = 24415;
  v12._object = 0xE200000000000000;
  String.append(_:)(v12);

  v13 = v21;
  v14 = v22;
  v15 = [*(v1 + OBJC_IVAR____TtC7remindd21RDPredefinedObjectKey_objectID) stringRepresentation];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v21 = v13;
  v22 = v14;

  v19._countAndFlagsBits = v16;
  v19._object = v18;
  String.append(_:)(v19);

  return v21;
}

uint64_t sub_100743E18()
{
  result = sub_100743E38();
  qword_1009752F0 = result;
  return result;
}

uint64_t sub_100743E38()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v18 = *(v0 - 8);
  v19 = v0;
  v1 = *(v18 + 64);
  __chkstk_darwin();
  v17 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = *(*(type metadata accessor for OS_dispatch_queue.Attributes() - 8) + 64);
  __chkstk_darwin();
  v4 = *(*(type metadata accessor for DispatchQoS() - 8) + 64);
  __chkstk_darwin();
  v5 = type metadata accessor for DispatchQoS.QoSClass();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
  v20 = type metadata accessor for RDPredefinedManagedObjectIDCache(0);
  sub_1000F5104(&qword_1009516B0, &unk_1007B79D8);
  v16[1] = String.init<A>(reflecting:)();
  (*(v6 + 104))(v9, enum case for DispatchQoS.QoSClass.default(_:), v5);
  static OS_dispatch_queue.global(qos:)();
  (*(v6 + 8))(v9, v5);
  static DispatchQoS.unspecified.getter();
  v20 = &_swiftEmptyArrayStorage;
  sub_100008D58();
  sub_1000F5104(&unk_10093FEE0, &qword_100791B00);
  sub_100007FA0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v18 + 104))(v17, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v19);
  OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v10 = *(static REMSmartList.NonCustom.allCases.getter() + 16);

  v11 = *(static REMManualOrdering.Predefined.allCases.getter() + 16);

  if (__OFADD__(v10, v11))
  {
    __break(1u);
  }

  else
  {
    v13 = type metadata accessor for RDPredefinedSmartListAndManualOrderingManagedObjectIDCache(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    return REMCache.init(cacheQueue:countLimit:)();
  }

  return result;
}

uint64_t sub_10074419C()
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100799D70;
  *(v0 + 32) = swift_getKeyPath();
  *(v0 + 40) = swift_getKeyPath();
  result = swift_getKeyPath();
  *(v0 + 48) = result;
  qword_100975338 = v0 & 0xFFFFFFFFFFFFFF8;
  return result;
}

uint64_t sub_1007442B0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1007953F0;
  result = swift_getKeyPath();
  *(v4 + 32) = result;
  *a3 = v4 & 0xFFFFFFFFFFFFFF8;
  return result;
}

uint64_t sub_100744320(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v18 - v12;
  v14 = [a1 identifier];
  if (v14)
  {
    v15 = v14;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v3 + 56))(v11, 0, 1, v2);
  }

  else
  {
    (*(v3 + 56))(v11, 1, 1, v2);
  }

  sub_100100FB4(v11, v13);
  if ((*(v3 + 48))(v13, 1, v2))
  {
    sub_1000050A4(v13, &unk_100939D90, "8\n\r");
    return 0;
  }

  else
  {
    (*(v3 + 16))(v6, v13, v2);
    sub_1000050A4(v13, &unk_100939D90, "8\n\r");
    v17 = UUID.uuidString.getter();
    (*(v3 + 8))(v6, v2);
    return v17;
  }
}

id sub_100744558(void *a1, uint64_t a2, void *a3)
{
  result = [a1 personID];
  if (result)
  {
    v6 = result;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    sub_100220844(a2, &v30);
    if (v31)
    {
      sub_100054B6C(&v30, v32);
      v10 = [a3 externalIdentifier];
      if (v10)
      {
        v11 = v10;
        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v13;

        v15 = v33;
        v16 = v34;
        sub_10000F61C(v32, v33);
        v17 = (*(v16 + 16))(v12, v14, v15, v16);
        v19 = v18;

        if (v19)
        {
          *&v30 = v7;
          *(&v30 + 1) = v9;

          v20._countAndFlagsBits = 124;
          v20._object = 0xE100000000000000;
          String.append(_:)(v20);

          v21._countAndFlagsBits = v17;
          v21._object = v19;
          String.append(_:)(v21);

          v22 = v30;
          sub_10000607C(v32);
          return v22;
        }
      }

      sub_10000607C(v32);
    }

    else
    {
      sub_1000050A4(&v30, &qword_100947E90, &qword_10079B250);
    }

    v23 = [a3 externalIdentifier];
    if (v23)
    {
      v24 = v23;
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      v32[0] = v7;
      v32[1] = v9;

      v28._countAndFlagsBits = 124;
      v28._object = 0xE100000000000000;
      String.append(_:)(v28);

      v29._countAndFlagsBits = v25;
      v29._object = v27;
      String.append(_:)(v29);

      return v32[0];
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_100744794()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtC7remindd21RDElementManualSortID_localUUID;
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RDElementManualSortID()
{
  result = qword_1009516E8;
  if (!qword_1009516E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10074489C()
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

uint64_t sub_100744950(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v5 = *(a2 + 24);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *(a1 + 16) == *(a2 + 16) && v4 == v5;
    if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (static UUID.== infix(_:_:)())
  {
    sub_100003C4C();
    v7 = *(a1 + OBJC_IVAR____TtC7remindd21RDElementManualSortID_accountID);
    v8 = *(a2 + OBJC_IVAR____TtC7remindd21RDElementManualSortID_accountID);
    return static NSObject.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t sub_1007449F4(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v43 - v11;
  __chkstk_darwin(v10);
  v14 = &v43 - v13;
  v15 = a1;
  v16 = [v15 identifier];
  if (v16)
  {
    v17 = v16;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = *(v5 + 32);
    v18(v14, v12, v4);
    v19 = [v15 account];

    if (v19)
    {
      v20 = [v19 remObjectID];
      if (v20)
      {
        v48 = v4;
        v50 = v20;
        v43 = v18;
        v44 = v9;
        v21 = swift_allocObject();
        *(v21 + 16) = v15;
        sub_100220844(a2, v51);
        v22 = swift_allocObject();
        v47 = a2;
        v23 = v22;
        *(v22 + 16) = v19;
        v24 = v51[1];
        *(v22 + 24) = v51[0];
        *(v22 + 40) = v24;
        *(v22 + 56) = v52;
        *(v22 + 64) = v15;
        v45 = v15;
        v46 = v19;
        v25 = [v46 accountTypeHost];
        v26 = swift_allocObject();
        *(v26 + 16) = sub_100744FA8;
        *(v26 + 24) = v23;
        v27 = swift_allocObject();
        *(v27 + 16) = sub_100744FA8;
        *(v27 + 24) = v23;
        v28 = swift_allocObject();
        *(v28 + 16) = sub_100744FA0;
        *(v28 + 24) = v21;
        swift_retain_n();
        v49 = v21;

        REMAccountTypeHost.switchByAccountType<A>(primaryCloudKitBlock:nonPrimaryCloudKitBlock:calDavBlock:exchangeBlock:localBlock:localInternalBlock:anyCloudKitBlock:anyCloudAccountBlock:)();
        sub_1000050A4(v47, &qword_100947E90, &qword_10079B250);

        v29 = *(&v51[0] + 1);
        v49 = *&v51[0];
        v30 = v44;
        v31 = v48;
        (*(v5 + 16))(v44, v14, v48);
        v32 = type metadata accessor for RDElementManualSortID();
        v33 = *(v32 + 48);
        v34 = *(v32 + 52);
        v35 = swift_allocObject();
        v36 = v43;
        v43((v35 + OBJC_IVAR____TtC7remindd21RDElementManualSortID_localUUID), v30, v31);
        swift_setDeallocating();
        (*(v5 + 8))(v35 + OBJC_IVAR____TtC7remindd21RDElementManualSortID_localUUID, v31);
        v37 = *(*v35 + 48);
        v38 = *(*v35 + 52);
        swift_deallocClassInstance();
        v36(v30, v14, v31);
        v39 = *(v32 + 48);
        v40 = *(v32 + 52);
        v41 = swift_allocObject();
        *(v41 + 16) = v49;
        *(v41 + 24) = v29;
        v36((v41 + OBJC_IVAR____TtC7remindd21RDElementManualSortID_localUUID), v30, v31);
        result = v41;
        *(v41 + OBJC_IVAR____TtC7remindd21RDElementManualSortID_accountID) = v50;
        return result;
      }
    }

    else
    {
    }

    sub_1000050A4(a2, &qword_100947E90, &qword_10079B250);
    (*(v5 + 8))(v14, v4);
  }

  else
  {

    sub_1000050A4(a2, &qword_100947E90, &qword_10079B250);
  }

  return 0;
}

uint64_t sub_100744FEC()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100951780);
  v1 = sub_100006654(v0, qword_100951780);
  if (qword_100936420 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

char *sub_1007450B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v65 = a3;
  v62 = type metadata accessor for RDStoreControllerNotificationCenter.Observer(0);
  v64 = *(v62 - 8);
  v10 = *(v64 + 64);
  v11 = __chkstk_darwin(v62);
  v63 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v66 = &v58 - v13;
  v14 = sub_1000F5104(&qword_100942CA0, &qword_1007A3810);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v67 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v58 - v18;
  *(v5 + 2) = _swiftEmptyArrayStorage;
  *(v5 + 3) = _swiftEmptyArrayStorage;
  v20 = OBJC_IVAR____TtC7remindd13RDAlarmEngine_storeControllerNotificationCenterToken;
  v21 = type metadata accessor for RDStoreControllerNotificationCenter.Token(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 56);
  v24 = v22 + 56;
  v23(&v5[v20], 1, 1, v21);
  v5[OBJC_IVAR____TtC7remindd13RDAlarmEngine_started] = 0;
  *(v5 + 4) = a1;
  *&v5[OBJC_IVAR____TtC7remindd13RDAlarmEngine_beforeFirstUnlockNotificationEngine] = a5;
  v25 = type metadata accessor for RDDaemonController();
  v26 = objc_allocWithZone(v25);
  v27 = &v26[OBJC_IVAR____TtC7remindd18RDDaemonController_xpcDaemon];
  v28 = v65;
  *v27 = a2;
  *(v27 + 1) = v28;
  v29 = &v26[OBJC_IVAR____TtC7remindd18RDDaemonController_clientIdentity];
  *v29 = xmmword_1007B7C30;
  *(v29 + 38) = 0;
  *(v29 + 3) = 0;
  *(v29 + 4) = 0;
  *(v29 + 2) = 0;
  *&v26[OBJC_IVAR____TtC7remindd18RDDaemonController_storeContainerToken] = 0;
  v68.receiver = v26;
  v68.super_class = v25;
  v30 = a1;
  swift_unknownObjectRetain();

  *&v5[OBJC_IVAR____TtC7remindd13RDAlarmEngine_daemonController] = objc_msgSendSuper2(&v68, "init");
  if (a4)
  {
    v58 = v24;
    v59 = v23;
    v60 = v21;
    v61 = a2;
    v65 = a5;
    *(v5 + 5) = a4;
    sub_1000F5104(&unk_100936FD0, &unk_100795D40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100791340;
    v32 = objc_opt_self();

    v33 = [v32 cdEntityName];
    v34 = v30;
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    *(inited + 32) = v35;
    *(inited + 40) = v37;
    v38 = [objc_opt_self() cdEntityName];
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    *(inited + 48) = v39;
    *(inited + 56) = v41;
    v42 = sub_10038D894(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    v43 = swift_allocObject();
    swift_weakInit();

    v44 = v67;
    UUID.init()();
    v45 = v44;
    v46 = v66;
    sub_100026CD8(v45, v66, type metadata accessor for RDStoreControllerNotificationCenter.Token);
    v47 = v62;
    *(v46 + *(v62 + 20)) = v42;
    *(v46 + *(v47 + 24)) = v34;
    v48 = (v46 + *(v47 + 28));
    *v48 = sub_100749180;
    v48[1] = v43;
    v49 = *(a4 + 40);

    os_unfair_lock_lock(v49);
    v50 = v46;
    v51 = v63;
    sub_100026CD8(v50, v63, type metadata accessor for RDStoreControllerNotificationCenter.Observer);
    swift_beginAccess();
    v52 = *(a4 + 48);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a4 + 48) = v52;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v52 = sub_100365714(0, v52[2] + 1, 1, v52);
      *(a4 + 48) = v52;
    }

    v55 = v52[2];
    v54 = v52[3];
    if (v55 >= v54 >> 1)
    {
      v52 = sub_100365714(v54 > 1, v55 + 1, 1, v52);
    }

    v52[2] = v55 + 1;
    sub_10035083C(v51, v52 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v55, type metadata accessor for RDStoreControllerNotificationCenter.Observer);
    *(a4 + 48) = v52;
    swift_endAccess();
    os_unfair_lock_unlock(v49);

    swift_unknownObjectRelease();

    sub_1003508A4(v66, type metadata accessor for RDStoreControllerNotificationCenter.Observer);

    v19 = v67;
    v59(v67, 0, 1, v60);
  }

  else
  {

    swift_unknownObjectRelease();

    *(v5 + 5) = 0;
    v23(v19, 1, 1, v21);
  }

  v56 = OBJC_IVAR____TtC7remindd13RDAlarmEngine_storeControllerNotificationCenterToken;
  swift_beginAccess();
  sub_10014D740(v19, &v5[v56]);
  swift_endAccess();
  return v5;
}

uint64_t sub_1007456A4()
{
  if (qword_100936828 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006654(v0, qword_100951780);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "os_transaction INIT {name: com.apple.remindd.RDAlarmEngine.alarmDatabaseDidChange}", v3, 2u);
  }

  os_transaction_create();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100745850();
  }

  else
  {
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Received store changes with deallocated alarm engine", v6, 2u);
    }
  }

  sub_100749188();
  return swift_unknownObjectRelease();
}

void sub_100745850()
{
  v1 = v0;
  if (qword_100936828 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006654(v2, qword_100951780);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Triggered alarmEngine database did change. Notifying producers", v5, 2u);
  }

  v6 = *(v1 + 16);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v6 + 32;

    do
    {
      sub_10000A87C(v8, v11);
      v9 = v12;
      v10 = v13;
      sub_10000F61C(v11, v12);
      (*(v10 + 32))(v9, v10);
      sub_10000607C(v11);
      v8 += 40;
      --v7;
    }

    while (v7);
  }
}

uint64_t sub_1007459AC()
{
  v1 = sub_1000F5104(&qword_100942CA0, &qword_1007A3810);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v21[-v3];
  v5 = type metadata accessor for RDStoreControllerNotificationCenter.Token(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v0 + 40);
  if (!v10)
  {
    goto LABEL_6;
  }

  v11 = OBJC_IVAR____TtC7remindd13RDAlarmEngine_storeControllerNotificationCenterToken;
  swift_beginAccess();
  sub_10014D7CC(v0 + v11, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1000050A4(v4, &qword_100942CA0, &qword_1007A3810);
LABEL_6:
    v16 = *(v0 + 16);

    v17 = *(v0 + 24);

    v18 = *(v0 + 40);

    sub_1000050A4(v0 + OBJC_IVAR____TtC7remindd13RDAlarmEngine_storeControllerNotificationCenterToken, &qword_100942CA0, &qword_1007A3810);
    v19 = *(v0 + OBJC_IVAR____TtC7remindd13RDAlarmEngine_beforeFirstUnlockNotificationEngine);

    return v0;
  }

  sub_10035083C(v4, v9, type metadata accessor for RDStoreControllerNotificationCenter.Token);
  v12 = *(v10 + 40);

  os_unfair_lock_lock(v12);
  __chkstk_darwin(v13);
  *&v21[-16] = v9;
  swift_beginAccess();
  v14 = sub_1002601AC(sub_10014D8A4, &v21[-32]);
  v15 = *(*(v10 + 48) + 16);
  if (v15 >= v14)
  {
    sub_100260C60(v14, v15);
    swift_endAccess();
    os_unfair_lock_unlock(v12);

    sub_1003508A4(v9, type metadata accessor for RDStoreControllerNotificationCenter.Token);
    goto LABEL_6;
  }

  __break(1u);
  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t sub_100745C7C()
{
  sub_1007459AC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RDAlarmEngine()
{
  result = qword_1009517C8;
  if (!qword_1009517C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100745D28()
{
  sub_1001490E0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100745DF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (&v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(v3 + OBJC_IVAR____TtC7remindd13RDAlarmEngine_started))
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  *(v3 + OBJC_IVAR____TtC7remindd13RDAlarmEngine_started) = 1;
  v11 = v3[4];
  *v10 = v11;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v10, v6);
  if (v11)
  {
    v13 = v3[2];
    v3[2] = a1;

    v14 = v3[3];
    v3[3] = a2;

    if (qword_100936828 == -1)
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
  v15 = type metadata accessor for Logger();
  sub_100006654(v15, qword_100951780);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v16, v17))
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v25 = *(a1 + 16);
    if (!v25)
    {
      goto LABEL_10;
    }

LABEL_8:
    v26 = a1 + 32;
    v27 = v25;
    do
    {
      sub_10000A87C(v26, &v38);
      v28 = v40;
      v29 = v41;
      sub_10000F61C(&v38, v40);
      (*(v29 + 24))(v28, v29);
      sub_10000607C(&v38);
      v26 += 40;
      --v27;
    }

    while (v27);
    goto LABEL_10;
  }

  v18 = swift_slowAlloc();
  v19 = swift_slowAlloc();
  *v18 = 136315650;
  v37 = v19;
  v38 = 60;
  v39 = 0xE100000000000000;
  v20._countAndFlagsBits = sub_100597C80(v3);
  String.append(_:)(v20);

  v21._countAndFlagsBits = 62;
  v21._object = 0xE100000000000000;
  String.append(_:)(v21);
  v22 = sub_10000668C(v38, v39, &v37);

  *(v18 + 4) = v22;
  *(v18 + 12) = 2048;
  v23 = *(a1 + 16);

  *(v18 + 14) = v23;

  *(v18 + 22) = 2048;
  v24 = *(a2 + 16);

  *(v18 + 24) = v24;

  _os_log_impl(&_mh_execute_header, v16, v17, "Starting alarmEngine {engine: %s, producers.count: %ld, consumers.count: %ld}", v18, 0x20u);
  sub_10000607C(v19);

  v25 = *(a1 + 16);
  if (v25)
  {
    goto LABEL_8;
  }

LABEL_10:
  swift_bridgeObjectRetain_n();

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 136315394;
    v37 = v33;
    v38 = 60;
    v39 = 0xE100000000000000;
    v34._countAndFlagsBits = sub_100597C80(v3);
    String.append(_:)(v34);

    v35._countAndFlagsBits = 62;
    v35._object = 0xE100000000000000;
    String.append(_:)(v35);
    v36 = sub_10000668C(v38, v39, &v37);

    *(v32 + 4) = v36;
    *(v32 + 12) = 2048;

    *(v32 + 14) = v25;

    _os_log_impl(&_mh_execute_header, v30, v31, "Finished starting alarmEngine {engine: %s, producers.count: %ld}", v32, 0x16u);
    sub_10000607C(v33);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }
}

void sub_100746328(uint64_t a1, void *a2, void *a3, const char *a4, const char *a5)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100936828 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100006654(v7, qword_100951780);
    swift_errorRetain();
    v8 = a2;
    v9 = a3;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v12 = 136315650;
      swift_errorRetain();
      sub_1000F5104(&unk_1009399E0, &qword_100795D00);
      v14 = String.init<A>(describing:)();
      v16 = sub_10000668C(v14, v15, &v39);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2114;
      *(v12 + 14) = v8;
      *v13 = v8;
      *(v12 + 22) = 2082;
      v17 = v8;
      v18 = [v9 actionIdentifier];
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v22 = sub_10000668C(v19, v21, &v39);

      *(v12 + 24) = v22;
      _os_log_impl(&_mh_execute_header, v10, v11, a4, v12, 0x20u);
      sub_1000050A4(v13, &unk_100938E70, &unk_100797230);

      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {
    if (qword_100936828 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100006654(v24, qword_100951780);
    v25 = a2;
    v26 = a3;
    formata = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(formata, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v39 = v30;
      *v28 = 136446466;
      v31 = [v26 actionIdentifier];
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;

      v35 = sub_10000668C(v32, v34, &v39);

      *(v28 + 4) = v35;
      *(v28 + 12) = 2112;
      *(v28 + 14) = v25;
      *v29 = v25;
      v36 = v25;
      _os_log_impl(&_mh_execute_header, formata, v27, a5, v28, 0x16u);
      sub_1000050A4(v29, &unk_100938E70, &unk_100797230);

      sub_10000607C(v30);
    }

    else
    {
    }
  }
}

void *sub_1007467B8(void *a1)
{
  v2 = [a1 trigger];
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            if (qword_100936828 != -1)
            {
              swift_once();
            }

            v4 = type metadata accessor for Logger();
            sub_100006654(v4, qword_100951780);
            v5 = Logger.logObject.getter();
            v6 = static os_log_type_t.fault.getter();
            if (os_log_type_enabled(v5, v6))
            {
              v7 = swift_slowAlloc();
              *v7 = 0;
              _os_log_impl(&_mh_execute_header, v5, v6, "This is an incorrect use of API. peopleInteraction origin takes an additional parameter that cannot be deduced solely by the REMAlarm. You need to create the origin enum manually", v7, 2u);
            }

            v2 = v5;
          }

          else
          {
            objc_opt_self();
            v8 = swift_dynamicCastObjCClass();

            if (v8)
            {
              return a1;
            }

            if (qword_100936828 != -1)
            {
              swift_once();
            }

            v9 = type metadata accessor for Logger();
            sub_100006654(v9, qword_100951780);
            v10 = a1;
            v2 = Logger.logObject.getter();
            v11 = static os_log_type_t.fault.getter();

            if (os_log_type_enabled(v2, v11))
            {
              v12 = swift_slowAlloc();
              v13 = swift_slowAlloc();
              *v12 = 138412290;
              v14 = [v10 trigger];
              *(v12 + 4) = v14;
              *v13 = v14;
              _os_log_impl(&_mh_execute_header, v2, v11, "Unable to get infer RDProducerAlarmTrigger enum from trigger {trigger: %@}", v12, 0xCu);
              sub_1000050A4(v13, &unk_100938E70, &unk_100797230);
            }
          }
        }
      }
    }
  }

  return a1;
}

uint64_t sub_100746AC4(void *a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v254 = a5;
  v255 = a4;
  v243 = a3;
  v256 = a1;
  v257 = a2;
  v252 = type metadata accessor for DispatchWorkItemFlags();
  v251 = *(v252 - 8);
  v5 = *(v251 + 64);
  __chkstk_darwin(v252);
  v249 = &v227 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v250 = type metadata accessor for DispatchQoS();
  v248 = *(v250 - 8);
  v7 = *(v248 + 64);
  __chkstk_darwin(v250);
  v247 = &v227 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v233 = type metadata accessor for Date();
  v232 = *(v233 - 8);
  v9 = *(v232 + 64);
  __chkstk_darwin(v233);
  v227 = &v227 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v230 = type metadata accessor for REMAnalyticsEvent();
  v229 = *(v230 - 8);
  v11 = *(v229 + 64);
  __chkstk_darwin(v230);
  v228 = &v227 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v244 = type metadata accessor for RDUserNotificationAction();
  v242 = *(v244 - 8);
  v13 = *(v242 + 64);
  __chkstk_darwin(v244);
  v231 = (&v227 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v234 = &v227 - v16;
  __chkstk_darwin(v17);
  v240 = &v227 - v18;
  __chkstk_darwin(v19);
  v239 = &v227 - v20;
  v21 = type metadata accessor for REMNotificationIdentifier();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v237 = (&v227 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v25);
  v245 = &v227 - v26;
  __chkstk_darwin(v27);
  v236 = &v227 - v28;
  __chkstk_darwin(v29);
  v241 = &v227 - v30;
  __chkstk_darwin(v31);
  v246 = &v227 - v32;
  __chkstk_darwin(v33);
  v35 = (&v227 - v34);
  __chkstk_darwin(v36);
  v38 = &v227 - v37;
  v39 = type metadata accessor for RDUserNotificationType();
  v40 = *(v39 - 8);
  v41 = *(v40 + 8);
  __chkstk_darwin(v39);
  v238 = (&v227 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v43);
  v45 = &v227 - v44;
  v47 = __chkstk_darwin(v46);
  v49 = &v227 - v48;
  v50 = *(v40 + 2);
  (v50)(&v227 - v48, v257, v39, v47);
  v51 = (*(v40 + 11))(v49, v39);
  v253 = v22;
  if (v51 == enum case for RDUserNotificationType.reminderAlarm(_:))
  {
    (*(v40 + 12))(v49, v39);
    (*(v22 + 32))(v38, v49, v21);
    v52 = v22;
    if (qword_100936828 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    v54 = sub_100006654(v53, qword_100951780);
    v55 = *(v22 + 16);
    v55(v35, v38, v21);
    v56 = v21;
    v57 = v256;
    v257 = v54;
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.default.getter();

    v60 = os_log_type_enabled(v58, v59);
    v235 = v38;
    v238 = v57;
    v241 = v55;
    if (v60)
    {
      v61 = swift_slowAlloc();
      LODWORD(v236) = v59;
      v62 = v61;
      v237 = swift_slowAlloc();
      aBlock = v237;
      *v62 = 136446466;
      v63 = [v57 actionIdentifier];
      v64 = v52;
      v65 = v63;
      v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v68 = v67;

      v69 = sub_10000668C(v66, v68, &aBlock);

      *(v62 + 4) = v69;
      *(v62 + 12) = 2082;
      v55(v246, v35, v56);
      v70 = String.init<A>(describing:)();
      v72 = v71;
      v256 = *(v64 + 8);
      (v256)(v35, v56);
      v73 = sub_10000668C(v70, v72, &aBlock);

      *(v62 + 14) = v73;
      _os_log_impl(&_mh_execute_header, v58, v236, "ReminderAlarm: Processing notification response {actionIdentifier: %{public}s, notificationIdentifier: %{public}s}", v62, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v256 = *(v52 + 8);
      (v256)(v35, v21);
    }

    v39 = v258;
    v108 = [objc_allocWithZone(REMStore) initWithDaemonController:*(v258 + OBJC_IVAR____TtC7remindd13RDAlarmEngine_daemonController)];
    v109 = REMStore.fetchReminder(notificationIdentifier:includingDueDateDeltaAlerts:)();
    v245 = v56;
    v110 = v109;
    v111 = [v109 objectID];
    v112 = objc_allocWithZone(REMSaveRequest);
    v237 = v108;
    v236 = [v112 initWithStore:v108];
    v241 = v110;
    v246 = [v236 updateReminder:v110];
    v50 = v242;
    v40 = *(v242 + 16);
    v38 = v239;
    v22 = v244;
    (v40)(v239, v243, v244);
    v45 = v111;
    v35 = Logger.logObject.getter();
    v113 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v35, v113))
    {
      v115 = swift_slowAlloc();
      v234 = v40;
      v116 = v115;
      v117 = v38;
      v118 = swift_slowAlloc();
      v231 = swift_slowAlloc();
      aBlock = v231;
      *v116 = 138543618;
      *(v116 + 4) = v45;
      *v118 = v45;
      *(v116 + 12) = 2082;
      v119 = v45;
      v120 = RDUserNotificationAction.rawValue.getter();
      v122 = v121;
      (*(v50 + 8))(v117, v244);
      v123 = sub_10000668C(v120, v122, &aBlock);

      *(v116 + 14) = v123;
      _os_log_impl(&_mh_execute_header, v35, v113, "ReminderAlarm: Handle notification action for reminder {reminderID: %{public}@, action: %{public}s}", v116, 0x16u);
      sub_1000050A4(v118, &unk_100938E70, &unk_100797230);

      sub_10000607C(v231);
      v22 = v244;

      v40 = v234;
      v39 = v258;

LABEL_31:
      v124 = v240;
      (v40)(v240, v243, v22);
      v125 = (*(v50 + 88))(v124, v22);
      v126 = v241;
      if (v125 == enum case for RDUserNotificationAction.defaultDismiss(_:))
      {
        [v246 snoozeForever];
        v127 = v235;
LABEL_33:
        v128 = *(v39 + 32);
        v129 = swift_allocObject();
        v130 = v238;
        *(v129 + 16) = v45;
        *(v129 + 24) = v130;
        v263 = sub_100749154;
        v264 = v129;
        aBlock = _NSConcreteStackBlock;
        v260 = 1107296256;
        v261 = sub_100042968;
        v262 = &unk_1008FE080;
        v131 = _Block_copy(&aBlock);
        v132 = v130;
        v133 = v45;

        v134 = v236;
        [v236 saveWithQueue:v128 completion:v131];

        _Block_release(v131);
LABEL_34:
        (v256)(v127, v245);
        goto LABEL_37;
      }

      v127 = v235;
      if (v125 == enum case for RDUserNotificationAction.debugDismiss(_:))
      {
        (v256)(v235, v245);

        goto LABEL_37;
      }

      if (v125 == enum case for RDUserNotificationAction.markAsCompleted(_:))
      {
        type metadata accessor for REMAnalyticsManager();
        static REMAnalyticsManager.shared.getter();
        v147 = sub_1000F5104(&qword_1009511D8, &qword_1007B7440);
        v148 = v228;
        v149 = &v228[v147[12]];
        v150 = v45;
        v151 = v147[16];
        v152 = v39;
        v153 = &v228[v147[20]];
        v154 = enum case for REMUserOperation.markReminderCompletedNotification(_:);
        v155 = type metadata accessor for REMUserOperation();
        (*(*(v155 - 8) + 104))(v148, v154, v155);
        *v149 = 0;
        *(v149 + 1) = 0;
        v156 = &v148[v151];
        v45 = v150;
        (*(v232 + 56))(v156, 1, 1, v233);
        *v153 = 0;
        *(v153 + 1) = 0;
        v39 = v152;
        v127 = v235;
        v157 = v229;
        v158 = v230;
        (*(v229 + 104))(v148, enum case for REMAnalyticsEvent.userOperation(_:), v230);
        REMAnalyticsManager.post(event:)();

        v126 = v241;
        (*(v157 + 8))(v148, v158);
        [v246 setCompleted:1];
        goto LABEL_33;
      }

      if (v125 == enum case for RDUserNotificationAction.snoozeForOneHour(_:))
      {
        [v246 snoozeFromNowForTimeInterval:3600.0];
        goto LABEL_33;
      }

      if (v125 == enum case for RDUserNotificationAction.snoozeForOneDay(_:))
      {
        [v246 snoozeFromDueDateForFutureIntegralMultipleOfTimeInterval:86400.0];
        goto LABEL_33;
      }

      if (v125 == enum case for RDUserNotificationAction.snoozeToNextThirds(_:))
      {
        [v246 snoozeToNextThirds];
        goto LABEL_33;
      }

      if (v125 == enum case for RDUserNotificationAction.snoozeToNextWeekend(_:))
      {
        [v246 snoozeFromDueDateForFutureIntegralMultipleOfTimeInterval:604800.0];
        goto LABEL_33;
      }

      if (v125 == enum case for RDUserNotificationAction.addToReminders(_:))
      {
        v222 = Logger.logObject.getter();
        v223 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v222, v223))
        {
          v224 = swift_slowAlloc();
          *v224 = 0;
          v225 = "ReminderAlarm: Unexpected .addToReminders action for notification type .reminderAlarm";
LABEL_95:
          _os_log_impl(&_mh_execute_header, v222, v223, v225, v224, 2u);

          v226 = &v265;
LABEL_97:

          goto LABEL_34;
        }

        goto LABEL_96;
      }

      if (v125 == enum case for RDUserNotificationAction.viewAssignmentInList(_:))
      {
        v222 = Logger.logObject.getter();
        v223 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v222, v223))
        {
          v224 = swift_slowAlloc();
          *v224 = 0;
          v225 = "ReminderAlarm: Unexpected .viewAssignmentInList action for notification type .reminderAlarm";
          goto LABEL_95;
        }

LABEL_96:

        v226 = &v260;
        goto LABEL_97;
      }

      if (v125 == enum case for RDUserNotificationAction.declineAssignment(_:))
      {
        v222 = Logger.logObject.getter();
        v223 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v222, v223))
        {
          v224 = swift_slowAlloc();
          *v224 = 0;
          v225 = "ReminderAlarm: Unexpected .declineAssignment action for notification type .reminderAlarm";
          goto LABEL_95;
        }

        goto LABEL_96;
      }

      if (v125 == enum case for RDUserNotificationAction.viewRemindersInList(_:))
      {
        v222 = Logger.logObject.getter();
        v223 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v222, v223))
        {
          v224 = swift_slowAlloc();
          *v224 = 0;
          v225 = "ReminderAlarm: Unexpected .viewRemindersInList action for notification type .remindersAlarm";
          goto LABEL_95;
        }

        goto LABEL_96;
      }

LABEL_99:
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

LABEL_30:

    (*(v50 + 8))(v38, v22);
    goto LABEL_31;
  }

  v245 = v21;
  if (v51 == enum case for RDUserNotificationType.todayNotificationForSingleReminder(_:) || v51 == enum case for RDUserNotificationType.caldavSharedList(_:) || v51 == enum case for RDUserNotificationType.assignmentNotification(_:) || v51 == enum case for RDUserNotificationType.sharedListAddedReminderNotification(_:))
  {
    (*(v40 + 1))(v49, v39);
LABEL_16:
    if (qword_100936828 != -1)
    {
      swift_once();
    }

    v97 = type metadata accessor for Logger();
    sub_100006654(v97, qword_100951780);
    (v50)(v45, v257, v39);
    v98 = v256;
    v99 = Logger.logObject.getter();
    v100 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      v256 = swift_slowAlloc();
      v257 = swift_slowAlloc();
      aBlock = v257;
      *v101 = 136315394;
      (v50)(v238, v45, v39);
      v102 = String.init<A>(describing:)();
      v104 = v103;
      (*(v40 + 1))(v45, v39);
      v105 = sub_10000668C(v102, v104, &aBlock);

      *(v101 + 4) = v105;
      *(v101 + 12) = 2112;
      *(v101 + 14) = v98;
      v106 = v256;
      *v256 = v98;
      v107 = v98;
      _os_log_impl(&_mh_execute_header, v99, v100, "AlarmEngine didn't expect to receive actions of this type. {type: %s, response: %@}", v101, 0x16u);
      sub_1000050A4(v106, &unk_100938E70, &unk_100797230);

      sub_10000607C(v257);
    }

    else
    {

      (*(v40 + 1))(v45, v39);
    }

    goto LABEL_23;
  }

  if (v51 != enum case for RDUserNotificationType.dueDateDeltaAlarm(_:))
  {
    if (v51 != enum case for RDUserNotificationType.todayNotification(_:) && v51 != enum case for RDUserNotificationType.todayNotificationBadge(_:) && v51 != enum case for RDUserNotificationType.beforeFirstUnlock(_:))
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      goto LABEL_30;
    }

    goto LABEL_16;
  }

  (*(v40 + 12))(v49, v39);
  v74 = v253;
  v75 = v241;
  v76 = v245;
  (*(v253 + 32))(v241, v49, v245);
  if (qword_100936828 != -1)
  {
    swift_once();
  }

  v77 = type metadata accessor for Logger();
  v78 = sub_100006654(v77, qword_100951780);
  v79 = *(v74 + 16);
  v80 = v236;
  v79(v236, v75, v76);
  v81 = v256;
  v82 = Logger.logObject.getter();
  v83 = static os_log_type_t.default.getter();

  v84 = os_log_type_enabled(v82, v83);
  v239 = v81;
  v240 = v79;
  if (v84)
  {
    v85 = swift_slowAlloc();
    v238 = swift_slowAlloc();
    aBlock = v238;
    *v85 = 136446466;
    v86 = [v81 actionIdentifier];
    v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v256 = v78;
    v88 = v87;
    LODWORD(v235) = v83;
    v90 = v89;

    v91 = sub_10000668C(v88, v90, &aBlock);
    v92 = v241;

    *(v85 + 4) = v91;
    *(v85 + 12) = 2082;
    v79(v246, v80, v76);
    v93 = String.init<A>(describing:)();
    v95 = v94;
    v257 = *(v74 + 8);
    (v257)(v80, v76);
    v96 = sub_10000668C(v93, v95, &aBlock);
    v78 = v256;

    *(v85 + 14) = v96;
    _os_log_impl(&_mh_execute_header, v82, v235, "DueDateDeltaAlarm: Processing notification response {actionIdentifier: %{public}s, notificationIdentifier: %{public}s}", v85, 0x16u);
    swift_arrayDestroy();

    v75 = v92;
  }

  else
  {

    v257 = *(v74 + 8);
    (v257)(v80, v76);
  }

  v146 = [objc_allocWithZone(REMStore) initWithDaemonController:*(v258 + OBJC_IVAR____TtC7remindd13RDAlarmEngine_daemonController)];
  v159 = REMStore.fetchReminder(notificationIdentifier:includingDueDateDeltaAlerts:)();
  v160 = v75;
  v240 = [v159 objectID];
  v161 = objc_allocWithZone(REMSaveRequest);
  v246 = v146;
  v162 = [v161 initWithStore:v146];
  v163 = [v162 updateReminder:v159];
  v164 = v242;
  v165 = *(v242 + 16);
  v166 = v234;
  v167 = v244;
  v165(v234, v243, v244);
  v168 = (*(v164 + 88))(v166, v167);
  if (v168 != enum case for RDUserNotificationAction.defaultDismiss(_:))
  {
    v238 = v159;
    v256 = v78;
    v179 = v258;
    if (v168 != enum case for RDUserNotificationAction.debugDismiss(_:))
    {
      if (v168 == enum case for RDUserNotificationAction.markAsCompleted(_:))
      {
        type metadata accessor for REMAnalyticsManager();
        static REMAnalyticsManager.shared.getter();
        v180 = sub_1000F5104(&qword_1009511D8, &qword_1007B7440);
        v181 = v180[12];
        v182 = v179;
        v236 = v163;
        v183 = v162;
        v184 = v228;
        v185 = &v228[v181];
        v186 = v180[16];
        v187 = &v228[v180[20]];
        v188 = enum case for REMUserOperation.markReminderCompletedNotification(_:);
        v189 = type metadata accessor for REMUserOperation();
        (*(*(v189 - 8) + 104))(v184, v188, v189);
        *v185 = 0;
        *(v185 + 1) = 0;
        v179 = v182;
        (*(v232 + 56))(&v184[v186], 1, 1, v233);
        *v187 = 0;
        *(v187 + 1) = 0;
        v160 = v241;
        v190 = v229;
        v191 = v230;
        (*(v229 + 104))(v184, enum case for REMAnalyticsEvent.userOperation(_:), v230);
        REMAnalyticsManager.post(event:)();

        v192 = v184;
        v162 = v183;
        v163 = v236;
        (*(v190 + 8))(v192, v191);
        [v163 setCompleted:1];
      }

      else
      {
        if (v168 != enum case for RDUserNotificationAction.snoozeForOneHour(_:) && v168 != enum case for RDUserNotificationAction.snoozeForOneDay(_:) && v168 != enum case for RDUserNotificationAction.snoozeToNextThirds(_:) && v168 != enum case for RDUserNotificationAction.snoozeToNextWeekend(_:) && v168 != enum case for RDUserNotificationAction.addToReminders(_:) && v168 != enum case for RDUserNotificationAction.viewAssignmentInList(_:) && v168 != enum case for RDUserNotificationAction.declineAssignment(_:) && v168 != enum case for RDUserNotificationAction.viewRemindersInList(_:))
        {
          _diagnoseUnexpectedEnumCase<A>(type:)();
          __break(1u);
          goto LABEL_99;
        }

        v193 = Logger.logObject.getter();
        v194 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v193, v194))
        {
          v195 = swift_slowAlloc();
          *v195 = 0;
          _os_log_impl(&_mh_execute_header, v193, v194, "DueDateDeltaAlarm: Unexpected action for notification type .dueDateDeltaAlarm", v195, 2u);
        }
      }
    }

    goto LABEL_72;
  }

  v169 = [v163 dueDateDeltaAlertContext];
  if (!v169)
  {
LABEL_77:
    v219 = Logger.logObject.getter();
    v220 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v219, v220))
    {
      v221 = swift_slowAlloc();
      *v221 = 0;
      _os_log_impl(&_mh_execute_header, v219, v220, "DueDateDeltaAlarm: Unable to get early alert context to set ackDate.", v221, 2u);
    }

    else
    {
    }

    return (v257)(v160, v245);
  }

  v170 = v169;
  v238 = v159;
  v171 = v163;
  v172 = [v163 fetchedCurrentDueDateDeltaAlert];
  v173 = v258;
  if (!v172)
  {

    v159 = v238;
    v163 = v171;
    goto LABEL_77;
  }

  v174 = v172;
  v256 = v78;
  v175 = [v170 updateDueDateDeltaAlert:v172];
  v176 = v227;
  Date.init()();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v232 + 8))(v176, v233);
  v178 = [v175 setAcknowledgedDate:isa];

  v160 = v241;
  v179 = v173;
  v163 = v171;
LABEL_72:
  v237 = v162;
  v196 = *(v179 + 32);
  v197 = swift_allocObject();
  v198 = v240;
  v199 = v239;
  *(v197 + 16) = v240;
  *(v197 + 24) = v199;
  v263 = sub_100749128;
  v264 = v197;
  aBlock = _NSConcreteStackBlock;
  v260 = 1107296256;
  v261 = sub_100042968;
  v262 = &unk_1008FE030;
  v200 = _Block_copy(&aBlock);
  v201 = v199;
  v202 = v198;

  [v162 saveWithQueue:v196 completion:v200];
  _Block_release(v200);
  v203 = v231;
  v204 = v244;
  v165(v231, v243, v244);
  v205 = v202;
  v206 = Logger.logObject.getter();
  v207 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v206, v207))
  {
    v208 = swift_slowAlloc();
    v236 = v163;
    v209 = v203;
    v210 = v208;
    v211 = swift_slowAlloc();
    v212 = swift_slowAlloc();
    aBlock = v212;
    *v210 = 138543618;
    *(v210 + 4) = v205;
    *v211 = v205;
    *(v210 + 12) = 2082;
    v213 = v205;
    v214 = RDUserNotificationAction.rawValue.getter();
    v216 = v215;
    (*(v242 + 8))(v209, v204);
    v217 = sub_10000668C(v214, v216, &aBlock);

    *(v210 + 14) = v217;
    _os_log_impl(&_mh_execute_header, v206, v207, "DueDateDeltaAlarm: Handle notification action for reminder {reminderID: %{public}@, action: %{public}s}", v210, 0x16u);
    sub_1000050A4(v211, &unk_100938E70, &unk_100797230);

    sub_10000607C(v212);

    v218 = v241;
  }

  else
  {

    (*(v242 + 8))(v203, v204);
    v218 = v160;
  }

  (v257)(v218, v245);
LABEL_23:
  v39 = v258;
LABEL_37:
  v135 = *(v39 + OBJC_IVAR____TtC7remindd13RDAlarmEngine_beforeFirstUnlockNotificationEngine);
  if (v135)
  {
    sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);

    v136 = static OS_dispatch_queue.main.getter();
    v263 = sub_100749124;
    v264 = v135;
    aBlock = _NSConcreteStackBlock;
    v260 = 1107296256;
    v261 = sub_100019200;
    v262 = &unk_1008FDFE0;
    v137 = _Block_copy(&aBlock);

    v138 = v247;
    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_10000AB38();
    sub_1000F5104(&unk_100939E50, &unk_100791AD0);
    sub_10000AB90();
    v139 = v249;
    v140 = v252;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v137);

    (*(v251 + 8))(v139, v140);
    (*(v248 + 8))(v138, v250);
  }

  if (qword_100936828 != -1)
  {
    swift_once();
  }

  v141 = type metadata accessor for Logger();
  sub_100006654(v141, qword_100951780);
  v142 = Logger.logObject.getter();
  v143 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v142, v143))
  {
    v144 = swift_slowAlloc();
    *v144 = 0;
    _os_log_impl(&_mh_execute_header, v142, v143, "Completing action handler by calling completionHandler now.", v144, 2u);
  }

  return v255();
}

void sub_100749188()
{
  if (qword_100936828 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006654(v0, qword_100951780);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "os_transaction RELEASE {name: com.apple.remindd.RDAlarmEngine.alarmDatabaseDidChange}", v2, 2u);
  }
}

uint64_t initializeWithCopy for RDProducerAlarmOrigin(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  sub_1001A3944(*a2, v4, v5, v6);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  return a1;
}

uint64_t assignWithCopy for RDProducerAlarmOrigin(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  sub_1001A3944(*a2, v4, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  v10 = *(a1 + 24);
  *(a1 + 24) = v6;
  sub_1001A39AC(v7, v8, v9, v10);
  return a1;
}

__n128 initializeWithTake for RDProducerAlarmOrigin(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t assignWithTake for RDProducerAlarmOrigin(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *a1;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  v8 = *(a1 + 24);
  *(a1 + 24) = v4;
  sub_1001A39AC(v5, v7, v6, v8);
  return a1;
}

uint64_t getEnumTagSinglePayload for RDProducerAlarmOrigin(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 25))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 24);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for RDProducerAlarmOrigin(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

void destroy for RDProducerAlarm(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);

  sub_1001A39AC(v2, v3, v4, v5);
}

uint64_t initializeWithCopy for RDProducerAlarm(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  *a1 = *a2;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = v4;
  sub_1001A3944(v5, v6, v7, v8);
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 34) = *(a2 + 34);
  return a1;
}

uint64_t assignWithCopy for RDProducerAlarm(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  sub_1001A3944(v7, v8, v9, v10);
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  v14 = *(a1 + 32);
  *(a1 + 32) = v10;
  sub_1001A39AC(v11, v12, v13, v14);
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 34) = *(a2 + 34);
  return a1;
}

__n128 initializeWithTake for RDProducerAlarm(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t assignWithTake for RDProducerAlarm(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = v5;
  v10 = *(a1 + 32);
  *(a1 + 32) = v6;
  sub_1001A39AC(v7, v8, v9, v10);
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 34) = *(a2 + 34);
  return a1;
}

uint64_t getEnumTagSinglePayload for RDProducerAlarm(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 35))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for RDProducerAlarm(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 34) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 35) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 35) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1007496F8()
{
  result = qword_100951888;
  if (!qword_100951888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100951888);
  }

  return result;
}

unint64_t sub_100749760()
{
  result = qword_100951890;
  if (!qword_100951890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100951890);
  }

  return result;
}

uint64_t sub_1007497C4()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100951898);
  v1 = sub_100006654(v0, qword_100951898);
  if (qword_100936420 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

double sub_10074988C(uint64_t a1, double a2, double a3, double a4)
{
  v4 = a2;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  if (v5 < 5)
  {
LABEL_2:
    v7 = 0xE700000000000000;
    v8 = 0x746C7561666544;
    goto LABEL_13;
  }

  v9 = a2 + 1.0;
  if (v6 <= 0.0 || v6 > v9)
  {
    if (v9 >= v6 || v6 > v4 + v4 + 1.0)
    {
      goto LABEL_2;
    }

    v7 = 0xE600000000000000;
    v8 = 0x6D756964654DLL;
    v4 = a4;
  }

  else
  {
    v7 = 0xE400000000000000;
    v8 = 1751607624;
    v4 = a3;
  }

LABEL_13:
  if (qword_100936830 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100006654(v12, qword_100951898);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v19 = v16;
    *v15 = 136315906;
    v17 = sub_10000668C(v8, v7, &v19);

    *(v15 + 4) = v17;
    *(v15 + 12) = 2048;
    *(v15 + 14) = v4;
    *(v15 + 22) = 2048;
    *(v15 + 24) = v6;
    *(v15 + 32) = 2048;
    *(v15 + 34) = v5;
    _os_log_impl(&_mh_execute_header, v13, v14, "RDAlarmEngine:debouncePolicy: DB load is '%s', debounce interval to use: %f s, stats: {average: %f, #sample: %ld}", v15, 0x2Au);
    sub_10000607C(v16);
  }

  else
  {
  }

  return v4;
}

void sub_100749A90(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7)
{
  sub_1000F5104(&qword_1009518B0, &qword_1007B7E50);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100792CF0;
  *(v13 + 56) = type metadata accessor for RDTimeAlarmProducer();
  *(v13 + 64) = sub_100749DCC(&qword_10093FEC0, type metadata accessor for RDTimeAlarmProducer);
  *(v13 + 32) = a2;
  *(v13 + 96) = type metadata accessor for RDDueDateDeltaAlarmProducer();
  *(v13 + 104) = sub_100749DCC(&qword_10093FEC8, type metadata accessor for RDDueDateDeltaAlarmProducer);
  *(v13 + 72) = a3;
  *(v13 + 136) = type metadata accessor for RDLocationAlarmProducer();
  *(v13 + 144) = sub_100749DCC(&qword_10093FED8, type metadata accessor for RDLocationAlarmProducer);
  *(v13 + 112) = a4;
  *(v13 + 176) = type metadata accessor for RDVehicleAlarmProducer();
  *(v13 + 184) = sub_100749DCC(&qword_10093FED0, type metadata accessor for RDVehicleAlarmProducer);
  *(v13 + 152) = a5;
  *(v13 + 216) = type metadata accessor for RDContactInteractionAlarmProducer();
  *(v13 + 224) = sub_100749DCC(&qword_10093FEB8, type metadata accessor for RDContactInteractionAlarmProducer);
  *(v13 + 192) = a6;
  sub_1000F5104(&qword_1009518B8, &qword_1007B7E58);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100791300;
  *(v14 + 56) = type metadata accessor for RDAlarmNotificationConsumer();
  *(v14 + 64) = &off_1008ECC20;
  *(v14 + 32) = a7;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;

  sub_100745DF4(v13, v14);

  if (qword_100936830 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100006654(v20, qword_100951898);
  oslog = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v21, "os_transaction RELEASE {name: com.apple.remindd.RDAlarmEngineAssembly}", v22, 2u);
  }
}

uint64_t sub_100749DCC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100749E14()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_1009518C0);
  v1 = sub_100006654(v0, qword_1009518C0);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100749EDC(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v143 = a3;
  v141 = a1;
  v131 = a6;
  v130 = type metadata accessor for REMRemindersListDataView.GroupSectionsModel();
  v9 = *(*(v130 - 8) + 64);
  __chkstk_darwin(v130);
  v148 = &v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for REMRemindersListDataView.ListsSectionsModel();
  v140 = *(v135 - 8);
  v11 = *(v140 + 64);
  __chkstk_darwin(v135);
  v129 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v147 = &v117 - v14;
  v15 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v126 = &v117 - v17;
  v149 = type metadata accessor for REMRemindersListDataView.ListsSectionsModel.List();
  v127 = *(v149 - 1);
  v18 = *(v127 + 64);
  __chkstk_darwin(v149);
  v133 = &v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v146 = &v117 - v21;
  v134 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch();
  v138 = *(v134 - 8);
  v22 = *(v138 + 64);
  __chkstk_darwin(v134);
  v132 = &v117 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v136 = &v117 - v25;
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration();
  v139 = *(Configuration - 8);
  v26 = *(v139 + 64);
  __chkstk_darwin(Configuration);
  v28 = &v117 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v117 - v30;
  v32 = type metadata accessor for REMRemindersListDataView.Diff();
  v128 = *(v32 - 8);
  v33 = *(v128 + 64);
  __chkstk_darwin(v32);
  v35 = &v117 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v117 - v37;
  v145 = a5;
  v39 = REMRemindersListDataView.GroupSectionsInvocation.Parameters.group.getter();
  v144 = a4;
  v40 = v150;
  v41 = sub_10074C5B4(a2, a4, v39);

  if (v40)
  {
    return;
  }

  v42 = v142;
  v150 = v41;
  v123 = v28;
  v124 = v35;
  v125 = v38;
  v122 = v32;
  v43 = a2;
  v44 = v144;
  v45 = sub_10074D280(v141, a2, v143, v144, v145);
  v47 = v46;
  v48 = v45;
  v49 = [v42 fetchResultTokenToDiffAgainst];
  v50 = v125;
  sub_100534D44(v49, v125);
  v141 = 0;
  v120 = v47;

  REMRemindersListDataView.GroupSectionsInvocation.Parameters.configuration.getter();
  REMRemindersListDataView.FetchConfiguration.remindersPrefetch.getter();
  v51 = v139 + 8;
  v119 = *(v139 + 8);
  v119(v31, Configuration);
  v52 = v138;
  v53 = v132;
  v54 = v134;
  (*(v138 + 16))();
  v55 = (*(v52 + 88))(v53, v54);
  v139 = v51;
  v121 = v48;
  if (v55 != enum case for REMRemindersListDataView.RemindersPrefetch.initial(_:))
  {
    v58 = v147;
    v78 = v124;
    if (v55 == enum case for REMRemindersListDataView.RemindersPrefetch.updatedInserted(_:))
    {
      v79 = v138;
      v80 = v132;
      (*(v138 + 96))(v132, v54);
      v149 = sub_10053E698(*v80, v50, v43, v44, 0);
      (*(v79 + 8))(v136, v54);
      v81 = v135;
      v82 = v140;
    }

    else
    {
      v118 = v43;
      v83 = v127;
      if (v55 != enum case for REMRemindersListDataView.RemindersPrefetch.initialAndDateRange(_:))
      {
        if (v55 != enum case for REMRemindersListDataView.RemindersPrefetch.none(_:))
        {
          goto LABEL_57;
        }

        (*(v138 + 8))(v136, v54);
        v149 = _swiftEmptyArrayStorage;
        v82 = v140;
        v107 = v123;
        v81 = v135;
        v106 = v128;
        goto LABEL_47;
      }

      v84 = v132;
      (*(v138 + 96))(v132, v54);
      v117 = *v84;
      v85 = sub_1000F5104(&qword_100938A78, &qword_1007AABE0);
      sub_100031B58(v84 + *(v85 + 48), v126, &qword_10094B8E0, &unk_1007AABD0);
      v86 = *(v121 + 16);
      if (v86)
      {
        v88 = *(v83 + 16);
        v87 = v83 + 16;
        v146 = v88;
        v89 = v121 + ((*(v87 + 64) + 32) & ~*(v87 + 64));
        v142 = *(v87 + 56);
        v143 = (v87 - 8);
        v90 = _swiftEmptyArrayStorage;
        v91 = v149;
        v92 = v133;
        (v88)(v133, v89, v149);
        while (1)
        {
          v93 = REMRemindersListDataView.ListsSectionsModel.List.sections.getter();
          (*v143)(v92, v91);
          v94 = *(v93 + 16);
          v95 = v90[2];
          v96 = v95 + v94;
          if (__OFADD__(v95, v94))
          {
            goto LABEL_53;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (!isUniquelyReferenced_nonNull_native || v96 > v90[3] >> 1)
          {
            if (v95 <= v96)
            {
              v98 = v95 + v94;
            }

            else
            {
              v98 = v95;
            }

            v90 = sub_100365A4C(isUniquelyReferenced_nonNull_native, v98, 1, v90);
          }

          v91 = v149;
          if (*(v93 + 16))
          {
            v99 = (v90[3] >> 1) - v90[2];
            v100 = *(type metadata accessor for REMRemindersListDataView.SectionLite() - 8);
            if (v99 < v94)
            {
              goto LABEL_55;
            }

            v101 = (*(v100 + 80) + 32) & ~*(v100 + 80);
            v102 = *(v100 + 72);
            swift_arrayInitWithCopy();

            v82 = v140;
            v92 = v133;
            if (v94)
            {
              v103 = v90[2];
              v76 = __OFADD__(v103, v94);
              v104 = v103 + v94;
              if (v76)
              {
                goto LABEL_56;
              }

              v90[2] = v104;
            }
          }

          else
          {

            v82 = v140;
            if (v94)
            {
              goto LABEL_54;
            }
          }

          v89 += v142;
          if (!--v86)
          {
            break;
          }

          (v146)(v92, v89, v91);
        }
      }

      else
      {
        v82 = v140;
      }

      v108 = Array<A>.reminders.getter();

      v109 = v118;
      v110 = v144;
      v149 = sub_10053DB98(v117, v108, v118, v144, 0);
      v111 = v126;
      sub_10053EBE4(v126, v108, v109, v110, 0);

      sub_1000050A4(v111, &qword_10094B8E0, &unk_1007AABD0);
      (*(v138 + 8))(v136, v134);
      v58 = v147;
      v78 = v124;
      v81 = v135;
    }

    v106 = v128;
LABEL_46:
    v107 = v123;
LABEL_47:
    v112 = v107;
    REMRemindersListDataView.GroupSectionsInvocation.Parameters.configuration.getter();
    REMRemindersListDataView.FetchConfiguration.countCompleted.getter();
    v119(v112, Configuration);
    REMRemindersListDataView.ListsSectionsModel.init(lists:completedRemindersCount:hasCompletedReminders:prefetchedReminders:prefetchedDueReminders:)();
    (*(v82 + 16))(v129, v58, v81);
    v113 = v150;
    REMRemindersListDataView.GroupSectionsModel.init(listSections:group:)();
    v114 = v78;
    v115 = v125;
    v116 = v122;
    (*(v106 + 16))(v114, v125, v122);
    sub_10074DBA4(&qword_1009505E8, &type metadata accessor for REMRemindersListDataView.GroupSectionsModel);
    sub_10074DBA4(&qword_1009505F0, &type metadata accessor for REMRemindersListDataView.GroupSectionsModel);
    REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();

    (*(v82 + 8))(v58, v135);
    (*(v106 + 8))(v115, v116);
    return;
  }

  v118 = v43;
  (*(v52 + 96))(v53, v54);
  v133 = *v53;
  v56 = *(v48 + 16);
  v57 = v48;
  v58 = v147;
  if (!v56)
  {
LABEL_40:
    v105 = Array<A>.reminders.getter();

    v149 = sub_10053DB98(v133, v105, v118, v144, 0);

    (*(v138 + 8))(v136, v134);
    v81 = v135;
    v82 = v140;
    v106 = v128;
    v78 = v124;
    goto LABEL_46;
  }

  v143 = *(v127 + 16);
  v59 = v57 + ((*(v127 + 80) + 32) & ~*(v127 + 80));
  v142 = *(v127 + 72);
  v60 = (v127 + 8);
  v61 = _swiftEmptyArrayStorage;
  v62 = v146;
  while (1)
  {
    v63 = v62;
    v64 = v149;
    (v143)(v62, v59, v149);
    v65 = REMRemindersListDataView.ListsSectionsModel.List.sections.getter();
    (*v60)(v63, v64);
    v66 = *(v65 + 16);
    v67 = v61[2];
    v68 = v67 + v66;
    if (__OFADD__(v67, v66))
    {
      break;
    }

    v69 = swift_isUniquelyReferenced_nonNull_native();
    if (v69 && v68 <= v61[3] >> 1)
    {
      if (*(v65 + 16))
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v67 <= v68)
      {
        v70 = v67 + v66;
      }

      else
      {
        v70 = v67;
      }

      v61 = sub_100365A4C(v69, v70, 1, v61);
      if (*(v65 + 16))
      {
LABEL_16:
        v71 = (v61[3] >> 1) - v61[2];
        v72 = *(type metadata accessor for REMRemindersListDataView.SectionLite() - 8);
        if (v71 < v66)
        {
          goto LABEL_51;
        }

        v73 = (*(v72 + 80) + 32) & ~*(v72 + 80);
        v74 = *(v72 + 72);
        swift_arrayInitWithCopy();

        v58 = v147;
        v62 = v146;
        if (v66)
        {
          v75 = v61[2];
          v76 = __OFADD__(v75, v66);
          v77 = v75 + v66;
          if (v76)
          {
            goto LABEL_52;
          }

          v61[2] = v77;
        }

        goto LABEL_6;
      }
    }

    v58 = v147;
    v62 = v146;
    if (v66)
    {
      goto LABEL_50;
    }

LABEL_6:
    v59 += v142;
    if (!--v56)
    {
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

uint64_t sub_10074AC7C@<X0>(void **a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, void (*a4)(char *, uint64_t)@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10)
{
  v95 = a6;
  v83 = a8;
  v90 = a7;
  v91 = a3;
  v92 = a4;
  v93 = a5;
  v94 = a2;
  v78 = a9;
  v82 = type metadata accessor for REMRemindersListDataView.ListsSectionsModel.List.ListType();
  v85 = *(v82 - 8);
  v11 = *(v85 + 64);
  __chkstk_darwin(v82);
  v77 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v86 = &v73 - v14;
  __chkstk_darwin(v15);
  v89 = &v73 - v16;
  v88 = type metadata accessor for REMRemindersListDataView.SectionsModel();
  v97 = *(v88 - 8);
  v17 = *(v97 + 64);
  __chkstk_darwin(v88);
  v76 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v81 = &v73 - v20;
  v87 = type metadata accessor for REMRemindersListDataView.ListSectionsModel();
  v98 = *(v87 - 8);
  v21 = *(v98 + 64);
  __chkstk_darwin(v87);
  v84 = &v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v79 = &v73 - v24;
  v25 = sub_1000F5104(&qword_100938A70, &qword_1007ACC60);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v80 = &v73 - v27;
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration();
  v29 = *(*(Configuration - 8) + 64);
  __chkstk_darwin(Configuration - 8);
  v30 = type metadata accessor for REMRemindersListDataView.ListSectionsInvocation.Parameters();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  v34 = &v73 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1000F5104(&qword_100950618, &qword_1007B66F0);
  v75 = *(v35 - 8);
  v36 = *(v75 + 64);
  __chkstk_darwin(v35);
  v38 = &v73 - v37;
  v39 = *a1;
  REMList.codable.getter();
  REMRemindersListDataView.GroupSectionsInvocation.Parameters.configuration.getter();
  REMRemindersListDataView.ListSectionsInvocation.Parameters.init(list:configuration:)();
  v40 = v96;
  sub_1005B1AA0(v92, v93, v95, v34, v38);
  if (v40)
  {
    result = (*(v31 + 8))(v34, v30);
    *a10 = v40;
  }

  else
  {
    v42 = v82;
    (*(v31 + 8))(v34, v30);
    v43 = v79;
    v96 = v35;
    REMRemindersListDataView.DefaultInvocationResult.model.getter();
    v44 = v81;
    REMRemindersListDataView.ListSectionsModel.sectionsModel.getter();
    v45 = *(v98 + 8);
    v98 += 8;
    v95 = v45;
    (v45)(v43, v87);
    v46 = v80;
    REMRemindersListDataView.SectionsModel.remindersCount.getter();
    v47 = v97 + 8;
    v94 = *(v97 + 8);
    v94(v44, v88);
    v48 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
    v49 = *(v48 - 8);
    v50 = (*(v49 + 48))(v46, 1, v48);
    v74 = v38;
    if (v50 == 1)
    {
      result = sub_1000050A4(v46, &qword_100938A70, &qword_1007ACC60);
      v51 = 0;
    }

    else
    {
      v51 = REMRemindersListDataView.CountByCompleted.completed.getter();
      result = (*(v49 + 8))(v46, v48);
    }

    v52 = v42;
    v53 = v89;
    v55 = v85;
    v54 = v86;
    if (__OFADD__(*v83, v51))
    {
      __break(1u);
    }

    else
    {
      v56 = v39;
      v57 = v84;
      *v83 += v51;
      v58 = [v56 groceryContext];
      if (v58 && (v59 = v58, v60 = [v58 shouldCategorizeGroceryItems], v59, v54 = v86, (v60 & 1) != 0))
      {
        v61 = &enum case for REMRemindersListDataView.ListsSectionsModel.List.ListType.grocery(_:);
      }

      else
      {
        v61 = &enum case for REMRemindersListDataView.ListsSectionsModel.List.ListType.regular(_:);
      }

      (*(v55 + 104))(v54, *v61, v52);
      (*(v55 + 32))(v53, v54, v52);
      v62 = [v56 objectID];
      v93 = REMObjectID.codable.getter();

      v63 = [v56 displayName];
      v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v91 = v65;
      v92 = v64;

      v66 = [v56 color];
      v97 = v47;
      if (v66)
      {
        v67 = v66;
        v90 = REMColor.codable.getter();
      }

      else
      {
        v90 = 0;
      }

      v68 = v89;
      (*(v55 + 16))(v77, v89, v52);
      v69 = v96;
      v70 = v74;
      REMRemindersListDataView.DefaultInvocationResult.model.getter();
      v71 = v57;
      v72 = v76;
      REMRemindersListDataView.ListSectionsModel.sectionsModel.getter();
      (v95)(v71, v87);
      REMRemindersListDataView.SectionsModel.sections.getter();
      v94(v72, v88);
      REMRemindersListDataView.ListsSectionsModel.List.init(listID:listName:listColor:listType:sections:)();
      (*(v55 + 8))(v68, v52);
      return (*(v75 + 8))(v70, v69);
    }
  }

  return result;
}

uint64_t sub_10074B464@<X0>(void (**a1)(char *, uint64_t)@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, void (*a4)(char *, uint64_t)@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>, void (**a10)(char *, uint64_t))
{
  v83 = a6;
  v74 = a8;
  v78 = a7;
  v79 = a3;
  v80 = a4;
  v81 = a5;
  v82 = a2;
  v64 = a9;
  v68 = type metadata accessor for REMRemindersListDataView.ListsSectionsModel.List.ListType();
  v75 = *(v68 - 8);
  v11 = *(v75 + 64);
  __chkstk_darwin(v68);
  v69 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for REMRemindersListDataView.SectionsModel();
  v85 = *(v76 - 8);
  v13 = *(v85 + 64);
  __chkstk_darwin(v76);
  v67 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v71 = &v64 - v16;
  v17 = type metadata accessor for REMRemindersListDataView.CustomSmartListSectionsModel();
  v72 = *(v17 - 8);
  v73 = v17;
  v18 = *(v72 + 64);
  __chkstk_darwin(v17);
  v66 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v70 = &v64 - v21;
  v22 = sub_1000F5104(&qword_100938A70, &qword_1007ACC60);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v77 = &v64 - v24;
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration();
  v26 = *(*(Configuration - 8) + 64);
  __chkstk_darwin(Configuration - 8);
  v27 = type metadata accessor for REMRemindersListDataView.CustomSmartListSectionsInvocation.Parameters();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v31 = &v64 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1000F5104(&qword_100950B08, &qword_1007B6940);
  v65 = *(v32 - 1);
  v33 = *(v65 + 64);
  __chkstk_darwin(v32);
  v35 = &v64 - v34;
  v36 = *a1;
  REMSmartList.codable.getter();
  REMRemindersListDataView.GroupSectionsInvocation.Parameters.configuration.getter();
  REMRemindersListDataView.CustomSmartListSectionsInvocation.Parameters.init(smartList:shouldFetchManualOrderingID:configuration:)();
  v37 = v84;
  sub_10012BCB4(v80, v81, v83, v31, v35);
  if (v37)
  {
    result = (*(v28 + 8))(v31, v27);
    *a10 = v37;
  }

  else
  {
    v84 = v36;
    (*(v28 + 8))(v31, v27);
    v39 = v70;
    v83 = v32;
    REMRemindersListDataView.DefaultInvocationResult.model.getter();
    v40 = v71;
    REMRemindersListDataView.CustomSmartListSectionsModel.sectionsModel.getter();
    v41 = *(v72 + 8);
    v42 = v39;
    v43 = v73;
    v41(v42, v73);
    v44 = v77;
    REMRemindersListDataView.SectionsModel.remindersCount.getter();
    v45 = *(v85 + 8);
    v85 += 8;
    v82 = v45;
    v45(v40, v76);
    v46 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
    v47 = *(v46 - 8);
    if ((*(v47 + 48))(v44, 1, v46) == 1)
    {
      result = sub_1000050A4(v77, &qword_100938A70, &qword_1007ACC60);
      v48 = 0;
    }

    else
    {
      v49 = v77;
      v48 = REMRemindersListDataView.CountByCompleted.completed.getter();
      result = (*(v47 + 8))(v49, v46);
    }

    v50 = v84;
    v51 = v75;
    v52 = *v74 + v48;
    if (__OFADD__(*v74, v48))
    {
      __break(1u);
    }

    else
    {
      v84 = v41;
      *v74 = v52;
      v53 = [v50 objectID];
      v81 = REMObjectID.codable.getter();

      v54 = [v50 name];
      v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v79 = v56;
      v80 = v55;

      v57 = [v50 color];
      if (v57)
      {
        v58 = v57;
        v59 = v35;
        v60 = v43;
        v78 = REMColor.codable.getter();
      }

      else
      {
        v59 = v35;
        v60 = v43;
        v78 = 0;
      }

      (*(v51 + 104))(v69, enum case for REMRemindersListDataView.ListsSectionsModel.List.ListType.customSmartList(_:), v68);
      v61 = v66;
      v62 = v83;
      REMRemindersListDataView.DefaultInvocationResult.model.getter();
      v63 = v67;
      REMRemindersListDataView.CustomSmartListSectionsModel.sectionsModel.getter();
      v84(v61, v60);
      REMRemindersListDataView.SectionsModel.sections.getter();
      v82(v63, v76);
      REMRemindersListDataView.ListsSectionsModel.List.init(listID:listName:listColor:listType:sections:)();
      return (*(v65 + 8))(v59, v62);
    }
  }

  return result;
}

uint64_t sub_10074BB9C(uint64_t a1)
{
  result = sub_10074DBA4(&qword_1009518F8, &type metadata accessor for REMRemindersListDataView.GroupSectionsInvocation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10074BC28(uint64_t a1, int a2, void *a3)
{
  v7 = type metadata accessor for REMRemindersListDataView.ListsSectionsModel.List();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000F5104(&qword_10093ED48, &qword_10079D4B8);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v17 = (&v57 - v16);
  v64 = *(a1 + 16);
  if (!v64)
  {
  }

  LODWORD(v61) = a2;
  v59 = v3;
  v18 = *(v14 + 48);
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v63 = *(v15 + 72);
  v65 = a1;
  v58 = v19;
  sub_10074DB34(a1 + v19, &v57 - v16);
  v60 = v8;
  v20 = *(v8 + 32);
  v71 = *v17;
  v21 = v71;
  v62 = v18;
  v66 = v11;
  v67 = v7;
  v20(v11, v17 + v18, v7);
  v22 = *a3;
  v24 = sub_100364044(v21);
  v25 = v22[2];
  v26 = (v23 & 1) == 0;
  v27 = v25 + v26;
  if (__OFADD__(v25, v26))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v28 = v23;
  if (v22[3] >= v27)
  {
    if (v61)
    {
      v32 = v60;
      if ((v23 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_100373B88();
      v32 = v60;
      if ((v28 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_10;
  }

  sub_10036B4B0(v27, v61 & 1);
  v29 = *a3;
  v30 = sub_100364044(v21);
  if ((v28 & 1) == (v31 & 1))
  {
    v24 = v30;
    v32 = v60;
    if ((v28 & 1) == 0)
    {
LABEL_13:
      v35 = *a3;
      *(*a3 + 8 * (v24 >> 6) + 64) |= 1 << v24;
      *(v35[6] + 8 * v24) = v21;
      v36 = v35[7];
      v61 = *(v32 + 72);
      v20((v36 + v61 * v24), v66, v67);
      v37 = v35[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (!v38)
      {
        v35[2] = v39;
        v40 = v65;
        if (v64 != 1)
        {
          v41 = v65 + v63 + v58;
          v42 = 1;
          while (v42 < *(v40 + 16))
          {
            sub_10074DB34(v41, v17);
            v71 = *v17;
            v21 = v71;
            v20(v66, v17 + v62, v67);
            v43 = *a3;
            v44 = sub_100364044(v21);
            v46 = v43[2];
            v47 = (v45 & 1) == 0;
            v38 = __OFADD__(v46, v47);
            v48 = v46 + v47;
            if (v38)
            {
              goto LABEL_25;
            }

            v49 = v45;
            if (v43[3] < v48)
            {
              sub_10036B4B0(v48, 1);
              v50 = *a3;
              v44 = sub_100364044(v21);
              if ((v49 & 1) != (v51 & 1))
              {
                goto LABEL_28;
              }
            }

            if (v49)
            {
              v32 = v60;
              goto LABEL_10;
            }

            v52 = *a3;
            *(*a3 + 8 * (v44 >> 6) + 64) |= 1 << v44;
            *(v52[6] + 8 * v44) = v21;
            v20((v52[7] + v61 * v44), v66, v67);
            v53 = v52[2];
            v38 = __OFADD__(v53, 1);
            v54 = v53 + 1;
            if (v38)
            {
              goto LABEL_26;
            }

            ++v42;
            v52[2] = v54;
            v41 += v63;
            v40 = v65;
            if (v64 == v42)
            {
            }
          }

          goto LABEL_27;
        }
      }

LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

LABEL_10:
    v33 = swift_allocError();
    swift_willThrow();

    v70 = v33;
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v32 + 8))(v66, v67);
    }

    goto LABEL_29;
  }

LABEL_28:
  type metadata accessor for REMObjectID_Codable();
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_29:
  v68 = 0;
  v69 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  v55._object = 0x80000001007F8340;
  v55._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v55);
  type metadata accessor for REMObjectID_Codable();
  _print_unlocked<A, B>(_:_:)();
  v56._countAndFlagsBits = 39;
  v56._object = 0xE100000000000000;
  String.append(_:)(v56);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10074C164(uint64_t a1, uint64_t a2)
{
  v12[3] = type metadata accessor for REMSmartList_Codable();
  v12[4] = sub_10074DBA4(&qword_100948C30, &type metadata accessor for REMSmartList_Codable);
  v12[5] = sub_10074DBA4(&qword_100948C38, &type metadata accessor for REMSmartList_Codable);
  v12[0] = a1;
  sub_100030E2C(v12, v11);
  sub_1000F5104(&qword_100948C28, &qword_1007ACC70);
  type metadata accessor for REMList_Codable();
  if (swift_dynamicCast())
  {
    sub_10000607C(v12);
    v4 = v10;
LABEL_5:
    *(a2 + 16) = v4;
    sub_10000607C(v11);
    return a2;
  }

  if (swift_dynamicCast())
  {
    sub_10000607C(v12);
    v4 = v10 | 0x8000000000000000;
    goto LABEL_5;
  }

  if (qword_100936838 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100006654(v5, qword_1009518C0);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "unknown or unsupported REM object type for PolymorphicListItem", v8, 2u);
  }

  sub_10000607C(v12);
  sub_10000607C(v11);
  _s19PolymorphicListItemCMa_1();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_10074C38C(uint64_t a1, uint64_t a2)
{
  v12[3] = type metadata accessor for REMList_Codable();
  v12[4] = sub_10074DBA4(&qword_100948C18, &type metadata accessor for REMList_Codable);
  v12[5] = sub_10074DBA4(&qword_100948C20, &type metadata accessor for REMList_Codable);
  v12[0] = a1;
  sub_100030E2C(v12, v11);
  sub_1000F5104(&qword_100948C28, &qword_1007ACC70);
  if (swift_dynamicCast())
  {
    sub_10000607C(v12);
    v4 = v10;
LABEL_5:
    *(a2 + 16) = v4;
    sub_10000607C(v11);
    return a2;
  }

  type metadata accessor for REMSmartList_Codable();
  if (swift_dynamicCast())
  {
    sub_10000607C(v12);
    v4 = v10 | 0x8000000000000000;
    goto LABEL_5;
  }

  if (qword_100936838 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100006654(v5, qword_1009518C0);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "unknown or unsupported REM object type for PolymorphicListItem", v8, 2u);
  }

  sub_10000607C(v12);
  sub_10000607C(v11);
  _s19PolymorphicListItemCMa_1();
  swift_deallocPartialClassInstance();
  return 0;
}

id sub_10074C5B4(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = _s10PredicatesOMa_1();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1007953F0;
  *(v10 + 32) = [a3 objectID];
  *v9 = v10;
  swift_storeEnumTagMultiPayload();
  if (qword_100936528 != -1)
  {
    swift_once();
  }

  v11 = qword_100975238;
  v12 = sub_10001F6F4();
  v13 = sub_100405438(0, v11, 0, v12);

  if (qword_100936520 != -1)
  {
    swift_once();
  }

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v13 setSortDescriptors:isa];

  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v15 = NSManagedObjectContext.fetch<A>(_:)();
  if (v3)
  {
    sub_100025374(v9, _s10PredicatesOMa_1);

    return a3;
  }

  v20[1] = v15;
  sub_1000F5104(&qword_10093F6F0, qword_10079A300);
  sub_100155610();
  v16 = Sequence.elements<A>(ofType:)();

  v17 = sub_1000271D0(v16, a2);

  if (!(v17 >> 62))
  {
    result = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_9;
    }

LABEL_14:

    sub_100025374(v9, _s10PredicatesOMa_1);
    return a3;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_9:
  if ((v17 & 0xC000000000000001) != 0)
  {
    v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_12;
  }

  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v19 = *(v17 + 32);
LABEL_12:
    a3 = v19;

    sub_100025374(v9, _s10PredicatesOMa_1);
    return a3;
  }

  __break(1u);
  return result;
}

uint64_t sub_10074C938(void *a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v75 = type metadata accessor for REMRemindersListDataView.ListsSectionsModel.List();
  v72 = *(v75 - 8);
  v10 = *(v72 + 64);
  __chkstk_darwin(v75);
  v69 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v71 = &v63 - v13;
  v14 = sub_1000F5104(&qword_10093ED48, &qword_10079D4B8);
  v73 = *(v14 - 8);
  v74 = v14;
  v15 = *(v73 + 64);
  __chkstk_darwin(v14);
  v17 = &v63 - v16;
  if (a2 >> 62)
  {
    goto LABEL_81;
  }

  v18 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v18)
  {
LABEL_84:

    return a1;
  }

LABEL_3:
  if (a3 >> 62)
  {
    v19 = _CocoaArrayWrapper.endIndex.getter();
    if (!v19)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v19 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v19)
    {
      goto LABEL_84;
    }
  }

  v65 = a4;
  v66 = a5;
  v76 = v17;
  v67 = a1;
  v17 = 0;
  v77 = _swiftEmptyArrayStorage;
  a1 = (a2 & 0xC000000000000001);
  v68 = _swiftEmptyArrayStorage;
  while (v18 != v17)
  {
    if (a1)
    {
      v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v17 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_76;
      }

      v20 = *(a2 + 8 * v17 + 32);
    }

    a5 = v20;
    a4 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
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
      __break(1u);
LABEL_81:
      v18 = _CocoaArrayWrapper.endIndex.getter();
      if (!v18)
      {
        goto LABEL_84;
      }

      goto LABEL_3;
    }

    _s19PolymorphicListItemCMa_1();
    v21 = swift_allocObject();
    v22 = sub_10074C38C(a5, v21);
    ++v17;
    if (v22)
    {
      v68 = v22;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      a5 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (a5 >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v68 = v77;
      v17 = a4;
    }
  }

  v17 = 0;
  a2 = _swiftEmptyArrayStorage;
  v77 = _swiftEmptyArrayStorage;
  a1 = (a3 & 0xC000000000000001);
  while (v19 != v17)
  {
    if (a1)
    {
      v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v17 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_78;
      }

      v23 = *(a3 + 8 * v17 + 32);
    }

    a5 = v23;
    v24 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_77;
    }

    _s19PolymorphicListItemCMa_1();
    v25 = swift_allocObject();
    v26 = sub_10074C164(a5, v25);
    ++v17;
    if (v26)
    {
      a5 = v26;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        a4 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      a2 = v77;
      v17 = v24;
    }
  }

  v77 = v68;
  v17 = &v77;
  sub_1002720DC(a2);
  a4 = v77;
  if (v77 >> 62)
  {
    v27 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v27 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v28 = v67;
  v29 = v70;
  if (v27 < 2)
  {
LABEL_36:
    v31 = 0;
    if (a4 >> 62)
    {
      goto LABEL_46;
    }

    goto LABEL_37;
  }

  a5 = v65;
  v30 = sub_100012370(a5, v66);
  if (v29)
  {

    v31 = 0;
    v29 = 0;
    if (a4 >> 62)
    {
      goto LABEL_46;
    }

    goto LABEL_37;
  }

  if (!v30)
  {

    goto LABEL_36;
  }

  v32 = v30;
  _s19PolymorphicListItemCMa_1();
  v31 = v32;
  v17 = REMOrderedIdentifierMap.reorder<A>(objects:)();
  v29 = 0;

  a4 = v17;
  if (v17 >> 62)
  {
LABEL_46:
    v33 = _CocoaArrayWrapper.endIndex.getter();
    v64 = v31;
    if (!v33)
    {
      goto LABEL_47;
    }

    goto LABEL_38;
  }

LABEL_37:
  v33 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v64 = v31;
  if (!v33)
  {
LABEL_47:

    v38 = _swiftEmptyArrayStorage;
    goto LABEL_48;
  }

LABEL_38:
  v77 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  if (v33 < 0)
  {
    __break(1u);
LABEL_91:
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v34 = 0;
  do
  {
    if ((a4 & 0xC000000000000001) != 0)
    {
      v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v35 = *(a4 + 8 * v34 + 32);
    }

    v36 = (*(v35 + 16) & 0x7FFFFFFFFFFFFFFFLL);
    v37 = [v36 remObjectID];

    ++v34;
    v17 = &v77;
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    a5 = *(v77 + 16);
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  while (v33 != v34);

  v38 = v77;
  v28 = v67;
LABEL_48:
  v70 = v29;
  v39 = v28[2];
  v40 = _swiftEmptyArrayStorage;
  v68 = v38;
  if (v39)
  {
    v77 = _swiftEmptyArrayStorage;
    sub_1002534F0(0, v39, 0);
    v40 = v77;
    a4 = v72 + 16;
    v41 = *(v72 + 16);
    v42 = v28 + ((*(v72 + 80) + 32) & ~*(v72 + 80));
    a5 = *(v72 + 72);
    v17 = v76;
    do
    {
      v41(v17 + *(v74 + 48), v42, v75);
      v43 = REMRemindersListDataView.ListsSectionsModel.List.listID.getter();
      v17 = v76;
      *v76 = v43;
      v77 = v40;
      v45 = v40[2];
      v44 = v40[3];
      if (v45 >= v44 >> 1)
      {
        sub_1002534F0(v44 > 1, v45 + 1, 1);
        v17 = v76;
        v40 = v77;
      }

      v40[2] = v45 + 1;
      sub_100031B58(v17, v40 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v45, &qword_10093ED48, &qword_10079D4B8);
      v42 += a5;
      --v39;
    }

    while (v39);
    v38 = v68;
  }

  if (v40[2])
  {
    v17 = sub_1000F5104(&qword_100943D60, "x\b\v");
    v46 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v46 = _swiftEmptyDictionarySingleton;
  }

  v77 = v46;
  v47 = v70;
  sub_10074BC28(v40, 1, &v77);
  v70 = v47;
  if (v47)
  {
    goto LABEL_91;
  }

  a3 = v77;
  if (v38 >> 62)
  {
    a2 = _CocoaArrayWrapper.endIndex.getter();
    if (a2)
    {
LABEL_60:
      v48 = 0;
      v76 = (v38 & 0xC000000000000001);
      v65 = (v72 + 16);
      v73 = v72 + 32;
      v74 = v38 & 0xFFFFFFFFFFFFFF8;
      a1 = _swiftEmptyArrayStorage;
      v66 = a2;
      v67 = a3;
      while (1)
      {
        if (v76)
        {
          v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v48 >= *(v74 + 16))
          {
            goto LABEL_80;
          }

          v49 = *(v38 + 8 * v48 + 32);
        }

        a5 = v49;
        a4 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
          goto LABEL_79;
        }

        v17 = v49;
        v50 = REMObjectID.codable.getter();
        v51 = v50;
        if (*(a3 + 16) && (v17 = a3, v52 = sub_100364044(v50), (v53 & 1) != 0))
        {
          v54 = *(a3 + 56);
          v55 = a1;
          v56 = v72;
          v57 = *(v72 + 72);
          v58 = v69;
          v59 = v75;
          (*(v72 + 16))(v69, v54 + v57 * v52, v75);

          a5 = *(v56 + 32);
          a1 = v55;
          (a5)(v71, v58, v59);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a1 = sub_100365B88(0, v55[2] + 1, 1, v55);
          }

          v61 = a1[2];
          v60 = a1[3];
          v17 = v61 + 1;
          a2 = v66;
          a3 = v67;
          if (v61 >= v60 >> 1)
          {
            a1 = sub_100365B88(v60 > 1, v61 + 1, 1, a1);
          }

          a1[2] = v17;
          (a5)(a1 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + v61 * v57, v71, v75);
          v38 = v68;
        }

        else
        {
        }

        ++v48;
        if (a4 == a2)
        {
          goto LABEL_88;
        }
      }
    }
  }

  else
  {
    a2 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (a2)
    {
      goto LABEL_60;
    }
  }

  a1 = _swiftEmptyArrayStorage;
LABEL_88:

  return a1;
}

uint64_t sub_10074D280(uint64_t a1, id a2, void *a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v58 = a4;
  v55 = a1;
  v56 = a3;
  v54 = _s10PredicatesOMa_3();
  v9 = *(*(v54 - 8) + 64);
  __chkstk_darwin(v54);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s10PredicatesOMa_1();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = REMRemindersListDataView.GroupSectionsInvocation.Parameters.group.getter();
  v16 = [v18 objectID];

  v57 = a5;
  v17 = REMRemindersListDataView.GroupSectionsInvocation.Parameters.includePinnedSublists.getter();
  *v15 = v16;
  LOBYTE(v18) = v17 & 1;
  v15[8] = v17 & 1;
  swift_storeEnumTagMultiPayload();
  v59 = v16;
  v19 = sub_10001F6F4();
  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v20 = [objc_allocWithZone(NSFetchRequest) init];
  v21 = [swift_getObjCClassFromMetadata() entity];
  [v20 setEntity:v21];

  [v20 setAffectedStores:0];
  [v20 setPredicate:v19];

  if (qword_100936520 != -1)
  {
    goto LABEL_13;
  }

  while (1)
  {
    sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v20 setSortDescriptors:isa];

    v23 = a2;
    v24 = NSManagedObjectContext.fetch<A>(_:)();
    if (v6)
    {
      break;
    }

    v53 = v11;
    v60 = v24;
    sub_1000F5104(&qword_10093F6F0, qword_10079A300);
    sub_100155610();
    v25 = Sequence.elements<A>(ofType:)();

    v26 = sub_1000271D0(v25, v58);

    v52 = v26;
    if (v26 >> 62)
    {
      sub_1000060C8(0, &qword_10093D5D0, REMList_ptr);

      v27 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      sub_1000060C8(0, &qword_10093D5D0, REMList_ptr);
      v27 = v26;
    }

    v28 = v53;
    v60 = 0;
    type metadata accessor for REMRemindersListDataView.ListSectionsInvocation();
    v29 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    __chkstk_darwin(v29);
    v31 = v55;
    v30 = v56;
    *(&v50 - 8) = v32;
    *(&v50 - 7) = v31;
    *(&v50 - 6) = a2;
    *(&v50 - 5) = v30;
    v33 = v57;
    *(&v50 - 4) = v58;
    *(&v50 - 3) = v33;
    *(&v50 - 2) = &v60;
    v51 = sub_10025D2D8(sub_10074DA9C, (&v50 - 10), v27);

    v34 = v60;
    v35 = v59;
    *v28 = v59;
    *(v28 + 8) = v18;
    swift_storeEnumTagMultiPayload();
    v11 = v35;
    v6 = 0;
    v36 = sub_100717C9C(v28, a2, 0);
    v18 = sub_1000303FC(v36, v58);

    if (v18 >> 62)
    {
      sub_1000060C8(0, &qword_10093A230, REMSmartList_ptr);

      v37 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      sub_1000060C8(0, &qword_10093A230, REMSmartList_ptr);
      v37 = v18;
    }

    v38 = v55;
    v60 = 0;
    type metadata accessor for REMRemindersListDataView.CustomSmartListSectionsInvocation();
    v39 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v59 = &v50;
    __chkstk_darwin(v39);
    *(&v50 - 8) = v40;
    *(&v50 - 7) = v38;
    v41 = a2;
    v42 = v56;
    *(&v50 - 6) = a2;
    *(&v50 - 5) = v42;
    v43 = v57;
    *(&v50 - 4) = v58;
    *(&v50 - 3) = v43;
    *(&v50 - 2) = &v60;
    v44 = sub_10025D2D8(sub_10074DAC8, (&v50 - 10), v37);
    v58 = v41;
    v46 = v44;

    v56 = v60;
    v60 = v51;

    v59 = v46;
    sub_1002720F4(v47);
    v48 = v60;
    v49 = REMRemindersListDataView.GroupSectionsInvocation.Parameters.group.getter();
    a2 = [v49 accountID];

    v20 = v52;
    v23 = sub_10074C938(v48, v52, v18, a2, v58);

    sub_100025374(v53, _s10PredicatesOMa_3);
    sub_100025374(v15, _s10PredicatesOMa_1);

    if (!__OFADD__(v34, v56))
    {
      return v23;
    }

    __break(1u);
LABEL_13:
    swift_once();
  }

  sub_100025374(v15, _s10PredicatesOMa_1);

  return v23;
}

uint64_t sub_10074DB34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_10093ED48, &qword_10079D4B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10074DBA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10074DBEC@<X0>(unint64_t *a1@<X8>)
{
  v3 = v2;
  v39 = a1;
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v35 = &v30 - v6;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v31 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for REMJSONType();
  v37 = *(v38 - 8);
  v11 = *(v37 + 64);
  __chkstk_darwin(v38);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v1;
  v14 = *(v1 + 16);
  v15 = *(v14 + 16);
  if (v15)
  {
    v32 = v2;
    v33 = v8;
    v34 = v7;
    v16 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = sub_100368CEC(v15, 0);
    v18 = *(type metadata accessor for RDPermanentlyHiddenReminder() - 8);
    sub_10027A30C(&v41, v17 + ((*(v18 + 80) + 32) & ~*(v18 + 80)), v15, v14);
    v20 = v19;

    result = sub_10001B860();
    if (v20 != v15)
    {
      __break(1u);
      return result;
    }

    v13 = v16;
    v7 = v34;
    v8 = v33;
    v3 = v32;
  }

  type metadata accessor for RDPermanentlyHiddenReminder();
  sub_10074E930(&qword_1009519B0, type metadata accessor for RDPermanentlyHiddenReminder);
  Array<A>.toJSON()();

  if (!v3)
  {
    sub_1000F5104(&qword_100936EB0, &unk_1007954A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100791300;
    *(inited + 32) = 0xD00000000000001ALL;
    *(inited + 40) = 0x80000001007FD1A0;
    REMJSONType.associatedValueAsAny.getter();
    v23 = sub_1001F67C8(inited);
    swift_setDeallocating();
    sub_1000050A4(inited + 32, &unk_100939260, &unk_100797220);
    v24 = v35;
    sub_10012F78C(v36 + OBJC_IVAR____TtC7remindd21RDRecentlyDeletedInfo_lastPermanentlyHiddenRemindersCleanupDate, v35);
    if ((*(v8 + 48))(v24, 1, v7) == 1)
    {
      sub_1000050A4(v24, &unk_100938850, qword_100795AE0);
    }

    else
    {
      v25 = v31;
      (*(v8 + 32))(v31, v24, v7);
      Date.timeIntervalSinceReferenceDate.getter();
      v42 = &type metadata for Double;
      *&v41 = v26;
      sub_100005EE0(&v41, v40);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v43 = v23;
      sub_1002C88F0(v40, 0xD000000000000029, 0x80000001007FD1C0, isUniquelyReferenced_nonNull_native);
      (*(v8 + 8))(v25, v7);
      v23 = v43;
    }

    v42 = &type metadata for Int;
    *&v41 = kREMSupportedVersionFor2024;
    sub_100005EE0(&v41, v40);
    v28 = swift_isUniquelyReferenced_nonNull_native();
    v43 = v23;
    sub_1002C88F0(v40, 0xD000000000000017, 0x80000001007E8C60, v28);
    v29 = v37;
    (*(v37 + 8))(v13, v38);
    *v39 = v43;
    return (*(v29 + 104))();
  }

  return result;
}

uint64_t sub_10074E148@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10074E174(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_10074E174(uint64_t a1)
{
  v2 = sub_1000F5104(&qword_100950590, &qword_1007B6618);
  v54 = *(v2 - 8);
  v55 = v2;
  v3 = *(v54 + 64);
  __chkstk_darwin(v2);
  v53 = &v49 - v4;
  v50 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v5 = *(*(v50 - 8) + 64);
  __chkstk_darwin(v50);
  v49 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v52 = &v49 - v8;
  __chkstk_darwin(v9);
  v51 = &v49 - v10;
  v11 = sub_1000F5104(&qword_1009519A8, &qword_1007B7EF8);
  v56 = *(v11 - 8);
  v12 = *(v56 + 64);
  __chkstk_darwin(v11);
  v14 = (&v49 - v13);
  v15 = sub_1000F5104(&qword_100938AE0, qword_1007B6560);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v49 - v18;
  v20 = type metadata accessor for REMJSONType();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v20);
  v25 = (&v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v25, a1, v20, v23);
  v26 = (*(v21 + 88))(v25, v20);
  if (v26 == enum case for REMJSONType.jsonObject(_:))
  {
    (*(v21 + 96))(v25, v20);
    v27 = *v25;
    (*(v16 + 104))(v19, enum case for Dictionary<>.DeserializableValueType.integer<A, B><A1>(_:), v15);
    v58 = kREMSupportedVersionFor2024;
    v28 = v57;
    Dictionary<>.deserializeOptional<A>(key:valueType:defaultValue:)();
    (*(v16 + 8))(v19, v15);
    if (v28)
    {

      return v19;
    }

    v19 = v59;
    if ((rem_isUnsupportedVersionByRuntime() & 1) == 0)
    {
      v35 = type metadata accessor for RDPermanentlyHiddenReminder();
      v36 = sub_10074E930(&qword_1009519B0, type metadata accessor for RDPermanentlyHiddenReminder);
      *v14 = v35;
      v14[1] = v36;
      v37 = v56;
      (*(v56 + 104))(v14, enum case for Dictionary<>.DeserializableValueType.jsonArray<A, B><A1>(_:), v11);
      sub_1000F5104(&qword_1009519B8, &qword_1007B7F00);
      Dictionary<>.deserializeRequired<A>(key:valueType:)();
      (*(v37 + 8))(v14, v11);
      v38 = sub_1001A6A48(v59);

      v40 = v53;
      v39 = v54;
      v41 = v55;
      (*(v54 + 104))(v53, enum case for Dictionary<>.DeserializableValueType.date<A, B><A1>(_:), v55);
      v42 = type metadata accessor for Date();
      v43 = v52;
      (*(*(v42 - 8) + 56))(v52, 1, 1, v42);
      v44 = v51;
      Dictionary<>.deserializeOptional<A>(key:valueType:defaultValue:)();

      sub_1000050A4(v43, &unk_100938850, qword_100795AE0);
      (*(v39 + 8))(v40, v41);
      v45 = v49;
      sub_10012F7FC(v44, v49);
      v46 = type metadata accessor for RDRecentlyDeletedInfo();
      v47 = *(v46 + 48);
      v48 = *(v46 + 52);
      v19 = swift_allocObject();
      *(v19 + 2) = v38;
      sub_10012F7FC(v45, &v19[OBJC_IVAR____TtC7remindd21RDRecentlyDeletedInfo_lastPermanentlyHiddenRemindersCleanupDate]);
      return v19;
    }

    v29 = type metadata accessor for REMJSONDeserializationError();
    sub_10074E930(&qword_100938AF8, &type metadata accessor for REMJSONDeserializationError);
    swift_allocError();
    v31 = v34;
    *v34 = v19;
    v32 = &enum case for REMJSONDeserializationError.notSupported(_:);
LABEL_6:
    (*(*(v29 - 8) + 104))(v31, *v32, v29);
    swift_willThrow();
    return v19;
  }

  if (v26 == enum case for REMJSONType.jsonArray(_:))
  {
    (*(v21 + 8))(v25, v20);
    v29 = type metadata accessor for REMJSONDeserializationError();
    sub_10074E930(&qword_100938AF8, &type metadata accessor for REMJSONDeserializationError);
    swift_allocError();
    v31 = v30;
    v32 = &enum case for REMJSONDeserializationError.invalidData(_:);
    goto LABEL_6;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10074E930(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_10074E990(void *a1, SEL *a2)
{
  v4 = v2;
  v6 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v75 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v73 = &v72 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v72 - v13;
  __chkstk_darwin(v12);
  v16 = &v72 - v15;
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v74 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v78 = &v72 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = &v72 - v25;
  v27 = __chkstk_darwin(v24);
  v29 = &v72 - v28;
  __chkstk_darwin(v27);
  v31 = &v72 - v30;
  v76 = v4;
  v32 = [v4 creationDate];
  v77 = v29;
  if (v32)
  {
    v33 = v32;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v34 = v29;
    v35 = a2;
    v36 = a1;
    v37 = *(v18 + 32);
    v37(v16, v34, v17);
    v79 = *(v18 + 56);
    v79(v16, 0, 1, v17);
    v37(v31, v16, v17);
    a1 = v36;
    a2 = v35;
  }

  else
  {
    v79 = *(v18 + 56);
    v79(v16, 1, 1, v17);
    static Date.distantFuture.getter();
    if ((*(v18 + 48))(v16, 1, v17) != 1)
    {
      sub_1001AAD5C(v16);
    }
  }

  v38 = [a1 *a2];
  if (v38)
  {
    v39 = v77;
    v40 = v38;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v41 = *(v18 + 32);
    v41(v14, v39, v17);
    v79(v14, 0, 1, v17);
    v41(v26, v14, v17);
  }

  else
  {
    v79(v14, 1, 1, v17);
    static Date.distantFuture.getter();
    v42 = (*(v18 + 48))(v14, 1, v17);
    v39 = v77;
    if (v42 != 1)
    {
      sub_1001AAD5C(v14);
    }
  }

  v43 = static Date.< infix(_:_:)();
  v44 = *(v18 + 8);
  v44(v26, v17);
  v44(v31, v17);
  if (v43)
  {
    return 1;
  }

  v46 = [v76 creationDate];
  if (v46)
  {
    v47 = v46;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v48 = *(v18 + 32);
    v49 = v39;
    v50 = v73;
    v51 = v49;
    v48(v73);
    v79(v50, 0, 1, v17);
    (v48)(v78, v50, v17);
  }

  else
  {
    v51 = v39;
    v52 = v73;
    v79(v73, 1, 1, v17);
    static Date.distantFuture.getter();
    if ((*(v18 + 48))(v52, 1, v17) != 1)
    {
      sub_1001AAD5C(v52);
    }
  }

  v53 = [a1 *a2];
  if (v53)
  {
    v54 = v53;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v55 = *(v18 + 32);
    v56 = v75;
    v55(v75, v51, v17);
    v79(v56, 0, 1, v17);
    v57 = v74;
    v55(v74, v56, v17);
  }

  else
  {
    v58 = v75;
    v79(v75, 1, 1, v17);
    v57 = v74;
    static Date.distantFuture.getter();
    if ((*(v18 + 48))(v58, 1, v17) != 1)
    {
      sub_1001AAD5C(v58);
    }
  }

  v59 = v78;
  v60 = static Date.== infix(_:_:)();
  v44(v57, v17);
  v44(v59, v17);
  if ((v60 & 1) == 0)
  {
    return 0;
  }

  v61 = [v76 name];
  if (v61)
  {
    v62 = v61;
    v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v64;
  }

  else
  {
    v63 = 0;
    v65 = 0xE000000000000000;
  }

  v82 = v63;
  v83 = v65;
  v66 = [a1 name];
  if (v66)
  {
    v67 = v66;
    v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v70 = v69;
  }

  else
  {
    v68 = 0;
    v70 = 0xE000000000000000;
  }

  v80 = v68;
  v81 = v70;
  sub_10013BCF4();
  v71 = StringProtocol.localizedStandardCompare<A>(_:)();

  return v71 == -1;
}

uint64_t sub_10074F0C0()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_1009519C0);
  v1 = sub_100006654(v0, qword_1009519C0);
  if (qword_100936410 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974F78);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10074F1DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1003FBA98();
  *a1 = result;
  return result;
}

uint64_t sub_10074F20C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100951B08);
  v1 = sub_100006654(v0, qword_100951B08);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10074F2D4(void *a1@<X1>, uint64_t a2@<X2>, void *a3@<X3>, void (*a4)(char *, unint64_t, uint64_t)@<X4>, void *a5@<X8>)
{
  v240 = a2;
  v247 = a3;
  v248 = a4;
  v250 = a5;
  v227 = type metadata accessor for REMRemindersListDataView.AssignedModel();
  v226 = *(v227 - 8);
  v6 = *(v226 + 64);
  __chkstk_darwin(v227);
  v231 = &v193 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v243 = &v193 - v9;
  v232 = type metadata accessor for REMRemindersListDataView.ListsModel();
  v241 = *(v232 - 8);
  v10 = *(v241 + 64);
  __chkstk_darwin(v232);
  v228 = &v193 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v251 = &v193 - v13;
  v14 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v215 = &v193 - v16;
  v245 = type metadata accessor for REMRemindersListDataView.ReminderLite();
  v253 = *(v245 - 8);
  v17 = v253[8];
  __chkstk_darwin(v245);
  v223 = &v193 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v235 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch();
  v237 = *(v235 - 8);
  v19 = *(v237 + 64);
  __chkstk_darwin(v235);
  v229 = (&v193 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v21);
  v233 = &v193 - v22;
  __chkstk_darwin(v23);
  v219 = &v193 - v24;
  v221 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v220 = *(v221 - 8);
  v25 = *(v220 + 64);
  __chkstk_darwin(v221);
  v222 = &v193 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = type metadata accessor for REMRemindersListDataView.AssignedInvocation.Parameters();
  v216 = *(v218 - 8);
  v27 = *(v216 + 64);
  __chkstk_darwin(v218);
  v217 = &v193 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v230 = type metadata accessor for REMRemindersListDataView.Diff();
  v225 = *(v230 - 8);
  v29 = *(v225 + 64);
  __chkstk_darwin(v230);
  v224 = &v193 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v242 = &v193 - v32;
  v249 = type metadata accessor for REMRemindersListDataView.ListsModel.Sublist();
  v234 = *(v249 - 8);
  v33 = *(v234 + 64);
  __chkstk_darwin(v249);
  v236 = &v193 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v246 = &v193 - v36;
  __chkstk_darwin(v37);
  v238 = &v193 - v38;
  v39 = sub_1000F5104(&qword_100951B48, &unk_1007B7FC0);
  v40 = *(*(v39 - 1) + 64);
  __chkstk_darwin(v39);
  v42 = &v193 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v45 = &v193 - v44;
  v46 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v244 = *(v46 - 8);
  v47 = *(v244 + 64);
  __chkstk_darwin(v46);
  v49 = &v193 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v52 = &v193 - v51;
  __chkstk_darwin(v53);
  v55 = &v193 - v54;
  __chkstk_darwin(v56);
  v58 = &v193 - v57;
  v59 = v252;
  v60 = sub_100753DE0(a1);
  if (v59)
  {
    return;
  }

  v210 = v42;
  v209 = v52;
  v208 = v49;
  v214 = v55;
  v212 = v58;
  v213 = v45;
  v211 = v46;
  v61 = v60;
  v62 = a1;
  v63 = sub_100754FD4(v60, a1, v247, v248);
  v252 = 0;
  v65 = v64;
  v66 = v63;
  v207 = v61;
  v67 = REMRemindersListDataView.AssignedInvocation.Parameters.countCompleted.getter();
  if ((v67 & 1) == 0)
  {
    v205 = a1;
    v203 = v65;
    v70 = 0;
    v71 = v213;
    v72 = v212;
    goto LABEL_13;
  }

  LODWORD(v204) = v67;
  v68 = v252;
  sub_100754818(v207);
  if (v68)
  {

    return;
  }

  v73 = v69;
  v205 = v62;
  v252 = 0;
  if (qword_100936848 != -1)
  {
    goto LABEL_101;
  }

  while (1)
  {
    v74 = type metadata accessor for Logger();
    v75 = sub_100006654(v74, qword_100951B08);
    v201 = &v193;
    v254 = v73;
    __chkstk_darwin(v75);
    *(&v193 - 2) = v76;
    v203 = sub_1000F5104(&qword_10093CB70, &unk_1007A0280);
    v202 = sub_1000F5104(&unk_100939E40, &qword_100791BD0);
    sub_10000CB48(&qword_10093CB78, &qword_10093CB70, &unk_1007A0280);
    v77 = v252;
    v78 = Sequence.map<A>(skippingError:_:)();
    if (v77)
    {

      v252 = 0;
      v79 = _swiftEmptyArrayStorage;
    }

    else
    {
      v79 = v78;
      v252 = 0;
    }

    v203 = v65;
    v254 = v79;
    sub_1000F5104(&qword_10093CB80, &qword_1007A7680);
    sub_10000CB48(&qword_10093CB88, &qword_10093CB80, &qword_1007A7680);
    sub_1001EB528();
    v80 = Sequence<>.unique()();

    v70 = *(v80 + 16);

    v71 = v213;
    v72 = v212;
    v67 = v204;
LABEL_13:
    v81 = v67 ^ 1;
    v204 = REMRemindersListDataView.AssignedInvocation.Parameters.currentUserShareParticipantIDsOverride.getter();
    REMRemindersListDataView.AssignedInvocation.Parameters.showCompleted.getter();
    v201 = v70;
    *v71 = v70;
    v200 = v81;
    *(v71 + 8) = v81 & 1;
    v82 = *(v39 + 12);
    v83 = v39;
    v84 = v244;
    v85 = *(v244 + 16);
    v86 = v211;
    v199 = v244 + 16;
    v198 = v85;
    v85((v71 + v82), v72, v211);
    *(v71 + *(v83 + 16)) = v66;
    v87 = v210;
    sub_100756938(v71, v210);
    v202 = *v87;
    v88 = *(v87 + 8);
    v65 = *(v87 + *(v83 + 16));
    v89 = v87 + *(v83 + 12);
    v90 = v86;
    v91 = v214;
    (*(v84 + 32))(v214, v89, v86);
    v206 = v66;
    if ((v88 & 1) == 0)
    {

      v102 = *(v84 + 8);
      v102(v91, v86);
      sub_1000050A4(v71, &qword_100951B48, &unk_1007B7FC0);
      v102(v72, v86);
      v105 = v202 > 0;
      v107 = v243;
LABEL_25:
      v108 = v239;
      v39 = v251;
      v106 = v242;
      goto LABEL_44;
    }

    v195 = v65[2];
    if (v195)
    {
      v92 = v234;
      v66 = v65 + ((*(v92 + 80) + 32) & ~*(v92 + 80));
      v210 = (v234 + 16);
      v39 = (v253 + 1);
      v202 = (v234 + 8);

      v93 = 0;
      v73 = v245;
      v94 = v249;
      v95 = v223;
      v96 = v238;
      v197 = v65;
      v194 = v66;
      while (2)
      {
        if (v93 >= v65[2])
        {
          goto LABEL_98;
        }

        v97 = v94;
        v98 = v93;
        (*(v92 + 16))(v96, v66 + *(v92 + 72) * v93, v97);
        v196 = v98 + 1;
        v66 = REMRemindersListDataView.ListsModel.Sublist.reminders.getter();
        v99 = 0;
        v65 = *(v66 + 16);
        while (v65 != v99)
        {
          if (v99 >= *(v66 + 16))
          {
            __break(1u);
            goto LABEL_92;
          }

          v100 = v253;
          (v253[2])(v95, v66 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + v253[9] * v99++, v73);
          v101 = REMRemindersListDataView.ReminderLite.isCompleted.getter();
          (v100[1])(v95, v73);
          if (v101)
          {

            (*v202)(v238, v249);
            v103 = *(v244 + 8);
            v104 = v211;
            v103(v214, v211);
            sub_1000050A4(v213, &qword_100951B48, &unk_1007B7FC0);
            v103(v212, v104);
            v105 = 1;
            v39 = v251;
            v106 = v242;
            v107 = v243;
            v108 = v239;
            goto LABEL_44;
          }
        }

        v96 = v238;
        v94 = v249;
        (*v202)(v238, v249);

        v93 = v196;
        v92 = v234;
        v65 = v197;
        v66 = v194;
        if (v196 != v195)
        {
          continue;
        }

        break;
      }

      v90 = v211;
    }

    else
    {
    }

    v109 = v209;
    v198(v209, v214, v90);
    v110 = v244;
    v111 = (*(v244 + 88))(v109, v90);
    v112 = v111 == enum case for REMRemindersListDataView.ShowCompleted.after(_:) || v111 == enum case for REMRemindersListDataView.ShowCompleted.allowlist(_:);
    v107 = v243;
    v113 = v219;
    if (v112)
    {
      v114 = *(v110 + 8);
      v115 = v90;
      v114(v109);
      v116 = v222;
      v117 = v221;
      v118 = v220;
    }

    else
    {
      v115 = v90;
      v116 = v222;
      v117 = v221;
      v118 = v220;
      if (v111 != enum case for REMRemindersListDataView.ShowCompleted.off(_:))
      {
        v106 = v242;
        if (v111 != enum case for REMRemindersListDataView.ShowCompleted.on(_:))
        {
          _diagnoseUnexpectedEnumCase<A>(type:)();
          __break(1u);
          goto LABEL_103;
        }

        v130 = *(v244 + 8);
        v130(v214, v90);
        sub_1000050A4(v213, &qword_100951B48, &unk_1007B7FC0);
        v130(v212, v90);
        v105 = 0;
        goto LABEL_43;
      }
    }

    (*(v118 + 104))(v116, enum case for REMRemindersListDataView.SortingStyle.default(_:), v117);
    v119 = v244;
    v120 = v115;
    (*(v244 + 104))(v208, enum case for REMRemindersListDataView.ShowCompleted.off(_:), v115);
    (*(v237 + 104))(v113, enum case for REMRemindersListDataView.RemindersPrefetch.none(_:), v235);
    v121 = v217;
    REMRemindersListDataView.AssignedInvocation.Parameters.init(sortingStyle:showCompleted:countCompleted:remindersPrefetch:currentUserShareParticipantIDsOverride:)();
    if ((REMRemindersListDataView.AssignedInvocation.Parameters.countCompleted.getter() & 1) == 0)
    {

      (*(v216 + 8))(v121, v218);
      v129 = *(v119 + 8);
      v129(v214, v120);
      sub_1000050A4(v213, &qword_100951B48, &unk_1007B7FC0);
      v129(v212, v120);
      v105 = 0;
      goto LABEL_25;
    }

    v122 = v120;
    v123 = v252;
    sub_100754818(v207);
    v125 = v121;
    v126 = v213;
    v127 = v218;
    if (v123)
    {

      (*(v216 + 8))(v125, v127);
      v128 = *(v244 + 8);
      v128(v214, v122);
      sub_1000050A4(v126, &qword_100951B48, &unk_1007B7FC0);
      v128(v212, v122);
      return;
    }

    v131 = v124;

    if (qword_100936848 != -1)
    {
      swift_once();
    }

    v132 = type metadata accessor for Logger();
    v133 = sub_100006654(v132, qword_100951B08);
    v238 = &v193;
    v254 = v131;
    __chkstk_darwin(v133);
    *(&v193 - 2) = v134;
    sub_1000F5104(&qword_10093CB70, &unk_1007A0280);
    sub_1000F5104(&unk_100939E40, &qword_100791BD0);
    sub_10000CB48(&qword_10093CB78, &qword_10093CB70, &unk_1007A0280);
    v135 = Sequence.map<A>(skippingError:_:)();
    v252 = 0;

    v136 = v216;
    v254 = v135;
    sub_1000F5104(&qword_10093CB80, &qword_1007A7680);
    sub_10000CB48(&qword_10093CB88, &qword_10093CB80, &qword_1007A7680);
    sub_1001EB528();
    v137 = Sequence<>.unique()();
    (*(v136 + 8))(v217, v218);
    v138 = *(v244 + 8);
    v139 = v211;
    v138(v214, v211);
    sub_1000050A4(v126, &qword_100951B48, &unk_1007B7FC0);
    v138(v212, v139);

    v140 = *(v137 + 16);

    v105 = v140 != 0;
    v106 = v242;
    v107 = v243;
LABEL_43:
    v108 = v239;
    v39 = v251;
LABEL_44:
    v141 = [v108 fetchResultTokenToDiffAgainst];
    v142 = v252;
    sub_100534D44(v141, v106);
    v143 = v241;
    v252 = v142;
    if (v142)
    {

      return;
    }

    LODWORD(v240) = v105;

    REMRemindersListDataView.AssignedInvocation.Parameters.remindersPrefetch.getter();
    v144 = v237;
    v145 = v229;
    v146 = v235;
    (*(v237 + 16))();
    v147 = (*(v144 + 88))(v145, v146);
    if (v147 != enum case for REMRemindersListDataView.RemindersPrefetch.initial(_:))
    {
      break;
    }

    (*(v144 + 96))(v145, v146);
    v239 = *v145;
    v66 = *(v206 + 16);
    if (!v66)
    {
      v73 = _swiftEmptyArrayStorage;
LABEL_83:
      v253 = sub_10053DB98(v239, v73, v205, v247, 0);

      v250 = _swiftEmptyArrayStorage;
      goto LABEL_84;
    }

    v148 = v234 + 16;
    v248 = *(v234 + 16);
    v149 = v206 + ((*(v234 + 80) + 32) & ~*(v234 + 80));
    v244 = *(v234 + 72);
    v150 = (v234 + 8);
    v73 = _swiftEmptyArrayStorage;
    v151 = v246;
    while (1)
    {
      v152 = v151;
      v153 = v249;
      v154 = v148;
      v248(v151, v149, v249);
      v65 = REMRemindersListDataView.ListsModel.Sublist.reminders.getter();
      (*v150)(v152, v153);
      v155 = v65[2];
      v156 = v73[2];
      v39 = (v156 + v155);
      if (__OFADD__(v156, v155))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v39 > v73[3] >> 1)
      {
        if (v156 <= v39)
        {
          v158 = v156 + v155;
        }

        else
        {
          v158 = v156;
        }

        v73 = sub_100365A24(isUniquelyReferenced_nonNull_native, v158, 1, v73);
      }

      v39 = v251;
      if (v65[2])
      {
        v159 = v73[2];
        if ((v73[3] >> 1) - v159 < v155)
        {
          goto LABEL_94;
        }

        v160 = v73 + ((*(v253 + 80) + 32) & ~*(v253 + 80)) + v253[9] * v159;
        swift_arrayInitWithCopy();

        v65 = v250;
        v151 = v246;
        if (v155)
        {
          v161 = v73[2];
          v162 = __OFADD__(v161, v155);
          v163 = v161 + v155;
          if (v162)
          {
            goto LABEL_95;
          }

          v73[2] = v163;
        }
      }

      else
      {

        v65 = v250;
        v151 = v246;
        if (v155)
        {
          goto LABEL_93;
        }
      }

      v149 += v244;
      --v66;
      v148 = v154;
      if (!v66)
      {
        goto LABEL_83;
      }
    }

LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    swift_once();
  }

  if (v147 == enum case for REMRemindersListDataView.RemindersPrefetch.updatedInserted(_:))
  {
    v164 = v237;
    (*(v237 + 96))(v145, v146);
    v253 = sub_10053E698(*v145, v106, v205, v247, 0);
    v250 = _swiftEmptyArrayStorage;
LABEL_87:
    v184 = v233;
    v181 = v232;
    v183 = v228;
    v182 = v231;
    goto LABEL_88;
  }

  v164 = v237;
  if (v147 == enum case for REMRemindersListDataView.RemindersPrefetch.initialAndDateRange(_:))
  {
    (*(v237 + 96))(v145, v146);
    v244 = *v145;
    v165 = sub_1000F5104(&qword_100938A78, &qword_1007AABE0);
    sub_100031B58(v145 + *(v165 + 48), v215, &qword_10094B8E0, &unk_1007AABD0);
    v66 = *(v206 + 16);
    if (!v66)
    {
      v73 = _swiftEmptyArrayStorage;
LABEL_90:
      v190 = v205;
      v191 = v247;
      v253 = sub_10053DB98(v244, v73, v205, v247, 0);
      v192 = v215;
      v250 = sub_10053EBE4(v215, v73, v190, v191, 0);

      sub_1000050A4(v192, &qword_10094B8E0, &unk_1007AABD0);
LABEL_84:
      v181 = v232;
      v107 = v243;
      v143 = v241;
      v182 = v231;
      v183 = v228;
      v164 = v237;
      v184 = v233;
LABEL_88:
      (*(v164 + 8))(v184, v235);
      REMRemindersListDataView.ListsModel.init(groups:completedRemindersCount:hasCompletedReminders:prefetchedReminders:prefetchedDueReminders:)();
      (*(v143 + 16))(v183, v39, v181);
      v185 = v143;
      v253 = v203;
      REMRemindersListDataView.AssignedModel.init(listsModel:assignedSmartList:)();
      v186 = v226;
      v187 = v227;
      (*(v226 + 16))(v182, v107, v227);
      v188 = v225;
      v189 = v242;
      (*(v225 + 16))(v224, v242, v230);
      sub_1007569A8(&qword_100951B50, &type metadata accessor for REMRemindersListDataView.AssignedModel);
      sub_1007569A8(&qword_100951B58, &type metadata accessor for REMRemindersListDataView.AssignedModel);
      REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();

      (*(v186 + 8))(v243, v187);
      (*(v185 + 8))(v251, v232);
      (*(v188 + 8))(v189, v230);
      return;
    }

    v166 = v234 + 16;
    v248 = *(v234 + 16);
    v167 = v206 + ((*(v234 + 80) + 32) & ~*(v234 + 80));
    v246 = *(v234 + 72);
    v168 = (v234 + 8);
    v73 = _swiftEmptyArrayStorage;
    v169 = v236;
    while (1)
    {
      v170 = v169;
      v171 = v249;
      v172 = v166;
      v248(v169, v167, v249);
      v65 = REMRemindersListDataView.ListsModel.Sublist.reminders.getter();
      (*v168)(v170, v171);
      v173 = v65[2];
      v174 = v73[2];
      v39 = (v174 + v173);
      if (__OFADD__(v174, v173))
      {
        goto LABEL_96;
      }

      v175 = swift_isUniquelyReferenced_nonNull_native();
      if (!v175 || v39 > v73[3] >> 1)
      {
        if (v174 <= v39)
        {
          v176 = v174 + v173;
        }

        else
        {
          v176 = v174;
        }

        v73 = sub_100365A24(v175, v176, 1, v73);
      }

      v39 = v251;
      if (v65[2])
      {
        v177 = v73[2];
        if ((v73[3] >> 1) - v177 < v173)
        {
          goto LABEL_99;
        }

        v178 = v73 + ((*(v253 + 80) + 32) & ~*(v253 + 80)) + v253[9] * v177;
        swift_arrayInitWithCopy();

        v65 = v250;
        v169 = v236;
        if (v173)
        {
          v179 = v73[2];
          v162 = __OFADD__(v179, v173);
          v180 = v179 + v173;
          if (v162)
          {
            goto LABEL_100;
          }

          v73[2] = v180;
        }
      }

      else
      {

        v65 = v250;
        v169 = v236;
        if (v173)
        {
          goto LABEL_97;
        }
      }

      v167 += v246;
      --v66;
      v166 = v172;
      if (!v66)
      {
        goto LABEL_90;
      }
    }
  }

  if (v147 == enum case for REMRemindersListDataView.RemindersPrefetch.none(_:))
  {
    v250 = _swiftEmptyArrayStorage;
    v253 = _swiftEmptyArrayStorage;
    goto LABEL_87;
  }

LABEL_103:
  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

void sub_100750F0C(id *a1@<X0>, void *a2@<X8>)
{
  v3 = [*a1 reminder];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 objectID];

    *a2 = v5;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100750F80@<X0>(void **a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X8>)
{
  v5 = v4;
  v64 = a3;
  v9 = sub_1000F5104(&qword_100940628, &unk_1007A6A20);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v52 - v11;
  v13 = type metadata accessor for REMRemindersListDataView.ReminderLite();
  v58 = *(v13 - 8);
  v14 = *(v58 + 64);
  __chkstk_darwin(v13);
  v63 = v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for UUID();
  v55 = *(v16 - 8);
  v56 = v16;
  v17 = *(v55 + 64);
  *&v18 = __chkstk_darwin(v16).n128_u64[0];
  v20 = v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  v22 = [v21 identifier];
  if (!v22)
  {
    goto LABEL_28;
  }

  v54 = v21;
  v23 = v22;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v24 = *a2;
  if (!*(*a2 + 16) || (v25 = sub_100363F20(v20), (v26 & 1) == 0))
  {
    (*(v55 + 8))(v20, v56);
LABEL_28:
    v38 = type metadata accessor for REMRemindersListDataView.ListsModel.Sublist();
    return (*(*(v38 - 8) + 56))(a4, 1, 1, v38);
  }

  v27 = *(*(v24 + 56) + 8 * v25);
  if (v27 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v52[1] = v5;
    v53 = v20;
    v52[0] = a4;

    v5 = v27;
    if (!i)
    {
      break;
    }

    a4 = 0;
    v61 = v27 & 0xFFFFFFFFFFFFFF8;
    v62 = v27 & 0xC000000000000001;
    v60 = (v58 + 48);
    v29 = _swiftEmptyArrayStorage;
    v59 = (v58 + 32);
    v57 = v12;
    while (1)
    {
      if (v62)
      {
        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (a4 >= *(v61 + 16))
        {
          goto LABEL_35;
        }

        v30 = *(v5 + 8 * a4 + 32);
      }

      v31 = v30;
      if (__OFADD__(a4, 1))
      {
        break;
      }

      v65 = a4 + 1;
      v32 = [v30 objectID];
      v20 = v32;
      v33 = v64;
      if (*(v64 + 16))
      {
        v34 = sub_100363FF4(v32);
        if (v35)
        {
          v27 = *(*(v33 + 56) + 8 * v34);
        }

        else
        {
          v27 = 0;
        }

        v12 = v57;
      }

      else
      {
        v27 = 0;
      }

      sub_1005384A4(v31, v27, 0, v12);
      if ((*v60)(v12, 1, v13) == 1)
      {
        sub_1000050A4(v12, &qword_100940628, &unk_1007A6A20);
      }

      else
      {
        v20 = *v59;
        (*v59)(v63, v12, v13);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_100365A24(0, v29[2] + 1, 1, v29);
        }

        v37 = v29[2];
        v36 = v29[3];
        v27 = v37 + 1;
        if (v37 >= v36 >> 1)
        {
          v29 = sub_100365A24(v36 > 1, v37 + 1, 1, v29);
        }

        v29[2] = v27;
        (v20)(v29 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v37, v63, v13);
      }

      ++a4;
      if (v65 == i)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

LABEL_29:

  v40 = objc_opt_self();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v42 = [v40 objectIDWithUUID:isa];

  REMObjectID.codable.getter();
  v43 = v54;
  v44 = [v54 name];
  if (v44)
  {
    v45 = v44;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v43 = v54;
  }

  v47 = v55;
  v46 = v56;
  v48 = [v43 color];
  if (v48)
  {
    v49 = v48;
    REMColor.codable.getter();
  }

  v50 = v52[0];
  REMRemindersListDataView.ListsModel.Sublist.init(listID:listName:listColor:reminders:isCustomSmartList:)();
  (*(v47 + 8))(v53, v46);
  v51 = type metadata accessor for REMRemindersListDataView.ListsModel.Sublist();
  return (*(*(v51 - 8) + 56))(v50, 0, 1, v51);
}

id sub_100751558@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v22 - v14;
  result = [*a1 reminder];
  if (result)
  {
    v17 = result;
    v18 = [result identifier];

    if (v18)
    {
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v5 + 56))(v13, 0, 1, v4);
    }

    else
    {
      (*(v5 + 56))(v13, 1, 1, v4);
    }

    sub_100031B58(v13, v15, &unk_100939D90, "8\n\r");
    if ((*(v5 + 48))(v15, 1, v4))
    {
      result = sub_1000050A4(v15, &unk_100939D90, "8\n\r");
      v19 = 0;
      v20 = 0;
    }

    else
    {
      (*(v5 + 16))(v8, v15, v4);
      sub_1000050A4(v15, &unk_100939D90, "8\n\r");
      v19 = UUID.uuidString.getter();
      v20 = v21;
      result = (*(v5 + 8))(v8, v4);
    }

    *a2 = v19;
    a2[1] = v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1007517E0(uint64_t *a1, void **a2)
{
  v96 = a1;
  v4 = type metadata accessor for Date();
  v94 = *(v4 - 8);
  v5 = *(v94 + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v89 - v9;
  v11 = type metadata accessor for UUID();
  v97 = *(v11 - 8);
  v98 = v11;
  v12 = *(v97 + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v89 - v17;
  __chkstk_darwin(v16);
  v20 = &v89 - v19;
  v21 = *a2;
  v22 = [v21 identifier];
  if (v22)
  {
    v93 = v18;
    v95 = v2;
    v23 = v22;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v24 = [v21 reminder];
    if (v24)
    {
      v25 = v24;
      v26 = [v24 objectID];

      if (v26)
      {
        v27 = *v96;
        v92 = v26;
        v28 = sub_100353998(v26, v27);
        if (v28)
        {
          v29 = v28;
          v30 = [v28 identifier];
          if (v30)
          {
            v31 = v30;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v90 = v29;
            v32 = [v29 assignedDate];
            if (v32)
            {
              v33 = v32;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v34.super.isa = Date._bridgeToObjectiveC()().super.isa;
              (*(v94 + 8))(v10, v4);
            }

            else
            {
              v34.super.isa = 0;
            }

            v68 = objc_opt_self();
            UUID.uuidString.getter();
            v69 = String._bridgeToObjectiveC()();

            v91 = v68;
            [v68 orderValueWithAssignedDate:v34.super.isa objectIdentifier:v69];
            v71 = v70;

            v72 = [v21 assignedDate];
            if (v72)
            {
              v73 = v72;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v74.super.isa = Date._bridgeToObjectiveC()().super.isa;
              (*(v94 + 8))(v8, v4);
            }

            else
            {
              v74.super.isa = 0;
            }

            UUID.uuidString.getter();
            v75 = String._bridgeToObjectiveC()();

            [v91 orderValueWithAssignedDate:v74.super.isa objectIdentifier:v75];
            v77 = v76;

            if (v71 > v77)
            {

LABEL_41:
              v87 = v98;
              v88 = *(v97 + 8);
              v88(v93, v98);
              v88(v20, v87);
              return;
            }

            if ((v27 & 0xC000000000000001) == 0)
            {
              v83 = v21;
              v82 = v96;
              v84 = *v96;
              goto LABEL_40;
            }

            if (v27 < 0)
            {
              v78 = v27;
            }

            else
            {
              v78 = v27 & 0xFFFFFFFFFFFFFF8;
            }

            v79 = v21;
            v80 = __CocoaDictionary.count.getter();
            if (!__OFADD__(v80, 1))
            {
              v81 = sub_10021EE08(v78, v80 + 1);
              v82 = v96;
              *v96 = v81;
LABEL_40:
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v99 = *v82;
              v86 = v92;
              sub_1002CB01C(v21, v92, isUniquelyReferenced_nonNull_native);

              *v82 = v99;
              goto LABEL_41;
            }

            goto LABEL_43;
          }
        }

        if ((v27 & 0xC000000000000001) != 0)
        {
          if (v27 < 0)
          {
            v59 = v27;
          }

          else
          {
            v59 = v27 & 0xFFFFFFFFFFFFFF8;
          }

          v60 = v21;
          v61 = __CocoaDictionary.count.getter();
          if (__OFADD__(v61, 1))
          {
            __break(1u);
LABEL_43:
            __break(1u);
            return;
          }

          v62 = sub_10021EE08(v59, v61 + 1);
          v63 = v96;
          *v96 = v62;
        }

        else
        {
          v64 = v21;
          v63 = v96;
          v65 = *v96;
        }

        v66 = swift_isUniquelyReferenced_nonNull_native();
        v99 = *v63;
        v67 = v92;
        sub_1002CB01C(v21, v92, v66);

        *v63 = v99;
        (*(v97 + 8))(v20, v98);
        return;
      }
    }

    if (qword_100936848 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_100006654(v35, qword_100951B08);
    v37 = v97;
    v36 = v98;
    (*(v97 + 16))(v15, v20, v98);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v96 = v20;
      v41 = v37;
      v42 = v40;
      v43 = swift_slowAlloc();
      v99 = v43;
      *v42 = 136315138;
      v44 = UUID.uuidString.getter();
      v46 = v45;
      v47 = *(v41 + 8);
      v48 = v15;
      v49 = v98;
      v47(v48, v98);
      v50 = sub_10000668C(v44, v46, &v99);

      *(v42 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v38, v39, "REMRemindersListDataView.AssignedInvocation: cdAssignment has no owning reminder {identifier: %s}", v42, 0xCu);
      sub_10000607C(v43);

      v47(v96, v49);
    }

    else
    {

      v58 = *(v37 + 8);
      v58(v15, v36);
      v58(v20, v36);
    }
  }

  else
  {
    if (qword_100936848 != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    sub_100006654(v51, qword_100951B08);
    v52 = v21;
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v55 = 138412290;
      v57 = [v52 objectID];
      *(v55 + 4) = v57;
      *v56 = v57;
      _os_log_impl(&_mh_execute_header, v53, v54, "REMRemindersListDataView.AssignedInvocation: cdAssignment has no identifier %@", v55, 0xCu);
      sub_1000050A4(v56, &unk_100938E70, &unk_100797230);
    }
  }
}

void sub_100751FE0(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v37 - v16;
  v18 = *(a1 + 8);
  v19 = [v18 ckAssigneeIdentifier];
  if (v19)
  {
    v20 = v19;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v21 = String.uppercased()();

    v41 = v21;
    __chkstk_darwin(v22);
    *(&v37 - 2) = &v41;
    v23 = sub_100040A74(sub_100040B20, (&v37 - 4), a2);

    if ((v23 & 1) == 0)
    {

      v18 = 0;
    }
  }

  else
  {
    v42 = a3;
    if (qword_100936848 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100006654(v24, qword_100951B08);
    v25 = v18;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v40 = v27;
      v28 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v41._countAndFlagsBits = v38;
      v39 = v28;
      *v28 = 136315138;
      v29 = [v25 identifier];
      if (v29)
      {
        v30 = v29;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v7 + 56))(v15, 0, 1, v6);
      }

      else
      {
        (*(v7 + 56))(v15, 1, 1, v6);
      }

      sub_100031B58(v15, v17, &unk_100939D90, "8\n\r");
      if ((*(v7 + 48))(v17, 1, v6))
      {
        sub_1000050A4(v17, &unk_100939D90, "8\n\r");
        v31 = 0xE300000000000000;
        v32 = 7104878;
      }

      else
      {
        (*(v7 + 16))(v10, v17, v6);
        sub_1000050A4(v17, &unk_100939D90, "8\n\r");
        v33 = UUID.uuidString.getter();
        v31 = v34;
        (*(v7 + 8))(v10, v6);
        v32 = v33;
      }

      v35 = sub_10000668C(v32, v31, &v41._countAndFlagsBits);

      v36 = v39;
      *(v39 + 1) = v35;
      _os_log_impl(&_mh_execute_header, v26, v40, "REMRemindersListDataView.AssignedInvocation: cdAssignment has no ckAssigneeIdentifier {identifier: %s}", v36, 0xCu);
      sub_10000607C(v38);
    }

    else
    {
    }

    v18 = 0;
    a3 = v42;
  }

  *a3 = v18;
}

uint64_t sub_100752474(uint64_t a1)
{
  result = sub_1007569A8(&qword_100951B40, &type metadata accessor for REMRemindersListDataView.AssignedInvocation);
  *(a1 + 8) = result;
  return result;
}

void sub_1007524CC(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v5;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_138:
    v4 = *a1;
    if (!*a1)
    {
      goto LABEL_177;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_171:
      v9 = sub_1004361F4(v9);
    }

    v133 = v9;
    v114 = *(v9 + 2);
    if (v114 >= 2)
    {
      while (*a3)
      {
        v115 = *&v9[16 * v114];
        v116 = *&v9[16 * v114 + 24];
        sub_100753400((*a3 + 8 * v115), (*a3 + 8 * *&v9[16 * v114 + 16]), (*a3 + 8 * v116), v4);
        if (v6)
        {
          goto LABEL_148;
        }

        if (v116 < v115)
        {
          goto LABEL_164;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1004361F4(v9);
        }

        if (v114 - 2 >= *(v9 + 2))
        {
          goto LABEL_165;
        }

        v117 = &v9[16 * v114];
        *v117 = v115;
        *(v117 + 1) = v116;
        v133 = v9;
        sub_100436168(v114 - 1);
        v9 = v133;
        v114 = *(v133 + 2);
        if (v114 <= 1)
        {
          goto LABEL_148;
        }
      }

      goto LABEL_175;
    }

LABEL_148:

    return;
  }

  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8++;
    v127 = v9;
    v120 = v10;
    if (v8 >= v7)
    {
      goto LABEL_42;
    }

    v128 = v7;
    v11 = *a3;
    v132 = *(*a3 + 8 * v8);
    v131 = *(v11 + 8 * v10);
    v12 = v131;
    v13 = v10;
    v14 = v132;
    v4 = v12;
    v129 = sub_1003FB790(&v132, &v131);
    if (v6)
    {

      return;
    }

    v8 = v13 + 2;
    v10 = v13;
    if (v13 + 2 < v128)
    {
      v15 = (v11 + 8 * v13 + 16);
      while (1)
      {
        v125 = v8;
        v16 = *(v15 - 1);
        v17 = *v15;
        v18 = v16;
        v19 = [v17 accountTypeHost];
        REMAccountTypeHost.switchByAccountType<A>(primaryCloudKitBlock:nonPrimaryCloudKitBlock:calDavBlock:exchangeBlock:localBlock:localInternalBlock:anyCloudKitBlock:anyCloudAccountBlock:)();

        v20 = v132;
        if (v132 == 4)
        {
          v20 = 3;
        }

        v4 = v18;
        v21 = [v4 accountTypeHost];
        REMAccountTypeHost.switchByAccountType<A>(primaryCloudKitBlock:nonPrimaryCloudKitBlock:calDavBlock:exchangeBlock:localBlock:localInternalBlock:anyCloudKitBlock:anyCloudAccountBlock:)();

        if (v132 == 4)
        {
          if (v20 < 3)
          {
            goto LABEL_8;
          }

          if (v20 != 3)
          {
            goto LABEL_19;
          }
        }

        else
        {
          if (v20 < v132)
          {
LABEL_8:

            if ((v129 & 1) == 0)
            {
              goto LABEL_41;
            }

            goto LABEL_9;
          }

          if (v132 < v20)
          {
LABEL_19:

            if (v129)
            {
              goto LABEL_135;
            }

            goto LABEL_9;
          }
        }

        v22 = [v17 name];
        if (v22)
        {
          v23 = v22;
          v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v26 = v25;
        }

        else
        {
          v24 = 0;
          v26 = 0xE000000000000000;
        }

        v27 = [v4 name];
        if (v27)
        {
          v28 = v27;
          v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v31 = v30;

          if (v24 != v29)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v31 = 0xE000000000000000;
          if (v24)
          {
            goto LABEL_29;
          }
        }

        if (v26 != v31)
        {
LABEL_29:
          v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v9 = v127;
          v8 = v125;
          if ((v129 ^ v32))
          {
            goto LABEL_32;
          }

          goto LABEL_9;
        }

        v9 = v127;
        v8 = v125;
        if (v129)
        {
LABEL_135:
          v10 = v120;
          if (v8 < v120)
          {
LABEL_170:
            __break(1u);
            goto LABEL_171;
          }

LABEL_35:
          if (v10 < v8)
          {
            v33 = 8 * v8 - 8;
            v34 = 8 * v10;
            v35 = v8;
            do
            {
              if (v10 != --v35)
              {
                v36 = *a3;
                if (!*a3)
                {
                  goto LABEL_174;
                }

                v37 = *(v36 + v34);
                *(v36 + v34) = *(v36 + v33);
                *(v36 + v33) = v37;
              }

              ++v10;
              v33 -= 8;
              v34 += 8;
            }

            while (v10 < v35);
LABEL_41:
            v10 = v120;
          }

          goto LABEL_42;
        }

LABEL_9:
        ++v8;
        ++v15;
        if (v128 == v8)
        {
          v8 = v128;
LABEL_32:
          v10 = v120;
          break;
        }
      }
    }

    if (v129)
    {
      if (v8 < v10)
      {
        goto LABEL_170;
      }

      goto LABEL_35;
    }

LABEL_42:
    v38 = a3[1];
    if (v8 < v38)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_167;
      }

      if (v8 - v10 >= a4)
      {
LABEL_84:
        v10 = v120;
        goto LABEL_85;
      }

      v10 = v120;
      v39 = v120 + a4;
      if (__OFADD__(v120, a4))
      {
        goto LABEL_168;
      }

      if (v39 >= v38)
      {
        v39 = a3[1];
      }

      if (v39 < v120)
      {
LABEL_169:
        __break(1u);
        goto LABEL_170;
      }

      if (v8 != v39)
      {
        break;
      }
    }

LABEL_85:
    if (v8 < v10)
    {
      goto LABEL_166;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1003658B8(0, *(v9 + 2) + 1, 1, v9);
    }

    v67 = *(v9 + 2);
    v66 = *(v9 + 3);
    v68 = v67 + 1;
    v69 = v120;
    if (v67 >= v66 >> 1)
    {
      v113 = sub_1003658B8((v66 > 1), v67 + 1, 1, v9);
      v69 = v120;
      v9 = v113;
    }

    *(v9 + 2) = v68;
    v70 = &v9[16 * v67];
    *(v70 + 4) = v69;
    *(v70 + 5) = v8;
    v4 = *a1;
    if (!*a1)
    {
      goto LABEL_176;
    }

    if (v67)
    {
      while (1)
      {
        v71 = v68 - 1;
        if (v68 >= 4)
        {
          break;
        }

        if (v68 == 3)
        {
          v72 = *(v9 + 4);
          v73 = *(v9 + 5);
          v82 = __OFSUB__(v73, v72);
          v74 = v73 - v72;
          v75 = v82;
LABEL_105:
          if (v75)
          {
            goto LABEL_155;
          }

          v88 = &v9[16 * v68];
          v90 = *v88;
          v89 = *(v88 + 1);
          v91 = __OFSUB__(v89, v90);
          v92 = v89 - v90;
          v93 = v91;
          if (v91)
          {
            goto LABEL_158;
          }

          v94 = &v9[16 * v71 + 32];
          v96 = *v94;
          v95 = *(v94 + 1);
          v82 = __OFSUB__(v95, v96);
          v97 = v95 - v96;
          if (v82)
          {
            goto LABEL_161;
          }

          if (__OFADD__(v92, v97))
          {
            goto LABEL_162;
          }

          if (v92 + v97 >= v74)
          {
            if (v74 < v97)
            {
              v71 = v68 - 2;
            }

            goto LABEL_126;
          }

          goto LABEL_119;
        }

        v98 = &v9[16 * v68];
        v100 = *v98;
        v99 = *(v98 + 1);
        v82 = __OFSUB__(v99, v100);
        v92 = v99 - v100;
        v93 = v82;
LABEL_119:
        if (v93)
        {
          goto LABEL_157;
        }

        v101 = &v9[16 * v71];
        v103 = *(v101 + 4);
        v102 = *(v101 + 5);
        v82 = __OFSUB__(v102, v103);
        v104 = v102 - v103;
        if (v82)
        {
          goto LABEL_160;
        }

        if (v104 < v92)
        {
          goto LABEL_3;
        }

LABEL_126:
        v109 = v71 - 1;
        if (v71 - 1 >= v68)
        {
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
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
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
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
          goto LABEL_169;
        }

        if (!*a3)
        {
          goto LABEL_173;
        }

        v110 = *&v9[16 * v109 + 32];
        v111 = *&v9[16 * v71 + 40];
        sub_100753400((*a3 + 8 * v110), (*a3 + 8 * *&v9[16 * v71 + 32]), (*a3 + 8 * v111), v4);
        if (v6)
        {
          goto LABEL_148;
        }

        if (v111 < v110)
        {
          goto LABEL_151;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1004361F4(v9);
        }

        if (v109 >= *(v9 + 2))
        {
          goto LABEL_152;
        }

        v112 = &v9[16 * v109];
        *(v112 + 4) = v110;
        *(v112 + 5) = v111;
        v133 = v9;
        sub_100436168(v71);
        v9 = v133;
        v68 = *(v133 + 2);
        if (v68 <= 1)
        {
          goto LABEL_3;
        }
      }

      v76 = &v9[16 * v68 + 32];
      v77 = *(v76 - 64);
      v78 = *(v76 - 56);
      v82 = __OFSUB__(v78, v77);
      v79 = v78 - v77;
      if (v82)
      {
        goto LABEL_153;
      }

      v81 = *(v76 - 48);
      v80 = *(v76 - 40);
      v82 = __OFSUB__(v80, v81);
      v74 = v80 - v81;
      v75 = v82;
      if (v82)
      {
        goto LABEL_154;
      }

      v83 = &v9[16 * v68];
      v85 = *v83;
      v84 = *(v83 + 1);
      v82 = __OFSUB__(v84, v85);
      v86 = v84 - v85;
      if (v82)
      {
        goto LABEL_156;
      }

      v82 = __OFADD__(v74, v86);
      v87 = v74 + v86;
      if (v82)
      {
        goto LABEL_159;
      }

      if (v87 >= v79)
      {
        v105 = &v9[16 * v71 + 32];
        v107 = *v105;
        v106 = *(v105 + 1);
        v82 = __OFSUB__(v106, v107);
        v108 = v106 - v107;
        if (v82)
        {
          goto LABEL_163;
        }

        if (v74 < v108)
        {
          v71 = v68 - 2;
        }

        goto LABEL_126;
      }

      goto LABEL_105;
    }

LABEL_3:
    v7 = a3[1];
    if (v8 >= v7)
    {
      goto LABEL_138;
    }
  }

  v130 = *a3;
  v40 = *a3 + 8 * v8 - 8;
  v41 = v120 - v8;
  v121 = v39;
LABEL_53:
  v126 = v8;
  v42 = *(v130 + 8 * v8);
  v122 = v41;
  v123 = v40;
  while (1)
  {
    v43 = *v40;
    v44 = v42;
    v4 = v43;
    v45 = [v44 accountTypeHost];
    REMAccountTypeHost.switchByAccountType<A>(primaryCloudKitBlock:nonPrimaryCloudKitBlock:calDavBlock:exchangeBlock:localBlock:localInternalBlock:anyCloudKitBlock:anyCloudAccountBlock:)();
    if (v6)
    {

      if (qword_100936098 != -1)
      {
        swift_once();
      }

      v46 = type metadata accessor for Logger();
      sub_100006654(v46, qword_100946390);
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&_mh_execute_header, v47, v48, "Unknown or undefined account type in AccountsListDataView", v49, 2u);
      }

      v6 = 0;
    }

    else
    {

      v50 = v132;
      if (v132 != 4)
      {
        goto LABEL_62;
      }
    }

    v50 = 3;
LABEL_62:
    v51 = v4;
    v52 = [v51 accountTypeHost];
    REMAccountTypeHost.switchByAccountType<A>(primaryCloudKitBlock:nonPrimaryCloudKitBlock:calDavBlock:exchangeBlock:localBlock:localInternalBlock:anyCloudKitBlock:anyCloudAccountBlock:)();

    if (v132 == 4)
    {
      if (v50 < 3)
      {
        goto LABEL_64;
      }

      if (v50 != 3)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (v50 < v132)
      {
LABEL_64:

        goto LABEL_78;
      }

      if (v132 < v50)
      {
LABEL_51:

        goto LABEL_52;
      }
    }

    v53 = v44;
    v54 = [v44 name];
    if (v54)
    {
      v55 = v54;
      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v4 = v57;
    }

    else
    {
      v56 = 0;
      v4 = 0xE000000000000000;
    }

    v58 = [v51 name];
    if (v58)
    {
      v59 = v58;
      v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v62 = v61;

      if (v56 != v60)
      {
        goto LABEL_77;
      }
    }

    else
    {
      v62 = 0xE000000000000000;
      if (v56)
      {
        goto LABEL_77;
      }
    }

    if (v4 == v62)
    {

      v9 = v127;
      v6 = 0;
LABEL_52:
      v8 = v126 + 1;
      v40 = v123 + 8;
      v41 = v122 - 1;
      if (v126 + 1 == v121)
      {
        v8 = v121;
        goto LABEL_84;
      }

      goto LABEL_53;
    }

LABEL_77:
    v63 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v9 = v127;
    v6 = 0;
    if ((v63 & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_78:
    if (!v130)
    {
      break;
    }

    v64 = *v40;
    v42 = *(v40 + 8);
    *v40 = v42;
    *(v40 + 8) = v64;
    v40 -= 8;
    if (__CFADD__(v41++, 1))
    {
      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
}

uint64_t sub_100753400(void **__dst, id *__src, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v61 = &v4[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_66;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v59 = v6;
      v14 = *v4;
      v15 = *v6;
      v16 = v14;
      v17 = sub_1003FC504(v15);
      v18 = v16;
      v19 = sub_1003FC504(v18);
      if (v17 < v19)
      {

        v6 = v59;
LABEL_16:
        v20 = v6;
        v21 = v7 == v6++;
        if (v21)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }

      if (v19 < v17)
      {

LABEL_30:
        v6 = v59;
        goto LABEL_31;
      }

      v57 = v4;
      v22 = [v15 name];
      if (v22)
      {
        v23 = v22;
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = v25;
      }

      else
      {
        v24 = 0;
        v26 = 0xE000000000000000;
      }

      v27 = [v18 name];
      if (v27)
      {
        v28 = v26;
        v29 = v27;
        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;

        v26 = v28;
        if (v24 != v30)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v32 = 0xE000000000000000;
        if (v24)
        {
          goto LABEL_34;
        }
      }

      if (v26 == v32)
      {

        v4 = v57;
        goto LABEL_30;
      }

LABEL_34:
      v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v4 = v57;
      v6 = v59;
      if (v33)
      {
        goto LABEL_16;
      }

LABEL_31:
      v20 = v4;
      v21 = v7 == v4++;
      if (v21)
      {
        goto LABEL_12;
      }

LABEL_11:
      *v7 = *v20;
LABEL_12:
      ++v7;
      if (v4 >= v61)
      {
        goto LABEL_10;
      }
    }
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v61 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
    v58 = v4;
    v55 = v7;
LABEL_42:
    v60 = v6;
    v34 = v6 - 1;
    --v5;
    v35 = v61;
    do
    {
      v36 = *--v35;
      v37 = v34;
      v38 = *v34;
      v39 = v36;
      v40 = v38;
      v41 = sub_1003FC504(v39);
      v42 = v40;
      v43 = sub_1003FC504(v42);
      if (v41 < v43)
      {

LABEL_60:
        if (v5 + 1 != v60)
        {
          *v5 = *v37;
        }

        if (v61 <= v4 || (v6 = v37, v37 <= v55))
        {
          v6 = v37;
          goto LABEL_66;
        }

        goto LABEL_42;
      }

      if (v43 >= v41)
      {
        v44 = [v39 name];
        if (v44)
        {
          v45 = v44;
          v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v56 = v47;
        }

        else
        {
          v46 = 0;
          v56 = 0xE000000000000000;
        }

        v48 = [v42 name];
        if (v48)
        {
          v49 = v48;
          v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v52 = v51;
        }

        else
        {
          v50 = 0;
          v52 = 0xE000000000000000;
        }

        if (v46 == v50 && v56 == v52)
        {

          v4 = v58;
        }

        else
        {
          v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v4 = v58;
          if (v53)
          {
            goto LABEL_60;
          }
        }
      }

      else
      {
      }

      if (v5 + 1 != v61)
      {
        *v5 = *v35;
      }

      --v5;
      v61 = v35;
      v34 = v37;
    }

    while (v35 > v4);
    v61 = v35;
    v6 = v60;
  }

LABEL_66:
  if (v6 != v4 || v6 >= (v4 + ((v61 - v4 + (v61 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v61 - v4));
  }

  return 1;
}

void *sub_1007538F0()
{
  sub_100026EF4(0, 2, 0);
  result = _swiftEmptyArrayStorage;
  v2 = _swiftEmptyArrayStorage[2];
  v1 = _swiftEmptyArrayStorage[3];
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_100026EF4((v1 > 1), v2 + 1, 1);
    result = _swiftEmptyArrayStorage;
    v1 = _swiftEmptyArrayStorage[3];
    v3 = v1 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v4;
  v5 = &_swiftEmptyArrayStorage[2 * v2];
  v5[4] = 0x696669746E656469;
  v5[5] = 0xEA00000000007265;
  v6 = v2 + 2;
  if (v3 <= v4)
  {
    sub_100026EF4((v1 > 1), v6, 1);
    result = _swiftEmptyArrayStorage;
  }

  _swiftEmptyArrayStorage[2] = v6;
  v7 = &_swiftEmptyArrayStorage[2 * v4];
  v7[4] = 0xD000000000000011;
  v7[5] = 0x80000001007F9020;
  return result;
}

void sub_100753A34(uint64_t a1, void **a2)
{
  v4 = _s10PredicatesOMa_1();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = (&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *a2;
  v9 = [objc_allocWithZone(REMAccountCapabilities) initWithAccountType:{objc_msgSend(v8, "type")}];
  v10 = [v9 supportsAssignments];

  if (v10)
  {
    v23 = 0;
    v11 = [v8 remObjectIDWithError:&v23];
    v12 = v23;
    if (v11)
    {
      *v7 = v11;
      swift_storeEnumTagMultiPayload();
      v13 = v12;
      v14 = sub_10001F6F4();
      sub_100756A08(v7, _s10PredicatesOMa_1);
      sub_1000060C8(0, &unk_100938880, off_1008D41A8);
      v15 = [objc_allocWithZone(NSFetchRequest) init];
      v16 = [swift_getObjCClassFromMetadata() entity];
      [v15 setEntity:v16];

      [v15 setAffectedStores:0];
      [v15 setPredicate:v14];
      v17 = sub_1007538F0();
      sub_10003450C(v17);

      isa = Array._bridgeToObjectiveC()().super.isa;

      [v15 setPropertiesToFetch:isa];

      if (qword_100936520 != -1)
      {
        swift_once();
      }

      sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
      v19 = Array._bridgeToObjectiveC()().super.isa;
      [v15 setSortDescriptors:v19];

      v20 = NSManagedObjectContext.fetch<A>(_:)();
      if (!v2)
      {
        v23 = v20;
        sub_1000F5104(&qword_10093F6F0, qword_10079A300);
        sub_10000CB48(&qword_100945210, &qword_10093F6F0, qword_10079A300);
        v21 = Sequence.elements<A>(ofType:)();

        sub_100271FCC(v21);
      }
    }

    else
    {
      v22 = v23;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }
}

void *sub_100753DE0(void *a1)
{
  v3 = sub_10000F8A4(3uLL, 0, 7u);
  sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
  v4 = [objc_allocWithZone(NSFetchRequest) init];
  v5 = [swift_getObjCClassFromMetadata() entity];
  [v4 setEntity:v5];

  [v4 setAffectedStores:0];
  [v4 setPredicate:v3];
  NSManagedObjectContext.fetch<A>(_:)();

  if (!v1)
  {

    v15 = sub_10000EEFC(v6);
    sub_100011170(&v15);

    v7 = v15;
    v15 = _swiftEmptyArrayStorage;
    if ((v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
    {
      goto LABEL_15;
    }

    for (i = *(v7 + 16); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v9 = 0;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v9 >= *(v7 + 16))
          {
            goto LABEL_14;
          }

          v10 = *(v7 + 8 * v9 + 32);
        }

        v11 = v10;
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v14 = v10;
        sub_100753A34(&v15, &v14);

        ++v9;
        if (v12 == i)
        {
          a1 = v15;
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      ;
    }

    a1 = _swiftEmptyArrayStorage;
LABEL_17:
  }

  return a1;
}

uint64_t sub_100754018(unint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v41 - v12;
  v14 = REMRemindersListDataView.AssignedInvocation.Parameters.currentUserShareParticipantIDsOverride.getter();
  if (v14)
  {
    return v14;
  }

  v50 = v13;
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

    return _swiftEmptyArrayStorage;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    return _swiftEmptyArrayStorage;
  }

LABEL_6:
  v44 = v6;
  if (result >= 1)
  {
    v18 = 0;
    v51 = a1 & 0xC000000000000001;
    v48 = (v3 + 48);
    v49 = (v3 + 56);
    v43 = (v3 + 16);
    v16 = _swiftEmptyArrayStorage;
    v42 = (v3 + 8);
    *&v15 = 136446210;
    v45 = v15;
    v46 = v11;
    v47 = v2;
    v52 = result;
    do
    {
      if (v51)
      {
        v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v23 = *(a1 + 8 * v18 + 32);
      }

      v24 = v23;
      v25 = [v23 currentUserShareParticipantID];
      if (v25)
      {
        v26 = v25;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v27 = String.uppercased()();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_100365788(0, *(v16 + 2) + 1, 1, v16);
        }

        v29 = *(v16 + 2);
        v28 = *(v16 + 3);
        if (v29 >= v28 >> 1)
        {
          v16 = sub_100365788((v28 > 1), v29 + 1, 1, v16);
        }

        *(v16 + 2) = v29 + 1;
        *&v16[16 * v29 + 32] = v27;
      }

      else
      {
        v30 = [v24 identifier];
        if (v30)
        {
          v31 = v30;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v32 = 0;
        }

        else
        {
          v32 = 1;
        }

        (*v49)(v11, v32, 1, v2);
        v33 = v50;
        sub_100031B58(v11, v50, &unk_100939D90, "8\n\r");
        if ((*v48)(v33, 1, v2))
        {
          sub_1000050A4(v33, &unk_100939D90, "8\n\r");
          v34 = 0xE300000000000000;
          v35 = 7104878;
        }

        else
        {
          v36 = v44;
          (*v43)(v44, v33, v2);
          sub_1000050A4(v33, &unk_100939D90, "8\n\r");
          v35 = UUID.uuidString.getter();
          v34 = v37;
          (*v42)(v36, v2);
        }

        if (qword_100936848 != -1)
        {
          swift_once();
        }

        v38 = type metadata accessor for Logger();
        sub_100006654(v38, qword_100951B08);

        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v39, v40))
        {
          v19 = swift_slowAlloc();
          v20 = a1;
          v21 = swift_slowAlloc();
          v53 = v21;
          *v19 = v45;
          v22 = sub_10000668C(v35, v34, &v53);

          *(v19 + 4) = v22;
          _os_log_impl(&_mh_execute_header, v39, v40, "REMRemindersListDataView.AssignedInvocation - Got a shared to/from me list that doesn't have the current user in the sharee list, huh?! {listID: %{public}s}", v19, 0xCu);
          sub_10000607C(v21);
          a1 = v20;
          v2 = v47;

          v11 = v46;
        }

        else
        {
        }
      }

      ++v18;
    }

    while (v52 != v18);
    return v16;
  }

  __break(1u);
  return result;
}

void sub_100754534(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v28 = _swiftEmptyArrayStorage;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v5 = ~v8;
    v4 = a1 + 64;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v6 = v10 & *(a1 + 64);
    v7 = a1;
  }

  v11 = 0;
  v25 = v7;
  while ((v7 & 0x8000000000000000) != 0)
  {
    v20 = __CocoaDictionary.Iterator.next()();
    if (!v20)
    {
      goto LABEL_23;
    }

    v22 = v21;
    v26 = v20;
    sub_1000060C8(0, &qword_100943230, NSManagedObjectID_ptr);
    swift_dynamicCast();
    v18 = v27[0];
    v26 = v22;
    sub_1000060C8(0, &unk_10093F790, off_1008D4158);
    swift_dynamicCast();
    v19 = v27[0];
    v14 = v11;
    v15 = v6;
    if (!v18)
    {
LABEL_23:
      sub_10001B860();
      return;
    }

LABEL_19:
    v27[0] = v18;
    v27[1] = v19;
    sub_100751FE0(v27, a2, &v26);
    if (v3)
    {

      sub_10001B860();

      return;
    }

    if (v26)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v23 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    v11 = v14;
    v6 = v15;
    v7 = v25;
  }

  v12 = v11;
  v13 = v6;
  v14 = v11;
  if (v6)
  {
LABEL_15:
    v15 = (v13 - 1) & v13;
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v13)));
    v17 = *(*(v7 + 56) + v16);
    v18 = *(*(v7 + 48) + v16);
    v19 = v17;
    if (!v18)
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= ((v5 + 64) >> 6))
    {
      goto LABEL_23;
    }

    v13 = *(v4 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

void sub_100754818(unint64_t a1)
{
  v3 = _s10PredicatesOMa_2();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_23;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    do
    {
      v7 = sub_100754018(a1);
      if (!*(v7 + 16))
      {

        return;
      }

      v27 = v7;
      if (REMRemindersListDataView.AssignedInvocation.Parameters.countCompleted.getter())
      {
        v8 = sub_1000F5104(&qword_10094FE68, &qword_1007B5CC0);
        (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
      }

      else
      {
        REMRemindersListDataView.AssignedInvocation.Parameters.showCompleted.getter();
        v9 = sub_1000F5104(&qword_10094FE68, &qword_1007B5CC0);
        (*(*(v9 - 8) + 56))(v6, 0, 1, v9);
      }

      v10 = sub_1006D5938();
      sub_100756A08(v6, _s10PredicatesOMa_2);
      sub_1000060C8(0, &unk_10093F790, off_1008D4158);
      v11 = objc_allocWithZone(NSFetchRequest);
      v6 = v10;
      v12 = [v11 init];
      v13 = [swift_getObjCClassFromMetadata() entity];
      [v12 setEntity:v13];

      [v12 setAffectedStores:0];
      [v12 setPredicate:v6];

      v14 = sub_1006D68EC();
      sub_10003450C(v14);

      isa = Array._bridgeToObjectiveC()().super.isa;

      [v12 setPropertiesToFetch:isa];

      sub_1006D6C38();
      v16 = Array._bridgeToObjectiveC()().super.isa;

      [v12 setRelationshipKeyPathsForPrefetching:v16];

      v17 = NSManagedObjectContext.fetch<A>(_:)();
      if (v1)
      {

        return;
      }

      v18 = v17;
      v29 = &_swiftEmptyDictionarySingleton;
      if (v17 >> 62)
      {
        v19 = _CocoaArrayWrapper.endIndex.getter();
        if (!v19)
        {
LABEL_26:
          v23 = &_swiftEmptyDictionarySingleton;
LABEL_27:

          v24 = v27;

          sub_100754534(v23, v24);

          swift_bridgeObjectRelease_n();
          return;
        }
      }

      else
      {
        v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v19)
        {
          goto LABEL_26;
        }
      }

      v26 = v6;
      v20 = 0;
      a1 = v18 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v21 = *(v18 + 8 * v20 + 32);
        }

        v22 = v21;
        v6 = (v20 + 1);
        if (__OFADD__(v20, 1))
        {
          break;
        }

        v28 = v21;
        sub_1007517E0(&v29, &v28);

        ++v20;
        if (v6 == v19)
        {
          v23 = v29;
          v6 = v26;
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      ;
    }

    while (_CocoaArrayWrapper.endIndex.getter());
  }
}

void *sub_100754C6C(unint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = sub_1000F5104(&qword_10094C3A8, &qword_1007B0E38);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v29 - v9;
  v11 = type metadata accessor for REMRemindersListDataView.ListsModel.Sublist();
  v32 = *(v11 - 8);
  v12 = *(v32 + 64);
  __chkstk_darwin(v11);
  v39 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v31 = &v29 - v16;
  if (a1 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v15 = v27)
  {
    v18 = 0;
    v37 = a1 & 0xFFFFFFFFFFFFFF8;
    v38 = a1 & 0xC000000000000001;
    v34 = (v32 + 32);
    v35 = (v32 + 48);
    v19 = _swiftEmptyArrayStorage;
    v29 = a2;
    v30 = a3;
    v40 = v15;
    v36 = i;
    v33 = a1;
    while (1)
    {
      if (v38)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v18 >= *(v37 + 16))
        {
          goto LABEL_20;
        }

        v15 = *(a1 + 8 * v18 + 32);
      }

      v21 = v15;
      a1 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      v41 = v15;
      sub_100750F80(&v41, a2, a3, v10);
      if (v3)
      {

        return v19;
      }

      v22 = v40;
      if ((*v35)(v10, 1, v40) == 1)
      {
        v15 = sub_1000050A4(v10, &qword_10094C3A8, &qword_1007B0E38);
      }

      else
      {
        v23 = *v34;
        v24 = v31;
        (*v34)(v31, v10, v22);
        v23(v39, v24, v22);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_100365B14(0, v19[2] + 1, 1, v19);
        }

        v26 = v19[2];
        v25 = v19[3];
        if (v26 >= v25 >> 1)
        {
          v19 = sub_100365B14(v25 > 1, v26 + 1, 1, v19);
        }

        v19[2] = v26 + 1;
        v15 = (v23)(v19 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v26, v39, v40);
        a2 = v29;
        a3 = v30;
      }

      ++v18;
      v20 = a1 == v36;
      a1 = v33;
      if (v20)
      {
        return v19;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    v27 = v15;
    i = _CocoaArrayWrapper.endIndex.getter();
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100754FD4(unint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v194 = a3;
  v213 = a1;
  v214 = a2;
  v5 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v201 = &v178 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v207 = &v178 - v9;
  v209 = type metadata accessor for UUID();
  v197 = *(v209 - 8);
  v10 = *(v197 + 64);
  __chkstk_darwin(v209);
  v208 = &v178 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = sub_1000F5104(&qword_100939860, &unk_10079D480);
  v190 = *(v191 - 8);
  v12 = *(v190 + 64);
  __chkstk_darwin(v191);
  v189 = &v178 - v13;
  v14 = type metadata accessor for REMRemindersListDataView.SortingDirection();
  v205 = *(v14 - 8);
  v206 = v14;
  v15 = *(v205 + 64);
  __chkstk_darwin(v14);
  v192 = &v178 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v196 = &v178 - v18;
  v210 = _s9UtilitiesO12SortingStyleOMa();
  v19 = *(*(v210 - 1) + 64);
  __chkstk_darwin(v210);
  v193 = &v178 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v195 = &v178 - v22;
  __chkstk_darwin(v23);
  v198 = &v178 - v24;
  __chkstk_darwin(v25);
  *&v204 = &v178 - v26;
  __chkstk_darwin(v27);
  v202 = &v178 - v28;
  __chkstk_darwin(v29);
  v203 = &v178 - v30;
  __chkstk_darwin(v31);
  v211 = &v178 - v32;
  v33 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch();
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33 - 8);
  v200 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v199 = *(v200 - 8);
  v35 = *(v199 + 8);
  __chkstk_darwin(v200);
  v37 = &v178 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v40 = &v178 - v39;
  v41 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v42 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41 - 8);
  v44 = &v178 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for REMRemindersListDataView.AssignedInvocation.Parameters();
  v46 = *(v45 - 8);
  v47 = *(v46 + 64);
  __chkstk_darwin(v45);
  v49 = &v178 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  REMRemindersListDataView.AssignedInvocation.Parameters.sortingStyle.getter();
  REMRemindersListDataView.AssignedInvocation.Parameters.showCompleted.getter();
  REMRemindersListDataView.AssignedInvocation.Parameters.remindersPrefetch.getter();
  v50 = a4;
  REMRemindersListDataView.AssignedInvocation.Parameters.currentUserShareParticipantIDsOverride.getter();
  v51 = v213;
  REMRemindersListDataView.AssignedInvocation.Parameters.init(sortingStyle:showCompleted:countCompleted:remindersPrefetch:currentUserShareParticipantIDsOverride:)();
  v52 = v212;
  sub_100754818(v51);
  if (v52)
  {
    v54 = v52;
    (*(v46 + 8))(v49, v45);
    return v54;
  }

  v55 = v53;
  v187 = v44;
  v183 = v37;
  v184 = v40;
  v182 = v50;
  v212 = 0;
  v188 = v49;
  v185 = v46;
  v186 = v45;
  if (qword_100936848 != -1)
  {
    swift_once();
  }

  v56 = type metadata accessor for Logger();
  v57 = sub_100006654(v56, qword_100951B08);
  v218 = v55;
  __chkstk_darwin(v57);
  *(&v178 - 2) = v58;
  sub_1000F5104(&qword_10093CB70, &unk_1007A0280);
  sub_1000060C8(0, &qword_100943230, NSManagedObjectID_ptr);
  sub_10000CB48(&qword_10093CB78, &qword_10093CB70, &unk_1007A0280);
  v59 = v212;
  v60 = Sequence.map<A>(skippingError:_:)();
  v61 = v214;
  v62 = v203;
  if (v59)
  {

    v63 = _swiftEmptyArrayStorage;
  }

  else
  {
    v63 = v60;
  }

  sub_1000060C8(0, &unk_100938890, NSPredicate_ptr);
  sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_100791300;
  *(v64 + 56) = sub_1000F5104(&qword_100937028, &qword_100791C10);
  *(v64 + 64) = sub_10000CB48(&unk_10094F0D0, &qword_100937028, &qword_100791C10);
  *(v64 + 32) = v63;
  v65 = NSPredicate.init(format:_:)();
  v66 = v187;
  v67 = v188;
  REMRemindersListDataView.AssignedInvocation.Parameters.sortingStyle.getter();
  (*(v205 + 104))(v62, enum case for REMRemindersListDataView.SortingDirection.ascending(_:), v206);
  swift_storeEnumTagMultiPayload();
  v68 = v211;
  sub_1005368D8(v66, v62, v211);
  v69 = REMSmartListTypeAssigned;
  v70 = v204;
  v71 = sub_100538914(v204, v61, REMSmartListTypeAssigned, v68);
  v180 = v69;
  v181 = v71;
  v187 = v65;
  v212 = 0;
  sub_1001B1DA0(v70, v202);
  if (qword_1009363F8 != -1)
  {
    swift_once();
  }

  v73 = qword_100974F68;
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  v204 = xmmword_100796900;
  *(inited + 16) = xmmword_100796900;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = swift_getKeyPath();
  v217 = v73;

  sub_100271A80(inited);
  v218 = v217;
  v75 = swift_allocObject();
  v75[1] = v204;
  *(v75 + 4) = swift_getKeyPath();
  *(v75 + 5) = swift_getKeyPath();
  v217 = v75;
  v76 = v211;
  v77 = sub_10053CBE4(v211);
  sub_100271A80(v77);
  v78 = v76;
  v79 = v198;
  sub_1001A4ED8(v78, v198);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v81 = v184;
LABEL_19:
    sub_100756A08(v79, _s9UtilitiesO12SortingStyleOMa);
    v83 = _swiftEmptyArrayStorage;
    goto LABEL_20;
  }

  v81 = v184;
  if (EnumCaseMultiPayload == 3)
  {
    goto LABEL_19;
  }

  v82 = EnumCaseMultiPayload;
  v83 = _swiftEmptyArrayStorage;
  if (v82 == 4)
  {
    sub_100756A08(v79, _s9UtilitiesO12SortingStyleOMa);
    if (qword_1009367F0 != -1)
    {
      swift_once();
    }
  }

LABEL_20:
  sub_100271A80(v83);
  sub_1000F5104(&qword_10093F5A8, &qword_10079DFD0);
  Array<A>.removeDuplicates()();
  Array<A>.removeDuplicates()();
  v198 = v218;
  *&v204 = v217;
  v84 = v187;
  v85 = sub_100050654(v218, v217, 0, v187);
  v86 = v67;
  REMRemindersListDataView.AssignedInvocation.Parameters.showCompleted.getter();
  v87 = v81;
  v88 = v202;
  sub_10053CE0C(v202, v87, 0);
  v89 = *(v199 + 1);
  v89(v87, v200);
  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v91 = v85;

  [v85 setSortDescriptors:isa];

  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v92 = v214;
  v93 = v212;
  v94 = NSManagedObjectContext.fetch<A>(_:)();
  if (v93)
  {

    v54 = _s9UtilitiesO12SortingStyleOMa;
    sub_100756A08(v88, _s9UtilitiesO12SortingStyleOMa);
    (*(v185 + 8))(v86, v186);

    sub_100756A08(v211, _s9UtilitiesO12SortingStyleOMa);
    return v54;
  }

  v199 = v89;
  v95 = v183;
  v96 = v94;
  REMRemindersListDataView.AssignedInvocation.Parameters.showCompleted.getter();
  sub_100539C70(v96, v95, v92, 0);
  v203 = v96;
  v178 = v97;
  v212 = 0;
  v98 = v200;
  v199(v95, v200);
  v99 = v195;
  sub_1001A4ED8(v202, v195);
  v100 = swift_getEnumCaseMultiPayload();
  v179 = v91;
  if (v100 != 4)
  {
    sub_100756A08(v99, _s9UtilitiesO12SortingStyleOMa);
    v106 = v196;
    goto LABEL_27;
  }

  v101 = *v99;
  v102 = *(v99 + 8);
  v104 = *(v99 + 16);
  v103 = *(v99 + 24);
  v105 = *(v99 + 32);

  v106 = v196;
  if (!v101)
  {
    goto LABEL_27;
  }

  v107 = sub_10053C9CC();
  if (!v107)
  {

LABEL_27:
    v112 = v211;
    v113 = v193;
    sub_1001A4ED8(v211, v193);
    result = swift_getEnumCaseMultiPayload();
    if (result > 2)
    {
      v114 = v212;
      v115 = v208;
      if (result == 3)
      {
        v133 = v113;
        v135 = v205;
        v134 = v206;
        (*(v205 + 32))(v106, v133, v206);
        v136 = v184;
        REMRemindersListDataView.AssignedInvocation.Parameters.showCompleted.getter();
        v137 = sub_1001561A0(v106, v136, v203);

        v199(v136, v200);
        result = (*(v135 + 8))(v106, v134);
        v111 = v137;
        goto LABEL_41;
      }

      if (result != 4)
      {
LABEL_37:
        v131 = v207;
        v132 = v197;
        v111 = v203;
        goto LABEL_43;
      }
    }

    else
    {
      v114 = v212;
      v115 = v208;
      if (result == 1)
      {
        v117 = v205;
        v116 = v206;
        v118 = v192;
        v119 = (*(v205 + 32))(v192, v113, v206);
        __chkstk_darwin(v119);
        *(&v178 - 2) = v112;
        sub_10024CAF0(sub_10054024C, &v178 - 4, v203);
        v121 = v120;

        v122 = v184;
        REMRemindersListDataView.AssignedInvocation.Parameters.showCompleted.getter();
        v123 = sub_100156950(v118, v122, v121);

        v199(v122, v200);
        v124 = *(v123 + 16);
        if (v124)
        {
          v212 = v114;
          v216 = _swiftEmptyArrayStorage;
          specialized ContiguousArray.reserveCapacity(_:)();
          v210 = *(v190 + 16);
          v125 = (*(v190 + 80) + 32) & ~*(v190 + 80);
          v200 = v123;
          v126 = v123 + v125;
          v203 = *(v190 + 72);
          v127 = (v190 + 8);
          v128 = v191;
          v129 = v189;
          do
          {
            v210(v129, v126, v128);
            REMSortableElement.element.getter();
            (*v127)(v129, v128);
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v130 = v216[2];
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            v126 += v203;
            --v124;
          }

          while (v124);
          (*(v205 + 8))(v192, v206);

          v111 = v216;
          goto LABEL_33;
        }

        result = (*(v117 + 8))(v118, v116);
        v111 = _swiftEmptyArrayStorage;
LABEL_41:
        v131 = v207;
        goto LABEL_42;
      }
    }

    result = sub_100756A08(v113, _s9UtilitiesO12SortingStyleOMa);
    goto LABEL_37;
  }

  v108 = v107;
  v109 = v184;
  REMRemindersListDataView.AssignedInvocation.Parameters.showCompleted.getter();
  v110 = sub_100155828(v101, v109, v108, v203);

  result = (v199)(v109, v98);
  v111 = v110;
LABEL_33:
  v114 = v212;
  v131 = v207;
  v115 = v208;
LABEL_42:
  v132 = v197;
LABEL_43:
  v216 = _swiftEmptyDictionarySingleton;
  v203 = v111;
  if (!(v111 >> 62))
  {
    v138 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v138)
    {
      goto LABEL_45;
    }

LABEL_61:

    v153 = v178;

    v54 = sub_100754C6C(v213, &v216, v153);
    v154 = v114;

    swift_bridgeObjectRelease_n();
    v155 = v181;
    if (v181)
    {
      v156 = sub_10022EB6C(v181);
      v157 = v186;
      v158 = v185;
      v159 = v188;
      if (v154)
      {

        v160 = v179;
        v161 = v211;
LABEL_64:

        v54 = _s9UtilitiesO12SortingStyleOMa;
        sub_100756A08(v202, _s9UtilitiesO12SortingStyleOMa);
        (*(v158 + 8))(v159, v157);

        sub_100756A08(v161, _s9UtilitiesO12SortingStyleOMa);
        return v54;
      }

      v168 = v156;
      [objc_allocWithZone(REMSmartList) initWithStore:v194 storage:v156];
      v169 = objc_allocWithZone(type metadata accessor for REMSmartList_Codable());
      REMSmartList_Codable.init(_:)();

      goto LABEL_69;
    }

    v162 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v164 = v163;
    v165 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v157 = v186;
    v158 = v185;
    v159 = v188;
    v167 = v194;
    if (v162 == v165 && v164 == v166)
    {
    }

    else
    {
      v171 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v171 & 1) == 0)
      {
        v174 = sub_10003A1B8();
        if (v174)
        {
          v175 = v174;
          v176 = sub_10022F65C(v180, v174);
          if (v154)
          {

            v161 = v211;
            v160 = v187;
            v155 = v179;
            goto LABEL_64;
          }

          v177 = v176;
          [objc_allocWithZone(type metadata accessor for REMSmartList_Codable()) initWithStore:v167 storage:v176];
        }

        else
        {
        }

LABEL_69:
        v170 = v211;
        sub_100756A08(v202, _s9UtilitiesO12SortingStyleOMa);
        (*(v158 + 8))(v159, v157);

        sub_100756A08(v170, _s9UtilitiesO12SortingStyleOMa);
        return v54;
      }
    }

    v172 = objc_opt_self();
    v173 = String._bridgeToObjectiveC()();
    [v172 invalidParameterErrorWithDescription:v173];

    swift_willThrow();
    v54 = _s9UtilitiesO12SortingStyleOMa;
    sub_100756A08(v202, _s9UtilitiesO12SortingStyleOMa);
    (*(v158 + 8))(v159, v157);

    sub_100756A08(v211, _s9UtilitiesO12SortingStyleOMa);
    return v54;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v111 = v203;
  v138 = result;
  if (!result)
  {
    goto LABEL_61;
  }

LABEL_45:
  if (v138 >= 1)
  {
    v139 = 0;
    v212 = v111 & 0xC000000000000001;
    v140 = (v132 + 56);
    v141 = (v132 + 48);
    v210 = (v132 + 32);
    v206 = (v132 + 8);
    while (1)
    {
      v142 = v212 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v111 + 8 * v139 + 32);
      v143 = v142;
      v144 = [v142 list];
      if (!v144)
      {
        break;
      }

      v145 = v114;
      v146 = v144;
      v147 = [v144 identifier];

      if (v147)
      {
        v148 = v201;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v149 = 0;
      }

      else
      {
        v149 = 1;
        v148 = v201;
      }

      v150 = v209;
      (*v140)(v148, v149, 1, v209);
      v151 = v148;
      v152 = v150;
      v131 = v207;
      sub_100031B58(v151, v207, &unk_100939D90, "8\n\r");
      if ((*v141)(v131, 1, v152) == 1)
      {

        v114 = v145;
        goto LABEL_59;
      }

      (*v210)(v115, v131, v152);
      v215 = v143;
      sub_1000F5104(&qword_10093A8A8, &unk_100797EA0);
      sub_10000CB48(&qword_10093A8B0, &qword_10093CAC0, &unk_10079E1E0);
      Dictionary<>.append(_:toCollectionUnderKey:)();
      v131 = v207;
      v115 = v208;
      (*v206)(v208, v152);

      v114 = v145;
LABEL_48:
      ++v139;
      v111 = v203;
      if (v138 == v139)
      {
        goto LABEL_61;
      }
    }

    (*v140)(v131, 1, 1, v209);
LABEL_59:
    sub_1000050A4(v131, &unk_100939D90, "8\n\r");
    goto LABEL_48;
  }

  __break(1u);
  return result;
}

uint64_t sub_100756938(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_100951B48, &unk_1007B7FC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1007569A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100756A08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_100756A84(uint64_t (*a1)(id *), void *a2, unint64_t a3)
{
  v4 = a3;
  v23 = _swiftEmptyArrayStorage;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v8 = 0;
    v20 = v4 & 0xFFFFFFFFFFFFFF8;
    v21 = v4 & 0xC000000000000001;
    v19 = v4;
    while (1)
    {
      if (v21)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *(v20 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v22 = v9;
      v12 = a2;
      v13 = a1(&v22);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v14 = i;
        v15 = a1;
        v16 = a2;
        v17 = v23[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        a2 = v16;
        a1 = v15;
        i = v14;
        v4 = v19;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v23;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = _swiftEmptyArrayStorage;
LABEL_20:

  return v12;
}

uint64_t sub_100756C30()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100951B60);
  v1 = sub_100006654(v0, qword_100951B60);
  if (qword_1009364E0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_100756CF8(uint64_t a1, unint64_t a2)
{
  v11[0] = _swiftEmptyArrayStorage;
  v11[1] = _swiftEmptyArrayStorage;
  if (a2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v7 = *(a2 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v12 = v7;
      sub_100758D1C(v11, &v12, a1);

      if (v2)
      {
      }

      if (v9 == i)
      {
        return v11[0];
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

  return _swiftEmptyArrayStorage;
}

void sub_100756E2C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, char a6, int64_t a7, unint64_t ObjCClassFromMetadata, unint64_t a9, uint64_t a10, unint64_t a11, unint64_t a12, unint64_t a13, unint64_t a14, unint64_t a15, unint64_t a16, unint64_t a17, unint64_t a18)
{
  v25 = *(a3 + 24);
  sub_100546E18(a2, a1, v25);
  if (v18)
  {
    return;
  }

  v133 = a7;
  v26 = *(a3 + 32);
  type metadata accessor for CDIngestionCoordinator();
  v27 = swift_allocObject();
  v28 = a5[1];
  *(v27 + 24) = *a5;
  *(v27 + 16) = 0;
  *(v27 + 112) = _swiftEmptyArrayStorage;
  *(v27 + 120) = _swiftEmptyArrayStorage;
  *(v27 + 128) = _swiftEmptyArrayStorage;
  *(v27 + 136) = _swiftEmptyArrayStorage;
  *(v27 + 72) = a4;
  *(v27 + 80) = v25;
  *(v27 + 88) = a1;
  *(v27 + 40) = v28;
  *(v27 + 54) = *(a5 + 30);

  v29 = v25;
  v30 = a1;
  sub_100009DAC(a5, v139);

  v31 = v29;
  v32 = v30;
  sub_100009DAC(a5, v139);
  *(v27 + 144) = sub_10038F67C(_swiftEmptyArrayStorage);
  *(v27 + 96) = v26;
  v129 = a5;
  *(v27 + 104) = a6 & 1;
  v127 = v32;
  if (v26 > 3)
  {
    if (v26 == 4599)
    {
      sub_1005812D4(a5);

      v35 = v27;
      v34 = v133;
      if (*(v27 + 16))
      {
LABEL_14:
        v33 = 1;
        while (1)
        {
LABEL_15:
          v128 = a11;
          *(v27 + 16) = v33;
          type metadata accessor for REMAccountStorageCDIngestor();
          v36 = swift_allocObject();
          sub_100600EE8(ObjCClassFromMetadata, v36);

          type metadata accessor for REMListStorageCDIngestor();
          v37 = swift_allocObject();
          sub_1006016F4(v34, v37);

          v35 = a9;
          v137 = _swiftEmptyArrayStorage;
          v138 = _swiftEmptyArrayStorage;
          if (a9 >> 62)
          {
LABEL_116:
            v120 = v35;
            v121 = _CocoaArrayWrapper.endIndex.getter();
            v35 = v120;
            v34 = v121;
          }

          else
          {
            v34 = *((a9 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (!v34)
          {
            break;
          }

          v38 = v35;
          sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          if (v34 >= 1)
          {
            v39 = 0;
            v40 = v38;
            v134 = v38 & 0xC000000000000001;
            v41 = 7104878;
            if (v128)
            {
              v41 = a10;
            }

            v126 = v41;
            v42 = 0xE300000000000000;
            if (v128)
            {
              v42 = v128;
            }

            v125 = v42;
            v130 = _swiftEmptyArrayStorage;
            v131 = _swiftEmptyArrayStorage;
            v43 = v38;
            while (1)
            {
              if (v134)
              {
                v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v50 = *(v40 + 8 * v39 + 32);
              }

              v51 = v50;
              v52 = [v50 objectID];
              v53 = [v52 entityName];

              v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v56 = v55;

              v57 = [ObjCClassFromMetadata cdEntityName];
              v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v60 = v59;

              if (v54 == v58 && v56 == v60)
              {

LABEL_38:
                v68 = v51;
                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                if (*((v138 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v138 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  v75 = *((v138 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                v131 = v138;
                goto LABEL_25;
              }

              v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v62)
              {
                goto LABEL_38;
              }

              v63 = [v51 objectID];
              v64 = [v63 entityName];

              v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v67 = v66;

              if (v65 == 0xD000000000000012 && 0x80000001007EFFC0 == v67)
              {
              }

              else
              {
                v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v69 & 1) == 0)
                {
                  if (qword_100936850 != -1)
                  {
                    swift_once();
                  }

                  v71 = type metadata accessor for Logger();
                  sub_100006654(v71, qword_100951B60);
                  sub_100009DAC(v129, v139);
                  v72 = v51;

                  v73 = Logger.logObject.getter();
                  v74 = static os_log_type_t.fault.getter();

                  sub_1005812D4(v129);

                  if (os_log_type_enabled(v73, v74))
                  {
                    v124 = v73;
                    v44 = swift_slowAlloc();
                    v123 = swift_slowAlloc();
                    v139[0] = swift_slowAlloc();
                    *v44 = 136446722;

                    v45 = sub_10000668C(v126, v125, v139);

                    *(v44 + 4) = v45;
                    *(v44 + 12) = 2082;
                    v46 = sub_1000063E8();
                    v48 = sub_10000668C(v46, v47, v139);

                    *(v44 + 14) = v48;
                    *(v44 + 22) = 2114;
                    v49 = [v72 objectID];
                    *(v44 + 24) = v49;
                    *v123 = v49;
                    _os_log_impl(&_mh_execute_header, v124, v74, "RDDatabaseSaver: Attempt to ingest REMReminderStorage with unexpected '\\REMReminderStorage.objectID.entityName' {author: %{public}s, clientIdentity: %{public}s, reminderStorage.objectID: %{public}@}", v44, 0x20u);
                    sub_100039860(v123);

                    swift_arrayDestroy();
                  }

                  else
                  {
                  }

                  goto LABEL_25;
                }
              }

              v70 = v51;
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((v137 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v137 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v76 = *((v137 & 0xFFFFFFFFFFFFFF8) + 0x10);
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

              v130 = v137;
LABEL_25:
              ++v39;
              v40 = v43;
              if (v34 == v39)
              {
                goto LABEL_50;
              }
            }
          }

          __break(1u);
LABEL_131:
          v94 = _CocoaArrayWrapper.endIndex.getter();
LABEL_76:
          v95 = 0;
          while (v94 != v95)
          {
            if ((v34 & 0xC000000000000001) != 0)
            {
              v96 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v95 >= *(v26 + 16))
              {
                goto LABEL_113;
              }

              v96 = *(v34 + 8 * v95 + 32);
            }

            v97 = v96;
            if (__OFADD__(v95, 1))
            {
              __break(1u);
LABEL_113:
              __break(1u);
LABEL_114:
              __break(1u);
LABEL_115:
              __break(1u);
              goto LABEL_116;
            }

            v98 = [v96 remindersICSDisplayOrderChanged];

            ++v95;
            if (v98)
            {
              goto LABEL_14;
            }
          }

          v26 = ObjCClassFromMetadata & 0xFFFFFFFFFFFFFF8;
          if (ObjCClassFromMetadata >> 62)
          {
            v99 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v99 = *((ObjCClassFromMetadata & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v100 = 0;
          while (1)
          {
            v33 = v99 != v100;
            if (v99 == v100)
            {
              break;
            }

            if ((ObjCClassFromMetadata & 0xC000000000000001) != 0)
            {
              v101 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v100 >= *((ObjCClassFromMetadata & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_115;
              }

              v101 = *(ObjCClassFromMetadata + 8 * v100 + 32);
            }

            v102 = v101;
            if (__OFADD__(v100, 1))
            {
              goto LABEL_114;
            }

            v103 = [v101 listsDADisplayOrderChanged];

            ++v100;
            if (v103)
            {
              goto LABEL_15;
            }
          }
        }

        v130 = _swiftEmptyArrayStorage;
        v131 = _swiftEmptyArrayStorage;
LABEL_50:
        if (v131 >> 62)
        {
          v77 = v130;
          if (!_CocoaArrayWrapper.endIndex.getter())
          {
LABEL_53:
            if (v77 >> 62)
            {
              v79 = a12;
              if (!_CocoaArrayWrapper.endIndex.getter())
              {
LABEL_56:
                if (v79 >> 62)
                {
                  v82 = a13;
                  if (!_CocoaArrayWrapper.endIndex.getter())
                  {
LABEL_59:
                    if (v82 >> 62)
                    {
                      v84 = a14;
                      if (!_CocoaArrayWrapper.endIndex.getter())
                      {
LABEL_62:
                        if (v84 >> 62)
                        {
                          v89 = a15;
                          if (!_CocoaArrayWrapper.endIndex.getter())
                          {
LABEL_65:
                            if (v89 >> 62)
                            {
                              v91 = _CocoaArrayWrapper.endIndex.getter();
                            }

                            else
                            {
                              v91 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
                            }

                            if (v91)
                            {
                              type metadata accessor for REMSmartListSectionStorageCDIngestor();
                              v92 = swift_allocObject();
                              sub_10060470C(v89, v92);
                            }

                            if (a16 >> 62)
                            {
                              if (!_CocoaArrayWrapper.endIndex.getter())
                              {
                                goto LABEL_72;
                              }
                            }

                            else if (!*((a16 & 0xFFFFFFFFFFFFFF8) + 0x10))
                            {
LABEL_72:
                              static os_log_type_t.info.getter();
                              measureTimeElapsed(_:level:block:)();
                              if (v128)
                              {
                                v136 = v128;
                              }

                              else
                              {
                                sub_1000063E8();
                                v136 = 0xE300000000000000;
                              }

                              v104 = [v127 transactionAuthor];
                              if (v104)
                              {
                                v105 = v104;
                                static String._unconditionallyBridgeFromObjectiveC(_:)();
                                v107 = v106;
                              }

                              else
                              {
                                v107 = 0;
                              }

                              v108 = String._bridgeToObjectiveC()();

                              [v127 setTransactionAuthor:v108];

                              __chkstk_darwin(v109);
                              static os_log_type_t.info.getter();
                              measureTimeElapsed(_:level:block:)();
                              sub_100759518(a17, v129);
                              sub_100758034(a17, a10, v128);
                              sub_1007588AC(a18, a10, v128);
                              sub_1003DA7DC();
                              if (qword_100936850 != -1)
                              {
                                swift_once();
                              }

                              v110 = type metadata accessor for Logger();
                              sub_100006654(v110, qword_100951B60);
                              sub_100009DAC(v129, v139);

                              v111 = Logger.logObject.getter();
                              v112 = static os_log_type_t.default.getter();

                              sub_1005812D4(v129);
                              if (os_log_type_enabled(v111, v112))
                              {
                                v113 = swift_slowAlloc();
                                v139[0] = swift_slowAlloc();
                                *v113 = 136446466;
                                if (v128)
                                {
                                  v114 = a10;
                                }

                                else
                                {
                                  v114 = 7104878;
                                }

                                v132 = v112;
                                v115 = sub_10000668C(v114, v136, v139);

                                *(v113 + 4) = v115;
                                *(v113 + 12) = 2082;
                                v116 = sub_1000063E8();
                                v118 = sub_10000668C(v116, v117, v139);

                                *(v113 + 14) = v118;
                                _os_log_impl(&_mh_execute_header, v111, v132, "SAVE END {request.author: %{public}s, clientIdentity: %{public}s}", v113, 0x16u);
                                swift_arrayDestroy();
                              }

                              if (v107)
                              {
                                v119 = String._bridgeToObjectiveC()();
                              }

                              else
                              {
                                v119 = 0;
                              }

                              [v127 setTransactionAuthor:v119];

                              return;
                            }

                            type metadata accessor for REMTemplateSectionStorageCDIngestor();
                            v93 = swift_allocObject();
                            sub_100604F08(a16, v93);

                            goto LABEL_72;
                          }
                        }

                        else
                        {
                          v89 = a15;
                          if (!*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10))
                          {
                            goto LABEL_65;
                          }
                        }

                        type metadata accessor for REMListSectionStorageCDIngestor();
                        v90 = swift_allocObject();
                        sub_100603F10(v84, v90);

                        goto LABEL_65;
                      }
                    }

                    else
                    {
                      v84 = a14;
                      if (!*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_62;
                      }
                    }

                    v85 = [objc_opt_self() sharedConfiguration];
                    [v85 templatePublicLinkTTL];
                    v87 = v86;

                    type metadata accessor for REMTemplateStorageCDIngestor();
                    v88 = swift_allocObject();
                    *(v88 + 16) = v87;
                    sub_100603714(v82, v88);

                    goto LABEL_62;
                  }
                }

                else
                {
                  v82 = a13;
                  if (!*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_59;
                  }
                }

                type metadata accessor for REMSmartListStorageCDIngestor();
                v83 = swift_allocObject();
                sub_100602F08(v79, v83);

                goto LABEL_59;
              }
            }

            else
            {
              v79 = a12;
              if (!*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_56;
              }
            }

            v80 = [objc_opt_self() defaultFetchOptions];
            type metadata accessor for REMSavedReminderStorageCDIngestor();
            v81 = swift_allocObject();
            *(v81 + 16) = v80;
            sub_10060270C(v77, v81);

            goto LABEL_56;
          }
        }

        else
        {
          v77 = v130;
          if (!*((v131 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_53;
          }
        }

        type metadata accessor for REMReminderStorageCDIngestor();
        v78 = swift_allocObject();
        sub_100601F00(v131, v78);

        goto LABEL_53;
      }

LABEL_74:
      v26 = v34 & 0xFFFFFFFFFFFFFF8;
      if (!(v34 >> 62))
      {
        v94 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_76;
      }

      goto LABEL_131;
    }

    v34 = v133;
    if (v26 == 4499)
    {
LABEL_13:
      sub_1005812D4(a5);

      v35 = v27;
      if (*(v27 + 16))
      {
        goto LABEL_14;
      }

      goto LABEL_74;
    }

    if (v26 == 4)
    {
      sub_1005812D4(a5);

      v35 = v27;
      *(v27 + 17) = 1;
      if (*(v27 + 16))
      {
        goto LABEL_14;
      }

      goto LABEL_74;
    }
  }

  else
  {
    if ((v26 - 1) < 3)
    {
      sub_1005812D4(a5);

      v33 = 1;
      *(v27 + 17) = 1;
      v34 = v133;
      goto LABEL_15;
    }

    v34 = v133;
    if (!v26)
    {
      goto LABEL_13;
    }
  }

  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v122 = type metadata accessor for Logger();
  sub_100006654(v122, qword_100945730);
  sub_1001F67C8(_swiftEmptyArrayStorage);
  sub_1001F67C8(_swiftEmptyArrayStorage);
  sub_10054573C("unknown mode", 12, 2);
  __break(1u);
}

id sub_100757F90(void *a1)
{
  v3 = 0;
  if ([a1 save:&v3])
  {
    return v3;
  }

  v2 = v3;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

void sub_100758034(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (a1 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      return;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  v8 = sub_1007582BC(a1);
  if (v8)
  {
    v9 = *(v3 + 24);
    v10 = v8;
    sub_1003AA508(v8);
  }

  v11 = sub_100758700(a1);
  if (v11 >> 62)
  {
    v25 = _CocoaArrayWrapper.endIndex.getter();

    if (!v25)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v12)
  {
LABEL_7:
    v13 = *(v4 + 24);
    sub_1003AB484(0);
  }

LABEL_8:
  sub_1000F5104(&qword_100936EB0, &unk_1007954A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791340;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = &type metadata for String;
  v16 = 0x68747561206F6E28;
  if (a3)
  {
    v16 = a2;
  }

  v17 = 0xEB0000000029726FLL;
  if (a3)
  {
    v17 = a3;
  }

  *(inited + 40) = v15;
  *(inited + 48) = v16;
  *(inited + 56) = v17;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v18;

  v20 = sub_1001A6C10(v19);

  *(inited + 120) = sub_1000F5104(&qword_1009472C0, &qword_1007AA0E0);
  *(inited + 96) = v20;
  v21 = sub_1001F67C8(inited);
  swift_setDeallocating();
  sub_1000F5104(&unk_100939260, &unk_100797220);
  swift_arrayDestroy();
  v22 = [objc_opt_self() defaultCenter];
  v23 = *(v4 + 24);
  sub_10045CA90(v21);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v22 postNotificationName:@"RDStoreControllerDidDisableAccountsNotification" object:v23 userInfo:isa];
}

uint64_t sub_1007582BC(unint64_t a1)
{
  v1 = a1;
  v32 = _swiftEmptyArrayStorage;
  v31 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v7 = [v4 accountTypeHost];
      v8 = [v7 isPrimaryCloudKit];

      if (!v8 || ([v5 _isAddingExtraPrimaryCKAccountForTesting] & 1) != 0)
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v9 = v32[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v3;
      if (v6 == i)
      {
        v10 = v32;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v10 = _swiftEmptyArrayStorage;
LABEL_19:
  v11 = v10 < 0 || (v10 & 0x4000000000000000) != 0;
  if (v11)
  {
    if (_CocoaArrayWrapper.endIndex.getter() <= 1)
    {
      goto LABEL_39;
    }
  }

  else if (*(v10 + 16) <= 1)
  {
    goto LABEL_39;
  }

  if (qword_100936850 != -1)
  {
    goto LABEL_52;
  }

  while (1)
  {
    v12 = type metadata accessor for Logger();
    sub_100006654(v12, qword_100951B60);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v13, v14))
    {
      break;
    }

LABEL_38:

LABEL_39:
    if (v11)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_46;
      }
    }

    else if (!*(v10 + 16))
    {
LABEL_46:

      return 0;
    }

    if ((v10 & 0xC000000000000001) != 0)
    {
      v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_44;
    }

    if (*(v10 + 16))
    {
      v27 = *(v10 + 32);
LABEL_44:
      v28 = v27;

      return v28;
    }

    __break(1u);
LABEL_52:
    swift_once();
  }

  v15 = swift_slowAlloc();
  v16 = swift_slowAlloc();
  v32 = v16;
  *v15 = 136446210;
  if (v31)
  {
    v17 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v17 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v17)
  {
LABEL_37:
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    v24 = Array.description.getter();
    v26 = v25;

    v1 = sub_10000668C(v24, v26, &v32);

    *(v15 + 4) = v1;
    _os_log_impl(&_mh_execute_header, v13, v14, "RDDatabaseSaver: Found more than 1 primary cloudkit account storage in array {accountIDs: %{public}s}", v15, 0xCu);
    sub_10000607C(v16);

    goto LABEL_38;
  }

  v29 = v16;
  v30 = v15;
  v31 = v13;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v17 & 0x8000000000000000) == 0)
  {
    v19 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v20 = *(v1 + 8 * v19 + 32);
      }

      v21 = v20;
      ++v19;
      v22 = [v20 remObjectID];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v23 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v17 != v19);
    v16 = v29;
    v15 = v30;
    goto LABEL_37;
  }

  __break(1u);
  return result;
}

void *sub_100758700(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v4 = *(a1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v7 = [v4 accountTypeHost];
      v8 = [v7 isNonPrimaryCloudKit];

      if (v8)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v9 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v3;
      if (v6 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:
  v10 = sub_1007582BC(a1);
  if (v10)
  {
    v11 = v10;
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007953F0;
    *(inited + 32) = v11;
    sub_100272530(inited);
  }

  return _swiftEmptyArrayStorage;
}

void sub_1007588AC(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 >> 62)
  {
LABEL_33:
    v30 = a3;
    v31 = a2;
    v32 = _CocoaArrayWrapper.endIndex.getter();
    a2 = v31;
    a3 = v30;
    v4 = v32;
    if (!v32)
    {
      return;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return;
    }
  }

  v33 = a2;
  v34 = a3;
  v5 = 0;
  v6 = a1 & 0xC000000000000001;
  v36 = v4;
  do
  {
    if (v6)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      v7 = *(a1 + 8 * v5 + 32);
    }

    v8 = v7;
    v9 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if ([v7 inactive] & 1) != 0 || (objc_msgSend(v8, "markedForRemoval"))
    {
    }

    else
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v10 = v6;
      v11 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v6 = v10;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v4 = v36;
    }

    ++v5;
  }

  while (v9 != v4);
  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    v12 = v35;
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_17;
    }
  }

  else
  {
    v12 = v35;
    if (_swiftEmptyArrayStorage[2])
    {
LABEL_17:
      v13 = sub_1007582BC(_swiftEmptyArrayStorage);
      if (v13)
      {
        v14 = v13;
        if (([v13 _isAddingExtraPrimaryCKAccountForTesting] & 1) == 0)
        {
          v15 = *(v12 + 24);
          sub_1003AAB98(v14);
        }
      }

      v16 = sub_100758700(_swiftEmptyArrayStorage);

      if (v16 >> 62)
      {
        v17 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v17)
      {
        v18 = *(v12 + 24);
        sub_1003AB484(1);
      }

      sub_1000F5104(&qword_100936EB0, &unk_1007954A0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100791340;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 72) = &type metadata for String;
      v21 = 0x68747561206F6E28;
      if (v34)
      {
        v21 = v33;
      }

      v22 = 0xEB0000000029726FLL;
      if (v34)
      {
        v22 = v34;
      }

      *(inited + 40) = v20;
      *(inited + 48) = v21;
      *(inited + 56) = v22;
      *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 88) = v23;

      v25 = sub_1001A6C10(v24);

      *(inited + 120) = sub_1000F5104(&qword_1009472C0, &qword_1007AA0E0);
      *(inited + 96) = v25;
      v26 = sub_1001F67C8(inited);
      swift_setDeallocating();
      sub_1000F5104(&unk_100939260, &unk_100797220);
      swift_arrayDestroy();
      v27 = [objc_opt_self() defaultCenter];
      v28 = *(v12 + 24);
      sub_10045CA90(v26);

      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v27 postNotificationName:@"RDStoreControllerDidEnableAccountsNotification" object:v28 userInfo:isa];

      return;
    }
  }
}

uint64_t sub_100758CB8()
{

  return swift_deallocClassInstance();
}

void sub_100758D1C(void *a1, id *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = [*a2 remObjectID];
  v7 = v6;
  if (!*(a3 + 16) || (v8 = sub_10002B924(v6), (v9 & 1) == 0))
  {

    return;
  }

  v10 = *(*(a3 + 56) + 8 * v8);

  v11 = [v5 markedForRemoval];
  if (sub_100240BDC(0x6576697463616E69, 0xE800000000000000, v10))
  {
    v12 = [v5 inactive];
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_100240BDC(0x44497463656A626FLL, 0xE800000000000000, v10);
  v14 = sub_100240BDC(0x6576697463616E69, 0xE800000000000000, v10);

  if (v14)
  {
    v15 = v13 | [v5 inactive] ^ 1;
    if (v11)
    {
      if (v13)
      {
        v16 = &selRef_validationErrorRemoveAccountBeingInserted_;
      }

      else
      {
        v16 = &selRef_validationErrorRemoveAccountBeingActivated_;
      }

      if ((v15 & 1) == 0)
      {
        goto LABEL_26;
      }

LABEL_18:
      v17 = objc_opt_self();
      v18 = [v5 objectID];
      [v17 *v16];

      swift_willThrow();
      return;
    }

    if ((v15 & 1) == 0)
    {
LABEL_25:
      if (!v12)
      {
        return;
      }

      goto LABEL_26;
    }

LABEL_22:
    v19 = v5;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v22 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    goto LABEL_25;
  }

  if (!v11)
  {
    if ((v13 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  if (v13)
  {
    v16 = &selRef_validationErrorRemoveAccountBeingInserted_;
    goto LABEL_18;
  }

LABEL_26:
  v20 = v5;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((a1[1] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((a1[1] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v21 = *((a1[1] & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

void sub_100758FE0(unint64_t a1)
{
  v3 = v1;
  v44 = type metadata accessor for UUID();
  v5 = *(v44 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v44);
  v43 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_41;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v42 = v5;
    v9 = 0;
    v47 = _swiftEmptyArrayStorage;
    v5 = a1 & 0xFFFFFFFFFFFFFF8;
    v45 = _swiftEmptyArrayStorage;
LABEL_4:
    v10 = v9;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v10 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }

        v11 = *(a1 + 8 * v10 + 32);
      }

      v12 = v11;
      v9 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (![v11 markedForRemoval])
      {
        v13 = v12;
        sub_1005E37E8([v13 remObjectID]);
        if (v2)
        {

          goto LABEL_36;
        }

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (v47[2] >= v47[3] >> 1)
        {
          v41 = v3;
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v3 = v41;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v45 = v47;
        if (v9 == i)
        {
LABEL_17:
          v14 = v45;
          v15 = v45[2];
          if (v15)
          {
            v40[1] = v2;
            v41 = v3;
            v47 = _swiftEmptyArrayStorage;
            sub_100026EF4(0, v15, 0);
            v16 = v47;
            v17 = (v42 + 8);
            v18 = 4;
            do
            {
              v19 = v14[v18];
              v20 = [v19 uuid];
              v21 = v43;
              static UUID._unconditionallyBridgeFromObjectiveC(_:)();

              v22 = UUID.uuidString.getter();
              v24 = v23;

              (*v17)(v21, v44);
              v47 = v16;
              v26 = v16[2];
              v25 = v16[3];
              if (v26 >= v25 >> 1)
              {
                sub_100026EF4((v25 > 1), v26 + 1, 1);
                v16 = v47;
              }

              v16[2] = v26 + 1;
              v27 = &v16[2 * v26];
              v27[4] = v22;
              v27[5] = v24;
              ++v18;
              --v15;
              v14 = v45;
            }

            while (v15);

            v3 = v41;
          }

          else
          {
          }

          v46 = 0;
          v28 = *(v3 + 24);
          isa = Array._bridgeToObjectiveC()().super.isa;

          v47 = 0;
          v30 = [v28 createAccountStoresWithIdentifiers:isa didAddNewStores:&v46 error:&v47];

          if ((v30 & 1) == 0)
          {
            v38 = v47;
            _convertNSErrorToError(_:)();

            swift_willThrow();
            return;
          }

          v31 = v46;
          v32 = qword_100936850;
          v33 = v47;
          if (v31 == 1)
          {
            if (v32 != -1)
            {
              swift_once();
            }

            v34 = type metadata accessor for Logger();
            sub_100006654(v34, qword_100951B60);
            v13 = Logger.logObject.getter();
            v35 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v13, v35))
            {
              v36 = swift_slowAlloc();
              *v36 = 0;
              v37 = "RDDatabaseSaver: createMissingAccountStores did add some new stores.";
              goto LABEL_35;
            }
          }

          else
          {
            if (v32 != -1)
            {
              swift_once();
            }

            v39 = type metadata accessor for Logger();
            sub_100006654(v39, qword_100951B60);
            v13 = Logger.logObject.getter();
            v35 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v13, v35))
            {
              v36 = swift_slowAlloc();
              *v36 = 0;
              v37 = "RDDatabaseSaver: createMissingAccountStores did not add any new store because stores for all accounts are already present.";
LABEL_35:
              _os_log_impl(&_mh_execute_header, v13, v35, v37, v36, 2u);
            }
          }

LABEL_36:

          return;
        }

        goto LABEL_4;
      }

      ++v10;
      if (v9 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    ;
  }
}

void sub_100759518(unint64_t a1, uint64_t a2)
{
  v61[0] = a2;
  v67 = type metadata accessor for UUID();
  v3 = *(v67 - 8);
  v4 = v3[8];
  __chkstk_darwin(v67);
  v66 = v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v7 = 0;
    v68 = 0;
    v8 = a1 & 0xC000000000000001;
    v62 = a1 & 0xFFFFFFFFFFFFFF8;
    v63 = (v3 + 1);
    v9 = _swiftEmptyArrayStorage;
    v3 = &selRef_isEmpty;
    v64 = a1 & 0xC000000000000001;
    v65 = i;
    while (1)
    {
      if (v8)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *(v62 + 16))
        {
          goto LABEL_20;
        }

        v10 = *(a1 + 8 * v7 + 32);
      }

      v11 = v10;
      v12 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if ([v10 v3[246]])
      {
        v13 = v11;
        v14 = [v13 remObjectID];
        v15 = v68;
        v16 = sub_1005E37E8(v14);
        v68 = v15;
        if (v15)
        {

          goto LABEL_39;
        }

        v17 = v16;
        v18 = a1;

        v19 = [v17 uuid];
        v20 = v66;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v21 = UUID.uuidString.getter();
        v23 = v22;
        (*v63)(v20, v67);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_100365788(0, *(v9 + 2) + 1, 1, v9);
        }

        v25 = *(v9 + 2);
        v24 = *(v9 + 3);
        if (v25 >= v24 >> 1)
        {
          v9 = sub_100365788((v24 > 1), v25 + 1, 1, v9);
        }

        *(v9 + 2) = v25 + 1;
        v26 = &v9[16 * v25];
        *(v26 + 4) = v21;
        *(v26 + 5) = v23;
        a1 = v18;
        v8 = v64;
        i = v65;
        v3 = &selRef_isEmpty;
      }

      else
      {
      }

      ++v7;
      if (v12 == i)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v9 = _swiftEmptyArrayStorage;
LABEL_23:
  if (*(v9 + 2))
  {
    v27 = sub_100008E70();
    if (v28)
    {
      v29 = v27;
    }

    else
    {
      v29 = 7104878;
    }

    if (v28)
    {
      v30 = v28;
    }

    else
    {
      v30 = 0xE300000000000000;
    }

    if (qword_100936850 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_100006654(v31, qword_100951B60);

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *v34 = 136446466;
      *(v34 + 4) = sub_10000668C(v29, v30, &v69);
      *(v34 + 12) = 2082;

      v35 = Array.description.getter();
      v37 = v36;

      v38 = sub_10000668C(v35, v37, &v69);

      *(v34 + 14) = v38;
      _os_log_impl(&_mh_execute_header, v32, v33, "RDDatabaseSaver: These accounts are marked for removal {clientIdentity: %{public}s, accountIdentifiers: %{public}s}", v34, 0x16u);
      swift_arrayDestroy();
    }

    v39 = *(v61[1] + 24);

    isa = Array._bridgeToObjectiveC()().super.isa;

    v69 = 0;
    v41 = [v39 removeAccountStoresWithIdentifiers:isa error:&v69];

    v42 = v69;
    if (v41)
    {

      v43 = v42;
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        *v46 = 136446466;
        v47 = sub_10000668C(v29, v30, &v69);

        *(v46 + 4) = v47;
        *(v46 + 12) = 2082;

        v48 = Array.description.getter();
        v50 = v49;

        v51 = sub_10000668C(v48, v50, &v69);

        *(v46 + 14) = v51;
        _os_log_impl(&_mh_execute_header, v44, v45, "RDDatabaseSaver: Removed account stores {clientIdentity: %{public}s, accountIdentifiers: %{public}s}", v46, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }
    }

    else
    {
      v52 = v69;

      v68 = _convertNSErrorToError(_:)();

      swift_willThrow();

LABEL_39:
      if (qword_100936850 != -1)
      {
        swift_once();
      }

      v53 = type metadata accessor for Logger();
      sub_100006654(v53, qword_100951B60);
      swift_errorRetain();
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v69 = v57;
        *v56 = 136446210;
        swift_getErrorValue();
        v58 = Error.rem_errorDescription.getter();
        v60 = sub_10000668C(v58, v59, &v69);

        *(v56 + 4) = v60;
        _os_log_impl(&_mh_execute_header, v54, v55, "RDDatabaseSaver: Error performing removeAccountStores(withIdentifiers:). {error: %{public}s}", v56, 0xCu);
        sub_10000607C(v57);
      }

      else
      {
      }
    }
  }

  else
  {
  }
}

uint64_t sub_100759CCC()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100951C50);
  v1 = sub_100006654(v0, qword_100951C50);
  if (qword_100936460 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975068);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void (*sub_100759D94(NSObject *a1, void (*a2)(char *, uint64_t), uint64_t a3, uint64_t a4))(char *, uint64_t)
{
  v50 = a3;
  v51 = a4;
  v54 = a1;
  v55 = a2;
  v5 = type metadata accessor for REMAnalyticsEvent();
  v52 = *(v5 - 8);
  v6 = *(v52 + 64);
  __chkstk_darwin(v5);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for REMTrialNamespace();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for Date();
  v14 = *(v57 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v57);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v56 = &v45 - v19;
  Date.init()();
  v20 = type metadata accessor for REMTrialClient();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v23 = REMTrialClient.init()();
  if (v4)
  {
    v24 = *(v14 + 8);
    v24(v56, v57);
  }

  else
  {
    v25 = v23;
    (*(v10 + 104))(v13, enum case for REMTrialNamespace.grocery(_:), v9);
    v53 = v25;
    v26 = dispatch thunk of REMTrialClient.deploymentId(for:)();
    v27 = v53;
    v48 = v26;
    v49 = v28;
    (*(v10 + 8))(v13, v9);

    v24 = sub_10025A4E4(v54, v55, v27);

    v30 = REMGroceryClassifier.modelTypesDescription.getter();
    v45 = v31;
    v46 = v30;
    Date.init()();
    Date.timeIntervalSince(_:)();
    v33 = v32;
    v47 = *(v14 + 8);
    v47(v18, v57);
    v34 = v5;
    if (qword_100936858 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_100006654(v35, qword_100951C50);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.info.getter();
    v38 = os_log_type_enabled(v36, v37);
    v39 = v52;
    if (v38)
    {
      v40 = swift_slowAlloc();
      *v40 = 134217984;
      *(v40 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v36, v37, "REMGroceryClassifier model loading time: %f", v40, 0xCu);
    }

    type metadata accessor for REMAnalyticsManager();
    static REMAnalyticsManager.shared.getter();
    *v8 = v33;
    v41 = v45;
    *(v8 + 1) = v46;
    *(v8 + 2) = v41;
    *(v8 + 12) = 513;
    *(v8 + 26) = v58;
    *(v8 + 15) = v59;
    v42 = v49;
    *(v8 + 4) = v48;
    *(v8 + 5) = v42;
    v43 = v55;
    *(v8 + 6) = v54;
    *(v8 + 7) = v43;
    v44 = v51;
    *(v8 + 8) = v50;
    *(v8 + 9) = v44;
    *(v8 + 10) = 0;
    *(v8 + 11) = 0;
    (*(v39 + 104))(v8, enum case for REMAnalyticsEvent.loadGroceryModel(_:), v34);

    REMAnalyticsManager.post(event:)();

    (*(v39 + 8))(v8, v34);
    v47(v56, v57);
  }

  return v24;
}

uint64_t sub_10075A404(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v4(v6, v8);
  sub_10001BBA0(v6, v8);
}

uint64_t sub_10075A48C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100951C70);
  v1 = sub_100006654(v0, qword_100951C70);
  if (qword_100936440 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975008);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10075A554()
{
  v0 = type metadata accessor for RDDataAccess();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_10075A74C();
  qword_1009753A0 = result;
  return result;
}

id sub_10075A594()
{
  result = sub_10075A5B8();
  byte_1009753A9 = result & 1;
  return result;
}

id sub_10075A5B8()
{
  v0 = [objc_allocWithZone(REMDataAccessBehaviorManager) init];
  v1 = [v0 isDataAccessEnabled];

  if (v1)
  {
    if (qword_100936860 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100006654(v2, qword_100951C70);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "Did query DataAccess Enabled status {dataAccessEnabled: true}";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v3, v4, v6, v5, 2u);
    }
  }

  else
  {
    if (qword_100936860 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100006654(v7, qword_100951C70);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "BehaviorManager says dataAccess is not enabled {dataAccessEnabled: false}";
      goto LABEL_10;
    }
  }

  return v1;
}

uint64_t sub_10075A74C()
{
  *(v0 + 2) = 0;
  *(v0 + 5) = 0;
  v1 = OBJC_IVAR____TtC7remindd12RDDataAccess_storeControllerNotificationCenterToken;
  v2 = type metadata accessor for RDStoreControllerNotificationCenter.Token(0);
  (*(*(v2 - 8) + 56))(&v0[v1], 1, 1, v2);
  v3 = qword_100951C88;
  if (qword_100951C88 && off_100951C90 && qword_100951C98 && (v4 = *(off_100951C90 + 2), (v5 = swift_dynamicCastObjCProtocolConditional()) != 0))
  {
    v6 = v5;
    type metadata accessor for RDDataAccessREMStoreProvider();
    v7 = swift_allocObject();
    *(v7 + 16) = v3;
    *(v7 + 24) = v4;
    *(v0 + 3) = v7;
    type metadata accessor for RDDataAccessUserNotificationPresentingProvider();
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v0 + 4) = v8;
    v9 = v3;
    v10 = v4;
    swift_unknownObjectRetain();
    return v0;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10075A930()
{
  v1 = sub_1000F5104(&qword_100942CA0, &qword_1007A3810);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v21[-v3];
  v5 = type metadata accessor for RDStoreControllerNotificationCenter.Token(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = v0[5];
  if (!v10)
  {
    goto LABEL_6;
  }

  v11 = OBJC_IVAR____TtC7remindd12RDDataAccess_storeControllerNotificationCenterToken;
  swift_beginAccess();
  sub_10014D7CC(v0 + v11, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10034EE48(v4);
LABEL_6:
    v16 = v0[2];

    v17 = v0[3];

    v18 = v0[4];

    v19 = v0[5];

    sub_10034EE48(v0 + OBJC_IVAR____TtC7remindd12RDDataAccess_storeControllerNotificationCenterToken);
    return v0;
  }

  sub_10014D83C(v4, v9, type metadata accessor for RDStoreControllerNotificationCenter.Token);
  v12 = *(v10 + 40);

  os_unfair_lock_lock(v12);
  __chkstk_darwin(v13);
  *&v21[-16] = v9;
  swift_beginAccess();
  v14 = sub_1002601AC(sub_10014D8A4, &v21[-32]);
  v15 = *(*(v10 + 48) + 16);
  if (v15 >= v14)
  {
    sub_100260C60(v14, v15);
    swift_endAccess();
    os_unfair_lock_unlock(v12);

    sub_10014D8C4(v9, type metadata accessor for RDStoreControllerNotificationCenter.Token);
    goto LABEL_6;
  }

  __break(1u);
  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t sub_10075ABC0()
{
  sub_10075A930();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_10075AC18(uint64_t a1, uint64_t a2)
{
  if (qword_100936860 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006654(v4, qword_100951C70);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "RDDataAccess is starting...", v7, 2u);
  }

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "os_transaction INIT {name: com.apple.remindd.dataaccess.launch}", v10, 2u);
  }

  v11 = os_transaction_create();
  setDAIsRunningInDataAccessD();
  v12 = objc_opt_self();
  sub_1000060C8(0, &qword_100952108, DADaemonPowerAssertionManager_ptr);
  [v12 vendDaemons:swift_getObjCClassFromMetadata()];
  v13 = [objc_opt_self() sharedMain];
  if (v13)
  {
    v14 = v13;
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = a1;
    v15[4] = a2;
    v15[5] = v11;
    v19[4] = sub_10075CB3C;
    v19[5] = v15;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 1107296256;
    v19[2] = sub_100019200;
    v19[3] = &unk_1008FE5E0;
    v16 = _Block_copy(v19);
    v17 = v14;

    swift_unknownObjectRetain();

    sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
    v18 = static OS_dispatch_queue.main.getter();
    [v17 waitForSystemAvailabilityWithCompletionBlock:v16 completionQueue:v18];

    swift_unknownObjectRelease();
    _Block_release(v16);
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

uint64_t sub_10075AF14(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_100936860 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006654(v6, qword_100951C70);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "RDDataAccess has done waitForSystemAvailability, now adding to operation queue to bootstrap DADAgentManager", v9, 2u);
  }

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "os_transaction INIT {name: com.apple.remindd.dataaccess.agentManager.load}", v12, 2u);
  }

  v13 = os_transaction_create();
  if (a1)
  {
    v14 = swift_allocObject();
    v14[2] = a2;
    v14[3] = a3;
    v14[4] = v13;
    v23[4] = sub_10075CB48;
    v23[5] = v14;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 1107296256;
    v23[2] = sub_100019200;
    v23[3] = &unk_1008FE630;
    v15 = _Block_copy(v23);

    swift_unknownObjectRetain();

    [a1 addToOperationsQueueDisabledCheckAndGoBlock:0 wrappedBlock:v15];
    _Block_release(v15);
  }

  result = gDADHighAvailabilityQueue;
  if (gDADHighAvailabilityQueue)
  {
    dispatch_resume(gDADHighAvailabilityQueue);
    byte_1009753A8 = 1;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "RDDataAccess finished starting (note that DADAgentManager may not have done loading up yet)", v19, 2u);
    }

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "os_transaction RELEASE {name: com.apple.remindd.dataaccess.launch}", v22, 2u);
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10075B258(void *a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedManager];
  [v4 setRem_storeProvider:a1[3]];
  v5 = [objc_opt_self() sharedDBWatcher];
  [v4 setRem_localDBWatcher:v5];

  [v4 setRem_userNotificationPresentingProvider:a1[4]];
  v19[4] = j___s7remindd28RDLaunchAnalyticsPostNotifydyySo13OS_xpc_object_pF;
  v19[5] = 0;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_1000EBA84;
  v19[3] = &unk_1008FE658;
  v6 = _Block_copy(v19);
  [v4 setRem_xpcEventHandler:v6];
  _Block_release(v6);
  [v4 _loadAndStartMonitoringAgents:1];
  if (qword_100936860 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100006654(v7, qword_100951C70);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "RDDataAccess has done _loadAndStartMonitoringAgents on DADAgentManager", v10, 2u);
  }

  v11 = [v4 rem_localDBWatcher];
  if (v11)
  {
    v12 = v11;
    v13 = gDADHighAvailabilityQueue;
    v14 = gDADHighAvailabilityQueue;
    sub_10075B56C(v12, v13);

    v15 = a1[2];
    a1[2] = a2;

    *(a2 + 48) = &off_1008FE418;
    swift_unknownObjectWeakAssign();
    sub_100050DF8(a2);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "os_transaction RELEASE {name: com.apple.remindd.dataaccess.agentManager.load}", v18, 2u);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10075B56C(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for RDStoreControllerNotificationCenter.Observer(0);
  v6 = *(v5 - 1);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v53 - v11;
  v13 = sub_1000F5104(&qword_100942CA0, &qword_1007A3810);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = v53 - v18;
  v20 = off_100951C90;
  if (off_100951C90 && a2)
  {
    v55 = v6;
    sub_1000F5104(&unk_100936FD0, &unk_100795D40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100791320;
    v22 = objc_opt_self();

    v54 = a2;
    v56 = v10;
    v23 = [v22 cdEntityName];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53[1] = a1;
    v26 = v25;

    *(inited + 32) = v24;
    *(inited + 40) = v26;
    v27 = [objc_opt_self() cdEntityName];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    *(inited + 48) = v28;
    *(inited + 56) = v30;
    v31 = [objc_opt_self() cdEntityName];
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    *(inited + 64) = v32;
    *(inited + 72) = v34;
    v35 = *(v2 + 40);
    *(v2 + 40) = v20;

    v36 = sub_1001A5660(inited);

    v37 = swift_allocObject();
    swift_unknownObjectWeakInit();

    UUID.init()();
    sub_100026CD8(v19, v12, type metadata accessor for RDStoreControllerNotificationCenter.Token);
    *&v12[v5[5]] = v36;
    *&v12[v5[6]] = v54;
    v38 = &v12[v5[7]];
    *v38 = sub_10002AE54;
    v38[1] = v37;
    v39 = *(v20 + 5);

    os_unfair_lock_lock(v39);
    sub_100026CD8(v12, v56, type metadata accessor for RDStoreControllerNotificationCenter.Observer);
    swift_beginAccess();
    v40 = *(v20 + 6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v20 + 6) = v40;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v40 = sub_100365714(0, v40[2] + 1, 1, v40);
      *(v20 + 6) = v40;
    }

    v43 = v40[2];
    v42 = v40[3];
    if (v43 >= v42 >> 1)
    {
      v40 = sub_100365714(v42 > 1, v43 + 1, 1, v40);
    }

    v40[2] = v43 + 1;
    sub_10014D83C(v56, v40 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v43, type metadata accessor for RDStoreControllerNotificationCenter.Observer);
    *(v20 + 6) = v40;
    swift_endAccess();
    os_unfair_lock_unlock(v39);

    sub_10014D8C4(v12, type metadata accessor for RDStoreControllerNotificationCenter.Observer);

    v44 = type metadata accessor for RDStoreControllerNotificationCenter.Token(0);
    (*(*(v44 - 8) + 56))(v19, 0, 1, v44);
    v45 = OBJC_IVAR____TtC7remindd12RDDataAccess_storeControllerNotificationCenterToken;
    swift_beginAccess();
    sub_10014D740(v19, v2 + v45);
    swift_endAccess();
  }

  else
  {
    v46 = *(v2 + 40);
    *(v2 + 40) = 0;

    v47 = type metadata accessor for RDStoreControllerNotificationCenter.Token(0);
    (*(*(v47 - 8) + 56))(v17, 1, 1, v47);
    v48 = OBJC_IVAR____TtC7remindd12RDDataAccess_storeControllerNotificationCenterToken;
    swift_beginAccess();
    sub_10014D740(v17, v2 + v48);
    swift_endAccess();
    if (qword_100936860 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_100006654(v49, qword_100951C70);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v50, v51, "You should set up a RDStoreControllerNotificationCenter and work queue before starting RDDataAccess in order to observe reminders database.", v52, 2u);
    }
  }
}

id sub_10075BCA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(v5 + 24);
  v18 = a2;
  v19 = a3;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_10075A404;
  v17 = &unk_1008FE450;
  v10 = _Block_copy(&v14);

  v18 = a4;
  v19 = a5;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_10056A480;
  v17 = &unk_1008FE478;
  v11 = _Block_copy(&v14);

  v12 = [v9 observePrimaryCloudKitAccountPersonIDSaltChangesOnQueue:a1 successHandler:v10 errorHandler:v11];
  _Block_release(v11);
  _Block_release(v10);
  return v12;
}

void RDUserNotificationCenter.showNotification(withIdentifier:content:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v16 = a2;
  }

  else
  {
    UUID.init()();
    a1 = UUID.uuidString.getter();
    v16 = v17;
    (*(v12 + 8))(v15, v11);
  }

  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (v18)
  {
    v19 = v18;
    v20 = qword_100936860;

    swift_unknownObjectRetain();
    if (v20 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100006654(v21, qword_100951C70);
    swift_unknownObjectRetain();

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v46 = a4;
      v25 = v24;
      v44 = swift_slowAlloc();
      v49 = v44;
      *v25 = 136446722;
      v45 = a1;
      *(v25 + 4) = sub_10000668C(a1, v16, &v49);
      *(v25 + 12) = 2082;
      v26 = [v19 categoryIdentifier];
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = a5;
      v48 = v6;
      v28 = v27;
      v30 = v29;

      v31 = sub_10000668C(v28, v30, &v49);

      *(v25 + 14) = v31;
      *(v25 + 22) = 2080;
      v32 = [v19 userInfo];
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v23;

      a5 = v47;
      v33 = Dictionary.description.getter();
      v35 = v34;

      v36 = sub_10000668C(v33, v35, &v49);

      *(v25 + 24) = v36;
      _os_log_impl(&_mh_execute_header, v22, v43, "DADREMUserNotificationPresenting: show notification for DA {identifier: %{public}s, category: %{public}s, content.userInfo: %s}", v25, 0x20u);
      swift_arrayDestroy();

      a4 = v46;

      v37 = v45;
    }

    else
    {

      v37 = a1;
    }

    sub_10052554C(v37, v16, v19, a4, a5);

    swift_unknownObjectRelease();
  }

  else
  {

    if (qword_100936860 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_100006654(v38, qword_100951C70);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "DADREMUserNotificationPresenting: content must be kind of UNMutableNotificationContent", v41, 2u);
    }
  }
}

id RDUserNotificationCenter.calDAVSharedListNotificationContent(with:)(void *a1)
{
  v2 = type metadata accessor for RDUserNotificationType();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  *&v5 = __chkstk_darwin(v2).n128_u64[0];
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = [a1 objectID];
  (*(v3 + 104))(v7, enum case for RDUserNotificationType.caldavSharedList(_:), v2);
  v8 = sub_1002D833C(0, a1, 0);
  (*(v3 + 8))(v7, v2);
  return v8;
}

uint64_t type metadata accessor for RDDataAccess()
{
  result = qword_100951CD0;
  if (!qword_100951CD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10075C998()
{
  sub_1001490E0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10075CA8C()
{
  v1 = *(v0 + 16);
  isa = Data._bridgeToObjectiveC()().super.isa;
  (*(v1 + 16))(v1, isa);
}

void sub_10075CAE4()
{
  v1 = *(v0 + 16);
  v2 = _convertErrorToNSError(_:)();
  (*(v1 + 16))(v1, v2);
}

void sub_10075CB80(uint64_t a1, void **a2)
{
  v2 = *a2;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v2 setReminderIdentifier:isa];
}

void sub_10075CBE8(id *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v4 = [*a1 *a4];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
}

void sub_10075CC44(uint64_t a1, void **a2)
{
  v2 = *a2;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v2 setIdentifier:isa];
}

id static REMCDDueDateDeltaAlert.objectID(with:)()
{
  sub_1000F5104(&unk_100950F40, &qword_1007AE990);
  String.init<A>(describing:)();
  v0 = objc_allocWithZone(REMObjectID);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v2 = String._bridgeToObjectiveC()();

  v3 = [v0 initWithUUID:isa entityName:v2];

  return v3;
}

uint64_t sub_10075CDCC()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

unint64_t sub_10075CEDC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10075E8D0(*a1);
  *a2 = result;
  return result;
}

void sub_10075CF0C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x44497463656A626FLL;
  v5 = 0xEC00000065746144;
  v6 = 0x6E6F697461657263;
  v7 = 0x80000001007B81E0;
  v8 = 0xD00000000000001ALL;
  if (v2 == 4)
  {
    v8 = 0xD000000000000010;
  }

  else
  {
    v7 = 0x80000001007B8190;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x80000001007B82E0;
  v10 = 0xD000000000000012;
  if (v2 != 1)
  {
    v10 = 0x4465746144657564;
    v9 = 0xEC00000061746C65;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_10075CFF4@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10075E8D0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10075D01C()
{
  v1 = *v0;
  v2 = 0x44497463656A626FLL;
  v3 = 0x6E6F697461657263;
  v4 = 0xD00000000000001ALL;
  if (v1 == 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000012;
  if (v1 != 1)
  {
    v5 = 0x4465746144657564;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10075D0F0@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E4540, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_10075D154@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1008E19B0, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t REMCDDueDateDeltaAlert.ingestableObjectIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, 0, 1, v4);
}

uint64_t REMCDDueDateDeltaAlert.ingestableObjectIdentifier.setter(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000F5104(&unk_100939D90, "8\n\r");
  Optional.tryUnwrap(_:file:line:)();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v5 + 8))(v8, v4);
  [v2 setIdentifier:isa];

  return sub_1001A4F9C(a1);
}

void (*REMCDDueDateDeltaAlert.ingestableObjectIdentifier.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = *(*(sub_1000F5104(&unk_100939D90, "8\n\r") - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  v5 = v4;
  a1[2] = v4;
  v6 = [v1 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 56))(v5, 0, 1, v7);
  return sub_10075D60C;
}

void sub_10075D60C(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (a2)
  {
    sub_100010364(a1[2], v2, &unk_100939D90, "8\n\r");
    REMCDDueDateDeltaAlert.ingestableObjectIdentifier.setter(v2);
    sub_1001A4F9C(v3);
  }

  else
  {
    REMCDDueDateDeltaAlert.ingestableObjectIdentifier.setter(a1[2]);
  }

  free(v3);

  free(v2);
}

id REMCDDueDateDeltaAlert.remObjectID.getter()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  *&v6 = __chkstk_darwin(v3).n128_u64[0];
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v1 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v15[1] = ObjectType;
  sub_1000F5104(&unk_100950F40, &qword_1007AE990);
  String.init<A>(describing:)();
  v10 = objc_allocWithZone(REMObjectID);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v12 = String._bridgeToObjectiveC()();

  v13 = [v10 initWithUUID:isa entityName:v12];

  (*(v4 + 8))(v8, v3);
  return v13;
}

void REMCDDueDateDeltaAlert.checkedREMObjectID()()
{
  v0 = REMCDDueDateDeltaAlert.remObjectID.getter();
  sub_1000F5104(&unk_10093AF40, &unk_100795790);
  Optional.tryUnwrap(_:file:line:)();
}

void sub_10075DB30(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v16 - v10;
  sub_100010364(a1, &v16 - v10, &unk_100938850, qword_100795AE0);
  v12 = *a2;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  isa = 0;
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v14 + 8))(v11, v13);
  }

  [v12 *a5];
}

id sub_10075DC6C(void *a1)
{
  ObjectType = swift_getObjectType();
  v2 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v81 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v87 = v6;
  v88 = v7;
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v90 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v91 = (&v81 - v11);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v89 = &v81 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v81 - v21;
  __chkstk_darwin(v20);
  v24 = &v81 - v23;
  v25 = [a1 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v26 = [a1 reminderIdentifier];
  v93 = v22;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v27 = [a1 account];
  v94 = v24;
  if (v27 && (v28 = v27, v29 = [v27 remObjectID], v28, v29))
  {
    v30 = [a1 creationDate];
    if (v30)
    {
      v86 = v29;
      ObjectType = v12;
      v31 = v30;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v32 = [objc_allocWithZone(REMDueDateDeltaInterval) initWithUnitInteger:objc_msgSend(a1 count:{"dueDateDeltaUnit"), objc_msgSend(a1, "dueDateDeltaCount")}];
      v33 = v13;
      if (v32)
      {
        v85 = v32;
        (*(v13 + 16))(v89, v94, ObjectType);
        v34 = objc_opt_self();
        isa = UUID._bridgeToObjectiveC()().super.isa;
        v36 = [v34 objectIDWithUUID:isa];

        v38 = v87;
        v37 = v88;
        (*(v88 + 16))(v90, v91, v87);
        v39 = [a1 acknowledgedDate];
        v40 = v33;
        if (v39)
        {
          v41 = v39;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v42 = 0;
        }

        else
        {
          v42 = 1;
        }

        (*(v37 + 56))(v5, v42, 1, v38);
        v82 = [a1 minimumSupportedAppVersion];
        v68.super.isa = UUID._bridgeToObjectiveC()().super.isa;
        v83 = Date._bridgeToObjectiveC()().super.isa;
        v69 = (*(v37 + 48))(v5, 1, v38);
        v84 = v40;
        if (v69 == 1)
        {
          v70 = 0;
        }

        else
        {
          v70 = Date._bridgeToObjectiveC()().super.isa;
          (*(v37 + 8))(v5, v38);
        }

        v71 = objc_allocWithZone(REMDueDateDeltaAlert);
        v72 = v36;
        v73 = v36;
        v75 = v85;
        v74 = v86;
        v76 = v83;
        v54 = [v71 initWithIdentifier:v68.super.isa reminderID:v72 accountID:v86 dueDateDelta:v85 creationDate:v83 acknowledgedDate:v70 minimumSupportedAppVersion:v82];

        v77 = *(v88 + 8);
        v77(v90, v38);
        v78 = *(v84 + 8);
        v79 = ObjectType;
        v78(v89, ObjectType);
        v77(v91, v38);
        v78(v93, v79);
        v78(v94, v79);
      }

      else
      {
        v60 = objc_opt_self();
        v95[0] = 0;
        v95[1] = 0xE000000000000000;
        _StringGuts.grow(_:)(55);
        v61._object = 0x8000000100800DC0;
        v61._countAndFlagsBits = 0xD000000000000026;
        String.append(_:)(v61);
        v96 = [a1 dueDateDeltaUnit];
        v62._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v62);

        v63._countAndFlagsBits = 0x756F6320726F2029;
        v63._object = 0xEC0000002820746ELL;
        String.append(_:)(v63);
        v96 = [a1 dueDateDeltaCount];
        v64._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v64);

        v65._countAndFlagsBits = 41;
        v65._object = 0xE100000000000000;
        String.append(_:)(v65);
        v66 = String._bridgeToObjectiveC()();

        [v60 internalErrorWithDebugDescription:v66];

        swift_willThrow();
        (*(v88 + 8))(v91, v87);
        v67 = *(v13 + 8);
        v54 = ObjectType;
        v67(v93, ObjectType);
        v67(v94, v54);
      }
    }

    else
    {
      v54 = objc_opt_self();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v58 = String._bridgeToObjectiveC()();
      [v54 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v58];

      swift_willThrow();
      v59 = *(v13 + 8);
      v59(v93, v12);
      v59(v94, v12);
    }
  }

  else
  {
    if (qword_100936880 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_100006654(v43, qword_100952128);
    v44 = v13;
    (*(v13 + 16))(v17, v24, v12);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v95[0] = v91;
      *v47 = 136446210;
      sub_1001B397C();
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      v50 = v49;
      v51 = *(v44 + 8);
      v52 = v12;
      v51(v17, v12);
      v53 = sub_10000668C(v48, v50, v95);

      *(v47 + 4) = v53;
      _os_log_impl(&_mh_execute_header, v45, v46, "REMDueDateDeltaAlertCDIngestor: cdDueDateDeltaAlert.account is nil {cdDueDateDeltaAlert.identifier: %{public}s}", v47, 0xCu);
      sub_10000607C(v91);
    }

    else
    {

      v51 = *(v44 + 8);
      v52 = v12;
      v51(v17, v12);
    }

    v54 = objc_opt_self();
    v55 = swift_getObjCClassFromMetadata();
    v56 = String._bridgeToObjectiveC()();
    [v54 unexpectedNilPropertyWithClass:v55 property:v56];

    swift_willThrow();
    v51(v93, v52);
    v51(v94, v52);
  }

  return v54;
}

uint64_t sub_10075E638()
{
  v0 = 0;
  v1 = _swiftEmptyArrayStorage;
  v14 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (*(&off_1008DD240 + v0 + 32) > 2u || !*(&off_1008DD240 + v0 + 32) || *(&off_1008DD240 + v0 + 32) == 1)
    {
      swift_getKeyPath();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v12 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v1 = v14;
      goto LABEL_5;
    }

    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    inited = swift_initStackObject();
    *(inited + 32) = swift_getKeyPath();
    *(inited + 40) = swift_getKeyPath();
    v3 = v1 >> 62;
    if (v1 >> 62)
    {
      v13 = _CocoaArrayWrapper.endIndex.getter();
      v5 = v13 + 2;
      if (__OFADD__(v13, 2))
      {
LABEL_27:
        __break(1u);
        return v1;
      }
    }

    else
    {
      v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v5 = v4 + 2;
      if (__OFADD__(v4, 2))
      {
        goto LABEL_27;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (v3)
      {
        goto LABEL_20;
      }

      v7 = v1 & 0xFFFFFFFFFFFFFF8;
      if (v5 <= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (v3)
      {
LABEL_20:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_21;
      }

      v7 = v1 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = *(v7 + 16);
LABEL_21:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v1 = result;
    v7 = result & 0xFFFFFFFFFFFFFF8;
LABEL_22:
    if (((*(v7 + 24) >> 1) - *(v7 + 16)) < 2)
    {
      break;
    }

    sub_1000F5104(&qword_10093F560, &qword_10079C0F0);
    swift_arrayInitWithCopy();
    swift_setDeallocating();
    result = swift_arrayDestroy();
    v9 = *(v7 + 16);
    v10 = __OFADD__(v9, 2);
    v11 = v9 + 2;
    if (v10)
    {
      goto LABEL_30;
    }

    *(v7 + 16) = v11;
    v14 = v1;
LABEL_5:
    if (++v0 == 6)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

unint64_t sub_10075E8D0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E0E80, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

void sub_10075E91C(void *a1, void *a2, uint64_t a3)
{
  v38 = type metadata accessor for Date();
  v6 = *(v38 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v38);
  v36 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v37 = &v35 - v10;
  v39 = type metadata accessor for UUID();
  v11 = *(*(v39 - 8) + 64);
  *&v13 = __chkstk_darwin(v39).n128_u64[0];
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a3 + 16);
  if (!v16)
  {
    return;
  }

  v17 = (a3 + 32);
  v18 = (v6 + 8);
  v19 = (v12 + 8);
  while (1)
  {
    v23 = *v17++;
    v22 = v23;
    if (v23 > 2)
    {
      if (v22 == 3)
      {
        v29 = [a1 creationDate];
        v30 = v37;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v21.super.isa = Date._bridgeToObjectiveC()().super.isa;
        (*v18)(v30, v38);
        [a2 setCreationDate:v21.super.isa];
      }

      else
      {
        if (v22 != 4)
        {
          [a2 setMinimumSupportedAppVersion:{objc_msgSend(a1, "minimumSupportedAppVersion", v13)}];
          goto LABEL_5;
        }

        v26 = [a1 acknowledgedDate];
        if (v26)
        {
          v27 = v36;
          v28 = v26;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v21.super.isa = Date._bridgeToObjectiveC()().super.isa;
          (*v18)(v27, v38);
        }

        else
        {
          v21.super.isa = 0;
        }

        [a2 setAcknowledgedDate:v21.super.isa];
      }

      goto LABEL_4;
    }

    if (!v22)
    {
      v20 = [a1 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v21.super.isa = UUID._bridgeToObjectiveC()().super.isa;
      (*v19)(v15, v39);
      [a2 setIdentifier:v21.super.isa];
LABEL_4:

      goto LABEL_5;
    }

    if (v22 == 1)
    {
      v24 = [a1 reminderID];
      v25 = [v24 uuid];

      static UUID._unconditionallyBridgeFromObjectiveC(_:)();
      v21.super.isa = UUID._bridgeToObjectiveC()().super.isa;
      (*v19)(v15, v39);
      [a2 setReminderIdentifier:v21.super.isa];
      goto LABEL_4;
    }

    v31 = [a1 dueDateDelta];
    v32 = [v31 unit];

    if (v32 < -32768)
    {
      break;
    }

    if (v32 >= 0x8000)
    {
      goto LABEL_25;
    }

    [a2 setDueDateDeltaUnit:v32];
    v33 = [a1 dueDateDelta];
    v34 = [v33 count];

    if (v34 < -32768)
    {
      goto LABEL_26;
    }

    if (v34 >= 0x8000)
    {
      goto LABEL_27;
    }

    [a2 setDueDateDeltaCount:v34];
LABEL_5:
    if (!--v16)
    {
      return;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
}

id _s7remindd22REMCDDueDateDeltaAlertC11newObjectIDSo09REMObjectH0CyFZ_0()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100936878 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100006654(v5, qword_100952110);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
  }

  UUID.init()();
  v14[1] = type metadata accessor for REMCDDueDateDeltaAlert();
  sub_1000F5104(&unk_100950F40, &qword_1007AE990);
  String.init<A>(describing:)();
  v9 = objc_allocWithZone(REMObjectID);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v11 = String._bridgeToObjectiveC()();

  v12 = [v9 initWithUUID:isa entityName:v11];

  (*(v1 + 8))(v4, v0);
  return v12;
}

void sub_10075EFD4(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v6 *a5];
}

unint64_t sub_10075F08C()
{
  result = qword_100952368;
  if (!qword_100952368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100952368);
  }

  return result;
}

unint64_t sub_10075F114()
{
  result = qword_100952380;
  if (!qword_100952380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100952380);
  }

  return result;
}

void sub_10075F438(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v19 - v8;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v12 = String._bridgeToObjectiveC()();
  v13 = String._bridgeToObjectiveC()();
  v14 = [v11 URLForResource:v12 withExtension:v13];

  if (v14)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10075F670();
    v15 = v2;
    (*(v3 + 16))(v6, v9, v2);
    v16 = v19[1];
    v17 = sub_1003F98D4(v6, a1);
    if (v16)
    {
      (*(v3 + 8))(v9, v2);
    }

    else
    {
      v18 = v17;
      (*(v3 + 8))(v9, v15);
      type metadata accessor for Recipe_CJK();
      *(swift_allocObject() + 16) = v18;
    }
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_10075F670()
{
  result = qword_100946230;
  if (!qword_100946230)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100946230);
  }

  return result;
}

void sub_10075F98C(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v19 - v8;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v12 = String._bridgeToObjectiveC()();
  v13 = String._bridgeToObjectiveC()();
  v14 = [v11 URLForResource:v12 withExtension:v13];

  if (v14)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10075F670();
    v15 = v2;
    (*(v3 + 16))(v6, v9, v2);
    v16 = v19[1];
    v17 = sub_1003F98D4(v6, a1);
    if (v16)
    {
      (*(v3 + 8))(v9, v2);
    }

    else
    {
      v18 = v17;
      (*(v3 + 8))(v9, v15);
      type metadata accessor for Recipe();
      *(swift_allocObject() + 16) = v18;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10075FBBC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Failed to save delete batch. Migration error {deleteError: %@}", &v2, 0xCu);
}

void sub_10075FC98(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "_applicationDocumentsURLForPersonaIdentifier:accountIdentifier: Failed to get group container url, probably simulator, will use fall back value {personaIdentifier: %@, accountIdentifier: %{public}@}", &v3, 0x16u);
}

void sub_10075FD20()
{
  v0 = +[REMLogStore utility];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    v1 = +[NSThread callStackSymbols];
    v2 = 138412290;
    v3 = v1;
    _os_log_fault_impl(&_mh_execute_header, v0, OS_LOG_TYPE_FAULT, "rem_log_fault_if (![NSStringFromClass([REMCDAuxiliaryChangeInfo class]) isEqualToString:NSStringFromClass(self)]) -- A subclass of REMCDAuxiliaryChangeInfo called '- [REMCDAuxiliaryChangeInfo cdEntityName]'. The subclass should override this method. {callstack: %@}", &v2, 0xCu);
  }
}

void sub_10075FDE4(void *a1, NSObject *a2)
{
  v4 = NSStringFromSelector([a1 selector]);
  v5 = [a1 target];
  v6 = 138412546;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Could not get method for selector %@ on target %@", &v6, 0x16u);
}

void sub_100760060()
{
  sub_100042850();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10076016C()
{
  sub_10009DB90();
  v2 = objc_opt_class();
  NSStringFromClass(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = sub_10009DBEC();
  NSStringFromSelector(v3);
  objc_claimAutoreleasedReturnValue();
  sub_10009DC08();
  v9 = [NSString stringWithFormat:@"%@.%@"];
  sub_10009DB80();
  _os_log_fault_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_10076023C()
{
  sub_10009DB90();
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = sub_10009DBEC();
  NSStringFromSelector(v4);
  objc_claimAutoreleasedReturnValue();
  sub_10009DC08();
  v5 = [NSString stringWithFormat:@"%@.%@"];
  *buf = 138543362;
  v7 = v5;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "[%{public}@] Cannot proceed because account.identifier is nil", buf, 0xCu);
}

void sub_100760314()
{
  sub_10009DC14();
  [v1 hasPassedBuddy];
  [v0 isSystemAvailableForSyncing];
  sub_10009DCB4();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xEu);
}

void sub_1007603A8()
{
  sub_100042850();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1007603E4()
{
  sub_100042850();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100760488()
{
  sub_10009DB74();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1007604F8()
{
  sub_10009DB74();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100760568()
{
  sub_10009DB74();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1007605EC()
{
  sub_10009DB74();
  sub_10009DBB8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10076065C()
{
  sub_10009DB74();
  sub_10009DBB8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1007606E0()
{
  sub_10009DB90();
  v2 = objc_opt_class();
  NSStringFromClass(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = sub_10009DBEC();
  NSStringFromSelector(v3);
  objc_claimAutoreleasedReturnValue();
  sub_10009DC08();
  v4 = [NSString stringWithFormat:@"%@.%@"];
  sub_10009DB0C();
  sub_10009DB80();
  _os_log_fault_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_1007607EC()
{
  sub_10009DC14();
  v0 = +[NSProcessInfo processInfo];
  v1 = [v0 operatingSystemVersionString];
  sub_10009DAB0();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100760910(uint64_t a1)
{
  sub_10009DD18(a1, __stack_chk_guard);
  sub_10009DB44();
  sub_10009DCA8();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100760988(uint64_t a1)
{
  sub_10009DD18(a1, __stack_chk_guard);
  sub_10009DBC4();
  sub_10009DBB8();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1007609F8()
{
  sub_10009DB90();
  [v1 ic_loggingDescription];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_10009DCD8() ic_loggingDescription];
  sub_10009DA80();
  sub_10009DADC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100760A9C()
{
  sub_10009DB90();
  [v1 ic_loggingDescription];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_10009DCD8() ic_loggingDescription];
  sub_10009DA80();
  sub_10009DADC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100760B40()
{
  sub_100042850();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100760B7C()
{
  sub_100042850();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100760BB8()
{
  sub_100042850();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100760BF4(void *a1)
{
  v1 = [a1 readinessLoggingDescription];
  sub_10009DB74();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100760C80()
{
  sub_100042850();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100760CBC(uint64_t *a1, uint64_t a2)
{
  v2 = [sub_10009DBDC(a1 a2)];
  sub_10009DA80();
  sub_10009DAEC();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100760D50(uint64_t *a1, uint64_t a2)
{
  v2 = [sub_10009DBDC(a1 a2)];
  sub_10009DA80();
  sub_10009DADC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100760DE4(uint64_t *a1)
{
  sub_10009DC4C(a1, __stack_chk_guard);
  sub_10009DBC4();
  sub_10004230C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100760E54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  sub_10009DA98();
  sub_10009DB58();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100760EC8()
{
  sub_10009DB74();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100760F38()
{
  sub_10009DB74();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100760FA8(void *a1)
{
  v1 = [a1 firstObject];
  sub_10009DB74();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100761034()
{
  sub_100042850();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1007610A4(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_10009DB44();
  sub_10009DB58();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100761184(uint64_t a1)
{
  sub_10009DD18(a1, __stack_chk_guard);
  v2 = *v1;
  sub_10009DBC4();
  sub_10009DB58();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100761204()
{
  sub_10009DB74();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100761274()
{
  sub_10009DB74();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10076134C()
{
  sub_10009DB90();
  v1 = [v0 ic_loggingDescription];
  sub_10009DB74();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1007613EC()
{
  v1 = +[REMLog cloudkit];
  if (sub_10009DC70(v1))
  {
    sub_10009DAEC();
    _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
  }
}

void sub_1007614A4(uint64_t a1, void *a2)
{
  v4 = +[REMLog cloudkit];
  if (sub_10009DC70(v4))
  {
    v5 = [a2 ic_loggingDescription];
    sub_10009DC58();
    sub_10009DAFC();
    sub_10009DAEC();
    _os_log_fault_impl(v6, v7, v8, v9, v10, 0x16u);
  }
}

void sub_1007615CC()
{
  sub_10009DB90();
  v1 = [sub_10009DBD0(v0) ic_loggingDescription];
  sub_10009DAB0();
  sub_10009DAEC();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100761660()
{
  sub_10009DC14();
  v2 = *(v1 + 64);
  v3 = [*(v1 + 56) ic_loggingDescription];
  v4 = [*(v0 + 72) ic_loggingDescription];
  sub_10009DD24();
  sub_10009DCF0();
  sub_10009DB68();
  _os_log_debug_impl(v5, v6, OS_LOG_TYPE_DEBUG, v7, v8, 0x20u);
}

void sub_100761724()
{
  sub_10009DB90();
  [sub_10009DCCC(v1) ic_loggingDescription];
  objc_claimAutoreleasedReturnValue();
  sub_10009DC20();
  sub_10009DA98();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1007617B8(void *a1)
{
  v1 = [a1 recordID];
  v2 = [v1 ic_loggingDescription];
  sub_10009DB74();
  sub_10009DADC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10076185C(void *a1)
{
  v1 = [a1 recordID];
  v2 = [v1 ic_loggingDescription];
  sub_10009DB74();
  sub_10009DAEC();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_100761900(uint64_t a1, void *a2)
{
  v2 = [a2 ic_loggingDescription];
  sub_10009DC58();
  sub_10009DAFC();
  sub_10009DADC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1007619A0(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_10009DBC4();
  sub_10004230C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100761A14(uint8_t *buf, uint64_t a2, os_log_t log)
{
  *buf = 134217984;
  *(buf + 4) = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Grouping modify operations into %ld batches", buf, 0xCu);
}

void sub_100761A90(uint64_t a1, uint64_t a2)
{
  v2 = [sub_10009DB20(a1 a2)];
  sub_10009DC64(v2, 5.7779e-34);
  sub_10009DC2C(&_mh_execute_header, v3, v4, "Ending batch because record does not fit: %@");
}

void sub_100761AE8(uint64_t a1, uint64_t a2)
{
  v4 = [sub_10009DB20(a1 a2)];
  sub_10009DC64(v4, 5.8381e-34);
  _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Ending batch because an impossible batch was detected ICCloudContext: %{public}@", v3, 0xCu);
}

void sub_100761B50(uint64_t a1, uint64_t a2)
{
  v2 = [sub_10009DB20(a1 a2)];
  sub_10009DC64(v2, 5.7779e-34);
  sub_10009DC2C(&_mh_execute_header, v3, v4, "Adding record to save batch: %@");
}

void sub_100761C80(void *a1)
{
  v1 = [a1 ic_loggingDescription];
  sub_10009DB74();
  sub_10009DB68();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0x12u);
}

void sub_100761D28()
{
  sub_10009DCE4();
  v1 = [v0 ic_loggingDescription];
  sub_10009DAC8();
  sub_10009DAEC();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100761DC4()
{
  sub_10009DB90();
  v1 = [v0 ic_loggingDescription];
  sub_10009DAB0();
  sub_10009DAEC();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100761E58()
{
  sub_10009DB90();
  v3 = [sub_10009DC98(v1 v2)];
  v4 = [*(v0 + 64) ic_loggingDescription];
  sub_10009DD24();
  sub_10009DB34();
  sub_10009DCF0();
  sub_10009DB68();
  _os_log_debug_impl(v5, v6, OS_LOG_TYPE_DEBUG, v7, v8, 0x20u);
}

void sub_100761F0C()
{
  sub_10009DB90();
  v3 = [sub_10009DC98(v1 v2)];
  v4 = [*(v0 + 64) ic_loggingDescription];
  sub_10009DD24();
  sub_10009DB34();
  sub_10009DCF0();
  sub_10009DADC();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);
}

void sub_100761FBC()
{
  sub_10009DB90();
  v3 = [sub_10009DC98(v1 v2)];
  v4 = [*(v0 + 64) ic_loggingDescription];
  sub_10009DD24();
  sub_10009DB34();
  sub_10009DCF0();
  sub_10009DADC();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);
}

void sub_10076206C(uint64_t a1)
{
  v1 = [sub_10009DBD0(a1) ic_loggingDescription];
  sub_10009DB74();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1007620F8()
{
  sub_10009DB90();
  [sub_10009DBD0(v1) ic_loggingDescription];
  objc_claimAutoreleasedReturnValue();
  sub_10009DC20();
  sub_10009DA98();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10076218C()
{
  sub_10009DB90();
  [sub_10009DBD0(v1) ic_loggingDescription];
  objc_claimAutoreleasedReturnValue();
  sub_10009DC20();
  sub_10009DA98();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100762220()
{
  sub_10009DB90();
  v1 = [sub_10009DBD0(v0) ic_loggingDescription];
  sub_10009DAB0();
  sub_10009DAEC();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1007622B4()
{
  sub_10009DCE4();
  v1 = [v0 ic_loggingDescription];
  sub_10009DAC8();
  sub_10009DAEC();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100762350()
{
  sub_10009DB74();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1007623C0()
{
  sub_10009DB74();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100762430()
{
  sub_10009DB74();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1007624A0()
{
  sub_10009DC14();
  v3 = *(v2 + 32);
  v4 = objc_opt_class();
  v5 = *(v0 + 32);
  v6 = v4;
  v7 = [sub_10009DBEC() identifier];
  sub_10009DA80();
  sub_10009DADC();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0x16u);
}

void sub_100762550(_BYTE *a1, _BYTE *a2)
{
  sub_10009DBF8(a1, a2);
  sub_10009DCA8();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_100762584(uint64_t a1, uint64_t a2)
{
  v2 = [sub_10009DB20(a1 a2)];
  sub_10009DC64(v2, 5.8381e-34);
  sub_10009DC2C(&_mh_execute_header, v3, v4, "Trying to modify two instances of the same object %{public}@");
}

void sub_1007625DC()
{
  sub_10009DB74();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10076264C()
{
  v1 = +[REMLog cloudkit];
  if (sub_10009DC70(v1))
  {
    sub_10009DAEC();
    _os_log_fault_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void sub_1007626B0()
{
  sub_10009DB74();
  sub_10009DBB8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100762720()
{
  sub_10009DB74();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1007627C4()
{
  sub_10009DB90();
  [sub_10009DCCC(v1) ic_loggingDescription];
  objc_claimAutoreleasedReturnValue();
  sub_10009DC20();
  sub_10009DA98();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100762858(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  sub_10009DB74();
  sub_10009DB68();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0xCu);
}

void sub_1007628E8()
{
  sub_100042850();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100762924(void *a1)
{
  v1 = [a1 readinessLoggingDescription];
  sub_10009DB74();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1007629B0(void *a1, NSObject *a2)
{
  v4 = [a1 objectIDsToProcess];
  v5 = [v4 count];
  v6 = [a1 objectIDsToRetry];
  v7 = [v6 count];
  v8 = [a1 readinessLoggingDescription];
  v9[0] = 67109634;
  v9[1] = v5;
  v10 = 1024;
  v11 = v7;
  v12 = 2114;
  v13 = v8;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "SYNC[COREDATA] ERROR - is pendingAccountInitializerCompleteOnLaunch {idsToProc.count: %d, idsToRetry.count: %d, readinessDescription: %{public}@}", v9, 0x18u);
}

void sub_100762AAC()
{
  sub_100042850();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100762AE8()
{
  sub_100042850();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100762B24()
{
  sub_100042850();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100762B60(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  sub_10009DB44();
  sub_10009DB58();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_100762BE0()
{
  sub_10009DB90();
  v2 = v1;
  v3 = +[NSDate date];
  [v3 timeIntervalSinceDate:v2[4]];
  [v0 firstObject];
  objc_claimAutoreleasedReturnValue();
  [sub_10009DCD8() count];
  sub_10009DB34();
  sub_10009DCF0();
  sub_10009DADC();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

void sub_100762CBC()
{
  sub_10009DC14();
  [v1 hasPassedBuddy];
  [v0 isSystemAvailableForSyncing];
  sub_10009DCB4();
  sub_10009DAEC();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0xEu);
}

void sub_100762D50(uint64_t *a1)
{
  sub_10009DC4C(a1, __stack_chk_guard);
  sub_10009DBC4();
  sub_10004230C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100762DF4(uint64_t *a1)
{
  sub_10009DC4C(a1, __stack_chk_guard);
  sub_10009DBC4();
  sub_10004230C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100762E64(uint64_t *a1)
{
  sub_10009DC4C(a1, __stack_chk_guard);
  sub_10009DBC4();
  sub_10004230C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100762ED4(uint64_t a1, uint64_t a2)
{
  v2 = [sub_10009DB20(a1 a2)];
  sub_10009DC64(v2, 5.7779e-34);
  sub_10009DD30(&_mh_execute_header, v3, v4, "Not syncing object because it's missing mandatory fields: %@");
}

void sub_100762F2C()
{
  v0 = objc_opt_class();
  objc_opt_class();
  sub_10009DC58();
  sub_10009DAFC();
  v2 = v1;
  sub_10009DAEC();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100762FE4()
{
  sub_10009DC14();
  v1 = [v0 subscriptionOwnerUserRecordID];
  sub_10009DC58();
  sub_10009DAFC();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10076307C(void *a1)
{
  v1 = [a1 readinessLoggingDescription];
  sub_10009DB74();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100763108()
{
  v1 = +[REMLog cloudkit];
  if (sub_10009DC70(v1))
  {
    sub_10009DAEC();
    _os_log_fault_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void sub_1007631A0(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_10009DB74();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10076322C(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_10009DB74();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1007632B8(void *a1)
{
  v1 = [a1 firstObject];
  sub_10009DB74();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1007633AC(uint64_t a1, uint64_t a2)
{
  v2 = [sub_10009DB20(a1 a2)];
  sub_10009DC64(v2, 5.8381e-34);
  sub_10009DD30(&_mh_execute_header, v3, v4, "operationToFetchRecordZoneChangesForZoneIDs existingOperation %{public}@ with nil or empty accountID.");
}

void sub_100763404()
{
  sub_10009DB90();
  v1 = [sub_10009DBD0(v0) ic_loggingDescription];
  sub_10009DAB0();
  sub_10009DAEC();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100763498()
{
  sub_10009DB90();
  v1 = [sub_10009DBD0(v0) ic_loggingDescription];
  sub_10009DAB0();
  sub_10009DAEC();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10076352C()
{
  sub_10009DB90();
  v1 = [v0 ic_loggingDescription];
  sub_10009DAB0();
  sub_10009DAEC();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1007635C0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 48) ic_shortLoggingDescription];
  sub_10009DA80();
  sub_10009DADC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10076365C()
{
  sub_10009DB90();
  v1 = [v0 ic_loggingDescription];
  sub_10009DAB0();
  sub_10009DAEC();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1007636F0()
{
  v1 = +[REMLog cloudkit];
  if (sub_10009DC70(v1))
  {
    sub_10009DC58();
    sub_10009DAEC();
    _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_1007637F4()
{
  sub_10009DCE4();
  v1 = [v0 ic_loggingDescription];
  sub_10009DAC8();
  sub_10009DAEC();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100763890(uint64_t *a1, uint64_t a2)
{
  v2 = [sub_10009DC88(a1 a2)];
  sub_10009DA80();
  sub_10009DADC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100763924(uint64_t *a1, uint64_t a2)
{
  v2 = [sub_10009DC88(a1 a2)];
  sub_10009DA80();
  sub_10009DADC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1007639B8(uint64_t *a1, uint64_t a2)
{
  v2 = [sub_10009DC88(a1 a2)];
  sub_10009DA80();
  sub_10009DADC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100763A4C()
{
  sub_10009DB74();
  sub_10009DB58();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100763AC8(uint64_t a1)
{
  v1 = [sub_10009DBD0(a1) ic_loggingDescription];
  sub_10009DB74();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100763B54()
{
  sub_10009DC14();
  v2 = [sub_10009DCCC(v1) ic_loggingDescription];
  v3 = [*(v0 + 48) ic_loggingDescription];
  sub_10009DA80();
  sub_10009DADC();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_100763C10(char a1, char a2, uint8_t *buf, os_log_t log)
{
  *buf = 67109376;
  *(buf + 1) = a1 & 1;
  *(buf + 4) = 1024;
  *(buf + 10) = a2 & 1;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "updateSubscriptions: Trying to get ACAccount appleAccountUtilities when system has not passed buddy or system-migrator {hasPassedBuddy: %d, isSystemAvailableForSyncing: %d}", buf, 0xEu);
}

void sub_100763C70()
{
  sub_10009DB90();
  [sub_10009DCCC(v1) ic_loggingDescription];
  objc_claimAutoreleasedReturnValue();
  sub_10009DC20();
  sub_10009DA98();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100763D04()
{
  sub_10009DCE4();
  v1 = [sub_10009DBD0(v0) ic_loggingDescription];
  sub_10009DAC8();
  sub_10009DAEC();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100763DA0()
{
  sub_10009DB90();
  [sub_10009DCCC(v1) ic_loggingDescription];
  objc_claimAutoreleasedReturnValue();
  sub_10009DC20();
  sub_10009DA98();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100763E34()
{
  v1 = +[REMLog cloudkit];
  if (sub_10009DC70(v1))
  {
    sub_10009DAEC();
    _os_log_fault_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void sub_100763E98(uint64_t *a1, uint64_t a2)
{
  v2 = [sub_10009DBDC(a1 a2)];
  sub_10009DA80();
  sub_10009DAEC();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100763F2C(uint64_t *a1, uint64_t a2)
{
  v2 = [sub_10009DBDC(a1 a2)];
  sub_10009DA80();
  sub_10009DADC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100763FC0()
{
  sub_100042850();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100763FFC()
{
  sub_100042850();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100764038(uint64_t a1)
{
  v1 = [sub_10009DBD0(a1) readinessLoggingDescription];
  sub_10009DB74();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1007640C8(void *a1)
{
  v1 = [a1 objectID];
  sub_10009DB74();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100764154(uint64_t a1)
{
  sub_10009DD18(a1, __stack_chk_guard);
  v2 = *v1;
  sub_10009DB44();
  sub_10009DB58();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1007641CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  sub_10009DA98();
  sub_10009DB58();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100764240(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  sub_10009DB44();
  sub_10009DB58();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_1007642C0()
{
  sub_100042850();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1007642FC(uint64_t a1)
{
  v1 = [sub_10009DBD0(a1) readinessLoggingDescription];
  sub_10009DB74();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10076438C()
{
  sub_100042850();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1007643C8(uint64_t a1)
{
  v1 = [sub_10009DBD0(a1) readinessLoggingDescription];
  sub_10009DB74();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100764458()
{
  sub_10009DB74();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1007644C8()
{
  sub_10009DB74();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100764538()
{
  sub_10009DB74();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1007645A8()
{
  sub_10009DB90();
  [v1 ic_loggingDescription];
  objc_claimAutoreleasedReturnValue();
  sub_10009DCD8();
  v2 = CKDatabaseScopeString();
  sub_10009DA80();
  sub_10009DADC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10076464C()
{
  sub_10009DCE4();
  v1 = [v0 ic_loggingDescription];
  v2 = CKDatabaseScopeString();
  sub_10009DC58();
  sub_10009DAFC();
  sub_10009DADC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1007646FC(uint64_t *a1)
{
  sub_10009DC4C(a1, __stack_chk_guard);
  sub_10009DBC4();
  sub_10004230C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10076476C()
{
  sub_10009DB90();
  [v1 ic_loggingDescription];
  objc_claimAutoreleasedReturnValue();
  sub_10009DCD8();
  v2 = CKDatabaseScopeString();
  sub_10009DA80();
  sub_10009DADC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100764810(uint64_t *a1)
{
  sub_10009DC4C(a1, __stack_chk_guard);
  sub_10009DBC4();
  sub_10004230C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1007648B4(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_10009DBC4();
  sub_10004230C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100764928()
{
  sub_10009DB74();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100764998()
{
  v1 = +[REMLog cloudkit];
  if (sub_10009DC70(v1))
  {
    sub_10009DAEC();
    _os_log_fault_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void sub_1007649FC()
{
  sub_10009DB74();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100764A6C()
{
  sub_10009DB74();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100764ADC(void *a1, uint64_t a2)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  sub_10009DCA8();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_100764B30(void *a1, uint64_t a2)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  sub_10009DCA8();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_100764B84(uint64_t a1)
{
  v1 = [sub_10009DBD0(a1) waiterID];
  sub_10009DB74();
  sub_10009DAEC();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100764C10()
{
  sub_10009DB74();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100764C80()
{
  sub_100042850();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100764CBC()
{
  sub_100042850();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100764CF8()
{
  sub_100042850();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100764D34()
{
  sub_10009DB74();
  sub_10004230C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100764DA4()
{
  sub_10009DB74();
  sub_10009DBB8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100764E14()
{
  sub_10009DB90();
  v2 = objc_opt_class();
  NSStringFromClass(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = sub_10009DBEC();
  NSStringFromSelector(v3);
  objc_claimAutoreleasedReturnValue();
  sub_10009DC08();
  v4 = [NSString stringWithFormat:@"%@.%@"];
  sub_10009DB0C();
  sub_10009DB80();
  _os_log_fault_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_100764EEC()
{
  sub_10009DB90();
  v2 = objc_opt_class();
  NSStringFromClass(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = sub_10009DBEC();
  NSStringFromSelector(v3);
  objc_claimAutoreleasedReturnValue();
  sub_10009DC08();
  v4 = [NSString stringWithFormat:@"%@.%@"];
  sub_10009DB0C();
  sub_10009DB80();
  _os_log_fault_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_100764FC4(void *a1)
{
  v1 = [a1 accountIdentifier];
  sub_10009DB74();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100765050()
{
  v1 = +[REMLog cloudkit];
  if (sub_10009DC70(v1))
  {
    sub_10009DAEC();
    _os_log_fault_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void sub_1007650B4()
{
  v1 = +[REMLog cloudkit];
  if (sub_10009DC70(v1))
  {
    sub_10009DAEC();
    _os_log_fault_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void sub_100765118()
{
  sub_10009DB90();
  v2 = objc_opt_class();
  NSStringFromClass(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = sub_10009DBEC();
  NSStringFromSelector(v3);
  objc_claimAutoreleasedReturnValue();
  sub_10009DC08();
  v4 = [NSString stringWithFormat:@"%@.%@"];
  sub_10009DB0C();
  sub_10009DB80();
  _os_log_fault_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_1007651F0()
{
  sub_10009DB90();
  v2 = objc_opt_class();
  NSStringFromClass(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = sub_10009DBEC();
  NSStringFromSelector(v3);
  objc_claimAutoreleasedReturnValue();
  sub_10009DC08();
  v4 = [NSString stringWithFormat:@"%@.%@"];
  sub_10009DB0C();
  sub_10009DB80();
  _os_log_fault_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_1007652C8()
{
  sub_10009DB90();
  v2 = objc_opt_class();
  NSStringFromClass(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = sub_10009DBEC();
  NSStringFromSelector(v3);
  objc_claimAutoreleasedReturnValue();
  sub_10009DC08();
  v4 = [NSString stringWithFormat:@"%@.%@"];
  sub_10009DB0C();
  sub_10009DB80();
  _os_log_fault_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_1007653A0()
{
  v0 = +[REMLogStore utility];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    v1 = +[NSThread callStackSymbols];
    v2 = 138412290;
    v3 = v1;
    _os_log_fault_impl(&_mh_execute_header, v0, OS_LOG_TYPE_FAULT, "rem_log_fault_if (![NSStringFromClass([REMCDAlarmTrigger class]) isEqualToString:NSStringFromClass(self)]) -- A subclass of REMCDAlarmTrigger called '- [REMCDAlarmTrigger cdEntityName]'. The subclass should override this method. {callstack: %@}", &v2, 0xCu);
  }
}

void sub_100765464(void *a1, NSObject *a2)
{
  v3 = [a1 remObjectID];
  v4 = 138543362;
  v5 = v3;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Should not unset the tombstone field .reminderIdentifier of an REMCDHashtag {cdHashtag: %{public}@}", &v4, 0xCu);
}

void sub_100765510(void *a1)
{
  [a1 unsignedIntegerValue];
  sub_10009DB74();
  sub_10009DADC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10076563C(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_10009DB74();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1007656C8(void *a1)
{
  v1 = +[NSHTTPURLResponse localizedStringForStatusCode:](NSHTTPURLResponse, "localizedStringForStatusCode:", [a1 statusCode]);
  sub_10009DB74();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100765768(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_10009DB74();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100765A5C(void *a1)
{
  v2 = [a1 previousList];
  v3 = [v2 identifier];
  v4 = [a1 list];
  v5 = [v4 identifier];
  v6 = [a1 account];
  v7 = [v6 identifier];
  sub_1000A58E4();
  sub_1000A5904();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0x20u);
}

void sub_100765B5C(void *a1)
{
  v2 = [a1 previousList];
  v3 = [v2 identifier];
  v4 = [a1 list];
  v5 = [v4 identifier];
  v6 = [a1 account];
  v7 = [v6 identifier];
  sub_1000A58E4();
  sub_1000A5904();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0x20u);
}

void sub_100765C5C(void *a1, NSObject *a2)
{
  v4 = [a1 list];
  v5 = [v4 identifier];
  v6 = [a1 parentReminder];
  v7 = [v6 identifier];
  v8 = [a1 identifier];
  sub_1000A58E4();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Validation Failure: Tried to create nested subtasks {list.identifier: %{public}@, parentReminder.identifier: %{public}@, reminder.identifier: %{public}@}", v9, 0x20u);
}

void sub_100765D4C(void *a1, NSObject *a2)
{
  v4 = [a1 parentReminder];
  v5 = [v4 list];
  v6 = [v5 identifier];
  v7 = [a1 list];
  v8 = [v7 identifier];
  v9 = [a1 parentReminder];
  v10 = [v9 identifier];
  v11 = [a1 identifier];
  v12 = 138544130;
  v13 = v6;
  v14 = 2114;
  v15 = v8;
  v16 = 2114;
  v17 = v10;
  v18 = 2114;
  v19 = v11;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Validation Failure: Tried to set a subtask on a different list to its parent reminder {parentList.identifier: %{public}@, list.identifier: %{public}@, parentReminder.identifier: %{public}@, reminder.identifier: %{public}@}", &v12, 0x2Au);
}

void sub_100765EA0(void *a1, void *a2)
{
  v4 = [a1 list];
  v5 = [v4 identifier];
  v6 = [a2 list];
  v7 = [v6 identifier];
  v8 = [a1 identifier];
  v14 = [a2 identifier];
  sub_1000A5904();
  _os_log_error_impl(v9, v10, v11, v12, v13, 0x2Au);
}

void sub_100765FC8(void *a1, NSObject *a2)
{
  v4 = [a1 identifier];
  v5 = [a1 previousList];
  v6 = [v5 identifier];
  v7 = [a1 list];
  v8 = [v7 identifier];
  v9 = [a1 account];
  v10 = [v9 identifier];
  v11 = 138544130;
  v12 = v4;
  v13 = 2114;
  v14 = v6;
  v15 = 2114;
  v16 = v8;
  v17 = 2114;
  v18 = v10;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Validation WARNING: Attempt to move a reminder with assignments to a different list while supportsMoveAcrossSharedLists=NO {reminder.identifier: %{public}@, fromList.identifier: %{public}@, toList.identifier: %{public}@, account.identifier: %{public}@}", &v11, 0x2Au);
}

void sub_100766104(void *a1)
{
  v2 = +[REMLogStore write];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v3 = [a1 remObjectID];
    v4 = 138543362;
    v5 = v3;
    _os_log_fault_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "rem_log_fault_if (self.willSave_handledUpdateDisplayDate) -- Unexpected case to have deleted alarms after markExtraneousAlarmsForDeletion() but already handled updateDisplayDate {remObjectID: %{public}@}", &v4, 0xCu);
  }
}

void sub_1007661C8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to check for free disk space: %@", &v2, 0xCu);
}

void sub_100766240(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 56);
  v5 = 138412802;
  v6 = v3;
  v7 = 2048;
  v8 = v4;
  v9 = 2048;
  v10 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Not enough free space at '%@': require %llu bytes, %llu bytes available", &v5, 0x20u);
}

void sub_1007662D8()
{
  v0 = +[REMLogStore utility];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    v1 = +[NSThread callStackSymbols];
    v2 = 138412290;
    v3 = v1;
    _os_log_fault_impl(&_mh_execute_header, v0, OS_LOG_TYPE_FAULT, "rem_log_fault_if (![NSStringFromClass([REMCDAuxiliaryReminderChangeInfo class]) isEqualToString:NSStringFromClass(self)]) -- A subclass of REMCDAuxiliaryReminderChangeInfo called '- [REMCDAuxiliaryReminderChangeInfo cdEntityName]'. The subclass should override this method. {callstack: %@}", &v2, 0xCu);
  }
}

void sub_10076639C()
{
  v0 = +[REMLogStore utility];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    v1 = +[NSThread callStackSymbols];
    v2 = 138412290;
    v3 = v1;
    _os_log_fault_impl(&_mh_execute_header, v0, OS_LOG_TYPE_FAULT, "rem_log_fault_if (![NSStringFromClass([REMCDRootEntityObject class]) isEqualToString:NSStringFromClass(self)]) -- A subclass of REMCDRootEntityObject called '- [REMCDRootEntityObject cdEntityName]'. The subclass should override this method. {callstack: %@}", &v2, 0xCu);
  }
}

void sub_100766460(NSObject *a1)
{
  v2 = +[NSThread callStackSymbols];
  v3 = 138543362;
  v4 = v2;
  _os_log_fault_impl(&_mh_execute_header, a1, OS_LOG_TYPE_FAULT, "Calling -isConnectedToAccountObject: on REMCDSharedToMeReminderPlaceholder is unexpected as this is not a class that should be updated or saved directly from a save request {callstack: %{public}@}", &v3, 0xCu);
}

void sub_100766500(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Error creating unarchiver: %@", &v2, 0xCu);
}

void sub_1007665BC(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Error creating unarchiver: %{public}@", &v2, 0xCu);
}

void sub_100766634()
{
  sub_10009DB74();
  v3 = 2114;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Error finding object from objectID: %{public}@, %{public}@", v2, 0x16u);
}

void sub_10076672C(NSObject *a1)
{
  v2 = +[NSThread callStackSymbols];
  sub_10009DB74();
  _os_log_fault_impl(&_mh_execute_header, a1, OS_LOG_TYPE_FAULT, "Trying to get an object from a nil object ID: %{public}@", v3, 0xCu);
}

void sub_10076683C(uint64_t a1, uint64_t a2, NSObject *a3)
{
  objc_opt_class();
  sub_10009DB74();
  v8 = 2114;
  v9 = a2;
  v6 = v5;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Error obtaining permanent object ID for %{public}@: %{public}@", v7, 0x16u);
}

void sub_1007668E0(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "ICCloudSchemaCatchUpSyncContext: Initiated with an invalid scheduling state value (%ld), assume shouldPerformCloudSchemaCatchUpSync=YES", &v2, 0xCu);
}

void sub_100766958()
{
  v0 = +[NSThread callStackSymbols];
  sub_10009DB74();
  sub_10009DAEC();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1007669EC(void *a1, const char *a2, NSObject *a3)
{
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(a2);
  v9 = [NSString stringWithFormat:@"%@.%@", v7, v8];
  v10 = [a1 remObjectID];
  sub_1000ABBB0();
  _os_log_fault_impl(&_mh_execute_header, a3, OS_LOG_TYPE_FAULT, "[%{public}@] Model type is not supposed to use or set resolutionTokenMap {objectID: %{public}@}", buf, 0x16u);
}

void sub_100766AEC(void *a1, const char *a2, NSObject *a3)
{
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(a2);
  v9 = [NSString stringWithFormat:@"%@.%@", v7, v8];
  v10 = [a1 remObjectID];
  sub_1000ABBB0();
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "[%{public}@] Model type does allow setResolutionTokenMap, you are good {objectID: %{public}@}", buf, 0x16u);
}

void sub_100766BEC()
{
  sub_10009DC14();
  v1 = objc_opt_class();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_10009DCD8() objectID];
  sub_1000ABBA4();
  sub_10009DAFC();
  sub_10009DAEC();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100766C98(void *a1, NSObject *a2)
{
  v4 = [a1 entity];
  v5 = [v4 name];
  v6 = [a1 identifier];
  v7 = [v6 UUIDString];
  v8 = 138543618;
  v9 = v5;
  sub_10009DAFC();
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Validation Failure: We have a REMCDObject that is not a REMCDAccount and is missing an account relationship {entity: %{public}@, identifier: %{public}@}", &v8, 0x16u);
}

void sub_100766DF0(void *a1, NSObject *a2)
{
  v4 = [a1 previousAccount];
  v5 = [v4 identifier];
  v6 = [a1 account];
  v7 = [v6 identifier];
  v8 = 138543618;
  v9 = v5;
  sub_10009DAFC();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Validation Failure: Tried to move lists accross accounts {fromAccount.identifier: %{public}@, toAccount.identifier: %{public}@}", &v8, 0x16u);
}

void sub_100766F48(void *a1)
{
  v1 = [a1 remObjectID];
  sub_10009DB74();
  sub_1000ABB94();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100766FD4(void *a1)
{
  v1 = [a1 remObjectID];
  sub_10009DB74();
  sub_10009DAEC();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100767078(void *a1)
{
  v1 = [a1 objectID];
  sub_10009DB74();
  sub_10009DAEC();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10076711C(unsigned __int8 *a1, uint64_t a2)
{
  v3 = [NSNumber numberWithBool:*a1];
  v4 = [*(a2 + 32) remObjectID];
  sub_1000ABBA4();
  sub_1000ABB94();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_1007671E4(uint64_t a1, void *a2)
{
  v2 = [a2 className];
  sub_10009DAFC();
  sub_10009DAEC();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100767288()
{
  sub_10009DC14();
  v1 = objc_opt_class();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_10009DCD8() identifier];
  sub_1000ABBA4();
  sub_10009DAFC();
  sub_10009DAEC();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100767334()
{
  sub_10009DC14();
  v1 = objc_opt_class();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_10009DCD8() identifier];
  sub_1000ABBA4();
  sub_10009DAFC();
  sub_10009DAEC();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1007673E0()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  v2 = +[NSThread callStackSymbols];
  sub_10009DAFC();
  sub_10009DAEC();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100767498()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  v2 = +[NSThread callStackSymbols];
  sub_10009DAFC();
  sub_10009DAEC();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100767550(void *a1)
{
  v2 = +[REMLogStore write];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v3 = [a1 storeControllerManagedObjectContext];
    v4 = [v3 ic_loggingDescription];
    sub_10009DB74();
    sub_10009DAEC();
    _os_log_fault_impl(v5, v6, v7, v8, v9, 0xCu);
  }
}

void sub_100767620()
{
  sub_10009DC14();
  v1 = objc_opt_class();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_10009DCD8() identifier];
  sub_1000ABBA4();
  sub_10009DAFC();
  sub_1000ABB94();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1007676CC()
{
  v0 = +[NSThread callStackSymbols];
  sub_10009DB74();
  sub_10009DAEC();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100767760(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Missing requirements to get alarmDateTrigger {accountID: %{public}@, alarmID: %{public}@}", &v3, 0x16u);
}

void sub_100767860()
{
  v0 = +[REMLog cloudkit];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    *v1 = 0;
    _os_log_fault_impl(&_mh_execute_header, v0, OS_LOG_TYPE_FAULT, "rem_log_fault_if (!entityName) -- Unexpected error: found entity with no name", v1, 2u);
  }
}

void sub_1007678D4(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = 134218242;
  v6 = [a1 count];
  v7 = 2114;
  v8 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Error fetching objects from (%ld) object IDs: %{public}@", &v5, 0x16u);
}

void sub_1007679C8(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543874;
  v4 = a1;
  v5 = 2048;
  v6 = a2;
  v7 = 2048;
  v8 = 20250728;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "ICCSCU: cloudSchemaCatchUpSyncDidComplete: persistenceCloudSchemaVersion is already >= kRuntimeCloudSchemaVersion, stopping {accountIdentifier: %{public}@, persistence: %lld, runtime: %lld}", &v3, 0x20u);
}

void sub_100767A60(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "ICCSCU: cloudSchemaCatchUpSyncDidComplete: Update ckAccount.persistenceCloudSchemaVersion FAILED {accountID: %{public}@}", &v2, 0xCu);
}

void sub_100767AD8()
{
  v1 = +[REMLog cloudkit];
  if (sub_10009DC70(v1))
  {
    sub_10009DAEC();
    _os_log_fault_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void sub_100767B3C()
{
  sub_10009DC14();
  v1 = objc_opt_class();
  v2 = [sub_10009DBEC() ckIdentifier];
  sub_1000B6F28();
  sub_10009DB68();
  _os_log_error_impl(v3, v4, OS_LOG_TYPE_ERROR, v5, v6, 0x16u);
}

void sub_100767BE8()
{
  sub_10009DC14();
  v2 = objc_opt_class();
  NSStringFromClass(v2);
  objc_claimAutoreleasedReturnValue();
  [sub_10009DCD8() objectID];
  objc_claimAutoreleasedReturnValue();
  v3 = [sub_10009DBEC() identifier];
  sub_1000B6F14();
  sub_1000B6F5C();
  sub_10009DAEC();
  _os_log_fault_impl(v4, v5, v6, v7, v8, 0x20u);
}

void sub_100767CA4()
{
  sub_10009DC14();
  v2 = objc_opt_class();
  NSStringFromClass(v2);
  objc_claimAutoreleasedReturnValue();
  [sub_10009DCD8() objectID];
  objc_claimAutoreleasedReturnValue();
  v3 = [sub_10009DBEC() identifier];
  sub_1000B6F14();
  sub_1000B6F5C();
  sub_10009DAEC();
  _os_log_fault_impl(v4, v5, v6, v7, v8, 0x20u);
}

void sub_100767D60()
{
  sub_10009DAC8();
  v3 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "objectWithRecordID: (object.ckIdentifier: %{public}@, accountID: %{public}@) has nil account even after fixed up", v2, 0x16u);
}

void sub_100767E04()
{
  sub_100042850();
  sub_10009DBB8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100767E40()
{
  sub_100042850();
  sub_10009DBB8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100767E90()
{
  sub_100042850();
  sub_10009DBB8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100767ECC()
{
  sub_100042850();
  sub_10009DBB8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100767F08()
{
  sub_10009DC14();
  v1 = objc_opt_class();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  [sub_10009DCD8() failedToSyncCount];
  v6 = [sub_10009DBEC() loggingDescription];
  sub_10009DB68();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0x1Cu);
}

void sub_100767FD8()
{
  sub_10009DC14();
  v2 = objc_opt_class();
  NSStringFromClass(v2);
  objc_claimAutoreleasedReturnValue();
  [sub_10009DCD8() objectID];
  objc_claimAutoreleasedReturnValue();
  v3 = [sub_10009DBEC() identifier];
  sub_1000B6F14();
  sub_1000B6F5C();
  sub_10009DAEC();
  _os_log_fault_impl(v4, v5, v6, v7, v8, 0x20u);
}

void sub_100768094()
{
  sub_10009DC14();
  v1 = objc_opt_class();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_10009DCD8() objectID];
  sub_10009DA80();
  sub_10009DAEC();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10076813C()
{
  sub_10009DC14();
  v1 = objc_opt_class();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_10009DCD8() objectID];
  sub_10009DA80();
  sub_10009DAEC();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1007681E4()
{
  sub_10009DC14();
  v1 = objc_opt_class();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_10009DCD8() objectID];
  sub_10009DA80();
  sub_10009DAEC();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10076828C()
{
  sub_10009DC14();
  v1 = objc_opt_class();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_10009DCD8() objectID];
  sub_10009DA80();
  sub_10009DAEC();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100768334()
{
  sub_100042850();
  sub_10009DBB8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100768370(NSObject *a1)
{
  if (sub_10009DC70(a1))
  {
    sub_10009DAEC();
    _os_log_fault_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void sub_1007683C4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = +[REMLog cloudkit];
  if (sub_10009DC70(v5))
  {
    v6 = [a3 ckIdentifier];
    sub_1000B6F14();
    sub_10009DAEC();
    _os_log_fault_impl(v7, v8, v9, v10, v11, 0x20u);
  }
}

void sub_100768494()
{
  sub_10009DB74();
  sub_10009DBB8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100768504()
{
  v1 = +[REMLog cloudkit];
  if (sub_10009DC70(v1))
  {
    sub_10009DAEC();
    _os_log_fault_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void sub_100768568(objc_class *a1)
{
  v1 = NSStringFromClass(a1);
  sub_10009DAC8();
  sub_10009DAEC();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100768608(objc_class *a1)
{
  v1 = NSStringFromClass(a1);
  sub_10009DAC8();
  sub_10009DAEC();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1007686A8()
{
  sub_10009DB74();
  sub_10009DBB8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100768718(objc_class *a1)
{
  v1 = NSStringFromClass(a1);
  sub_10009DAC8();
  sub_10009DB68();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0x16u);
}

void sub_1007687BC()
{
  v0 = +[NSThread callStackSymbols];
  sub_10009DB74();
  sub_10009DAEC();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100768850(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  sub_10009DB74();
  sub_10009DAEC();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100768944(void *a1)
{
  v3 = +[REMLog cloudkit];
  if (sub_10009DC70(v3))
  {
    [a1 recordType];
    objc_claimAutoreleasedReturnValue();
    v4 = [sub_10009DCD8() recordType];
    sub_10009DA80();
    sub_10009DAEC();
    _os_log_fault_impl(v5, v6, v7, v8, v9, 0x16u);
  }
}

void sub_100768A10()
{
  sub_10009DC14();
  v1 = objc_opt_class();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_10009DCD8() identifier];
  sub_10009DA80();
  sub_10009DAEC();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100768AB8()
{
  sub_10009DC14();
  v1 = objc_opt_class();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_10009DCD8() identifier];
  sub_1000B6F28();
  sub_10009DB68();
  _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 0x16u);
}

void sub_100768B64(void *a1)
{
  v1 = [a1 ic_loggingDescription];
  sub_10009DAC8();
  sub_10009DAEC();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100768C00(void *a1)
{
  v1 = [a1 recordID];
  v2 = [v1 recordName];
  sub_10009DB74();
  sub_10009DAEC();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_100768CA4(void *a1)
{
  v1 = [a1 ic_loggingDescription];
  sub_10009DB74();
  sub_10009DB68();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0xCu);
}

void sub_100768FB8(void *a1, NSObject *a2)
{
  v4 = [a1 objectID];
  v5 = [a1 identifier];
  v6 = [a1 parentCloudObject];
  v7 = [a1 parentCloudObject];
  v8 = [v7 objectID];
  v9 = [a1 parentCloudObject];
  v10 = [v9 identifier];
  v11 = 138544386;
  v12 = v4;
  v13 = 2114;
  v14 = v5;
  v15 = 2114;
  v16 = v6;
  v17 = 2114;
  v18 = v8;
  v19 = 2114;
  v20 = v10;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "updateParentReferenceIfNecessary: self.parentCloudObject.recordID is nil %{public}@ %{public}@ %{public}@ %{public}@ %{public}@", &v11, 0x34u);
}

void sub_100769100(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  sub_10009DB74();
  sub_10009DB68();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0xCu);
}

void sub_1007691E0()
{
  sub_10009DC14();
  v1 = objc_opt_class();
  v2 = [sub_10009DBEC() ckIdentifier];
  sub_1000B6F28();
  sub_10009DAEC();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100769288()
{
  sub_10009DC14();
  v1 = objc_opt_class();
  v2 = [sub_10009DBEC() ckIdentifier];
  sub_1000B6F28();
  sub_10009DAEC();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100769330()
{
  sub_10009DC14();
  v1 = objc_opt_class();
  v2 = [sub_10009DBEC() ckIdentifier];
  sub_1000B6F28();
  sub_10009DAEC();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1007693D8()
{
  sub_10009DB74();
  sub_10009DBB8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100769448()
{
  sub_10009DC14();
  v2 = [v1 objectID];
  [v0 ckServerRecord];
  objc_claimAutoreleasedReturnValue();
  v3 = [sub_100042318() numberWithInt:?];
  sub_10009DA80();
  sub_10009DB68();
  _os_log_debug_impl(v4, v5, OS_LOG_TYPE_DEBUG, v6, v7, 0x16u);
}

void sub_10076950C()
{
  sub_10009DC14();
  v2 = [v1 objectID];
  [v0 ckServerRecord];
  objc_claimAutoreleasedReturnValue();
  v3 = [sub_100042318() numberWithInt:?];
  sub_10009DA80();
  sub_10009DB68();
  _os_log_debug_impl(v4, v5, OS_LOG_TYPE_DEBUG, v6, v7, 0x16u);
}

void sub_100769628(void *a1, NSObject *a2)
{
  v4 = [a1 objectID];
  v5 = [a1 name];
  v6 = [a1 uuidForChangeTracking];
  v7 = [a1 accountIdentifier];
  v8 = 138544130;
  v9 = v4;
  v10 = 2112;
  v11 = v5;
  v12 = 2114;
  v13 = v6;
  v14 = 2114;
  v15 = v7;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "REMCDHashtagLabel.validateForInsert: { id: %{public}@, name: %@, uuidForChangeTracking: %{public}@ } with invalid nil or empty accountIdentifier: %{public}@", &v8, 0x2Au);
}

void sub_100769730(void *a1, uint64_t *a2, NSObject *a3)
{
  v6 = [a1 objectID];
  v7 = [a1 name];
  v8 = [a1 uuidForChangeTracking];
  v9 = *a2;
  v10 = 138544130;
  v11 = v6;
  v12 = 2112;
  v13 = v7;
  v14 = 2114;
  v15 = v8;
  v16 = 2114;
  v17 = v9;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "REMCDHashtagLabel.validateForInsert_Swift: { id: %{public}@, name: %@, uuidForTracking: %{public}@, error: %{public}@ }", &v10, 0x2Au);
}

void sub_10076982C(void *a1, NSObject *a2)
{
  v3 = [a1 objectID];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Cannot return an -remChangedObjectID because this REMCDHashtagLabel object has no UUID {mid: %{public}@}", &v4, 0xCu);
}

void sub_1007698C4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to fetch objects. Migration failed {error: %@}", &v2, 0xCu);
}

void sub_10076993C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Failed to save last object. Migration error {error: %@}", &v2, 0xCu);
}

void sub_100769B54(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "cdList missing account. Skipping reminderListOrdering migration {cdList: %@}", &v2, 0xCu);
}

void sub_100769BCC(void *a1)
{
  v1 = [a1 transactionAuthor];
  sub_10009DB74();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100769C70(void *a1)
{
  v1 = [a1 transactionAuthor];
  sub_10009DB74();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100769D88()
{
  sub_10009DB74();
  v3 = 2114;
  v4 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "CT Implementation: saveTrackingState {state: %@, clientID: %{public}@}", v2, 0x16u);
}

void sub_100769E74(uint64_t a1, void *a2)
{
  v2 = [a2 localizedDescription];
  sub_1000BD430();
  sub_10009DADC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100769F18(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_10009DB74();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100769FA4()
{
  v1 = +[REMLog changeTracking];
  if (sub_10009DC70(v1))
  {
    sub_10009DAEC();
    _os_log_fault_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void sub_10076A008(uint64_t *a1)
{
  v2 = +[REMLog changeTracking];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    *v4 = 0;
    _os_log_fault_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "rem_log_fault_if (!error) -- Attempting to get errorChangeSet with nil error.", v4, 2u);
  }

  v3 = [REMError internalErrorWithDebugDescription:@"Attempting to get errorChangeSet with nil error."];
  *a1 = [REMChangeSet errorChangeSetWithError:v3];
}

void sub_10076A0C4()
{
  v1 = +[REMLog changeTracking];
  if (sub_10009DC70(v1))
  {
    sub_10009DAEC();
    _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_10076A164(uint64_t a1, uint64_t a2)
{
  v4 = [sub_10009DB20(a1 a2)];
  *v3 = 138412290;
  *v2 = v4;
  sub_1000BD440(&_mh_execute_header, v5, v6, "REMNSPersistentHistoryTracking resultChangeSet: Skipped generating changeSet for a transaction. Failed to get account objectID from storeID {storeID: %@}");
}

void sub_10076A1C0(uint64_t a1, uint64_t a2)
{
  v4 = [sub_10009DB20(a1 a2)];
  *v3 = 138412290;
  *v2 = v4;
  sub_1000BD440(&_mh_execute_header, v5, v6, "REMNSPersistentHistoryTracking resultChangeSet: Skipped generating changeSet for a transaction. REMNSPersistentHistoryTransaction has no storeID {transaction: %@}");
}

void sub_10076A21C(uint64_t *a1)
{
  v3 = +[REMLog changeTracking];
  if (sub_10009DC70(v3))
  {
    v9 = *a1;
    sub_10009DAEC();
    _os_log_fault_impl(v4, v5, v6, v7, v8, 0xCu);
  }
}

void sub_10076A2C0(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = [a2 localizedDescription];
  sub_1000BD430();
  sub_10009DADC();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10076A364(uint64_t *a1)
{
  v3 = +[REMLog changeTracking];
  if (sub_10009DC70(v3))
  {
    v9 = *a1;
    sub_10009DAEC();
    _os_log_fault_impl(v4, v5, v6, v7, v8, 0xCu);
  }
}

void sub_10076A408(void *a1, void *a2)
{
  v4 = [a1 clientName];
  v5 = [a1 accountIdentifier];
  v11 = [a2 localizedDescription];
  sub_10009DADC();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x20u);
}

void sub_10076A4E4(void *a1)
{
  v2 = [a1 clientName];
  v3 = [a1 accountIdentifier];
  sub_1000BD430();
  sub_10009DADC();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10076A598(uint64_t a1, void *a2)
{
  v2 = [a2 localizedDescription];
  sub_1000BD430();
  sub_10009DADC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10076A6B8(uint64_t a1, NSObject *a2)
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = 138543362;
  v6 = v4;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "[REMCDObjectTreeProcessorDelegate preprocessTreeNode:] Unknown node type {type: %{public}@}", &v5, 0xCu);
}

void sub_10076A754()
{
  v0 = +[REMLog cloudkit];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    v1 = 138412290;
    v2 = qword_100952AD8;
    _os_log_fault_impl(&_mh_execute_header, v0, OS_LOG_TYPE_FAULT, "rem_log_fault_if (sharedSettings != nil) -- Sync settings have already been initialized. {sharedSettings: %@}", &v1, 0xCu);
  }
}

void sub_10076A808()
{
  sub_1000BE754();
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = NSStringFromSelector(v0);
  v5 = [NSString stringWithFormat:@"%@.%@"];
  v6 = [v1 remObjectID];
  sub_1000ABBB0();
  sub_1000BE734(&_mh_execute_header, v7, v8, "[%{public}@] Cannot obtain account identifier from attachment {attachmentID: %{public}@}", v9, v10, v11, v12, v3, v4, v13);
}

void sub_10076A8F0()
{
  sub_1000BE754();
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = NSStringFromSelector(v0);
  v5 = [NSString stringWithFormat:@"%@.%@"];
  v6 = [v1 objectID];
  sub_1000ABBB0();
  sub_1000BE734(&_mh_execute_header, v7, v8, "[%{public}@] Cannot obtain identifier from attachment {moid: %{public}@}", v9, v10, v11, v12, v3, v4, v13);
}

void sub_10076A9D8()
{
  sub_1000BE754();
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = NSStringFromSelector(v0);
  v5 = [NSString stringWithFormat:@"%@.%@"];
  v6 = [v1 remObjectID];
  sub_1000ABBB0();
  sub_1000BE734(&_mh_execute_header, v7, v8, "[%{public}@] Cannot obtain RDStoreControllerManagedObjectContext from attachment {attachmentID: %{public}@}", v9, v10, v11, v12, v3, v4, v13);
}

void sub_10076AAC0()
{
  v0 = +[REMLogStore write];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    sub_1000BF158(&_mh_execute_header, v1, v2, "rem_log_fault_if (!backingCDObject) -- invalid nil value for '%s'", v3, v4, v5, v6, 2u);
  }
}

void sub_10076AB64(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = 138543618;
  v8 = a1;
  v9 = 2114;
  v10 = v6;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "REMCDObjectEffectiveVersionValidationDelegateImpl.preprocessTreeNode: Unexpected non-REMCDObject {mid: %{public}@, managedObject.class: %{public}@}", &v7, 0x16u);
}

void sub_10076AC1C()
{
  sub_10009DB74();
  v3 = 2114;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "REMCDObjectEffectiveVersionValidationDelegateImpl.preprocessTreeNode: Failed to fetch managed object {mid: %{public}@, error: %{public}@}", v2, 0x16u);
}

void sub_10076AD14()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  sub_10009DB74();
  sub_1000BF158(&_mh_execute_header, v2, v3, "REMCDObjectEffectiveVersionValidationDelegateImpl.preprocessTreeNode: Incorrect node type passed to REMCDObjectEffectiveVersionValidationDelegateImpl {type: %{public}@}", v4, v5, v6, v7, v8);
}

void sub_10076AD9C(void *a1)
{
  v1 = [a1 identifier];
  sub_10009DB74();
  sub_1000BF158(&_mh_execute_header, v2, v3, "[REMCDObjectTreeProcessorDelegate processBatchOfTreeNodes:] Unexpectedly processes a node with nil REMCDObject {node: %{public}@}", v4, v5, v6, v7, v8);
}

void sub_10076AE20(NSObject *a1)
{
  v2 = +[NSThread callStackSymbols];
  v3 = 138412290;
  v4 = v2;
  _os_log_fault_impl(&_mh_execute_header, a1, OS_LOG_TYPE_FAULT, "Called fetchRequest on REMCDObject. This will only fetch objects in SQLite table named 'ZREMCDOBJECT', but not those in other SQLite tables. {callstack: %@}", &v3, 0xCu);
}

void sub_10076AEE8(void *a1, uint64_t a2, NSObject *a3)
{
  v4 = 134218240;
  v5 = a2;
  v6 = 2048;
  v7 = [a1 count];
  _os_log_fault_impl(&_mh_execute_header, a3, OS_LOG_TYPE_FAULT, "Trying to insert object in mutableArray at index (%ld) greater than count (%ld)", &v4, 0x16u);
}

void sub_10076AF84(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Trying to insert object in mutableArray at negative index %ld", &v2, 0xCu);
}

void sub_10076AFFC(uint64_t a1)
{
  v2 = +[REMLog changeTracking];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v3 = 138412290;
    v4 = a1;
    _os_log_fault_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "rem_log_fault_if (!entityName) -- Nil NSManagedObject.entity.name {mangedObject: %@}", &v3, 0xCu);
  }
}

void sub_10076B0AC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error fetching server change tokens: %@", &v2, 0xCu);
}

void sub_10076B124(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  sub_10009DB74();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10076B1B0(void *a1, void *a2)
{
  v3 = [a1 ic_loggingDescription];
  v4 = [a2 shortLoggingDescription];
  sub_1000C64E0();
  sub_10009DAEC();
  _os_log_fault_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_10076B260(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 shortLoggingDescription];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&_mh_execute_header, a4, OS_LOG_TYPE_ERROR, "Have a share that wasn't persisted for %@", a1, 0xCu);
}

void sub_10076B2D8()
{
  v0 = +[REMLog cloudkitCollaboration];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    sub_10009DAEC();
    _os_log_fault_impl(v1, v2, v3, v4, v5, 0xCu);
  }
}

void sub_10076B388(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "No root record for %@", buf, 0xCu);
}

void sub_10076B3E0(uint64_t a1)
{
  v2 = [*(a1 + 40) shortLoggingDescription];
  v3 = [*(a1 + 48) ic_loggingDescription];
  sub_1000C64E0();
  sub_10009DADC();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10076B494(id *a1, uint64_t *a2, NSObject *a3)
{
  v6 = [a1[9] ic_loggingDescription];
  v7 = [a1[5] shortLoggingDescription];
  v8 = [a1[6] ic_loggingDescription];
  v9 = *a2;
  v10 = 138413058;
  v11 = v6;
  v12 = 2112;
  v13 = v7;
  v14 = 2112;
  v15 = v8;
  v16 = 2112;
  v17 = v9;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Error saving share %@ for %@ %@: %@", &v10, 0x2Au);
}

void sub_10076B590(uint64_t a1)
{
  v2 = [*(a1 + 40) shortLoggingDescription];
  v3 = [*(a1 + 48) ic_loggingDescription];
  sub_1000C64E0();
  sub_10009DADC();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10076B644(void *a1, uint64_t a2)
{
  v3 = [a1 ic_loggingDescription];
  v4 = [*(a2 + 40) ic_loggingDescription];
  sub_1000C64E0();
  sub_10009DAEC();
  _os_log_fault_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_10076B6F4(void *a1, uint64_t a2)
{
  v3 = [a1 ic_loggingDescription];
  v4 = [*(a2 + 32) shortLoggingDescription];
  v5 = [*(a2 + 40) ic_loggingDescription];
  sub_1000C64E0();
  sub_10009DADC();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x20u);
}

void sub_10076B7C0(void *a1)
{
  v1 = [a1 ckIdentifier];
  sub_10009DB74();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10076B850(void *a1)
{
  v1 = [a1 ic_loggingDescription];
  sub_10009DB74();
  sub_10009DAEC();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10076B8DC(void *a1)
{
  v1 = [a1 ic_loggingDescription];
  sub_10009DB74();
  sub_10009DAEC();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10076BA94()
{
  v0 = +[REMLog cloudkitCollaboration];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    sub_10009DAEC();
    _os_log_fault_impl(v1, v2, v3, v4, v5, 0xCu);
  }
}

void sub_10076BB44(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v6 = [*(a1 + 32) share];
  v7 = [v6 URL];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v9 = [WeakRetained ic_loggingDescription];
  v10 = 138412802;
  v11 = v7;
  v12 = 2112;
  v13 = v9;
  v14 = 2112;
  v15 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Error accepting share at URL %@ %@: %@", &v10, 0x20u);
}

void sub_10076BC40(uint64_t a1)
{
  v1 = [*(a1 + 32) ic_loggingDescription];
  sub_10009DB74();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10076BD24(void *a1)
{
  v1 = [a1 transactionAuthor];
  sub_1000C965C();
  sub_1000C9670(&_mh_execute_header, v2, v3, "COREDATA REQUEST {author: %{public}@, request: %@}", v4, v5, v6, v7, v8);
}

void sub_10076BDB8(void *a1)
{
  v1 = [a1 transactionAuthor];
  sub_1000C965C();
  sub_1000C9670(&_mh_execute_header, v2, v3, "FETCH COREDATA REQUEST {author: %{public}@, request: %@}", v4, v5, v6, v7, v8);
}

void sub_10076BE84(void *a1)
{
  v1 = [a1 transactionAuthor];
  sub_1000C965C();
  sub_1000C9670(&_mh_execute_header, v2, v3, "FETCH COUNT COREDATA REQUEST {author: %{public}@, request: %@}", v4, v5, v6, v7, v8);
}

void sub_10076BF18(void *a1, NSObject *a2)
{
  v3 = [a1 debugDescription];
  v4 = 138543362;
  v5 = v3;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Entity has nil name {entity: %{public}@}", &v4, 0xCu);
}

void sub_10076BFB0(os_log_t log)
{
  v1 = 138543362;
  v2 = qword_100952B08;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "sTopologicallyWeightedEntities = %{public}@", &v1, 0xCu);
}

void sub_10076C034(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Failed to fetch dirty object for effectiveMinimumSupportedVersion validation {managedObjectID: %{public}@, error: %{public}@}", &v3, 0x16u);
}

void sub_10076C0BC(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Dirty object for effectiveMinimumSupportedVersion validation is not REMCDObject {managedObjectID: %{public}@}", &v2, 0xCu);
}

void sub_10076C134()
{
  sub_1000C965C();
  v3 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "[%{public}@] missing persistentStoreCoordinator -- Can't get REMFetchResultToken {managedObjectContext: %@}", v2, 0x16u);
}

void sub_10076C1B0(uint64_t a1, NSObject *a2)
{
  v2 = *(*a1 + 40);
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to obtain fileIOWorkerQueue", &v3, 0xCu);
}

void sub_10076C230(uint64_t a1, NSObject *a2)
{
  v2 = *(*a1 + 40);
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to obtain RDStoreController", &v3, 0xCu);
}

void sub_10076C380(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a2 + 32);
  v4 = *(a2 + 40);
  v5 = 138412802;
  v6 = a1;
  v7 = 2112;
  v8 = v3;
  v9 = 2112;
  v10 = v4;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to remove Spotlight indices for store {error: %@, store: %@, coordinator: %@}", &v5, 0x20u);
}

void sub_10076C49C(void *a1, NSObject *a2)
{
  v3 = [a1 identifier];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Trying to unset didChooseToMigrate and didFinishMigration on ACAccount (%@)", &v4, 0xCu);
}

void sub_10076C534(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error saving migration state to ACAccount: %@", &v2, 0xCu);
}

void sub_10076C5AC()
{
  v0 = +[REMLogStore utility];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    v1 = +[NSThread callStackSymbols];
    v2 = 138412290;
    v3 = v1;
    _os_log_fault_impl(&_mh_execute_header, v0, OS_LOG_TYPE_FAULT, "rem_log_fault_if (![NSStringFromClass([REMCDAttachment class]) isEqualToString:NSStringFromClass(self)]) -- A subclass of REMCDAttachment called '- [REMCDAttachment cdEntityName]'. The subclass should override this method. {callstack: %@}", &v2, 0xCu);
  }
}

void sub_10076C7B4()
{
  sub_10009DB74();
  WORD2(v3) = 2048;
  HIWORD(v3) = v0;
  sub_1000B95CC(&_mh_execute_header, v0, v1, "[loadAccountStoresFromDisk] Number of PSC loaded stores is not the same as our account store map entry count! {pscStoresCount: %ld, accountStoreMapCount: %ld}", v2, v3);
}

void sub_10076C890(void *a1)
{
  v1 = [a1 absoluteString];
  sub_10009DB74();
  sub_10009DB68();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0xCu);
}

void sub_10076C920(void *a1, void *a2)
{
  v3 = [a1 absoluteString];
  [a2 count];
  sub_1000E2000();
  sub_10009DB68();
  _os_log_debug_impl(v4, v5, OS_LOG_TYPE_DEBUG, v6, v7, 0x16u);
}

void sub_10076CA3C(void *a1)
{
  v1 = [a1 absoluteString];
  sub_10009DB74();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10076CAE0(uint64_t a1, uint64_t a2)
{
  v4 = [sub_10009DB20(a1 a2)];
  *v3 = 138412290;
  *v2 = v4;
  sub_10009DC2C(&_mh_execute_header, v5, v6, "[loadAccountStoresFromDisk] Added store URL to pending batch {url: %@}");
}

void sub_10076CCB8(void *a1)
{
  [a1 isolated];
  sub_10009DB68();
  _os_log_fault_impl(v1, v2, OS_LOG_TYPE_FAULT, v3, v4, 8u);
}

void sub_10076CDA8(uint64_t a1, uint64_t a2)
{
  v5 = [sub_10009DB20(a1 a2)];
  *v4 = 138543362;
  *v3 = v5;
  _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "RDStoreControllerMigrator: [MIGRATE STORE] Store URL is nil {identifier: %{public}@}", v4, 0xCu);
}

void sub_10076CE14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  sub_10009DB74();
  sub_1000B95CC(&_mh_execute_header, v3, v4, "RDStoreControllerMigrator: [MIGRATE STORE] ERROR: Failed to flush stores metadata {error: %{public}@, updatedStores: %@}");
}

void sub_10076CE8C()
{
  sub_1000E1FE0();
  v1 = [v0 identifier];
  sub_1000C965C();
  sub_1000E1FF0();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_10076CF24()
{
  sub_1000E1FE0();
  v1 = [v0 identifier];
  sub_1000C965C();
  sub_1000E1FF0();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_10076CFBC()
{
  sub_1000E1FE0();
  v1 = [v0 identifier];
  sub_1000C965C();
  sub_1000E1FF0();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_10076D054()
{
  sub_1000C965C();
  v2 = 0;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "[addValidatedStoresToAccountStoreMapWithStores] invalidStoreBackupURL is nil {storeURL: %@, backupURL: %@}", v1, 0x16u);
}

void sub_10076D134()
{
  sub_1000E1FE0();
  v1 = [v0 valueForKey:@"lastPathComponent"];
  sub_1000C965C();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_10076D1E0()
{
  v1 = 138412546;
  v2 = 0;
  sub_1000E2000();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "Cannot obtain a valid container directory path from storeURL {reminderDataContainerURL: %@, storeURL: %@}", &v1, 0x16u);
}

void sub_10076D260(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 64);
  sub_10009DB74();
  sub_1000B95CC(&_mh_execute_header, v3, v4, "Error fetching stores from account types {error: %{public}@, types: %{public}@}");
}

void sub_10076D2D8()
{
  v1 = 134218240;
  v2 = 15;
  sub_1000E2000();
  _os_log_fault_impl(&_mh_execute_header, v0, OS_LOG_TYPE_FAULT, "[createOrLoadAccountStores] Trying to load more stores than the maximum we allow. Bailing. {limit: %ld, loaded.count: %ld}", &v1, 0x16u);
}

void sub_10076D35C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  sub_10009DB74();
  sub_1000CACF0(&_mh_execute_header, v3, v4, "[createOrLoadAccountStores] Failed to add store {error: %@, fileName: %{public}@}");
}

void sub_10076D3D4(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = *(*a1 + 40);
  *&v3[12] = 2112;
  *&v3[14] = a2;
  sub_1000B95CC(&_mh_execute_header, a2, a3, "[markAccountStoreDeleted] Failed to obtain accountIdentifier from store {accountIdentifier: %{public}@, store: %@}", *v3, *&v3[8], *&v3[16]);
}

void sub_10076D454(void *a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = *a1;
  *&v3[12] = 2114;
  *&v3[14] = *(*(*a2 + 8) + 40);
  sub_1000B95CC(&_mh_execute_header, a2, a3, "[markAccountStoreDeleted] Failed to mark account store as deleted {store: %@, error: %{public}@}", *v3, *&v3[8], *&v3[16]);
}

void sub_10076D564(void *a1)
{
  v1 = [a1 ic_loggingDescription];
  sub_10009DB74();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10076D5F0(void *a1)
{
  v1 = [a1 ic_loggingDescription];
  sub_10009DB74();
  sub_10009DADC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10076D6E4(void *a1)
{
  v2 = [a1 className];
  v3 = [a1 recordID];
  v4 = [v3 recordName];
  sub_1000E2000();
  sub_10009DB68();
  _os_log_debug_impl(v5, v6, OS_LOG_TYPE_DEBUG, v7, v8, 0x16u);
}

void sub_10076D82C(uint64_t a1, uint64_t a2)
{
  v4 = [sub_10009DB20(a1 a2)];
  *v3 = 138412290;
  *v2 = v4;
  sub_10009DC2C(&_mh_execute_header, v5, v6, "Deleting object from database because it's marked for deletion and its deletion has synced: %@");
}

void sub_10076D8F0(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a2 + 64);
  v4 = *(a2 + 72);
  v5 = 138412802;
  v6 = a1;
  v7 = 2112;
  v8 = v3;
  v9 = 2112;
  v10 = v4;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "PopulateDefaultValues ERROR {updateError: %@, entity: %@, attributeName: %@}", &v5, 0x20u);
}

void sub_10076D984()
{
  v0 = +[REMLog cloudkit];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    sub_1000BF158(&_mh_execute_header, v1, v2, "rem_log_fault_if (!ckIdentifier) -- invalid nil value for '%s'", v3, v4, v5, v6, 2u);
  }
}

void sub_10076DA28()
{
  v0 = +[REMLog cloudkit];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    sub_1000BF158(&_mh_execute_header, v1, v2, "rem_log_fault_if (!accountIdentifier) -- invalid nil value for '%s'", v3, v4, v5, v6, 2u);
  }
}

void sub_10076DACC(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 40);
  sub_10009DB74();
  v6 = 2114;
  v7 = v3;
  _os_log_fault_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "Cannot obtain permanent ID for %{public}@ with error: %{public}@", v5, 0x16u);
}

void sub_10076DC04(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 40);
  sub_10009DB74();
  v6 = 2114;
  v7 = v3;
  _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "ICBatchFetchHelper: existingObjectWithID %{public}@ with error %{public}@", v5, 0x16u);
}

void sub_10076DD60(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 identifier];
  *a1 = 138543362;
  *a3 = v7;
  _os_log_error_impl(&_mh_execute_header, a4, OS_LOG_TYPE_ERROR, "REMCDObjectTreeProcessor: \tCYCLIC REFERENCE in object tree detected! Tail node has already been flushed before {tailNode: %{public}@}", a1, 0xCu);
}

void sub_10076DDD8(void *a1, NSObject *a2)
{
  v3 = 134217984;
  v4 = [a1 count];
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "REMCDObjectTreeProcessor: \tFLUSHING {count: %ld}", &v3, 0xCu);
}

void sub_10076DE64(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Error saving context (%{public}@): %{public}@", &v3, 0x16u);
}

void sub_10076DEEC(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error saving context: %{public}@", &v2, 0xCu);
}

void sub_10076DF64(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "CKParentReminderIdentifierMigration ERROR {updateError: %{public}@}", &v2, 0xCu);
}

void sub_10076DFDC(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  sub_1000E84C4(&_mh_execute_header, a3, a3, "PersonIDSaltGenerator failed to generate random salt with exception: %@.", a2);
}

void sub_10076E138(void *a1, void *a2)
{
  [a1 count];
  v7 = [a2 identifier];
  sub_10009DB68();
  _os_log_fault_impl(v3, v4, OS_LOG_TYPE_FAULT, v5, v6, 0x16u);
}

void sub_10076E2C0()
{
  v0 = +[REMLog cloudkit];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    sub_10009DB68();
    _os_log_fault_impl(v1, v2, OS_LOG_TYPE_FAULT, v3, v4, 2u);
  }
}

void sub_10076E330(void *a1)
{
  v2 = [a1 identifier];
  v3 = [v2 UUIDString];
  v8 = [a1 personIDSalt];
  sub_10009DB68();
  _os_log_debug_impl(v4, v5, OS_LOG_TYPE_DEBUG, v6, v7, 0x16u);
}

void sub_10076E400(void *a1)
{
  v1 = [a1 remObjectID];
  sub_10009DB74();
  sub_10009DB68();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0x16u);
}

void sub_10076E4A8(void *a1)
{
  v1 = [a1 remObjectID];
  sub_10009DB74();
  sub_10009DB68();
  sub_1000E84C4(v2, v3, v4, v5, v6);
}

void sub_10076E530(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 ic_loggingDescription];
  *a1 = 138543362;
  *a3 = v7;
  _os_log_error_impl(&_mh_execute_header, a4, OS_LOG_TYPE_ERROR, "Found cloudKit account without ckIdentifier: %{public}@", a1, 0xCu);
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

Swift::String __swiftcall Locale.Components.rem_languageAndScriptWithRegion()()
{
  v0 = Locale.Components.rem_languageAndScriptWithRegion()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::tuple_inserted_Bool_memberAfterInsert_Int __swiftcall IndexSet.insert(_:)(Swift::Int a1)
{
  v1 = IndexSet.insert(_:)(a1);
  result.memberAfterInsert = v2;
  result.inserted = v1;
  return result;
}

uint64_t TokenGenerator.init(model:configuration:useCaseIdentifier:onBehalfOf:parentOfOnBehalfOf:)()
{
  return TokenGenerator.init(model:configuration:useCaseIdentifier:onBehalfOf:parentOfOnBehalfOf:)();
}

{
  return TokenGenerator.init(model:configuration:useCaseIdentifier:onBehalfOf:parentOfOnBehalfOf:)();
}

uint64_t type metadata accessor for Prompt()
{
  return type metadata accessor for Prompt();
}

{
  return type metadata accessor for Prompt();
}

uint64_t throwingCast<A>(_:as:failureMessage:)()
{
  return throwingCast<A>(_:as:failureMessage:)();
}

{
  return throwingCast<A>(_:as:failureMessage:)();
}

uint64_t PartialOverride.subscript.getter()
{
  return PartialOverride.subscript.getter();
}

{
  return PartialOverride.subscript.getter();
}

{
  return PartialOverride.subscript.getter();
}

uint64_t dispatch thunk of Decoder.decodeSingularStringField(value:)()
{
  return dispatch thunk of Decoder.decodeSingularStringField(value:)();
}

{
  return dispatch thunk of Decoder.decodeSingularStringField(value:)();
}

uint64_t + infix(_:_:)()
{
  return + infix(_:_:)();
}

{
  return + infix(_:_:)();
}

{
  return + infix(_:_:)();
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.uppercased()()
{
  v0 = String.uppercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t String.base64EncodedHMACString(using:)()
{
  return String.base64EncodedHMACString(using:)();
}

{
  return String.base64EncodedHMACString(using:)();
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}

Swift::OpaquePointer_optional __swiftcall NLEmbedding.vector(for:)(Swift::String a1)
{
  v1 = NLEmbedding.vector(for:)(a1._countAndFlagsBits, a1._object);
  result.value._rawValue = v1;
  result.is_nil = v2;
  return result;
}

CNContact_optional __swiftcall CNContactStore.contactFrom(emailAddresses:phoneNumbers:keysToFetch:)(Swift::OpaquePointer emailAddresses, Swift::OpaquePointer phoneNumbers, Swift::OpaquePointer keysToFetch)
{
  v3 = CNContactStore.contactFrom(emailAddresses:phoneNumbers:keysToFetch:)(emailAddresses._rawValue, phoneNumbers._rawValue, keysToFetch._rawValue);
  result.value.super.isa = v3;
  result.is_nil = v4;
  return result;
}

__C::REMSmartListType_optional __swiftcall REMSmartListType.init(stringValue:)(Swift::String stringValue)
{
  v1 = REMSmartListType.init(stringValue:)(stringValue._countAndFlagsBits, stringValue._object);
  result.value._rawValue = v1;
  result.is_nil = v2;
  return result;
}

uint64_t static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)()
{
  return static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
}

{
  return static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
}

uint64_t NSManagedObjectContext.rem_performAndWait<A>(_:)()
{
  return NSManagedObjectContext.rem_performAndWait<A>(_:)();
}

{
  return NSManagedObjectContext.rem_performAndWait<A>(_:)();
}

uint64_t CKRecordKeyValueSetting.subscript.getter()
{
  return CKRecordKeyValueSetting.subscript.getter();
}

{
  return CKRecordKeyValueSetting.subscript.getter();
}

uint64_t REMOrderedIdentifierMap.reorder<A>(objects:)()
{
  return REMOrderedIdentifierMap.reorder<A>(objects:)();
}

{
  return REMOrderedIdentifierMap.reorder<A>(objects:)();
}

Swift::String __swiftcall REMReminderNextThirdsHour.stringForSnoozingUntil()()
{
  Thirds = REMReminderNextThirdsHour.stringForSnoozingUntil()();
  result._object = v1;
  result._countAndFlagsBits = Thirds;
  return result;
}

Swift::String __swiftcall REMReminderNextThirdsHour.systemImageStringForSnoozingUntil()()
{
  Thirds = REMReminderNextThirdsHour.systemImageStringForSnoozingUntil()();
  result._object = v1;
  result._countAndFlagsBits = Thirds;
  return result;
}

uint64_t Substring.subscript.getter()
{
  return Substring.subscript.getter();
}

{
  return Substring.subscript.getter();
}

uint64_t __CocoaDictionary.lookup(_:)()
{
  return __CocoaDictionary.lookup(_:)();
}

{
  return __CocoaDictionary.lookup(_:)();
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

uint64_t DefaultStringInterpolation.appendInterpolation<A>(_:)()
{
  return DefaultStringInterpolation.appendInterpolation<A>(_:)();
}

{
  return DefaultStringInterpolation.appendInterpolation<A>(_:)();
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  v4 = _CLLocationCoordinate2DMake(latitude, longitude);
  v3 = v4.longitude;
  v2 = v4.latitude;
  result.longitude = v3;
  result.latitude = v2;
  return result;
}