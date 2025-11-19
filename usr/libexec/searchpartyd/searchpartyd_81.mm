uint64_t sub_100880D44(uint64_t a1)
{
  v3 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D2A70(a1, v6, &unk_101696AC0, &qword_101390A60);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10000B3A8(v6, &unk_101696AC0, &qword_101390A60);
    return 0;
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    v13 = objc_autoreleasePoolPush();
    sub_10087E430(v11);
    if (v1)
    {
      objc_autoreleasePoolPop(v13);
      return (*(v8 + 8))(v11, v7);
    }

    else
    {
      v15 = v14;
      v16 = HIDWORD(v14);
      objc_autoreleasePoolPop(v13);
      result = (*(v8 + 8))(v11, v7);
      if (v16 < v15)
      {
        __break(1u);
      }

      else
      {
        return v15;
      }
    }
  }

  return result;
}

unint64_t sub_100880F5C(char *a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v10 = a2;
  v11 = 0;
  v12 = a3;
  while (1)
  {
    v14 = v12 > a2;
    if (v12 >= a1)
    {
      break;
    }

    if (v12 > a2 || a4 == v12)
    {
      goto LABEL_13;
    }

    v11 = 1;
LABEL_2:
    if (__CFADD__(v12++, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }
  }

  if (v12 <= a2)
  {
    if (a4 == v12)
    {
      if (v11)
      {
        v14 = 0;
        goto LABEL_13;
      }

      return 0;
    }

    goto LABEL_2;
  }

  if ((v11 & 1) == 0)
  {
    a1 = _swiftEmptyArrayStorage;
    goto LABEL_24;
  }

  v14 = 1;
LABEL_13:
  v4 = a1 - 1;
  if (!a1)
  {
    goto LABEL_38;
  }

  if (v4 >= a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = a1 - 1;
  }

  if (v6 < a3)
  {
    goto LABEL_39;
  }

  a1 = sub_100A5BCE0(0, 1, 1, _swiftEmptyArrayStorage);
  v7 = *(a1 + 2);
  v12 = *(a1 + 3);
  v5 = v7 + 1;
  if (v7 < v12 >> 1)
  {
    goto LABEL_19;
  }

LABEL_40:
  a1 = sub_100A5BCE0((v12 > 1), v5, 1, a1);
LABEL_19:
  *(a1 + 2) = v5;
  v15 = &a1[16 * v7];
  *(v15 + 4) = a3;
  *(v15 + 5) = v6;
  if (v4 > a4)
  {

    return a4 + 1;
  }

  if (!v14)
  {

    return 0;
  }

LABEL_24:
  v17 = (v10 + 1);
  if (v10 == -1)
  {
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v17 <= a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = (v10 + 1);
  }

  if (v5 > a4)
  {
    goto LABEL_42;
  }

  v10 = a1;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v18 = v10;
    goto LABEL_31;
  }

LABEL_43:
  v18 = sub_100A5BCE0(0, *(v10 + 2) + 1, 1, v10);
LABEL_31:
  v20 = *(v18 + 2);
  v19 = *(v18 + 3);
  if (v20 >= v19 >> 1)
  {
    v18 = sub_100A5BCE0((v19 > 1), v20 + 1, 1, v18);
  }

  *(v18 + 2) = v20 + 1;
  v21 = &v18[16 * v20];
  *(v21 + 4) = v5;
  *(v21 + 5) = a4;

  if (v17 >= a3)
  {
    return 0;
  }

  result = v17;
  if (v17 <= 1)
  {
    return 0;
  }

  return result;
}

unint64_t sub_100881154(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a3 | a4)
  {
    if (a4 >= a1 && a2 >= a3)
    {
      v4 = a1;
      if (qword_101694A00 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_1000076D4(v5, qword_1016ABAA8);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v8 = 136446466;
        v20 = v4;
        _print_unlocked<A, B>(_:_:)();
        v9._countAndFlagsBits = 3026478;
        v9._object = 0xE300000000000000;
        String.append(_:)(v9);
        _print_unlocked<A, B>(_:_:)();
        v10 = sub_1000136BC(0, 0xE000000000000000, &v21);

        *(v8 + 4) = v10;
        *(v8 + 12) = 2082;
        _print_unlocked<A, B>(_:_:)();
        v11._countAndFlagsBits = 3026478;
        v11._object = 0xE300000000000000;
        String.append(_:)(v11);
        _print_unlocked<A, B>(_:_:)();
        v12 = sub_1000136BC(0, 0xE000000000000000, &v21);

        *(v8 + 14) = v12;
        v13 = "requested [%{public}s] and hole [%{public}s] cannnot overlap!";
LABEL_9:
        _os_log_impl(&_mh_execute_header, v6, v7, v13, v8, 0x16u);
        swift_arrayDestroy();

        return v20;
      }

      goto LABEL_21;
    }

    if (a1 && a1 - 1 == a4)
    {
      if (a2 >= a3)
      {
        return a3;
      }

      __break(1u);
    }

    if (a2 == -1)
    {
      __break(1u);
    }

    else
    {
      if (a2 + 1 == a3)
      {
        a3 = a1;
        if (a4 >= a1)
        {
          return a3;
        }

        __break(1u);
      }

      v4 = a1;
      if (qword_101694A00 == -1)
      {
LABEL_19:
        v14 = type metadata accessor for Logger();
        sub_1000076D4(v14, qword_1016ABAA8);
        v6 = Logger.logObject.getter();
        v7 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v6, v7))
        {
          v8 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          *v8 = 136446466;
          v20 = v4;
          _print_unlocked<A, B>(_:_:)();
          v15._countAndFlagsBits = 3026478;
          v15._object = 0xE300000000000000;
          String.append(_:)(v15);
          _print_unlocked<A, B>(_:_:)();
          v16 = sub_1000136BC(0, 0xE000000000000000, &v21);

          *(v8 + 4) = v16;
          *(v8 + 12) = 2082;
          _print_unlocked<A, B>(_:_:)();
          v17._countAndFlagsBits = 3026478;
          v17._object = 0xE300000000000000;
          String.append(_:)(v17);
          _print_unlocked<A, B>(_:_:)();
          v18 = sub_1000136BC(0, 0xE000000000000000, &v21);

          *(v8 + 14) = v18;
          v13 = "ERROR: Unadjacent hole! requested [%{public}s] and hole [%{public}s]";
          goto LABEL_9;
        }

LABEL_21:

        return v4;
      }
    }

    swift_once();
    goto LABEL_19;
  }

  return a1;
}

char *sub_1008815E8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v12 = 0;
  v13 = a3;
  while (1)
  {
    v15 = v13 > a2;
    if (v13 >= a1)
    {
      break;
    }

    if (v13 > a2 || a4 == v13)
    {
      goto LABEL_13;
    }

    v12 = 1;
LABEL_2:
    if (__CFADD__(v13++, 1))
    {
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }
  }

  if (v13 <= a2)
  {
    if (a4 == v13)
    {
      if (v12)
      {
        v15 = 0;
        goto LABEL_13;
      }

      return _swiftEmptyArrayStorage;
    }

    goto LABEL_2;
  }

  if ((v12 & 1) == 0)
  {
    v4 = _swiftEmptyArrayStorage;
    v23 = a2 + 1;
    if (a2 == -1)
    {
      goto LABEL_40;
    }

LABEL_27:
    if (v23 <= a3)
    {
      v24 = a3;
    }

    else
    {
      v24 = v23;
    }

    if (v24 > a4)
    {
      __break(1u);
    }

    else if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_32:
      v26 = *(v4 + 2);
      v25 = *(v4 + 3);
      if (v26 >= v25 >> 1)
      {
        v4 = sub_100A5BCE0((v25 > 1), v26 + 1, 1, v4);
      }

      *(v4 + 2) = v26 + 1;
      v27 = &v4[16 * v26];
      *(v27 + 4) = v24;
      *(v27 + 5) = a4;
      if (v23 < a3 && v23 >= 2)
      {
        static os_log_type_t.default.getter();
        if (qword_101694A20 != -1)
        {
          swift_once();
        }

        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_101385D80;
        v32 = v23;
        _print_unlocked<A, B>(_:_:)();
        v29._countAndFlagsBits = 3026478;
        v29._object = 0xE300000000000000;
        String.append(_:)(v29);
        _print_unlocked<A, B>(_:_:)();
        *(v28 + 56) = &type metadata for String;
        *(v28 + 64) = sub_100008C00();
        *(v28 + 32) = 0;
        *(v28 + 40) = 0xE000000000000000;
        os_log(_:dso:log:_:_:)();
      }

      return v4;
    }

    v4 = sub_100A5BCE0(0, *(v4 + 2) + 1, 1, v4);
    goto LABEL_32;
  }

  v15 = 1;
LABEL_13:
  v8 = a1 - 1;
  if (!a1)
  {
    goto LABEL_44;
  }

  if (v8 >= a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = a1 - 1;
  }

  if (v6 >= a3)
  {
    v4 = sub_100A5BCE0(0, 1, 1, _swiftEmptyArrayStorage);
    v7 = *(v4 + 2);
    v13 = *(v4 + 3);
    v5 = v7 + 1;
    if (v7 < v13 >> 1)
    {
      goto LABEL_19;
    }

    goto LABEL_46;
  }

LABEL_45:
  __break(1u);
LABEL_46:
  v4 = sub_100A5BCE0((v13 > 1), v5, 1, v4);
LABEL_19:
  *(v4 + 2) = v5;
  v16 = &v4[16 * v7];
  *(v16 + 4) = a3;
  *(v16 + 5) = v6;
  if (v8 > a4)
  {
    if (qword_101694A00 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000076D4(v17, qword_1016ABAA8);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32 = v31;
      *v20 = 136446210;
      _print_unlocked<A, B>(_:_:)();
      v21._countAndFlagsBits = 3026478;
      v21._object = 0xE300000000000000;
      String.append(_:)(v21);
      _print_unlocked<A, B>(_:_:)();
      v22 = sub_1000136BC(0, 0xE000000000000000, &v32);

      *(v20 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v18, v19, "Hole created %{public}s", v20, 0xCu);
      sub_100007BAC(v31);
    }
  }

  if (v15)
  {
    v23 = a2 + 1;
    if (a2 != -1)
    {
      goto LABEL_27;
    }

LABEL_40:
    __break(1u);
    return _swiftEmptyArrayStorage;
  }

  return v4;
}

