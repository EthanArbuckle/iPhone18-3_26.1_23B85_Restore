void sub_1001ED0C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedBeaconRecord(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v38 - v9;
  v11 = sub_1000BC4D4(&qword_101699BC8, &qword_1013926D8);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v38 - v13);
  sub_1000D2A70(a1, &v38 - v13, &qword_101699BC8, &qword_1013926D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v14;
    if (qword_101694780 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000076D4(v16, qword_10177AE40);
    sub_100203698(a2, v8, type metadata accessor for SharedBeaconRecord);
    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v19 = 141558531;
      *(v19 + 4) = 1752392040;
      *(v19 + 12) = 2081;
      v20 = *(v4 + 20);
      type metadata accessor for UUID();
      sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      sub_100203700(v8, type metadata accessor for SharedBeaconRecord);
      v24 = sub_1000136BC(v21, v23, &v39);

      *(v19 + 14) = v24;
      *(v19 + 22) = 2082;
      v38 = v15;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v25 = String.init<A>(describing:)();
      v27 = sub_1000136BC(v25, v26, &v39);

      *(v19 + 24) = v27;
      _os_log_impl(&_mh_execute_header, v17, v18, "Failed to save SharedBeaconRecord for imported beacon:\n%{private,mask.hash}s: %{public}s.", v19, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100203700(v8, type metadata accessor for SharedBeaconRecord);
    }
  }

  else
  {
    if (qword_101694780 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_1000076D4(v28, qword_10177AE40);
    sub_100203698(a2, v10, type metadata accessor for SharedBeaconRecord);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v39 = v32;
      *v31 = 141558275;
      *(v31 + 4) = 1752392040;
      *(v31 + 12) = 2081;
      v33 = *(v4 + 20);
      type metadata accessor for UUID();
      sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID);
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v36 = v35;
      sub_100203700(v10, type metadata accessor for SharedBeaconRecord);
      v37 = sub_1000136BC(v34, v36, &v39);

      *(v31 + 14) = v37;
      _os_log_impl(&_mh_execute_header, v29, v30, "Saved imported beacon records for the imported beacon %{private,mask.hash}s", v31, 0x16u);
      sub_100007BAC(v32);
    }

    else
    {

      sub_100203700(v10, type metadata accessor for SharedBeaconRecord);
    }

    sub_10000B3A8(v14, &qword_101699BC8, &qword_1013926D8);
  }
}

uint64_t sub_1001ED65C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[21] = a4;
  v5[22] = v4;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  return _swift_task_switch(sub_1001ED684, v4, 0);
}

uint64_t sub_1001ED684()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = *(v1 + 160);
  v4 = *(v1 + 168);
  v5 = swift_task_alloc();
  v0[23] = v5;
  *v5 = v0;
  v5[1] = sub_1001ED740;
  v6 = v0[19];
  v7 = v0[20];
  v8 = v0[18];

  return sub_1011AC974((v0 + 2), v8, v6, v4, v7, v2, 0, 0);
}

uint64_t sub_1001ED740()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v2 + 176);

    return _swift_task_switch(sub_1001ED884, v7, 0);
  }
}

uint64_t sub_1001ED884()
{
  v27 = v0;
  *(v0 + 64) = *(v0 + 32);
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 56);
    if (v2)
    {
      v3 = *(v0 + 64);
      v4 = *(v0 + 48);
      *(v0 + 128) = *(v0 + 16);
      sub_10000B3A8(v0 + 128, &qword_1016A0AC0, &unk_1013926A0);
      v5 = *(v0 + 8);

      return v5(v3, v1, v4, v2);
    }

    *(v0 + 112) = *(v0 + 16);
    sub_10000B3A8(v0 + 112, &qword_1016A0AC0, &unk_1013926A0);
    sub_10000B3A8(v0 + 64, &qword_1016A0AC0, &unk_1013926A0);
    if (qword_101694780 != -1)
    {
      swift_once();
    }

    v16 = *(v0 + 152);
    v17 = type metadata accessor for Logger();
    sub_1000076D4(v17, qword_10177AE40);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v21 = *(v0 + 144);
      v20 = *(v0 + 152);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v26[0] = v23;
      *v22 = 141558275;
      *(v22 + 4) = 1752392040;
      *(v22 + 12) = 2081;
      *(v22 + 14) = sub_1000136BC(v21, v20, v26);
      _os_log_impl(&_mh_execute_header, v18, v19, "Invalid session token received from server for importing url %{private,mask.hash}s is nil", v22, 0x16u);
      sub_100007BAC(v23);
    }

    v15 = 8;
  }

  else
  {
    *(v0 + 80) = *(v0 + 16);
    sub_10000B3A8(v0 + 80, &qword_1016A0AC0, &unk_1013926A0);
    *(v0 + 96) = *(v0 + 48);
    sub_10000B3A8(v0 + 96, &qword_1016A0AC0, &unk_1013926A0);
    if (qword_101694780 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 152);
    v8 = type metadata accessor for Logger();
    sub_1000076D4(v8, qword_10177AE40);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v12 = *(v0 + 144);
      v11 = *(v0 + 152);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v26[0] = v14;
      *v13 = 141558275;
      *(v13 + 4) = 1752392040;
      *(v13 + 12) = 2081;
      *(v13 + 14) = sub_1000136BC(v12, v11, v26);
      _os_log_impl(&_mh_execute_header, v9, v10, "Invalid fetch token received from server for importing url %{private,mask.hash}s.", v13, 0x16u);
      sub_100007BAC(v14);
    }

    v15 = 7;
  }

  sub_1002021D0();
  swift_allocError();
  *v24 = v15;
  swift_willThrow();
  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_1001EDC84()
{
  v1[3] = v0;
  v2 = type metadata accessor for SharedBeaconRecord(0);
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_1001EDD50, v0, 0);
}

uint64_t sub_1001EDD50()
{
  v1 = *(*(v0 + 24) + 112);
  *(v0 + 64) = v1;
  return _swift_task_switch(sub_1001EDD74, v1, 0);
}

uint64_t sub_1001EDD74()
{
  v1 = *(v0 + 64);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  v4 = sub_1000BC4D4(&qword_101697720, &unk_101392640);
  *v3 = v0;
  v3[1] = sub_1001EDE60;
  v5 = *(v0 + 64);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_100129E44, v5, v4);
}

uint64_t sub_1001EDE60()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return _swift_task_switch(sub_1001EDF78, v2, 0);
}

uint64_t sub_1001EDF78()
{
  v1 = v0[3];
  v0[10] = v0[2];
  return _swift_task_switch(sub_1001EDF98, v1, 0);
}

uint64_t sub_1001EDF98()
{
  v1 = v0[10];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v0[4];
    v5 = v0[5];
    v25 = v4;
    v26 = v0[10];
    while (v3 < *(v1 + 16))
    {
      v6 = v0[7];
      v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v8 = *(v5 + 72);
      sub_100203698(v0[10] + v7 + v8 * v3, v6, type metadata accessor for SharedBeaconRecord);
      v9 = v0[7];
      if (*(v6 + *(v4 + 64)) == 5)
      {
        sub_100203304(v9, v0[6], type metadata accessor for SharedBeaconRecord);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10112421C(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v11 = _swiftEmptyArrayStorage[2];
        v10 = _swiftEmptyArrayStorage[3];
        if (v11 >= v10 >> 1)
        {
          sub_10112421C(v10 > 1, v11 + 1, 1);
        }

        v12 = v0[6];
        _swiftEmptyArrayStorage[2] = v11 + 1;
        sub_100203304(v12, _swiftEmptyArrayStorage + v7 + v11 * v8, type metadata accessor for SharedBeaconRecord);
        v4 = v25;
        v1 = v26;
      }

      else
      {
        sub_100203700(v9, type metadata accessor for SharedBeaconRecord);
      }

      if (v2 == ++v3)
      {
        v13 = v0[10];
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  v0[11] = _swiftEmptyArrayStorage;

  if (_swiftEmptyArrayStorage[2])
  {
    if (qword_101694780 == -1)
    {
LABEL_15:
      v14 = type metadata accessor for Logger();
      sub_1000076D4(v14, qword_10177AE40);

      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 134217984;
        *(v17 + 4) = _swiftEmptyArrayStorage[2];

        _os_log_impl(&_mh_execute_header, v15, v16, "Found existing imported beacons. Remove them first before importing a new one %ld", v17, 0xCu);
      }

      else
      {
      }

      v23 = swift_task_alloc();
      v0[12] = v23;
      *v23 = v0;
      v23[1] = sub_1001EE2FC;
      v24 = v0[3];

      return sub_1001FAE9C(_swiftEmptyArrayStorage);
    }

LABEL_25:
    swift_once();
    goto LABEL_15;
  }

  v18 = v0[11];
  v19 = v0[6];
  v20 = v0[7];

  v21 = v0[1];

  return v21();
}

uint64_t sub_1001EE2FC()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v8 = *v0;

  v3 = v1[11];
  v4 = v1[7];
  v5 = v1[6];

  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_1001EE44C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v121 = a3;
  v5 = type metadata accessor for UUID();
  v124 = *(v5 - 8);
  v125 = v5;
  v6 = *(v124 + 64);
  __chkstk_darwin(v5);
  v122 = &v119 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v123 = &v119 - v10;
  v133 = type metadata accessor for URLQueryItem();
  v128 = *(v133 - 1);
  v11 = *(v128 + 64);
  v12 = __chkstk_darwin(v133);
  v14 = &v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v126 = &v119 - v15;
  v16 = sub_1000BC4D4(&qword_101699BA8, &unk_1013926B0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v119 - v18;
  v20 = type metadata accessor for URLComponents();
  v132 = *(v20 - 8);
  v21 = *(v132 + 64);
  v22 = __chkstk_darwin(v20);
  v127 = &v119 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v131 = &v119 - v24;
  v25 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v28 = &v119 - v27;
  v29 = type metadata accessor for URL();
  v30 = *(v29 - 8);
  v31 = *(v30 + 8);
  v32 = __chkstk_darwin(v29);
  v129 = &v119 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v35 = &v119 - v34;
  v130 = a1;
  v36 = a2;
  URL.init(string:)();
  if ((*(v30 + 6))(v28, 1, v29) == 1)
  {
    sub_10000B3A8(v28, &unk_101696AC0, &qword_101390A60);
    if (qword_101694780 != -1)
    {
LABEL_45:
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_1000076D4(v37, qword_10177AE40);
    v38 = v36;

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v134 = v42;
      *v41 = 136315138;
      *(v41 + 4) = sub_1000136BC(v130, v38, &v134);
      _os_log_impl(&_mh_execute_header, v39, v40, "Invalid input URL. URL string %s", v41, 0xCu);
      sub_100007BAC(v42);
    }

    sub_1002021D0();
    swift_allocError();
    *v43 = 9;
    return swift_willThrow();
  }

  else
  {
    (*(v30 + 4))(v35, v28, v29);
    URLComponents.init(url:resolvingAgainstBaseURL:)();
    v45 = v132;
    v46 = v30;
    if ((*(v132 + 48))(v19, 1, v20) == 1)
    {
      sub_10000B3A8(v19, &qword_101699BA8, &unk_1013926B0);
      if (qword_101694780 != -1)
      {
        swift_once();
      }

      v47 = type metadata accessor for Logger();
      sub_1000076D4(v47, qword_10177AE40);
      v48 = v129;
      (*(v30 + 2))(v129, v35, v29);
      v49 = Logger.logObject.getter();
      v50 = v46;
      v51 = static os_log_type_t.error.getter();
      v52 = v29;
      if (os_log_type_enabled(v49, v51))
      {
        v53 = swift_slowAlloc();
        v130 = v35;
        v54 = v53;
        v133 = swift_slowAlloc();
        v134 = v133;
        *v54 = 136315138;
        LODWORD(v132) = v51;
        v55 = URL.description.getter();
        v57 = v56;
        v58 = *(v50 + 1);
        v58(v48, v29);
        v59 = sub_1000136BC(v55, v57, &v134);

        *(v54 + 4) = v59;
        v52 = v29;
        _os_log_impl(&_mh_execute_header, v49, v132, "Cannot form URLComponents from URL %s", v54, 0xCu);
        sub_100007BAC(v133);

        v35 = v130;
      }

      else
      {

        v58 = *(v50 + 1);
        v58(v48, v29);
      }

      sub_1002021D0();
      swift_allocError();
      *v67 = 9;
      swift_willThrow();
      return (v58)(v35, v52);
    }

    else
    {
      v130 = v35;
      (*(v45 + 32))(v131, v19, v20);
      v60 = URLComponents.queryItems.getter();
      v120 = v29;
      if (v60)
      {
        v61 = v60;
        v127 = v20;
        v129 = v30;
        v62 = *(v60 + 16);
        v63 = v128;
        if (v62)
        {
          v36 = 0;
          v64 = (v128 + 8);
          while (1)
          {
            if (v36 >= *(v61 + 16))
            {
              __break(1u);
              goto LABEL_45;
            }

            (*(v63 + 16))(v14, v61 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v36, v133);
            if (URLQueryItem.name.getter() == 105 && v65 == 0xE100000000000000)
            {
              break;
            }

            v66 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v66)
            {
              goto LABEL_29;
            }

            ++v36;
            (*v64)(v14, v133);
            if (v62 == v36)
            {
              goto LABEL_32;
            }
          }

LABEL_29:
          v83 = v126;
          v84 = v133;
          (*(v63 + 32))(v126, v14, v133);
          URLQueryItem.value.getter();
          v86 = v85;
          (*(v63 + 8))(v83, v84);
          if (!v86)
          {
            goto LABEL_32;
          }

          v87 = v123;
          UUID.init(uuidString:)();

          v89 = v124;
          v88 = v125;
          if ((*(v124 + 48))(v87, 1, v125) == 1)
          {
            sub_10000B3A8(v87, &qword_1016980D0, &unk_10138F3B0);
            goto LABEL_32;
          }

          v105 = v121;
          (*(v89 + 32))(v121, v87, v88);
          if (qword_101694780 != -1)
          {
            swift_once();
          }

          v106 = type metadata accessor for Logger();
          sub_1000076D4(v106, qword_10177AE40);
          v107 = v122;
          (*(v89 + 16))(v122, v105, v88);
          v108 = Logger.logObject.getter();
          v109 = static os_log_type_t.debug.getter();
          v110 = os_log_type_enabled(v108, v109);
          v111 = v120;
          if (v110)
          {
            v112 = swift_slowAlloc();
            v113 = swift_slowAlloc();
            v134 = v113;
            *v112 = 141558275;
            *(v112 + 4) = 1752392040;
            *(v112 + 12) = 2081;
            sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID);
            v114 = dispatch thunk of CustomStringConvertible.description.getter();
            v115 = v107;
            v117 = v116;
            (*(v89 + 8))(v115, v88);
            v118 = sub_1000136BC(v114, v117, &v134);

            *(v112 + 14) = v118;
            _os_log_impl(&_mh_execute_header, v108, v109, "Share identifier extracted from Url: %{private,mask.hash}s", v112, 0x16u);
            sub_100007BAC(v113);
          }

          else
          {

            (*(v89 + 8))(v107, v88);
          }

          (*(v132 + 8))(v131, v127);
          return (*(v129 + 1))(v130, v111);
        }

        else
        {
LABEL_32:
          if (qword_101694780 != -1)
          {
            swift_once();
          }

          v90 = type metadata accessor for Logger();
          sub_1000076D4(v90, qword_10177AE40);

          v91 = Logger.logObject.getter();
          v92 = static os_log_type_t.error.getter();

          v93 = os_log_type_enabled(v91, v92);
          v94 = v120;
          if (v93)
          {
            v95 = swift_slowAlloc();
            v96 = swift_slowAlloc();
            v134 = v96;
            *v95 = 136315138;
            v97 = Array.description.getter();
            v99 = v98;

            v100 = sub_1000136BC(v97, v99, &v134);

            *(v95 + 4) = v100;
            _os_log_impl(&_mh_execute_header, v91, v92, "Cannot find share identifier in query items %s", v95, 0xCu);
            sub_100007BAC(v96);
          }

          else
          {
          }

          v101 = v129;
          v102 = v127;
          v103 = v132;
          sub_1002021D0();
          swift_allocError();
          *v104 = 9;
          swift_willThrow();
          (*(v103 + 8))(v131, v102);
          return (*(v101 + 1))(v130, v94);
        }
      }

      else
      {
        v68 = v45;
        if (qword_101694780 != -1)
        {
          swift_once();
        }

        v69 = type metadata accessor for Logger();
        sub_1000076D4(v69, qword_10177AE40);
        v70 = v127;
        (*(v45 + 16))(v127, v131, v20);
        v71 = Logger.logObject.getter();
        v72 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          v129 = v46;
          v74 = v73;
          v75 = v68;
          v133 = swift_slowAlloc();
          v134 = v133;
          *v74 = 136315138;
          v76 = URLComponents.description.getter();
          v77 = v70;
          v79 = v78;
          v80 = *(v75 + 8);
          v80(v77, v20);
          v81 = sub_1000136BC(v76, v79, &v134);

          *(v74 + 4) = v81;
          _os_log_impl(&_mh_execute_header, v71, v72, "Cannot get query items from URL components %s", v74, 0xCu);
          sub_100007BAC(v133);

          v46 = v129;
        }

        else
        {

          v80 = *(v45 + 8);
          v80(v70, v20);
        }

        sub_1002021D0();
        swift_allocError();
        *v82 = 9;
        swift_willThrow();
        v80(v131, v20);
        return (*(v46 + 1))(v130, v120);
      }
    }
  }
}

uint64_t sub_1001EF36C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1001EF38C, v1, 0);
}

uint64_t sub_1001EF38C()
{
  v28 = v0;
  v1 = [*(v0 + 16) inputUrl];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v5 = sub_100202CCC(v2);
  *(v0 + 32) = v6;
  if (v6)
  {
    v7 = v5;
    v8 = v6;

    if (qword_101694780 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000076D4(v9, qword_10177AE40);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v27[0] = v13;
      *v12 = 141558275;
      *(v12 + 4) = 1752392040;
      *(v12 + 12) = 2081;
      *(v12 + 14) = sub_1000136BC(v7, v8, v27);
      _os_log_impl(&_mh_execute_header, v10, v11, "Start previewing url for import %{private,mask.hash}s", v12, 0x16u);
      sub_100007BAC(v13);
    }

    v14 = *(v0 + 24);
    v15 = *(v14 + 160);
    v16 = *(v14 + 168);
    v17 = swift_task_alloc();
    *(v0 + 40) = v17;
    *v17 = v0;
    v17[1] = sub_1001EF74C;

    return sub_1011AD168(v7, v8, v16);
  }

  else
  {
    if (qword_101694780 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000076D4(v19, qword_10177AE40);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v27[0] = v23;
      *v22 = 136315138;
      v24 = sub_1000136BC(v2, v4, v27);

      *(v22 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v20, v21, "cannot remove fragments from url %s", v22, 0xCu);
      sub_100007BAC(v23);
    }

    else
    {
    }

    sub_1002021D0();
    swift_allocError();
    *v25 = 9;
    swift_willThrow();
    v26 = *(v0 + 8);

    return v26(0);
  }
}

uint64_t sub_1001EF74C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *(*v2 + 32);
  v7 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v8 = *(v4 + 24);

    return _swift_task_switch(sub_1001EF8C4, v8, 0);
  }

  else
  {
    v9 = *(v7 + 8);

    return v9(a1 & 1);
  }
}

uint64_t sub_1001EF8C4()
{
  v1 = *(v0 + 48);
  sub_1002021D0();
  swift_allocError();
  *v2 = 11;
  swift_willThrow();

  v3 = *(v0 + 8);

  return v3(0);
}

uint64_t sub_1001EF968(uint64_t a1)
{
  v2[47] = a1;
  v2[48] = v1;
  v3 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  v2[49] = swift_task_alloc();
  v4 = *(type metadata accessor for SharedBeaconRecord(0) - 8);
  v2[50] = v4;
  v2[51] = *(v4 + 64);
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v5 = type metadata accessor for Connection.TransactionMode();
  v2[54] = v5;
  v6 = *(v5 - 8);
  v2[55] = v6;
  v7 = *(v6 + 64) + 15;
  v2[56] = swift_task_alloc();
  v8 = type metadata accessor for Table();
  v2[57] = v8;
  v9 = *(v8 - 8);
  v2[58] = v9;
  v10 = *(v9 + 64) + 15;
  v2[59] = swift_task_alloc();
  v11 = type metadata accessor for SessionTokenRecord();
  v2[60] = v11;
  v12 = *(v11 - 8);
  v2[61] = v12;
  v2[62] = *(v12 + 64);
  v2[63] = swift_task_alloc();
  v2[64] = swift_task_alloc();
  v2[65] = swift_task_alloc();
  v13 = sub_1000BC4D4(&qword_101699B90, &unk_101392670);
  v2[66] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v2[67] = swift_task_alloc();
  v15 = type metadata accessor for UUID();
  v2[68] = v15;
  v16 = *(v15 - 8);
  v2[69] = v16;
  v2[70] = *(v16 + 64);
  v2[71] = swift_task_alloc();
  v2[72] = swift_task_alloc();
  v2[73] = swift_task_alloc();
  v2[74] = swift_task_alloc();
  v2[75] = swift_task_alloc();
  v2[76] = swift_task_alloc();
  v2[77] = swift_task_alloc();
  v2[78] = swift_task_alloc();
  v2[79] = swift_task_alloc();
  v2[80] = swift_task_alloc();
  v2[81] = swift_task_alloc();
  v2[82] = swift_task_alloc();
  v2[83] = swift_task_alloc();

  return _swift_task_switch(sub_1001EFCD4, v1, 0);
}

uint64_t sub_1001EFCD4()
{
  v59 = v0;
  v1 = v0[47];
  v2 = [v1 inputUrl];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = [v1 callbackValue];
  if (v6)
  {
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v0[85] = v10;
  v0[84] = v8;
  if (qword_101694780 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v0[86] = sub_1000076D4(v11, qword_10177AE40);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v57 = v3;
    v14 = swift_slowAlloc();
    v58[0] = swift_slowAlloc();
    *v14 = 136315394;
    *(v14 + 4) = sub_1000136BC(v57, v5, v58);
    *(v14 + 12) = 2080;
    v0[38] = v8;
    v0[39] = v10;
    sub_1000BC4D4(&qword_1016A0AC0, &unk_1013926A0);
    v15 = Optional.debugDescription.getter();
    v17 = sub_1000136BC(v15, v16, v58);

    *(v14 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v12, v13, "Start importing share for url: %s with callback value %s", v14, 0x16u);
    swift_arrayDestroy();

    v3 = v57;
  }

  sub_1001EE44C(v3, v5, v0[83]);
  sub_1002022BC(v3, v5);
  v0[87] = v18;
  v0[88] = v19;
  v32 = sub_100202CCC(v3);
  v0[89] = v32;
  v0[90] = v33;
  if (v33)
  {
    v34 = v0[48];

    v35 = *(v34 + 112);
    v0[91] = v35;
    if (qword_101694A70 != -1)
    {
      swift_once();
    }

    v0[92] = sub_1000076D4(v0[68], qword_10177B620);

    return _swift_task_switch(sub_1001F02C8, v35, 0);
  }

  else
  {

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v58[0] = v39;
      *v38 = 136315138;
      v40 = sub_1000136BC(v3, v5, v58);

      *(v38 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v36, v37, "cannot remove fragments from url %s", v38, 0xCu);
      sub_100007BAC(v39);
    }

    else
    {
    }

    v41 = v0[83];
    v42 = v0[69];
    v43 = v0[68];
    sub_1002021D0();
    swift_allocError();
    *v44 = 9;
    swift_willThrow();
    (*(v42 + 8))(v41, v43);
    v20 = v0[83];
    v21 = v0[82];
    v22 = v0[81];
    v23 = v0[80];
    v24 = v0[79];
    v25 = v0[78];
    v26 = v0[77];
    v27 = v0[76];
    v28 = v0[75];
    v29 = v0[74];
    v45 = v0[73];
    v46 = v0[72];
    v47 = v0[71];
    v48 = v0[67];
    v49 = v0[65];
    v50 = v0[64];
    v51 = v0[63];
    v52 = v0[59];
    v53 = v0[56];
    v54 = v0[53];
    v55 = v0[52];
    v56 = v0[49];

    v30 = v0[1];

    return v30();
  }
}

uint64_t sub_1001F02C8()
{
  v1 = *(v0 + 736);
  v2 = *(v0 + 728);
  v3 = *(v0 + 656);
  v4 = *(v0 + 560);
  v5 = *(v0 + 552);
  v6 = *(v0 + 544);
  v7 = *(v5 + 16);
  *(v0 + 744) = v7;
  *(v0 + 752) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v3, v1, v6);
  v8 = *(v5 + 80);
  *(v0 + 332) = v8;
  v9 = (v8 + 24) & ~v8;
  v10 = swift_allocObject();
  *(v0 + 760) = v10;
  *(v10 + 16) = v2;
  v11 = *(v5 + 32);
  *(v0 + 768) = v11;
  *(v0 + 776) = (v5 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v11(v10 + v9, v3, v6);
  v12 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v13 = swift_task_alloc();
  *(v0 + 784) = v13;
  *v13 = v0;
  v13[1] = sub_1001F045C;
  v14 = *(v0 + 536);
  v15 = *(v0 + 528);

  return unsafeBlocking<A>(context:_:)(v14, 0xD000000000000010, 0x800000010134A8C0, sub_100202FF4, v10, v15);
}

uint64_t sub_1001F045C()
{
  v1 = *(*v0 + 784);
  v2 = *(*v0 + 760);
  v3 = *(*v0 + 384);
  v5 = *v0;

  return _swift_task_switch(sub_1001F0588, v3, 0);
}