uint64_t sub_100881A78(uint64_t result)
{
  if (result)
  {
    if (result < 15)
    {
      return 0;
    }

    else
    {
      v1 = result;
      v2 = type metadata accessor for __DataStorage();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      __DataStorage.init(capacity:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = 0;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100881B1C(uint64_t a1, uint64_t a2)
{
  v100 = a1;
  v3 = sub_1000BC4D4(&qword_1016ABE88, &unk_1013BFCF0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v101 = v96 - v5;
  v6 = type metadata accessor for BeaconKeyServiceBuilder.FileSwapInfo(0);
  v98 = *(v6 - 8);
  v7 = *(v98 + 64);
  v8 = __chkstk_darwin(v6);
  v104 = v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v97 = v96 - v11;
  __chkstk_darwin(v10);
  v103 = v96 - v12;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v109 = v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = v96 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = v96 - v22;
  __chkstk_darwin(v21);
  v25 = v96 - v24;
  v107 = [objc_opt_self() defaultManager];
  URL.deletingLastPathComponent()();
  v99 = v6;
  v26 = *(v6 + 20);
  v108 = a2;
  v27 = a2 + v26;
  v111 = *(a2 + v26);
  v112[0] = dispatch thunk of CustomStringConvertible.description.getter();
  v112[1] = v28;
  v29._countAndFlagsBits = 45;
  v29._object = 0xE100000000000000;
  String.append(_:)(v29);
  v30 = *(v27 + 8);
  v31 = v13;
  v111 = v30;
  v32._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v32);

  v106 = v25;
  URL.appendingPathComponent(_:)();

  v110 = v23;
  URL.appendingPathExtension(_:)();
  v33 = v14 + 8;
  v34 = *(v14 + 8);
  v34(v20, v31);
  if (qword_101694A00 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  v36 = sub_1000076D4(v35, qword_1016ABAA8);
  v37 = v103;
  sub_1000295D4(v108, v103, type metadata accessor for BeaconKeyServiceBuilder.FileSwapInfo);
  (*(v14 + 16))(v109, v110, v31);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  v40 = os_log_type_enabled(v38, v39);
  v105 = v33;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v96[1] = v36;
    v42 = v41;
    v96[0] = swift_slowAlloc();
    v112[0] = v96[0];
    *v42 = 136315394;
    v43 = URL.path.getter();
    v44 = v37;
    v45 = v34;
    v46 = v31;
    v48 = v47;
    sub_10001F1B0(v44, type metadata accessor for BeaconKeyServiceBuilder.FileSwapInfo);
    v49 = sub_1000136BC(v43, v48, v112);

    *(v42 + 4) = v49;
    *(v42 + 12) = 2080;
    v50 = v109;
    v51 = URL.path.getter();
    v53 = v52;
    v45(v50, v46);
    v54 = sub_1000136BC(v51, v53, v112);
    v31 = v46;
    v34 = v45;

    *(v42 + 14) = v54;
    _os_log_impl(&_mh_execute_header, v38, v39, "Renaming %s to %s", v42, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v34(v109, v31);
    sub_10001F1B0(v37, type metadata accessor for BeaconKeyServiceBuilder.FileSwapInfo);
  }

  v56 = v104;
  URL._bridgeToObjectiveC()(v55);
  v58 = v57;
  v112[0] = 0;
  v59 = v107;
  v60 = [v107 removeItemAtURL:v57 error:v112];

  if (v60)
  {
    v61 = v112[0];
  }

  else
  {
    v63 = v112[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v102 = 0;
  }

  URL._bridgeToObjectiveC()(v62);
  v65 = v64;
  URL._bridgeToObjectiveC()(v66);
  v68 = v67;
  v112[0] = 0;
  v69 = [v59 moveItemAtURL:v65 toURL:v67 error:v112];

  v70 = v112[0];
  if (v69)
  {
    v71 = v101;
    sub_1000D2A70(v100, v101, &qword_1016ABE88, &unk_1013BFCF0);
    if ((*(v98 + 48))(v71, 1, v99) == 1)
    {
      v72 = v70;

      v34(v110, v31);
      v34(v106, v31);
      return sub_10000B3A8(v71, &qword_1016ABE88, &unk_1013BFCF0);
    }

    v77 = v97;
    sub_10087EE70(v71, v97, type metadata accessor for BeaconKeyServiceBuilder.FileSwapInfo);
    sub_1000295D4(v77, v56, type metadata accessor for BeaconKeyServiceBuilder.FileSwapInfo);
    v78 = v70;
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v112[0] = v82;
      *v81 = 136315138;
      v83 = URL.path.getter();
      v84 = v56;
      v85 = v34;
      v86 = v31;
      v88 = v87;
      sub_10001F1B0(v84, type metadata accessor for BeaconKeyServiceBuilder.FileSwapInfo);
      v89 = sub_1000136BC(v83, v88, v112);
      v31 = v86;
      v34 = v85;

      *(v81 + 4) = v89;
      _os_log_impl(&_mh_execute_header, v79, v80, "Deleting %s", v81, 0xCu);
      sub_100007BAC(v82);
      v59 = v107;

      v77 = v97;
    }

    else
    {

      sub_10001F1B0(v56, type metadata accessor for BeaconKeyServiceBuilder.FileSwapInfo);
    }

    URL._bridgeToObjectiveC()(v90);
    v92 = v91;
    v112[0] = 0;
    v93 = [v59 removeItemAtURL:v91 error:v112];

    if (v93)
    {
      v94 = v112[0];
    }

    else
    {
      v95 = v112[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    sub_10001F1B0(v77, type metadata accessor for BeaconKeyServiceBuilder.FileSwapInfo);
    v75 = v110;
    v76 = v31;
  }

  else
  {
    v74 = v112[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v75 = v110;
    v76 = v31;
  }

  v34(v75, v76);
  return (v34)(v106, v31);
}

uint64_t sub_100882478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[105] = v3;
  v4[99] = a3;
  v4[93] = a2;
  v4[87] = a1;
  v5 = type metadata accessor for KeyGenerationBeaconInfo();
  v4[106] = v5;
  v6 = *(v5 - 8);
  v4[107] = v6;
  v4[108] = *(v6 + 64);
  v4[109] = swift_task_alloc();
  v7 = *(*(sub_1000BC4D4(&unk_101696AC0, &qword_101390A60) - 8) + 64) + 15;
  v4[110] = swift_task_alloc();
  v4[111] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v4[112] = v8;
  v9 = *(v8 - 8);
  v4[113] = v9;
  v4[114] = *(v9 + 64);
  v4[115] = swift_task_alloc();
  v4[116] = swift_task_alloc();
  v4[117] = swift_task_alloc();
  v4[118] = swift_task_alloc();
  v4[119] = swift_task_alloc();

  return _swift_task_switch(sub_100882624, 0, 0);
}

uint64_t sub_100882624()
{
  v1 = *(v0 + 696);
  v2 = (v1 + *(*(v0 + 848) + 24));
  v3 = *v2;
  *(v0 + 960) = *v2;
  v4 = v2[1];
  *(v0 + 968) = v4;
  v5 = v2[2];
  *(v0 + 976) = v5;
  v6 = v2[3];
  *(v0 + 984) = v6;
  v7 = v2[4];
  *(v0 + 992) = v7;
  v8 = v2[5];
  *(v0 + 1000) = v8;
  if (v4 >> 60 == 15)
  {
    sub_100883394();
    swift_allocError();
    *v9 = 1;
    swift_willThrow();
    v10 = *(v0 + 952);
    v11 = *(v0 + 944);
    v12 = *(v0 + 936);
    v13 = *(v0 + 928);
    v14 = *(v0 + 920);
    v15 = *(v0 + 888);
    v16 = *(v0 + 880);
    v17 = *(v0 + 872);

    v18 = *(v0 + 8);

    return v18(0);
  }

  v20 = *(v0 + 944);
  v61 = *(v0 + 936);
  v21 = *(v0 + 904);
  v57 = *(v0 + 952);
  v59 = *(v0 + 896);
  v22 = *(v0 + 840);
  sub_100017D5C(v3, v4);
  sub_100017D5C(v5, v6);
  sub_10002E98C(v7, v8);
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:)();

  v23 = v1 + *(type metadata accessor for BeaconIdentifier() + 20);
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:)();

  v24 = *(v21 + 8);
  *(v0 + 1008) = v24;
  *(v0 + 1016) = (v21 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v24(v20, v59);
  URL.appendingPathComponent(_:)();
  if (v8 >> 60 != 15)
  {
    v25 = *(v0 + 952);
    v26 = *(v0 + 888);
    URL.appendingPathComponent(_:)();
  }

  v27 = *(v0 + 936);
  v28 = *(v0 + 928);
  v29 = *(v0 + 904);
  v30 = *(v0 + 896);
  v31 = *(v0 + 888);
  v60 = v31;
  v62 = *(v0 + 880);
  v32 = *(v0 + 872);
  v54 = v32;
  v55 = *(v0 + 912);
  v33 = *(v0 + 864);
  v34 = *(v0 + 856);
  v35 = *(v0 + 840);
  v56 = *(v0 + 744);
  v58 = *(v0 + 792);
  v36 = *(v0 + 696);
  (*(v29 + 56))();
  (*(v29 + 16))(v28, v27, v30);
  sub_1000295D4(v36, v32, type metadata accessor for KeyGenerationBeaconInfo);
  v37 = (*(v29 + 80) + 24) & ~*(v29 + 80);
  v38 = (v55 + *(v34 + 80) + v37) & ~*(v34 + 80);
  v39 = swift_allocObject();
  *(v0 + 1024) = v39;
  *(v39 + 16) = v35;
  v40 = v39 + v37;
  v41 = *(v29 + 32);
  v41(v40, v28, v30);
  sub_10087EE70(v54, v39 + v38, type metadata accessor for KeyGenerationBeaconInfo);
  v42 = (v39 + ((v33 + v38 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v42 = v56;
  v42[1] = v58;

  swift_asyncLet_begin();
  sub_1000D2A70(v60, v62, &unk_101696AC0, &qword_101390A60);
  if ((*(v29 + 48))(v62, 1, v30) == 1)
  {
    sub_10000B3A8(*(v0 + 880), &unk_101696AC0, &qword_101390A60);
    *(v0 + 1058) = 0;

    return _swift_asyncLet_get_throwing(v0 + 16, v0 + 1056, sub_100882D54, v0 + 656);
  }

  v43 = *(v0 + 744);
  v41(*(v0 + 920), *(v0 + 880), *(v0 + 896));
  if (v43)
  {
    v44 = *(v0 + 792);
    if (v44)
    {
      v45 = *(v0 + 744) / 0x60uLL;
      v46 = *(v0 + 792);
      v47 = v44 / 0x60;
      if (v47 >= v45)
      {
        v48 = v45 + 1;
        v49 = v47 + 1;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  v48 = 0;
  v49 = 0;
LABEL_16:
  v50 = swift_task_alloc();
  *(v0 + 1032) = v50;
  *v50 = v0;
  v50[1] = sub_100882BA8;
  v51 = *(v0 + 920);
  v52 = *(v0 + 840);
  v53 = *(v0 + 696);

  return sub_10086E8A0(v51, v53, 1, v48, v49, 1);
}

uint64_t sub_100882BA8(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1032);
  v6 = *v2;
  *(*v2 + 1040) = v1;

  if (v1)
  {
    v7 = sub_100882F18;
  }

  else
  {
    *(v4 + 1057) = a1 & 1;
    v7 = sub_100882CD4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100882CD4()
{
  v1 = *(v0 + 1016);
  (*(v0 + 1008))(*(v0 + 920), *(v0 + 896));
  *(v0 + 1058) = *(v0 + 1057);

  return _swift_asyncLet_get_throwing(v0 + 16, v0 + 1056, sub_100882D54, v0 + 656);
}

uint64_t sub_100882D54()
{
  *(v1 + 1048) = v0;
  if (v0)
  {
    return _swift_asyncLet_finish(v1 + 16, v1 + 1056, sub_1008830F0, v1 + 704);
  }

  *(v1 + 1059) = *(v1 + 1056);
  return _swift_asyncLet_finish(v1 + 16, v1 + 1056, sub_100882DA4, v1 + 752);
}

uint64_t sub_100882DC0()
{
  v1 = *(v0 + 1024);
  v2 = *(v0 + 1016);
  v3 = *(v0 + 1008);
  v4 = *(v0 + 952);
  v5 = *(v0 + 944);
  v6 = *(v0 + 936);
  v7 = *(v0 + 928);
  v8 = *(v0 + 896);
  v9 = *(v0 + 888);
  v13 = *(v0 + 920);
  v14 = *(v0 + 880);
  v15 = *(v0 + 872);
  sub_100883574(*(v0 + 960), *(v0 + 968), *(v0 + 976), *(v0 + 984), *(v0 + 992), *(v0 + 1000));
  sub_10000B3A8(v9, &unk_101696AC0, &qword_101390A60);
  v3(v6, v8);
  v3(v4, v8);

  v10 = *(v0 + 8);
  v11 = (*(v0 + 1059) | *(v0 + 1058)) & 1;

  return v10(v11);
}

uint64_t sub_100882F18()
{
  v1 = *(v0 + 1016);
  (*(v0 + 1008))(*(v0 + 920), *(v0 + 896));

  return _swift_asyncLet_finish(v0 + 16, v0 + 1056, sub_100882F90, v0 + 800);
}

uint64_t sub_100882FAC()
{
  v1 = v0[128];
  v2 = v0[127];
  v3 = v0[126];
  v4 = v0[119];
  v5 = v0[117];
  v6 = v0[112];
  v7 = v0[111];
  sub_100883574(v0[120], v0[121], v0[122], v0[123], v0[124], v0[125]);
  sub_10000B3A8(v7, &unk_101696AC0, &qword_101390A60);
  v3(v5, v6);
  v3(v4, v6);

  v8 = v0[130];
  v9 = v0[119];
  v10 = v0[118];
  v11 = v0[117];
  v12 = v0[116];
  v13 = v0[115];
  v14 = v0[111];
  v15 = v0[110];
  v16 = v0[109];

  v17 = v0[1];

  return v17(0);
}

uint64_t sub_10088310C()
{
  v1 = v0[128];
  v2 = v0[127];
  v3 = v0[126];
  v4 = v0[119];
  v5 = v0[117];
  v6 = v0[112];
  v7 = v0[111];
  sub_100883574(v0[120], v0[121], v0[122], v0[123], v0[124], v0[125]);
  sub_10000B3A8(v7, &unk_101696AC0, &qword_101390A60);
  v3(v5, v6);
  v3(v4, v6);

  v8 = v0[131];
  v9 = v0[119];
  v10 = v0[118];
  v11 = v0[117];
  v12 = v0[116];
  v13 = v0[115];
  v14 = v0[111];
  v15 = v0[110];
  v16 = v0[109];

  v17 = v0[1];

  return v17(0);
}

uint64_t sub_100883250(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for KeyGenerationBeaconInfo() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = *(v1 + v7);
  v12 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100014744;

  return sub_10086C328(a1, v8, v9, v10, v1 + v6, v11, v12);
}

unint64_t sub_100883394()
{
  result = qword_1016ABE80;
  if (!qword_1016ABE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ABE80);
  }

  return result;
}

uint64_t sub_1008833E8(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for KeyGenerationBeaconInfo() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = (v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100014744;

  return sub_10086E7D0(a1, v10, v1 + v6, v1 + v9, v12, v13);
}

uint64_t sub_100883574(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a2 >> 60 != 15)
  {
    sub_100016590(result, a2);
    sub_100016590(a3, a4);

    return sub_100006654(a5, a6);
  }

  return result;
}

uint64_t sub_100883620(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_1000BC4D4(&qword_1016972D8, &qword_1013AAC60) - 8);
  v7 = (v5 + *(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(type metadata accessor for BeaconIdentifier() - 8);
  v10 = (v8 + *(v9 + 80) + 8) & ~*(v9 + 80);
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = v1 + v5;
  v14 = *(v1 + v5);
  v15 = *(v13 + 8);
  v16 = *(v1 + v8);
  v17 = swift_task_alloc();
  *(v2 + 16) = v17;
  *v17 = v2;
  v17[1] = sub_100014744;

  return sub_10086CCC4(a1, v11, v12, v1 + v4, v14, v15, v1 + v7, v16);
}

uint64_t sub_100883820()
{
  v2 = *(sub_1000BC4D4(&qword_1016972D8, &qword_1013AAC60) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_10086D12C(v0 + v3);
}

uint64_t sub_1008838F8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_10086E6E8(v2);
}

void sub_1008839A4(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008BB8(0, &unk_1016B2A60, NSFileHandle_ptr);
  (*(v10 + 16))(v13, a1, v9);
  v14 = sub_100878D64(v13, &selRef_fileHandleForReadingFromURL_error_);
  if (!v4)
  {
    v15 = v14;
    v101 = 0;
    if (([v14 seekToOffset:0 error:&v101] & 1) == 0)
    {
      v23 = v101;
      _convertNSErrorToError(_:)();

      swift_willThrow();
LABEL_22:

      return;
    }

    v16 = v101;
    v17 = &selRef_initWithBeaconAdvertisements_searchResultMarker_error_;
    v18 = [v15 readDataOfLength:3];
    v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = v21 >> 62;
    if ((v21 >> 62) > 1)
    {
      if (v22 != 2)
      {
        goto LABEL_20;
      }

      v25 = *(v19 + 16);
      v24 = *(v19 + 24);
      v26 = __OFSUB__(v24, v25);
      v27 = v24 - v25;
      if (!v26)
      {
        if (v27 != 3)
        {
          goto LABEL_20;
        }

        goto LABEL_14;
      }

      __break(1u);
    }

    else
    {
      if (!v22)
      {
        if (BYTE6(v21) != 3)
        {
          goto LABEL_20;
        }

LABEL_14:
        if (Data._Representation.subscript.getter() != 75 || Data._Representation.subscript.getter() != 73 || Data._Representation.subscript.getter() != 77)
        {
          goto LABEL_20;
        }

        v28 = [v15 readDataOfLength:1];
        v100 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = v29;

        v31 = v30;
        v32 = v30 >> 62;
        if ((v30 >> 62) > 1)
        {
          v33 = &selRef_initWithBeaconAdvertisements_searchResultMarker_error_;
          if (v32 != 2)
          {
            goto LABEL_36;
          }

          v37 = *(v100 + 16);
          v36 = *(v100 + 24);
          v26 = __OFSUB__(v36, v37);
          v34 = v36 - v37;
          if (!v26)
          {
LABEL_30:
            if (v34 == 1 && Data._Representation.subscript.getter() == 1)
            {
              v97 = v31;
              v38 = [v15 v33[306]];
              v98 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v40 = v39;

              v99 = v40;
              v41 = v40 >> 62;
              if ((v40 >> 62) > 1)
              {
                if (v41 != 2)
                {
                  goto LABEL_65;
                }

                v45 = *(v98 + 16);
                v95 = *(v98 + 24);
                v96 = v45;
                v46 = __DataStorage._bytes.getter();
                if (v46)
                {
                  v94 = v46;
                  v47 = __DataStorage._offset.getter();
                  v48 = v96;
                  if (__OFSUB__(v96, v47))
                  {
LABEL_117:
                    __break(1u);
                    goto LABEL_118;
                  }

                  v94 += v96 - v47;
                }

                else
                {
                  v94 = 0;
                  v48 = v96;
                }

                v54 = v95 - v48;
                if (!__OFSUB__(v95, v48))
                {
                  v55 = __DataStorage._length.getter();
                  if (v55 >= v54)
                  {
                    v53 = v54;
                  }

                  else
                  {
                    v53 = v55;
                  }

                  v52 = v94;
                  if (!v94)
                  {
                    goto LABEL_65;
                  }

LABEL_54:
                  if ((v53 + 3) >= 7)
                  {
                    v42 = *v52;
                    goto LABEL_56;
                  }

LABEL_65:
                  sub_1000BC4D4(a2, a3);
                  sub_1000041A4(a4, a2, a3);
                  swift_allocError();
                  *v63 = 0;
                  *(v63 + 4) = 1;
                  swift_willThrow();
LABEL_113:
                  sub_100016590(v98, v99);
                  sub_100016590(v100, v97);
                  goto LABEL_21;
                }
              }

              else
              {
                if (!v41)
                {
                  if ((v99 & 0xFC000000000000) != 0)
                  {
                    v42 = v98;
LABEL_56:
                    v93 = v42;
                    v56 = [v15 readDataOfLength:4];
                    v95 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                    v58 = v57;

                    v96 = v58;
                    v59 = v58 >> 62;
                    if ((v58 >> 62) > 1)
                    {
                      if (v59 != 2)
                      {
                        goto LABEL_90;
                      }

                      v61 = *(v95 + 16);
                      v94 = *(v95 + 24);
                      v92 = __DataStorage._bytes.getter();
                      if (v92)
                      {
                        v62 = __DataStorage._offset.getter();
                        if (__OFSUB__(v61, v62))
                        {
LABEL_121:
                          __break(1u);
                          goto LABEL_122;
                        }

                        v92 += v61 - v62;
                      }

                      else
                      {
                        v92 = 0;
                      }

                      v26 = __OFSUB__(v94, v61);
                      v68 = v94 - v61;
                      if (!v26)
                      {
                        v69 = __DataStorage._length.getter();
                        if (v69 >= v68)
                        {
                          v67 = v68;
                        }

                        else
                        {
                          v67 = v69;
                        }

                        v66 = v92;
                        if (!v92)
                        {
                          goto LABEL_90;
                        }

LABEL_79:
                        if ((v67 + 3) >= 7)
                        {
                          v60 = *v66;
LABEL_81:
                          LODWORD(v91) = v60;
                          v70 = [v15 readDataOfLength:4];
                          v92 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                          v72 = v71;

                          v94 = v72;
                          v73 = v72 >> 62;
                          if ((v72 >> 62) <= 1)
                          {
                            if (!v73)
                            {
                              if ((v94 & 0xFC000000000000) != 0)
                              {
                                goto LABEL_109;
                              }

                              goto LABEL_111;
                            }

                            v76 = v92;
                            v89 = (v92 >> 32) - v92;
                            if (v92 >> 32 >= v92)
                            {
                              v90 = __DataStorage._bytes.getter();
                              if (!v90)
                              {
                                __DataStorage._length.getter();
                                goto LABEL_111;
                              }

                              v77 = __DataStorage._offset.getter();
                              if (!__OFSUB__(v76, v77))
                              {
                                v78 = (v90 + v76 - v77);
                                v79 = __DataStorage._length.getter();
                                if (v78)
                                {
                                  v80 = v89;
                                  if (v79 < v89)
                                  {
                                    v80 = v79;
                                  }

                                  if ((v80 + 3) >= 7)
                                  {
                                    v81 = *v78;
LABEL_109:
                                    v86 = v100;
                                    v87 = v97;
                                    Data._Representation.subscript.getter();
                                    sub_100016590(v19, v21);
                                    sub_100016590(v86, v87);
                                    sub_100016590(v98, v99);

                                    sub_100016590(v95, v96);
                                    sub_100016590(v92, v94);
                                    return;
                                  }
                                }

                                goto LABEL_111;
                              }

LABEL_126:
                              __break(1u);
                              return;
                            }

                            goto LABEL_123;
                          }

                          if (v73 != 2)
                          {
                            goto LABEL_111;
                          }

                          v17 = *(v92 + 16);
                          v89 = *(v92 + 24);
                          v90 = __DataStorage._bytes.getter();
                          if (v90)
                          {
                            v74 = __DataStorage._offset.getter();
                            if (__OFSUB__(v17, v74))
                            {
LABEL_125:
                              __break(1u);
                              goto LABEL_126;
                            }

                            v90 = (v90 + v17 - v74);
                            goto LABEL_102;
                          }

LABEL_101:
                          v90 = 0;
LABEL_102:
                          v26 = __OFSUB__(v89, v17);
                          v82 = v89 - v17;
                          if (!v26)
                          {
                            v83 = __DataStorage._length.getter();
                            if (v83 >= v82)
                            {
                              v84 = v82;
                            }

                            else
                            {
                              v84 = v83;
                            }

                            if (v90 && (v84 + 3) >= 7)
                            {
                              v85 = *v90;
                              goto LABEL_109;
                            }

LABEL_111:
                            sub_1000BC4D4(a2, a3);
                            sub_1000041A4(a4, a2, a3);
                            swift_allocError();
                            *v88 = 1;
                            *(v88 + 4) = 2;
                            swift_willThrow();
                            sub_100016590(v92, v94);
                            goto LABEL_112;
                          }

                          goto LABEL_124;
                        }

LABEL_90:
                        sub_1000BC4D4(a2, a3);
                        sub_1000041A4(a4, a2, a3);
                        swift_allocError();
                        *v75 = 1;
                        *(v75 + 4) = 2;
                        swift_willThrow();
LABEL_112:
                        sub_100016590(v95, v96);
                        goto LABEL_113;
                      }

LABEL_120:
                      __break(1u);
                      goto LABEL_121;
                    }

                    if (!v59)
                    {
                      if ((v96 & 0xFC000000000000) != 0)
                      {
                        v60 = v95;
                        goto LABEL_81;
                      }

                      goto LABEL_90;
                    }

                    v94 = v95;
                    v91 = (v95 >> 32) - v95;
                    if (v95 >> 32 >= v95)
                    {
                      v92 = __DataStorage._bytes.getter();
                      if (!v92)
                      {
                        __DataStorage._length.getter();
                        goto LABEL_90;
                      }

                      v64 = __DataStorage._offset.getter();
                      if (!__OFSUB__(v94, v64))
                      {
                        v94 = v94 - v64 + v92;
                        v65 = __DataStorage._length.getter();
                        if (!v94)
                        {
                          goto LABEL_90;
                        }

                        v66 = v94;
                        v67 = v91;
                        if (v65 < v91)
                        {
                          v67 = v65;
                        }

                        goto LABEL_79;
                      }

LABEL_122:
                      __break(1u);
LABEL_123:
                      __break(1u);
LABEL_124:
                      __break(1u);
                      goto LABEL_125;
                    }

LABEL_119:
                    __break(1u);
                    goto LABEL_120;
                  }

                  goto LABEL_65;
                }

                v95 = (v98 >> 32) - v98;
                v96 = v98;
                if (v98 >> 32 >= v98)
                {
                  v49 = __DataStorage._bytes.getter();
                  if (!v49)
                  {
                    __DataStorage._length.getter();
                    goto LABEL_65;
                  }

                  v94 = v49;
                  v50 = __DataStorage._offset.getter();
                  if (!__OFSUB__(v96, v50))
                  {
                    v96 = v96 - v50 + v94;
                    v51 = __DataStorage._length.getter();
                    v52 = v96;
                    if (!v96)
                    {
                      goto LABEL_65;
                    }

                    v53 = v95;
                    if (v51 < v95)
                    {
                      v53 = v51;
                    }

                    goto LABEL_54;
                  }

LABEL_118:
                  __break(1u);
                  goto LABEL_119;
                }

                __break(1u);
              }

              __break(1u);
              goto LABEL_117;
            }

LABEL_36:
            v43 = Data._Representation.subscript.getter();
            sub_1000BC4D4(a2, a3);
            sub_1000041A4(a4, a2, a3);
            swift_allocError();
            *v44 = v43;
            *(v44 + 4) = 0;
            swift_willThrow();
            sub_100016590(v100, v31);
            goto LABEL_21;
          }

          __break(1u);
        }

        else
        {
          v33 = &selRef_initWithBeaconAdvertisements_searchResultMarker_error_;
          if (!v32)
          {
            v34 = BYTE6(v31);
            goto LABEL_30;
          }
        }

        LODWORD(v34) = HIDWORD(v100) - v100;
        if (__OFSUB__(HIDWORD(v100), v100))
        {
          __break(1u);
        }

        v34 = v34;
        goto LABEL_30;
      }

      if (!__OFSUB__(HIDWORD(v19), v19))
      {
        if (HIDWORD(v19) - v19 == 3)
        {
          goto LABEL_14;
        }

LABEL_20:
        sub_1000BC4D4(a2, a3);
        sub_1000041A4(a4, a2, a3);
        swift_allocError();
        *v35 = 0;
        *(v35 + 4) = 2;
        swift_willThrow();
LABEL_21:
        sub_100016590(v19, v21);
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_101;
  }
}

uint64_t sub_1008843F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_10086C574(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1008844B8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_100010F48(a1, v5);
}

uint64_t sub_100884570()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014650;

  return sub_10086D740();
}

uint64_t sub_100884624(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016ABF48, &qword_1013BFE28);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1008846D4()
{
  if (!qword_1016ABFB8)
  {
    sub_10049E92C();
    v0 = type metadata accessor for KeyIndexMapGenerator.Header();
    if (!v1)
    {
      atomic_store(v0, &qword_1016ABFB8);
    }
  }
}

uint64_t sub_100884744(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1008847C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10088484C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = type metadata accessor for URL();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1008848D8()
{
  if (!qword_1016AC050)
  {
    v0 = type metadata accessor for ClosedRange();
    if (!v1)
    {
      atomic_store(v0, &qword_1016AC050);
    }
  }
}

unint64_t sub_100884944()
{
  result = qword_1016AC080;
  if (!qword_1016AC080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AC080);
  }

  return result;
}

uint64_t sub_1008849E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a4;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = __chkstk_darwin(v7);
  v42 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v38 - v13;
  v15 = __chkstk_darwin(v12);
  v41 = &v38 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v38 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v38 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v38 - v24;
  __chkstk_darwin(v23);
  v27 = &v38 - v26;
  if (!a2)
  {
    v40 = a3;
    v28 = a1;
    if (qword_101694A18 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_1000076D4(v29, qword_10177B538);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Caller attempted to calculate dateInterval for bucket 0!", v32, 2u);
    }

    a2 = 1;
    a1 = v28;
  }

  v39 = a2;
  Date.timeIntervalSinceReferenceDate.getter();
  Date.init(timeIntervalSinceReferenceDate:)();
  v33 = v8[2];
  v33(v22, a1, v7);
  Date.init(timeInterval:since:)();
  v40 = v27;
  v33(v22, v27, v7);
  Date.init(timeInterval:since:)();
  v33(v22, v19, v7);
  Date.init(timeInterval:since:)();
  Date.timeIntervalSince1970.getter();
  v34 = v8[1];
  v34(v14, v7);
  v35 = v41;
  Date.init(timeIntervalSince1970:)();
  if (v39 == 1)
  {
    v36 = v25;
  }

  else
  {
    v36 = v19;
  }

  v33(v22, v36, v7);
  v33(v42, v35, v7);
  DateInterval.init(start:end:)();
  v34(v35, v7);
  v34(v19, v7);
  v34(v25, v7);
  return (v34)(v40, v7);
}

uint64_t sub_100884E1C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X5>, char *a7@<X8>)
{
  v181 = a6;
  v184 = a5;
  v177 = a3;
  v165 = a2;
  v191 = a7;
  v180 = type metadata accessor for Calendar.Component();
  v179 = *(v180 - 8);
  v9 = *(v179 + 64);
  __chkstk_darwin(v180);
  v178 = &v159 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = type metadata accessor for Date();
  v182 = *(v176 - 8);
  v11 = *(v182 + 64);
  v12 = __chkstk_darwin(v176);
  v168 = &v159 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v160 = &v159 - v15;
  v16 = __chkstk_darwin(v14);
  v166 = &v159 - v17;
  v18 = __chkstk_darwin(v16);
  v159 = &v159 - v19;
  v20 = __chkstk_darwin(v18);
  v171 = &v159 - v21;
  __chkstk_darwin(v20);
  v169 = &v159 - v22;
  v198 = type metadata accessor for UUID();
  v23 = *(v198 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v198);
  v26 = &v159 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v28 = *(*(v27 - 8) + 64);
  v29 = __chkstk_darwin(v27);
  v164 = &v159 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v162 = &v159 - v32;
  v33 = __chkstk_darwin(v31);
  v163 = &v159 - v34;
  v35 = __chkstk_darwin(v33);
  v161 = &v159 - v36;
  v37 = __chkstk_darwin(v35);
  v175 = &v159 - v38;
  __chkstk_darwin(v37);
  v40 = &v159 - v39;
  v173 = type metadata accessor for Calendar();
  v172 = *(v173 - 8);
  v41 = *(v172 + 64);
  __chkstk_darwin(v173);
  v183 = &v159 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.current.getter();
  LODWORD(v189) = static os_log_type_t.default.getter();
  if (qword_101695098 != -1)
  {
    swift_once();
  }

  v197 = qword_10177C3E0;
  v196 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v43 = swift_allocObject();
  v195 = xmmword_10138BBE0;
  *(v43 + 16) = xmmword_10138BBE0;
  v170 = a4;
  sub_1000D3410(a4, v40);
  v44 = String.init<A>(describing:)();
  v46 = v45;
  *(v43 + 56) = &type metadata for String;
  v47 = sub_100008C00();
  *(v43 + 64) = v47;
  *(v43 + 32) = v44;
  *(v43 + 40) = v46;
  v49 = a1[3];
  v48 = a1[4];
  v50 = sub_1000035D0(a1, v49);
  v51 = *(*(v48 + 8) + 8);
  v193 = *(v51 + 32);
  v194 = v50;
  v193(v49, v51);
  v52 = UUID.uuidString.getter();
  v54 = v53;
  v192 = *(v23 + 8);
  v192(v26, v198);
  *(v43 + 96) = &type metadata for String;
  *(v43 + 104) = v47;
  *(v43 + 72) = v52;
  *(v43 + 80) = v54;
  os_log(_:dso:log:_:_:)();

  v174 = static os_log_type_t.default.getter();
  v55 = swift_allocObject();
  *(v55 + 16) = v195;
  v199 = v184;
  v167 = v184;
  sub_1000BC4D4(&qword_1016AC150, ":^\n");
  v56 = String.init<A>(describing:)();
  *(v55 + 56) = &type metadata for String;
  *(v55 + 64) = v47;
  *(v55 + 32) = v56;
  *(v55 + 40) = v57;
  v186 = v51;
  v187 = v49;
  v185 = v51 + 32;
  v193(v49, v51);
  v58 = UUID.uuidString.getter();
  v60 = v59;
  v188 = v26;
  v190 = v23 + 8;
  v192(v26, v198);
  *(v55 + 96) = &type metadata for String;
  *(v55 + 104) = v47;
  v189 = v47;
  *(v55 + 72) = v58;
  *(v55 + 80) = v60;
  os_log(_:dso:log:_:_:)();

  v61 = v175;
  sub_1000D3410(v177, v175);
  v62 = v182;
  v63 = *(v182 + 48);
  v64 = v176;
  if (v63(v61, 1, v176) != 1)
  {
    v78 = *(v62 + 32);
    v79 = v169;
    v177 = v78;
    v78(v169, v61, v64);
    v80 = sub_1000035D0(v181, v181[3]);
    v81 = sub_1010741F8(*v80);
    v82 = v179;
    v83 = v178;
    v84 = v180;
    result = (*(v179 + 104))(v178, enum case for Calendar.Component.minute(_:), v180);
    if (!__OFSUB__(0, v81))
    {
      v85 = v161;
      Calendar.date(byAdding:value:to:wrappingComponents:)();
      (*(v82 + 8))(v83, v84);
      if (v63(v85, 1, v64) == 1)
      {
        v86 = v171;
        (*(v182 + 16))(v171, v79, v64);
        v87 = v63(v85, 1, v64);
        v88 = v163;
        v89 = v79;
        if (v87 != 1)
        {
          sub_1000D3480(v85);
        }
      }

      else
      {
        v86 = v171;
        v177(v171, v85, v64);
        v88 = v163;
        v89 = v79;
      }

      sub_1000D3410(v170, v88);
      if (v63(v88, 1, v64) == 1)
      {
        sub_1000D3480(v88);
        v93 = v191;
        v94 = v198;
        v62 = v182;
        v95 = v188;
      }

      else
      {
        v107 = v159;
        v177(v159, v88, v64);
        v108 = static Date.> infix(_:_:)();
        v93 = v191;
        v95 = v188;
        if (v108)
        {
          v62 = v182;
          (*(v182 + 16))(v191, v107, v64);
          static os_log_type_t.default.getter();
          v109 = swift_allocObject();
          *(v109 + 16) = v195;
          sub_100887CC0(&qword_1016969A0, &type metadata accessor for Date);
          v110 = dispatch thunk of CustomStringConvertible.description.getter();
          v74 = v89;
          v111 = v189;
          *(v109 + 56) = &type metadata for String;
          *(v109 + 64) = v111;
          *(v109 + 32) = v110;
          *(v109 + 40) = v112;
          v193(v187, v186);
          v113 = UUID.uuidString.getter();
          v114 = v95;
          v116 = v115;
          v192(v114, v198);
          *(v109 + 96) = &type metadata for String;
          *(v109 + 104) = v111;
          *(v109 + 72) = v113;
          *(v109 + 80) = v116;
          os_log(_:dso:log:_:_:)();

          v106 = *(v62 + 8);
          v106(v107, v64);
          v106(v171, v64);
LABEL_22:
          v117 = v74;
LABEL_27:
          v106(v117, v64);
          goto LABEL_28;
        }

        v62 = v182;
        (*(v182 + 8))(v107, v64);
        v94 = v198;
      }

      (*(v62 + 16))(v93, v86, v64);
      static os_log_type_t.default.getter();
      v126 = swift_allocObject();
      *(v126 + 16) = v195;
      sub_100887CC0(&qword_1016969A0, &type metadata accessor for Date);
      v127 = dispatch thunk of CustomStringConvertible.description.getter();
      v128 = v189;
      *(v126 + 56) = &type metadata for String;
      *(v126 + 64) = v128;
      *(v126 + 32) = v127;
      *(v126 + 40) = v129;
      v193(v187, v186);
      v130 = UUID.uuidString.getter();
      v131 = v95;
      v133 = v132;
      v192(v131, v94);
      *(v126 + 96) = &type metadata for String;
      *(v126 + 104) = v128;
      *(v126 + 72) = v130;
      *(v126 + 80) = v133;
      os_log(_:dso:log:_:_:)();

      v106 = *(v62 + 8);
      v106(v171, v64);
      v117 = v169;
      goto LABEL_27;
    }

LABEL_35:
    __break(1u);
    return result;
  }

  sub_1000D3480(v61);
  v65 = sub_1000035D0(v181, v181[3]);
  v66 = sub_1010741A4(*v65);
  v67 = v179;
  v68 = v178;
  v69 = v180;
  result = (*(v179 + 104))(v178, enum case for Calendar.Component.day(_:), v180);
  if (__OFSUB__(0, v66))
  {
    __break(1u);
    goto LABEL_35;
  }

  v71 = v162;
  v72 = v165;
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  (*(v67 + 8))(v68, v69);
  v73 = v71;
  if (v63(v71, 1, v64) == 1)
  {
    v74 = v166;
    (*(v62 + 16))(v166, v72, v64);
    v75 = v63(v73, 1, v64) == 1;
    v76 = v170;
    if (!v75)
    {
      v77 = v170;
      sub_1000D3480(v73);
      v76 = v77;
    }
  }

  else
  {
    v74 = v166;
    (*(v62 + 32))(v166, v73, v64);
    v76 = v170;
  }

  v90 = v164;
  sub_1000D3410(v76, v164);
  if (v63(v90, 1, v64) != 1)
  {
    v96 = v160;
    (*(v62 + 32))(v160, v90, v64);
    v97 = static Date.> infix(_:_:)();
    v91 = v191;
    v92 = v188;
    if ((v97 & 1) == 0)
    {
      (*(v62 + 8))(v96, v64);
      goto LABEL_24;
    }

    (*(v62 + 16))(v191, v96, v64);
    static os_log_type_t.default.getter();
    v98 = swift_allocObject();
    *(v98 + 16) = v195;
    sub_100887CC0(&qword_1016969A0, &type metadata accessor for Date);
    v99 = dispatch thunk of CustomStringConvertible.description.getter();
    v100 = v189;
    *(v98 + 56) = &type metadata for String;
    *(v98 + 64) = v100;
    *(v98 + 32) = v99;
    *(v98 + 40) = v101;
    v193(v187, v186);
    v102 = UUID.uuidString.getter();
    v103 = v92;
    v105 = v104;
    v192(v103, v198);
    *(v98 + 96) = &type metadata for String;
    *(v98 + 104) = v100;
    *(v98 + 72) = v102;
    *(v98 + 80) = v105;
    os_log(_:dso:log:_:_:)();

    v106 = *(v62 + 8);
    v106(v96, v64);
    goto LABEL_22;
  }

  sub_1000D3480(v90);
  v91 = v191;
  v92 = v188;
LABEL_24:
  (*(v62 + 16))(v91, v74, v64);
  static os_log_type_t.default.getter();
  v118 = swift_allocObject();
  *(v118 + 16) = v195;
  sub_100887CC0(&qword_1016969A0, &type metadata accessor for Date);
  v119 = dispatch thunk of CustomStringConvertible.description.getter();
  v120 = v189;
  *(v118 + 56) = &type metadata for String;
  *(v118 + 64) = v120;
  *(v118 + 32) = v119;
  *(v118 + 40) = v121;
  v193(v187, v186);
  v122 = UUID.uuidString.getter();
  v123 = v92;
  v125 = v124;
  v192(v123, v198);
  *(v118 + 96) = &type metadata for String;
  *(v118 + 104) = v120;
  *(v118 + 72) = v122;
  *(v118 + 80) = v125;
  os_log(_:dso:log:_:_:)();

  v106 = *(v62 + 8);
  v106(v74, v64);
LABEL_28:
  v134 = v198;
  v135 = v191;
  if (v184)
  {
    v136 = v167;
    v137 = [v136 timestamp];
    v138 = v64;
    v139 = v168;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v137) = static Date.> infix(_:_:)();
    v106(v139, v138);
    if (v137)
    {
      v140 = sub_1000035D0(v181, v181[3]);
      if (sub_1010749C8(*v140))
      {
        v141 = [v136 timestamp];
        v142 = v168;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v106(v135, v138);
        (*(v62 + 32))(v135, v142, v138);
        static os_log_type_t.default.getter();
        v143 = swift_allocObject();
        *(v143 + 16) = v195;
        sub_100887CC0(&qword_1016969A0, &type metadata accessor for Date);
        v144 = dispatch thunk of CustomStringConvertible.description.getter();
        v146 = v188;
        v145 = v189;
        *(v143 + 56) = &type metadata for String;
        *(v143 + 64) = v145;
        *(v143 + 32) = v144;
        *(v143 + 40) = v147;
        v193(v187, v186);
        v148 = UUID.uuidString.getter();
        v150 = v149;
        v192(v146, v198);
        *(v143 + 96) = &type metadata for String;
        *(v143 + 104) = v145;
        *(v143 + 72) = v148;
        *(v143 + 80) = v150;
        os_log(_:dso:log:_:_:)();

        type metadata accessor for Transaction();
        static Transaction.asyncTask(name:block:)();
      }
    }

    v134 = v198;
  }

  static os_log_type_t.default.getter();
  v151 = swift_allocObject();
  *(v151 + 16) = v195;
  sub_100887CC0(&qword_1016969A0, &type metadata accessor for Date);
  v152 = dispatch thunk of CustomStringConvertible.description.getter();
  v154 = v188;
  v153 = v189;
  *(v151 + 56) = &type metadata for String;
  *(v151 + 64) = v153;
  *(v151 + 32) = v152;
  *(v151 + 40) = v155;
  v193(v187, v186);
  v156 = UUID.uuidString.getter();
  v158 = v157;
  v192(v154, v134);
  *(v151 + 96) = &type metadata for String;
  *(v151 + 104) = v153;
  *(v151 + 72) = v156;
  *(v151 + 80) = v158;
  os_log(_:dso:log:_:_:)();

  return (*(v172 + 8))(v183, v173);
}

uint64_t sub_1008861D0(char a1)
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v2 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v3 = v6;
  if (a1)
  {
    v4 = sub_101073C10(v6);

    if ((v4 & 0x8000000000000000) == 0)
    {
      return v4;
    }

    __break(1u);
  }

  v4 = sub_101073524(v3);

  if ((v4 & 0x8000000000000000) == 0)
  {
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1008862A4()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177B538);
  sub_1000076D4(v0, qword_10177B538);
  return Logger.init(subsystem:category:)();
}

uint64_t TimeBasedKeySequence.description.getter(char a1)
{
  if (a1)
  {
    return 0x61646E6F6365732ELL;
  }

  else
  {
    return 0x7972616D6972702ELL;
  }
}

searchpartyd::TimeBasedKeySequence_optional __swiftcall TimeBasedKeySequence.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 2)
  {
    v1.value = searchpartyd_TimeBasedKeySequence_secondary;
  }

  else
  {
    v1.value = searchpartyd_TimeBasedKeySequence_unknownDefault;
  }

  if (rawValue == 1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

Swift::Int sub_100886388()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_1008863D8()
{
  if (*v0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  Hasher._combine(_:)(v1);
}

Swift::Int sub_100886410()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void *sub_10088645C@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_10088647C(uint64_t *a1@<X8>)
{
  v2 = 1;
  if (*v1)
  {
    v2 = 2;
  }

  *a1 = v2;
}

uint64_t sub_100886494()
{
  if (*v0)
  {
    result = 0x61646E6F6365732ELL;
  }

  else
  {
    result = 0x7972616D6972702ELL;
  }

  *v0;
  return result;
}

char *sub_1008864D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DateInterval();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TimeBasedKeysCriteria();
  v52 = *(v9 - 8);
  v10 = *(v52 + 64);
  v11 = __chkstk_darwin(v9);
  v13 = (&v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v15 = &v48 - v14;
  v16 = [a1 dateInterval];
  if (v16)
  {
    v17 = v16;
    static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v5 + 32))(v15, v8, v4);
LABEL_3:
    swift_storeEnumTagMultiPayload();
LABEL_4:
    sub_100887D08(v15, a2);
    return (*(v52 + 56))(a2, 0, 1, v9);
  }

  v19 = [a1 sequence];
  if (!v19)
  {
LABEL_14:
    v28 = [a1 indices];
    if (!v28)
    {
      v39 = [a1 index];
      if (v39)
      {
        v40 = v39;
        v41 = [a1 hint];
        if (v41)
        {
          v42 = v41;
          v43 = [v40 unsignedLongLongValue];
          v44 = [v42 unsignedCharValue];

          *v15 = v43;
          v15[8] = v44;
          goto LABEL_3;
        }
      }

      goto LABEL_3;
    }

    v29 = v28;
    sub_100390F70();
    v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v30 >> 62)
    {
      v31 = _CocoaArrayWrapper.endIndex.getter();
      if (v31)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v31)
      {
LABEL_17:
        v48 = v13;
        v49 = a1;
        v50 = v9;
        v51 = a2;
        v53 = _swiftEmptyArrayStorage;
        result = sub_101123BF8(0, v31 & ~(v31 >> 63), 0);
        if (v31 < 0)
        {
          __break(1u);
          return result;
        }

        v32 = 0;
        v33 = v53;
        do
        {
          if ((v30 & 0xC000000000000001) != 0)
          {
            v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v34 = *(v30 + 8 * v32 + 32);
          }

          v35 = v34;
          v36 = [v34 unsignedLongLongValue];

          v53 = v33;
          v38 = v33[2];
          v37 = v33[3];
          if (v38 >= v37 >> 1)
          {
            sub_101123BF8((v37 > 1), v38 + 1, 1);
            v33 = v53;
          }

          ++v32;
          v33[2] = v38 + 1;
          v33[v38 + 4] = v36;
        }

        while (v31 != v32);

        v9 = v50;
        a2 = v51;
        v13 = v48;
LABEL_38:
        *v13 = v33;
        swift_storeEnumTagMultiPayload();
        sub_100887D08(v13, v15);
        goto LABEL_4;
      }
    }

    v33 = _swiftEmptyArrayStorage;
    goto LABEL_38;
  }

  v20 = v19;
  v21 = [a1 index];
  if (!v21)
  {
    v22 = v20;
LABEL_13:

    goto LABEL_14;
  }

  v22 = v21;
  v23 = [a1 hint];
  if (!v23)
  {

    goto LABEL_13;
  }

  v24 = v23;
  v25 = [v20 integerValue];
  if (v25 == 1)
  {
    v26 = a1;
    v27 = 0;
    goto LABEL_30;
  }

  if (v25 == 2)
  {
    v26 = a1;
    v27 = 1;
LABEL_30:
    v45 = [v22 unsignedLongLongValue];
    v46 = [v24 unsignedCharValue];

    *v15 = v27;
    *(v15 + 1) = v45;
    v15[16] = v46;
    goto LABEL_3;
  }

  v47 = *(v52 + 56);

  return v47(a2, 1, 1, v9);
}

uint64_t type metadata accessor for TimeBasedKeysCriteria()
{
  result = qword_1016AC100;
  if (!qword_1016AC100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100886F38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimeBasedKeysCriteria();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100886FA0()
{
  result = qword_1016AC088;
  if (!qword_1016AC088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AC088);
  }

  return result;
}

void sub_100887008()
{
  type metadata accessor for DateInterval();
  if (v0 <= 0x3F)
  {
    sub_1008870A4();
    if (v1 <= 0x3F)
    {
      sub_1008870F4();
      if (v2 <= 0x3F)
      {
        sub_100887154();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_1008870A4()
{
  if (!qword_1016AC110)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1016AC110);
    }
  }
}

void sub_1008870F4()
{
  if (!qword_1016AC118)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1016AC118);
    }
  }
}

void sub_100887154()
{
  if (!qword_1016AC120)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1016AC120);
    }
  }
}

uint64_t sub_1008871D8()
{
  v1 = type metadata accessor for AnalyticsEvent(0);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  v4 = swift_allocObject();
  *(v0 + 16) = v4;
  swift_defaultActor_initialize();
  *(v4 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v5 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  v6 = type metadata accessor for DispatchTime();
  v7 = *(*(v6 - 8) + 56);
  v7(&v4[v5], 1, 1, v6);
  v7(&v4[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v6);
  *(v4 + 15) = 0xD00000000000003FLL;
  *(v4 + 16) = 0x8000000101361E00;

  return _swift_task_switch(sub_100887320, v4, 0);
}

uint64_t sub_100887320()
{
  sub_10114C8F4(v0[2]);
  type metadata accessor for AnalyticsPublisher();
  v0[3] = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1008873F4;
  v2 = v0[2];

  return sub_101163F78(v2);
}

uint64_t sub_1008873F4()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return _swift_task_switch(sub_10088750C, 0, 0);
}

uint64_t sub_10088750C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_10088756C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v63 = a1;
  v7 = type metadata accessor for UUID();
  v65 = *(v7 - 1);
  v8 = *(v65 + 64);
  __chkstk_darwin(v7);
  v67 = &v59[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = __chkstk_darwin(v10);
  v64 = &v59[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __chkstk_darwin(v13);
  v17 = &v59[-v16];
  v18 = __chkstk_darwin(v15);
  v69 = &v59[-v19];
  __chkstk_darwin(v18);
  v68 = &v59[-v20];
  v21 = sub_1008861D0(a4 & 1);
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v22 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v23 = sub_101073524(v70);

  if (v23 < 0)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v66 = v7;
  Date.timeIntervalSinceReferenceDate.getter();
  Date.init(timeIntervalSinceReferenceDate:)();
  sub_100887CC0(&qword_1016C9070, &type metadata accessor for Date);
  v24 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v7 = v11[2];
  if (v24)
  {
    v25 = a2;
  }

  else
  {
    v25 = a3;
  }

  (v7)(v69, v25, v10);
  Date.timeIntervalSince(_:)();
  v27 = v26 / (v21 * 60.0);
  if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_22;
  }

  if (v27 <= -1.0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v27 >= 1.84467441e19)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  LODWORD(v62) = a4;
  a4 = v27 + 1;
  if (v27 != -1)
  {
    if (qword_101694A18 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  swift_once();
LABEL_12:
  v28 = type metadata accessor for Logger();
  sub_1000076D4(v28, qword_10177B538);
  (v7)(v17, a2, v10);
  v29 = v64;
  (v7)(v64, a3, v10);
  v30 = v65;
  v31 = v66;
  (*(v65 + 16))(v67, v63, v66);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v70 = v63;
    *v34 = 136447491;
    v35 = (v62 & 1) == 0;
    if (v62)
    {
      v36 = 0x61646E6F6365732ELL;
    }

    else
    {
      v36 = 0x7972616D6972702ELL;
    }

    v62 = v32;
    if (v35)
    {
      v37 = 0xE800000000000000;
    }

    else
    {
      v37 = 0xEA00000000007972;
    }

    v38 = sub_1000136BC(v36, v37, &v70);
    v60 = v33;
    v39 = v29;
    v40 = v38;

    *(v34 + 4) = v40;
    *(v34 + 12) = 2048;
    v61 = a4;
    *(v34 + 14) = a4;
    *(v34 + 22) = 2082;
    sub_100887CC0(&qword_1016969A0, &type metadata accessor for Date);
    v41 = dispatch thunk of CustomStringConvertible.description.getter();
    v43 = v42;
    v44 = v11[1];
    v44(v17, v10);
    v45 = sub_1000136BC(v41, v43, &v70);

    *(v34 + 24) = v45;
    *(v34 + 32) = 2082;
    v46 = dispatch thunk of CustomStringConvertible.description.getter();
    v48 = v47;
    v44(v39, v10);
    v49 = sub_1000136BC(v46, v48, &v70);

    *(v34 + 34) = v49;
    *(v34 + 42) = 2160;
    *(v34 + 44) = 1752392040;
    *(v34 + 52) = 2081;
    sub_100887CC0(&qword_101696930, &type metadata accessor for UUID);
    v50 = v66;
    v51 = v67;
    v52 = dispatch thunk of CustomStringConvertible.description.getter();
    v54 = v53;
    (*(v30 + 8))(v51, v50);
    v55 = sub_1000136BC(v52, v54, &v70);

    *(v34 + 54) = v55;
    v56 = v62;
    _os_log_impl(&_mh_execute_header, v62, v60, "Bucket [%{public}s] calculated to ‣%llu baseTime: %{public}s date: %{public}s  beacon: %{private,mask.hash}s.", v34, 0x3Eu);
    swift_arrayDestroy();

    v44(v69, v10);
    v44(v68, v10);
    return v61;
  }

  else
  {

    (*(v30 + 8))(v67, v31);
    v58 = v11[1];
    v58(v29, v10);
    v58(v17, v10);
    v58(v69, v10);
    v58(v68, v10);
    return a4;
  }
}

uint64_t sub_100887CC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100887D08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimeBasedKeysCriteria();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_100887D6C()
{
  if (v0[6])
  {
    v1 = v0[6];
  }

  else
  {
    v2 = v0[3];
    v3 = v0[4];
    v4 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for XPCScheduler();
    v1 = swift_allocObject();
    v1[8] = v4;
    v1[9] = 0;
    v1[2] = 0xD000000000000013;
    v1[3] = 0x8000000101361F80;
    v1[4] = 0x3FF0000000000000;
    v1[5] = v2;
    v1[6] = v3;
    v1[7] = sub_1008890AC;
    swift_retain_n();
    v5 = v0;
    sub_10073C0D8();

    v6 = v0[6];
    v5[6] = v1;
  }

  return v1;
}

uint64_t sub_100887E70()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10088803C();
  }

  return result;
}

uint64_t sub_100887EC8(uint64_t a1)
{
  v2 = v1;
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v4 = qword_10177B348;
  v5 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  sub_101074564(v15);
  v7 = v6;

  *(v2 + 24) = v7 * 60.0;
  v8 = *(v4 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  sub_101074570(v15);
  v10 = v9;

  *(v2 + 32) = v10 * 60.0;
  v11 = *(v4 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  sub_10107457C(v15);
  v13 = v12;

  *(v2 + 40) = v13 * 60.0;
  *(v2 + 48) = 0;
  *(v2 + 16) = a1;
  return v2;
}

uint64_t sub_10088803C()
{
  v1 = type metadata accessor for UnwantedTrackingUserNotification();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v90 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for WildModeAssociationRecord(0);
  v4 = *(v79 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v79);
  v80 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v78 = &v74 - v9;
  v10 = __chkstk_darwin(v8);
  v87 = &v74 - v11;
  v12 = __chkstk_darwin(v10);
  v81 = &v74 - v13;
  __chkstk_darwin(v12);
  v15 = &v74 - v14;
  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694F58 != -1)
  {
    goto LABEL_53;
  }

  while (1)
  {
    sub_100EB3A04(0xD000000000000012, 0x8000000101361ED0, qword_10177C218);
    if (v22)
    {
      v23 = v0[5];
    }

    else
    {
      v23 = v21;
    }

    static Date.trustedNow.getter(v20);
    static os_log_type_t.info.getter();
    if (qword_1016950B0 != -1)
    {
      swift_once();
    }

    v24 = qword_10177C3F8;
    v89 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v25 = swift_allocObject();
    v88 = xmmword_101385D80;
    *(v25 + 16) = xmmword_101385D80;
    *(v25 + 56) = &type metadata for Double;
    *(v25 + 64) = &protocol witness table for Double;
    *(v25 + 32) = v23;
    os_log(_:dso:log:_:_:)();

    v91 = *(v0 + 2);
    v26 = sub_10002F740();
    __chkstk_darwin(v26);
    v76 = v20;
    *(&v74 - 2) = v20;
    *(&v74 - 1) = v23;
    v28 = sub_10002EBE8(sub_100888F10, (&v74 - 4), v27);
    v29 = *(v28 + 16);
    v77 = v17;
    if (!v29)
    {
      break;
    }

    v86 = v24;
    v75 = v16;
    v30 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v92 = v28;
    v82 = v30;
    v17 = v28 + v30;
    v85 = v96;
    v31 = *(v4 + 72);
    v84 = "followingPlaySound&id=";
    v83 = "sHandle8@NSError16";
    v32 = v28 + v30;
    v93 = v29;
    v94 = v31;
    do
    {
      sub_100888F34(v32, v15, type metadata accessor for WildModeAssociationRecord);
      static os_log_type_t.default.getter();
      v33 = swift_allocObject();
      *(v33 + 16) = v88;
      v34 = UUID.uuidString.getter();
      v36 = v35;
      *(v33 + 56) = &type metadata for String;
      *(v33 + 64) = sub_100008C00();
      *(v33 + 32) = v34;
      *(v33 + 40) = v36;
      os_log(_:dso:log:_:_:)();

      v37 = *(v91 + 168);
      if (qword_101694550 != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for URL();
      v39 = sub_1000076D4(v38, qword_10177A8D0);
      v40 = *(v37 + 16);
      v41 = __chkstk_darwin(v39);
      *(&v74 - 4) = v37;
      *(&v74 - 3) = v15;
      *(&v74 - 2) = v41;
      OS_dispatch_queue.sync<A>(execute:)();
      v42 = v90;
      sub_100888F34(v15, &v90[*(v1 + 20)], type metadata accessor for WildModeAssociationRecord);
      *v42 = 2;
      v42[*(v1 + 24)] = 66;
      if (qword_101694EE0 != -1)
      {
        swift_once();
      }

      v98[3] = v1;
      v98[4] = &off_1016159B8;
      v43 = sub_1000280DC(v98);
      sub_100888F34(v42, v43, type metadata accessor for UnwantedTrackingUserNotification);
      v44 = *v43;
      v45 = objc_allocWithZone(UNUserNotificationCenter);
      v46 = String._bridgeToObjectiveC()();

      v47 = [v45 initWithBundleIdentifier:v46];

      sub_10001F280(v98, v97);
      v48 = swift_allocObject();
      sub_100031694(v97, v48 + 16);
      *(v48 + 56) = v47;
      v96[2] = sub_10079A23C;
      v96[3] = v48;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v96[0] = sub_100888E9C;
      v96[1] = &unk_1016373A8;
      v49 = _Block_copy(aBlock);
      v50 = v47;

      [v50 getDeliveredNotificationsWithCompletionHandler:v49];
      _Block_release(v49);

      sub_100888F9C(v42, type metadata accessor for UnwantedTrackingUserNotification);
      sub_100007BAC(v98);
      sub_100888F9C(v15, type metadata accessor for WildModeAssociationRecord);
      v32 += v94;
      --v29;
    }

    while (v29);
    v51 = 0;
    v0 = _swiftEmptyArrayStorage;
    v16 = 250;
    v20 = v17;
    v15 = v79;
    v4 = v81;
    v1 = v92;
    do
    {
      if (v51 >= *(v1 + 16))
      {
        __break(1u);
        goto LABEL_52;
      }

      sub_100888F34(v20, v4, type metadata accessor for WildModeAssociationRecord);
      v53 = *(v4 + *(v15 + 16));
      if (v53 == 8 || (v53 & 0xFA) == 0)
      {
        sub_100888F9C(v4, type metadata accessor for WildModeAssociationRecord);
        v52 = v94;
      }

      else
      {
        sub_100888FFC(v4, v87);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v0;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_101124B2C(0, *(v0 + 2) + 1, 1);
          v0 = aBlock[0];
        }

        v52 = v94;
        v57 = *(v0 + 2);
        v56 = *(v0 + 3);
        if (v57 >= v56 >> 1)
        {
          sub_101124B2C(v56 > 1, v57 + 1, 1);
          v52 = v94;
          v0 = aBlock[0];
        }

        *(v0 + 2) = v57 + 1;
        sub_100888FFC(v87, v0 + v82 + v57 * v52);
        v4 = v81;
        v1 = v92;
      }

      ++v51;
      v20 += v52;
    }

    while (v93 != v51);
    v58 = *(v0 + 2);

    v4 = 0;
    v0 = _swiftEmptyArrayStorage;
    v16 = 1;
    v1 = 379;
    v20 = v78;
    while (v4 < *(v92 + 16))
    {
      sub_100888F34(v17, v20, type metadata accessor for WildModeAssociationRecord);
      v59 = v20[*(v15 + 16)];
      v60 = v59 > 8;
      v61 = (1 << v59) & 0x17B;
      if (v60 || v61 == 0)
      {
        sub_100888FFC(v20, v80);
        v63 = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v0;
        if ((v63 & 1) == 0)
        {
          sub_101124B2C(0, *(v0 + 2) + 1, 1);
          v0 = aBlock[0];
        }

        v64 = v94;
        v66 = *(v0 + 2);
        v65 = *(v0 + 3);
        if (v66 >= v65 >> 1)
        {
          sub_101124B2C(v65 > 1, v66 + 1, 1);
          v64 = v94;
          v0 = aBlock[0];
        }

        *(v0 + 2) = v66 + 1;
        sub_100888FFC(v80, v0 + v82 + v66 * v64);
        v15 = v79;
        v20 = v78;
      }

      else
      {
        sub_100888F9C(v20, type metadata accessor for WildModeAssociationRecord);
      }

      ++v4;
      v17 += v94;
      if (v93 == v4)
      {

        v67 = *(v0 + 2);

        v16 = v75;
        if (v58)
        {
          if (qword_101694BE8 != -1)
          {
            swift_once();
          }

          v68 = type metadata accessor for Logger();
          sub_1000076D4(v68, qword_10177BA08);
          v69 = Logger.logObject.getter();
          v70 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v69, v70))
          {
            v71 = swift_slowAlloc();
            *v71 = 67109120;
            _os_log_impl(&_mh_execute_header, v69, v70, "Requesting SPUnknownBeaconsChangedNotification to be posted. Bypass rate limit? %{BOOL}d", v71, 8u);
          }

          ThrottledDarwinPoster.post(bypassRateLimit:)(0);
          if (v72)
          {
          }
        }

        if (v67)
        {
          sub_100A8AF58();
        }

        return (*(v77 + 8))(v76, v16);
      }
    }

LABEL_52:
    __break(1u);
LABEL_53:
    swift_once();
  }

  static os_log_type_t.info.getter();
  os_log(_:dso:log:_:_:)();
  return (*(v77 + 8))(v76, v16);
}

uint64_t sub_100888C44(uint64_t a1)
{
  v2 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v18 - v12;
  v14 = type metadata accessor for WildModeAssociationRecord(0);
  sub_1000D3410(a1 + *(v14 + 44), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1000D3480(v5);
    v15 = a1 + *(v14 + 40);
    Date.addingTimeInterval(_:)();
  }

  else
  {
    (*(v7 + 32))(v13, v5, v6);
    v11 = v13;
  }

  v16 = static Date.< infix(_:_:)();
  (*(v7 + 8))(v11, v6);
  return v16 & 1;
}

uint64_t sub_100888E38()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t sub_100888E9C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_100889060();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v2(v3);
}

uint64_t sub_100888F10(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_100888C44(a1) & 1;
}

uint64_t sub_100888F34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100888F9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100888FFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WildModeAssociationRecord(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100889060()
{
  result = qword_1016AC248;
  if (!qword_1016AC248)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1016AC248);
  }

  return result;
}