uint64_t sub_1001F0588()
{
  v18 = v0;
  v1 = v0[67];
  v2 = v0[60];
  if ((*(v0[61] + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[85];
    sub_10000B3A8(v1, &qword_101699B90, &unk_101392670);
    v4 = swift_task_alloc();
    v0[140] = v4;
    *v4 = v0;
    if (v3)
    {
      v5 = sub_1001F53C8;
    }

    else
    {
      v5 = sub_1001F07F4;
    }
  }

  else
  {
    v6 = v0[86];
    v7 = v0[85];

    v8 = (v1 + *(v2 + 20));
    v9 = *v8;
    v0[105] = *v8;
    v10 = v8[1];
    v0[106] = v10;

    sub_100203700(v1, type metadata accessor for SessionTokenRecord);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v17 = v14;
      *v13 = 141558275;
      *(v13 + 4) = 1752392040;
      *(v13 + 12) = 2081;
      *(v13 + 14) = sub_1000136BC(v9, v10, &v17);
      _os_log_impl(&_mh_execute_header, v11, v12, "Session token found saved %{private,mask.hash}s", v13, 0x16u);
      sub_100007BAC(v14);
    }

    v4 = swift_task_alloc();
    v0[107] = v4;
    *v4 = v0;
    v5 = sub_1001F17D8;
  }

  v4[1] = v5;
  v15 = v0[48];

  return sub_1001EDC84();
}

uint64_t sub_1001F07F4()
{
  v1 = *(*v0 + 1120);
  v2 = *(*v0 + 384);
  v4 = *v0;

  return _swift_task_switch(sub_1001F0904, v2, 0);
}

uint64_t sub_1001F0904()
{
  v1 = v0[90];
  v2 = v0[48];
  v3 = *(v2 + 160);
  v4 = *(v2 + 168);
  v5 = swift_task_alloc();
  v0[99] = v5;
  *v5 = v0;
  v5[1] = sub_1001F09C8;
  v6 = v0[89];

  return sub_1011AC974((v0 + 8), v6, v1, v4, 0, 0, 0, 0);
}

uint64_t sub_1001F09C8()
{
  v2 = *v1;
  v3 = *(*v1 + 792);
  v4 = *v1;
  *(*v1 + 800) = v0;

  v5 = *(v2 + 384);
  if (v0)
  {
    v6 = sub_1001F12E0;
  }

  else
  {
    v6 = sub_1001F0AF4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1001F0AF4()
{
  v95 = v0;
  v1 = *(v0 + 88);
  if (v1)
  {
    v2 = *(v0 + 80);
    *(v0 + 208) = *(v0 + 64);
    sub_10000B3A8(v0 + 208, &qword_1016A0AC0, &unk_1013926A0);
    *(v0 + 224) = *(v0 + 96);
    sub_10000B3A8(v0 + 224, &qword_1016A0AC0, &unk_1013926A0);
    *(v0 + 920) = v1;
    *(v0 + 912) = v2;
    v3 = *(v0 + 720);
    v4 = *(v0 + 688);

    swift_bridgeObjectRetain_n();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v91 = *(v0 + 720);
      v7 = *(v0 + 712);
      v8 = swift_slowAlloc();
      v94[0] = swift_slowAlloc();
      *v8 = 141558787;
      *(v8 + 4) = 1752392040;
      *(v8 + 12) = 2081;
      *(v8 + 14) = sub_1000136BC(v7, v91, v94);
      *(v8 + 22) = 2160;
      *(v8 + 24) = 1752392040;
      *(v8 + 32) = 2081;
      v9 = sub_1000136BC(v2, v1, v94);

      *(v8 + 34) = v9;
      _os_log_impl(&_mh_execute_header, v5, v6, "Continue to import url %{private,mask.hash}s with fetch token %{private,mask.hash}s.", v8, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
    }

    v25 = swift_task_alloc();
    *(v0 + 952) = v25;
    *v25 = v0;
    v25[1] = sub_1001F30F4;
    v26 = *(v0 + 704);
    v27 = *(v0 + 696);
    v28 = *(v0 + 664);
    v29 = *(v0 + 384);

    return sub_1001E8930(v28, v27, v26);
  }

  else
  {
    v10 = *(v0 + 720);
    v11 = *(v0 + 704);

    *(v0 + 160) = *(v0 + 64);
    if (*(v0 + 168))
    {
      v12 = *(v0 + 552);
      v13 = *(v0 + 160);
      *(v0 + 192) = *(v0 + 96);
      sub_10000B3A8(v0 + 192, &qword_1016A0AC0, &unk_1013926A0);
      v14 = objc_allocWithZone(SPDelegatedShareImportResult);
      v15 = String._bridgeToObjectiveC()();
      sub_10000B3A8(v0 + 160, &qword_1016A0AC0, &unk_1013926A0);
      v92 = [v14 initWithAuthUrl:v15];

      v16 = *(v0 + 656);
      v17 = *(v0 + 648);
      v18 = *(v0 + 640);
      v19 = *(v0 + 632);
      v20 = *(v0 + 624);
      v21 = *(v0 + 616);
      v22 = *(v0 + 608);
      v64 = *(v0 + 600);
      v65 = *(v0 + 592);
      v66 = *(v0 + 584);
      v68 = *(v0 + 576);
      v70 = *(v0 + 568);
      v72 = *(v0 + 536);
      v74 = *(v0 + 520);
      v76 = *(v0 + 512);
      v78 = *(v0 + 504);
      v80 = *(v0 + 472);
      v82 = *(v0 + 448);
      v84 = *(v0 + 424);
      v86 = *(v0 + 416);
      v88 = *(v0 + 392);
      (*(v12 + 8))(*(v0 + 664), *(v0 + 544));

      v23 = *(v0 + 8);

      return v23(v92);
    }

    else
    {
      v30 = *(v0 + 752);
      v31 = *(v0 + 744);
      v32 = *(v0 + 688);
      v33 = *(v0 + 664);
      v34 = *(v0 + 648);
      v35 = *(v0 + 544);
      *(v0 + 176) = *(v0 + 96);
      sub_10000B3A8(v0 + 176, &qword_1016A0AC0, &unk_1013926A0);
      v31(v34, v33, v35);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();
      v38 = os_log_type_enabled(v36, v37);
      v39 = *(v0 + 648);
      v40 = *(v0 + 552);
      v41 = *(v0 + 544);
      if (v38)
      {
        v42 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v94[0] = v93;
        *v42 = 141558275;
        *(v42 + 4) = 1752392040;
        *(v42 + 12) = 2081;
        sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID);
        v43 = dispatch thunk of CustomStringConvertible.description.getter();
        v45 = v44;
        v89 = v37;
        v46 = *(v40 + 8);
        v46(v39, v41);
        v47 = v46;
        v48 = sub_1000136BC(v43, v45, v94);

        *(v42 + 14) = v48;
        _os_log_impl(&_mh_execute_header, v36, v89, "Invalid response for imported share %{private,mask.hash}s", v42, 0x16u);
        sub_100007BAC(v93);
      }

      else
      {

        v49 = *(v40 + 8);
        v49(v39, v41);
        v47 = v49;
      }

      v50 = *(v0 + 664);
      v51 = *(v0 + 544);
      sub_1002021D0();
      swift_allocError();
      *v52 = 10;
      swift_willThrow();
      v47(v50, v51);
      v53 = *(v0 + 664);
      v54 = *(v0 + 656);
      v55 = *(v0 + 648);
      v56 = *(v0 + 640);
      v57 = *(v0 + 632);
      v58 = *(v0 + 624);
      v59 = *(v0 + 616);
      v60 = *(v0 + 608);
      v61 = *(v0 + 600);
      v62 = *(v0 + 592);
      v67 = *(v0 + 584);
      v69 = *(v0 + 576);
      v71 = *(v0 + 568);
      v73 = *(v0 + 536);
      v75 = *(v0 + 520);
      v77 = *(v0 + 512);
      v79 = *(v0 + 504);
      v81 = *(v0 + 472);
      v83 = *(v0 + 448);
      v85 = *(v0 + 424);
      v87 = *(v0 + 416);
      v90 = *(v0 + 392);

      v63 = *(v0 + 8);

      return v63();
    }
  }
}

uint64_t sub_1001F12E0()
{
  v1 = v0[90];
  v2 = v0[88];
  v3 = v0[83];
  v4 = v0[69];
  v5 = v0[68];

  (*(v4 + 8))(v3, v5);
  v30 = v0[100];
  v6 = v0[83];
  v7 = v0[82];
  v8 = v0[81];
  v9 = v0[80];
  v10 = v0[79];
  v11 = v0[78];
  v12 = v0[77];
  v13 = v0[76];
  v14 = v0[75];
  v15 = v0[74];
  v18 = v0[73];
  v19 = v0[72];
  v20 = v0[71];
  v21 = v0[67];
  v22 = v0[65];
  v23 = v0[64];
  v24 = v0[63];
  v25 = v0[59];
  v26 = v0[56];
  v27 = v0[53];
  v28 = v0[52];
  v29 = v0[49];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1001F14B0()
{
  v31 = v0;
  v1 = *(v0 + 824);
  v2 = *(v0 + 808);
  v3 = *(v0 + 832);
  v4 = *(v0 + 816);
  *(v0 + 920) = v1;
  *(v0 + 912) = v3;
  v5 = *(v0 + 720);
  v6 = *(v0 + 688);

  swift_bridgeObjectRetain_n();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v28 = *(v0 + 712);
    v29 = *(v0 + 720);
    v9 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v9 = 141558787;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2081;
    *(v9 + 14) = sub_1000136BC(v28, v29, &v30);
    *(v9 + 22) = 2160;
    *(v9 + 24) = 1752392040;
    *(v9 + 32) = 2081;
    v10 = sub_1000136BC(v3, v1, &v30);

    *(v9 + 34) = v10;
    _os_log_impl(&_mh_execute_header, v7, v8, "Continue to import url %{private,mask.hash}s with fetch token %{private,mask.hash}s.", v9, 0x2Au);
    swift_arrayDestroy();

    if (v2)
    {
LABEL_3:
      v11 = *(v0 + 752);
      v12 = *(v0 + 728);
      v13 = *(v0 + 520);
      v14 = *(v0 + 512);
      v16 = *(v0 + 488);
      v15 = *(v0 + 496);
      v17 = *(v0 + 480);
      (*(v0 + 744))(v13, *(v0 + 736), *(v0 + 544));
      v18 = (v13 + *(v17 + 20));
      *v18 = v4;
      v18[1] = v2;
      static Date.trustedNow.getter(v13 + *(v17 + 24));
      sub_100203698(v13, v14, type metadata accessor for SessionTokenRecord);
      v19 = *(v16 + 80);
      *(v0 + 1144) = v19;
      v20 = (v19 + 16) & ~v19;
      v21 = swift_allocObject();
      *(v0 + 928) = v21;
      sub_100203304(v14, v21 + v20, type metadata accessor for SessionTokenRecord);

      return _swift_task_switch(sub_1001F2D14, v12, 0);
    }
  }

  else
  {

    if (v2)
    {
      goto LABEL_3;
    }
  }

  v22 = swift_task_alloc();
  *(v0 + 952) = v22;
  *v22 = v0;
  v22[1] = sub_1001F30F4;
  v23 = *(v0 + 704);
  v24 = *(v0 + 696);
  v25 = *(v0 + 664);
  v26 = *(v0 + 384);

  return sub_1001E8930(v25, v24, v23);
}

uint64_t sub_1001F17D8()
{
  v1 = *(*v0 + 856);
  v2 = *(*v0 + 384);
  v4 = *v0;

  return _swift_task_switch(sub_1001F18E8, v2, 0);
}

uint64_t sub_1001F18E8()
{
  v1 = v0[106];
  v2 = v0[90];
  v3 = v0[48];
  v4 = *(v3 + 160);
  v5 = *(v3 + 168);
  v6 = swift_task_alloc();
  v0[108] = v6;
  *v6 = v0;
  v6[1] = sub_1001F19B0;
  v7 = v0[105];
  v8 = v0[89];

  return sub_1011AC974((v0 + 2), v8, v2, v5, 0, 0, v7, v1);
}

uint64_t sub_1001F19B0()
{
  v2 = *v1;
  v3 = *(*v1 + 864);
  v12 = *v1;
  *(*v1 + 872) = v0;

  if (v0)
  {
    v4 = v2[90];
    v5 = v2[88];
    v6 = v2[48];

    v7 = sub_1001F23B0;
    v8 = v6;
  }

  else
  {
    v9 = v2[106];
    v10 = v2[48];

    v7 = sub_1001F1AF0;
    v8 = v10;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_1001F1AF0()
{
  v86 = v0;
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 32);
    *(v0 + 272) = *(v0 + 16);
    sub_10000B3A8(v0 + 272, &qword_1016A0AC0, &unk_1013926A0);
    *(v0 + 288) = *(v0 + 48);
    sub_10000B3A8(v0 + 288, &qword_1016A0AC0, &unk_1013926A0);
    *(v0 + 920) = v1;
    *(v0 + 912) = v2;
    v3 = *(v0 + 720);
    v4 = *(v0 + 688);

    swift_bridgeObjectRetain_n();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v84 = *(v0 + 720);
      v7 = *(v0 + 712);
      v8 = swift_slowAlloc();
      v85[0] = swift_slowAlloc();
      *v8 = 141558787;
      *(v8 + 4) = 1752392040;
      *(v8 + 12) = 2081;
      *(v8 + 14) = sub_1000136BC(v7, v84, v85);
      *(v8 + 22) = 2160;
      *(v8 + 24) = 1752392040;
      *(v8 + 32) = 2081;
      v9 = sub_1000136BC(v2, v1, v85);

      *(v8 + 34) = v9;
      _os_log_impl(&_mh_execute_header, v5, v6, "Continue to import url %{private,mask.hash}s with fetch token %{private,mask.hash}s.", v8, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
    }

    v21 = swift_task_alloc();
    *(v0 + 952) = v21;
    *v21 = v0;
    v21[1] = sub_1001F30F4;
    v22 = *(v0 + 704);
    v23 = *(v0 + 696);
    v24 = *(v0 + 664);
    v25 = *(v0 + 384);

    return sub_1001E8930(v24, v23, v22);
  }

  else
  {
    v10 = *(v0 + 704);

    v11 = *(v0 + 16);
    v12 = *(v0 + 24);
    *(v0 + 880) = v11;
    *(v0 + 888) = v12;
    v13 = *(v0 + 720);
    v14 = *(v0 + 688);
    if (v12)
    {
      v15 = *(v0 + 720);

      *(v0 + 256) = *(v0 + 48);
      sub_10000B3A8(v0 + 256, &qword_1016A0AC0, &unk_1013926A0);

      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v85[0] = v19;
        *v18 = 141558275;
        *(v18 + 4) = 1752392040;
        *(v18 + 12) = 2081;
        *(v18 + 14) = sub_1000136BC(v11, v12, v85);
        _os_log_impl(&_mh_execute_header, v16, v17, "Session token is invalid, so auth url is returned %{private,mask.hash}s", v18, 0x16u);
        sub_100007BAC(v19);
      }

      v20 = *(v0 + 728);

      return _swift_task_switch(sub_1001F27B8, v20, 0);
    }

    else
    {
      *(v0 + 240) = *(v0 + 48);
      sub_10000B3A8(v0 + 240, &qword_1016A0AC0, &unk_1013926A0);

      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();

      v28 = os_log_type_enabled(v26, v27);
      v29 = *(v0 + 720);
      if (v28)
      {
        v30 = *(v0 + 712);
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v85[0] = v32;
        *v31 = 141558275;
        *(v31 + 4) = 1752392040;
        *(v31 + 12) = 2081;
        v33 = sub_1000136BC(v30, v29, v85);

        *(v31 + 14) = v33;
        _os_log_impl(&_mh_execute_header, v26, v27, "Invalid response from server for importing url (subsequent views) %{private,mask.hash}s", v31, 0x16u);
        sub_100007BAC(v32);
      }

      else
      {
      }

      sub_1002021D0();
      swift_allocError();
      *v34 = 10;
      swift_willThrow();
      v35 = *(v0 + 752);
      v36 = *(v0 + 688);
      (*(v0 + 744))(*(v0 + 584), *(v0 + 664), *(v0 + 544));
      swift_errorRetain();
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();

      v39 = os_log_type_enabled(v37, v38);
      v40 = *(v0 + 584);
      v41 = *(v0 + 552);
      v42 = *(v0 + 544);
      if (v39)
      {
        v43 = swift_slowAlloc();
        v85[0] = swift_slowAlloc();
        *v43 = 141558531;
        *(v43 + 4) = 1752392040;
        *(v43 + 12) = 2081;
        sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID);
        v44 = dispatch thunk of CustomStringConvertible.description.getter();
        v46 = v45;
        v47 = *(v41 + 8);
        v47(v40, v42);
        v48 = v47;
        v49 = sub_1000136BC(v44, v46, v85);

        *(v43 + 14) = v49;
        *(v43 + 22) = 2080;
        swift_getErrorValue();
        v51 = *(v0 + 136);
        v50 = *(v0 + 144);
        v52 = *(v0 + 152);
        v53 = Error.localizedDescription.getter();
        v55 = sub_1000136BC(v53, v54, v85);

        *(v43 + 24) = v55;
        _os_log_impl(&_mh_execute_header, v37, v38, "startImportedSessionForSubsequentViews failed for importing share %{private,mask.hash}s: %s.", v43, 0x20u);
        swift_arrayDestroy();
      }

      else
      {

        v56 = *(v41 + 8);
        v56(v40, v42);
        v48 = v56;
      }

      v57 = *(v0 + 664);
      v58 = *(v0 + 544);
      swift_allocError();
      *v59 = 10;
      swift_willThrow();

      v48(v57, v58);
      v60 = *(v0 + 664);
      v61 = *(v0 + 656);
      v62 = *(v0 + 648);
      v63 = *(v0 + 640);
      v64 = *(v0 + 632);
      v65 = *(v0 + 624);
      v66 = *(v0 + 616);
      v67 = *(v0 + 608);
      v68 = *(v0 + 600);
      v69 = *(v0 + 592);
      v72 = *(v0 + 584);
      v73 = *(v0 + 576);
      v74 = *(v0 + 568);
      v75 = *(v0 + 536);
      v76 = *(v0 + 520);
      v77 = *(v0 + 512);
      v78 = *(v0 + 504);
      v79 = *(v0 + 472);
      v80 = *(v0 + 448);
      v81 = *(v0 + 424);
      v82 = *(v0 + 416);
      v83 = *(v0 + 392);

      v70 = *(v0 + 8);

      return v70();
    }
  }
}

uint64_t sub_1001F23B0()
{
  v56 = v0;
  v1 = *(v0 + 848);

  v2 = *(v0 + 872);
  v3 = *(v0 + 752);
  v4 = *(v0 + 688);
  (*(v0 + 744))(*(v0 + 584), *(v0 + 664), *(v0 + 544));
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v54 = v6;
    v7 = *(v0 + 584);
    v8 = *(v0 + 552);
    v9 = *(v0 + 544);
    v10 = swift_slowAlloc();
    v55[0] = swift_slowAlloc();
    *v10 = 141558531;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID);
    log = v5;
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    v14 = *(v8 + 8);
    v14(v7, v9);
    v15 = sub_1000136BC(v11, v13, v55);

    *(v10 + 14) = v15;
    *(v10 + 22) = 2080;
    swift_getErrorValue();
    v17 = *(v0 + 136);
    v16 = *(v0 + 144);
    v18 = *(v0 + 152);
    v19 = Error.localizedDescription.getter();
    v21 = sub_1000136BC(v19, v20, v55);

    *(v10 + 24) = v21;
    _os_log_impl(&_mh_execute_header, log, v54, "startImportedSessionForSubsequentViews failed for importing share %{private,mask.hash}s: %s.", v10, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v22 = *(v0 + 584);
    v23 = *(v0 + 552);
    v24 = *(v0 + 544);

    v25 = *(v23 + 8);
    v25(v22, v24);
    v14 = v25;
  }

  v26 = *(v0 + 664);
  v27 = *(v0 + 544);
  sub_1002021D0();
  swift_allocError();
  *v28 = 10;
  swift_willThrow();

  v14(v26, v27);
  v29 = *(v0 + 664);
  v30 = *(v0 + 656);
  v31 = *(v0 + 648);
  v32 = *(v0 + 640);
  v33 = *(v0 + 632);
  v34 = *(v0 + 624);
  v35 = *(v0 + 616);
  v36 = *(v0 + 608);
  v37 = *(v0 + 600);
  v38 = *(v0 + 592);
  v41 = *(v0 + 584);
  v42 = *(v0 + 576);
  v43 = *(v0 + 568);
  v44 = *(v0 + 536);
  v45 = *(v0 + 520);
  v46 = *(v0 + 512);
  v47 = *(v0 + 504);
  v48 = *(v0 + 472);
  v49 = *(v0 + 448);
  v50 = *(v0 + 424);
  loga = *(v0 + 416);
  v53 = *(v0 + 392);

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_1001F27B8()
{
  v1 = *(v0 + 776);
  v2 = *(v0 + 768);
  v3 = *(v0 + 752);
  v4 = *(v0 + 728);
  v5 = *(v0 + 656);
  v6 = *(v0 + 560);
  v7 = *(v0 + 544);
  v8 = (*(v0 + 332) + 24) & ~*(v0 + 332);
  (*(v0 + 744))(v5, *(v0 + 736), v7);
  v9 = swift_allocObject();
  *(v0 + 896) = v9;
  *(v9 + 16) = v4;
  v2(v9 + v8, v5, v7);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 904) = v11;
  *v11 = v0;
  v11[1] = sub_1001F2918;

  return unsafeBlocking<A>(context:_:)(v0 + 329, 0xD000000000000010, 0x800000010134A8C0, sub_10020343C, v9, &type metadata for Bool);
}

uint64_t sub_1001F2918()
{
  v1 = *(*v0 + 904);
  v2 = *(*v0 + 896);
  v3 = *(*v0 + 728);
  v5 = *v0;

  return _swift_task_switch(sub_1001F2A44, v3, 0);
}

uint64_t sub_1001F2A44()
{
  v1 = *(v0 + 384);
  *(v0 + 330) = *(v0 + 329);
  return _swift_task_switch(sub_1001F2A68, v1, 0);
}

uint64_t sub_1001F2A68()
{
  v1 = *(v0 + 330);
  v2 = *(v0 + 688);
  v3 = Logger.logObject.getter();
  if (v1 == 1)
  {
    v4 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_7;
    }

    v5 = "Successfully deleted session token because its been invalidated by the server.";
  }

  else
  {
    v4 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_7;
    }

    v5 = "Failed to delete session token.";
  }

  v6 = swift_slowAlloc();
  *v6 = 0;
  _os_log_impl(&_mh_execute_header, v3, v4, v5, v6, 2u);

LABEL_7:
  v7 = *(v0 + 888);
  v8 = *(v0 + 880);
  v9 = *(v0 + 552);

  v10 = objc_allocWithZone(SPDelegatedShareImportResult);
  v11 = String._bridgeToObjectiveC()();

  v35 = [v10 initWithAuthUrl:v11];

  v12 = *(v0 + 656);
  v13 = *(v0 + 648);
  v14 = *(v0 + 640);
  v15 = *(v0 + 632);
  v16 = *(v0 + 624);
  v17 = *(v0 + 616);
  v18 = *(v0 + 608);
  v21 = *(v0 + 600);
  v22 = *(v0 + 592);
  v23 = *(v0 + 584);
  v24 = *(v0 + 576);
  v25 = *(v0 + 568);
  v26 = *(v0 + 536);
  v27 = *(v0 + 520);
  v28 = *(v0 + 512);
  v29 = *(v0 + 504);
  v30 = *(v0 + 472);
  v31 = *(v0 + 448);
  v32 = *(v0 + 424);
  v33 = *(v0 + 416);
  v34 = *(v0 + 392);
  (*(v9 + 8))(*(v0 + 664), *(v0 + 544));

  v19 = *(v0 + 8);

  return v19(v35);
}