uint64_t static AirPodsLESendPairingStatusCommandPayload.expectedLength.setter(uint64_t a1)
{
  result = swift_beginAccess();
  static AirPodsLESendPairingStatusCommandPayload.expectedLength = a1;
  return result;
}

double AirPodsLESendPairingStatusCommandPayload.init(from:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1008891E8(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t sub_1008891E8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v34, v35);
  v6 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v2)
  {
    sub_100007BAC(v34);
    return sub_100007BAC(a1);
  }

  v8 = v6;
  v9 = v7;
  sub_10015049C(v34, v35);
  v36 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v11 = v10;
  sub_10015049C(v34, v35);
  v31 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v32 = v12;
  sub_10015049C(v34, v35);
  v13 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v29 = v15;
  v30 = v13;
  sub_1000E0A3C();
  v16 = DataProtocol.intValue.getter();
  result = sub_10002EA98(v16, v31, v32, v33);
  v17 = v33[0];
  v18 = v33[1];
  v19 = v9 >> 62;
  if ((v9 >> 62) <= 1)
  {
    v20 = v36;
    if (!v19)
    {
      v21 = BYTE6(v9);
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v20 = v36;
  if (v19 != 2)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v23 = *(v8 + 16);
  v22 = *(v8 + 24);
  v24 = __OFSUB__(v22, v23);
  v21 = v22 - v23;
  if (v24)
  {
    __break(1u);
LABEL_11:
    LODWORD(v21) = HIDWORD(v8) - v8;
    if (__OFSUB__(HIDWORD(v8), v8))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v21 = v21;
  }

LABEL_13:
  if (v21 != 60)
  {
    goto LABEL_27;
  }

  v25 = v11 >> 62;
  if ((v11 >> 62) <= 1)
  {
    if (!v25)
    {
      v26 = BYTE6(v11);
      goto LABEL_23;
    }

LABEL_21:
    LODWORD(v26) = HIDWORD(v20) - v20;
    if (!__OFSUB__(HIDWORD(v20), v20))
    {
      v26 = v26;
      goto LABEL_23;
    }

    goto LABEL_26;
  }

  if (v25 != 2)
  {
    goto LABEL_28;
  }

  v28 = *(v20 + 16);
  v27 = *(v20 + 24);
  v24 = __OFSUB__(v27, v28);
  v26 = v27 - v28;
  if (v24)
  {
    __break(1u);
    goto LABEL_21;
  }

LABEL_23:
  if (v26 == 4)
  {
    sub_100007BAC(v34);
    result = sub_100007BAC(a1);
    *a2 = v8;
    a2[1] = v9;
    a2[2] = v20;
    a2[3] = v11;
    a2[4] = v17;
    a2[5] = v18;
    a2[6] = v30;
    a2[7] = v29;
    return result;
  }

LABEL_28:
  __break(1u);
  return result;
}

unint64_t sub_100889460(uint64_t a1)
{
  *(a1 + 8) = sub_100889490();
  result = sub_1008894E4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100889490()
{
  result = qword_1016AC258;
  if (!qword_1016AC258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AC258);
  }

  return result;
}

unint64_t sub_1008894E4()
{
  result = qword_1016AC260;
  if (!qword_1016AC260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AC260);
  }

  return result;
}