uint64_t sub_1001F2D14()
{
  v1 = *(v0 + 928);
  v2 = *(v0 + 1144);
  v3 = *(v0 + 728);
  v5 = *(v0 + 496);
  v4 = *(v0 + 504);
  sub_100203698(*(v0 + 520), v4, type metadata accessor for SessionTokenRecord);
  v6 = (v2 + 24) & ~v2;
  v7 = swift_allocObject();
  *(v0 + 936) = v7;
  *(v7 + 16) = v3;
  sub_100203304(v4, v7 + v6, type metadata accessor for SessionTokenRecord);
  v8 = (v7 + ((v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v8 = sub_10020336C;
  v8[1] = v1;
  v9 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v10 = swift_task_alloc();
  *(v0 + 944) = v10;
  *v10 = v0;
  v10[1] = sub_1001F2EA0;

  return unsafeBlocking<A>(context:_:)(v10, 0xD000000000000010, 0x800000010134A8C0, sub_100203398, v7, &type metadata for () + 8);
}

uint64_t sub_1001F2EA0()
{
  v1 = *(*v0 + 944);
  v2 = *(*v0 + 936);
  v3 = *(*v0 + 728);
  v5 = *v0;

  return _swift_task_switch(sub_1001F2FCC, v3, 0);
}

uint64_t sub_1001F2FCC()
{
  v1 = *(v0 + 928);
  v2 = *(v0 + 384);

  return _swift_task_switch(sub_1001F3038, v2, 0);
}

uint64_t sub_1001F3038()
{
  sub_100203700(v0[65], type metadata accessor for SessionTokenRecord);
  v1 = swift_task_alloc();
  v0[119] = v1;
  *v1 = v0;
  v1[1] = sub_1001F30F4;
  v2 = v0[88];
  v3 = v0[87];
  v4 = v0[83];
  v5 = v0[48];

  return sub_1001E8930(v4, v3, v2);
}

uint64_t sub_1001F30F4()
{
  v2 = *(*v1 + 952);
  v3 = *v1;
  v3[120] = v0;

  if (v0)
  {
    v4 = v3[115];
    v5 = v3[90];
    v6 = v3[88];
    v7 = v3[48];

    return _swift_task_switch(sub_1001F5ADC, v7, 0);
  }

  else
  {
    v8 = swift_task_alloc();
    v3[121] = v8;
    *v8 = v3;
    v8[1] = sub_1001F3298;
    v9 = v3[80];
    v10 = v3[48];

    return sub_1001EA09C(v9);
  }
}

uint64_t sub_1001F3298()
{
  v2 = *v1;
  v3 = *(*v1 + 968);
  v11 = *v1;
  *(*v1 + 976) = v0;

  if (v0)
  {
    v4 = v2[115];
    v5 = v2[90];
    v6 = v2[88];
    v7 = v2[48];

    v8 = sub_1001F5C90;
    v9 = v7;
  }

  else
  {
    v9 = v2[48];
    v8 = sub_1001F33E0;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_1001F33E0()
{
  v23 = v0;
  v1 = *(v0 + 920);
  v2 = *(v0 + 752);
  v3 = *(v0 + 688);
  (*(v0 + 744))(*(v0 + 632), *(v0 + 664), *(v0 + 544));

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 920);
    v7 = *(v0 + 912);
    v21 = *(v0 + 632);
    v8 = *(v0 + 552);
    v9 = *(v0 + 544);
    v10 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v10 = 141558787;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    *(v10 + 14) = sub_1000136BC(v7, v6, &v22);
    *(v10 + 22) = 2160;
    *(v10 + 24) = 1752392040;
    *(v10 + 32) = 2081;
    sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    v14 = *(v8 + 8);
    v14(v21, v9);
    v15 = sub_1000136BC(v11, v13, &v22);

    *(v10 + 34) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Saving fetch token %{private,mask.hash}s for imported share %{private,mask.hash}s", v10, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
    v16 = *(v0 + 632);
    v17 = *(v0 + 552);
    v18 = *(v0 + 544);

    v14 = *(v17 + 8);
    v14(v16, v18);
  }

  *(v0 + 984) = v14;
  v19 = *(v0 + 728);

  return _swift_task_switch(sub_1001F3648, v19, 0);
}

uint64_t sub_1001F3648()
{
  v1 = v0[91];
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  v0[124] = v3;
  v4 = type metadata accessor for BeaconKeyManager(0);
  v0[125] = v4;
  *v3 = v0;
  v3[1] = sub_1001F372C;
  v5 = v0[91];

  return unsafeBlocking<A>(context:_:)(v0 + 43, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v5, v4);
}

uint64_t sub_1001F372C()
{
  v1 = *(*v0 + 992);
  v2 = *(*v0 + 728);
  v4 = *v0;

  return _swift_task_switch(sub_1001F3844, v2, 0);
}

uint64_t sub_1001F3844()
{
  v1 = v0[48];
  v0[126] = v0[43];
  return _swift_task_switch(sub_1001F3868, v1, 0);
}

uint64_t sub_1001F3868()
{
  v1 = v0[78];
  v2 = *(v0[126] + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);
  v0[127] = v2;

  v3 = getuid();
  sub_1000294F0(v3);

  return _swift_task_switch(sub_1001F3908, v2, 0);
}

uint64_t sub_1001F3908()
{
  v1 = v0[127];
  v2 = *(v1 + 112);
  if (!v2)
  {
    v20 = v0[115];
    v21 = v0[90];
    v22 = v0[88];

    sub_10020223C();
    v13 = swift_allocError();
    *v23 = 2;
    *(v23 + 4) = 1;
    swift_willThrow();
LABEL_7:

    goto LABEL_8;
  }

  v3 = *(v1 + 112);

  v4 = sub_1002072CC();
  if (!v4)
  {
    v24 = v0[127];
    v25 = v0[115];
    v26 = v0[90];
    v27 = v0[88];

    sub_10020223C();
    v13 = swift_allocError();
    *v28 = 2;
    *(v28 + 4) = 1;
    swift_willThrow();

    goto LABEL_7;
  }

  v5 = v4;
  v50 = v0[115];
  v53 = v0[122];
  v6 = v0[83];
  v7 = v0[80];
  v8 = v0[78];
  v9 = v0[59];
  v10 = v0[56];
  v11 = v0[55];
  v44 = v0[114];
  v47 = v0[54];
  (*(v0[58] + 16))(v9, v2 + OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_importedBeaconAttributes, v0[57]);
  v12 = swift_task_alloc();
  v12[2] = v9;
  v12[3] = v7;
  v12[4] = v6;
  v12[5] = v8;
  v12[6] = v44;
  v12[7] = v50;
  v12[8] = v5;
  (*(v11 + 104))(v10, enum case for Connection.TransactionMode.deferred(_:), v47);
  Connection.transaction(_:block:)();
  v13 = v53;
  v14 = v0[127];
  if (v53)
  {
    v15 = v0[115];
    v16 = v0[88];
    v17 = v0[58];
    v51 = v0[57];
    v54 = v0[59];
    v45 = v0[90];
    v48 = v0[56];
    v19 = v0[54];
    v18 = v0[55];

    (*(v18 + 8))(v48, v19);

    (*(v17 + 8))(v54, v51);
LABEL_8:
    v0[129] = v13;
    v29 = v0[123];
    v30 = v0[78];
    v31 = v0[68];
    v32 = v0[48];
    v0[130] = (v0[69] + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v29(v30, v31);
    v33 = sub_1001F3FA4;
    v34 = v32;
    goto LABEL_9;
  }

  v35 = v0[115];
  v46 = v0[68];
  v49 = v0[78];
  v36 = v0[58];
  v42 = v0[59];
  v43 = v0[69];
  v37 = v0[56];
  v41 = v0[57];
  v38 = v0[54];
  v39 = v0[55];
  v52 = v0[48];
  v55 = v0[123];

  (*(v39 + 8))(v37, v38);

  (*(v36 + 8))(v42, v41);
  v0[128] = (v43 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v55(v49, v46);
  v33 = sub_1001F3CBC;
  v34 = v52;
LABEL_9:

  return _swift_task_switch(v33, v34, 0);
}

uint64_t sub_1001F3CBC()
{
  v32 = v0;
  v1 = v0[94];
  v2 = v0[93];
  v3 = v0[86];
  v4 = v0[83];
  v5 = v0[76];
  v6 = v0[68];
  v2(v0[77], v0[80], v6);
  v2(v5, v4, v6);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[128];
  v11 = v0[123];
  v12 = v0[77];
  v13 = v0[76];
  v14 = v0[68];
  if (v9)
  {
    log = v7;
    v15 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v15 = 141558787;
    *(v15 + 4) = 1752392040;
    *(v15 + 12) = 2081;
    sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v8;
    v18 = v17;
    v11(v12, v14);
    v19 = sub_1000136BC(v16, v18, &v31);

    *(v15 + 14) = v19;
    *(v15 + 22) = 2160;
    *(v15 + 24) = 1752392040;
    *(v15 + 32) = 2081;
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    v11(v13, v14);
    v23 = sub_1000136BC(v20, v22, &v31);

    *(v15 + 34) = v23;
    _os_log_impl(&_mh_execute_header, log, v29, "Downloading public suffix keys for beacon id %{private,mask.hash}s\nfor share %{private,mask.hash}s.", v15, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    v11(v13, v14);
    v11(v12, v14);
  }

  v24 = *sub_1000035D0((v0[48] + 120), *(v0[48] + 144));
  v25 = swift_task_alloc();
  v0[131] = v25;
  *v25 = v0;
  v25[1] = sub_1001F4164;
  v26 = v0[83];
  v27 = v0[80];

  return sub_100C7535C(v26, v27);
}

uint64_t sub_1001F3FA4()
{
  v1 = v0[130];
  v2 = v0[123];
  v3 = v0[83];
  v4 = v0[68];
  v2(v0[80], v4);
  v2(v3, v4);
  v29 = v0[129];
  v5 = v0[83];
  v6 = v0[82];
  v7 = v0[81];
  v8 = v0[80];
  v9 = v0[79];
  v10 = v0[78];
  v11 = v0[77];
  v12 = v0[76];
  v13 = v0[75];
  v14 = v0[74];
  v17 = v0[73];
  v18 = v0[72];
  v19 = v0[71];
  v20 = v0[67];
  v21 = v0[65];
  v22 = v0[64];
  v23 = v0[63];
  v24 = v0[59];
  v25 = v0[56];
  v26 = v0[53];
  v27 = v0[52];
  v28 = v0[49];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1001F4164()
{
  v2 = *(*v1 + 1048);
  v3 = *v1;
  v3[132] = v0;

  if (v0)
  {
    v4 = v3[48];

    return _swift_task_switch(sub_1001F42E0, v4, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v3[133] = v5;
    *v5 = v3;
    v5[1] = sub_1001F4924;
    v6 = v3[83];
    v7 = v3[80];
    v8 = v3[53];
    v9 = v3[48];

    return sub_1001EABC8(v8, v7, v6);
  }
}

uint64_t sub_1001F42E0()
{
  v82 = v0;
  v1 = *(v0 + 1056);
  v2 = *(v0 + 752);
  v3 = *(v0 + 688);
  (*(v0 + 744))(*(v0 + 600), *(v0 + 664), *(v0 + 544));
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v76 = *(v0 + 1024);
    v78 = *(v0 + 1056);
    v74 = *(v0 + 984);
    v6 = *(v0 + 600);
    v7 = *(v0 + 544);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v81[0] = v10;
    *v8 = 141558531;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    v74(v6, v7);
    v14 = sub_1000136BC(v11, v13, v81);

    *(v8 + 14) = v14;
    *(v8 + 22) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 24) = v15;
    *v9 = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Unable to download keys and attributes for imported share %{private,mask.hash}s: %@", v8, 0x20u);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v10);
  }

  else
  {
    v16 = *(v0 + 1024);
    v17 = *(v0 + 984);
    v18 = *(v0 + 600);
    v19 = *(v0 + 544);

    v17(v18, v19);
  }

  *(v0 + 352) = *(v0 + 1056);
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if (swift_dynamicCast() && *(v0 + 328) == 1 && *(v0 + 320) > 5uLL)
  {
    v20 = *(v0 + 752);
    v21 = *(v0 + 744);
    v22 = *(v0 + 720);
    v23 = *(v0 + 704);
    v24 = *(v0 + 688);
    v25 = *(v0 + 664);
    v26 = *(v0 + 576);
    v27 = *(v0 + 544);

    v21(v26, v25, v27);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v0 + 984);
    v32 = *(v0 + 576);
    v33 = *(v0 + 544);
    if (v30)
    {
      v79 = *(v0 + 1024);
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v81[0] = v35;
      *v34 = 141558275;
      *(v34 + 4) = 1752392040;
      *(v34 + 12) = 2081;
      sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID);
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = v37;
      v31(v32, v33);
      v39 = sub_1000136BC(v36, v38, v81);

      *(v34 + 14) = v39;
      _os_log_impl(&_mh_execute_header, v28, v29, "Share %{private,mask.hash}s is revoked, not importing the share", v34, 0x16u);
      sub_100007BAC(v35);
    }

    else
    {

      v31(v32, v33);
    }

    v47 = *(v0 + 1056);
    v48 = *(v0 + 1024);
    v49 = *(v0 + 984);
    v50 = *(v0 + 664);
    v51 = *(v0 + 640);
    v52 = *(v0 + 544);
    swift_willThrow();
    v49(v51, v52);
    v49(v50, v52);
    v80 = *(v0 + 1056);
    v53 = *(v0 + 664);
    v54 = *(v0 + 656);
    v55 = *(v0 + 648);
    v56 = *(v0 + 640);
    v57 = *(v0 + 632);
    v58 = *(v0 + 624);
    v59 = *(v0 + 616);
    v60 = *(v0 + 608);
    v61 = *(v0 + 600);
    v62 = *(v0 + 592);
    v64 = *(v0 + 584);
    v65 = *(v0 + 576);
    v66 = *(v0 + 568);
    v67 = *(v0 + 536);
    v68 = *(v0 + 520);
    v69 = *(v0 + 512);
    v70 = *(v0 + 504);
    v71 = *(v0 + 472);
    v72 = *(v0 + 448);
    v73 = *(v0 + 424);
    v75 = *(v0 + 416);
    v77 = *(v0 + 392);

    v63 = *(v0 + 8);

    return v63();
  }

  else
  {
    v40 = *(v0 + 1056);

    v41 = swift_task_alloc();
    *(v0 + 1064) = v41;
    *v41 = v0;
    v41[1] = sub_1001F4924;
    v42 = *(v0 + 664);
    v43 = *(v0 + 640);
    v44 = *(v0 + 424);
    v45 = *(v0 + 384);

    return sub_1001EABC8(v44, v43, v42);
  }
}

uint64_t sub_1001F4924(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 1064);
  v6 = *v2;
  v4[134] = a1;
  v4[135] = v1;

  v7 = v3[88];
  if (v1)
  {
    v8 = v4[90];
    v9 = v4[48];

    v10 = sub_1001F5E44;
    v11 = v9;
  }

  else
  {
    v12 = v4[91];

    v10 = sub_1001F4A88;
    v11 = v12;
  }

  return _swift_task_switch(v10, v11, 0);
}

uint64_t sub_1001F4A88()
{
  v1 = v0[91];
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  v0[136] = v3;
  *v3 = v0;
  v3[1] = sub_1001F4B60;
  v4 = v0[125];
  v5 = v0[91];

  return unsafeBlocking<A>(context:_:)(v0 + 45, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v5, v4);
}

uint64_t sub_1001F4B60()
{
  v1 = *(*v0 + 1088);
  v2 = *(*v0 + 728);
  v4 = *v0;

  return _swift_task_switch(sub_1001F4C78, v2, 0);
}

uint64_t sub_1001F4C78()
{
  v0[137] = v0[45];
  v1 = swift_task_alloc();
  v0[138] = v1;
  *v1 = v0;
  v1[1] = sub_1001F4D14;
  v2 = v0[53];

  return sub_1012D29FC(v2);
}

uint64_t sub_1001F4D14()
{
  v2 = *v1;
  v3 = *(*v1 + 1104);
  v9 = *v1;
  *(*v1 + 1112) = v0;

  if (v0)
  {
    v4 = *(v2 + 384);
    v5 = sub_1001F6004;
  }

  else
  {
    v6 = *(v2 + 1096);
    v7 = *(v2 + 384);

    v5 = sub_1001F4E3C;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1001F4E3C()
{
  v70 = v0;
  v65 = *(v0 + 768);
  v67 = *(v0 + 776);
  v1 = *(v0 + 332);
  v53 = *(v0 + 752);
  v2 = *(v0 + 744);
  v61 = *(v0 + 720);
  v63 = *(v0 + 688);
  v3 = *(v0 + 656);
  v4 = *(v0 + 640);
  v51 = v4;
  v5 = *(v0 + 560);
  v6 = *(v0 + 544);
  v41 = *(v0 + 416);
  v42 = *(v0 + 424);
  v43 = *(v0 + 400);
  v44 = *(v0 + 408);
  v7 = *(v0 + 392);
  v45 = v7;
  v59 = *(v0 + 384);
  v47 = type metadata accessor for TaskPriority();
  v49 = *(*(v47 - 8) + 56);
  v49(v7, 1, 1, v47);
  v8 = v6;
  v2(v3, v4, v6);
  sub_100203698(v42, v41, type metadata accessor for SharedBeaconRecord);
  v9 = (v1 + 32) & ~v1;
  v10 = (v5 + v9 + *(v43 + 80)) & ~*(v43 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  v65(v11 + v9, v3, v8);
  sub_100203304(v41, v11 + v10, type metadata accessor for SharedBeaconRecord);
  sub_100A838D4(0, 0, v45, &unk_101392688, v11);

  v49(v45, 1, 1, v47);
  v2(v3, v51, v8);
  v13 = sub_100019348(&qword_101699B98, v12, type metadata accessor for ImportedShareUseCase);
  v14 = (v1 + 40) & ~v1;
  v15 = swift_allocObject();
  v15[2] = v59;
  v15[3] = v13;
  v15[4] = v59;
  v65(v15 + v14, v3, v8);
  swift_retain_n();
  sub_100A838D4(0, 0, v45, &unk_101392698, v15);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  v18 = os_log_type_enabled(v16, v17);
  v19 = *(v0 + 720);
  if (v18)
  {
    v20 = *(v0 + 712);
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v69 = v22;
    *v21 = 141558275;
    *(v21 + 4) = 1752392040;
    *(v21 + 12) = 2081;
    v23 = sub_1000136BC(v20, v19, &v69);

    *(v21 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v16, v17, "Successfully imported share for url %{private,mask.hash}s", v21, 0x16u);
    sub_100007BAC(v22);
  }

  else
  {
  }

  v24 = *(v0 + 1072);
  v25 = *(v0 + 1024);
  v26 = *(v0 + 984);
  v27 = *(v0 + 640);
  v28 = *(v0 + 544);
  v29 = *(v0 + 424);
  v68 = [objc_allocWithZone(SPDelegatedShareImportResult) initWithShare:v24];

  sub_100203700(v29, type metadata accessor for SharedBeaconRecord);
  v26(v27, v28);
  v30 = *(v0 + 1024);
  v31 = *(v0 + 656);
  v32 = *(v0 + 648);
  v33 = *(v0 + 640);
  v34 = *(v0 + 632);
  v35 = *(v0 + 624);
  v36 = *(v0 + 616);
  v37 = *(v0 + 608);
  v38 = *(v0 + 600);
  v46 = *(v0 + 592);
  v48 = *(v0 + 584);
  v50 = *(v0 + 576);
  v52 = *(v0 + 568);
  v54 = *(v0 + 536);
  v55 = *(v0 + 520);
  v56 = *(v0 + 512);
  v57 = *(v0 + 504);
  v58 = *(v0 + 472);
  v60 = *(v0 + 448);
  v62 = *(v0 + 424);
  v64 = *(v0 + 416);
  v66 = *(v0 + 392);
  (*(v0 + 984))(*(v0 + 664), *(v0 + 544));

  v39 = *(v0 + 8);

  return v39(v68);
}

uint64_t sub_1001F53C8()
{
  v1 = *v0;
  v2 = *(*v0 + 1120);
  v3 = *(*v0 + 720);
  v4 = *(*v0 + 680);
  v5 = *v0;

  v6 = swift_task_alloc();
  v1[141] = v6;
  *v6 = v5;
  v6[1] = sub_1001F556C;
  v7 = v1[89];
  v8 = v1[84];
  v9 = v1[48];

  return sub_1001ED65C(v7, v3, v8, v4);
}

uint64_t sub_1001F556C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  v11 = *(*v5 + 1128);
  v21 = *v5;
  *(*v5 + 1136) = v4;

  if (v4)
  {
    v12 = v10[90];
    v13 = v10[88];
    v14 = v10[85];
    v15 = v10[48];

    v16 = sub_1001F56E8;
    v17 = v15;
  }

  else
  {
    v18 = v10[85];
    v19 = v10[48];

    v10[101] = a4;
    v10[102] = a3;
    v10[103] = a2;
    v10[104] = a1;
    v16 = sub_1001F14B0;
    v17 = v19;
  }

  return _swift_task_switch(v16, v17, 0);
}

uint64_t sub_1001F56E8()
{
  v55 = v0;
  v1 = *(v0 + 1136);
  v2 = *(v0 + 752);
  v3 = *(v0 + 688);
  (*(v0 + 744))(*(v0 + 592), *(v0 + 664), *(v0 + 544));
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v50 = *(v0 + 1136);
    v53 = v5;
    v6 = *(v0 + 592);
    v7 = *(v0 + 552);
    v8 = *(v0 + 544);
    v9 = swift_slowAlloc();
    v54[0] = swift_slowAlloc();
    *v9 = 141558531;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2081;
    sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    v13 = *(v7 + 8);
    v13(v6, v8);
    v14 = sub_1000136BC(v10, v12, v54);

    *(v9 + 14) = v14;
    *(v9 + 22) = 2080;
    swift_getErrorValue();
    v16 = *(v0 + 112);
    v15 = *(v0 + 120);
    v17 = *(v0 + 128);
    v18 = Error.localizedDescription.getter();
    v20 = sub_1000136BC(v18, v19, v54);

    *(v9 + 24) = v20;
    _os_log_impl(&_mh_execute_header, v4, v53, "startImportedSessionWithCallbackValue failed for importing share %{private,mask.hash}s: %s.", v9, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v21 = *(v0 + 592);
    v22 = *(v0 + 552);
    v23 = *(v0 + 544);

    v13 = *(v22 + 8);
    v13(v21, v23);
  }

  v24 = *(v0 + 1136);
  v25 = *(v0 + 664);
  v26 = *(v0 + 544);
  sub_1002021D0();
  swift_allocError();
  *v27 = 10;
  swift_willThrow();

  v13(v25, v26);
  v28 = *(v0 + 664);
  v29 = *(v0 + 656);
  v30 = *(v0 + 648);
  v31 = *(v0 + 640);
  v32 = *(v0 + 632);
  v33 = *(v0 + 624);
  v34 = *(v0 + 616);
  v35 = *(v0 + 608);
  v36 = *(v0 + 600);
  v37 = *(v0 + 592);
  v40 = *(v0 + 584);
  v41 = *(v0 + 576);
  v42 = *(v0 + 568);
  v43 = *(v0 + 536);
  v44 = *(v0 + 520);
  v45 = *(v0 + 512);
  v46 = *(v0 + 504);
  v47 = *(v0 + 472);
  v48 = *(v0 + 448);
  v49 = *(v0 + 424);
  v51 = *(v0 + 416);
  v52 = *(v0 + 392);

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_1001F5ADC()
{
  (*(v0[69] + 8))(v0[83], v0[68]);
  v25 = v0[120];
  v1 = v0[83];
  v2 = v0[82];
  v3 = v0[81];
  v4 = v0[80];
  v5 = v0[79];
  v6 = v0[78];
  v7 = v0[77];
  v8 = v0[76];
  v9 = v0[75];
  v10 = v0[74];
  v13 = v0[73];
  v14 = v0[72];
  v15 = v0[71];
  v16 = v0[67];
  v17 = v0[65];
  v18 = v0[64];
  v19 = v0[63];
  v20 = v0[59];
  v21 = v0[56];
  v22 = v0[53];
  v23 = v0[52];
  v24 = v0[49];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1001F5C90()
{
  (*(v0[69] + 8))(v0[83], v0[68]);
  v25 = v0[122];
  v1 = v0[83];
  v2 = v0[82];
  v3 = v0[81];
  v4 = v0[80];
  v5 = v0[79];
  v6 = v0[78];
  v7 = v0[77];
  v8 = v0[76];
  v9 = v0[75];
  v10 = v0[74];
  v13 = v0[73];
  v14 = v0[72];
  v15 = v0[71];
  v16 = v0[67];
  v17 = v0[65];
  v18 = v0[64];
  v19 = v0[63];
  v20 = v0[59];
  v21 = v0[56];
  v22 = v0[53];
  v23 = v0[52];
  v24 = v0[49];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1001F5E44()
{
  v1 = v0[128];
  v2 = v0[123];
  v3 = v0[83];
  v4 = v0[68];
  v2(v0[80], v4);
  v2(v3, v4);
  v29 = v0[135];
  v5 = v0[83];
  v6 = v0[82];
  v7 = v0[81];
  v8 = v0[80];
  v9 = v0[79];
  v10 = v0[78];
  v11 = v0[77];
  v12 = v0[76];
  v13 = v0[75];
  v14 = v0[74];
  v17 = v0[73];
  v18 = v0[72];
  v19 = v0[71];
  v20 = v0[67];
  v21 = v0[65];
  v22 = v0[64];
  v23 = v0[63];
  v24 = v0[59];
  v25 = v0[56];
  v26 = v0[53];
  v27 = v0[52];
  v28 = v0[49];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1001F6004()
{
  v95 = v0;
  v1 = *(v0 + 1112);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 752);
  v4 = *(v0 + 744);
  v5 = *(v0 + 688);
  v6 = *(v0 + 664);
  v7 = *(v0 + 568);
  v8 = *(v0 + 544);

  v4(v7, v6, v8);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1024);
  v13 = *(v0 + 984);
  v14 = *(v0 + 568);
  v15 = *(v0 + 544);
  if (v11)
  {
    v88 = *(v0 + 1112);
    v16 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v94 = v91;
    *v16 = 141558531;
    *(v16 + 4) = 1752392040;
    *(v16 + 12) = 2081;
    sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    v13(v14, v15);
    v20 = sub_1000136BC(v17, v19, &v94);

    *(v16 + 14) = v20;
    *(v16 + 22) = 2112;
    swift_errorRetain();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 24) = v21;
    *v85 = v21;
    _os_log_impl(&_mh_execute_header, v9, v10, "Unable to create key maps for imported share %{private,mask.hash}s: %@", v16, 0x20u);
    sub_10000B3A8(v85, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v91);
  }

  else
  {
    v22 = *(v0 + 1112);

    v13(v14, v15);
  }

  v89 = *(v0 + 768);
  v92 = *(v0 + 776);
  v23 = *(v0 + 332);
  v75 = *(v0 + 752);
  v24 = *(v0 + 744);
  v83 = *(v0 + 720);
  v86 = *(v0 + 688);
  v25 = *(v0 + 656);
  v26 = *(v0 + 640);
  v73 = v26;
  v27 = *(v0 + 560);
  v28 = *(v0 + 544);
  v63 = *(v0 + 416);
  v64 = *(v0 + 424);
  v65 = *(v0 + 400);
  v66 = *(v0 + 408);
  v29 = *(v0 + 392);
  v67 = v29;
  v81 = *(v0 + 384);
  v69 = type metadata accessor for TaskPriority();
  v71 = *(*(v69 - 8) + 56);
  v71(v29, 1, 1, v69);
  v30 = v28;
  v24(v25, v26, v28);
  sub_100203698(v64, v63, type metadata accessor for SharedBeaconRecord);
  v31 = (v23 + 32) & ~v23;
  v32 = (v27 + v31 + *(v65 + 80)) & ~*(v65 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  v89(v33 + v31, v25, v30);
  sub_100203304(v63, v33 + v32, type metadata accessor for SharedBeaconRecord);
  sub_100A838D4(0, 0, v67, &unk_101392688, v33);

  v71(v67, 1, 1, v69);
  v24(v25, v73, v30);
  v35 = sub_100019348(&qword_101699B98, v34, type metadata accessor for ImportedShareUseCase);
  v36 = (v23 + 40) & ~v23;
  v37 = swift_allocObject();
  v37[2] = v81;
  v37[3] = v35;
  v37[4] = v81;
  v89(v37 + v36, v25, v30);
  swift_retain_n();
  sub_100A838D4(0, 0, v67, &unk_101392698, v37);

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();

  v40 = os_log_type_enabled(v38, v39);
  v41 = *(v0 + 720);
  if (v40)
  {
    v42 = *(v0 + 712);
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v94 = v44;
    *v43 = 141558275;
    *(v43 + 4) = 1752392040;
    *(v43 + 12) = 2081;
    v45 = sub_1000136BC(v42, v41, &v94);

    *(v43 + 14) = v45;
    _os_log_impl(&_mh_execute_header, v38, v39, "Successfully imported share for url %{private,mask.hash}s", v43, 0x16u);
    sub_100007BAC(v44);
  }

  else
  {
  }

  v46 = *(v0 + 1072);
  v47 = *(v0 + 1024);
  v48 = *(v0 + 984);
  v49 = *(v0 + 640);
  v50 = *(v0 + 544);
  v51 = *(v0 + 424);
  v93 = [objc_allocWithZone(SPDelegatedShareImportResult) initWithShare:v46];

  sub_100203700(v51, type metadata accessor for SharedBeaconRecord);
  v48(v49, v50);
  v52 = *(v0 + 1024);
  v53 = *(v0 + 656);
  v54 = *(v0 + 648);
  v55 = *(v0 + 640);
  v56 = *(v0 + 632);
  v57 = *(v0 + 624);
  v58 = *(v0 + 616);
  v59 = *(v0 + 608);
  v60 = *(v0 + 600);
  v68 = *(v0 + 592);
  v70 = *(v0 + 584);
  v72 = *(v0 + 576);
  v74 = *(v0 + 568);
  v76 = *(v0 + 536);
  v77 = *(v0 + 520);
  v78 = *(v0 + 512);
  v79 = *(v0 + 504);
  v80 = *(v0 + 472);
  v82 = *(v0 + 448);
  v84 = *(v0 + 424);
  v87 = *(v0 + 416);
  v90 = *(v0 + 392);
  (*(v0 + 984))(*(v0 + 664), *(v0 + 544));

  v61 = *(v0 + 8);

  return v61(v93);
}

void sub_1001F679C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionTokenRecord();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v36 - v9;
  v11 = sub_1000BC4D4(&qword_101699BA0, &qword_1013D6AB0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v36 - v13);
  sub_1000D2A70(a1, &v36 - v13, &qword_101699BA0, &qword_1013D6AB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v14;
    if (qword_101694780 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000076D4(v16, qword_10177AE40);
    sub_100203698(a2, v8, type metadata accessor for SessionTokenRecord);
    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v19 = 141558531;
      *(v19 + 4) = 1752392040;
      *(v19 + 12) = 2081;
      type metadata accessor for UUID();
      sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      sub_100203700(v8, type metadata accessor for SessionTokenRecord);
      v23 = sub_1000136BC(v20, v22, &v37);

      *(v19 + 14) = v23;
      *(v19 + 22) = 2082;
      v36 = v15;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v24 = String.init<A>(describing:)();
      v26 = sub_1000136BC(v24, v25, &v37);

      *(v19 + 24) = v26;
      _os_log_impl(&_mh_execute_header, v17, v18, "Failed to save SessionTokenRecord:\n%{private,mask.hash}s: %{public}s.", v19, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100203700(v8, type metadata accessor for SessionTokenRecord);
    }
  }

  else
  {
    if (qword_101694780 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_1000076D4(v27, qword_10177AE40);
    sub_100203698(a2, v10, type metadata accessor for SessionTokenRecord);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v37 = v31;
      *v30 = 141558275;
      *(v30 + 4) = 1752392040;
      *(v30 + 12) = 2081;
      type metadata accessor for UUID();
      sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      sub_100203700(v10, type metadata accessor for SessionTokenRecord);
      v35 = sub_1000136BC(v32, v34, &v37);

      *(v30 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v28, v29, "Saved session token record %{private,mask.hash}s", v30, 0x16u);
      sub_100007BAC(v31);
    }

    else
    {

      sub_100203700(v10, type metadata accessor for SessionTokenRecord);
    }

    sub_10000B3A8(v14, &qword_101699BA0, &qword_1013D6AB0);
  }
}

uint64_t sub_1001F6D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for UUID();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();

  return _swift_task_switch(sub_1001F6DE0, 0, 0);
}

uint64_t sub_1001F6DE0()
{
  v22 = v0;
  if (qword_101694780 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  v0[7] = sub_1000076D4(v5, qword_10177AE40);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[4];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v12 = 141558275;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1000136BC(v14, v16, &v21);

    *(v12 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Initial fetch of locations for imported beacon id %{private,mask.hash}s", v12, 0x16u);
    sub_100007BAC(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = async function pointer to daemon.getter[1];
  v19 = swift_task_alloc();
  v0[8] = v19;
  *v19 = v0;
  v19[1] = sub_1001F7068;

  return daemon.getter();
}

uint64_t sub_1001F7068(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 64);
  v12 = *v1;
  v3[9] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[10] = v6;
  v7 = type metadata accessor for Daemon();
  v3[11] = v7;
  v8 = type metadata accessor for LegacyServiceContainer();
  v9 = sub_100019348(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_100019348(&unk_101698D70, 255, type metadata accessor for LegacyServiceContainer);
  *v6 = v12;
  v6[1] = sub_1001F7250;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1001F7250(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v10 = *v2;
  v4[12] = a1;
  v4[13] = v1;

  if (v1)
  {
    v6 = v4[9];

    v7 = sub_1001F7620;
    v8 = 0;
  }

  else
  {
    v7 = sub_1001F738C;
    v8 = a1;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_1001F738C()
{
  v1 = v0[12];
  v2 = v0[13];
  sub_10001B108();
  v0[14] = v3;
  v4 = v0[11];
  v5 = v0[9];
  if (v2)
  {

    sub_100019348(&qword_1016969E0, 255, &type metadata accessor for Daemon);
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
    v9 = sub_1001F75AC;
  }

  else
  {
    sub_100019348(&qword_1016969E0, 255, &type metadata accessor for Daemon);
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v10;
    v9 = sub_1001F74BC;
  }

  return _swift_task_switch(v9, v6, v8);
}

uint64_t sub_1001F74BC()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);

  return _swift_task_switch(sub_1001F7530, 0, 0);
}

uint64_t sub_1001F7530()
{
  v1 = v0[14];
  v2 = v0[6];
  sub_1004ABE08(v0[3]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1001F75AC()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);

  return _swift_task_switch(sub_1001F7620, 0, 0);
}

uint64_t sub_1001F7620()
{
  v1 = v0[7];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "No BeaconManagerService available.", v4, 2u);
  }

  v5 = v0[6];

  v6 = type metadata accessor for Daemon.Error();
  sub_100019348(&qword_101697368, 255, &type metadata accessor for Daemon.Error);
  swift_allocError();
  *v7 = 0xD000000000000014;
  v7[1] = 0x800000010134D3C0;
  (*(*(v6 - 8) + 104))(v7, enum case for Daemon.Error.missingService(_:), v6);
  swift_willThrow();

  v8 = v0[1];

  return v8();
}

uint64_t sub_1001F77C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_100014650;

  return sub_1001F7860(a5);
}

uint64_t sub_1001F7860(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for Connection.TransactionMode();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = type metadata accessor for Table();
  v2[10] = v6;
  v7 = *(v6 - 8);
  v2[11] = v7;
  v8 = *(v7 + 64) + 15;
  v2[12] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v2[13] = v9;
  v10 = *(v9 - 8);
  v2[14] = v10;
  v11 = *(v10 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v12 = *(*(sub_1000BC4D4(&qword_1016AA430, &unk_101392650) - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v13 = type metadata accessor for ObservedAdvertisement.BeaconIndexInformation(0);
  v2[19] = v13;
  v14 = *(v13 - 8);
  v2[20] = v14;
  v15 = *(v14 + 64) + 15;
  v2[21] = swift_task_alloc();
  v16 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
  v2[22] = v16;
  v17 = *(v16 - 8);
  v2[23] = v17;
  v18 = *(v17 + 64) + 15;
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v19 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  v2[27] = swift_task_alloc();
  v20 = *(*(sub_1000BC4D4(&unk_1016C1120, &qword_1013C49D0) - 8) + 64) + 15;
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v21 = type metadata accessor for ObservedAdvertisement(0);
  v2[30] = v21;
  v22 = *(v21 - 8);
  v2[31] = v22;
  v23 = *(v22 + 64) + 15;
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v24 = async function pointer to daemon.getter[1];
  v25 = swift_task_alloc();
  v2[40] = v25;
  *v25 = v2;
  v25[1] = sub_1001F7C54;

  return daemon.getter();
}

uint64_t sub_1001F7C54(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 320);
  v12 = *v1;
  v3[41] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[42] = v6;
  v7 = type metadata accessor for Daemon();
  v3[43] = v7;
  v8 = type metadata accessor for ObservationStoreService();
  v9 = sub_100019348(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v3[44] = v9;
  v10 = sub_100019348(&qword_1016AA450, 255, type metadata accessor for ObservationStoreService);
  *v6 = v12;
  v6[1] = sub_1001F7E48;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1001F7E48(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 336);
  v6 = *v2;
  v4[45] = a1;

  v7 = v4[41];
  if (v1)
  {
    v8 = v4[6];

    return _swift_task_switch(sub_1001FA82C, v8, 0);
  }

  else
  {

    v9 = swift_task_alloc();
    v4[46] = v9;
    *v9 = v6;
    v9[1] = sub_1001F800C;

    return sub_1010CC680(45.0);
  }
}

uint64_t sub_1001F800C(uint64_t a1)
{
  v3 = *(*v2 + 368);
  v4 = *v2;
  v4[47] = a1;
  v4[48] = v1;

  if (v1)
  {
    v5 = v4[6];

    return _swift_task_switch(sub_1001FAB04, v5, 0);
  }

  else
  {
    v6 = async function pointer to daemon.getter[1];
    v7 = swift_task_alloc();
    v4[49] = v7;
    *v7 = v4;
    v7[1] = sub_1001F8178;

    return daemon.getter();
  }
}

uint64_t sub_1001F8178(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 392);
  v5 = *v1;
  v3[50] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[51] = v7;
  v8 = type metadata accessor for LegacyServiceContainer();
  v9 = sub_100019348(&unk_101698D70, 255, type metadata accessor for LegacyServiceContainer);
  *v7 = v5;
  v7[1] = sub_1001F8330;
  v10 = v3[44];
  v11 = v3[43];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1001F8330(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 408);
  v6 = *v2;
  v4[52] = a1;
  v4[53] = v1;

  if (v1)
  {
    v7 = v4[50];

    v8 = v4[6];
    v9 = sub_1001F87B0;
  }

  else
  {
    v9 = sub_1001F8474;
    v8 = a1;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1001F8474()
{
  v1 = v0[52];
  v2 = v0[53];
  sub_10001B108();
  v0[54] = v3;
  v4 = v0[50];
  v5 = v0[43];
  if (v2)
  {

    sub_100019348(&qword_1016969E0, 255, &type metadata accessor for Daemon);
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
    v9 = sub_1001F873C;
  }

  else
  {
    sub_100019348(&qword_1016969E0, 255, &type metadata accessor for Daemon);
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v10;
    v9 = sub_1001F85A4;
  }

  return _swift_task_switch(v9, v6, v8);
}

uint64_t sub_1001F85A4()
{
  v1 = v0[52];
  v2 = v0[50];
  v3 = v0[6];

  return _swift_task_switch(sub_1001F861C, v3, 0);
}

uint64_t sub_1001F861C()
{
  v1 = v0[54];
  v0[55] = v0[6];
  v0[56] = v1;
  v2 = swift_allocObject();
  v0[57] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v4 = swift_task_alloc();
  v0[58] = v4;
  v5 = sub_1000BC4D4(&qword_101699B80, &unk_101392660);
  *v4 = v0;
  v4[1] = sub_1001F88C0;

  return unsafeBlocking<A>(context:_:)(v0 + 2, 0xD000000000000014, 0x8000000101392560, sub_10001F63C, v2, v5);
}

uint64_t sub_1001F873C()
{
  v1 = v0[52];
  v2 = v0[50];

  v3 = v0[6];

  return _swift_task_switch(sub_1001F87B0, v3, 0);
}

uint64_t sub_1001F87B0()
{
  v0[55] = v0[6];
  v0[56] = 0;
  v1 = swift_allocObject();
  v0[57] = v1;
  *(v1 + 16) = 0;
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];
  v3 = swift_task_alloc();
  v0[58] = v3;
  v4 = sub_1000BC4D4(&qword_101699B80, &unk_101392660);
  *v3 = v0;
  v3[1] = sub_1001F88C0;

  return unsafeBlocking<A>(context:_:)(v0 + 2, 0xD000000000000014, 0x8000000101392560, sub_10001F63C, v1, v4);
}

uint64_t sub_1001F88C0()
{
  v1 = *v0;
  v2 = *(*v0 + 464);
  v3 = *(*v0 + 456);
  v6 = *v0;

  v4 = *(v1 + 440);

  return _swift_task_switch(sub_1001F89F4, v4, 0);
}

uint64_t sub_1001F89F4()
{
  v194 = v0;
  v1 = *(v0 + 376);
  v2 = *(v0 + 16);
  *(v0 + 472) = v2;
  v188 = *(v1 + 16);
  log = v2;
  if (v188)
  {
    v3 = 0;
    v158 = *(v0 + 256);
    v184 = *(v0 + 248);
    v180 = v1 + ((*(v184 + 80) + 32) & ~*(v184 + 80));
    v4 = *(v0 + 112);
    v176 = (v4 + 16);
    v5 = (v4 + 8);
    v160 = (v4 + 56);
    v6 = *(v0 + 184);
    v165 = (v6 + 56);
    v167 = v5;
    v157 = v6;
    v163 = (v6 + 48);
    v7 = *(v0 + 312);
    v159 = v7;
    v172 = v1;
    while (1)
    {
      if (v3 >= *(v1 + 16))
      {
        __break(1u);
        goto LABEL_39;
      }

      sub_100203698(v180 + *(v184 + 72) * v3, *(v0 + 312), type metadata accessor for ObservedAdvertisement);
      v8 = *(v7 + 16);
      *(v0 + 480) = v8;
      v9 = *(v7 + 24);
      *(v0 + 488) = v9;
      if ((v9 & 0x2000000000000000) != 0)
      {
        if (qword_101694780 != -1)
        {
          swift_once();
        }

        v16 = *(v0 + 312);
        v17 = *(v0 + 256);
        v18 = *(v0 + 128);
        v19 = *(v0 + 104);
        v20 = *(v0 + 40);
        v21 = type metadata accessor for Logger();
        sub_1000076D4(v21, qword_10177AE40);
        sub_100203698(v16, v17, type metadata accessor for ObservedAdvertisement);
        (*v176)(v18, v20, v19);
        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.default.getter();
        v24 = os_log_type_enabled(v22, v23);
        v25 = *(v0 + 256);
        v26 = *(v0 + 128);
        v27 = *(v0 + 104);
        if (v24)
        {
          v28 = swift_slowAlloc();
          v193 = swift_slowAlloc();
          *v28 = 141558787;
          *(v28 + 4) = 1752392040;
          *(v28 + 12) = 2081;
          v29 = sub_10001904C(*(v158 + 16), *(v158 + 24));
          v31 = v30;
          sub_100203700(v25, type metadata accessor for ObservedAdvertisement);
          v32 = sub_1000136BC(v29, v31, &v193);

          *(v28 + 14) = v32;
          *(v28 + 22) = 2160;
          *(v28 + 24) = 1752392040;
          *(v28 + 32) = 2081;
          sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID);
          v33 = dispatch thunk of CustomStringConvertible.description.getter();
          v35 = v34;
          (*v167)(v26, v27);
          v36 = v33;
          v1 = v172;
          v37 = sub_1000136BC(v36, v35, &v193);
          v7 = v159;

          *(v28 + 34) = v37;
          _os_log_impl(&_mh_execute_header, v22, v23, "Observation advertisement %{private,mask.hash}s did not get reconciled for imported beacon %{private,mask.hash}s", v28, 0x2Au);
          swift_arrayDestroy();
        }

        else
        {

          (*v167)(v26, v27);
          sub_100203700(v25, type metadata accessor for ObservedAdvertisement);
        }

        sub_100203700(*(v0 + 312), type metadata accessor for ObservedAdvertisement);
        v2 = log;
      }

      else
      {
        if (v2)
        {
          v10 = *(v0 + 216);
          v11 = *(v0 + 104);
          (*v176)(v10, *(v0 + 40), v11);
          v12 = 1;
          (*v160)(v10, 0, 1, v11);

          v13 = sub_1012DD334(v8, v9, v10);
          v14 = v13[2];
          if (v14)
          {
            sub_100203698(v13 + ((*(v157 + 80) + 32) & ~*(v157 + 80)) + *(v157 + 72) * (v14 - 1), *(v0 + 232), type metadata accessor for BeaconKeyManager.IndexInformation);
            v12 = 0;
          }

          v15 = *(v0 + 216);

          sub_10000B3A8(v15, &qword_1016980D0, &unk_10138F3B0);
        }

        else
        {
          v12 = 1;
        }

        v39 = *(v0 + 224);
        v38 = *(v0 + 232);
        v40 = *(v0 + 176);
        (*v165)(v38, v12, 1, v40);
        sub_1000D2A70(v38, v39, &unk_1016C1120, &qword_1013C49D0);
        if ((*v163)(v39, 1, v40) != 1)
        {
          v77 = *(v0 + 376);
          v78 = *(v0 + 224);
          v79 = *(v0 + 208);
          v80 = *(v0 + 168);
          v81 = *(v0 + 176);
          v82 = *(v0 + 152);
          v83 = *(v0 + 104);

          sub_100203304(v78, v79, type metadata accessor for BeaconKeyManager.IndexInformation);
          (*v176)(v80, v79, v83);
          v182 = v81;
          v84 = (v79 + *(v81 + 20));
          v85 = v84[3];
          v86 = v84[4];
          sub_1000035D0(v84, v85);
          LOBYTE(v85) = sub_10002BD40(v85, v86);
          *(v0 + 569) = v85;
          v87 = v84[4];
          sub_1000035D0(v84, v84[3]);
          v88 = *(v87 + 56);
          dispatch thunk of RawRepresentable.rawValue.getter();
          v89 = *(v0 + 24);
          *(v0 + 496) = v89;
          *(v80 + *(v82 + 20)) = v85 & 1;
          *(v80 + *(v82 + 24)) = v89;
          if (qword_101694780 != -1)
          {
            swift_once();
          }

          v91 = *(v0 + 304);
          v90 = *(v0 + 312);
          v93 = *(v0 + 288);
          v92 = *(v0 + 296);
          v94 = *(v0 + 280);
          v96 = *(v0 + 200);
          v95 = *(v0 + 208);
          v186 = *(v0 + 192);
          v190 = *(v0 + 272);
          v97 = type metadata accessor for Logger();
          *(v0 + 504) = sub_1000076D4(v97, qword_10177AE40);
          sub_100203698(v90, v91, type metadata accessor for ObservedAdvertisement);
          sub_100203698(v90, v92, type metadata accessor for ObservedAdvertisement);
          sub_100203698(v90, v93, type metadata accessor for ObservedAdvertisement);
          sub_100203698(v90, v94, type metadata accessor for ObservedAdvertisement);
          sub_100203698(v95, v96, type metadata accessor for BeaconKeyManager.IndexInformation);
          sub_100203698(v95, v186, type metadata accessor for BeaconKeyManager.IndexInformation);
          sub_100203698(v90, v190, type metadata accessor for ObservedAdvertisement);
          v98 = Logger.logObject.getter();
          v99 = static os_log_type_t.default.getter();
          v100 = os_log_type_enabled(v98, v99);
          v102 = *(v0 + 296);
          v101 = *(v0 + 304);
          v103 = *(v0 + 288);
          if (v100)
          {
            v191 = v99;
            v104 = swift_slowAlloc();
            v193 = swift_slowAlloc();
            *v104 = 141560067;
            *(v104 + 4) = 1752392040;
            *(v104 + 12) = 2081;
            v105 = sub_10001904C(*(v101 + 16), *(v101 + 24));
            v107 = v106;
            sub_100203700(v101, type metadata accessor for ObservedAdvertisement);
            v108 = sub_1000136BC(v105, v107, &v193);

            *(v104 + 14) = v108;
            *(v104 + 22) = 2082;
            sub_10001993C(*(v102 + 32) & 0xB);
            v109 = sub_100019E48();
            v111 = v110;
            sub_100203700(v102, type metadata accessor for ObservedAdvertisement);
            v112 = sub_1000136BC(v109, v111, &v193);

            *(v104 + 24) = v112;
            *(v104 + 32) = 2082;
            if (*(v103 + 35))
            {
              v113 = 0xE400000000000000;
              v114 = 1701736302;
            }

            else
            {
              *(v0 + 568) = *(*(v0 + 288) + 34);
              sub_1000198E8();
              v118 = FixedWidthInteger.data.getter();
              v120 = v119;
              v114 = Data.hexString.getter();
              v113 = v121;
              sub_100016590(v118, v120);
            }

            v122 = *(v0 + 280);
            v174 = *(v0 + 240);
            v178 = *(v0 + 272);
            v124 = *(v0 + 192);
            v123 = *(v0 + 200);
            v125 = *(v0 + 144);
            v169 = *(v0 + 104);
            sub_100203700(*(v0 + 288), type metadata accessor for ObservedAdvertisement);
            v126 = sub_1000136BC(v114, v113, &v193);

            *(v104 + 34) = v126;
            *(v104 + 42) = 2082;
            v127 = sub_100018DE0(*(v122 + 32));
            v129 = v128;
            sub_100203700(v122, type metadata accessor for ObservedAdvertisement);
            v130 = sub_1000136BC(v127, v129, &v193);

            *(v104 + 44) = v130;
            *(v104 + 52) = 2082;
            v131 = (v123 + *(v182 + 20));
            v132 = v131[4];
            sub_1000035D0(v131, v131[3]);
            v133 = *(v132 + 16);
            v134 = dispatch thunk of CustomStringConvertible.description.getter();
            v136 = v135;
            sub_100203700(v123, type metadata accessor for BeaconKeyManager.IndexInformation);
            v137 = sub_1000136BC(v134, v136, &v193);

            *(v104 + 54) = v137;
            *(v104 + 62) = 2160;
            *(v104 + 64) = 1752392040;
            *(v104 + 72) = 2081;
            sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID);
            v138 = dispatch thunk of CustomStringConvertible.description.getter();
            v140 = v139;
            sub_100203700(v124, type metadata accessor for BeaconKeyManager.IndexInformation);
            v141 = sub_1000136BC(v138, v140, &v193);

            *(v104 + 74) = v141;
            *(v104 + 82) = 1024;
            sub_1000D2A70(v178 + *(v174 + 48), v125, &qword_1016AA430, &unk_101392650);
            v142 = type metadata accessor for ObservedAdvertisement.Location(0);
            LODWORD(v136) = (*(*(v142 - 8) + 48))(v125, 1, v142) != 1;
            sub_10000B3A8(v125, &qword_1016AA430, &unk_101392650);
            sub_100203700(v178, type metadata accessor for ObservedAdvertisement);
            *(v104 + 84) = v136;
            _os_log_impl(&_mh_execute_header, v98, v191, "Imported Beacon Reconciled advertisement %{private,mask.hash}s, multiPart: %{public}s, hint: %{public}s, Type18: %{public}s,\nindex: %{public}s, beacon: %{private,mask.hash}s,\nhasLocation: %{BOOL}d.", v104, 0x58u);
            swift_arrayDestroy();
          }

          else
          {
            v115 = *(v0 + 280);
            v117 = *(v0 + 192);
            v116 = *(v0 + 200);
            sub_100203700(*(v0 + 272), type metadata accessor for ObservedAdvertisement);

            sub_100203700(v117, type metadata accessor for BeaconKeyManager.IndexInformation);
            sub_100203700(v115, type metadata accessor for ObservedAdvertisement);
            sub_100203700(v103, type metadata accessor for ObservedAdvertisement);
            sub_100203700(v102, type metadata accessor for ObservedAdvertisement);
            sub_100203700(v101, type metadata accessor for ObservedAdvertisement);
            sub_100203700(v116, type metadata accessor for BeaconKeyManager.IndexInformation);
          }

          v143 = *(v0 + 312);
          v144 = *(v0 + 264);
          v145 = *(v0 + 240);
          v147 = *(v0 + 160);
          v146 = *(v0 + 168);
          v148 = *(v0 + 152);
          v192 = *(v143 + 9);
          v150 = *(v159 + 16);
          v149 = *(v159 + 24);
          v187 = *(v143 + 32);
          v183 = *(v143 + 34);
          v179 = *(v143 + 35);
          v175 = *(v143 + 36);
          v151 = v145[11];
          v152 = type metadata accessor for Date();
          (*(*(v152 - 8) + 16))(v144 + v151, v143 + v151, v152);
          LOBYTE(v151) = *(v143 + v145[14]);
          sub_1000D2A70(v143 + v145[12], v144 + v145[12], &qword_1016AA430, &unk_101392650);
          v153 = v145[13];
          sub_100203698(v146, v144 + v153, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
          (*(v147 + 56))(v144 + v153, 0, 1, v148);
          *v144 = 0;
          *(v144 + 8) = 1;
          *(v144 + 9) = v192;
          *(v144 + 16) = v150;
          *(v144 + 24) = v149;
          *(v144 + 32) = v187;
          *(v144 + 34) = v183;
          *(v144 + 35) = v179;
          *(v144 + 36) = v175;
          *(v144 + v145[14]) = v151;
          sub_100029784(v150, v149);
          v154 = swift_task_alloc();
          *(v0 + 512) = v154;
          *v154 = v0;
          v154[1] = sub_1001F9B34;
          v155 = *(v0 + 360);
          v156 = *(v0 + 264);

          return sub_10002E1FC(v156);
        }

        v41 = *(v0 + 312);
        v42 = *(v0 + 224);
        sub_10000B3A8(*(v0 + 232), &unk_1016C1120, &qword_1013C49D0);
        sub_100203700(v41, type metadata accessor for ObservedAdvertisement);
        v43 = v42;
        v1 = v172;
        sub_10000B3A8(v43, &unk_1016C1120, &qword_1013C49D0);
      }

      if (v188 == ++v3)
      {
        v44 = *(v0 + 376);
        break;
      }
    }
  }

  if (qword_101694780 != -1)
  {
LABEL_39:
    swift_once();
  }

  v46 = *(v0 + 112);
  v45 = *(v0 + 120);
  v47 = *(v0 + 104);
  v48 = *(v0 + 40);
  v49 = type metadata accessor for Logger();
  sub_1000076D4(v49, qword_10177AE40);
  (*(v46 + 16))(v45, v48, v47);
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();
  v52 = os_log_type_enabled(v50, v51);
  v53 = *(v0 + 448);
  v54 = *(v0 + 360);
  v56 = *(v0 + 112);
  v55 = *(v0 + 120);
  v57 = *(v0 + 104);
  if (v52)
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v193 = v59;
    *v58 = 141558275;
    *(v58 + 4) = 1752392040;
    *(v58 + 12) = 2081;
    sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID);
    v60 = dispatch thunk of CustomStringConvertible.description.getter();
    v62 = v61;
    (*(v56 + 8))(v55, v57);
    v63 = sub_1000136BC(v60, v62, &v193);

    *(v58 + 14) = v63;
    _os_log_impl(&_mh_execute_header, v50, v51, "No advertisement found in local disk for imported beacon %{private,mask.hash}s", v58, 0x16u);
    sub_100007BAC(v59);
  }

  else
  {
    v64 = *(v0 + 360);

    (*(v56 + 8))(v55, v57);
  }

  v66 = *(v0 + 304);
  v65 = *(v0 + 312);
  v67 = *(v0 + 288);
  v68 = *(v0 + 296);
  v70 = *(v0 + 272);
  v69 = *(v0 + 280);
  v72 = *(v0 + 256);
  v71 = *(v0 + 264);
  v74 = *(v0 + 224);
  v73 = *(v0 + 232);
  v161 = *(v0 + 216);
  v162 = *(v0 + 208);
  v164 = *(v0 + 200);
  v166 = *(v0 + 192);
  v168 = *(v0 + 168);
  loga = *(v0 + 144);
  v173 = *(v0 + 136);
  v177 = *(v0 + 128);
  v181 = *(v0 + 120);
  v185 = *(v0 + 96);
  v189 = *(v0 + 72);

  v75 = *(v0 + 8);

  return v75();
}

uint64_t sub_1001F9B34()
{
  v2 = *v1;
  v3 = *(*v1 + 512);
  v4 = *v1;
  *(*v1 + 520) = v0;

  v5 = *(v2 + 440);
  if (v0)
  {
    v6 = sub_1001FAC7C;
  }

  else
  {
    v6 = sub_1001F9C60;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1001F9C60()
{
  v1 = v0[63];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Added entries to Observations DB for imported beacon at the time of creation.", v4, 2u);
  }

  v5 = v0[6];

  v6 = *(v5 + 112);
  v0[66] = v6;

  return _swift_task_switch(sub_1001F9D40, v6, 0);
}

uint64_t sub_1001F9D40()
{
  v1 = *(v0 + 528);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 536) = v3;
  v4 = type metadata accessor for BeaconKeyManager(0);
  *v3 = v0;
  v3[1] = sub_1001F9E20;
  v5 = *(v0 + 528);

  return unsafeBlocking<A>(context:_:)(v0 + 32, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v5, v4);
}

uint64_t sub_1001F9E20()
{
  v1 = *(*v0 + 536);
  v2 = *(*v0 + 528);
  v4 = *v0;

  return _swift_task_switch(sub_1001F9F38, v2, 0);
}

uint64_t sub_1001F9F5C()
{
  v1 = v0[17];
  v2 = *(v0[68] + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);
  v0[69] = v2;

  v3 = getuid();
  sub_1000294F0(v3);

  return _swift_task_switch(sub_1001F9FFC, v2, 0);
}

uint64_t sub_1001F9FFC()
{
  v1 = *(v0 + 552);
  v2 = *(v1 + 112);
  if (!v2)
  {
    sub_10020223C();
    v13 = swift_allocError();
    *v19 = 2;
    *(v19 + 4) = 1;
    swift_willThrow();
LABEL_7:

    goto LABEL_8;
  }

  v3 = *(v1 + 112);

  v4 = sub_1002072CC();
  if (!v4)
  {
    v20 = *(v0 + 552);
    sub_10020223C();
    v13 = swift_allocError();
    *v21 = 2;
    *(v21 + 4) = 1;
    swift_willThrow();

    goto LABEL_7;
  }

  v5 = v4;
  v36 = *(v0 + 496);
  v39 = *(v0 + 520);
  v34 = *(v0 + 488);
  v6 = *(v0 + 168);
  v7 = *(v0 + 136);
  v8 = *(v0 + 96);
  v9 = *(v0 + 72);
  v10 = *(v0 + 64);
  v30 = *(v0 + 480);
  v32 = *(v0 + 56);
  v11 = *(v0 + 569) & 1;
  (*(*(v0 + 88) + 16))(v8, v2 + OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_keys, *(v0 + 80));
  v12 = swift_task_alloc();
  *(v12 + 16) = v8;
  *(v12 + 24) = v7;
  *(v12 + 32) = v6;
  *(v12 + 40) = v11;
  *(v12 + 48) = v36;
  *(v12 + 56) = v30;
  *(v12 + 64) = v34;
  *(v12 + 72) = v5;
  (*(v10 + 104))(v9, enum case for Connection.TransactionMode.deferred(_:), v32);
  Connection.transaction(_:block:)();
  v13 = v39;
  v14 = *(v0 + 552);
  if (v39)
  {
    v15 = *(v0 + 88);
    v16 = *(v0 + 72);
    v37 = *(v0 + 80);
    v40 = *(v0 + 96);
    v18 = *(v0 + 56);
    v17 = *(v0 + 64);

    (*(v17 + 8))(v16, v18);

    (*(v15 + 8))(v40, v37);
LABEL_8:
    *(v0 + 560) = v13;
    (*(*(v0 + 112) + 8))(*(v0 + 136), *(v0 + 104));
    v22 = *(v0 + 440);
    v23 = sub_1001FA60C;
    goto LABEL_9;
  }

  v38 = *(v0 + 136);
  v41 = *(v0 + 528);
  v24 = *(v0 + 112);
  v25 = *(v0 + 88);
  v33 = *(v0 + 96);
  v35 = *(v0 + 104);
  v26 = *(v0 + 72);
  v31 = *(v0 + 80);
  v27 = *(v0 + 56);
  v28 = *(v0 + 64);

  (*(v28 + 8))(v26, v27);

  (*(v25 + 8))(v33, v31);
  (*(v24 + 8))(v38, v35);
  v23 = sub_1001FA318;
  v22 = v41;
LABEL_9:

  return _swift_task_switch(v23, v22, 0);
}

uint64_t sub_1001FA318()
{
  v1 = *(*(v0 + 528) + 128);
  sub_100A8AF58();
  v2 = *(v0 + 440);

  return _swift_task_switch(sub_1001FA384, v2, 0);
}

uint64_t sub_1001FA384()
{
  v1 = v0[63];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Posted beacons set changed darwin notification for imported beacon at the time of creation.", v4, 2u);
  }

  v5 = v0[59];
  v6 = v0[56];
  v7 = v0[45];
  v8 = v0[39];
  v9 = v0[33];
  v10 = v0[29];
  v11 = v0[26];
  v12 = v0[21];

  sub_100203700(v9, type metadata accessor for ObservedAdvertisement);
  sub_10000B3A8(v10, &unk_1016C1120, &qword_1013C49D0);
  sub_100203700(v12, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100203700(v11, type metadata accessor for BeaconKeyManager.IndexInformation);
  sub_100203700(v8, type metadata accessor for ObservedAdvertisement);
  v14 = v0[38];
  v13 = v0[39];
  v15 = v0[36];
  v16 = v0[37];
  v18 = v0[34];
  v17 = v0[35];
  v20 = v0[32];
  v19 = v0[33];
  v22 = v0[28];
  v21 = v0[29];
  v25 = v0[27];
  v26 = v0[26];
  v27 = v0[25];
  v28 = v0[24];
  v29 = v0[21];
  v30 = v0[18];
  v31 = v0[17];
  v32 = v0[16];
  v33 = v0[15];
  v34 = v0[12];
  v35 = v0[9];

  v23 = v0[1];

  return v23();
}

uint64_t sub_1001FA60C()
{
  v1 = v0[59];
  v2 = v0[56];
  v3 = v0[45];
  v4 = v0[39];
  v5 = v0[33];
  v6 = v0[29];
  v7 = v0[26];
  v8 = v0[21];

  sub_100203700(v5, type metadata accessor for ObservedAdvertisement);
  sub_10000B3A8(v6, &unk_1016C1120, &qword_1013C49D0);
  sub_100203700(v8, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100203700(v7, type metadata accessor for BeaconKeyManager.IndexInformation);
  sub_100203700(v4, type metadata accessor for ObservedAdvertisement);
  v32 = v0[70];
  v10 = v0[38];
  v9 = v0[39];
  v12 = v0[36];
  v11 = v0[37];
  v14 = v0[34];
  v13 = v0[35];
  v16 = v0[32];
  v15 = v0[33];
  v18 = v0[28];
  v17 = v0[29];
  v21 = v0[27];
  v22 = v0[26];
  v23 = v0[25];
  v24 = v0[24];
  v25 = v0[21];
  v26 = v0[18];
  v27 = v0[17];
  v28 = v0[16];
  v29 = v0[15];
  v30 = v0[12];
  v31 = v0[9];

  v19 = v0[1];

  return v19();
}

uint64_t sub_1001FA82C()
{
  if (qword_101694780 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177AE40);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "No ObservationStoreService available.", v4, 2u);
  }

  v5 = type metadata accessor for Daemon.Error();
  sub_100019348(&qword_101697368, 255, &type metadata accessor for Daemon.Error);
  swift_allocError();
  *v6 = 0xD000000000000017;
  v6[1] = 0x800000010134D340;
  (*(*(v5 - 8) + 104))(v6, enum case for Daemon.Error.missingService(_:), v5);
  swift_willThrow();
  v8 = v0[38];
  v7 = v0[39];
  v10 = v0[36];
  v9 = v0[37];
  v12 = v0[34];
  v11 = v0[35];
  v14 = v0[32];
  v13 = v0[33];
  v16 = v0[28];
  v15 = v0[29];
  v19 = v0[27];
  v20 = v0[26];
  v21 = v0[25];
  v22 = v0[24];
  v23 = v0[21];
  v24 = v0[18];
  v25 = v0[17];
  v26 = v0[16];
  v27 = v0[15];
  v28 = v0[12];
  v29 = v0[9];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1001FAB04()
{
  v1 = v0[45];

  v25 = v0[48];
  v3 = v0[38];
  v2 = v0[39];
  v5 = v0[36];
  v4 = v0[37];
  v7 = v0[34];
  v6 = v0[35];
  v9 = v0[32];
  v8 = v0[33];
  v11 = v0[28];
  v10 = v0[29];
  v14 = v0[27];
  v15 = v0[26];
  v16 = v0[25];
  v17 = v0[24];
  v18 = v0[21];
  v19 = v0[18];
  v20 = v0[17];
  v21 = v0[16];
  v22 = v0[15];
  v23 = v0[12];
  v24 = v0[9];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1001FAC7C()
{
  v1 = v0[59];
  v2 = v0[56];
  v3 = v0[45];
  v4 = v0[39];
  v5 = v0[33];
  v6 = v0[29];
  v7 = v0[26];
  v8 = v0[21];

  sub_100203700(v5, type metadata accessor for ObservedAdvertisement);
  sub_10000B3A8(v6, &unk_1016C1120, &qword_1013C49D0);
  sub_100203700(v8, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100203700(v7, type metadata accessor for BeaconKeyManager.IndexInformation);
  sub_100203700(v4, type metadata accessor for ObservedAdvertisement);
  v32 = v0[65];
  v10 = v0[38];
  v9 = v0[39];
  v12 = v0[36];
  v11 = v0[37];
  v14 = v0[34];
  v13 = v0[35];
  v16 = v0[32];
  v15 = v0[33];
  v18 = v0[28];
  v17 = v0[29];
  v21 = v0[27];
  v22 = v0[26];
  v23 = v0[25];
  v24 = v0[24];
  v25 = v0[21];
  v26 = v0[18];
  v27 = v0[17];
  v28 = v0[16];
  v29 = v0[15];
  v30 = v0[12];
  v31 = v0[9];

  v19 = v0[1];

  return v19();
}

uint64_t sub_1001FAE9C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v6 = *(*(sub_1000BC4D4(&unk_101698C30, &unk_101392630) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v7 = type metadata accessor for SharedBeaconRecord(0);
  v2[9] = v7;
  v8 = *(v7 - 8);
  v2[10] = v8;
  v9 = *(v8 + 64) + 15;
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_1001FAFFC, v1, 0);
}

uint64_t sub_1001FAFFC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  *(v0 + 96) = v2;
  v3 = *(v0 + 88);
  if (v2)
  {
    v4 = *(v0 + 72);
    v5 = *(v0 + 80);
    v6 = *(v4 + 24);
    *(v0 + 136) = v6;
    v7 = *(v4 + 20);
    *(v0 + 140) = v7;
    v8 = *(v5 + 80);
    *(v0 + 144) = v8;
    *(v0 + 104) = *(v5 + 72);
    *(v0 + 112) = 0;
    v9 = *(v0 + 64);
    v10 = *(v0 + 40);
    v24 = *(v0 + 56);
    v25 = *(v0 + 48);
    v11 = *(v0 + 32);
    sub_100203698(v1 + ((v8 + 32) & ~v8), v3, type metadata accessor for SharedBeaconRecord);
    sub_100203698(v3, v9, type metadata accessor for SharedBeaconRecord);
    (*(v5 + 56))(v9, 0, 1, v4);
    v12 = *(v10 + 16);
    v12(v24, v3 + v6, v11);
    v12(v25, v3 + v7, v11);
    sub_100203700(v3, type metadata accessor for SharedBeaconRecord);
    v13 = swift_task_alloc();
    *(v0 + 120) = v13;
    *v13 = v0;
    v13[1] = sub_1001FB21C;
    v14 = *(v0 + 56);
    v15 = *(v0 + 64);
    v16 = *(v0 + 48);
    v17 = *(v0 + 24);

    return sub_1001FC724(v15, v14, v16, 3);
  }

  else
  {
    v20 = *(v0 + 56);
    v19 = *(v0 + 64);
    v21 = *(v0 + 48);
    v22 = *(v0 + 88);

    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_1001FB21C()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v7 = *(*v1 + 40);
  v8 = *(*v1 + 32);
  v9 = *v1;
  *(*v1 + 128) = v0;

  v10 = *(v7 + 8);
  v10(v6, v8);
  v10(v5, v8);
  sub_10000B3A8(v4, &unk_101698C30, &unk_101392630);
  v11 = *(v2 + 24);
  if (v0)
  {
    v12 = sub_1001FB620;
  }

  else
  {
    v12 = sub_1001FB408;
  }

  return _swift_task_switch(v12, v11, 0);
}

uint64_t sub_1001FB408()
{
  v1 = *(v0 + 112) + 1;
  if (v1 == *(v0 + 96))
  {
    v2 = *(v0 + 88);
    v3 = *(v0 + 56);
    v4 = *(v0 + 64);
    v5 = *(v0 + 48);

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    *(v0 + 112) = v1;
    v8 = *(v0 + 136);
    v23 = *(v0 + 140);
    v10 = *(v0 + 80);
    v9 = *(v0 + 88);
    v12 = *(v0 + 64);
    v11 = *(v0 + 72);
    v13 = *(v0 + 56);
    v22 = *(v0 + 48);
    v15 = *(v0 + 32);
    v14 = *(v0 + 40);
    sub_100203698(*(v0 + 16) + ((*(v0 + 144) + 32) & ~*(v0 + 144)) + *(v0 + 104) * v1, v9, type metadata accessor for SharedBeaconRecord);
    sub_100203698(v9, v12, type metadata accessor for SharedBeaconRecord);
    (*(v10 + 56))(v12, 0, 1, v11);
    v16 = *(v14 + 16);
    v16(v13, v9 + v8, v15);
    v16(v22, v9 + v23, v15);
    sub_100203700(v9, type metadata accessor for SharedBeaconRecord);
    v17 = swift_task_alloc();
    *(v0 + 120) = v17;
    *v17 = v0;
    v17[1] = sub_1001FB21C;
    v18 = *(v0 + 56);
    v19 = *(v0 + 64);
    v20 = *(v0 + 48);
    v21 = *(v0 + 24);

    return sub_1001FC724(v19, v18, v20, 3);
  }
}

uint64_t sub_1001FB620()
{
  if (qword_101694780 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 128);
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177AE40);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 128);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to cleanup existing imported share: %@", v7, 0xCu);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v10 = *(v0 + 112) + 1;
  if (v10 == *(v0 + 96))
  {
    v11 = *(v0 + 88);
    v12 = *(v0 + 56);
    v13 = *(v0 + 64);
    v14 = *(v0 + 48);

    v15 = *(v0 + 8);

    return v15();
  }

  else
  {
    *(v0 + 112) = v10;
    v17 = *(v0 + 136);
    v32 = *(v0 + 140);
    v19 = *(v0 + 80);
    v18 = *(v0 + 88);
    v21 = *(v0 + 64);
    v20 = *(v0 + 72);
    v22 = *(v0 + 56);
    v31 = *(v0 + 48);
    v24 = *(v0 + 32);
    v23 = *(v0 + 40);
    sub_100203698(*(v0 + 16) + ((*(v0 + 144) + 32) & ~*(v0 + 144)) + *(v0 + 104) * v10, v18, type metadata accessor for SharedBeaconRecord);
    sub_100203698(v18, v21, type metadata accessor for SharedBeaconRecord);
    (*(v19 + 56))(v21, 0, 1, v20);
    v25 = *(v23 + 16);
    v25(v22, v18 + v17, v24);
    v25(v31, v18 + v32, v24);
    sub_100203700(v18, type metadata accessor for SharedBeaconRecord);
    v26 = swift_task_alloc();
    *(v0 + 120) = v26;
    *v26 = v0;
    v26[1] = sub_1001FB21C;
    v27 = *(v0 + 56);
    v28 = *(v0 + 64);
    v29 = *(v0 + 48);
    v30 = *(v0 + 24);

    return sub_1001FC724(v28, v27, v29, 3);
  }
}

uint64_t sub_1001FB974(uint64_t a1, char a2)
{
  *(v3 + 224) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  *(v3 + 32) = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  *(v3 + 40) = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  *(v3 + 48) = v6;
  v7 = *(v6 - 8);
  *(v3 + 56) = v7;
  *(v3 + 64) = *(v7 + 64);
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();
  v8 = sub_1000BC4D4(&unk_101698BC0, &qword_10138C440);
  *(v3 + 88) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v3 + 96) = swift_task_alloc();
  v10 = type metadata accessor for MemberSharingCircle();
  *(v3 + 104) = v10;
  v11 = *(v10 - 8);
  *(v3 + 112) = v11;
  v12 = *(v11 + 64) + 15;
  *(v3 + 120) = swift_task_alloc();

  return _swift_task_switch(sub_1001FBB20, v2, 0);
}

uint64_t sub_1001FBB20()
{
  v1 = *(*(v0 + 24) + 112);
  *(v0 + 128) = v1;
  return _swift_task_switch(sub_1001FBB44, v1, 0);
}

uint64_t sub_1001FBB44()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 48);
  v5 = *(v0 + 16);
  v6 = *(v3 + 16);
  *(v0 + 136) = v6;
  *(v0 + 144) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v4);
  v7 = *(v3 + 80);
  *(v0 + 216) = v7;
  v8 = (v7 + 24) & ~v7;
  v9 = swift_allocObject();
  *(v0 + 152) = v9;
  *(v9 + 16) = v1;
  v10 = *(v3 + 32);
  *(v0 + 160) = v10;
  *(v0 + 168) = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v10(v9 + v8, v2, v4);
  v11 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v12 = swift_task_alloc();
  *(v0 + 176) = v12;
  *v12 = v0;
  v12[1] = sub_1001FBCC8;
  v14 = *(v0 + 88);
  v13 = *(v0 + 96);

  return unsafeBlocking<A>(context:_:)(v13, 0xD000000000000010, 0x800000010134A8C0, sub_1002021B8, v9, v14);
}

uint64_t sub_1001FBCC8()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 24);
  v5 = *v0;

  return _swift_task_switch(sub_1001FBDF4, v3, 0);
}

uint64_t sub_1001FBDF4()
{
  v31 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 96);
  if ((*(*(v0 + 112) + 48))(v2, 1, v1) == 1)
  {
    sub_10000B3A8(v2, &unk_101698BC0, &qword_10138C440);
    if (qword_101694780 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 136);
    v3 = *(v0 + 144);
    v5 = *(v0 + 72);
    v6 = *(v0 + 48);
    v7 = *(v0 + 16);
    v8 = type metadata accessor for Logger();
    sub_1000076D4(v8, qword_10177AE40);
    v4(v5, v7, v6);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 72);
    v13 = *(v0 + 48);
    v14 = *(v0 + 56);
    if (v11)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v30 = v16;
      *v15 = 136315138;
      sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      (*(v14 + 8))(v12, v13);
      v20 = sub_1000136BC(v17, v19, &v30);

      *(v15 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v9, v10, "Failed to find sharing circle for imported share %s", v15, 0xCu);
      sub_100007BAC(v16);
    }

    else
    {

      (*(v14 + 8))(v12, v13);
    }

    sub_1002021D0();
    swift_allocError();
    *v22 = 1;
    swift_willThrow();
    v23 = *(v0 + 120);
    v24 = *(v0 + 96);
    v26 = *(v0 + 72);
    v25 = *(v0 + 80);
    v27 = *(v0 + 40);

    v28 = *(v0 + 8);

    return v28();
  }

  else
  {
    v21 = *(v0 + 128);
    sub_100203304(v2, *(v0 + 120), type metadata accessor for MemberSharingCircle);
    *(v0 + 220) = *(v1 + 24);

    return _swift_task_switch(sub_1001FC13C, v21, 0);
  }
}

uint64_t sub_1001FC13C()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 144);
  v4 = *(v0 + 128);
  v5 = *(v0 + 80);
  v6 = *(v0 + 64);
  v7 = *(v0 + 48);
  v8 = (*(v0 + 216) + 24) & ~*(v0 + 216);
  (*(v0 + 136))(v5, *(v0 + 120) + *(v0 + 220), v7);
  v9 = swift_allocObject();
  *(v0 + 184) = v9;
  *(v9 + 16) = v4;
  v2(v9 + v8, v5, v7);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 192) = v11;
  *v11 = v0;
  v11[1] = sub_1001FC290;
  v13 = *(v0 + 32);
  v12 = *(v0 + 40);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_100202224, v9, v13);
}

uint64_t sub_1001FC290()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 192);
  v4 = *(*v0 + 184);
  v5 = *(*v0 + 220);
  v6 = *(*v0 + 120);
  v7 = *v0;

  v8 = swift_task_alloc();
  v2[25] = v8;
  *v8 = v7;
  v8[1] = sub_1001FC448;
  v9 = v1[3];
  v10 = v1[2];
  v11 = *(v2 + 224);
  v12 = v1[5];

  return sub_1001FC724(v12, v10, v6 + v5, v11);
}

uint64_t sub_1001FC448()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_1001FC64C;
  }

  else
  {
    v6 = sub_1001FC574;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1001FC574()
{
  v1 = v0[15];
  v2 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  sub_10000B3A8(v0[5], &unk_101698C30, &unk_101392630);
  sub_100203700(v1, type metadata accessor for MemberSharingCircle);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1001FC64C()
{
  v1 = v0[15];
  sub_10000B3A8(v0[5], &unk_101698C30, &unk_101392630);
  sub_100203700(v1, type metadata accessor for MemberSharingCircle);
  v2 = v0[26];
  v3 = v0[15];
  v4 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[5];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1001FC724(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 815) = a4;
  *(v5 + 112) = a3;
  *(v5 + 120) = v4;
  *(v5 + 96) = a1;
  *(v5 + 104) = a2;
  v6 = *(*(sub_1000BC4D4(&unk_101698C30, &unk_101392630) - 8) + 64) + 15;
  *(v5 + 128) = swift_task_alloc();
  v7 = type metadata accessor for SharedBeaconRecord(0);
  *(v5 + 136) = v7;
  v8 = *(v7 - 8);
  *(v5 + 144) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 160) = swift_task_alloc();
  v10 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  *(v5 + 168) = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  *(v5 + 176) = v11;
  v12 = *(v11 - 8);
  *(v5 + 184) = v12;
  *(v5 + 192) = *(v12 + 64);
  *(v5 + 200) = swift_task_alloc();
  *(v5 + 208) = swift_task_alloc();
  *(v5 + 216) = swift_task_alloc();
  *(v5 + 224) = swift_task_alloc();
  *(v5 + 232) = swift_task_alloc();
  *(v5 + 240) = swift_task_alloc();
  *(v5 + 248) = swift_task_alloc();
  *(v5 + 256) = swift_task_alloc();
  *(v5 + 264) = swift_task_alloc();
  *(v5 + 272) = swift_task_alloc();
  *(v5 + 280) = swift_task_alloc();
  *(v5 + 288) = swift_task_alloc();
  *(v5 + 296) = swift_task_alloc();
  *(v5 + 304) = swift_task_alloc();
  *(v5 + 312) = swift_task_alloc();
  *(v5 + 320) = swift_task_alloc();
  *(v5 + 328) = swift_task_alloc();
  *(v5 + 336) = swift_task_alloc();
  *(v5 + 344) = swift_task_alloc();
  *(v5 + 352) = swift_task_alloc();

  return _swift_task_switch(sub_1001FC9B0, v4, 0);
}

uint64_t sub_1001FC9B0()
{
  v44 = v0;
  if (qword_101694780 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 344);
  v2 = *(v0 + 352);
  v3 = *(v0 + 176);
  v4 = *(v0 + 184);
  v6 = *(v0 + 104);
  v5 = *(v0 + 112);
  v7 = type metadata accessor for Logger();
  *(v0 + 360) = sub_1000076D4(v7, qword_10177AE40);
  v8 = *(v4 + 16);
  *(v0 + 368) = v8;
  *(v0 + 376) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v2, v6, v3);
  v8(v1, v5, v3);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v13 = *(v0 + 344);
  v12 = *(v0 + 352);
  v15 = *(v0 + 176);
  v14 = *(v0 + 184);
  if (v11)
  {
    v41 = v10;
    log = v9;
    v40 = *(v0 + 815);
    v16 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v16 = 141559043;
    *(v16 + 4) = 1752392040;
    *(v16 + 12) = 2081;
    sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    v20 = *(v14 + 8);
    v20(v12, v15);
    v21 = sub_1000136BC(v17, v19, &v43);

    *(v16 + 14) = v21;
    *(v16 + 22) = 2160;
    *(v16 + 24) = 1752392040;
    *(v16 + 32) = 2081;
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    v20(v13, v15);
    v25 = sub_1000136BC(v22, v24, &v43);

    *(v16 + 34) = v25;
    *(v16 + 42) = 2080;
    v26 = 0xEB00000000706F74;
    v27 = 0x73206C61756E616DLL;
    v28 = 0x800000010134D3A0;
    v29 = 0xD000000000000015;
    if (v40 != 2)
    {
      v29 = 0x746E692061746164;
      v28 = 0xEE00797469726765;
    }

    if (v40)
    {
      v27 = 0x652074726F706D69;
      v26 = 0xEE00646572697078;
    }

    if (v40 <= 1)
    {
      v30 = v27;
    }

    else
    {
      v30 = v29;
    }

    if (v40 <= 1)
    {
      v31 = v26;
    }

    else
    {
      v31 = v28;
    }

    v32 = sub_1000136BC(v30, v31, &v43);

    *(v16 + 44) = v32;
    _os_log_impl(&_mh_execute_header, log, v41, "Stopping imported share for share id %{private,mask.hash}s\nbeacon id %{private,mask.hash}s, reason %s.", v16, 0x34u);
    swift_arrayDestroy();
  }

  else
  {

    v20 = *(v14 + 8);
    v20(v13, v15);
    v20(v12, v15);
  }

  *(v0 + 384) = v20;
  v33 = *(v0 + 136);
  v34 = *(v0 + 144);
  v35 = *(v0 + 96);
  v36 = *(v34 + 48);
  *(v0 + 392) = v36;
  *(v0 + 400) = (v34 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v36(v35, 1, v33) == 1)
  {
    *(v0 + 432) = 0x800000010134A8C0;
    v37 = *(*(v0 + 120) + 112);
    *(v0 + 440) = v37;
    v38 = sub_1001FD38C;
  }

  else
  {
    v37 = *(*(v0 + 120) + 112);
    *(v0 + 408) = v37;
    v38 = sub_1001FCE04;
  }

  return _swift_task_switch(v38, v37, 0);
}