id sub_100889548()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = [objc_allocWithZone(ACAccountStore) init];
    v4 = *(v0 + 16);
    *(v0 + 16) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void sub_1008895B4(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v129 = *(v2 - 8);
  v130 = v2;
  v3 = *(v129 + 64);
  __chkstk_darwin(v2);
  v128 = &v111 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v111 - v7;
  v9 = type metadata accessor for PairingLockCheckEndPoint();
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v111 - v14;
  v16 = sub_1000BC4D4(&qword_1016AC350, &qword_1013C0780);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v135 = Future.init()();
  static os_log_type_t.default.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  v19 = qword_10177C3B0;
  v125 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v20 = swift_allocObject();
  v124 = xmmword_101385D80;
  *(v20 + 16) = xmmword_101385D80;
  *(v20 + 56) = &type metadata for String;
  v126 = sub_100008C00();
  *(v20 + 64) = v126;
  *(v20 + 32) = 0xD000000000000022;
  *(v20 + 40) = 0x8000000101362200;
  v133 = v19;
  os_log(_:dso:log:_:_:)();

  sub_1003CD400(v15);
  v21 = type metadata accessor for SearchPartyURLSessionFactory(0);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v24 = type metadata accessor for FMNMockingPreferences();
  (*(*(v24 - 8) + 56))(v8, 1, 1, v24);
  v25 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
  v26 = type metadata accessor for ServerInteractionController(0);
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  v29 = swift_allocObject();
  sub_10088CB90(v15, v13, type metadata accessor for PairingLockCheckEndPoint);
  v134 = sub_100621154(v13, v25, v29);
  sub_10088CBF8(v15, type metadata accessor for PairingLockCheckEndPoint);
  v30 = *a1;
  v31 = *(a1 + 8);
  v32 = *(a1 + 16);
  v33 = *(a1 + 24);
  v34 = *(a1 + 32);
  v35 = *(a1 + 40);
  v36 = *(a1 + 112);
  v137 = *(a1 + 120);
  v138 = v36;
  v136 = *(a1 + 128);
  v37 = *(a1 + 96);
  v38 = *(a1 + 104);

  *(&v110 + 1) = v38;
  *&v110 = v37;
  v109 = v136;
  v131 = v31;
  v132 = v32;
  v127 = v34;
  *&v136 = v35;
  v39 = sub_101079CC0(v30, v31, v32, v33, v34, v35, v138, v137, v109, v110, 10);
  v41 = v40;
  v42 = sub_100889548();
  v43 = sub_100513CD8();

  if (!v43 || (v44 = sub_100513FCC(), v46 = v45, v43, !v46))
  {

    static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)();
    type metadata accessor for SPPairingSessionError(0);
    *&v140 = 1;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_10088CAEC(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v89 = v150;
    Future.finish(error:)();
    sub_100006654(v39, v41);

LABEL_12:

    return;
  }

  v123 = v46;
  v47 = Data.hexString.getter();
  v118 = v48;
  v119 = v47;
  v49 = Data.hexString.getter();
  v114 = v50;
  v115 = v49;
  v51 = *(a1 + 48);
  v116 = *(a1 + 56);
  v117 = v51;
  v53 = *(a1 + 64);
  v52 = *(a1 + 72);
  v54 = *(a1 + 88);
  v113 = *(a1 + 80);
  v120 = v53;
  v121 = v54;
  v55 = *(a1 + 152);
  *&v122 = *(a1 + 144);
  *(&v122 + 1) = v55;
  v56 = *(a1 + 160);
  v131 = *(a1 + 168);
  v132 = v56;
  v58 = *(a1 + 176);
  v57 = *(a1 + 184);
  v59 = v52;

  v139 = v41;
  sub_10002E98C(v39, v41);
  v60 = sub_100907E70(_swiftEmptyArrayStorage);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v150 = v60;
  sub_100FFACA0(1702195828, 0xE400000000000000, 0xD00000000000001BLL, 0x800000010134EA20, isUniquelyReferenced_nonNull_native);
  v62 = v150;
  v63 = [objc_opt_self() currentDevice];
  if (v63)
  {
    v64 = v63;
    v111 = v57;
    v112 = v44;
    v137 = v39;
    v138 = v58;
    v65 = [v63 serverFriendlyDescription];

    if (v65)
    {
      v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v68 = v67;

      v69 = swift_isUniquelyReferenced_nonNull_native();
      *&v150 = v62;
      sub_100FFACA0(v66, v68, 0xD000000000000011, 0x800000010134EA40, v69);
      v70 = v150;
      v71 = v128;
      Date.init()();
      v72 = Date.epoch.getter();
      (*(v129 + 8))(v71, v130);
      *&v150 = v72;
      v73 = dispatch thunk of CustomStringConvertible.description.getter();
      v75 = v74;
      v76 = swift_isUniquelyReferenced_nonNull_native();
      *&v150 = v70;
      sub_100FFACA0(v73, v75, 0xD000000000000015, 0x800000010134EA60, v76);
      v77 = v150;
      *&v150 = 1;
      v78 = dispatch thunk of CustomStringConvertible.description.getter();
      v80 = v79;
      v81 = swift_isUniquelyReferenced_nonNull_native();
      *&v150 = v77;
      sub_100FFACA0(v78, v80, 0xD000000000000013, 0x800000010134EA80, v81);
      v82 = v150;
      v83 = sub_1008D9A78();
      v85 = v84;
      v86 = swift_isUniquelyReferenced_nonNull_native();
      *&v150 = v82;
      sub_100FFACA0(v83, v85, 0x6567412D72657355, 0xEA0000000000746ELL, v86);
      v87 = v150;
      v88 = v139;
      if (v139 >> 60 != 15)
      {
        v90 = v137;
        sub_100017D5C(v137, v139);
        v91 = Data.base64EncodedString(options:)(0);
        v92 = swift_isUniquelyReferenced_nonNull_native();
        *&v150 = v87;
        sub_100FFACA0(v91._countAndFlagsBits, v91._object, 0x49532D454D4D2D58, 0xEB00000000374E47, v92);
        sub_100006654(v90, v88);
      }

      v130 = v150;
      v93 = v113;
      *&v150 = v119;
      *(&v150 + 1) = v118;
      *&v151 = v115;
      *(&v151 + 1) = v114;
      *&v152 = v127;
      *(&v152 + 1) = v136;
      *&v153 = v117;
      *(&v153 + 1) = v116;
      *&v94 = v113;
      v95 = v121;
      *(&v94 + 1) = v121;
      *&v154 = v120;
      *(&v154 + 1) = v59;
      v96 = v122;
      v155 = v94;
      v156 = v122;
      v98 = v131;
      v97 = v132;
      *&v157 = v132;
      *(&v157 + 1) = v131;
      v99 = v111;
      *&v158 = v138;
      *(&v158 + 1) = v111;
      *&v159 = v112;
      *(&v159 + 1) = v123;
      v100 = type metadata accessor for JSONEncoder();
      v101 = *(v100 + 48);
      v102 = *(v100 + 52);
      swift_allocObject();
      sub_100017D5C(v93, v95);
      sub_100017D5C(v96, *(&v96 + 1));
      sub_100017D5C(v97, v98);
      sub_100017D5C(v138, v99);
      JSONEncoder.init()();
      v146 = v156;
      v147 = v157;
      v148 = v158;
      v149 = v159;
      v142 = v152;
      v143 = v153;
      v144 = v154;
      v145 = v155;
      v140 = v150;
      v141 = v151;
      sub_10088CC58();
      v103 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v105 = v104;

      v106 = v137;
      v107 = v139;
      sub_100006654(v137, v139);
      sub_10088CD08(&v150);
      v108 = v130;

      sub_100017D5C(v103, v105);

      sub_100016590(v103, v105);

      sub_100017D5C(v103, v105);
      sub_1004FCCF0(v108, v103, v105, 0, v134);

      sub_100016590(v103, v105);

      Future.addFailure(block:)();

      Future.addSuccess(block:)();

      sub_100016590(v103, v105);
      sub_100006654(v106, v107);
      goto LABEL_12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_10088A1AC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for JSONDecoder.DateDecodingStrategy();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (FMNServerInteractionController.FMNResponseFields.statusCode.getter() == 200)
  {
    v37 = a2;
    static os_log_type_t.default.getter();
    if (qword_101695068 != -1)
    {
      swift_once();
    }

    v8 = qword_10177C3B0;
    v35 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v9 = swift_allocObject();
    v34 = xmmword_101385D80;
    *(v9 + 16) = xmmword_101385D80;
    type metadata accessor for FMNServerInteractionController.FMNResponseFields();
    sub_10088CAEC(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = sub_100008C00();
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    v36 = v8;
    os_log(_:dso:log:_:_:)();

    v13 = type metadata accessor for JSONDecoder();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    (*(v4 + 104))(v7, enum case for JSONDecoder.DateDecodingStrategy.millisecondsSince1970(_:), v3);
    dispatch thunk of JSONDecoder.dateDecodingStrategy.setter();
    v16 = FMNServerInteractionController.FMNResponseFields.data.getter();
    v18 = v17;
    sub_10088CD88();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    sub_100016590(v16, v18);
    v42[0] = v43;
    v42[1] = v44;
    v42[2] = v45;
    v42[3] = v46;
    v38 = v43;
    v39 = v44;
    v40 = v45;
    v41 = v46;
    Future.finish(result:)();

    sub_100407FCC(v42);
  }

  else
  {
    v19 = FMNServerInteractionController.FMNResponseFields.responseHeaders.getter();
    if (*(v19 + 16) && (v20 = sub_100771D58(0xD000000000000016, 0x8000000101362130), (v21 & 1) != 0))
    {
      v22 = (*(v19 + 56) + 16 * v20);
      v24 = *v22;
      v23 = v22[1];

      static os_log_type_t.error.getter();
      if (qword_101695068 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_10138BBE0;
      *(v25 + 56) = &type metadata for String;
      v26 = sub_100008C00();
      *(v25 + 64) = v26;
      *(v25 + 32) = v24;
      *(v25 + 40) = v23;
      type metadata accessor for FMNServerInteractionController.FMNResponseFields();
      sub_10088CAEC(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      *(v25 + 96) = &type metadata for String;
      *(v25 + 104) = v26;
      *(v25 + 72) = v27;
      *(v25 + 80) = v28;
    }

    else
    {

      static os_log_type_t.error.getter();
      if (qword_101695068 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_101385D80;
      type metadata accessor for FMNServerInteractionController.FMNResponseFields();
      sub_10088CAEC(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      *(v29 + 56) = &type metadata for String;
      *(v29 + 64) = sub_100008C00();
      *(v29 + 32) = v30;
      *(v29 + 40) = v32;
    }

    os_log(_:dso:log:_:_:)();

    type metadata accessor for SPPairingSessionError(0);
    *&v42[0] = 1;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_10088CAEC(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v33 = v43;
    Future.finish(error:)();
  }
}

void sub_10088A8CC(void *a1)
{
  static os_log_type_t.error.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_101385D80;
  v6 = a1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v3 = String.init<A>(describing:)();
  v5 = v4;
  *(v2 + 56) = &type metadata for String;
  *(v2 + 64) = sub_100008C00();
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  os_log(_:dso:log:_:_:)();

  type metadata accessor for SPPairingSessionError(0);
  sub_100032898(_swiftEmptyArrayStorage);
  sub_10088CAEC(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
  _BridgedStoredNSError.init(_:userInfo:)();
  Future.finish(error:)();
}

void sub_10088AA80()
{
  if (FMNServerInteractionController.FMNResponseFields.statusCode.getter() == 200)
  {
    static os_log_type_t.default.getter();
    if (qword_101695068 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v0 = swift_allocObject();
    *(v0 + 16) = xmmword_101385D80;
    type metadata accessor for FMNServerInteractionController.FMNResponseFields();
    sub_10088CAEC(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
    v1 = dispatch thunk of CustomStringConvertible.description.getter();
    v3 = v2;
    *(v0 + 56) = &type metadata for String;
    v4 = sub_100008C00();
    *(v0 + 64) = v4;
    *(v0 + 32) = v1;
    *(v0 + 40) = v3;
    os_log(_:dso:log:_:_:)();

    v5 = type metadata accessor for JSONDecoder();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    v8 = FMNServerInteractionController.FMNResponseFields.data.getter();
    v10 = v9;
    sub_10088CB34();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    sub_100016590(v8, v10);
    static os_log_type_t.default.getter();
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_101385D80;
    FMNServerInteractionController.FMNResponseFields.statusCode.getter();
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    *(v25 + 56) = &type metadata for String;
    *(v25 + 64) = v4;
    *(v25 + 32) = v26;
    *(v25 + 40) = v27;
    os_log(_:dso:log:_:_:)();

    Future.finish(result:)();
  }

  else
  {
    v11 = FMNServerInteractionController.FMNResponseFields.responseHeaders.getter();
    if (*(v11 + 16) && (v12 = sub_100771D58(0xD000000000000016, 0x8000000101362130), (v13 & 1) != 0))
    {
      v14 = (*(v11 + 56) + 16 * v12);
      v15 = *v14;
      v16 = v14[1];

      static os_log_type_t.error.getter();
      if (qword_101695068 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_10138BBE0;
      *(v17 + 56) = &type metadata for String;
      v18 = sub_100008C00();
      *(v17 + 64) = v18;
      *(v17 + 32) = v15;
      *(v17 + 40) = v16;
      type metadata accessor for FMNServerInteractionController.FMNResponseFields();
      sub_10088CAEC(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      *(v17 + 96) = &type metadata for String;
      *(v17 + 104) = v18;
      *(v17 + 72) = v19;
      *(v17 + 80) = v20;
    }

    else
    {

      static os_log_type_t.error.getter();
      if (qword_101695068 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_101385D80;
      type metadata accessor for FMNServerInteractionController.FMNResponseFields();
      sub_10088CAEC(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      *(v21 + 56) = &type metadata for String;
      *(v21 + 64) = sub_100008C00();
      *(v21 + 32) = v22;
      *(v21 + 40) = v24;
    }

    os_log(_:dso:log:_:_:)();

    type metadata accessor for SPPairingSessionError(0);
    sub_100032898(_swiftEmptyArrayStorage);
    sub_10088CAEC(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    Future.finish(error:)();
  }
}

uint64_t sub_10088B120(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  static os_log_type_t.error.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_101385D80;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v5 = String.init<A>(describing:)();
  v7 = v6;
  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = sub_100008C00();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  os_log(_:dso:log:_:_:)();

  return a2(a1);
}

void sub_10088B260(uint64_t a1, void (*a2)(void *))
{
  v3 = FMNServerInteractionController.FMNResponseFields.statusCode.getter();
  static os_log_type_t.default.getter();
  if (v3 == 200)
  {
    if (qword_101695068 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    a2(0);
  }

  else
  {
    if (qword_101695068 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_101385D80;
    v8 = FMNServerInteractionController.FMNResponseFields.statusCode.getter();
    v5 = dispatch thunk of CustomStringConvertible.description.getter();
    v7 = v6;
    *(v4 + 56) = &type metadata for String;
    *(v4 + 64) = sub_100008C00();
    *(v4 + 32) = v5;
    *(v4 + 40) = v7;
    os_log(_:dso:log:_:_:)();

    type metadata accessor for SPPairingSessionError(0);
    sub_100032898(_swiftEmptyArrayStorage);
    sub_10088CAEC(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    a2(v8);
  }
}

uint64_t sub_10088B494()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10088B4F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10088B538(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 192) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10088B5B8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v48 = a1;
  v7 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v46 - v9;
  v11 = type metadata accessor for UnpairEndPoint();
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v46 - v16;
  v18 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = &v46 - v20;
  v22 = swift_allocObject();
  *(v22 + 16) = a3;
  *(v22 + 24) = a4;
  v46 = a3;
  v47 = a4;

  static os_log_type_t.default.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_101385D80;
  sub_100015794(v48, v21);
  v24 = String.init<A>(describing:)();
  v26 = v25;
  *(v23 + 56) = &type metadata for String;
  *(v23 + 64) = sub_100008C00();
  *(v23 + 32) = v24;
  *(v23 + 40) = v26;
  os_log(_:dso:log:_:_:)();

  sub_10088BFC8(a2, &v50);
  sub_101079450(a2);
  if (v27)
  {
    v30 = v27;
    v31 = v28;
    v32 = v29;
    sub_100F01DA0(v17);
    v33 = type metadata accessor for SearchPartyURLSessionFactory(0);
    v34 = *(v33 + 48);
    v35 = *(v33 + 52);
    swift_allocObject();
    v36 = type metadata accessor for FMNMockingPreferences();
    (*(*(v36 - 8) + 56))(v10, 1, 1, v36);
    v37 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
    v38 = type metadata accessor for ServerInteractionController(0);
    v39 = *(v38 + 48);
    v40 = *(v38 + 52);
    v41 = swift_allocObject();
    sub_10088CB90(v17, v15, type metadata accessor for UnpairEndPoint);
    v42 = sub_100620D3C(v15, v37, v41);
    sub_10088CBF8(v17, type metadata accessor for UnpairEndPoint);

    sub_100017D5C(v31, v32);
    sub_1004FC9E4(v30, v31, v32, 0, v42);

    sub_100165328(v30, v31, v32);
    v43 = swift_allocObject();
    *(v43 + 16) = sub_10088CB88;
    *(v43 + 24) = v22;

    Future.addFailure(block:)();

    v44 = swift_allocObject();
    *(v44 + 16) = sub_10088CB88;
    *(v44 + 24) = v22;

    Future.addSuccess(block:)();

    sub_100165328(v30, v31, v32);
  }

  else
  {
    static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)();
    type metadata accessor for SPPairingSessionError(0);
    v49 = 6;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_10088CAEC(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v45 = v50;
    sub_100FC7B20(v50, v46, v47);
  }
}

void sub_10088BAE8(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v47 = a3;
  v48 = a4;
  v6 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v46 - v8;
  v10 = type metadata accessor for UnpairEndPoint();
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v46 - v15;
  v17 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = &v46 - v19;
  static os_log_type_t.default.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_101385D80;
  sub_100015794(a1, v20);
  v22 = String.init<A>(describing:)();
  v24 = v23;
  *(v21 + 56) = &type metadata for String;
  *(v21 + 64) = sub_100008C00();
  *(v21 + 32) = v22;
  *(v21 + 40) = v24;
  os_log(_:dso:log:_:_:)();

  sub_10088BFC8(a2, &v50);
  sub_101079450(a2);
  if (v25)
  {
    v28 = v25;
    v29 = v26;
    v30 = v27;
    sub_100F01DA0(v16);
    v31 = type metadata accessor for SearchPartyURLSessionFactory(0);
    v32 = *(v31 + 48);
    v33 = *(v31 + 52);
    swift_allocObject();
    v34 = type metadata accessor for FMNMockingPreferences();
    (*(*(v34 - 8) + 56))(v9, 1, 1, v34);
    v35 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
    v36 = type metadata accessor for ServerInteractionController(0);
    v37 = *(v36 + 48);
    v38 = *(v36 + 52);
    v39 = swift_allocObject();
    sub_10088CB90(v16, v14, type metadata accessor for UnpairEndPoint);
    v40 = sub_100620D3C(v14, v35, v39);
    sub_10088CBF8(v16, type metadata accessor for UnpairEndPoint);

    sub_100017D5C(v29, v30);
    sub_1004FC9E4(v28, v29, v30, 0, v40);

    sub_100165328(v28, v29, v30);
    v41 = swift_allocObject();
    v43 = v47;
    v42 = v48;
    *(v41 + 16) = v47;
    *(v41 + 24) = v42;

    Future.addFailure(block:)();

    v44 = swift_allocObject();
    *(v44 + 16) = v43;
    *(v44 + 24) = v42;

    Future.addSuccess(block:)();

    sub_100165328(v28, v29, v30);
  }

  else
  {
    static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)();
    type metadata accessor for SPPairingSessionError(0);
    v49 = 6;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_10088CAEC(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v45 = v50;
    v47(v50);
  }
}

void sub_10088C010(uint64_t *a1)
{
  v2 = type metadata accessor for Date();
  v115 = *(v2 - 8);
  v116 = v2;
  v3 = *(v115 + 64);
  __chkstk_darwin(v2);
  v114 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v92 - v7;
  v9 = type metadata accessor for PairingLockAckEndPoint();
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v92 - v14;
  static os_log_type_t.default.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  v16 = qword_10177C3B0;
  v93 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v17 = swift_allocObject();
  v92 = xmmword_101385D80;
  *(v17 + 16) = xmmword_101385D80;
  *(v17 + 56) = &type metadata for String;
  v94 = sub_100008C00();
  *(v17 + 64) = v94;
  *(v17 + 32) = 0xD00000000000001BLL;
  *(v17 + 40) = 0x80000001013620E0;
  v95 = v16;
  os_log(_:dso:log:_:_:)();

  v18 = sub_1000BC4D4(&qword_1016AC338, ">W\n");
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v118 = Future.init()();
  sub_10050B114(v15);
  v21 = type metadata accessor for SearchPartyURLSessionFactory(0);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v24 = type metadata accessor for FMNMockingPreferences();
  (*(*(v24 - 8) + 56))(v8, 1, 1, v24);
  v25 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
  v26 = type metadata accessor for ServerInteractionController(0);
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  v29 = swift_allocObject();
  sub_10088CB90(v15, v13, type metadata accessor for PairingLockAckEndPoint);
  v117 = sub_1006225CC(v13, v25, v29);
  sub_10088CBF8(v15, type metadata accessor for PairingLockAckEndPoint);
  v30 = *a1;
  v31 = a1[1];
  v32 = Data.hexString.getter();
  v109 = v33;
  v110 = v32;
  v34 = a1[2];
  v35 = a1[3];
  v36 = Data.hexString.getter();
  v107 = v37;
  v108 = v36;
  v39 = a1[4];
  v38 = a1[5];
  v40 = a1[7];
  v103 = a1[6];
  v104 = v39;
  v102 = v40;
  v41 = a1[9];
  v101 = a1[8];
  v42 = a1[10];
  v111 = a1[11];
  v112 = v42;
  v43 = a1[12];
  v113 = a1[13];
  v44 = a1[14];
  v45 = a1[15];
  v46 = a1[16];
  v47 = a1[17];
  v48 = a1[18];
  v49 = v38;

  v106 = v41;

  v105 = v48;

  v50 = sub_100907E70(_swiftEmptyArrayStorage);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v129 = v50;
  sub_100FFACA0(1702195828, 0xE400000000000000, 0xD00000000000001BLL, 0x800000010134EA20, isUniquelyReferenced_nonNull_native);
  v52 = v129;
  v53 = [objc_opt_self() currentDevice];
  if (v53)
  {
    v54 = v53;
    v96 = v43;
    v97 = v45;
    v98 = v44;
    v99 = v47;
    v100 = v46;
    v55 = [v53 serverFriendlyDescription];

    if (v55)
    {
      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v57;

      v59 = swift_isUniquelyReferenced_nonNull_native();
      *&v129 = v52;
      sub_100FFACA0(v56, v58, 0xD000000000000011, 0x800000010134EA40, v59);
      v60 = v129;
      v61 = v114;
      Date.init()();
      v62 = Date.epoch.getter();
      (*(v115 + 8))(v61, v116);
      *&v129 = v62;
      v63 = dispatch thunk of CustomStringConvertible.description.getter();
      v65 = v64;
      v66 = swift_isUniquelyReferenced_nonNull_native();
      *&v129 = v60;
      sub_100FFACA0(v63, v65, 0xD000000000000015, 0x800000010134EA60, v66);
      v67 = v129;
      *&v129 = 1;
      v68 = dispatch thunk of CustomStringConvertible.description.getter();
      v70 = v69;
      v71 = swift_isUniquelyReferenced_nonNull_native();
      *&v129 = v67;
      sub_100FFACA0(v68, v70, 0xD000000000000013, 0x800000010134EA80, v71);
      v72 = v129;
      v73 = sub_1008D9A78();
      v75 = v74;
      v76 = swift_isUniquelyReferenced_nonNull_native();
      *&v129 = v72;
      sub_100FFACA0(v73, v75, 0x6567412D72657355, 0xEA0000000000746ELL, v76);
      v116 = v129;
      *&v129 = v110;
      *(&v129 + 1) = v109;
      *&v130 = v108;
      *(&v130 + 1) = v107;
      *&v131 = v104;
      *(&v131 + 1) = v49;
      *&v132 = v103;
      *(&v132 + 1) = v102;
      *&v133 = v101;
      *(&v133 + 1) = v106;
      v77 = v111;
      v78 = v112;
      *&v134 = v112;
      *(&v134 + 1) = v111;
      v80 = v96;
      v79 = v97;
      v81 = v113;
      *&v135 = v96;
      *(&v135 + 1) = v113;
      v83 = v98;
      v82 = v99;
      *&v136 = v98;
      *(&v136 + 1) = v97;
      v84 = v100;
      *&v137 = v100;
      *(&v137 + 1) = v99;
      v138 = v105;
      v85 = type metadata accessor for JSONEncoder();
      v86 = *(v85 + 48);
      v87 = *(v85 + 52);
      swift_allocObject();
      sub_100017D5C(v78, v77);
      sub_100017D5C(v80, v81);
      sub_100017D5C(v83, v79);
      sub_100017D5C(v84, v82);
      JSONEncoder.init()();
      v125 = v135;
      v126 = v136;
      v127 = v137;
      v128 = v138;
      v121 = v131;
      v122 = v132;
      v123 = v133;
      v124 = v134;
      v119 = v129;
      v120 = v130;
      sub_10088C9BC();
      v88 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v90 = v89;

      sub_10088CA6C(&v129);
      v91 = v116;

      sub_100017D5C(v88, v90);

      sub_100016590(v88, v90);

      sub_100017D5C(v88, v90);
      sub_1004FD920(v91, v88, v90, 0, v117);

      sub_100016590(v88, v90);

      Future.addFailure(block:)();

      Future.addSuccess(block:)();

      sub_100016590(v88, v90);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_10088C9BC()
{
  result = qword_1016AC340;
  if (!qword_1016AC340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AC340);
  }

  return result;
}

uint64_t sub_10088CAEC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10088CB34()
{
  result = qword_1016AC348;
  if (!qword_1016AC348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AC348);
  }

  return result;
}

uint64_t sub_10088CB90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10088CBF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10088CC58()
{
  result = qword_1016AC358;
  if (!qword_1016AC358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AC358);
  }

  return result;
}

unint64_t sub_10088CD88()
{
  result = qword_1016AC360;
  if (!qword_1016AC360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AC360);
  }

  return result;
}

__n128 sub_10088CDEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_10088CE20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10088CE68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_10088CEE4()
{

  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 44;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);
}

uint64_t sub_10088CF9C()
{
  result = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_10088CEE4();
  return result;
}

uint64_t sub_10088CFA8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10088D4B8();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

double sub_10088CFD4@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

Swift::Int sub_10088CFE0()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  Hasher.init(_seed:)();
  sub_10088CEE4();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10088D05C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_10088CEE4();
  String.hash(into:)();
}

Swift::Int sub_10088D0B4()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  Hasher.init(_seed:)();
  sub_10088CEE4();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10088D12C(uint64_t a1)
{
  v2 = sub_10088D764();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10088D168(uint64_t a1)
{
  v2 = sub_10088D764();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10088D1A4(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = *a1;
  sub_10088CEE4();
  v11 = v10;
  sub_10088CEE4();
  if (v9 == v5 && v11 == v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v14 & 1;
}

uint64_t sub_10088D250@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10088D7B8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_10088D280(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  sub_10088CEE4();
  sub_10015049C(v8, v8[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();

  return sub_100007BAC(v8);
}

uint64_t sub_10088D34C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_10088D4B8();
  *a2 = result;
  a2[1] = v6;
  a2[2] = v7;
  a2[3] = v8;
  return result;
}

uint64_t sub_10088D380@<X0>(void *a1@<X8>)
{
  result = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  sub_10088CEE4();
  *a1 = result;
  a1[1] = v7;
  return result;
}

unint64_t sub_10088D3B4()
{
  result = qword_1016AC368;
  if (!qword_1016AC368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AC368);
  }

  return result;
}

unint64_t sub_10088D40C()
{
  result = qword_1016AC370;
  if (!qword_1016AC370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AC370);
  }

  return result;
}

unint64_t sub_10088D464()
{
  result = qword_1016AC378;
  if (!qword_1016AC378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AC378);
  }

  return result;
}

uint64_t sub_10088D4B8()
{
  v0 = type metadata accessor for NSScanner.NumberRepresentation();
  v1 = *(v0 - 8);
  v2 = v1[8];
  __chkstk_darwin(v0);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CharacterSet();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_allocWithZone(NSScanner);
  v11 = String._bridgeToObjectiveC()();

  v12 = [v10 initWithString:v11];

  static CharacterSet.letters.getter();
  v25 = NSScanner.scanCharacters(from:)();
  v14 = v13;
  (*(v6 + 8))(v9, v5);
  if (v14)
  {
    v15 = enum case for NSScanner.NumberRepresentation.decimal(_:);
    v16 = v1[13];
    v16(v4, enum case for NSScanner.NumberRepresentation.decimal(_:), v0);
    v24 = NSScanner.scanInt(representation:)();
    v18 = v17;
    v19 = v1[1];
    v19(v4, v0);
    if ((v18 & 1) != 0 || (v20._countAndFlagsBits = 44, v20._object = 0xE100000000000000, !NSScanner.scanString(_:)(v20).value._object))
    {

      return 0;
    }

    v16(v4, v15, v0);
    NSScanner.scanInt(representation:)();
    v22 = v21;

    v19(v4, v0);
    if (v22)
    {

      return 0;
    }

    return v25;
  }

  else
  {

    return 0;
  }
}

unint64_t sub_10088D764()
{
  result = qword_1016BBF20;
  if (!qword_1016BBF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BBF20);
  }

  return result;
}

uint64_t sub_10088D7B8(uint64_t *a1)
{
  v3 = a1[3];
  sub_1000035D0(a1, v3);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v1)
  {
    v3 = v12;
    sub_1000035D0(v11, v12);
    v5 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    v7 = v6;

    v8 = sub_10088D4B8();
    if (v9)
    {
      v3 = v8;

      sub_100007BAC(v11);
      sub_100007BAC(a1);
      return v3;
    }

    sub_10088D8F4();
    swift_allocError();
    *v10 = v5;
    v10[1] = v7;
    swift_willThrow();
    sub_100007BAC(v11);
  }

  sub_100007BAC(a1);
  return v3;
}

unint64_t sub_10088D8F4()
{
  result = qword_1016AC380;
  if (!qword_1016AC380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AC380);
  }

  return result;
}

BOOL sub_10088D968(void *a1)
{
  v2 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v21[-1] - v4;
  v6 = type metadata accessor for SharedBeaconRecord(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v21[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[3];
  v12 = a1[4];
  sub_1000035D0(a1, v11);
  if (((*(v12 + 112))(v11, v12) & 1) == 0)
  {
    return 1;
  }

  sub_10001F280(a1, v21);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  v13 = swift_dynamicCast();
  v14 = *(v7 + 56);
  if (v13)
  {
    v14(v5, 0, 1, v6);
    sub_100591C20(v5, v10);
    My = type metadata accessor for Feature.FindMy();
    v21[3] = My;
    v21[4] = sub_10004521C();
    v16 = sub_1000280DC(v21);
    (*(*(My - 8) + 104))(v16, enum case for Feature.FindMy.itemSharing(_:), My);
    LOBYTE(My) = isFeatureEnabled(_:)();
    sub_100007BAC(v21);
    if (My)
    {
      v17 = v10[*(v6 + 64)];
      sub_1003949D0(v10);
      return v17 != 4 && v17 != 1;
    }

    else
    {
      sub_1003949D0(v10);
      return 0;
    }
  }

  else
  {
    v14(v5, 1, 1, v6);
    sub_10088DBD8(v5);
    return 1;
  }
}

uint64_t sub_10088DBD8(uint64_t a1)
{
  v2 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static SendPairingStatusCommandPayload.expectedLength.setter(uint64_t a1)
{
  result = swift_beginAccess();
  static SendPairingStatusCommandPayload.expectedLength = a1;
  return result;
}

double SendPairingStatusCommandPayload.init(from:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10088DE70(a1, v6);
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

uint64_t sub_10088DD74@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, void *a7@<X8>)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v8 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v7 != 2)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v10 = *(result + 16);
  v9 = *(result + 24);
  v11 = __OFSUB__(v9, v10);
  v8 = v9 - v10;
  if (v11)
  {
    __break(1u);
LABEL_8:
    LODWORD(v8) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v8 = v8;
  }

LABEL_10:
  if (v8 != 60)
  {
    goto LABEL_34;
  }

  v12 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v12)
    {
      v13 = BYTE6(a4);
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if (v12 != 2)
  {
    goto LABEL_35;
  }

  v15 = *(a3 + 16);
  v14 = *(a3 + 24);
  v11 = __OFSUB__(v14, v15);
  v13 = v14 - v15;
  if (v11)
  {
    __break(1u);
LABEL_18:
    LODWORD(v13) = HIDWORD(a3) - a3;
    if (__OFSUB__(HIDWORD(a3), a3))
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v13 = v13;
  }

LABEL_20:
  if (v13 == 4)
  {
    if ((a6 >> 62) > 1)
    {
      if (a6 >> 62 == 2)
      {
        v18 = *(a5 + 16);
        v17 = *(a5 + 24);
        v11 = __OFSUB__(v17, v18);
        v16 = v17 - v18;
        if (!v11)
        {
LABEL_27:
          if (v16 == 1286)
          {
            *a7 = result;
            a7[1] = a2;
            a7[2] = a3;
            a7[3] = a4;
            a7[4] = a5;
            a7[5] = a6;
            return result;
          }

          goto LABEL_33;
        }

        goto LABEL_30;
      }
    }

    else if (a6 >> 62 == 1)
    {
      LODWORD(v16) = HIDWORD(a5) - a5;
      if (!__OFSUB__(HIDWORD(a5), a5))
      {
        v16 = v16;
        goto LABEL_27;
      }

      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_10088DE70@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v16, v17);
  v6 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v2)
  {
    sub_100007BAC(v16);
    return sub_100007BAC(a1);
  }

  else
  {
    v8 = v6;
    v9 = v7;
    sub_10015049C(v16, v17);
    v10 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
    v19 = v11;
    sub_10015049C(v16, v17);
    v12 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
    sub_10088DD74(v8, v9, v10, v19, v12, v13, v18);
    sub_100007BAC(v16);
    result = sub_100007BAC(a1);
    v15 = v18[1];
    *a2 = v18[0];
    a2[1] = v15;
    a2[2] = v18[2];
  }

  return result;
}

unint64_t sub_10088DFF0(uint64_t a1)
{
  *(a1 + 8) = sub_10088E020();
  result = sub_10088E074();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10088E020()
{
  result = qword_1016AC390;
  if (!qword_1016AC390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AC390);
  }

  return result;
}

unint64_t sub_10088E074()
{
  result = qword_1016AC398;
  if (!qword_1016AC398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AC398);
  }

  return result;
}

uint64_t sub_10088E0D8()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10088E198()
{
  sub_10039722C();
  result = OS_os_log.init(subsystem:category:)();
  qword_10177B550 = result;
  return result;
}

uint64_t sub_10088E1F4(uint64_t a1)
{
  v13 = *(v1 + *(a1 + 36));
  v3 = sub_100260984(&v13, v14);
  v5 = v4;
  v6 = (*(*(a1 + 24) + 40))(*(a1 + 16));
  v8 = v7;
  v15 = v6;
  v16 = v7;
  v14[3] = &type metadata for Data;
  v14[4] = &protocol witness table for Data;
  v14[0] = v3;
  v14[1] = v5;
  v9 = sub_1000035D0(v14, &type metadata for Data);
  v10 = *v9;
  v11 = v9[1];
  sub_100017D5C(v6, v8);
  sub_100017DB0(v10, v11);
  sub_100016590(v6, v8);
  sub_100007BAC(v14);
  return v15;
}

uint64_t sub_10088E2F4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = type metadata accessor for Optional();
  v60 = *(v11 - 8);
  v12 = *(v60 + 64);
  v13 = __chkstk_darwin(v11);
  v62 = &v54 - v14;
  v61 = *(a3 - 8);
  v15 = *(v61 + 64);
  __chkstk_darwin(v13);
  v59 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100017D5C(a1, a2);
  sub_100035310(4, a1, a2, &v65);
  v17 = *(&v65 + 1);
  v18 = v65;
  v19 = *(&v65 + 1) >> 62;
  if ((*(&v65 + 1) >> 62) > 1)
  {
    if (v19 != 2)
    {
      *(&v64 + 6) = 0;
      *&v64 = 0;
      v20 = &v64;
      goto LABEL_30;
    }

    v56 = v11;
    v57 = v5;
    v55 = a5;
    v58 = a4;
    v21 = *(v65 + 16);
    v22 = *(v65 + 24);
    v23 = __DataStorage._bytes.getter();
    if (v23)
    {
      v24 = __DataStorage._offset.getter();
      if (__OFSUB__(v21, v24))
      {
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      v23 += v21 - v24;
    }

    v25 = __OFSUB__(v22, v21);
    v26 = v22 - v21;
    if (v25)
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v27 = __DataStorage._length.getter();
    if (v27 >= v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = v27;
    }

    v29 = v28 + v23;
    if (v23)
    {
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    v31 = v23;
    a4 = v58;
  }

  else
  {
    if (!v19)
    {
      LODWORD(v64) = v65;
      WORD2(v64) = WORD2(v65);
      *(&v64 + 6) = *(&v65 + 6);
      v20 = &v64 + BYTE14(v65);
LABEL_30:
      sub_10088E8FC(&v64, v20, &v63);
      if (v5)
      {
        goto LABEL_31;
      }

      v56 = v11;
      sub_100016590(v18, v17);
      v39 = v63;
      goto LABEL_33;
    }

    v57 = v5;
    v58 = a4;
    v32 = (v65 >> 32) - v65;
    if (v65 >> 32 < v65)
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v55 = a5;
    v56 = v11;
    v33 = __DataStorage._bytes.getter();
    if (v33)
    {
      v34 = __DataStorage._offset.getter();
      if (__OFSUB__(v18, v34))
      {
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
      }

      v33 += v18 - v34;
    }

    a4 = v58;
    v35 = __DataStorage._length.getter();
    if (v35 >= v32)
    {
      v36 = (v18 >> 32) - v18;
    }

    else
    {
      v36 = v35;
    }

    v37 = v36 + v33;
    if (v33)
    {
      v30 = v37;
    }

    else
    {
      v30 = 0;
    }

    v31 = v33;
  }

  v38 = v57;
  sub_10088E8FC(v31, v30, &v64);
  if (v38)
  {
LABEL_31:
    sub_100016590(a1, a2);
    v40 = v18;
    v41 = v17;
    return sub_100016590(v40, v41);
  }

  sub_100016590(v18, v17);
  v39 = v64;
  a5 = v55;
LABEL_33:
  *(a5 + *(type metadata accessor for KeyIndexMapGenerator.Record() + 36)) = v39;
  v42 = a2 >> 62;
  v43 = v62;
  if ((a2 >> 62) > 1)
  {
    v44 = 0;
    if (v42 != 2)
    {
      goto LABEL_42;
    }

    v46 = *(a1 + 16);
    v45 = *(a1 + 24);
    v25 = __OFSUB__(v45, v46);
    v44 = v45 - v46;
    if (!v25)
    {
      goto LABEL_42;
    }

    __break(1u);
  }

  else if (!v42)
  {
    v44 = BYTE6(a2);
    goto LABEL_42;
  }

  LODWORD(v44) = HIDWORD(a1) - a1;
  if (__OFSUB__(HIDWORD(a1), a1))
  {
    goto LABEL_52;
  }

  v44 = v44;
LABEL_42:
  v47 = v44 - 4;
  if (__OFSUB__(v44, 4))
  {
    __break(1u);
    goto LABEL_48;
  }

  sub_100017D5C(a1, a2);
  sub_10002EA98(v47, a1, a2, &v65);
  v64 = v65;
  v48 = *(a4 + 32);
  dispatch thunk of RawRepresentable.init(rawValue:)();
  v49 = v61;
  if ((*(v61 + 48))(v43, 1, a3) == 1)
  {
    (*(v60 + 8))(v43, v56);
    type metadata accessor for KeyIndexMapGenerator.Error();
    swift_getWitnessTable();
    swift_allocError();
    *v50 = 1;
    *(v50 + 4) = 2;
    swift_willThrow();
    v40 = a1;
    v41 = a2;
    return sub_100016590(v40, v41);
  }

  sub_100016590(a1, a2);
  v52 = *(v49 + 32);
  v53 = v59;
  v52(v59, v43, a3);
  return (v52)(a5, v53, a3);
}

uint64_t sub_10088E840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v6 = *(a4 + 40);
  v7 = v6(a3, a4);
  v9 = v8;
  v10 = v6(v5, a4);
  v12 = v11;
  LOBYTE(v5) = static Data.< infix(_:_:)();
  sub_100016590(v10, v12);
  sub_100016590(v7, v9);
  return v5 & 1;
}

_DWORD *sub_10088E8FC@<X0>(_DWORD *result@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  if (result && (a2 - result + 3) >= 7)
  {
    *a3 = *result;
  }

  else
  {
    type metadata accessor for KeyIndexMapGenerator.Error();
    swift_getWitnessTable();
    swift_allocError();
    *v3 = 1;
    *(v3 + 4) = 2;
    return swift_willThrow();
  }

  return result;
}

BOOL sub_10088E9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) + 8);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v7 = type metadata accessor for KeyIndexMapGenerator.Record();
  return *(a1 + *(v7 + 36)) == *(a2 + *(v7 + 36));
}

void sub_10088EA10(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(*(a2 + 24) + 24);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v2 + *(a2 + 36)));
}

Swift::Int sub_10088EA5C(uint64_t a1)
{
  Hasher.init(_seed:)();
  v3 = *(a1 + 16);
  v4 = *(*(a1 + 24) + 24);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + *(a1 + 36)));
  return Hasher._finalize()();
}

Swift::Int sub_10088EAFC(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  sub_10088EA10(v4, a2);
  return Hasher._finalize()();
}

uint64_t sub_10088EB4C()
{
  v1 = qword_1016AC3A0;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + qword_1016AC3D0);

  return v0;
}

uint64_t sub_10088EBBC()
{
  sub_10088EB4C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10088EC2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10088ECA4(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFFC;
  if ((v6 & 0xFFFFFFFC) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *sub_10088EDA8(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((*(v5 + 64) + 3) & 0xFFFFFFFC) == 0xFFFFFFFC)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((*(v5 + 64) + 3) & 0xFFFFFFFC) == 0xFFFFFFFC)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((*(v5 + 64) + 3) & 0xFFFFFFFC) != 0xFFFFFFFC)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

uint64_t sub_10088EF5C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 initializeBufferWithCopyOfBuffer for LocalFindableAccessoryFirmwareVersionNumber(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for DatabaseError(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_10088EFD0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 5))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 4);
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

uint64_t sub_10088F018(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t sub_10088F05C(uint64_t a1)
{
  if (*(a1 + 4) <= 1u)
  {
    return *(a1 + 4);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_10088F074(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 4) = a2;
  return result;
}

uint64_t sub_10088F090(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v10 = sub_1000076D4(v2, qword_10177BA58);
  (*(v3 + 16))(v7, v10, v2);
  URL.appendingPathComponent(_:isDirectory:)();
  v11 = *(v3 + 8);
  v11(v7, v2);
  if (a1 != 3 && a1 != 2 && a1 != 1)
  {
    static os_log_type_t.error.getter();
    if (qword_101695040 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
  }

  URL.appendingPathComponent(_:)();
  return (v11)(v9, v2);
}

uint64_t sub_10088F5E8(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() defaultManager];
  URL.deletingLastPathComponent()();
  URL._bridgeToObjectiveC()(v9);
  v11 = v10;
  (*(v4 + 8))(v7, v3);
  v26 = 0;
  LODWORD(v3) = [v8 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:&v26];

  v12 = v26;
  if (!v3)
  {
    v25 = v26;
LABEL_8:
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }

  v13 = objc_opt_self();
  v26 = 0;
  v14 = v12;
  v15 = [v13 archivedDataWithRootObject:a1 requiringSecureCoding:1 error:&v26];
  v16 = v26;
  if (!v15)
  {
    v25 = v16;
    goto LABEL_8;
  }

  v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v20 = sub_1010B6FB0(v17, v19, 0);
  if (!v1)
  {
    v22 = v20;
    v23 = v21;
    Data.write(to:excludeFromBackup:options:)();
    sub_100016590(v22, v23);
  }

  return sub_100016590(v17, v19);
}

id sub_10088F860()
{
  v0 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v1);
  v3 = v2;
  v7 = 0;
  v4 = [v0 removeItemAtURL:v2 error:&v7];

  if (v4)
  {
    return v7;
  }

  v6 = v7;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

uint64_t sub_10088F948(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for CryptoError();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v7 = __chkstk_darwin(v6);
  __chkstk_darwin(v7);
  v8 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v9 = String._bridgeToObjectiveC()();

  v10 = [v8 fileExistsAtPath:v9];

  result = 0;
  if (v10)
  {
    v24 = v4;
    v25 = Data.init(contentsOf:options:)();
    v23 = v12;
    v13 = *(a2 + 72);
    v14 = swift_allocObject();
    *(v14 + 16) = sub_10088FFBC;
    *(v14 + 24) = a2;
    v31 = sub_1000D2FB0;
    v32 = v14;
    aBlock = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_10013FE14;
    v30 = &unk_101637B40;
    v15 = _Block_copy(&aBlock);

    dispatch_sync(v13, v15);
    _Block_release(v15);
    LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

    if (v15)
    {
      __break(1u);
    }

    else
    {
      v16 = *(a2 + 96);
      __chkstk_darwin(result);
      v21[-4] = a2;
      v17 = v23;
      v21[-3] = v25;
      v21[-2] = v17;
      OS_dispatch_queue.sync<A>(execute:)();
      v19 = aBlock;
      v18 = v28;
      v21[1] = sub_100008BB8(0, &qword_1016AC5D8, NSKeyedUnarchiver_ptr);
      sub_1000BC4D4(&qword_1016AC5E0, &qword_1013C1198);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_101385D80;
      *(v20 + 32) = sub_100008BB8(0, &qword_1016AC5E8, CKServerChangeToken_ptr);
      v22 = v18;
      static NSKeyedUnarchiver.unarchivedObject(ofClasses:from:)();
      sub_100016590(v19, v22);
      sub_100016590(v25, v17);

      if (v30)
      {
        if (swift_dynamicCast())
        {
          return v26;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        sub_1004AB638(&aBlock);
        return 0;
      }
    }
  }

  return result;
}

void sub_10088FFC4(uint64_t *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  sub_1010B7424(v1[2], a1);
}

uint64_t sub_10088FFE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a3;
  v24[0] = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v5 - 8);
  v6 = *(v27 + 64);
  __chkstk_darwin(v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DispatchQoS();
  v9 = *(v26 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v26);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LocationFetcher();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[1] = *(v3 + 16);
  sub_10089043C(v3, v16);
  v17 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v18 = (v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  sub_1008904A0(v16, v19 + v17);
  *(v19 + v18) = a1;
  v20 = (v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8));
  v21 = v25;
  *v20 = v24[0];
  v20[1] = v21;
  aBlock[4] = sub_100890504;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101637B90;
  v22 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v28 = _swiftEmptyArrayStorage;
  sub_10046EAC4();
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_10013A8AC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v27 + 8))(v8, v5);
  (*(v9 + 8))(v12, v26);
}

BOOL sub_100890374()
{
  if (*(v0 + 8))
  {
    return 0;
  }

  v1 = *(v0 + 16);
  return *(v1 + 16) == 1 && sub_1005C8928(1, v1);
}

uint64_t sub_10089039C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 24);

  return v3;
}

uint64_t sub_1008903E4()
{
  result = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  return result;
}

uint64_t sub_1008903F0(uint64_t a1)
{
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = *(v1 + 80);
  v3 = *v1;
  v4 = v1[1];
  return sub_1004D5340(a1);
}

uint64_t sub_10089043C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationFetcher();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1008904A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationFetcher();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100890504()
{
  v1 = *(type metadata accessor for LocationFetcher() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + v4);
  v7 = *(v0 + v4 + 8);

  sub_10062743C(v5, (v0 + v2), v6, v7);
}

uint64_t sub_1008905D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v26 = a3;
  v24 = a2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DispatchQoS();
  v8 = *(v27 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v27);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC488();
  (*(v13 + 104))(v16, enum case for DispatchQoS.QoSClass.default(_:), v12);
  v17 = static OS_dispatch_queue.global(qos:)();
  (*(v13 + 8))(v16, v12);
  v18 = swift_allocObject();
  v19 = v25;
  v20 = v26;
  v18[2] = v24;
  v18[3] = v20;
  v18[4] = v19;
  aBlock[4] = sub_1008909DC;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101637BE0;
  v21 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v28 = _swiftEmptyArrayStorage;
  sub_10046EAC4();
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_10013A8AC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);

  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v27);
}