uint64_t sub_1001FCE04()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 376);
  v3 = *(v0 + 336);
  v5 = *(v0 + 184);
  v4 = *(v0 + 192);
  v6 = *(v0 + 176);
  (*(v0 + 368))(v3, *(v0 + 112), v6);
  v7 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v0 + 416) = v8;
  *(v8 + 16) = v1;
  (*(v5 + 32))(v8 + v7, v3, v6);
  v9 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v10 = swift_task_alloc();
  *(v0 + 424) = v10;
  *v10 = v0;
  v10[1] = sub_1001FCF64;

  return unsafeBlocking<A>(context:_:)(v0 + 814, 0xD000000000000010, 0x800000010134A8C0, sub_1002021A0, v8, &type metadata for Bool);
}

uint64_t sub_1001FCF64()
{
  v1 = *(*v0 + 424);
  v2 = *(*v0 + 416);
  v3 = *(*v0 + 408);
  v5 = *v0;

  return _swift_task_switch(sub_1001FD090, v3, 0);
}

uint64_t sub_1001FD090()
{
  v1 = *(v0 + 120);
  *(v0 + 816) = *(v0 + 814);
  return _swift_task_switch(sub_1001FD0B4, v1, 0);
}

uint64_t sub_1001FD0B4()
{
  v29 = v0;
  if (*(v0 + 816) == 1)
  {
    v2 = *(v0 + 368);
    v1 = *(v0 + 376);
    v3 = *(v0 + 360);
    v4 = *(v0 + 320);
    v5 = *(v0 + 176);
    v6 = *(v0 + 112);
    v2(*(v0 + 328), *(v0 + 104), v5);
    v2(v4, v6, v5);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 384);
    v12 = *(v0 + 320);
    v11 = *(v0 + 328);
    v14 = *(v0 + 176);
    v13 = *(v0 + 184);
    if (v9)
    {
      log = v7;
      v15 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v15 = 141558787;
      *(v15 + 4) = 1752392040;
      *(v15 + 12) = 2081;
      sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v8;
      v18 = v17;
      v10(v11, v14);
      v19 = sub_1000136BC(v16, v18, &v28);

      *(v15 + 14) = v19;
      *(v15 + 22) = 2160;
      *(v15 + 24) = 1752392040;
      *(v15 + 32) = 2081;
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      v10(v12, v14);
      v23 = sub_1000136BC(v20, v22, &v28);

      *(v15 + 34) = v23;
      _os_log_impl(&_mh_execute_header, log, v26, "Successfully deleted SharedBeaconRecord : %{private,mask.hash}s,\nbeaconIdentifier: %{private,mask.hash}s", v15, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {

      v10(v12, v14);
      v10(v11, v14);
    }
  }

  *(v0 + 432) = 0x800000010134A8C0;
  v24 = *(*(v0 + 120) + 112);
  *(v0 + 440) = v24;

  return _swift_task_switch(sub_1001FD38C, v24, 0);
}

uint64_t sub_1001FD38C()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 376);
  v3 = *(v0 + 336);
  v5 = *(v0 + 184);
  v4 = *(v0 + 192);
  v6 = *(v0 + 176);
  (*(v0 + 368))(v3, *(v0 + 104), v6);
  v7 = *(v5 + 80);
  *(v0 + 808) = v7;
  v8 = (v7 + 24) & ~v7;
  v9 = swift_allocObject();
  *(v0 + 448) = v9;
  *(v9 + 16) = v1;
  v10 = *(v5 + 32);
  *(v0 + 456) = v10;
  *(v0 + 464) = (v5 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v10(v9 + v8, v3, v6);
  v11 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v12 = swift_task_alloc();
  *(v0 + 472) = v12;
  *v12 = v0;
  v12[1] = sub_1001FD4EC;
  v13 = *(v0 + 432);

  return unsafeBlocking<A>(context:_:)(v0 + 812, 0xD000000000000010, v13, sub_100202140, v9, &type metadata for Bool);
}

uint64_t sub_1001FD4EC()
{
  v1 = *(*v0 + 472);
  v2 = *(*v0 + 448);
  v3 = *(*v0 + 440);
  v5 = *v0;

  return _swift_task_switch(sub_1001FD618, v3, 0);
}

uint64_t sub_1001FD618()
{
  v1 = *(v0 + 120);
  *(v0 + 817) = *(v0 + 812);
  return _swift_task_switch(sub_1001FD63C, v1, 0);
}

uint64_t sub_1001FD63C()
{
  v56 = v0;
  v2 = *(v0 + 368);
  v1 = *(v0 + 376);
  v3 = *(v0 + 360);
  v4 = *(v0 + 176);
  v5 = *(v0 + 104);
  if (*(v0 + 817) == 1)
  {
    v2(*(v0 + 312), v5, v4);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 384);
    v10 = *(v0 + 312);
    v11 = *(v0 + 176);
    v12 = *(v0 + 184);
    if (v8)
    {
      v53 = *(v0 + 384);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v55 = v14;
      *v13 = 141558275;
      *(v13 + 4) = 1752392040;
      *(v13 + 12) = 2081;
      sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      v53(v10, v11);
      v18 = sub_1000136BC(v15, v17, &v55);

      *(v13 + 14) = v18;
      v19 = "Successfully deleted MemberSharingCircle with share id : %{private,mask.hash}s";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v6, v7, v19, v13, 0x16u);
      sub_100007BAC(v14);

      goto LABEL_8;
    }
  }

  else
  {
    v2(*(v0 + 304), v5, v4);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    v20 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 384);
    v10 = *(v0 + 304);
    v11 = *(v0 + 176);
    v21 = *(v0 + 184);
    if (v20)
    {
      v54 = *(v0 + 384);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v55 = v14;
      *v13 = 141558275;
      *(v13 + 4) = 1752392040;
      *(v13 + 12) = 2081;
      sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      v54(v10, v11);
      v25 = sub_1000136BC(v22, v24, &v55);

      *(v13 + 14) = v25;
      v19 = "Failed to delete MemberSharingCircle with share id: %{private,mask.hash}s";
      goto LABEL_6;
    }
  }

  v9(v10, v11);
LABEL_8:
  v27 = *(v0 + 368);
  v26 = *(v0 + 376);
  v28 = *(v0 + 360);
  v29 = *(v0 + 288);
  v30 = *(v0 + 176);
  v31 = *(v0 + 112);
  v27(*(v0 + 296), *(v0 + 104), v30);
  v27(v29, v31, v30);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  v34 = os_log_type_enabled(v32, v33);
  v35 = *(v0 + 384);
  v37 = *(v0 + 288);
  v36 = *(v0 + 296);
  v39 = *(v0 + 176);
  v38 = *(v0 + 184);
  if (v34)
  {
    log = v32;
    v40 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *v40 = 141558787;
    *(v40 + 4) = 1752392040;
    *(v40 + 12) = 2081;
    sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID);
    v41 = dispatch thunk of CustomStringConvertible.description.getter();
    v51 = v33;
    v43 = v42;
    v35(v36, v39);
    v44 = sub_1000136BC(v41, v43, &v55);

    *(v40 + 14) = v44;
    *(v40 + 22) = 2160;
    *(v40 + 24) = 1752392040;
    *(v40 + 32) = 2081;
    v45 = dispatch thunk of CustomStringConvertible.description.getter();
    v47 = v46;
    v35(v37, v39);
    v48 = sub_1000136BC(v45, v47, &v55);

    *(v40 + 34) = v48;
    _os_log_impl(&_mh_execute_header, log, v51, "Deleting suffix keys for share id : %{private,mask.hash}s,\nbeaconIdentifier: %{private,mask.hash}s", v40, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    v35(v37, v39);
    v35(v36, v39);
  }

  v49 = *(v0 + 440);

  return _swift_task_switch(sub_1001FDB8C, v49, 0);
}

uint64_t sub_1001FDB8C()
{
  v1 = v0[55];
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  v0[60] = v3;
  v4 = sub_1000BC4D4(&qword_101697720, &unk_101392640);
  *v3 = v0;
  v3[1] = sub_1001FDC68;
  v5 = v0[54];
  v6 = v0[55];

  return unsafeBlocking<A>(context:_:)(v0 + 7, 0xD000000000000010, v5, sub_100202158, v6, v4);
}

uint64_t sub_1001FDC68()
{
  v1 = *(*v0 + 480);
  v2 = *(*v0 + 440);
  v4 = *v0;

  return _swift_task_switch(sub_1001FDD80, v2, 0);
}

uint64_t sub_1001FDD80()
{
  v1 = v0[15];
  v0[61] = v0[7];
  return _swift_task_switch(sub_1001FDDA4, v1, 0);
}

uint64_t sub_1001FDDA4()
{
  if (*(v0[61] + 16) >= 2uLL)
  {
    v1 = v0[45];
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Inconsistent state: More than one imported beacon record found", v4, 2u);
    }
  }

  v5 = v0[55];

  return _swift_task_switch(sub_1001FDE8C, v5, 0);
}

uint64_t sub_1001FDE8C()
{
  v1 = v0[55];
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  v0[62] = v3;
  v4 = type metadata accessor for BeaconKeyManager(0);
  v0[63] = v4;
  *v3 = v0;
  v3[1] = sub_1001FDF60;
  v5 = v0[54];
  v6 = v0[55];

  return unsafeBlocking<A>(context:_:)(v0 + 8, 0xD000000000000010, v5, sub_1000D27E4, v6, v4);
}

uint64_t sub_1001FDF60()
{
  v1 = *(*v0 + 496);
  v2 = *(*v0 + 440);
  v4 = *v0;

  return _swift_task_switch(sub_1001FE078, v2, 0);
}

uint64_t sub_1001FE078()
{
  v1 = v0[15];
  v0[64] = v0[8];
  return _swift_task_switch(sub_1001FE09C, v1, 0);
}

uint64_t sub_1001FE09C()
{
  v1 = v0[61];
  v0[65] = *(v0[64] + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);

  if (*(v1 + 16))
  {
    v3 = v0[46];
    v2 = v0[47];
    v5 = v0[21];
    v4 = v0[22];
    v6 = v0[20];
    v7 = v0[17];
    v8 = *(v0[18] + 80);
    sub_100203698(v0[61] + ((v8 + 32) & ~v8), v6, type metadata accessor for SharedBeaconRecord);

    v3(v5, v6 + *(v7 + 20), v4);
    sub_100203700(v6, type metadata accessor for SharedBeaconRecord);
    v9 = 0;
  }

  else
  {
    v10 = v0[61];

    v9 = 1;
  }

  v11 = v0[35];
  (*(v0[23] + 56))(v0[21], v9, 1, v0[22]);
  v12 = getuid();
  sub_1000294F0(v12);
  v13 = swift_task_alloc();
  v0[66] = v13;
  *v13 = v0;
  v13[1] = sub_1001FE23C;
  v14 = v0[35];
  v15 = v0[21];
  v16 = v0[13];

  return sub_10068BBC4(v16, v14, v15);
}

uint64_t sub_1001FE23C()
{
  v2 = *v1;
  v3 = *(*v1 + 528);
  v4 = *v1;
  v2[67] = v0;

  v5 = v2[65];
  v6 = v2[48];
  v7 = v2[35];
  v8 = v2[23];
  v9 = v2[22];
  v10 = v2[21];
  if (v0)
  {
    v11 = v2[15];

    v6(v7, v9);
    sub_10000B3A8(v10, &qword_1016980D0, &unk_10138F3B0);

    return _swift_task_switch(sub_1002015BC, v11, 0);
  }

  else
  {

    v2[68] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v6(v7, v9);
    sub_10000B3A8(v10, &qword_1016980D0, &unk_10138F3B0);
    v12 = swift_task_alloc();
    v2[69] = v12;
    *v12 = v4;
    v12[1] = sub_1001FE4C4;
    v13 = v2[15];
    v14 = v2[13];

    return sub_1001E98E8(v14);
  }
}

uint64_t sub_1001FE4C4()
{
  v2 = *v1;
  v3 = *(*v1 + 552);
  v4 = *v1;

  if (v0)
  {
    v6 = v2[43];
    v5 = v2[44];
    v8 = v2[41];
    v7 = v2[42];
    v10 = v2[39];
    v9 = v2[40];
    v12 = v2[37];
    v11 = v2[38];
    v13 = v2[36];
    v18 = v2[35];
    v19 = v2[34];
    v20 = v2[33];
    v21 = v2[32];
    v22 = v2[31];
    v23 = v2[30];
    v24 = v2[29];
    v25 = v2[28];
    v26 = v2[27];
    v27 = v2[26];
    v28 = v2[25];
    v29 = v2[21];
    v30 = v2[20];
    v31 = v2[19];
    v14 = v2[16];

    v15 = *(v4 + 8);

    return v15();
  }

  else
  {
    v17 = v2[15];

    return _swift_task_switch(sub_1001FE73C, v17, 0);
  }
}

uint64_t sub_1001FE73C()
{
  v19 = v0;
  v1 = *(v0 + 376);
  v2 = *(v0 + 360);
  (*(v0 + 368))(*(v0 + 272), *(v0 + 104), *(v0 + 176));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 384);
  v7 = *(v0 + 272);
  v8 = *(v0 + 176);
  if (v5)
  {
    v17 = *(v0 + 544);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 141558275;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2081;
    sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    v6(v7, v8);
    v14 = sub_1000136BC(v11, v13, &v18);

    *(v9 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deleting imported beacon attributes for share id : %{private,mask.hash}s", v9, 0x16u);
    sub_100007BAC(v10);
  }

  else
  {

    v6(v7, v8);
  }

  v15 = *(v0 + 440);

  return _swift_task_switch(sub_1001FE92C, v15, 0);
}

uint64_t sub_1001FE92C()
{
  v1 = v0[55];
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  v0[70] = v3;
  *v3 = v0;
  v3[1] = sub_1001FE9F4;
  v4 = v0[63];
  v5 = v0[54];
  v6 = v0[55];

  return unsafeBlocking<A>(context:_:)(v0 + 9, 0xD000000000000010, v5, sub_1000D3168, v6, v4);
}

uint64_t sub_1001FE9F4()
{
  v1 = *(*v0 + 560);
  v2 = *(*v0 + 440);
  v4 = *v0;

  return _swift_task_switch(sub_1001FEB0C, v2, 0);
}

uint64_t sub_1001FEB0C()
{
  v1 = v0[15];
  v0[71] = v0[9];
  return _swift_task_switch(sub_1001FEB30, v1, 0);
}

uint64_t sub_1001FEB30()
{
  v0[72] = *(v0[71] + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);

  v1 = swift_task_alloc();
  v0[73] = v1;
  *v1 = v0;
  v1[1] = sub_1001FEBF0;
  v2 = v0[13];

  return sub_10068F110(v2);
}