uint64_t sub_100890934()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return 2;
}

__n128 sub_100890A1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100890A40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100890A88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100890AF4()
{
  result = qword_1016AC5F0;
  if (!qword_1016AC5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AC5F0);
  }

  return result;
}

unint64_t sub_100890B48()
{
  result = qword_1016AC5F8;
  if (!qword_1016AC5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AC5F8);
  }

  return result;
}

unint64_t sub_100890B9C(uint64_t a1)
{
  result = sub_100890BC4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100890BC4()
{
  result = qword_1016AC600;
  if (!qword_1016AC600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AC600);
  }

  return result;
}

uint64_t sub_100890C20()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];
  sub_1000BB27C(v0[10]);
  v6 = v0[13];
  sub_1000BB27C(v0[12]);

  return swift_deallocClassInstance();
}

uint64_t sub_100890CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v5 = type metadata accessor for UUID();
  v3[5] = v5;
  v6 = *(v5 - 8);
  v3[6] = v6;
  v3[7] = *(v6 + 64);
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_100890D84, a3, 0);
}

uint64_t sub_100890D84()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[4];
  (*(v3 + 16))(v1, v0[3], v2);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[9] = v6;
  *(v6 + 16) = v4;
  (*(v3 + 32))(v6 + v5, v1, v2);
  v7 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v8 = swift_task_alloc();
  v0[10] = v8;
  v9 = sub_1000BC4D4(&qword_101697798, &unk_10138C4F0);
  *v8 = v0;
  v8[1] = sub_1002E9E50;
  v10 = v0[2];

  return unsafeBlocking<A>(context:_:)(v10, 0xD000000000000010, 0x800000010134A8C0, sub_1002EB3A8, v6, v9);
}

uint64_t sub_100890F1C(uint64_t result, char a2)
{
  if (result > 2u)
  {
    if (result != 4)
    {
      return result;
    }
  }

  else
  {
    if (!result)
    {
      type metadata accessor for SPBeaconSharingError(0);
      sub_100032898(_swiftEmptyArrayStorage);
      sub_100890FD4();
      _BridgedStoredNSError.init(_:userInfo:)();
      return swift_willThrow();
    }

    if (result != 1)
    {
      return 0;
    }
  }

  if (a2)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

unint64_t sub_100890FD4()
{
  result = qword_101696340;
  if (!qword_101696340)
  {
    type metadata accessor for SPBeaconSharingError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101696340);
  }

  return result;
}

uint64_t sub_10089102C(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v2 - 8);
  v35 = v2;
  v3 = *(v34 + 64);
  __chkstk_darwin(v2);
  v33 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v31 = *(v5 - 8);
  v32 = v5;
  v6 = *(v31 + 64);
  __chkstk_darwin(v5);
  v29 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_101385D80;
  v12 = UUID.uuidString.getter();
  v14 = v13;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = sub_100008C00();
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  os_log(_:dso:log:_:_:)();

  v15 = sub_1000BC4D4(&qword_10169F320, &qword_1013A0780);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = Future.init()();
  v19 = v30;
  v28[1] = *&v30[OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandQueue];
  (*(v9 + 16))(v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v20 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  (*(v9 + 32))(v21 + v20, v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  *(v21 + ((v10 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = v18;
  aBlock[4] = sub_1008A3EAC;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101638140;
  v22 = _Block_copy(aBlock);
  v23 = v19;

  v24 = v29;
  static DispatchQoS.unspecified.getter();
  v36 = _swiftEmptyArrayStorage;
  sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v25 = v33;
  v26 = v35;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v34 + 8))(v25, v26);
  (*(v31 + 8))(v24, v32);

  return v18;
}

uint64_t sub_1008914EC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v4 - 8);
  v29 = v4;
  v5 = *(v28 + 64);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v26 = *(v8 - 8);
  v27 = v8;
  v9 = *(v26 + 64);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v15 = sub_1000BC4D4(&qword_10169F320, &qword_1013A0780);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = Future.init()();
  v25 = *&v1[OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandQueue];
  (*(v13 + 16))(&v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v12);
  v19 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v2;
  (*(v13 + 32))(v20 + v19, &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  *(v20 + ((v14 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = v18;
  aBlock[4] = sub_1008A3DD0;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101638078;
  v21 = _Block_copy(aBlock);
  v22 = v2;

  static DispatchQoS.unspecified.getter();
  v30 = _swiftEmptyArrayStorage;
  sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v23 = v29;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v28 + 8))(v7, v23);
  (*(v26 + 8))(v11, v27);

  return v18;
}

uint64_t sub_10089193C()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v6 = *(v15 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v15);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v14[1] = *&v0[OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandQueue];
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_1008A402C;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_1016384D8;
  v11 = _Block_copy(aBlock);
  v12 = v0;
  static DispatchQoS.unspecified.getter();
  v16 = _swiftEmptyArrayStorage;
  sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v15);
}