uint64_t sub_1001FEBF0()
{
  v2 = *v1;
  v3 = *(*v1 + 584);
  v9 = *v1;
  *(*v1 + 592) = v0;

  if (v0)
  {
    v4 = *(v2 + 120);
    v5 = sub_100201750;
  }

  else
  {
    v6 = *(v2 + 576);
    v7 = *(v2 + 120);

    v5 = sub_1001FED18;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1001FED18()
{
  v29 = v0;
  v2 = v0[46];
  v1 = v0[47];
  v3 = v0[45];
  v4 = v0[32];
  v5 = v0[22];
  v6 = v0[14];
  v2(v0[33], v0[13], v5);
  v2(v4, v6, v5);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[68];
  v11 = v0[48];
  v13 = v0[32];
  v12 = v0[33];
  v14 = v0[22];
  if (v9)
  {
    log = v7;
    v15 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v15 = 141558787;
    *(v15 + 4) = 1752392040;
    *(v15 + 12) = 2081;
    sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v8;
    v18 = v17;
    v11(v12, v14);
    v19 = sub_1000136BC(v16, v18, &v28);

    *(v15 + 14) = v19;
    *(v15 + 22) = 2160;
    *(v15 + 24) = 1752392040;
    *(v15 + 32) = 2081;
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    v11(v13, v14);
    v23 = sub_1000136BC(v20, v22, &v28);

    *(v15 + 34) = v23;
    _os_log_impl(&_mh_execute_header, log, v26, "Delete reconciled advertisment from Keys table in Keys DB for share id : %{private,mask.hash}s,\nbeacon id : %{private,mask.hash}s", v15, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    v11(v13, v14);
    v11(v12, v14);
  }

  v24 = v0[55];

  return _swift_task_switch(sub_1001FEFA4, v24, 0);
}

uint64_t sub_1001FEFA4()
{
  v1 = v0[55];
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  v0[75] = v3;
  *v3 = v0;
  v3[1] = sub_1001FF06C;
  v4 = v0[63];
  v5 = v0[54];
  v6 = v0[55];

  return unsafeBlocking<A>(context:_:)(v0 + 10, 0xD000000000000010, v5, sub_1000D3168, v6, v4);
}

uint64_t sub_1001FF06C()
{
  v1 = *(*v0 + 600);
  v2 = *(*v0 + 440);
  v4 = *v0;

  return _swift_task_switch(sub_1001FF184, v2, 0);
}

uint64_t sub_1001FF184()
{
  v1 = v0[15];
  v0[76] = v0[10];
  return _swift_task_switch(sub_1001FF1A8, v1, 0);
}

uint64_t sub_1001FF1A8()
{
  v1 = v0[31];
  v0[77] = *(v0[76] + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);

  v2 = getuid();
  sub_1000294F0(v2);
  v3 = swift_task_alloc();
  v0[78] = v3;
  *v3 = v0;
  v3[1] = sub_1001FF284;
  v4 = v0[31];
  v5 = v0[14];

  return sub_100682874(v4, v5);
}

uint64_t sub_1001FF284()
{
  v2 = *v1;
  v3 = *(*v1 + 624);
  v4 = *v1;
  v2[79] = v0;

  v5 = v2[77];
  v6 = v2[68];
  v7 = v2[48];
  v8 = v2[31];
  v9 = v2[22];
  if (v0)
  {
    v10 = v2[15];
    v7(v8, v9);

    return _swift_task_switch(sub_1002018EC, v10, 0);
  }

  else
  {
    v7(v8, v9);

    v11 = async function pointer to daemon.getter[1];
    v12 = swift_task_alloc();
    v2[80] = v12;
    *v12 = v4;
    v12[1] = sub_1001FF488;

    return daemon.getter();
  }
}

uint64_t sub_1001FF488(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 640);
  v12 = *v1;
  v3[81] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[82] = v6;
  v7 = type metadata accessor for Daemon();
  v3[83] = v7;
  v8 = type metadata accessor for ObservationStoreService();
  v9 = sub_100019348(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v3[84] = v9;
  v10 = sub_100019348(&qword_1016AA450, 255, type metadata accessor for ObservationStoreService);
  *v6 = v12;
  v6[1] = sub_1001FF67C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1001FF67C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 656);
  v5 = *v2;
  *(*v2 + 680) = a1;

  v6 = *(v3 + 648);
  v7 = *(v3 + 120);
  if (v1)
  {

    v8 = sub_100201304;
  }

  else
  {

    v8 = sub_1001FF7E0;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1001FF7E0()
{
  v31 = v0;
  v2 = v0[46];
  v1 = v0[47];
  v3 = v0[45];
  v4 = v0[29];
  v5 = v0[22];
  v6 = v0[14];
  v2(v0[30], v0[13], v5);
  v2(v4, v6, v5);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[68];
  v11 = v0[48];
  v13 = v0[29];
  v12 = v0[30];
  v14 = v0[22];
  if (v9)
  {
    log = v7;
    v15 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v15 = 141558787;
    *(v15 + 4) = 1752392040;
    *(v15 + 12) = 2081;
    sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v8;
    v18 = v17;
    v11(v12, v14);
    v19 = sub_1000136BC(v16, v18, &v30);

    *(v15 + 14) = v19;
    *(v15 + 22) = 2160;
    *(v15 + 24) = 1752392040;
    *(v15 + 32) = 2081;
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    v11(v13, v14);
    v23 = sub_1000136BC(v20, v22, &v30);

    *(v15 + 34) = v23;
    _os_log_impl(&_mh_execute_header, log, v28, "Deleting key generation beacon info and Observations Beacon Info for share id : %{private,mask.hash}s,\nbeacon id: %{private,mask.hash}s", v15, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    v11(v13, v14);
    v11(v12, v14);
  }

  v24 = swift_task_alloc();
  v0[86] = v24;
  *v24 = v0;
  v24[1] = sub_1001FFAA4;
  v25 = v0[85];
  v26 = v0[14];

  return sub_1010CC864(v26);
}

uint64_t sub_1001FFAA4()
{
  v2 = *(*v1 + 688);
  v3 = *v1;
  v3[87] = v0;

  if (v0)
  {
    v4 = v3[15];

    return _swift_task_switch(sub_100201A80, v4, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v3[88] = v5;
    *v5 = v3;
    v5[1] = sub_1001FFC18;
    v6 = v3[85];
    v7 = v3[14];

    return sub_1010CCAC8(v7);
  }
}

uint64_t sub_1001FFC18()
{
  v2 = *v1;
  v3 = *(*v1 + 704);
  v7 = *v1;
  *(*v1 + 712) = v0;

  if (v0)
  {
    v4 = *(v2 + 120);
    v5 = sub_100201C1C;
  }

  else
  {
    v4 = *(v2 + 440);
    v5 = sub_1001FFD30;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1001FFD30()
{
  v2 = *(v0 + 456);
  v1 = *(v0 + 464);
  v3 = *(v0 + 440);
  v4 = *(v0 + 376);
  v5 = *(v0 + 336);
  v6 = *(v0 + 192);
  v7 = *(v0 + 176);
  v8 = (*(v0 + 808) + 24) & ~*(v0 + 808);
  (*(v0 + 368))(v5, *(v0 + 112), v7);
  v9 = swift_allocObject();
  *(v0 + 720) = v9;
  *(v9 + 16) = v3;
  v2(v9 + v8, v5, v7);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 728) = v11;
  *v11 = v0;
  v11[1] = sub_1001FFE7C;
  v12 = *(v0 + 432);

  return unsafeBlocking<A>(context:_:)(v0 + 813, 0xD000000000000010, v12, sub_100202160, v9, &type metadata for Bool);
}

uint64_t sub_1001FFE7C()
{
  v1 = *(*v0 + 728);
  v2 = *(*v0 + 720);
  v3 = *(*v0 + 440);
  v5 = *v0;

  return _swift_task_switch(sub_1001FFFA8, v3, 0);
}

uint64_t sub_1001FFFA8()
{
  v1 = *(v0 + 120);
  *(v0 + 818) = *(v0 + 813);
  return _swift_task_switch(sub_1001FFFCC, v1, 0);
}

uint64_t sub_1001FFFCC()
{
  v50 = v0;
  if (*(v0 + 818) == 1)
  {
    v2 = *(v0 + 368);
    v1 = *(v0 + 376);
    v3 = *(v0 + 360);
    v4 = *(v0 + 216);
    v5 = *(v0 + 176);
    v6 = *(v0 + 112);
    v2(*(v0 + 224), *(v0 + 104), v5);
    v2(v4, v6, v5);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 544);
    v11 = *(v0 + 384);
    v13 = *(v0 + 216);
    v12 = *(v0 + 224);
    v14 = *(v0 + 176);
    if (v9)
    {
      log = v7;
      v15 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v15 = 141558787;
      *(v15 + 4) = 1752392040;
      *(v15 + 12) = 2081;
      sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v8;
      v18 = v17;
      v11(v12, v14);
      v19 = sub_1000136BC(v16, v18, &v49);

      *(v15 + 14) = v19;
      *(v15 + 22) = 2160;
      *(v15 + 24) = 1752392040;
      *(v15 + 32) = 2081;
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      v11(v13, v14);
      v23 = sub_1000136BC(v20, v22, &v49);

      *(v15 + 34) = v23;
      _os_log_impl(&_mh_execute_header, log, v46, "Successfully deleted BeaconProductInfoRecord : %{private,mask.hash}s,\nbeaconIdentifier: %{private,mask.hash}s", v15, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {

      v11(v13, v14);
      v11(v12, v14);
    }
  }

  v24 = *(v0 + 376);
  v25 = *(v0 + 360);
  (*(v0 + 368))(*(v0 + 208), *(v0 + 104), *(v0 + 176));
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  v28 = os_log_type_enabled(v26, v27);
  v29 = *(v0 + 384);
  v30 = *(v0 + 208);
  v31 = *(v0 + 176);
  if (v28)
  {
    v48 = *(v0 + 544);
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v49 = v33;
    *v32 = 141558275;
    *(v32 + 4) = 1752392040;
    *(v32 + 12) = 2081;
    sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID);
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v35;
    v29(v30, v31);
    v37 = sub_1000136BC(v34, v36, &v49);

    *(v32 + 14) = v37;
    _os_log_impl(&_mh_execute_header, v26, v27, "Deleting key map files for share id : %{private,mask.hash}s", v32, 0x16u);
    sub_100007BAC(v33);
  }

  else
  {

    v29(v30, v31);
  }

  v39 = *(v0 + 392);
  v38 = *(v0 + 400);
  v40 = *(v0 + 128);
  v41 = *(v0 + 136);
  sub_1000D2A70(*(v0 + 96), v40, &unk_101698C30, &unk_101392630);
  if (v39(v40, 1, v41) == 1)
  {
    sub_10000B3A8(*(v0 + 128), &unk_101698C30, &unk_101392630);
    v42 = *(v0 + 440);
    v43 = sub_1002007E8;
  }

  else
  {
    v44 = *(v0 + 440);
    sub_100203304(*(v0 + 128), *(v0 + 152), type metadata accessor for SharedBeaconRecord);
    v43 = sub_100200464;
    v42 = v44;
  }

  return _swift_task_switch(v43, v42, 0);
}

uint64_t sub_100200464()
{
  v1 = v0[55];
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  v0[92] = v3;
  *v3 = v0;
  v3[1] = sub_10020052C;
  v4 = v0[63];
  v5 = v0[54];
  v6 = v0[55];

  return unsafeBlocking<A>(context:_:)(v0 + 11, 0xD000000000000010, v5, sub_1000D3168, v6, v4);
}

uint64_t sub_10020052C()
{
  v1 = *(*v0 + 736);
  v2 = *(*v0 + 440);
  v4 = *v0;

  return _swift_task_switch(sub_100200644, v2, 0);
}

uint64_t sub_100200644()
{
  v1 = v0[15];
  v0[93] = v0[11];
  return _swift_task_switch(sub_100200668, v1, 0);
}

uint64_t sub_100200668()
{
  v1 = v0[93];
  v2 = v0[89];
  v3 = v0[19];
  v0[5] = v0[17];
  v0[6] = sub_100019348(&qword_101698D80, 255, type metadata accessor for SharedBeaconRecord);
  v4 = sub_1000280DC(v0 + 2);
  sub_100203698(v3, v4, type metadata accessor for SharedBeaconRecord);
  type metadata accessor for Transaction();
  v5 = swift_task_alloc();
  v5[2] = v0 + 2;
  v5[3] = v1;
  v5[4] = 0;
  v5[5] = 0;
  static Transaction.named<A>(_:with:)();

  sub_100203700(v3, type metadata accessor for SharedBeaconRecord);
  sub_100007BAC(v0 + 2);
  v6 = v0[55];

  return _swift_task_switch(sub_1002007E8, v6, 0);
}

uint64_t sub_1002007E8()
{
  v1 = v0[55];
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  v0[94] = v3;
  *v3 = v0;
  v3[1] = sub_1002008B0;
  v4 = v0[54];
  v5 = v0[55];

  return unsafeBlocking<A>(context:_:)(v3, 0xD000000000000010, v4, sub_100202178, v5, &type metadata for () + 8);
}

uint64_t sub_1002008B0()
{
  v1 = *(*v0 + 752);
  v2 = *(*v0 + 440);
  v4 = *v0;

  return _swift_task_switch(sub_1002009C8, v2, 0);
}

uint64_t sub_1002009C8()
{
  v1 = async function pointer to daemon.getter[1];
  v2 = swift_task_alloc();
  *(v0 + 760) = v2;
  *v2 = v0;
  v2[1] = sub_100200A58;

  return daemon.getter();
}

uint64_t sub_100200A58(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 760);
  v5 = *v1;
  v3[96] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[97] = v7;
  updated = type metadata accessor for SimpleBeaconUpdateService(0);
  v9 = sub_100019348(&unk_1016B10F0, 255, type metadata accessor for SimpleBeaconUpdateService);
  *v7 = v5;
  v7[1] = sub_100200C10;
  v10 = v3[84];
  v11 = v3[83];

  return ActorServiceDaemon.getService<A>()(v11, updated, v10, v9);
}

uint64_t sub_100200C10(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 776);
  v7 = *v2;

  v8 = *(v4 + 768);
  v9 = *(v4 + 120);
  if (v1)
  {

    v10 = sub_100201DB8;
  }

  else
  {

    *(v5 + 784) = a1;
    v10 = sub_100200D78;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_100200D78()
{
  v1 = *(v0 + 544);
  v2 = *(v0 + 808);
  v4 = *(v0 + 376);
  v3 = *(v0 + 384);
  v5 = *(v0 + 368);
  v6 = *(v0 + 176);
  v7 = *(v0 + 184);
  v8 = *(v0 + 112);
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v9 = *(v7 + 72);
  v10 = (v2 + 32) & ~v2;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_101385D80;
  v5(v11 + v10, v8, v6);
  v12 = sub_100B05044(v11);
  *(v0 + 792) = v12;
  swift_setDeallocating();
  v3(v11 + v10, v6);
  swift_deallocClassInstance();
  v13 = swift_task_alloc();
  *(v0 + 800) = v13;
  *v13 = v0;
  v13[1] = sub_100200EBC;
  v14 = *(v0 + 784);

  return sub_10094E168(v12);
}

uint64_t sub_100200EBC()
{
  v1 = *(*v0 + 800);
  v2 = *(*v0 + 792);
  v3 = *(*v0 + 120);
  v5 = *v0;

  return _swift_task_switch(sub_100200FE8, v3, 0);
}

uint64_t sub_100200FE8()
{
  v46 = v0;
  v1 = *(v0 + 784);

  v2 = *(v0 + 376);
  v3 = *(v0 + 360);
  (*(v0 + 368))(*(v0 + 200), *(v0 + 104), *(v0 + 176));
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 384);
  v8 = *(v0 + 200);
  v9 = *(v0 + 176);
  if (v6)
  {
    v43 = *(v0 + 680);
    v41 = *(v0 + 544);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v45 = v11;
    *v10 = 141558275;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    v7(v8, v9);
    v15 = sub_1000136BC(v12, v14, &v45);

    *(v10 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Successfully removed imported share %{private,mask.hash}s", v10, 0x16u);
    sub_100007BAC(v11);
  }

  else
  {
    v16 = *(v0 + 680);

    v7(v8, v9);
  }

  v18 = *(v0 + 344);
  v17 = *(v0 + 352);
  v20 = *(v0 + 328);
  v19 = *(v0 + 336);
  v22 = *(v0 + 312);
  v21 = *(v0 + 320);
  v23 = *(v0 + 296);
  v24 = *(v0 + 304);
  v26 = *(v0 + 280);
  v25 = *(v0 + 288);
  v29 = *(v0 + 272);
  v30 = *(v0 + 264);
  v31 = *(v0 + 256);
  v32 = *(v0 + 248);
  v33 = *(v0 + 240);
  v34 = *(v0 + 232);
  v35 = *(v0 + 224);
  v36 = *(v0 + 216);
  v37 = *(v0 + 208);
  v38 = *(v0 + 200);
  v39 = *(v0 + 168);
  v40 = *(v0 + 160);
  v42 = *(v0 + 152);
  v44 = *(v0 + 128);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_100201304()
{
  v1 = v0[45];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "No ObservationStoreService available.", v4, 2u);
  }

  v5 = type metadata accessor for Daemon.Error();
  sub_100019348(&qword_101697368, 255, &type metadata accessor for Daemon.Error);
  swift_allocError();
  *v6 = 0xD000000000000017;
  v6[1] = 0x800000010134D340;
  (*(*(v5 - 8) + 104))(v6, enum case for Daemon.Error.missingService(_:), v5);
  swift_willThrow();
  v8 = v0[43];
  v7 = v0[44];
  v10 = v0[41];
  v9 = v0[42];
  v12 = v0[39];
  v11 = v0[40];
  v14 = v0[37];
  v13 = v0[38];
  v16 = v0[35];
  v15 = v0[36];
  v19 = v0[34];
  v20 = v0[33];
  v21 = v0[32];
  v22 = v0[31];
  v23 = v0[30];
  v24 = v0[29];
  v25 = v0[28];
  v26 = v0[27];
  v27 = v0[26];
  v28 = v0[25];
  v29 = v0[21];
  v30 = v0[20];
  v31 = v0[19];
  v32 = v0[16];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1002015BC()
{
  v27 = v0[67];
  v2 = v0[43];
  v1 = v0[44];
  v4 = v0[41];
  v3 = v0[42];
  v6 = v0[39];
  v5 = v0[40];
  v8 = v0[37];
  v7 = v0[38];
  v10 = v0[35];
  v9 = v0[36];
  v13 = v0[34];
  v14 = v0[33];
  v15 = v0[32];
  v16 = v0[31];
  v17 = v0[30];
  v18 = v0[29];
  v19 = v0[28];
  v20 = v0[27];
  v21 = v0[26];
  v22 = v0[25];
  v23 = v0[21];
  v24 = v0[20];
  v25 = v0[19];
  v26 = v0[16];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100201750()
{
  v1 = v0[72];

  v28 = v0[74];
  v3 = v0[43];
  v2 = v0[44];
  v5 = v0[41];
  v4 = v0[42];
  v7 = v0[39];
  v6 = v0[40];
  v9 = v0[37];
  v8 = v0[38];
  v11 = v0[35];
  v10 = v0[36];
  v14 = v0[34];
  v15 = v0[33];
  v16 = v0[32];
  v17 = v0[31];
  v18 = v0[30];
  v19 = v0[29];
  v20 = v0[28];
  v21 = v0[27];
  v22 = v0[26];
  v23 = v0[25];
  v24 = v0[21];
  v25 = v0[20];
  v26 = v0[19];
  v27 = v0[16];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1002018EC()
{
  v27 = v0[79];
  v2 = v0[43];
  v1 = v0[44];
  v4 = v0[41];
  v3 = v0[42];
  v6 = v0[39];
  v5 = v0[40];
  v8 = v0[37];
  v7 = v0[38];
  v10 = v0[35];
  v9 = v0[36];
  v13 = v0[34];
  v14 = v0[33];
  v15 = v0[32];
  v16 = v0[31];
  v17 = v0[30];
  v18 = v0[29];
  v19 = v0[28];
  v20 = v0[27];
  v21 = v0[26];
  v22 = v0[25];
  v23 = v0[21];
  v24 = v0[20];
  v25 = v0[19];
  v26 = v0[16];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100201A80()
{
  v1 = v0[85];

  v28 = v0[87];
  v3 = v0[43];
  v2 = v0[44];
  v5 = v0[41];
  v4 = v0[42];
  v7 = v0[39];
  v6 = v0[40];
  v9 = v0[37];
  v8 = v0[38];
  v11 = v0[35];
  v10 = v0[36];
  v14 = v0[34];
  v15 = v0[33];
  v16 = v0[32];
  v17 = v0[31];
  v18 = v0[30];
  v19 = v0[29];
  v20 = v0[28];
  v21 = v0[27];
  v22 = v0[26];
  v23 = v0[25];
  v24 = v0[21];
  v25 = v0[20];
  v26 = v0[19];
  v27 = v0[16];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100201C1C()
{
  v1 = v0[85];

  v28 = v0[89];
  v3 = v0[43];
  v2 = v0[44];
  v5 = v0[41];
  v4 = v0[42];
  v7 = v0[39];
  v6 = v0[40];
  v9 = v0[37];
  v8 = v0[38];
  v11 = v0[35];
  v10 = v0[36];
  v14 = v0[34];
  v15 = v0[33];
  v16 = v0[32];
  v17 = v0[31];
  v18 = v0[30];
  v19 = v0[29];
  v20 = v0[28];
  v21 = v0[27];
  v22 = v0[26];
  v23 = v0[25];
  v24 = v0[21];
  v25 = v0[20];
  v26 = v0[19];
  v27 = v0[16];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100201DB8()
{
  v45 = v0;
  v1 = *(v0 + 376);
  v2 = *(v0 + 360);
  (*(v0 + 368))(*(v0 + 200), *(v0 + 104), *(v0 + 176));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 384);
  v7 = *(v0 + 200);
  v8 = *(v0 + 176);
  if (v5)
  {
    v42 = *(v0 + 680);
    v40 = *(v0 + 544);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v44 = v10;
    *v9 = 141558275;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2081;
    sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    v6(v7, v8);
    v14 = sub_1000136BC(v11, v13, &v44);

    *(v9 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "Successfully removed imported share %{private,mask.hash}s", v9, 0x16u);
    sub_100007BAC(v10);
  }

  else
  {
    v15 = *(v0 + 680);

    v6(v7, v8);
  }

  v17 = *(v0 + 344);
  v16 = *(v0 + 352);
  v19 = *(v0 + 328);
  v18 = *(v0 + 336);
  v21 = *(v0 + 312);
  v20 = *(v0 + 320);
  v22 = *(v0 + 296);
  v23 = *(v0 + 304);
  v25 = *(v0 + 280);
  v24 = *(v0 + 288);
  v28 = *(v0 + 272);
  v29 = *(v0 + 264);
  v30 = *(v0 + 256);
  v31 = *(v0 + 248);
  v32 = *(v0 + 240);
  v33 = *(v0 + 232);
  v34 = *(v0 + 224);
  v35 = *(v0 + 216);
  v36 = *(v0 + 208);
  v37 = *(v0 + 200);
  v38 = *(v0 + 168);
  v39 = *(v0 + 160);
  v41 = *(v0 + 152);
  v43 = *(v0 + 128);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_1002020CC()
{
  v1 = v0[14];

  sub_100007BAC(v0 + 15);
  v2 = v0[20];

  v3 = v0[21];

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

unint64_t sub_1002021D0()
{
  result = qword_101699B78;
  if (!qword_101699B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101699B78);
  }

  return result;
}

unint64_t sub_10020223C()
{
  result = qword_101699B88;
  if (!qword_101699B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101699B88);
  }

  return result;
}

void sub_1002022BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_101699BA8, &unk_1013926B0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v79 - v6;
  v8 = type metadata accessor for URLComponents();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v85 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v79 - v14;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = a1;
  URL.init(string:)();
  if ((*(v17 + 48))(v15, 1, v16) != 1)
  {
    (*(v17 + 32))(v20, v15, v16);
    URLComponents.init(url:resolvingAgainstBaseURL:)();
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      (*(v17 + 8))(v20, v16);
      v21 = &qword_101699BA8;
      v22 = &unk_1013926B0;
      v23 = v7;
      goto LABEL_5;
    }

    v32 = v8;
    v33 = v85;
    (*(v9 + 32))(v85, v7, v32);
    v34 = URLComponents.fragment.getter();
    if (!v35)
    {
      if (qword_101694780 != -1)
      {
        swift_once();
      }

      v59 = type metadata accessor for Logger();
      sub_1000076D4(v59, qword_10177AE40);

      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v83 = a2;
        v63 = v62;
        v64 = swift_slowAlloc();
        v81 = v20;
        v65 = v64;
        v88 = v64;
        *v63 = 136315138;
        *(v63 + 4) = sub_1000136BC(v90, v83, &v88);
        _os_log_impl(&_mh_execute_header, v60, v61, "Invalid fragment from URL %s", v63, 0xCu);
        sub_100007BAC(v65);
        v20 = v81;
      }

      sub_1002021D0();
      swift_allocError();
      *v66 = 9;
      swift_willThrow();
      (*(v9 + 8))(v33, v32);
      (*(v17 + 8))(v20, v16);
      return;
    }

    v82 = v17;
    v83 = a2;
    v84 = v16;
    v88 = v34;
    v89 = v35;
    v86 = 44;
    v87 = 0xE100000000000000;
    sub_1000DF96C();
    a2 = StringProtocol.components<A>(separatedBy:)();

    v36 = *(a2 + 16);
    if (!v36)
    {

LABEL_32:
      v67 = v83;
      v68 = v84;
      v69 = v82;
      if (qword_101694780 != -1)
      {
        swift_once();
      }

      v70 = type metadata accessor for Logger();
      sub_1000076D4(v70, qword_10177AE40);

      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v74 = v20;
        v75 = swift_slowAlloc();
        v88 = v75;
        *v73 = 136315138;
        *(v73 + 4) = sub_1000136BC(v90, v67, &v88);
        _os_log_impl(&_mh_execute_header, v71, v72, "Key not found on the input URL %s", v73, 0xCu);
        sub_100007BAC(v75);
        v20 = v74;
        v68 = v84;
      }

      sub_1002021D0();
      swift_allocError();
      *v76 = 9;
      swift_willThrow();
      (*(v9 + 8))(v85, v32);
      (*(v69 + 8))(v20, v68);
      return;
    }

    v80 = v32;
    v81 = v20;
    v79 = v9;
    v37 = 0;
    v38 = (a2 + 40);
    while (1)
    {
      if (v37 >= *(a2 + 16))
      {
        __break(1u);
        goto LABEL_41;
      }

      v39 = *v38;
      v88 = *(v38 - 1);
      v89 = v39;
      v86 = 58;
      v87 = 0xE100000000000000;
      v40 = StringProtocol.components<A>(separatedBy:)();
      if (v40[2] == 2)
      {
        v41 = v40[4] == 107 && v40[5] == 0xE100000000000000;
        v42 = v40;
        if (v41)
        {
          break;
        }

        v43 = v40[4];
        if (_stringCompareWithSmolCheck(_:_:expecting:)())
        {
          break;
        }
      }

      ++v37;

      v38 += 2;
      if (v36 == v37)
      {

        v9 = v79;
        v32 = v80;
        v20 = v81;
        goto LABEL_32;
      }
    }

    if (qword_101694780 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_1000076D4(v44, qword_10177AE40);

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();

    v47 = os_log_type_enabled(v45, v46);
    v49 = v79;
    v48 = v80;
    v50 = v85;
    v52 = v81;
    v51 = v82;
    if (v47)
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v88 = v54;
      *v53 = 141558275;
      *(v53 + 4) = 1752392040;
      *(v53 + 12) = 2081;
      if (v42[2] < 2uLL)
      {
LABEL_43:
        __break(1u);
        return;
      }

      v55 = v54;
      v56 = v42[6];
      v57 = v42[7];

      v58 = sub_1000136BC(v56, v57, &v88);

      *(v53 + 14) = v58;
      _os_log_impl(&_mh_execute_header, v45, v46, "Decryption key found on the url %{private,mask.hash}s", v53, 0x16u);
      sub_100007BAC(v55);

      v49 = v79;
      v48 = v80;
      v51 = v82;
    }

    else
    {
    }

    if (v42[2] >= 2uLL)
    {
      v77 = v42[6];
      v78 = v42[7];

      (*(v49 + 8))(v50, v48);
      (*(v51 + 8))(v52, v84);
      return;
    }

    __break(1u);
    goto LABEL_43;
  }

  v21 = &unk_101696AC0;
  v22 = &qword_101390A60;
  v23 = v15;
LABEL_5:
  sub_10000B3A8(v23, v21, v22);
  if (qword_101694780 != -1)
  {
LABEL_41:
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_1000076D4(v24, qword_10177AE40);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = a2;
    v30 = v28;
    v88 = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_1000136BC(v90, v29, &v88);
    _os_log_impl(&_mh_execute_header, v25, v26, "Invalid input URL %s", v27, 0xCu);
    sub_100007BAC(v30);
  }

  sub_1002021D0();
  swift_allocError();
  *v31 = 9;
  swift_willThrow();
}

uint64_t sub_100202CCC(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_101699BA8, &unk_1013926B0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v24 - v4;
  v6 = type metadata accessor for URLComponents();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v24 - v13;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    v20 = &unk_101696AC0;
    v21 = &qword_101390A60;
    v22 = v14;
  }

  else
  {
    (*(v16 + 32))(v19, v14, v15);
    URLComponents.init(url:resolvingAgainstBaseURL:)();
    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      (*(v7 + 32))(v10, v5, v6);
      URLComponents.fragment.setter();
      a1 = URLComponents.string.getter();
      (*(v7 + 8))(v10, v6);
      (*(v16 + 8))(v19, v15);
      return a1;
    }

    (*(v16 + 8))(v19, v15);
    v20 = &qword_101699BA8;
    v21 = &unk_1013926B0;
    v22 = v5;
  }

  sub_10000B3A8(v22, v20, v21);

  return a1;
}

uint64_t sub_10020300C(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_1002030BC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for SharedBeaconRecord(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100014650;

  return sub_1001F6D20(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_10020320C(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_1001F77C4(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100203304(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100203398()
{
  v1 = *(type metadata accessor for SessionTokenRecord() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  return sub_100E72154(v3, v0 + v2, v5, v6);
}

uint64_t sub_100203454(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_100203508(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

uint64_t sub_100203590()
{
  v1 = *(type metadata accessor for SharedBeaconRecord(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for MemberSharingCircle() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v0 + 16);
  v7 = (v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_100E72184(v6, v0 + v2, v0 + v5, v8, v9);
}

uint64_t sub_100203698(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100203700(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100203774()
{
  result = qword_101699BD0;
  if (!qword_101699BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101699BD0);
  }

  return result;
}

unint64_t sub_1002037D8()
{
  result = qword_101699BD8;
  if (!qword_101699BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101699BD8);
  }

  return result;
}

uint64_t sub_10020382C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x7265776F50776F6CLL;
    v6 = 0x65776F5068676968;
    if (a1 != 2)
    {
      v6 = 0x4F7265776F506E6FLL;
    }

    if (a1)
    {
      v5 = 0x6F506D756964656DLL;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x7265747461426E6FLL;
    v2 = 0x6F696E61706D6F63;
    if (a1 != 7)
    {
      v2 = 0x6857796669746F6ELL;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x4F7265776F506E6FLL;
    if (a1 != 4)
    {
      v3 = 0x7265747461426E6FLL;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

Swift::Int sub_1002039A8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10076EE68();
  return Hasher._finalize()();
}

Swift::Int sub_1002039F8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10076EE68();
  return Hasher._finalize()();
}

unint64_t sub_100203A3C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100203B28(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100203A6C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10020382C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100203B28(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1016074D0, v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

__n128 sub_100203B78(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_100203BA4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 144))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100203BF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 144) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 144) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_100203C7C(void *a1)
{
  v3 = v1;
  v4 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v63 = *v1;
  v52 = *v1;
  sub_10015049C(v53, v54);
  sub_1001022C4(&v63, &v51);
  sub_100165078();
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  if (v2)
  {
    v14 = *(&v52 + 1);
    v13 = v52;
LABEL_17:
    sub_100016590(v13, v14);
    return sub_100007BAC(v53);
  }

  sub_100016590(v52, *(&v52 + 1));
  v62 = v1[1];
  v52 = v1[1];
  sub_10015049C(v53, v54);
  sub_1001022C4(&v62, &v51);
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  sub_100016590(v52, *(&v52 + 1));
  v61 = v1[2];
  v52 = v1[2];
  sub_10015049C(v53, v54);
  sub_1001022C4(&v61, &v51);
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  sub_100016590(v52, *(&v52 + 1));
  v60 = v1[3];
  v52 = v1[3];
  sub_10015049C(v53, v54);
  sub_1001022C4(&v60, &v51);
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  sub_100016590(v52, *(&v52 + 1));
  v59 = v1[4];
  v52 = v1[4];
  sub_10015049C(v53, v54);
  sub_1001022C4(&v59, &v51);
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  result = sub_100016590(v52, *(&v52 + 1));
  v58 = v1[5];
  v6 = v58;
  v7 = *(&v58 + 1) >> 62;
  if ((*(&v58 + 1) >> 62) <= 1)
  {
    if (!v7)
    {
      LOWORD(v8) = BYTE14(v58);
      goto LABEL_15;
    }

    goto LABEL_9;
  }

  if (v7 != 2)
  {
LABEL_14:
    LOWORD(v8) = 0;
    goto LABEL_15;
  }

  v6 = *(v58 + 16);
  v9 = *(v58 + 24);
  v8 = v9 - v6;
  if (__OFSUB__(v9, v6))
  {
    __break(1u);
LABEL_9:
    v10 = __OFSUB__(HIDWORD(v6), v6);
    v11 = HIDWORD(v6) - v6;
    if (v10)
    {
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    v8 = v11;
  }

  result = sub_1001022C4(&v58, &v52);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_79;
  }

  if (v8 >> 16)
  {
    __break(1u);
    goto LABEL_14;
  }

LABEL_15:
  LOWORD(v51) = v8;
  sub_1002053B0();
  *&v52 = FixedWidthInteger.data.getter();
  *(&v52 + 1) = v12;
  sub_10015049C(v53, v54);
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  result = sub_100016590(v52, *(&v52 + 1));
  v52 = v58;
  v15 = v58;
  v16 = *(&v58 + 1) >> 62;
  if ((*(&v58 + 1) >> 62) <= 1)
  {
    if (!v16)
    {
      v15 = BYTE14(v58);
      goto LABEL_28;
    }

    goto LABEL_25;
  }

  if (v16 != 2)
  {
    v15 = 0;
    goto LABEL_28;
  }

  v17 = *(v58 + 16);
  v18 = *(v58 + 24);
  v10 = __OFSUB__(v18, v17);
  v15 = v18 - v17;
  if (v10)
  {
    __break(1u);
LABEL_25:
    v10 = __OFSUB__(HIDWORD(v15), v15);
    LODWORD(v15) = HIDWORD(v15) - v15;
    if (v10)
    {
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    v15 = v15;
  }

LABEL_28:
  result = 1900 - v15;
  if (__OFSUB__(1900, v15))
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  *&v51 = sub_100845C88(result);
  *(&v51 + 1) = v19;
  sub_100776394(&v51, 0);
  v20 = v51;
  Data.append(_:)();
  sub_100016590(v20, *(&v20 + 1));
  v21 = v52;
  v51 = v52;
  sub_10015049C(v53, v54);
  sub_100017D5C(v21, *(&v21 + 1));
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  result = sub_100016590(v51, *(&v51 + 1));
  v57 = v3[6];
  v22 = v57;
  v23 = *(&v57 + 1) >> 62;
  if ((*(&v57 + 1) >> 62) <= 1)
  {
    if (!v23)
    {
      LOWORD(v24) = BYTE14(v57);
      goto LABEL_42;
    }

    goto LABEL_36;
  }

  if (v23 != 2)
  {
    goto LABEL_41;
  }

  v22 = *(v57 + 16);
  v25 = *(v57 + 24);
  v24 = v25 - v22;
  if (__OFSUB__(v25, v22))
  {
    __break(1u);
LABEL_36:
    v10 = __OFSUB__(HIDWORD(v22), v22);
    v26 = HIDWORD(v22) - v22;
    if (v10)
    {
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    v24 = v26;
  }

  result = sub_1001022C4(&v57, &v51);
  if ((v24 & 0x8000000000000000) != 0)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  if (!(v24 >> 16))
  {
    goto LABEL_42;
  }

  __break(1u);
LABEL_41:
  LOWORD(v24) = 0;
LABEL_42:
  LOWORD(v50) = v24;
  *&v51 = FixedWidthInteger.data.getter();
  *(&v51 + 1) = v27;
  sub_10015049C(v53, v54);
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  result = sub_100016590(v51, *(&v51 + 1));
  v51 = v57;
  v28 = v57;
  v29 = *(&v57 + 1) >> 62;
  if ((*(&v57 + 1) >> 62) <= 1)
  {
    if (!v29)
    {
      v28 = BYTE14(v57);
      goto LABEL_52;
    }

    goto LABEL_49;
  }

  if (v29 != 2)
  {
    v28 = 0;
    goto LABEL_52;
  }

  v30 = *(v57 + 16);
  v31 = *(v57 + 24);
  v10 = __OFSUB__(v31, v30);
  v28 = v31 - v30;
  if (v10)
  {
    __break(1u);
LABEL_49:
    v10 = __OFSUB__(HIDWORD(v28), v28);
    LODWORD(v28) = HIDWORD(v28) - v28;
    if (v10)
    {
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    v28 = v28;
  }

LABEL_52:
  v64 = *(&v21 + 1);
  result = 600 - v28;
  if (__OFSUB__(600, v28))
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  *&v50 = sub_100845C88(result);
  *(&v50 + 1) = v32;
  sub_100776394(&v50, 0);
  v33 = v50;
  Data.append(_:)();
  sub_100016590(v33, *(&v33 + 1));
  v34 = v51;
  v50 = v51;
  sub_10015049C(v53, v54);
  sub_100017D5C(v34, *(&v34 + 1));
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  result = sub_100016590(v50, *(&v50 + 1));
  v56 = v3[7];
  v35 = v56;
  v36 = *(&v56 + 1) >> 62;
  if ((*(&v56 + 1) >> 62) <= 1)
  {
    if (!v36)
    {
      v37 = HIWORD(*(&v56 + 1));
      goto LABEL_66;
    }

    goto LABEL_60;
  }

  if (v36 != 2)
  {
    goto LABEL_65;
  }

  v35 = *(v56 + 16);
  v38 = *(v56 + 24);
  v37 = v38 - v35;
  if (__OFSUB__(v38, v35))
  {
    __break(1u);
LABEL_60:
    v10 = __OFSUB__(HIDWORD(v35), v35);
    v39 = HIDWORD(v35) - v35;
    if (v10)
    {
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    v37 = v39;
  }

  result = sub_1001022C4(&v56, &v50);
  if ((v37 & 0x8000000000000000) != 0)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  if (v37 <= 0xFF)
  {
    goto LABEL_66;
  }

  __break(1u);
LABEL_65:
  LOBYTE(v37) = 0;
LABEL_66:
  LOBYTE(v49) = v37;
  sub_1000198E8();
  *&v50 = FixedWidthInteger.data.getter();
  *(&v50 + 1) = v40;
  sub_10015049C(v53, v54);
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  result = sub_100016590(v50, *(&v50 + 1));
  v50 = v56;
  v41 = v56;
  v42 = *(&v56 + 1) >> 62;
  if ((*(&v56 + 1) >> 62) > 1)
  {
    if (v42 == 2)
    {
      v43 = *(v56 + 16);
      v44 = *(v56 + 24);
      v10 = __OFSUB__(v44, v43);
      v41 = v44 - v43;
      if (v10)
      {
        __break(1u);
        goto LABEL_73;
      }
    }

    else
    {
      v41 = 0;
    }

LABEL_76:
    result = 100 - v41;
    if (!__OFSUB__(100, v41))
    {
      *&v49 = sub_100845C88(result);
      *(&v49 + 1) = v45;
      sub_100776394(&v49, 0);
      v46 = v49;
      Data.append(_:)();
      sub_100016590(v46, *(&v46 + 1));
      v47 = v50;
      v49 = v50;
      sub_10015049C(v53, v54);
      sub_100017D5C(v47, *(&v47 + 1));
      dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
      sub_100016590(v49, *(&v49 + 1));
      v55 = v3[8];
      v49 = v3[8];
      sub_10015049C(v53, v54);
      sub_1001022C4(&v55, v48);
      dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
      sub_100016590(v49, *(&v49 + 1));
      sub_100016590(v47, *(&v47 + 1));
      sub_100016590(v34, 0);
      v13 = v21;
      v14 = v64;
      goto LABEL_17;
    }

    goto LABEL_87;
  }

  if (!v42)
  {
    v41 = BYTE14(v56);
    goto LABEL_76;
  }

LABEL_73:
  v10 = __OFSUB__(HIDWORD(v41), v41);
  LODWORD(v41) = HIDWORD(v41) - v41;
  if (!v10)
  {
    v41 = v41;
    goto LABEL_76;
  }

LABEL_89:
  __break(1u);
  return result;
}

__n128 sub_10020452C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100204678(a1, v8);
  if (!v2)
  {
    v5 = v8[7];
    *(a2 + 96) = v8[6];
    *(a2 + 112) = v5;
    *(a2 + 128) = v8[8];
    v6 = v8[3];
    *(a2 + 32) = v8[2];
    *(a2 + 48) = v6;
    v7 = v8[5];
    *(a2 + 64) = v8[4];
    *(a2 + 80) = v7;
    result = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = result;
  }

  return result;
}

unint64_t sub_1002045A0(uint64_t a1)
{
  *(a1 + 8) = sub_1002045D0();
  result = sub_100204624();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1002045D0()
{
  result = qword_101699BE0;
  if (!qword_101699BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101699BE0);
  }

  return result;
}

unint64_t sub_100204624()
{
  result = qword_101699BE8;
  if (!qword_101699BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101699BE8);
  }

  return result;
}

uint64_t sub_100204678@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for Endianness();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v109, v110);
  v8 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v2)
  {
    goto LABEL_23;
  }

  v10 = v8;
  v11 = v9;
  sub_10015049C(v109, v110);
  v106 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v111 = v12;
  sub_10015049C(v109, v110);
  v104 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v105 = v13;
  sub_10015049C(v109, v110);
  v102 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v103 = v14;
  sub_10015049C(v109, v110);
  v100 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v101 = v15;
  sub_10015049C(v109, v110);
  v16 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v98 = v17;
  v99 = v16;
  sub_10015049C(v109, v110);
  v18 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v96 = v19;
  v97 = v18;
  v21 = v98;
  v20 = v99;
  sub_100017D5C(v99, v98);
  static Endianness.current.getter();
  sub_1002053B0();
  FixedWidthInteger.init(data:ofEndianness:)();
  if ((v107 & 0x10000) != 0)
  {
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_1000076D4(v22, qword_10177C448);
    sub_100017D5C(v99, v98);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    sub_100016590(v99, v98);
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v107 = v26;
      *v25 = 136315138;
      v27 = Data.hexString.getter();
      v29 = sub_1000136BC(v27, v28, &v107);
      v21 = v98;

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v23, v24, "Invalid certs length: %s", v25, 0xCu);
      sub_100007BAC(v26);
      v20 = v99;
    }

    v30 = type metadata accessor for BinaryEncodingError();
    sub_100205404();
    swift_allocError();
    (*(*(v30 - 8) + 104))(v31, enum case for BinaryEncodingError.encodingError(_:), v30);
    swift_willThrow();
    sub_100016590(v97, v96);
    v32 = v20;
    v33 = v21;
    goto LABEL_22;
  }

  sub_100017D5C(v97, v96);
  sub_10002EA98(v107, v97, v96, &v107);
  v92 = v107;
  v93 = v108;
  sub_10015049C(v109, v110);
  v91 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v94 = v34;
  sub_10015049C(v109, v110);
  v89 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v90 = v35;
  sub_100017D5C(v91, v94);
  static Endianness.current.getter();
  FixedWidthInteger.init(data:ofEndianness:)();
  if ((v107 & 0x10000) != 0)
  {
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_1000076D4(v36, qword_10177C448);
    sub_100017D5C(v91, v94);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    sub_100016590(v91, v94);
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v107 = v40;
      *v39 = 136315138;
      v41 = Data.hexString.getter();
      v43 = sub_1000136BC(v41, v42, &v107);

      *(v39 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v37, v38, "Invalid CSR length: %s", v39, 0xCu);
      sub_100007BAC(v40);
    }

    v44 = type metadata accessor for BinaryEncodingError();
    sub_100205404();
    swift_allocError();
    (*(*(v44 - 8) + 104))(v45, enum case for BinaryEncodingError.encodingError(_:), v44);
    swift_willThrow();
LABEL_21:
    sub_100016590(v89, v90);
    sub_100016590(v91, v94);
    sub_100016590(v92, v93);
    sub_100016590(v97, v96);
    v33 = v98;
    v32 = v99;
LABEL_22:
    sub_100016590(v32, v33);
    sub_100016590(v100, v101);
    sub_100016590(v102, v103);
    sub_100016590(v104, v105);
    sub_100016590(v106, v111);
    sub_100016590(v10, v11);
LABEL_23:
    sub_100007BAC(v109);
    return sub_100007BAC(a1);
  }

  v46 = v107;
  sub_100017D5C(v89, v90);
  sub_10002EA98(v46, v89, v90, &v107);
  v88 = v107;
  v95 = v108;
  sub_10015049C(v109, v110);
  v86 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v87 = v47;
  sub_10015049C(v109, v110);
  v84 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v85 = v48;
  sub_100017D5C(v86, v87);
  static Endianness.current.getter();
  sub_1000198E8();
  FixedWidthInteger.init(data:ofEndianness:)();
  if ((v107 & 0x100) != 0)
  {
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_1000076D4(v49, qword_10177C448);
    sub_100017D5C(v86, v87);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    sub_100016590(v86, v87);
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v107 = v53;
      *v52 = 136315138;
      v54 = Data.hexString.getter();
      v56 = sub_1000136BC(v54, v55, &v107);

      *(v52 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v50, v51, "Invalid signature length: %s", v52, 0xCu);
      sub_100007BAC(v53);
    }

    v57 = type metadata accessor for BinaryEncodingError();
    sub_100205404();
    swift_allocError();
    (*(*(v57 - 8) + 104))(v58, enum case for BinaryEncodingError.encodingError(_:), v57);
    swift_willThrow();
    sub_100016590(v84, v85);
    sub_100016590(v86, v87);
    sub_100016590(v88, v95);
    goto LABEL_21;
  }

  v59 = v107;
  sub_100017D5C(v84, v85);
  sub_10002EA98(v59, v84, v85, &v107);
  v60 = v107;
  v83 = v108;
  sub_10015049C(v109, v110);
  v62 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v64 = v63;
  sub_100016590(v84, v85);
  sub_100016590(v86, v87);
  sub_100016590(v89, v90);
  sub_100016590(v91, v94);
  sub_100016590(v97, v96);
  result = sub_100016590(v99, v98);
  v65 = v11 >> 62;
  if ((v11 >> 62) <= 1)
  {
    if (!v65)
    {
      v66 = BYTE6(v11);
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  if (v65 != 2)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v67 = *(v10 + 16);
  v68 = *(v10 + 24);
  v69 = __OFSUB__(v68, v67);
  v66 = v68 - v67;
  if (v69)
  {
    __break(1u);
LABEL_31:
    LODWORD(v66) = HIDWORD(v10) - v10;
    if (__OFSUB__(HIDWORD(v10), v10))
    {
      __break(1u);
      goto LABEL_66;
    }

    v66 = v66;
  }

LABEL_33:
  if (v66 != 16)
  {
    goto LABEL_69;
  }

  v70 = v111 >> 62;
  if ((v111 >> 62) <= 1)
  {
    if (!v70)
    {
      v71 = BYTE6(v111);
      goto LABEL_43;
    }

LABEL_41:
    LODWORD(v71) = HIDWORD(v106) - v106;
    if (!__OFSUB__(HIDWORD(v106), v106))
    {
      v71 = v71;
      goto LABEL_43;
    }

LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (v70 != 2)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v72 = *(v106 + 16);
  v73 = *(v106 + 24);
  v69 = __OFSUB__(v73, v72);
  v71 = v73 - v72;
  if (v69)
  {
    __break(1u);
    goto LABEL_41;
  }

LABEL_43:
  if (v71 != 16)
  {
    goto LABEL_70;
  }

  v74 = v105 >> 62;
  if ((v105 >> 62) <= 1)
  {
    if (!v74)
    {
      v75 = BYTE6(v105);
      goto LABEL_53;
    }

LABEL_51:
    LODWORD(v75) = HIDWORD(v104) - v104;
    if (!__OFSUB__(HIDWORD(v104), v104))
    {
      v75 = v75;
      goto LABEL_53;
    }

LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if (v74 != 2)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v76 = *(v104 + 16);
  v77 = *(v104 + 24);
  v69 = __OFSUB__(v77, v76);
  v75 = v77 - v76;
  if (v69)
  {
    __break(1u);
    goto LABEL_51;
  }

LABEL_53:
  if (v75 != 18)
  {
    goto LABEL_71;
  }

  v78 = v101 >> 62;
  if ((v101 >> 62) <= 1)
  {
    if (!v78)
    {
      v79 = BYTE6(v101);
      goto LABEL_63;
    }

LABEL_61:
    LODWORD(v79) = HIDWORD(v100) - v100;
    if (!__OFSUB__(HIDWORD(v100), v100))
    {
      v79 = v79;
      goto LABEL_63;
    }

    goto LABEL_68;
  }

  if (v78 != 2)
  {
    goto LABEL_72;
  }

  v81 = *(v100 + 16);
  v80 = *(v100 + 24);
  v69 = __OFSUB__(v80, v81);
  v79 = v80 - v81;
  if (v69)
  {
    __break(1u);
    goto LABEL_61;
  }

LABEL_63:
  if (v79 == 64)
  {
    sub_100007BAC(v109);
    result = sub_100007BAC(a1);
    *a2 = v10;
    a2[1] = v11;
    v82 = v111;
    a2[2] = v106;
    a2[3] = v82;
    a2[4] = v104;
    a2[5] = v105;
    a2[6] = v102;
    a2[7] = v103;
    a2[8] = v100;
    a2[9] = v101;
    a2[10] = v92;
    a2[11] = v93;
    a2[12] = v88;
    a2[13] = v95;
    a2[14] = v60;
    a2[15] = v83;
    a2[16] = v62;
    a2[17] = v64;
    return result;
  }

LABEL_72:
  __break(1u);
  return result;
}

unint64_t sub_1002053B0()
{
  result = qword_101699BF0;
  if (!qword_101699BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101699BF0);
  }

  return result;
}

unint64_t sub_100205404()
{
  result = qword_101696E20;
  if (!qword_101696E20)
  {
    type metadata accessor for BinaryEncodingError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101696E20);
  }

  return result;
}

Swift::Int sub_1002054C0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = -1;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_100205510()
{
  if (*v0)
  {
    v1 = 1;
  }

  else
  {
    v1 = -1;
  }

  Hasher._combine(_:)(v1);
}

Swift::Int sub_100205548()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = -1;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void *sub_100205644@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == -1)
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

void sub_100205664(uint64_t *a1@<X8>)
{
  v2 = 1;
  if (!*v1)
  {
    v2 = -1;
  }

  *a1 = v2;
}

unint64_t sub_100205680()
{
  result = qword_101699BF8;
  if (!qword_101699BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101699BF8);
  }

  return result;
}

unint64_t sub_1002056D4()
{
  result = qword_101699C00;
  if (!qword_101699C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101699C00);
  }

  return result;
}

uint64_t sub_100205728()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177A590);
  v1 = sub_1000076D4(v0, qword_10177A590);
  if (qword_1016944C8 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177A5A8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1002057F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = sub_1000BC4D4(&qword_101699CF0, &qword_101393000);
  v7 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33);
  v9 = (v26 - v8);
  v32 = sub_1000BC4D4(&qword_101699CF8, &qword_101393008);
  v27 = *(v32 - 8);
  v10 = *(v27 + 64);
  __chkstk_darwin(v32);
  v12 = v26 - v11;
  v13 = sub_1000BC4D4(&qword_101699D00, &unk_101393010);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v17 = v26 - v16;
  result = *(a2 + 128);
  v19 = *(result + 16);
  if (v19)
  {
    v26[1] = v3;
    v21 = *(v15 + 16);
    v20 = v15 + 16;
    v22 = result + ((*(v20 + 64) + 32) & ~*(v20 + 64));
    v29 = *(v20 + 56);
    v30 = v21;
    v31 = v20;
    v23 = (v20 - 8);
    v28 = a3;
    v24 = (v27 + 8);
    v27 = result;

    do
    {
      v30(v17, v22, v13);
      v25 = *(v33 + 48);
      *v9 = a1;
      sub_100206A84(v28, v9 + v25);

      AsyncStream.Continuation.yield(_:)();
      (*v23)(v17, v13);
      (*v24)(v12, v32);
      v22 += v29;
      --v19;
    }

    while (v19);
  }

  return result;
}

uint64_t sub_100205A7C()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 128);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100205AE0(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.initialLaunchProcessing()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for LeechScanningService();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v6, a2);
}

uint64_t sub_100205B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ActorServiceProtocol.migrate(from:to:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for LeechScanningService();
  *v9 = v4;
  v9[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v10, a4);
}

uint64_t sub_100205C4C(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.firstLaunchSinceReboot()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for LeechScanningService();
  *v5 = v2;
  v5[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v6, a2);
}

uint64_t sub_100205CF4(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.startup()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for LeechScanningService();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.startup()(v6, a2);
}

uint64_t sub_100205D9C(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.run()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for LeechScanningService();
  *v5 = v2;
  v5[1] = sub_100014650;

  return ActorServiceProtocol.run()(v6, a2);
}

uint64_t sub_100205E44()
{
  v1 = *v0;
  type metadata accessor for LeechScanningService();
  sub_100205F00(&unk_1016B1170);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_100205F00(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LeechScanningService();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100205F40(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_101699D00, &unk_101393010);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  v9 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v17 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v5 + 16))(v8, a1, v4);
  v14 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 4) = a2;
  (*(v5 + 32))(&v15[v14], v8, v4);

  sub_10025EDD4(0, 0, v12, &unk_101393028, v15);
}

uint64_t sub_10020612C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = sub_1000BC4D4(&qword_101699D00, &unk_101393010);
  v5[4] = v7;
  v8 = *(v7 - 8);
  v5[5] = v8;
  v9 = *(v8 + 64) + 15;
  v5[6] = swift_task_alloc();

  return _swift_task_switch(sub_1002061FC, a4, 0);
}

uint64_t sub_1002061FC()
{
  v1 = v0[2];
  (*(v0[5] + 16))(v0[6], v0[3], v0[4]);
  v2 = *(v1 + 128);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 128) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_100A5C424(0, v2[2] + 1, 1, v2);
    *(v1 + 128) = v2;
  }

  v5 = v2[2];
  v4 = v2[3];
  if (v5 >= v4 >> 1)
  {
    v2 = sub_100A5C424(v4 > 1, v5 + 1, 1, v2);
  }

  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[4];
  v2[2] = v5 + 1;
  (*(v6 + 32))(v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5, v7, v8);
  *(v1 + 128) = v2;

  v9 = v0[1];

  return v9();
}

uint64_t sub_10020632C(uint64_t a1, int a2)
{
  *(v3 + 72) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = *(*(sub_1000BC4D4(&unk_1016C1190, &qword_101392FF8) - 8) + 64) + 15;
  *(v3 + 32) = swift_task_alloc();
  v5 = type metadata accessor for DiscoveredObject(0);
  *(v3 + 40) = v5;
  v6 = *(v5 - 8);
  *(v3 + 48) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 56) = swift_task_alloc();
  *(v3 + 64) = swift_task_alloc();

  return _swift_task_switch(sub_100206434, 0, 0);
}