uint64_t sub_100891C74(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v2 - 8);
  v35 = v2;
  v3 = *(v34 + 64);
  __chkstk_darwin(v2);
  v33 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v31 = *(v5 - 8);
  v32 = v5;
  v6 = *(v31 + 64);
  __chkstk_darwin(v5);
  v29 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_101385D80;
  v12 = UUID.uuidString.getter();
  v14 = v13;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = sub_100008C00();
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  os_log(_:dso:log:_:_:)();

  v15 = sub_1000BC4D4(&qword_1016AC9B0, &unk_1013C15A0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = Future.init()();
  v19 = v30;
  v28[1] = *&v30[OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandQueue];
  (*(v9 + 16))(v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v20 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  (*(v9 + 32))(v21 + v20, v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  *(v21 + ((v10 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = v18;
  aBlock[4] = sub_1008A3EFC;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101638230;
  v22 = _Block_copy(aBlock);
  v23 = v19;

  v24 = v29;
  static DispatchQoS.unspecified.getter();
  v36 = _swiftEmptyArrayStorage;
  sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v25 = v33;
  v26 = v35;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v34 + 8))(v25, v26);
  (*(v31 + 8))(v24, v32);

  return v18;
}

uint64_t sub_100892134(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v4 - 8);
  v29 = v4;
  v5 = *(v28 + 64);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v26 = *(v8 - 8);
  v27 = v8;
  v9 = *(v26 + 64);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v15 = sub_1000BC4D4(&qword_1016AC9A0, &qword_1013C1588);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = Future.init()();
  v25 = *&v1[OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandQueue];
  (*(v13 + 16))(&v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v12);
  v19 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v2;
  (*(v13 + 32))(v20 + v19, &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  *(v20 + ((v14 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = v18;
  aBlock[4] = sub_1008A3DA0;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101637FB0;
  v21 = _Block_copy(aBlock);
  v22 = v2;

  static DispatchQoS.unspecified.getter();
  v30 = _swiftEmptyArrayStorage;
  sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v23 = v29;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v28 + 8))(v7, v23);
  (*(v26 + 8))(v11, v27);

  return v18;
}

void *sub_100892584()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[8];

  v6 = v0[9];

  v7 = v0[10];

  v8 = v0[11];

  v9 = v0[12];

  return v0;
}

uint64_t sub_1008925E4()
{
  sub_100892584();

  return swift_deallocClassInstance();
}

id sub_10089263C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a2;
  v23 = a3;
  v21 = a1;
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandQueue;
  v19 = sub_1000BC488();
  (*(v9 + 104))(v12, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v8);
  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_100003ED4(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *&v3[v20] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v3[OBJC_IVAR____TtC12searchpartyd17TagCommandManager_batteryFetchInFlight] = &_swiftEmptySetSingleton;
  v13 = &v3[OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandManager];
  *v13 = 0;
  *(v13 + 1) = 0;
  *&v3[OBJC_IVAR____TtC12searchpartyd17TagCommandManager_tagCommandHandlers] = _swiftEmptyDictionarySingleton;
  v14 = v22;
  *&v3[OBJC_IVAR____TtC12searchpartyd17TagCommandManager_beaconStore] = v21;
  v15 = &v3[OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandManagerCreator];
  v16 = v23;
  *v15 = v14;
  *(v15 + 1) = v16;
  v17 = type metadata accessor for TagCommandManager();
  v24.receiver = v3;
  v24.super_class = v17;
  return objc_msgSendSuper2(&v24, "init");
}

uint64_t sub_10089292C()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandQueue);
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v5, v1);
  if (v6)
  {
    v9 = (v0 + OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandManager);
    if (*(v0 + OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandManager))
    {
      v10 = v9[1];
      v11 = *(v0 + OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandManager);
    }

    else
    {
      v12 = *(v0 + OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandManagerCreator);
      v13 = *(v0 + OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandManagerCreator + 8);

      v11 = v12(v0, &off_101637E80);
      v15 = v14;

      v16 = *v9;
      *v9 = v11;
      v9[1] = v15;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRetain();
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100892AF4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TagCommandManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100892BDC(char *a1, uint64_t a2, void (*a3)(char *, uint64_t))
{
  v58 = a3;
  v57 = type metadata accessor for DispatchWorkItemFlags();
  v56 = *(v57 - 8);
  v5 = *(v56 + 64);
  __chkstk_darwin(v57);
  v54 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for DispatchQoS();
  v53 = *(v55 - 8);
  v7 = *(v53 + 64);
  __chkstk_darwin(v55);
  v52 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for UUID();
  v9 = *(v50 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v50);
  v48[1] = v11;
  v49 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48[0] = type metadata accessor for DispatchTimeInterval();
  v12 = *(v48[0] - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v48[0]);
  v15 = (v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v59 = type metadata accessor for DispatchTime();
  v51 = *(v59 - 8);
  v16 = *(v51 + 64);
  v17 = __chkstk_darwin(v59);
  v19 = v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = v48 - v20;
  v22 = OBJC_IVAR____TtC12searchpartyd17TagCommandManager_tagCommandHandlers;
  swift_beginAccess();
  v23 = *&a1[v22];
  if (!*(v23 + 16))
  {
    goto LABEL_8;
  }

  v24 = *&a1[v22];

  v25 = sub_1000210EC(a2);
  if ((v26 & 1) == 0)
  {

LABEL_8:
    type metadata accessor for CommandCompletion();
    v31 = swift_allocObject();
    *(v31 + 16) = 0;
    *(v31 + 24) = 1;
    *(v31 + 32) = 0u;
    *(v31 + 48) = 0u;
    *(v31 + 64) = 0u;
    *(v31 + 80) = 0u;
    *(v31 + 96) = 0;
    *(v31 + 64) = v58;

    swift_beginAccess();

    v32 = *&a1[v22];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v61 = *&a1[v22];
    *&a1[v22] = 0x8000000000000000;
    sub_10100008C(v31, a2, isUniquelyReferenced_nonNull_native);
    *&a1[v22] = v61;
    swift_endAccess();
LABEL_9:

    sub_10089292C();
    v35 = v34;
    ObjectType = swift_getObjectType();
    (*(v35 + 16))(a2, ObjectType, v35);
    static DispatchTime.now()();
    *v15 = 62;
    v37 = v48[0];
    (*(v12 + 104))(v15, enum case for DispatchTimeInterval.seconds(_:), v48[0]);
    + infix(_:_:)();
    (*(v12 + 8))(v15, v37);
    v58 = *(v51 + 8);
    v58(v19, v59);
    v51 = *&a1[OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandQueue];
    v38 = v49;
    v39 = v50;
    (*(v9 + 16))(v49, a2, v50);
    v40 = (*(v9 + 80) + 24) & ~*(v9 + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = a1;
    (*(v9 + 32))(v41 + v40, v38, v39);
    aBlock[4] = sub_1008A3EC4;
    aBlock[5] = v41;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_101638190;
    v42 = _Block_copy(aBlock);
    v43 = a1;
    v44 = v52;
    static DispatchQoS.unspecified.getter();
    v61 = _swiftEmptyArrayStorage;
    sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v45 = v54;
    v46 = v57;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v42);
    swift_unknownObjectRelease();
    (*(v56 + 8))(v45, v46);
    (*(v53 + 8))(v44, v55);
    v58(v21, v59);
  }

  v27 = *(*(v23 + 56) + 8 * v25);

  if (!*(v27 + 64))
  {
    *(v27 + 64) = v58;

    goto LABEL_9;
  }

  static os_log_type_t.error.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  type metadata accessor for CommandError(0);
  v61 = 1;
  sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v29;
  *(inited + 48) = 0xD00000000000003ALL;
  *(inited + 56) = 0x8000000101362890;
  sub_10090403C(inited);
  swift_setDeallocating();
  sub_10000B3A8(inited + 32, &unk_101695C20, &unk_101386D90);
  sub_100003ED4(&qword_101696428, type metadata accessor for CommandError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v30 = aBlock[0];
  Future.finish(error:)();
}

uint64_t sub_1008934A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v43 = *(v4 - 8);
  v5 = *(v43 + 64);
  __chkstk_darwin(v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v41 = *(v8 - 8);
  v42 = v8;
  v9 = *(v41 + 64);
  __chkstk_darwin(v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC12searchpartyd17TagCommandManager_tagCommandHandlers;
  result = swift_beginAccess();
  v19 = *(a1 + v17);
  if (*(v19 + 16))
  {
    v20 = *(a1 + v17);

    v21 = sub_1000210EC(a2);
    if (v22)
    {
      v23 = *(v19 + 56);
      v40 = v4;
      v24 = *(v23 + 8 * v21);

      v25 = *(v24 + 64);

      if (v25)
      {
        v39 = v25;
        static os_log_type_t.error.getter();
        if (qword_101695050 != -1)
        {
          swift_once();
        }

        os_log(_:dso:log:_:_:)();
        v26 = *(a1 + v17);
        if (*(v26 + 16))
        {
          v27 = *(a1 + v17);

          v28 = sub_1000210EC(a2);
          if (v29)
          {
            v30 = *(*(v26 + 56) + 8 * v28);

            v31 = *(v30 + 64);
            *(v30 + 64) = 0;
          }

          else
          {
          }
        }

        v32 = (a1 + OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandManager);
        v33 = *(a1 + OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandManager);
        *v32 = 0;
        v32[1] = 0;
        swift_unknownObjectRelease();
        sub_1000BC488();
        (*(v13 + 104))(v16, enum case for DispatchQoS.QoSClass.default(_:), v12);
        v34 = static OS_dispatch_queue.global(qos:)();
        (*(v13 + 8))(v16, v12);
        v35 = swift_allocObject();
        *(v35 + 16) = v39;
        aBlock[4] = sub_1008A3EDC;
        aBlock[5] = v35;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100006684;
        aBlock[3] = &unk_1016381E0;
        v36 = _Block_copy(aBlock);

        static DispatchQoS.unspecified.getter();
        v44 = _swiftEmptyArrayStorage;
        sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
        sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
        v37 = v40;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v36);

        (*(v43 + 8))(v7, v37);
        (*(v41 + 8))(v11, v42);
      }
    }

    else
    {
    }
  }

  return result;
}

void sub_1008939BC(char *a1, uint64_t a2, uint64_t a3)
{
  v62 = type metadata accessor for DispatchWorkItemFlags();
  v61 = *(v62 - 8);
  v6 = *(v61 + 64);
  __chkstk_darwin(v62);
  v59 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for DispatchQoS();
  v58 = *(v60 - 8);
  v8 = *(v58 + 64);
  __chkstk_darwin(v60);
  v57 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for UUID();
  v54 = *(v55 - 8);
  v10 = *(v54 + 64);
  __chkstk_darwin(v55);
  v52 = v11;
  v53 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for DispatchTimeInterval();
  v12 = *(v51 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v51);
  v15 = (v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = type metadata accessor for DispatchTime();
  v56 = *(v63 - 8);
  v16 = *(v56 + 64);
  v17 = __chkstk_darwin(v63);
  v19 = v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = v50 - v20;
  v22 = OBJC_IVAR____TtC12searchpartyd17TagCommandManager_tagCommandHandlers;
  swift_beginAccess();
  v23 = *&a1[v22];
  if (!*(v23 + 16))
  {
    goto LABEL_8;
  }

  v24 = *&a1[v22];

  v25 = sub_1000210EC(a2);
  if ((v26 & 1) == 0)
  {

LABEL_8:
    type metadata accessor for CommandCompletion();
    v31 = swift_allocObject();
    *(v31 + 16) = 0;
    *(v31 + 24) = 1;
    *(v31 + 32) = 0u;
    *(v31 + 48) = 0u;
    *(v31 + 64) = 0u;
    *(v31 + 80) = 0u;
    *(v31 + 88) = a3;
    *(v31 + 96) = 0;

    swift_beginAccess();

    v32 = *&a1[v22];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v65 = *&a1[v22];
    *&a1[v22] = 0x8000000000000000;
    sub_10100008C(v31, a2, isUniquelyReferenced_nonNull_native);
    *&a1[v22] = v65;
    swift_endAccess();
LABEL_9:

    v50[1] = sub_10089292C();
    v35 = v34;
    ObjectType = swift_getObjectType();
    (*(v35 + 80))(a2, ObjectType, v35);
    static DispatchTime.now()();
    *v15 = 62;
    v37 = v51;
    (*(v12 + 104))(v15, enum case for DispatchTimeInterval.seconds(_:), v51);
    + infix(_:_:)();
    (*(v12 + 8))(v15, v37);
    v56 = *(v56 + 8);
    (v56)(v19, v63);
    v51 = *&a1[OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandQueue];
    v38 = v54;
    v39 = v53;
    v40 = a2;
    v41 = v55;
    (*(v54 + 16))(v53, v40, v55);
    v42 = (*(v38 + 80) + 24) & ~*(v38 + 80);
    v43 = (v52 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
    v44 = swift_allocObject();
    *(v44 + 2) = a1;
    (*(v38 + 32))(&v44[v42], v39, v41);
    *&v44[v43] = a3;
    aBlock[4] = sub_1008A3F14;
    aBlock[5] = v44;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_101638280;
    v45 = _Block_copy(aBlock);

    v46 = a1;
    v47 = v57;
    static DispatchQoS.unspecified.getter();
    v65 = _swiftEmptyArrayStorage;
    sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v48 = v59;
    v49 = v62;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v45);
    swift_unknownObjectRelease();
    (*(v61 + 8))(v48, v49);
    (*(v58 + 8))(v47, v60);
    (v56)(v21, v63);

    return;
  }

  v27 = *(*(v23 + 56) + 8 * v25);

  if (!*(v27 + 88))
  {
    *(v27 + 88) = a3;

    goto LABEL_9;
  }

  static os_log_type_t.error.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  type metadata accessor for CommandError(0);
  v65 = 1;
  sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v29;
  *(inited + 48) = 0xD000000000000036;
  *(inited + 56) = 0x8000000101362990;
  sub_10090403C(inited);
  swift_setDeallocating();
  sub_10000B3A8(inited + 32, &unk_101695C20, &unk_101386D90);
  sub_100003ED4(&qword_101696428, type metadata accessor for CommandError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v30 = aBlock[0];
  Future.finish(error:)();
}

uint64_t sub_1008942AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v47 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for DispatchQoS();
  v46 = *(v48 - 8);
  v10 = *(v46 + 64);
  __chkstk_darwin(v48);
  v45 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  v44 = *(v12 - 8);
  v13 = *(v44 + 64);
  __chkstk_darwin(v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC12searchpartyd17TagCommandManager_tagCommandHandlers;
  result = swift_beginAccess();
  v18 = *(a1 + v16);
  if (*(v18 + 16))
  {
    v19 = *(a1 + v16);

    v20 = sub_1000210EC(a2);
    if (v21)
    {
      v22 = *(v18 + 56);
      v43 = v7;
      v23 = *(v22 + 8 * v20);

      v24 = *(v23 + 88);

      if (v24)
      {
        v42 = v6;
        aBlock[0] = a3;
        v50 = v24;
        sub_1000BC4D4(&qword_1016AC9B0, &unk_1013C15A0);
        sub_1000041A4(&qword_1016AC9B8, &qword_1016AC9B0, &unk_1013C15A0);

        v25 = dispatch thunk of static Equatable.== infix(_:_:)();

        if (v25)
        {
          static os_log_type_t.error.getter();
          if (qword_101695050 != -1)
          {
            swift_once();
          }

          os_log(_:dso:log:_:_:)();
          v26 = *(a1 + v16);
          if (*(v26 + 16))
          {
            v27 = *(a1 + v16);

            v28 = sub_1000210EC(a2);
            if (v29)
            {
              v30 = *(*(v26 + 56) + 8 * v28);

              v31 = *(v30 + 88);
              *(v30 + 88) = 0;
            }

            else
            {
            }
          }

          v32 = (a1 + OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandManager);
          v33 = *(a1 + OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandManager);
          *v32 = 0;
          v32[1] = 0;
          swift_unknownObjectRelease();
          sub_1000BC488();
          v34 = v44;
          (*(v44 + 104))(v15, enum case for DispatchQoS.QoSClass.default(_:), v12);
          v35 = static OS_dispatch_queue.global(qos:)();
          (*(v34 + 8))(v15, v12);
          v36 = swift_allocObject();
          *(v36 + 16) = v24;
          aBlock[4] = sub_1008A90D4;
          aBlock[5] = v36;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100006684;
          aBlock[3] = &unk_1016382D0;
          v37 = _Block_copy(aBlock);

          v38 = v45;
          static DispatchQoS.unspecified.getter();
          v50 = _swiftEmptyArrayStorage;
          sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
          sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
          sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
          v39 = v47;
          v40 = v42;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v37);

          (*(v43 + 8))(v39, v40);
          (*(v46 + 8))(v38, v48);
        }
      }
    }

    else
    {
    }
  }

  return result;
}

void sub_100894860(uint64_t a1)
{
  if (a1)
  {
    type metadata accessor for CommandError(0);
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003ED4(&qword_101696428, type metadata accessor for CommandError);
    _BridgedStoredNSError.init(_:userInfo:)();
    Future.finish(error:)();
  }
}

uint64_t sub_100894920(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v43 = *(v3 - 8);
  v44 = v3;
  v4 = *(v43 + 64);
  __chkstk_darwin(v3);
  v42 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v40 = *(v6 - 8);
  v41 = v6;
  v7 = *(v40 + 64);
  __chkstk_darwin(v6);
  v39 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for UUID();
  v9 = *(v36 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v36);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_101385D80;
  v13 = UUID.uuidString.getter();
  v15 = v14;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = sub_100008C00();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  os_log(_:dso:log:_:_:)();

  v16 = sub_1000BC4D4(&qword_10169F320, &qword_1013A0780);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v35[0] = Future.init()();
  v19 = *(v16 + 48);
  v20 = *(v16 + 52);
  swift_allocObject();
  v21 = Future.init()();
  v22 = v36;
  v23 = v37;
  v35[1] = *&v37[OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandQueue];
  (*(v9 + 16))(v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v36);
  v24 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v25 = (v10 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v27 + 16) = v23;
  (*(v9 + 32))(v27 + v24, v11, v22);
  *(v27 + v25) = v38;
  v28 = v35[0];
  *(v27 + v26) = v35[0];
  *(v27 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8)) = v21;
  aBlock[4] = sub_1008A3F64;
  aBlock[5] = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_1016383E8;
  v29 = _Block_copy(aBlock);
  v30 = v23;

  v31 = v39;
  static DispatchQoS.unspecified.getter();
  v45 = _swiftEmptyArrayStorage;
  sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v32 = v42;
  v33 = v44;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v29);
  (*(v43 + 8))(v32, v33);
  (*(v40 + 8))(v31, v41);

  return v28;
}

uint64_t sub_100894E38(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v87 = *(v10 - 8);
  v88 = v10;
  v11 = *(v87 + 64);
  __chkstk_darwin(v10);
  v85 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for DispatchQoS();
  v84 = *(v86 - 8);
  v13 = *(v84 + 64);
  __chkstk_darwin(v86);
  v83 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for UUID();
  v77 = *(v78 - 8);
  v15 = *(v77 + 64);
  __chkstk_darwin(v78);
  v75 = v16;
  v76 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for DispatchTimeInterval();
  v73 = *(v74 - 8);
  v17 = *(v73 + 64);
  __chkstk_darwin(v74);
  v72 = (&v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v91 = type metadata accessor for DispatchTime();
  v81 = *(v91 - 8);
  v19 = *(v81 + 64);
  v20 = __chkstk_darwin(v91);
  v71 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v80 = &v69 - v22;
  sub_100895950(a2);
  v23 = OBJC_IVAR____TtC12searchpartyd17TagCommandManager_tagCommandHandlers;
  swift_beginAccess();
  v24 = *&a1[v23];
  if (*(v24 + 16))
  {
    v25 = *&a1[v23];

    v26 = sub_1000210EC(a2);
    if (v27)
    {
      v28 = *(*(v24 + 56) + 8 * v26);

      v29 = *(v28 + 32);
      goto LABEL_6;
    }
  }

  type metadata accessor for CommandCompletion();
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v28 + 24) = 1;
  *(v28 + 32) = 0u;
  *(v28 + 48) = 0u;
  *(v28 + 64) = 0u;
  *(v28 + 80) = 0u;
  *(v28 + 96) = 0;
LABEL_6:
  *(v28 + 16) = a3;
  *(v28 + 24) = 0;
  *(v28 + 32) = a4;
  v82 = a4;

  v30 = *(v28 + 40);
  *(v28 + 40) = a5;

  swift_beginAccess();

  v31 = *&a1[v23];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v98 = *&a1[v23];
  *&a1[v23] = 0x8000000000000000;
  sub_10100008C(v28, a2, isUniquelyReferenced_nonNull_native);
  *&a1[v23] = v98;
  swift_endAccess();
  v79 = a1;
  v33 = sub_10089292C();
  v35 = v34;
  v70 = static os_log_type_t.default.getter();
  v36 = a2;
  v37 = a3;
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v38 = swift_allocObject();
  v69 = xmmword_101385D80;
  *(v38 + 16) = xmmword_101385D80;
  aBlock = v33;
  v93 = v35;
  v89 = v35;
  v90 = v33;
  swift_unknownObjectRetain();
  sub_1000BC4D4(&qword_1016AC9A8, &unk_1013C1590);
  v39 = String.init<A>(describing:)();
  v41 = v40;
  *(v38 + 56) = &type metadata for String;
  v42 = sub_100008C00();
  *(v38 + 64) = v42;
  *(v38 + 32) = v39;
  *(v38 + 40) = v41;
  os_log(_:dso:log:_:_:)();

  static os_log_type_t.default.getter();
  v43 = swift_allocObject();
  *(v43 + 16) = v69;
  v44 = UUID.uuidString.getter();
  *(v43 + 56) = &type metadata for String;
  *(v43 + 64) = v42;
  *(v43 + 32) = v44;
  *(v43 + 40) = v45;
  v46 = v37;
  if (v37 <= 1)
  {
    v47 = v79;
    if (v46 == 1)
    {
      os_log(_:dso:log:_:_:)();

      swift_getObjectType();
      v48 = [objc_opt_self() rangingSequence];
LABEL_15:
      v49 = v48;
      v50 = v36;
      (*(v89 + 32))();
      goto LABEL_16;
    }

LABEL_14:
    os_log(_:dso:log:_:_:)();

    swift_getObjectType();
    v48 = [objc_opt_self() defaultSequence];
    goto LABEL_15;
  }

  v47 = v79;
  if (v46 == 2)
  {
    os_log(_:dso:log:_:_:)();

    ObjectType = swift_getObjectType();
    v50 = v36;
    (*(v89 + 40))(v36, ObjectType);
    goto LABEL_17;
  }

  if (v46 != 5)
  {
    goto LABEL_14;
  }

  os_log(_:dso:log:_:_:)();

  swift_getObjectType();
  v49 = [objc_opt_self() shortSequence];
  v50 = v36;
  (*(v89 + 48))();
LABEL_16:

LABEL_17:
  v51 = v71;
  static DispatchTime.now()();
  v52 = v72;
  *v72 = 62;
  v53 = v73;
  v54 = v74;
  (*(v73 + 104))(v52, enum case for DispatchTimeInterval.seconds(_:), v74);
  v55 = v80;
  + infix(_:_:)();
  (*(v53 + 8))(v52, v54);
  v89 = *(v81 + 8);
  (v89)(v51, v91);
  v81 = *&v47[OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandQueue];
  v56 = v77;
  v57 = v76;
  v58 = v78;
  (*(v77 + 16))(v76, v50, v78);
  v59 = (*(v56 + 80) + 24) & ~*(v56 + 80);
  v60 = (v75 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  *(v61 + 16) = v47;
  (*(v56 + 32))(v61 + v59, v57, v58);
  *(v61 + v60) = v82;
  v96 = sub_1008A400C;
  v97 = v61;
  aBlock = _NSConcreteStackBlock;
  v93 = 1107296256;
  v94 = sub_100006684;
  v95 = &unk_101638438;
  v62 = _Block_copy(&aBlock);

  v63 = v47;
  v64 = v83;
  static DispatchQoS.unspecified.getter();
  v98 = _swiftEmptyArrayStorage;
  sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v65 = v85;
  v66 = v88;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v62);

  swift_unknownObjectRelease();
  (*(v87 + 8))(v65, v66);
  (*(v84 + 8))(v64, v86);
  (v89)(v55, v91);
}

uint64_t sub_100895950(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12searchpartyd17TagCommandManager_tagCommandHandlers;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  if (*(v5 + 16))
  {

    v6 = sub_1000210EC(a1);
    if (v7)
    {
      v8 = *(*(v5 + 56) + 8 * v6);

      if (v8[4])
      {
        v9 = v8[4];

        static os_log_type_t.default.getter();
        if (qword_101695008 != -1)
        {
          swift_once();
        }

        os_log(_:dso:log:_:_:)();
        Future.finish(result:)();
      }

      if (v8[5])
      {
        v10 = v8[5];

        static os_log_type_t.default.getter();
        if (qword_101695008 != -1)
        {
          swift_once();
        }

        os_log(_:dso:log:_:_:)();
        Future.finish(result:)();
      }

      if (v8[6])
      {
        v11 = v8[6];

        static os_log_type_t.default.getter();
        if (qword_101695008 != -1)
        {
          swift_once();
        }

        os_log(_:dso:log:_:_:)();
        Future.finish(result:)();
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_100895B90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v59 = *(v6 - 8);
  v7 = *(v59 + 64);
  __chkstk_darwin(v6);
  v57 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for DispatchQoS();
  v56 = *(v58 - 8);
  v9 = *(v56 + 64);
  __chkstk_darwin(v58);
  v55 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v53 = *(v11 - 8);
  v54 = v11;
  v12 = *(v53 + 64);
  __chkstk_darwin(v11);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC12searchpartyd17TagCommandManager_tagCommandHandlers;
  swift_beginAccess();
  v16 = *(a1 + v15);
  if (*(v16 + 16))
  {
    v17 = *(a1 + v15);

    v18 = sub_1000210EC(a2);
    if (v19)
    {
      v20 = *(*(v16 + 56) + 8 * v18);

      v21 = *(v20 + 32);

      goto LABEL_6;
    }
  }

  v21 = 0;
LABEL_6:
  v22 = *(a1 + v15);
  if (*(v22 + 16))
  {
    v23 = *(a1 + v15);

    v24 = sub_1000210EC(a2);
    if (v25)
    {
      v26 = *(*(v22 + 56) + 8 * v24);

      v27 = *(v26 + 40);

      if (!v21)
      {
      }

      goto LABEL_12;
    }
  }

  v27 = 0;
  if (!v21)
  {
  }

LABEL_12:
  v52 = v6;
  aBlock[0] = a3;
  v61 = v21;
  sub_1000BC4D4(&qword_10169F320, &qword_1013A0780);
  sub_1000041A4(&unk_1016AC9C0, &qword_10169F320, &qword_1013A0780);

  v28 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v28)
  {
    static os_log_type_t.error.getter();
    if (qword_101695050 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    v29 = *(a1 + v15);
    if (*(v29 + 16))
    {
      v30 = *(a1 + v15);

      v31 = sub_1000210EC(a2);
      if (v32)
      {
        v33 = *(*(v29 + 56) + 8 * v31);

        v34 = *(v33 + 40);
        *(v33 + 40) = 0;
      }

      else
      {
      }
    }

    v35 = *(a1 + v15);
    if (*(v35 + 16))
    {
      v36 = *(a1 + v15);

      v37 = sub_1000210EC(a2);
      if (v38)
      {
        v39 = *(*(v35 + 56) + 8 * v37);

        v40 = *(v39 + 32);
        *(v39 + 32) = 0;
      }

      else
      {
      }
    }

    v41 = (a1 + OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandManager);
    v42 = *(a1 + OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandManager);
    *v41 = 0;
    v41[1] = 0;
    swift_unknownObjectRelease();
    sub_1000BC488();
    v44 = v53;
    v43 = v54;
    (*(v53 + 104))(v14, enum case for DispatchQoS.QoSClass.default(_:), v54);
    v45 = static OS_dispatch_queue.global(qos:)();
    (*(v44 + 8))(v14, v43);
    v46 = swift_allocObject();
    *(v46 + 16) = v21;
    *(v46 + 24) = v27;
    aBlock[4] = sub_1008A4024;
    aBlock[5] = v46;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_101638488;
    v47 = _Block_copy(aBlock);

    v48 = v55;
    static DispatchQoS.unspecified.getter();
    v61 = _swiftEmptyArrayStorage;
    sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v49 = v57;
    v50 = v52;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v47);

    (*(v59 + 8))(v49, v50);
    (*(v56 + 8))(v48, v58);
  }

  else
  {
  }
}

void sub_100896210(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    type metadata accessor for CommandError(0);
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003ED4(&qword_101696428, type metadata accessor for CommandError);
    _BridgedStoredNSError.init(_:userInfo:)();
    Future.finish(error:)();
  }

  if (a2)
  {
    type metadata accessor for CommandError(0);
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003ED4(&qword_101696428, type metadata accessor for CommandError);
    _BridgedStoredNSError.init(_:userInfo:)();
    Future.finish(error:)();
  }
}

uint64_t sub_100896354(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v4 - 8);
  v29 = v4;
  v5 = *(v28 + 64);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v26 = *(v8 - 8);
  v27 = v8;
  v9 = *(v26 + 64);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v15 = sub_1000BC4D4(&qword_10169F320, &qword_1013A0780);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = Future.init()();
  v25 = *&v1[OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandQueue];
  (*(v13 + 16))(&v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v12);
  v19 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v2;
  (*(v13 + 32))(v20 + v19, &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  *(v20 + ((v14 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = v18;
  aBlock[4] = sub_1008A3F2C;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101638320;
  v21 = _Block_copy(aBlock);
  v22 = v2;

  static DispatchQoS.unspecified.getter();
  v30 = _swiftEmptyArrayStorage;
  sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v23 = v29;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v28 + 8))(v7, v23);
  (*(v26 + 8))(v11, v27);

  return v18;
}

uint64_t sub_1008967A4(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v69 = *(v6 - 8);
  v70 = v6;
  v7 = *(v69 + 64);
  __chkstk_darwin(v6);
  v67 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for DispatchQoS();
  v66 = *(v68 - 8);
  v9 = *(v66 + 64);
  __chkstk_darwin(v68);
  v65 = v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v61 = *(v11 - 8);
  v62 = v11;
  v12 = *(v61 + 64);
  __chkstk_darwin(v11);
  v59 = v13;
  v60 = v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for DispatchTimeInterval();
  v57 = *(v58 - 8);
  v14 = *(v57 + 64);
  __chkstk_darwin(v58);
  v16 = (v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v71 = type metadata accessor for DispatchTime();
  v64 = *(v71 - 8);
  v17 = *(v64 + 64);
  v18 = __chkstk_darwin(v71);
  v56 = v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v63 = v54 - v20;
  sub_100895950(a2);
  v21 = OBJC_IVAR____TtC12searchpartyd17TagCommandManager_tagCommandHandlers;
  swift_beginAccess();
  v22 = *&a1[v21];
  if (*(v22 + 16))
  {
    v23 = *&a1[v21];

    v24 = sub_1000210EC(a2);
    if (v25)
    {
      v26 = *(*(v22 + 56) + 8 * v24);

      goto LABEL_6;
    }
  }

  type metadata accessor for CommandCompletion();
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = 1;
  *(v26 + 32) = 0u;
  *(v26 + 48) = 0u;
  *(v26 + 64) = 0u;
  *(v26 + 80) = 0u;
  *(v26 + 96) = 0;
LABEL_6:
  v27 = *(v26 + 48);
  *(v26 + 48) = a3;

  swift_beginAccess();

  v28 = *&a1[v21];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v78 = *&a1[v21];
  *&a1[v21] = 0x8000000000000000;
  sub_10100008C(v26, a2, isUniquelyReferenced_nonNull_native);
  *&a1[v21] = v78;
  swift_endAccess();
  v30 = sub_10089292C();
  v55 = a2;
  v32 = v31;
  static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_101385D80;
  aBlock = v30;
  v73 = v32;
  swift_unknownObjectRetain();
  sub_1000BC4D4(&qword_1016AC9A8, &unk_1013C1590);
  v34 = String.init<A>(describing:)();
  v36 = v35;
  *(v33 + 56) = &type metadata for String;
  *(v33 + 64) = sub_100008C00();
  *(v33 + 32) = v34;
  *(v33 + 40) = v36;
  os_log(_:dso:log:_:_:)();

  ObjectType = swift_getObjectType();
  v38 = v55;
  (*(v32 + 56))(v55, ObjectType, v32);
  v39 = v56;
  static DispatchTime.now()();
  *v16 = 62;
  v40 = v57;
  v41 = v58;
  (*(v57 + 104))(v16, enum case for DispatchTimeInterval.seconds(_:), v58);
  v54[1] = v30;
  v42 = v63;
  + infix(_:_:)();
  (*(v40 + 8))(v16, v41);
  v64 = *(v64 + 8);
  (v64)(v39, v71);
  v58 = *&a1[OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandQueue];
  v44 = v61;
  v43 = v62;
  v45 = v60;
  (*(v61 + 16))(v60, v38, v62);
  v46 = (*(v44 + 80) + 24) & ~*(v44 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = a1;
  (*(v44 + 32))(v47 + v46, v45, v43);
  v76 = sub_1008A3F44;
  v77 = v47;
  aBlock = _NSConcreteStackBlock;
  v73 = 1107296256;
  v74 = sub_100006684;
  v75 = &unk_101638370;
  v48 = _Block_copy(&aBlock);
  v49 = a1;
  v50 = v65;
  static DispatchQoS.unspecified.getter();
  v78 = _swiftEmptyArrayStorage;
  sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v51 = v67;
  v52 = v70;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v48);

  swift_unknownObjectRelease();
  (*(v69 + 8))(v51, v52);
  (*(v66 + 8))(v50, v68);
  (v64)(v42, v71);
}

uint64_t sub_100896FBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v4 - 8);
  v5 = *(v42 + 64);
  __chkstk_darwin(v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v40 = *(v8 - 8);
  v41 = v8;
  v9 = *(v40 + 64);
  __chkstk_darwin(v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC12searchpartyd17TagCommandManager_tagCommandHandlers;
  result = swift_beginAccess();
  v19 = *(a1 + v17);
  if (*(v19 + 16))
  {
    v20 = *(a1 + v17);

    v21 = sub_1000210EC(a2);
    if (v22)
    {
      v23 = *(v19 + 56);
      v39 = v4;
      v24 = *(v23 + 8 * v21);

      v25 = *(v24 + 48);

      if (v25)
      {
        v38 = v25;
        static os_log_type_t.error.getter();
        if (qword_101695050 != -1)
        {
          swift_once();
        }

        os_log(_:dso:log:_:_:)();
        v26 = (a1 + OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandManager);
        v27 = *(a1 + OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandManager);
        *v26 = 0;
        v26[1] = 0;
        swift_unknownObjectRelease();
        v28 = *(a1 + v17);
        if (*(v28 + 16))
        {
          v29 = *(a1 + v17);

          v30 = sub_1000210EC(a2);
          if (v31)
          {
            v32 = *(*(v28 + 56) + 8 * v30);

            v33 = *(v32 + 48);
            *(v32 + 48) = 0;
          }

          else
          {
          }
        }

        sub_1000BC488();
        (*(v13 + 104))(v16, enum case for DispatchQoS.QoSClass.default(_:), v12);
        v34 = static OS_dispatch_queue.global(qos:)();
        (*(v13 + 8))(v16, v12);
        aBlock[4] = sub_1008A3F5C;
        aBlock[5] = v38;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100006684;
        aBlock[3] = &unk_101638398;
        v35 = _Block_copy(aBlock);

        static DispatchQoS.unspecified.getter();
        v43 = _swiftEmptyArrayStorage;
        sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
        sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
        v36 = v39;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v35);

        (*(v42 + 8))(v7, v36);
        (*(v40 + 8))(v11, v41);
      }
    }

    else
    {
    }
  }

  return result;
}

void sub_1008974B8()
{
  type metadata accessor for CommandError(0);
  sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v1;
  *(inited + 48) = 0xD000000000000029;
  *(inited + 56) = 0x8000000101362AE0;
  sub_10090403C(inited);
  swift_setDeallocating();
  sub_10000B3A8(inited + 32, &unk_101695C20, &unk_101386D90);
  sub_100003ED4(&qword_101696428, type metadata accessor for CommandError);
  _BridgedStoredNSError.init(_:userInfo:)();
  Future.finish(error:)();
}

void sub_100897600(char *a1, uint64_t a2, uint64_t a3)
{
  v76 = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v75 = v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for UUID();
  v70 = *(v71 - 8);
  v14 = *(v70 + 64);
  __chkstk_darwin(v71);
  v68 = v15;
  v69 = v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for DispatchTimeInterval();
  v66 = *(v67 - 8);
  v16 = *(v66 + 64);
  __chkstk_darwin(v67);
  v18 = (v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v77 = type metadata accessor for DispatchTime();
  v74 = *(v77 - 8);
  v19 = *(v74 + 64);
  v20 = __chkstk_darwin(v77);
  v65 = v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v73 = v60 - v22;
  v23 = OBJC_IVAR____TtC12searchpartyd17TagCommandManager_tagCommandHandlers;
  swift_beginAccess();
  v24 = *&a1[v23];
  v25 = *(v24 + 16);
  v72 = a2;
  if (!v25)
  {
    goto LABEL_8;
  }

  v26 = sub_1000210EC(a2);
  if ((v27 & 1) == 0)
  {

LABEL_8:
    v61 = v11;
    v63 = v10;
    type metadata accessor for CommandCompletion();
    v32 = a2;
    v33 = swift_allocObject();
    *(v33 + 16) = 0;
    *(v33 + 24) = 1;
    *(v33 + 32) = 0u;
    *(v33 + 48) = 0u;
    *(v33 + 64) = 0u;
    *(v33 + 80) = 0u;
    *(v33 + 96) = 0;
    *(v33 + 56) = v76;

    swift_beginAccess();
    v34 = *&a1[v23];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v84 = *&a1[v23];
    *&a1[v23] = 0x8000000000000000;
    sub_10100008C(v33, v32, isUniquelyReferenced_nonNull_native);
    *&a1[v23] = v84;
    swift_endAccess();
    goto LABEL_9;
  }

  v28 = *(*(v24 + 56) + 8 * v26);

  if (*(v28 + 56))
  {
    static os_log_type_t.error.getter();
    if (qword_101695050 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    type metadata accessor for CommandError(0);
    v84 = 1;
    sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_101385D80;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v30;
    *(inited + 48) = 0xD000000000000035;
    *(inited + 56) = 0x8000000101362760;
    sub_10090403C(inited);
    swift_setDeallocating();
    sub_10000B3A8(inited + 32, &unk_101695C20, &unk_101386D90);
    sub_100003ED4(&qword_101696428, type metadata accessor for CommandError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v31 = aBlock;
    Future.finish(error:)();

    return;
  }

  v61 = v11;
  v63 = v10;
  *(v28 + 56) = v76;

LABEL_9:
  v62 = v9;
  v64 = v6;
  v76 = v5;
  v36 = sub_10089292C();
  v38 = v37;
  static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_101385D80;
  aBlock = v36;
  v79 = v38;
  swift_unknownObjectRetain();
  sub_1000BC4D4(&qword_1016AC9A8, &unk_1013C1590);
  v40 = String.init<A>(describing:)();
  v41 = v36;
  v43 = v42;
  *(v39 + 56) = &type metadata for String;
  *(v39 + 64) = sub_100008C00();
  *(v39 + 32) = v40;
  *(v39 + 40) = v43;
  os_log(_:dso:log:_:_:)();

  v60[1] = v41;
  ObjectType = swift_getObjectType();
  v45 = v72;
  (*(v38 + 64))(v72, ObjectType, v38);
  v46 = v65;
  static DispatchTime.now()();
  *v18 = 62;
  v47 = v66;
  v48 = v67;
  (*(v66 + 104))(v18, enum case for DispatchTimeInterval.seconds(_:), v67);
  v49 = v73;
  + infix(_:_:)();
  (*(v47 + 8))(v18, v48);
  v74 = *(v74 + 8);
  (v74)(v46, v77);
  v67 = *&a1[OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandQueue];
  v50 = v70;
  v51 = v69;
  v52 = v71;
  (*(v70 + 16))(v69, v45, v71);
  v53 = (*(v50 + 80) + 24) & ~*(v50 + 80);
  v54 = swift_allocObject();
  *(v54 + 16) = a1;
  (*(v50 + 32))(v54 + v53, v51, v52);
  v82 = sub_1008A3E8C;
  v83 = v54;
  aBlock = _NSConcreteStackBlock;
  v79 = 1107296256;
  v80 = sub_100006684;
  v81 = &unk_1016380C8;
  v55 = _Block_copy(&aBlock);
  v56 = a1;
  v57 = v75;
  static DispatchQoS.unspecified.getter();
  v84 = _swiftEmptyArrayStorage;
  sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v58 = v62;
  v59 = v76;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v55);
  swift_unknownObjectRelease();

  (*(v64 + 8))(v58, v59);
  (*(v61 + 8))(v57, v63);
  (v74)(v49, v77);
}

uint64_t sub_100898038(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v4 - 8);
  v5 = *(v42 + 64);
  __chkstk_darwin(v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v40 = *(v8 - 8);
  v41 = v8;
  v9 = *(v40 + 64);
  __chkstk_darwin(v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC12searchpartyd17TagCommandManager_tagCommandHandlers;
  result = swift_beginAccess();
  v19 = *(a1 + v17);
  if (*(v19 + 16))
  {
    v20 = *(a1 + v17);

    v21 = sub_1000210EC(a2);
    if (v22)
    {
      v23 = *(v19 + 56);
      v39 = v4;
      v24 = *(v23 + 8 * v21);

      v25 = *(v24 + 56);

      if (v25)
      {
        v38 = v25;
        static os_log_type_t.error.getter();
        if (qword_101695050 != -1)
        {
          swift_once();
        }

        os_log(_:dso:log:_:_:)();
        v26 = (a1 + OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandManager);
        v27 = *(a1 + OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandManager);
        *v26 = 0;
        v26[1] = 0;
        swift_unknownObjectRelease();
        v28 = *(a1 + v17);
        if (*(v28 + 16))
        {
          v29 = *(a1 + v17);

          v30 = sub_1000210EC(a2);
          if (v31)
          {
            v32 = *(*(v28 + 56) + 8 * v30);

            v33 = *(v32 + 56);
            *(v32 + 56) = 0;
          }

          else
          {
          }
        }

        sub_1000BC488();
        (*(v13 + 104))(v16, enum case for DispatchQoS.QoSClass.default(_:), v12);
        v34 = static OS_dispatch_queue.global(qos:)();
        (*(v13 + 8))(v16, v12);
        aBlock[4] = sub_1008A3EA4;
        aBlock[5] = v38;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100006684;
        aBlock[3] = &unk_1016380F0;
        v35 = _Block_copy(aBlock);

        static DispatchQoS.unspecified.getter();
        v43 = _swiftEmptyArrayStorage;
        sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
        sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
        v36 = v39;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v35);

        (*(v42 + 8))(v7, v36);
        (*(v40 + 8))(v11, v41);
      }
    }

    else
    {
    }
  }

  return result;
}

void sub_100898534()
{
  type metadata accessor for CommandError(0);
  sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v1;
  *(inited + 48) = 0xD000000000000025;
  *(inited + 56) = 0x80000001013627F0;
  sub_10090403C(inited);
  swift_setDeallocating();
  sub_10000B3A8(inited + 32, &unk_101695C20, &unk_101386D90);
  sub_100003ED4(&qword_101696428, type metadata accessor for CommandError);
  _BridgedStoredNSError.init(_:userInfo:)();
  Future.finish(error:)();
}

void sub_10089867C(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v73 = *(v6 - 8);
  v7 = *(v73 + 64);
  __chkstk_darwin(v6);
  v9 = v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v72 = *(v10 - 8);
  v11 = *(v72 + 64);
  __chkstk_darwin(v10);
  v71 = v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UUID();
  v67 = *(v13 - 8);
  v68 = v13;
  v14 = *(v67 + 64);
  __chkstk_darwin(v13);
  v65 = v15;
  v66 = v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for DispatchTimeInterval();
  v63 = *(v64 - 8);
  v16 = *(v63 + 64);
  __chkstk_darwin(v64);
  v18 = (v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = type metadata accessor for DispatchTime();
  v70 = *(v74 - 8);
  v19 = *(v70 + 64);
  v20 = __chkstk_darwin(v74);
  v62 = v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v69 = v57 - v22;
  v23 = OBJC_IVAR____TtC12searchpartyd17TagCommandManager_tagCommandHandlers;
  swift_beginAccess();
  v24 = *&a1[v23];
  v25 = *(v24 + 16);
  v61 = a2;
  if (!v25)
  {
    goto LABEL_8;
  }

  v26 = sub_1000210EC(a2);
  if ((v27 & 1) == 0)
  {

LABEL_8:
    v59 = v10;
    type metadata accessor for CommandCompletion();
    v30 = a2;
    v31 = swift_allocObject();
    *(v31 + 16) = 0;
    *(v31 + 24) = 1;
    *(v31 + 32) = 0u;
    *(v31 + 48) = 0u;
    *(v31 + 64) = 0u;
    *(v31 + 80) = 0u;
    *(v31 + 96) = 0;
    *(v31 + 72) = a3;

    swift_beginAccess();
    v32 = *&a1[v23];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v81 = *&a1[v23];
    *&a1[v23] = 0x8000000000000000;
    sub_10100008C(v31, v30, isUniquelyReferenced_nonNull_native);
    *&a1[v23] = v81;
    swift_endAccess();
    goto LABEL_9;
  }

  v28 = *(*(v24 + 56) + 8 * v26);

  if (*(v28 + 72))
  {
    static os_log_type_t.error.getter();
    if (qword_101695050 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    type metadata accessor for CommandError(0);
    v81 = 1;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003ED4(&qword_101696428, type metadata accessor for CommandError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v29 = aBlock;
    Future.finish(error:)();

    return;
  }

  v59 = v10;
  *(v28 + 72) = a3;

LABEL_9:
  v58 = v9;
  v60 = v6;
  v34 = sub_10089292C();
  v36 = v35;
  static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_101385D80;
  aBlock = v34;
  v76 = v36;
  swift_unknownObjectRetain();
  sub_1000BC4D4(&qword_1016AC9A8, &unk_1013C1590);
  v38 = String.init<A>(describing:)();
  v40 = v39;
  *(v37 + 56) = &type metadata for String;
  *(v37 + 64) = sub_100008C00();
  *(v37 + 32) = v38;
  *(v37 + 40) = v40;
  os_log(_:dso:log:_:_:)();

  v57[1] = v34;
  ObjectType = swift_getObjectType();
  v42 = v61;
  (*(v36 + 72))(0, v61, ObjectType, v36);
  v43 = v62;
  static DispatchTime.now()();
  *v18 = 62;
  v44 = v63;
  v45 = v64;
  (*(v63 + 104))(v18, enum case for DispatchTimeInterval.seconds(_:), v64);
  v46 = v69;
  + infix(_:_:)();
  (*(v44 + 8))(v18, v45);
  v70 = *(v70 + 8);
  (v70)(v43, v74);
  v64 = *&a1[OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandQueue];
  v48 = v66;
  v47 = v67;
  v49 = v68;
  (*(v67 + 16))(v66, v42, v68);
  v50 = (*(v47 + 80) + 24) & ~*(v47 + 80);
  v51 = swift_allocObject();
  *(v51 + 16) = a1;
  (*(v47 + 32))(v51 + v50, v48, v49);
  v79 = sub_1008A3DB8;
  v80 = v51;
  aBlock = _NSConcreteStackBlock;
  v76 = 1107296256;
  v77 = sub_100006684;
  v78 = &unk_101638000;
  v52 = _Block_copy(&aBlock);
  v53 = a1;
  v54 = v71;
  static DispatchQoS.unspecified.getter();
  v81 = _swiftEmptyArrayStorage;
  sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v55 = v58;
  v56 = v60;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v52);
  swift_unknownObjectRelease();

  (*(v73 + 8))(v55, v56);
  (*(v72 + 8))(v54, v59);
  (v70)(v46, v74);
}

uint64_t sub_100898F94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v4 - 8);
  v5 = *(v42 + 64);
  __chkstk_darwin(v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v40 = *(v8 - 8);
  v41 = v8;
  v9 = *(v40 + 64);
  __chkstk_darwin(v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC12searchpartyd17TagCommandManager_tagCommandHandlers;
  result = swift_beginAccess();
  v19 = *(a1 + v17);
  if (*(v19 + 16))
  {
    v20 = *(a1 + v17);

    v21 = sub_1000210EC(a2);
    if (v22)
    {
      v23 = *(v19 + 56);
      v39 = v4;
      v24 = *(v23 + 8 * v21);

      v25 = *(v24 + 72);

      if (v25)
      {
        v38 = v25;
        static os_log_type_t.error.getter();
        if (qword_101695050 != -1)
        {
          swift_once();
        }

        os_log(_:dso:log:_:_:)();
        v26 = (a1 + OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandManager);
        v27 = *(a1 + OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandManager);
        *v26 = 0;
        v26[1] = 0;
        swift_unknownObjectRelease();
        v28 = *(a1 + v17);
        if (*(v28 + 16))
        {
          v29 = *(a1 + v17);

          v30 = sub_1000210EC(a2);
          if (v31)
          {
            v32 = *(*(v28 + 56) + 8 * v30);

            v33 = *(v32 + 72);
            *(v32 + 72) = 0;
          }

          else
          {
          }
        }

        sub_1000BC488();
        (*(v13 + 104))(v16, enum case for DispatchQoS.QoSClass.default(_:), v12);
        v34 = static OS_dispatch_queue.global(qos:)();
        (*(v13 + 8))(v16, v12);
        aBlock[4] = sub_1008A90A8;
        aBlock[5] = v38;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100006684;
        aBlock[3] = &unk_101638028;
        v35 = _Block_copy(aBlock);

        static DispatchQoS.unspecified.getter();
        v43 = _swiftEmptyArrayStorage;
        sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
        sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
        v36 = v39;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v35);

        (*(v42 + 8))(v7, v36);
        (*(v40 + 8))(v11, v41);
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_100899490()
{
  sub_10089292C();
  v1 = v0;
  ObjectType = swift_getObjectType();
  (*(v1 + 8))(ObjectType, v1);

  return swift_unknownObjectRelease();
}

uint64_t sub_1008994EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v57 = a4;
  v58 = a5;
  v56 = a3;
  v59 = a2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS.QoSClass();
  v55 = *(v16 - 8);
  v17 = v55[8];
  __chkstk_darwin(v16);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC12searchpartyd17TagCommandManager_tagCommandHandlers;
  swift_beginAccess();
  v21 = *(a1 + v20);
  if (*(v21 + 16))
  {

    v22 = sub_1000210EC(v59);
    if (v23)
    {
      v24 = *(v21 + 56);
      v53 = v12;
      v54 = v15;
      v25 = a1;
      v26 = v10;
      v27 = v6;
      v28 = v11;
      v29 = v7;
      v30 = *(v24 + 8 * v22);

      v31 = *(v30 + 88);

      v32 = v29;
      v33 = v28;
      v34 = v27;
      v35 = v26;
      a1 = v25;
      v36 = v54;

      if (v31)
      {
        sub_1000BC488();
        v52 = v33;
        v37 = v55;
        (v55[13])(v19, enum case for DispatchQoS.QoSClass.default(_:), v16);
        v51 = static OS_dispatch_queue.global(qos:)();
        (v37[1])(v19, v16);
        v38 = swift_allocObject();
        v39 = v57;
        v38[2] = v56;
        v38[3] = v31;
        v40 = v58;
        v38[4] = v39;
        v38[5] = v40;
        aBlock[4] = sub_1008A8F3C;
        aBlock[5] = v38;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100006684;
        aBlock[3] = &unk_101638F50;
        v55 = _Block_copy(aBlock);

        swift_errorRetain();
        sub_100017D5C(v39, v40);
        static DispatchQoS.unspecified.getter();
        v60 = _swiftEmptyArrayStorage;
        sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
        v41 = v36;
        v42 = v32;
        sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v43 = v55;
        v44 = v51;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v43);

        (*(v42 + 8))(v35, v34);
        (*(v53 + 8))(v41, v52);

        v45 = v59;
        return sub_100899AA0(a1, v45);
      }
    }

    else
    {
    }
  }

  static os_log_type_t.error.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_101385D80;
  type metadata accessor for UUID();
  sub_100003ED4(&qword_101696930, &type metadata accessor for UUID);
  v45 = v59;
  v47 = dispatch thunk of CustomStringConvertible.description.getter();
  v49 = v48;
  *(v46 + 56) = &type metadata for String;
  *(v46 + 64) = sub_100008C00();
  *(v46 + 32) = v47;
  *(v46 + 40) = v49;
  os_log(_:dso:log:_:_:)();

  return sub_100899AA0(a1, v45);
}

uint64_t sub_100899AA0(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12searchpartyd17TagCommandManager_tagCommandHandlers;
  result = swift_beginAccess();
  v6 = *(a1 + v4);
  if (*(v6 + 16))
  {

    v7 = sub_1000210EC(a2);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 8 * v7);

      v10 = *(v9 + 88);
      *(v9 + 88) = 0;
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_100899B4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = a3;
  v54 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS.QoSClass();
  v52 = *(v14 - 8);
  v15 = v52[8];
  __chkstk_darwin(v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC12searchpartyd17TagCommandManager_tagCommandHandlers;
  swift_beginAccess();
  v19 = *(a1 + v18);
  if (*(v19 + 16))
  {

    v20 = sub_1000210EC(v54);
    if (v21)
    {
      v22 = *(v19 + 56);
      v50 = v10;
      v51 = v13;
      v23 = a1;
      v24 = v8;
      v25 = v4;
      v26 = v9;
      v27 = v5;
      v28 = *(v22 + 8 * v20);

      v29 = *(v28 + 80);

      v30 = v27;
      v31 = v26;
      v32 = v25;
      v33 = v24;
      a1 = v23;
      v34 = v51;

      if (v29)
      {
        sub_1000BC488();
        v49 = v31;
        v35 = v52;
        (v52[13])(v17, enum case for DispatchQoS.QoSClass.default(_:), v14);
        v48 = static OS_dispatch_queue.global(qos:)();
        (v35[1])(v17, v14);
        v36 = swift_allocObject();
        *(v36 + 16) = v53;
        *(v36 + 24) = v29;
        aBlock[4] = sub_1008A8D2C;
        aBlock[5] = v36;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100006684;
        aBlock[3] = &unk_101638EB0;
        v52 = _Block_copy(aBlock);

        swift_errorRetain();
        static DispatchQoS.unspecified.getter();
        v55 = _swiftEmptyArrayStorage;
        sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
        v37 = v34;
        v38 = v30;
        sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v39 = v52;
        v40 = v48;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v39);

        (*(v38 + 8))(v33, v32);
        (*(v50 + 8))(v37, v49);

        v41 = v54;
        return sub_10089A0E4(a1, v41);
      }
    }

    else
    {
    }
  }

  static os_log_type_t.error.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_101385D80;
  type metadata accessor for UUID();
  sub_100003ED4(&qword_101696930, &type metadata accessor for UUID);
  v41 = v54;
  v43 = dispatch thunk of CustomStringConvertible.description.getter();
  v45 = v44;
  *(v42 + 56) = &type metadata for String;
  *(v42 + 64) = sub_100008C00();
  *(v42 + 32) = v43;
  *(v42 + 40) = v45;
  os_log(_:dso:log:_:_:)();

  return sub_10089A0E4(a1, v41);
}

uint64_t sub_10089A0E4(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12searchpartyd17TagCommandManager_tagCommandHandlers;
  result = swift_beginAccess();
  v6 = *(a1 + v4);
  if (*(v6 + 16))
  {

    v7 = sub_1000210EC(a2);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 8 * v7);

      v10 = *(v9 + 80);
      *(v9 + 80) = 0;
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_10089A190(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    static os_log_type_t.error.getter();
    if (qword_101695050 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_101385D80;
    swift_getErrorValue();
    v2 = Error.localizedDescription.getter();
    v4 = v3;
    *(v1 + 56) = &type metadata for String;
    *(v1 + 64) = sub_100008C00();
    *(v1 + 32) = v2;
    *(v1 + 40) = v4;
    os_log(_:dso:log:_:_:)();

    Future.finish(error:)();
  }

  else
  {
    static os_log_type_t.default.getter();
    if (qword_101695050 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    return Future.finish(result:)();
  }
}

uint64_t sub_10089A350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v194 = a3;
  v179 = type metadata accessor for DispatchTimeInterval();
  v178 = *(v179 - 1);
  v5 = *(v178 + 64);
  __chkstk_darwin(v179);
  v177 = (&v155 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for DispatchTime();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v176 = &v155 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v155 - v12;
  v14 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v168 = &v155 - v16;
  v185 = type metadata accessor for UUID();
  v17 = *(v185 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v185);
  v175 = &v155 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = v20;
  __chkstk_darwin(v19);
  v170 = &v155 - v21;
  v22 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v173 = &v155 - v24;
  v172 = type metadata accessor for OwnedBeaconRecord();
  v171 = *(v172 - 1);
  v25 = *(v171 + 8);
  __chkstk_darwin(v172);
  v169 = &v155 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = type metadata accessor for BeaconObservation();
  v27 = *(v180 - 8);
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v180);
  v167 = &v155 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v182 = &v155 - v31;
  v184 = type metadata accessor for Date();
  v181 = *(v184 - 8);
  v32 = *(v181 + 64);
  __chkstk_darwin(v184);
  v183 = &v155 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = type metadata accessor for DispatchWorkItemFlags();
  v196 = *(v193 - 8);
  v34 = *(v196 + 64);
  __chkstk_darwin(v193);
  v191 = &v155 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = type metadata accessor for DispatchQoS();
  v195 = *(v192 - 8);
  v36 = *(v195 + 64);
  __chkstk_darwin(v192);
  v190 = &v155 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = type metadata accessor for DispatchQoS.QoSClass();
  v186 = *(v187 - 1);
  v38 = *(v186 + 64);
  __chkstk_darwin(v187);
  v40 = &v155 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = OBJC_IVAR____TtC12searchpartyd17TagCommandManager_tagCommandHandlers;
  swift_beginAccess();
  v42 = *(a1 + v41);
  v43 = *(v42 + 16);
  v188 = a1;
  if (v43)
  {

    v44 = sub_1000210EC(a2);
    if (v45)
    {
      v46 = v41;
      v47 = a2;
      v48 = v13;
      v49 = v40;
      v50 = v7;
      v51 = v27;
      v52 = v8;
      v53 = v17;
      v54 = *(*(v42 + 56) + 8 * v44);

      v189 = *(v54 + 32);

      v17 = v53;
      v8 = v52;
      v27 = v51;
      v7 = v50;
      v40 = v49;
      v13 = v48;
      a2 = v47;
      v41 = v46;
      a1 = v188;

      goto LABEL_6;
    }
  }

  v189 = 0;
LABEL_6:
  v55 = *(a1 + v41);
  if (!*(v55 + 16))
  {
    goto LABEL_9;
  }

  v56 = *(a1 + v41);

  v57 = sub_1000210EC(a2);
  if (v58)
  {
    v59 = v41;
    v60 = a2;
    v61 = v13;
    v62 = v40;
    v63 = v7;
    v64 = v27;
    v65 = v8;
    v66 = v17;
    v67 = *(*(v55 + 56) + 8 * v57);

    v68 = *(v67 + 32);
    *(v67 + 32) = 0;
    v17 = v66;
    v8 = v65;
    v27 = v64;
    v7 = v63;
    v40 = v62;
    v13 = v61;
    a2 = v60;
    v41 = v59;
    a1 = v188;

LABEL_9:
    if (v194)
    {
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  if (v194)
  {
LABEL_10:
    v69 = *(a1 + v41);
    v70 = *(v69 + 16);
    swift_errorRetain();
    if (v70)
    {

      v71 = sub_1000210EC(a2);
      if (v72)
      {
        v73 = *(*(v69 + 56) + 8 * v71);

        v74 = *(v73 + 40);

LABEL_22:
        v90 = *(a1 + v41);
        if (*(v90 + 16))
        {
          v91 = *(a1 + v41);

          v92 = sub_1000210EC(a2);
          if (v93)
          {
            v94 = *(*(v90 + 56) + 8 * v92);

            v95 = *(v94 + 40);
            *(v94 + 40) = 0;
          }

          else
          {
          }
        }

        static os_log_type_t.error.getter();
        if (qword_101695050 != -1)
        {
          swift_once();
        }

        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v96 = swift_allocObject();
        *(v96 + 16) = xmmword_101385D80;
        v97 = v194;
        swift_getErrorValue();
        v98 = Error.localizedDescription.getter();
        v100 = v99;
        *(v96 + 56) = &type metadata for String;
        *(v96 + 64) = sub_100008C00();
        *(v96 + 32) = v98;
        *(v96 + 40) = v100;
        os_log(_:dso:log:_:_:)();

        sub_1000BC488();
        v101 = v186;
        v102 = v187;
        (*(v186 + 104))(v40, enum case for DispatchQoS.QoSClass.default(_:), v187);
        v188 = static OS_dispatch_queue.global(qos:)();
        (*(v101 + 8))(v40, v102);
        v103 = swift_allocObject();
        v103[2] = v189;
        v103[3] = v97;
        v103[4] = v74;
        v202 = sub_1008A8C80;
        v203 = v103;
        aBlock = _NSConcreteStackBlock;
        v199 = 1107296256;
        v200 = sub_100006684;
        v201 = &unk_101638DE8;
        v104 = _Block_copy(&aBlock);
        swift_errorRetain();

        v105 = v190;
        static DispatchQoS.unspecified.getter();
        v197 = _swiftEmptyArrayStorage;
        sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
        sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
        v106 = v191;
        v107 = v193;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v108 = v188;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v104);

        (*(v196 + 8))(v106, v107);
        (*(v195 + 8))(v105, v192);
      }
    }

    v74 = 0;
    goto LABEL_22;
  }

LABEL_14:
  v161 = v13;
  static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  v162 = v8;
  v194 = v7;
  os_log(_:dso:log:_:_:)();
  v75 = v183;
  static Date.trustedNow.getter(v183);
  v166 = v17;
  v76 = *(v17 + 16);
  v77 = v182;
  v164 = v17 + 16;
  v163 = v76;
  v76(v182, a2, v185);
  v78 = v180;
  v79 = v77 + *(v180 + 20);
  v159 = *(v181 + 16);
  v159(v79, v75, v184);
  *(v77 + *(v78 + 24)) = 25;
  v80 = a2;
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v81 = qword_10177B2E8;
  v82 = sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
  v83 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v156 = *(v27 + 72);
  v157 = v82;
  v84 = swift_allocObject();
  v155 = xmmword_101385D80;
  *(v84 + 16) = xmmword_101385D80;
  sub_100034ED4(v77, v84 + v83, type metadata accessor for BeaconObservation);
  v85 = type metadata accessor for Transaction();
  __chkstk_darwin(v85);
  v160 = v81;
  *(&v155 - 4) = v81;
  *(&v155 - 3) = v84;
  *(&v155 - 2) = 0;
  *(&v155 - 1) = 0;
  v158 = v85;
  static Transaction.named<A>(_:with:)();

  v86 = v188;
  v87 = *(v188 + OBJC_IVAR____TtC12searchpartyd17TagCommandManager_beaconStore);

  v88 = v173;
  v165 = v80;
  sub_100AA33AC(v80, v173);

  v89 = v172;
  if ((*(v171 + 6))(v88, 1, v172) == 1)
  {
    sub_10000B3A8(v88, &unk_1016A9A20, &qword_10138B280);
  }

  else
  {
    v171 = 0;
    v109 = v169;
    sub_1008A8B70(v88, v169, type metadata accessor for OwnedBeaconRecord);
    v110 = v168;
    sub_1000D2A70(v109 + *(v89 + 7), v168, &qword_1016980D0, &unk_10138F3B0);
    v111 = v166;
    v112 = v185;
    if ((*(v166 + 48))(v110, 1, v185) == 1)
    {
      sub_1008A8BD8(v109, type metadata accessor for OwnedBeaconRecord);
      sub_10000B3A8(v110, &qword_1016980D0, &unk_10138F3B0);
    }

    else
    {
      v113 = v170;
      (*(v111 + 32))(v170, v110, v112);
      v114 = v167;
      v163(v167, v113, v112);
      v115 = v180;
      v159(v114 + *(v180 + 20), v183, v184);
      *(v114 + *(v115 + 24)) = 25;
      v116 = swift_allocObject();
      *(v116 + 16) = v155;
      v117 = sub_100034ED4(v114, v116 + v83, type metadata accessor for BeaconObservation);
      __chkstk_darwin(v117);
      *(&v155 - 4) = v160;
      *(&v155 - 3) = v116;
      *(&v155 - 2) = 0;
      *(&v155 - 1) = 0;
      static Transaction.named<A>(_:with:)();

      sub_1008A8BD8(v114, type metadata accessor for BeaconObservation);
      (*(v166 + 8))(v170, v112);
      sub_1008A8BD8(v109, type metadata accessor for OwnedBeaconRecord);
    }

    v86 = v188;
  }

  sub_1000BC488();
  v118 = v186;
  v119 = v187;
  (*(v186 + 104))(v40, enum case for DispatchQoS.QoSClass.default(_:), v187);
  v120 = static OS_dispatch_queue.global(qos:)();
  (*(v118 + 8))(v40, v119);
  v121 = swift_allocObject();
  *(v121 + 16) = v189;
  v202 = sub_1008A90A4;
  v203 = v121;
  aBlock = _NSConcreteStackBlock;
  v199 = 1107296256;
  v187 = &v200;
  v200 = sub_100006684;
  v201 = &unk_101638D48;
  v122 = _Block_copy(&aBlock);

  v123 = v190;
  static DispatchQoS.unspecified.getter();
  v197 = _swiftEmptyArrayStorage;
  v124 = sub_100003ED4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  v125 = sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  v126 = sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v127 = v191;
  v180 = v125;
  v173 = v126;
  v128 = v193;
  v186 = v124;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v122);

  v129 = *(v196 + 8);
  v196 += 8;
  v172 = v129;
  (v129)(v127, v128);
  v130 = *(v195 + 8);
  v195 += 8;
  v171 = v130;
  v130(v123, v192);

  v131 = *&v86[v41];
  if (*(v131 + 16))
  {
    v132 = *&v86[v41];

    v133 = sub_1000210EC(v165);
    v134 = v161;
    if (v135)
    {
      v136 = *(*(v131 + 56) + 8 * v133);

      v137 = *(v136 + 40);
    }

    else
    {

      v137 = 0;
    }
  }

  else
  {
    v137 = 0;
    v134 = v161;
  }

  v138 = v176;
  static DispatchTime.now()();
  v139 = v177;
  *v177 = 40;
  v140 = v178;
  v141 = v179;
  (*(v178 + 104))(v139, enum case for DispatchTimeInterval.seconds(_:), v179);
  + infix(_:_:)();
  (*(v140 + 8))(v139, v141);
  v179 = *(v162 + 8);
  (v179)(v138, v194);
  v178 = *&v86[OBJC_IVAR____TtC12searchpartyd17TagCommandManager_commandQueue];
  v142 = v175;
  v143 = v86;
  v144 = v185;
  v163(v175, v165, v185);
  v145 = v166;
  v146 = (*(v166 + 80) + 24) & ~*(v166 + 80);
  v147 = (v174 + v146 + 7) & 0xFFFFFFFFFFFFFFF8;
  v148 = swift_allocObject();
  *(v148 + 16) = v143;
  (*(v145 + 32))(v148 + v146, v142, v144);
  *(v148 + v147) = v137;
  v202 = sub_1008A8B58;
  v203 = v148;
  aBlock = _NSConcreteStackBlock;
  v199 = 1107296256;
  v200 = sub_100006684;
  v201 = &unk_101638D98;
  v149 = _Block_copy(&aBlock);

  v150 = v143;
  v151 = v190;
  static DispatchQoS.unspecified.getter();
  v197 = _swiftEmptyArrayStorage;
  v152 = v191;
  v153 = v193;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v149);

  (v172)(v152, v153);
  v171(v151, v192);
  (v179)(v134, v194);
  sub_1008A8BD8(v182, type metadata accessor for BeaconObservation);
  (*(v181 + 8))(v183, v184);
}