uint64_t sub_100206434()
{
  v37 = v0;
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 72);
  v5 = *(v0 + 16);

  sub_1002DEDAC(v6, v4, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100206934(*(v0 + 32));
    if (qword_1016944C0 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 16);
    v8 = type metadata accessor for Logger();
    sub_1000076D4(v8, qword_10177A590);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 16);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v36 = v13;
      *v12 = 136446210;
      v14 = Dictionary.description.getter();
      v16 = sub_1000136BC(v14, v15, &v36);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v9, v10, "Failed to parse: %{public}s", v12, 0xCu);
      sub_100007BAC(v13);
    }

    v18 = *(v0 + 56);
    v17 = *(v0 + 64);
    v19 = *(v0 + 32);

    v20 = *(v0 + 8);

    return v20();
  }

  else
  {
    sub_100206A20(*(v0 + 32), *(v0 + 64));
    if (qword_1016944C0 != -1)
    {
      swift_once();
    }

    v22 = *(v0 + 56);
    v23 = *(v0 + 64);
    v24 = type metadata accessor for Logger();
    sub_1000076D4(v24, qword_10177A590);
    sub_100206A84(v23, v22);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v0 + 56);
    if (v27)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v36 = v30;
      *v29 = 136446210;
      v31 = sub_1002E1B74(v30);
      v33 = v32;
      sub_100206AE8(v28);
      v34 = sub_1000136BC(v31, v33, &v36);

      *(v29 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v25, v26, "Discovered: %{public}s", v29, 0xCu);
      sub_100007BAC(v30);
    }

    else
    {

      sub_100206AE8(v28);
    }

    v35 = *(v0 + 24);

    return _swift_task_switch(sub_1002067E0, v35, 0);
  }
}

uint64_t sub_1002067E0()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 24);
  type metadata accessor for Transaction();
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  static Transaction.named<A>(_:with:)();

  return _swift_task_switch(sub_1002068B8, 0, 0);
}

uint64_t sub_1002068B8()
{
  sub_100206AE8(v0[8]);
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[4];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100206934(uint64_t a1)
{
  v2 = sub_1000BC4D4(&unk_1016C1190, &qword_101392FF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10020699C()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177A5A8);
  sub_1000076D4(v0, qword_10177A5A8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100206A20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiscoveredObject(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100206A84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiscoveredObject(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100206AE8(uint64_t a1)
{
  v2 = type metadata accessor for DiscoveredObject(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100206B60(uint64_t a1)
{
  v4 = *(sub_1000BC4D4(&qword_101699D00, &unk_101393010) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014650;

  return sub_10020612C(a1, v6, v7, v8, v1 + v5);
}

void *sub_100206C74(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = a1;
  sub_1011244D8(0, v1, 0);
  v3 = v2 + 56;
  v4 = -1 << *(v2 + 32);
  result = _HashTable.startBucket.getter();
  v6 = result;
  v7 = 0;
  v24 = v2 + 64;
  v25 = v1;
  v26 = v2 + 56;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v2 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v3 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v27 = v7;
    v28 = *(v2 + 36);
    v10 = (*(v2 + 48) + 16 * v6);
    v11 = v2;
    v12 = *v10;
    v13 = v10[1];
    result = sub_100029784(*v10, v13);
    v15 = _swiftEmptyArrayStorage[2];
    v14 = _swiftEmptyArrayStorage[3];
    if (v15 >= v14 >> 1)
    {
      result = sub_1011244D8((v14 > 1), v15 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v15 + 1;
    v16 = &_swiftEmptyArrayStorage[2 * v15];
    v16[4] = v12;
    v16[5] = v13 & 0xDFFFFFFFFFFFFFFFLL;
    v8 = 1 << *(v11 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v2 = v11;
    v3 = v26;
    v17 = *(v26 + 8 * v9);
    if ((v17 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v28 != *(v2 + 36))
    {
      goto LABEL_24;
    }

    v18 = v17 & (-2 << (v6 & 0x3F));
    if (v18)
    {
      v8 = __clz(__rbit64(v18)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v9 << 6;
      v20 = v9 + 1;
      v21 = (v24 + 8 * v9);
      while (v20 < (v8 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_1000BB408(v6, v28, 0);
          v8 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = sub_1000BB408(v6, v28, 0);
    }

LABEL_4:
    v7 = v27 + 1;
    v6 = v8;
    if (v27 + 1 == v25)
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

uint64_t sub_100206EA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v24 = *(a1 + 16);
  sub_101123D1C(0, v1, 0);
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

    v11 = *(*(a1 + 48) + 4 * result);
    v12 = *(a1 + 36);
    v14 = _swiftEmptyArrayStorage[2];
    v13 = _swiftEmptyArrayStorage[3];
    if (v14 >= v13 >> 1)
    {
      v22 = *(a1 + 36);
      v23 = result;
      sub_101123D1C((v13 > 1), v14 + 1, 1);
      v6 = v24;
      v12 = v22;
      result = v23;
    }

    _swiftEmptyArrayStorage[2] = v14 + 1;
    *(&_swiftEmptyArrayStorage[4] + v14) = v11;
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
          sub_1000BB408(result, v12, 0);
          v6 = v24;
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      sub_1000BB408(result, v12, 0);
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

uint64_t sub_1002070C0()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177A5C0);
  sub_1000076D4(v0, qword_10177A5C0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100207144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) && (v15 = v6, v9 = sub_100771D58(0xD000000000000015, 0x80000001013474F0), v6 = v15, (v10 & 1) != 0))
  {
    v11 = *(*(a1 + 56) + 8 * v9);
    static Date.trustedNow.getter(v8);
    Date.addingTimeInterval(_:)();
    (*(v15 + 8))(v8, v4);
    return (*(v15 + 56))(a2, 0, 1, v4);
  }

  else
  {
    v13 = *(v6 + 56);

    return v13(a2, 1, 1, v4);
  }
}

uint64_t sub_1002072CC()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));
  if (v2 != 1)
  {
    return 0;
  }

  v3 = sub_1000291EC(&qword_101699E80, type metadata accessor for ItemSharingKeyDatabase);
  v4 = *(v3 + 16);
  v5 = type metadata accessor for ItemSharingKeyDatabase();
  result = v4(v5, v3);
  if (result)
  {
    v7 = *(result + 24);

    return v7;
  }

  return result;
}

uint64_t sub_100207390()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));
  if (v2 != 1)
  {
    return 0;
  }

  v3 = sub_1000291EC(&qword_101699E78, type metadata accessor for StandaloneBeaconDatabase);
  v4 = *(v3 + 16);
  v5 = type metadata accessor for StandaloneBeaconDatabase();
  result = v4(v5, v3);
  if (result)
  {
    v7 = *(result + 24);

    return v7;
  }

  return result;
}

uint64_t sub_100207454(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v51 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v51 - v15;
  if (a1)
  {
    sub_100207144(a1, v8);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_10000B3A8(v8, &unk_101696900, &unk_10138B1E0);
      sub_10022A59C();
      swift_allocError();
      *v17 = 0;
      return swift_willThrow();
    }

    else
    {
      (*(v10 + 32))(v16, v8, v9);
      v22 = sub_100207E98(v16, a2);
      p_weak_ivar_lyt = &BeaconKeyManager.weak_ivar_lyt;
      v55 = a1;
      if (v2)
      {
        if (qword_1016944D0 != -1)
        {
          swift_once();
        }

        v24 = type metadata accessor for Logger();
        sub_1000076D4(v24, qword_10177A5C0);
        swift_errorRetain();
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          *v27 = 138543362;
          swift_errorRetain();
          v29 = _swift_stdlib_bridgeErrorToNSError();
          *(v27 + 4) = v29;
          *v28 = v29;
          _os_log_impl(&_mh_execute_header, v25, v26, "Purge failed to delete advertisements: %{public}@.", v27, 0xCu);
          sub_10000B3A8(v28, &qword_10169BB30, &unk_10138B3C0);
        }

        else
        {
        }

        v56 = 0;
        p_weak_ivar_lyt = (&BeaconKeyManager + 56);
      }

      else
      {
        v56 = v22;
        if (qword_1016944D0 != -1)
        {
          swift_once();
        }

        v30 = type metadata accessor for Logger();
        sub_1000076D4(v30, qword_10177A5C0);
        (*(v10 + 16))(v14, v16, v9);
        v31 = Logger.logObject.getter();
        v54 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v31, v54))
        {
          v32 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          v57 = v53;
          *v32 = 134218242;
          *(v32 + 4) = v56;
          *(v32 + 12) = 2082;
          sub_1000291EC(&qword_1016969A0, &type metadata accessor for Date);
          v52 = v31;
          v33 = dispatch thunk of CustomStringConvertible.description.getter();
          v35 = v34;
          (*(v10 + 8))(v14, v9);
          v36 = sub_1000136BC(v33, v35, &v57);

          *(v32 + 14) = v36;
          v37 = v52;
          _os_log_impl(&_mh_execute_header, v52, v54, "Purge deleted %ld advertisements older than %{public}s.", v32, 0x16u);
          sub_100007BAC(v53);

          p_weak_ivar_lyt = (&BeaconKeyManager + 56);
        }

        else
        {

          (*(v10 + 8))(v14, v9);
        }
      }

      v38 = sub_10020B734(a2);
      if (p_weak_ivar_lyt[154] != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      sub_1000076D4(v39, qword_10177A5C0);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 134217984;
        *(v42 + 4) = v38;
        _os_log_impl(&_mh_execute_header, v40, v41, "Purge deleted %ld reconciled advertisements.", v42, 0xCu);
      }

      v43 = __OFADD__(v56, v38);
      v56 += v38;
      if (v43)
      {
        __break(1u);
      }

      v44 = sub_10020B734(a2);
      if (qword_1016944D0 != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      sub_1000076D4(v45, qword_10177A5C0);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 134217984;
        *(v48 + 4) = v44;
        _os_log_impl(&_mh_execute_header, v46, v47, "Purge deleted %ld unreconciled near owner advertisements.", v48, 0xCu);
      }

      v50 = *(v10 + 8);
      v49 = v10 + 8;
      v50(v16, v9);
      result = v56 + v44;
      if (__OFADD__(v56, v44))
      {
        __break(1u);

        (*(v49 + 8))(v16, v9);
        return v56;
      }
    }
  }

  else
  {
    v19 = sub_1000291EC(&qword_101699D28, type metadata accessor for ObservationDatabase);
    v20 = *(v19 + 96);
    v21 = type metadata accessor for ObservationDatabase();
    result = v20(v21, v19);
    if (!v2)
    {
      sub_100C640C8();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100207E98(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Connection.TransactionMode();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100027FA4();
  if (v10)
  {
    v15 = 0;
    v11 = __chkstk_darwin(v10);
    *(&v14 - 4) = a2;
    *(&v14 - 3) = v11;
    *(&v14 - 2) = a1;
    *(&v14 - 1) = &v15;
    (*(v6 + 104))(v9, enum case for Connection.TransactionMode.deferred(_:), v5);
    Connection.transaction(_:block:)();
    (*(v6 + 8))(v9, v5);
    if (v2)
    {
    }

    else
    {

      return v15;
    }
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v13 = 2;
    *(v13 + 4) = 1;
    return swift_willThrow();
  }
}

void (*sub_100208084(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t *a4))(char *, uint64_t)
{
  v51 = a4;
  v53 = a3;
  v6 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v56 = *(v6 - 8);
  v57 = v6;
  v7 = *(v56 + 64);
  v8 = __chkstk_darwin(v6);
  v54 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v52 = v43 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = v43 - v13;
  __chkstk_darwin(v12);
  v16 = v43 - v15;
  v17 = type metadata accessor for Table();
  v55 = *(v17 - 8);
  v18 = *(v55 + 64);
  __chkstk_darwin(v17);
  v20 = v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Delete();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v58;
  result = sub_1002085AC(a2, a1);
  if (!v26)
  {
    v49 = a1;
    v50 = a2;
    v43[0] = result;
    v44 = v20;
    v45 = v25;
    v28 = v52;
    v46 = v16;
    v47 = v22;
    v48 = v21;
    v58 = 0;
    v43[1] = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisement;
    if (qword_101695330 != -1)
    {
      swift_once();
    }

    v29 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
    sub_1000076D4(v29, qword_10177C938);
    type metadata accessor for Date();
    < infix<A>(_:_:)();
    v60 = v43[0];
    v53 = v17;
    v30 = v46;
    v31 = v28;
    v32 = v54;
    if (qword_101695298 != -1)
    {
      swift_once();
    }

    v33 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
    sub_1000076D4(v33, qword_10177C770);
    sub_1000BC4D4(&qword_101699D50, &unk_1013930D0);
    sub_1000041A4(&qword_101699D58, &qword_101699D50, &unk_1013930D0);
    Collection<>.contains(_:)();

    v59 = 0;
    == infix<A>(_:_:)();
    v34 = *(v56 + 8);
    v35 = v32;
    v36 = v57;
    v34(v35, v57);
    && infix(_:_:)();
    v34(v31, v36);
    v34(v14, v36);
    v37 = v44;
    v38 = v53;
    QueryType.filter(_:)();
    v34(v30, v36);
    v39 = v45;
    QueryType.delete()();
    (*(v55 + 8))(v37, v38);
    v40 = v58;
    v41 = Connection.run(_:)();
    if (v40)
    {
      return (*(v47 + 8))(v39, v48);
    }

    else
    {
      v42 = v41;
      result = (*(v47 + 8))(v39, v48);
      *v51 = v42;
    }
  }

  return result;
}

void (*sub_1002085AC(NSObject *a1, uint64_t a2))(char *, uint64_t)
{
  v264 = a1;
  v222 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v221 = *(v222 - 8);
  v3 = *(v221 + 64);
  __chkstk_darwin(v222);
  v220 = &v191 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v256 = sub_1000BC4D4(&qword_101699D60, &qword_1013B6DE0);
  v227 = *(v256 - 8);
  v5 = *(v227 + 64);
  __chkstk_darwin(v256);
  v252 = &v191 - v6;
  v7 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v251 = &v191 - v9;
  v250 = type metadata accessor for Date();
  v226 = *(v250 - 8);
  v10 = *(v226 + 64);
  v11 = __chkstk_darwin(v250);
  v244 = &v191 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v249 = &v191 - v13;
  v257 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  v225 = *(v257 - 8);
  v14 = *(v225 + 64);
  v15 = __chkstk_darwin(v257);
  v253 = &v191 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v235 = &v191 - v18;
  __chkstk_darwin(v17);
  v234 = &v191 - v19;
  v240 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v224 = *(v240 - 8);
  v20 = *(v224 + 64);
  __chkstk_darwin(v240);
  v233 = &v191 - v21;
  v248 = type metadata accessor for UUID();
  v223 = *(v248 - 8);
  v22 = *(v223 + 8);
  v23 = __chkstk_darwin(v248);
  v243 = &v191 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v247 = &v191 - v25;
  v26 = type metadata accessor for Row();
  v27 = *(v26 - 8);
  v258 = v26;
  v259 = v27;
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v26);
  v255 = &v191 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v236 = &v191 - v31;
  v32 = sub_1000BC4D4(&qword_101699D68, &unk_1013B6450);
  v33 = *(*(v32 - 8) + 64);
  v34 = __chkstk_darwin(v32 - 8);
  v254 = &v191 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v237 = &v191 - v36;
  v265 = type metadata accessor for Table();
  v242 = *(v265 - 8);
  v37 = *(v242 + 64);
  v38 = __chkstk_darwin(v265);
  v239 = &v191 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v38);
  v232 = &v191 - v41;
  v42 = __chkstk_darwin(v40);
  v231 = &v191 - v43;
  v44 = __chkstk_darwin(v42);
  v238 = &v191 - v45;
  __chkstk_darwin(v44);
  v245 = &v191 - v46;
  v241 = type metadata accessor for ContinuousClock.Instant();
  v246 = *(v241 - 8);
  v47 = *(v246 + 64);
  v48 = __chkstk_darwin(v241);
  v228 = &v191 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __chkstk_darwin(v48);
  v229 = &v191 - v51;
  v52 = __chkstk_darwin(v50);
  v230 = &v191 - v53;
  __chkstk_darwin(v52);
  v260 = &v191 - v54;
  v263 = sub_1000BC4D4(&qword_101699D70, &unk_1013930E0);
  v55 = *(v263 - 1);
  v56 = *(v55 + 64);
  v57 = __chkstk_darwin(v263);
  v59 = &v191 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __chkstk_darwin(v57);
  v62 = &v191 - v61;
  __chkstk_darwin(v60);
  v64 = &v191 - v63;
  v65 = type metadata accessor for ContinuousClock();
  v66 = *(v65 - 8);
  v67 = *(v66 + 64);
  __chkstk_darwin(v65);
  v69 = &v191 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  ContinuousClock.init()();
  v70 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisement;
  v261 = a2;
  SchemaType.count.getter();
  v71 = v262;
  Connection.scalar<A>(_:)();
  if (v71)
  {
    (*(v55 + 8))(v64, v263);
    (*(v66 + 8))(v69, v65);
  }

  else
  {
    v216 = v59;
    v215 = v70;
    v219 = v69;
    v218 = v65;
    v262 = v66;
    v72 = *(v55 + 8);
    v73 = v263;
    v72(v64, v263);
    v74 = v266;
    SchemaType.count.getter();
    Connection.scalar<A>(_:)();
    v72(v62, v73);
    v75 = v266;
    v76 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisementBeaconInfo;
    v77 = v216;
    SchemaType.count.getter();
    Connection.scalar<A>(_:)();
    v214 = v76;
    v217 = 0;
    v72(v77, v263);
    v79 = v266;
    if (qword_1016944D0 != -1)
    {
      swift_once();
    }

    v80 = type metadata accessor for Logger();
    v213 = sub_1000076D4(v80, qword_10177A5C0);
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      *v83 = 134218496;
      *(v83 + 4) = v74;
      *(v83 + 12) = 2048;
      *(v83 + 14) = v75;
      *(v83 + 22) = 2048;
      *(v83 + 24) = v79;
      _os_log_impl(&_mh_execute_header, v81, v82, "rowCounts: %ld/%ld/%ld", v83, 0x20u);
    }

    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.default.getter();
    v86 = os_log_type_enabled(v84, v85);
    v87 = v246;
    if (v86)
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&_mh_execute_header, v84, v85, "Gathering high-value owned observations.", v88, 2u);
    }

    v269 = &_swiftEmptySetSingleton;
    ContinuousClock.now.getter();
    v89 = v245;
    if (qword_1016952A0 != -1)
    {
      swift_once();
    }

    v90 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
    v91 = sub_1000076D4(v90, qword_10177C788);
    v267 = v90;
    v268 = sub_1000041A4(&qword_101699D18, &qword_101699D10, &unk_1013930B0);
    v92 = sub_1000280DC(&v266);
    (*(*(v90 - 8) + 16))(v92, v91, v90);
    v93 = v265;
    SchemaType.select(distinct:_:)();
    sub_100007BAC(&v266);
    v267 = v93;
    v268 = &protocol witness table for Table;
    v94 = sub_1000280DC(&v266);
    v95 = v242;
    v70 = (v242 + 16);
    v96 = *(v242 + 16);
    v96(v94, v89, v93);
    v97 = v217;
    Connection.prepare(_:)();
    v217 = v97;
    if (v97)
    {
      (*(v95 + 8))(v89, v93);
      (*(v87 + 8))(v260, v241);
      (*(v262 + 8))(v219, v218);
LABEL_15:
      sub_100007BAC(&v266);
    }

    else
    {
      v199 = v96;
      v200 = v70;
      v201 = v91;
      sub_100007BAC(&v266);
      v98 = dispatch thunk of _AnySequenceBox._makeIterator()();

      v99 = v237;
      v193 = v98;
      dispatch thunk of _AnyIteratorBoxBase.next()();
      v101 = v258;
      v100 = v259;
      v102 = *(v259 + 48);
      v263 = (v259 + 48);
      v216 = v102;
      if (v102(v99, 1, v258) == 1)
      {
LABEL_17:

        v103 = v230;
        ContinuousClock.now.getter();
        v70 = v269;
        v104 = v246;
        v105 = *(v246 + 16);
        v106 = v229;
        v107 = v241;
        v105(v229, v260, v241);
        v108 = v228;
        v105(v228, v103, v107);

        v109 = Logger.logObject.getter();
        v110 = static os_log_type_t.default.getter();
        v264 = v109;
        if (os_log_type_enabled(v109, v110))
        {
          v111 = swift_slowAlloc();
          v263 = swift_slowAlloc();
          v266 = v263;
          *v111 = 134218242;
          *(v111 + 4) = *(v70 + 2);

          *(v111 + 12) = 2082;
          v112 = v220;
          static Duration.UnitsFormatStyle.Unit.milliseconds.getter();
          sub_1000291EC(&qword_1016C11E0, &type metadata accessor for ContinuousClock.Instant);
          v113 = v104;
          v114 = v107;
          v115 = static Duration.description<A>(_:_:units:)();
          LODWORD(v261) = v110;
          v117 = v116;
          (*(v221 + 8))(v112, v222);
          v118 = *(v113 + 8);
          v118(v108, v114);
          v118(v229, v114);
          v119 = sub_1000136BC(v115, v117, &v266);

          *(v111 + 14) = v119;
          v120 = v264;
          _os_log_impl(&_mh_execute_header, v264, v261, "Found high-value owned observations count: %ld. Duration: %{public}s", v111, 0x16u);
          sub_100007BAC(v263);

          v118(v230, v114);
          (*(v242 + 8))(v245, v265);
          v118(v260, v114);
        }

        else
        {

          v186 = *(v104 + 8);
          v186(v108, v107);
          v186(v106, v107);
          v186(v103, v107);
          (*(v242 + 8))(v245, v265);
          v186(v260, v107);
        }

        (*(v262 + 8))(v219, v218);
      }

      else
      {
        v122 = *(v100 + 32);
        v121 = v100 + 32;
        v225 += 8;
        v195 = (v224 + 8);
        v196 = (v95 + 8);
        v208 = (v227 + 8);
        v207 = (v226 + 48);
        v205 = (v226 + 32);
        v204 = (v223 + 16);
        v203 = (v226 + 16);
        v202 = (v226 + 8);
        v206 = (v223 + 8);
        v224 = v121 - 24;
        v123 = v93;
        v124 = &qword_101695000;
        *(&v125 + 1) = 2;
        v194 = xmmword_101385D80;
        *&v125 = 141558787;
        v191 = v125;
        v259 = v121;
        v212 = v122;
        v122(v236, v99, v101);
        while (1)
        {
          Row.subscript.getter();
          v267 = v123;
          v268 = &protocol witness table for Table;
          v128 = sub_1000280DC(&v266);
          v199(v128, v261 + v214, v123);
          if (v124[83] != -1)
          {
            swift_once();
          }

          v129 = v257;
          v130 = sub_1000076D4(v257, qword_10177C770);
          v131 = v234;
          QueryType.subscript.getter();
          v132 = v235;
          v227 = v130;
          QueryType.subscript.getter();
          v133 = v233;
          == infix<A>(_:_:)();
          v134 = *v225;
          (*v225)(v132, v129);
          v223 = v134;
          v134(v131, v129);
          QueryType.join(_:on:)();
          v226 = *v195;
          (v226)(v133, v240);
          sub_100007BAC(&v266);
          v135 = v123;
          if (qword_101695330 != -1)
          {
            swift_once();
          }

          v136 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
          v137 = sub_1000076D4(v136, qword_10177C938);
          v267 = v256;
          v268 = sub_1000041A4(&qword_101699D80, &qword_101699D60, &qword_1013B6DE0);
          sub_1000280DC(&v266);
          v138 = sub_1000041A4(&qword_101699D88, &qword_101699D78, &unk_1013BF4B0);
          v211 = v136;
          v209 = v138;
          v210 = v137;
          ExpressionType<>.max.getter();
          sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
          v139 = swift_allocObject();
          *(v139 + 16) = v194;
          *(v139 + 56) = v129;
          *(v139 + 64) = sub_1000041A4(&qword_101699D98, &qword_101699D30, &qword_1013BA850);
          sub_1000280DC((v139 + 32));
          QueryType.subscript.getter();
          v140 = v232;
          v141 = v239;
          SchemaType.select(_:_:)();

          v142 = *v196;
          (*v196)(v141, v135);
          sub_100007BAC(&v266);
          == infix<A>(_:_:)();
          v143 = v231;
          QueryType.where(_:)();
          (v226)(v133, v240);
          v142(v140, v135);
          v144 = swift_allocObject();
          *(v144 + 16) = v194;
          if (qword_101695310 != -1)
          {
            swift_once();
          }

          v145 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
          v146 = sub_1000076D4(v145, qword_10177C8D8);
          *(v144 + 56) = v145;
          *(v144 + 64) = sub_1000041A4(&qword_101699DA8, &qword_101699DA0, &unk_10139D120);
          v147 = sub_1000280DC((v144 + 32));
          (*(*(v145 - 8) + 16))(v147, v146, v145);
          v148 = v238;
          QueryType.group(_:)();
          v149 = v148;

          v142(v143, v135);
          v267 = v135;
          v268 = &protocol witness table for Table;
          v150 = sub_1000280DC(&v266);
          v199(v150, v148, v135);
          v151 = v217;
          Connection.prepare(_:)();
          v217 = v151;
          v152 = v218;
          v153 = v219;
          v155 = v254;
          v154 = v255;
          if (v151)
          {

            v189 = v149;
            v190 = v265;
            v70 = v196;
            v142(v189, v265);
            (*v206)(v247, v248);
            (*v224)(v236, v258);
            v142(v245, v190);
            (*(v246 + 8))(v260, v241);

            (*(v262 + 8))(v153, v152);
            goto LABEL_15;
          }

          v192 = v142;
          sub_100007BAC(&v266);
          v156 = dispatch thunk of _AnySequenceBox._makeIterator()();

          v226 = v156;
          dispatch thunk of _AnyIteratorBoxBase.next()();
          v157 = v258;
          v158 = v216(v155, 1, v258);
          v159 = v260;
          if (v158 != 1)
          {
            break;
          }

LABEL_20:

          v123 = v265;
          v192(v238, v265);
          (*v206)(v247, v248);
          v126 = v236;
          (*v224)(v236, v157);
          v127 = v237;
          dispatch thunk of _AnyIteratorBoxBase.next()();
          v124 = &qword_101695000;
          if (v216(v127, 1, v157) == 1)
          {
            goto LABEL_17;
          }

          v212(v126, v127, v157);
        }

        v160 = v253;
        while (1)
        {
          v212(v154, v155, v157);
          QueryType.subscript.getter();
          v162 = v217;
          Row.get<A>(_:)();
          if (v162)
          {
            break;
          }

          v223(v160, v257);
          v163 = v266;
          v164 = v252;
          ExpressionType<>.max.getter();
          v165 = v251;
          v166 = v250;
          Row.get<A>(_:)();
          v217 = 0;
          (*v208)(v164, v256);
          v167 = (*v207)(v165, 1, v166);
          v159 = v260;
          if (v167 == 1)
          {
            v154 = v255;
            v157 = v258;
            (*v224)(v255, v258);
            sub_10000B3A8(v165, &unk_101696900, &unk_10138B1E0);
          }

          else
          {
            v168 = v249;
            (*v205)(v249, v165, v166);
            sub_100DEB5CC(&v266, v163);
            v169 = v243;
            v170 = v248;
            (*v204)(v243, v247, v248);
            v171 = v244;
            (*v203)(v244, v168, v166);
            v172 = Logger.logObject.getter();
            v173 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v172, v173))
            {
              v174 = swift_slowAlloc();
              v198 = swift_slowAlloc();
              v266 = v198;
              *v174 = v191;
              *(v174 + 4) = 1752392040;
              *(v174 + 12) = 2081;
              sub_1000291EC(&qword_101696930, &type metadata accessor for UUID);
              v197 = v172;
              v175 = dispatch thunk of CustomStringConvertible.description.getter();
              v177 = v176;
              (*v206)(v169, v170);
              v178 = sub_1000136BC(v175, v177, &v266);

              *(v174 + 14) = v178;
              *(v174 + 22) = 2080;
              sub_1000291EC(&qword_1016969A0, &type metadata accessor for Date);
              v179 = dispatch thunk of CustomStringConvertible.description.getter();
              v181 = v180;
              v182 = *v202;
              (*v202)(v171, v166);
              v183 = sub_1000136BC(v179, v181, &v266);

              *(v174 + 24) = v183;
              *(v174 + 32) = 2048;
              *(v174 + 34) = v163;
              v184 = v197;
              _os_log_impl(&_mh_execute_header, v197, v173, "Adding high-value Owned Observations for beacon: %{private,mask.hash}s, scanDate: %s, advId: %lld.", v174, 0x2Au);
              swift_arrayDestroy();

              v182(v249, v166);
              v159 = v260;
              v154 = v255;
              v157 = v258;
              (*v224)(v255, v258);
            }

            else
            {

              v185 = *v202;
              (*v202)(v171, v166);
              (*v206)(v169, v170);
              v185(v249, v166);
              v154 = v255;
              v157 = v258;
              (*v224)(v255, v258);
              v159 = v260;
            }
          }

          v155 = v254;
          dispatch thunk of _AnyIteratorBoxBase.next()();
          v161 = v216(v155, 1, v157);
          v160 = v253;
          if (v161 == 1)
          {
            goto LABEL_20;
          }
        }

        v223(v160, v257);
        v70 = *v224;
        (*v224)(v154, v157);
        v187 = v265;
        v188 = v192;
        v192(v238, v265);
        (*v206)(v247, v248);
        v70(v236, v157);
        v188(v245, v187);
        (*(v246 + 8))(v159, v241);

        (*(v262 + 8))(v219, v218);
      }
    }
  }

  return v70;
}