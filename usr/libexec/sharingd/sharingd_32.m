uint64_t sub_1004A9AAC()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1004A9B08@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SDAirDropContentHandlerUnsupportedFileType();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0xE000000000000000;
  *a1 = result;
  return result;
}

uint64_t sub_1004A9B44(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100289000;

  return sub_1004A8C2C(a1);
}

uint64_t sub_1004A9BE0(uint64_t a1)
{
  v3 = *v1;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a1;

  return SFProgressTask.init(_:initialProgress:operation:file:line:)();
}

uint64_t sub_1004A9CC4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1004A9D84;

  return sub_1004AA068(a1);
}

uint64_t sub_1004A9D84(char a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v5 = *(v8 + 8);
  if (v1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1 & 1;
  }

  return v5(v6);
}

void sub_1004A9E8C(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = String._bridgeToObjectiveC()();
    v3 = SFLocalizedStringForKey();

    if (v3)
    {
LABEL_5:
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      return;
    }

    __break(1u);
  }

  v4 = String._bridgeToObjectiveC()();
  v3 = SFLocalizedStringForKey();

  if (v3)
  {
    goto LABEL_5;
  }

  __break(1u);
}

uint64_t sub_1004A9F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100005C00;

  return sub_1004A8FCC(a1, a2, a3, v9, v8);
}

unint64_t sub_1004AA010()
{
  result = qword_100975160;
  if (!qword_100975160)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100975160);
  }

  return result;
}

uint64_t sub_1004AA068(uint64_t a1)
{
  v1[7] = a1;
  v2 = sub_10028088C(&qword_100976900, &unk_1007FD250);
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();
  v5 = *(sub_10028088C(&unk_100974E00, &qword_1007F8940) - 8);
  v1[11] = v5;
  v1[12] = *(v5 + 64);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v1[15] = v6;
  v7 = *(v6 - 8);
  v1[16] = v7;
  v8 = *(v7 + 64) + 15;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v9 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v1[20] = v9;
  v10 = *(v9 - 8);
  v1[21] = v10;
  v11 = *(v10 + 64) + 15;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v12 = sub_10028088C(&qword_10097F8C0, &unk_1008056A0);
  v1[24] = v12;
  v13 = *(v12 - 8);
  v1[25] = v13;
  v14 = *(v13 + 64) + 15;
  v1[26] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v15 = static AirDropActor.shared;
  v1[27] = static AirDropActor.shared;

  return _swift_task_switch(sub_1004AA32C, v15, 0);
}

uint64_t sub_1004AA32C()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[20];
  v4 = v0[21];
  (*(v4 + 104))(v2, enum case for SFAirDropReceive.ItemDestination.default(_:), v3);
  (*(v4 + 16))(v1, v2, v3);
  v5 = (*(v4 + 88))(v1, v3);
  v7 = v0[22];
  v6 = v0[23];
  v9 = v0[20];
  v8 = v0[21];
  if (v5 == enum case for SFAirDropReceive.ItemDestination.customURL(_:))
  {
    v10 = v0[19];
    v31 = v10;
    v32 = v0[26];
    v12 = v0[15];
    v11 = v0[16];
    v33 = v0[23];
    v14 = v0[13];
    v13 = v0[14];
    v15 = v0[11];
    v28 = v0[7];
    v29 = v0[12];
    (*(v8 + 96))(v7, v9);
    (*(v11 + 32))(v10, v7, v12);
    (*(v11 + 16))(v13, v10, v12);
    (*(v11 + 56))(v13, 0, 1, v12);
    v0[6] = 0;
    sub_100333278(v13, v14);
    v16 = (*(v15 + 80) + 16) & ~*(v15 + 80);
    v17 = v29 + v16 + 7;
    v30 = v9;
    v18 = v17 & 0xFFFFFFFFFFFFFFF8;
    v19 = swift_allocObject();
    sub_1003332E8(v14, v19 + v16);
    *(v19 + v18) = v28;

    sub_10028088C(&qword_100975610, &qword_1007F89B0);
    SFProgressTask.init(_:initialProgress:operation:file:line:)();
    sub_100005508(v13, &unk_100974E00, &qword_1007F8940);
    (*(v11 + 8))(v31, v12);
    (*(v8 + 8))(v33, v30);
  }

  else
  {
    v0[2] = 0;
    v20 = v0[7];
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    *(v21 + 24) = 1;

    sub_10028088C(&qword_100975610, &qword_1007F89B0);
    SFProgressTask.init(_:initialProgress:operation:file:line:)();
    v22 = *(v8 + 8);
    v22(v6, v9);
    v22(v7, v9);
  }

  v23 = async function pointer to SFProgressTask.finalValue.getter[1];
  v24 = swift_task_alloc();
  v0[28] = v24;
  *v24 = v0;
  v24[1] = sub_1004AA71C;
  v25 = v0[26];
  v26 = v0[24];

  return SFProgressTask.finalValue.getter(v0 + 3, v26);
}

uint64_t sub_1004AA71C()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *(*v1 + 208);
  v5 = *(*v1 + 200);
  v6 = *(*v1 + 192);
  v7 = *v1;
  *(*v1 + 232) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 216);
  if (v0)
  {
    v9 = sub_1004AAF30;
  }

  else
  {
    v9 = sub_1004AA8A4;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1004AA8A4()
{
  v1 = v0[3];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v0[16];
    v31 = (v4 + 32);
    v29 = *(v1 + 16);
    v30 = v0[3];
    while (v3 < *(v1 + 16))
    {
      v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v6 = *(v4 + 72);
      (*(v4 + 16))(v0[18], v1 + v5 + v6 * v3, v0[15]);
      v7 = URL.isFileURL.getter();
      v8 = v0[18];
      if (v7)
      {
        (*(v4 + 8))(v0[18], v0[15]);
      }

      else
      {
        v9 = *v31;
        (*v31)(v0[17], v0[18], v0[15]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10028FAB4(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v11 = _swiftEmptyArrayStorage[2];
        v10 = _swiftEmptyArrayStorage[3];
        if (v11 >= v10 >> 1)
        {
          sub_10028FAB4(v10 > 1, v11 + 1, 1);
        }

        v12 = v0[17];
        v13 = v0[15];
        _swiftEmptyArrayStorage[2] = v11 + 1;
        v9(_swiftEmptyArrayStorage + v5 + v11 * v6, v12, v13);
        v2 = v29;
        v1 = v30;
      }

      if (v2 == ++v3)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

LABEL_12:
  v14 = _swiftEmptyArrayStorage[2];
  if (v14)
  {
    v15 = *(v1 + 16);

    if (v14 == v15)
    {
LABEL_18:
      v20 = v0[10];
      v0[4] = 0;
      v21 = swift_allocObject();
      *(v21 + 16) = _swiftEmptyArrayStorage;
      *(v21 + 24) = 0;
      goto LABEL_20;
    }

    if (qword_1009737B0 == -1)
    {
LABEL_15:
      v16 = type metadata accessor for Logger();
      sub_10000C4AC(v16, qword_10097B528);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "Asked to view mixed files and links, only viewing links", v19, 2u);
      }

      goto LABEL_18;
    }

LABEL_24:
    swift_once();
    goto LABEL_15;
  }

  v22 = v0[10];

  v0[5] = 0;
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  *(v23 + 32) = v1;
LABEL_20:
  SFProgressTask.init(_:initialProgress:operation:file:line:)();
  v24 = async function pointer to SFProgressTask.finalValue.getter[1];
  v25 = swift_task_alloc();
  v0[30] = v25;
  *v25 = v0;
  v25[1] = sub_1004AACC8;
  v26 = v0[10];
  v27 = v0[8];

  return SFProgressTask.finalValue.getter(v0 + 32, v27);
}

uint64_t sub_1004AACC8()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  v6 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 248) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 216);
  if (v0)
  {
    v9 = sub_1004AB00C;
  }

  else
  {
    v9 = sub_1004AAE50;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1004AAE50()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v5 = *(v0 + 144);
  v4 = *(v0 + 152);
  v6 = *(v0 + 136);
  v8 = *(v0 + 104);
  v7 = *(v0 + 112);
  v9 = *(v0 + 80);
  v10 = *(v0 + 256);

  v11 = *(v0 + 8);

  return v11(v10);
}

uint64_t sub_1004AAF30()
{
  v1 = v0[29];
  v2 = v0[26];
  v4 = v0[22];
  v3 = v0[23];
  v6 = v0[18];
  v5 = v0[19];
  v7 = v0[17];
  v9 = v0[13];
  v8 = v0[14];
  v10 = v0[10];

  v11 = v0[1];

  return v11(0);
}

uint64_t sub_1004AB00C()
{
  v1 = v0[31];
  v2 = v0[26];
  v4 = v0[22];
  v3 = v0[23];
  v6 = v0[18];
  v5 = v0[19];
  v7 = v0[17];
  v9 = v0[13];
  v8 = v0[14];
  v10 = v0[10];

  v11 = v0[1];

  return v11(0);
}

uint64_t sub_1004AB0E8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100005C04;

  return v6();
}

void sub_1004AB1D0(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  __chkstk_darwin(v5);
  v7 = &v28 - v6;
  v8 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v28 - v10;
  swift_beginAccess();
  sub_10036DC54(a1, v11);
  swift_endAccess();
  v12 = (*(v3 + 48))(v11, 1, v2);
  sub_100005508(v11, &unk_100976120, &qword_1007F9260);
  if (v12 != 1)
  {
    v31 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (qword_1009738E8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000C4AC(v13, qword_10097F8C8);
    v14 = *(v3 + 16);
    v14(v7, a1, v2);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v29 = v14;
      v18 = v17;
      v28 = swift_slowAlloc();
      aBlock[0] = v28;
      *v18 = 136315138;
      sub_100349CFC();
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = a1;
      v21 = v20;
      (*(v3 + 8))(v7, v2);
      v22 = sub_10000C4E4(v19, v21, aBlock);
      a1 = v30;

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v15, v16, "SDAirDropAWDLSingleBandManager: requesting stop Single band mode for Nearby Sharing Interaction ID:%s", v18, 0xCu);
      sub_10000C60C(v28);

      v14 = v29;
    }

    else
    {

      (*(v3 + 8))(v7, v2);
    }

    v23 = [objc_opt_self() shared];
    v24 = v31;
    v14(v31, a1, v2);
    v25 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v26 = swift_allocObject();
    (*(v3 + 32))(v26 + v25, v24, v2);
    aBlock[4] = sub_1004AC264;
    aBlock[5] = v26;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1004ABE1C;
    aBlock[3] = &unk_1008E3758;
    v27 = _Block_copy(aBlock);

    [v23 endTransaction:18 completionHandler:v27];
    _Block_release(v27);
  }
}

uint64_t sub_1004AB618()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097F8C8);
  v1 = sub_10000C4AC(v0, qword_10097F8C8);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004AB6E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v9 + 16))(&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v8);
  v16 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  (*(v9 + 32))(v17 + v16, &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  v18 = (v17 + ((v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = a3;
  v18[1] = a4;
  v19 = swift_allocObject();
  *(v19 + 16) = &unk_1008056E8;
  *(v19 + 24) = v17;

  static Task<>.noThrow(priority:operation:)();

  return sub_100005508(v14, &qword_100976160, &qword_1007F8770);
}

uint64_t sub_1004AB930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for UUID();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v8 = static AirDropActor.shared;

  return _swift_task_switch(sub_1004ABA38, v8, 0);
}

uint64_t sub_1004ABA38()
{
  v44 = v0;
  if (v0[2])
  {
    if (qword_1009738E8 != -1)
    {
      swift_once();
    }

    v1 = v0[9];
    v2 = v0[6];
    v3 = v0[7];
    v4 = v0[3];
    v5 = type metadata accessor for Logger();
    sub_10000C4AC(v5, qword_10097F8C8);
    (*(v3 + 16))(v1, v4, v2);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[9];
    v10 = v0[6];
    v11 = v0[7];
    if (v8)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v43 = v13;
      *v12 = 136315138;
      sub_100349CFC();
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      (*(v11 + 8))(v9, v10);
      v17 = sub_10000C4E4(v14, v16, &v43);

      *(v12 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v6, v7, "SDAirDropAWDLSingleBandManager: failed requesting enforce Single band mode for Nearby Sharing Interaction ID:%s", v12, 0xCu);
      sub_10000C60C(v13);
    }

    else
    {

      (*(v11 + 8))(v9, v10);
    }

    v36 = v0[4];
    v35 = v0[5];
    sub_1004ACD0C();
    v37 = swift_allocError();
    v36(v37);
  }

  else
  {
    if (qword_1009738E8 != -1)
    {
      swift_once();
    }

    v19 = v0[7];
    v18 = v0[8];
    v20 = v0[6];
    v21 = v0[3];
    v22 = type metadata accessor for Logger();
    sub_10000C4AC(v22, qword_10097F8C8);
    (*(v19 + 16))(v18, v21, v20);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    v25 = os_log_type_enabled(v23, v24);
    v27 = v0[7];
    v26 = v0[8];
    v28 = v0[6];
    if (v25)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v43 = v30;
      *v29 = 136315138;
      sub_100349CFC();
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v32;
      (*(v27 + 8))(v26, v28);
      v34 = sub_10000C4E4(v31, v33, &v43);

      *(v29 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v23, v24, "SDAirDropAWDLSingleBandManager: requested enforce Single band mode for Nearby Sharing Interaction ID:%s", v29, 0xCu);
      sub_10000C60C(v30);
    }

    else
    {

      (*(v27 + 8))(v26, v28);
    }

    v38 = v0[5];
    (v0[4])(0);
  }

  v40 = v0[8];
  v39 = v0[9];

  v41 = v0[1];

  return v41();
}

uint64_t sub_1004ABE1C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_1004ABE70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v30 - v10;
  if (a1)
  {
    if (qword_1009738E8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000C4AC(v12, qword_10097F8C8);
    (*(v5 + 16))(v11, a2, v4);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v31 = v16;
      *v15 = 136315138;
      sub_100349CFC();
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      (*(v5 + 8))(v11, v4);
      v20 = sub_10000C4E4(v17, v19, &v31);

      *(v15 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v13, v14, "SDAirDropAWDLSingleBandManager: failed requesting stop Single band mode for Nearby Sharing Interaction ID:%s", v15, 0xCu);
      sub_10000C60C(v16);
    }

    else
    {

      (*(v5 + 8))(v11, v4);
    }
  }

  else
  {
    if (qword_1009738E8 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000C4AC(v21, qword_10097F8C8);
    (*(v5 + 16))(v9, a2, v4);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v31 = v25;
      *v24 = 136315138;
      sub_100349CFC();
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      (*(v5 + 8))(v9, v4);
      v29 = sub_10000C4E4(v26, v28, &v31);

      *(v24 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v22, v23, "SDAirDropAWDLSingleBandManager: requested stop Single band mode for Nearby Sharing Interaction ID:%s", v24, 0xCu);
      sub_10000C60C(v25);
    }

    else
    {

      (*(v5 + 8))(v9, v4);
    }
  }
}

void sub_1004AC264(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1004ABE70(a1, v4);
}

void sub_1004AC2D4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(void), uint64_t a6)
{
  v12 = type metadata accessor for UUID();
  v85 = *(v12 - 8);
  v86 = v12;
  v13 = *(v85 + 64);
  v14 = __chkstk_darwin(v12);
  v81 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v14);
  v17 = &v80 - v16;
  v18 = __chkstk_darwin(v15);
  v82 = &v80 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v80 - v21;
  __chkstk_darwin(v20);
  v24 = &v80 - v23;
  v25 = swift_allocObject();
  *(v25 + 2) = a4;
  *(v25 + 3) = a5;
  v83 = a5;
  v84 = v25;
  v26 = a6;
  *(v25 + 4) = a6;
  if (*(a1 + *(type metadata accessor for SDNearFieldTap() + 64)) != 1)
  {
    v43 = qword_1009738E8;
    v44 = a4;

    if (v43 != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    sub_10000C4AC(v45, qword_10097F8C8);
    v46 = v85;
    v47 = v86;
    (*(v85 + 16))(v24, a2, v86);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = v46;
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      aBlock[0] = v52;
      *v51 = 136315138;
      sub_100349CFC();
      v53 = dispatch thunk of CustomStringConvertible.description.getter();
      v82 = v26;
      v55 = v54;
      (*(v50 + 8))(v24, v47);
      v56 = sub_10000C4E4(v53, v55, aBlock);

      *(v51 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v48, v49, "SDAirDropAWDLSingleBandManager: Single band not required for Nearby Sharing Interaction ID:%s", v51, 0xCu);
      sub_10000C60C(v52);
    }

    else
    {

      (*(v46 + 8))(v24, v47);
    }

    goto LABEL_17;
  }

  swift_beginAccess();
  v27 = *(a3 + 16);
  v28 = a4;

  v29 = sub_100569018(a2, v27);

  v30 = a2;
  if (v29)
  {
    v82 = v26;
    if (qword_1009738E8 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_10000C4AC(v31, qword_10097F8C8);
    v32 = v85;
    v33 = v86;
    (*(v85 + 16))(v22, a2, v86);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = v32;
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      aBlock[0] = v38;
      *v37 = 136315138;
      sub_100349CFC();
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      (*(v36 + 8))(v22, v33);
      v42 = sub_10000C4E4(v39, v41, aBlock);

      *(v37 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v34, v35, "SDAirDropAWDLSingleBandManager: Nearby Sharing Interaction ID:%s already handled. ignoring it", v37, 0xCu);
      sub_10000C60C(v38);
    }

    else
    {

      (*(v32 + 8))(v22, v33);
    }

LABEL_17:
    v83();

    return;
  }

  v57 = v85;
  v58 = v86;
  v59 = *(v85 + 16);
  (v59)(v17, v30, v86);
  swift_beginAccess();
  v60 = v82;
  sub_10046E0A4(v82, v17);
  swift_endAccess();
  v61 = *(v57 + 8);
  v61(v60, v58);
  if (qword_1009738E8 != -1)
  {
    swift_once();
  }

  v62 = type metadata accessor for Logger();
  sub_10000C4AC(v62, qword_10097F8C8);
  v63 = v81;
  v83 = v59;
  (v59)(v81, v30, v58);
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = v63;
    v67 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    aBlock[0] = v80;
    *v67 = 136315138;
    sub_100349CFC();
    v68 = dispatch thunk of CustomStringConvertible.description.getter();
    v70 = v69;
    v61(v66, v86);
    v71 = sub_10000C4E4(v68, v70, aBlock);
    v58 = v86;

    *(v67 + 4) = v71;
    _os_log_impl(&_mh_execute_header, v64, v65, "SDAirDropAWDLSingleBandManager: requesting enforce Single band mode for Nearby Sharing Interaction ID:%s", v67, 0xCu);
    sub_10000C60C(v80);
  }

  else
  {

    v61(v63, v58);
  }

  v72 = [objc_opt_self() shared];
  v73 = v82;
  (v83)(v82, v30, v58);
  v74 = v85;
  v75 = (*(v85 + 80) + 16) & ~*(v85 + 80);
  v76 = swift_allocObject();
  (*(v74 + 32))(v76 + v75, v73, v58);
  v77 = (v76 + ((v13 + v75 + 7) & 0xFFFFFFFFFFFFFFF8));
  v78 = v84;
  *v77 = sub_1004ACB48;
  v77[1] = v78;
  aBlock[4] = sub_1004ACB54;
  aBlock[5] = v76;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1004ABE1C;
  aBlock[3] = &unk_1008E37D0;
  v79 = _Block_copy(aBlock);

  [v72 beginTransaction:18 completionHandler:v79];
  _Block_release(v79);
}

uint64_t sub_1004ACB54(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return sub_1004AB6E0(a1, v1 + v4, v6, v7);
}

uint64_t sub_1004ACBF4()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100005C04;

  return sub_1004AB930(v4, v0 + v3, v6, v7);
}

unint64_t sub_1004ACD0C()
{
  result = qword_10097F980;
  if (!qword_10097F980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097F980);
  }

  return result;
}

unint64_t sub_1004ACD74()
{
  result = qword_10097F988;
  if (!qword_10097F988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097F988);
  }

  return result;
}

uint64_t sub_1004ACDD0()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097F990);
  v1 = sub_10000C4AC(v0, qword_10097F990);
  if (qword_100973758 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004ACE98(void *a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_10097FB00, &qword_1008058C8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v11 - v7;
  v9 = a1[4];
  sub_10002CDC0(a1, a1[3]);
  sub_1004AE9EC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[1] = a2;
  sub_10028088C(&qword_10097FAE8, &qword_1008058C0);
  sub_1004AEA40(&qword_10097FB08, &qword_10097FB10);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1004AD02C(void *a1)
{
  v3 = v1;
  v5 = sub_10028088C(&qword_10097FBE0, &qword_100805A50);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  sub_10002CDC0(a1, a1[3]);
  sub_1004AEC98();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v23 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    v22 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = _s14VolumeMetadataVMa();
    v17 = *(v16 + 24);
    v21 = 2;
    type metadata accessor for Date();
    sub_1004AECEC(&qword_10097FBE8, &type metadata accessor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v18 = *(v16 + 28);
    v20 = 3;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1004AD280@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = type metadata accessor for Date();
  v45 = *(v3 - 8);
  v46 = v3;
  v4 = *(v45 + 64);
  v5 = __chkstk_darwin(v3);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v36 - v8;
  v47 = sub_10028088C(&qword_10097FBC8, &qword_100805A48);
  v44 = *(v47 - 8);
  v10 = *(v44 + 64);
  __chkstk_darwin(v47);
  v12 = &v36 - v11;
  v13 = _s14VolumeMetadataVMa();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = (&v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = a1[4];
  sub_10002CDC0(a1, a1[3]);
  sub_1004AEC98();
  v48 = v12;
  v18 = v49;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    return sub_10000C60C(a1);
  }

  v41 = v7;
  v42 = v9;
  v20 = v44;
  v19 = v45;
  v49 = v13;
  v21 = v46;
  v53 = 0;
  v22 = KeyedDecodingContainer.decode(_:forKey:)();
  v24 = v23;
  *v16 = v22;
  v16[1] = v23;
  v52 = 1;
  v25 = KeyedDecodingContainer.decode(_:forKey:)();
  v40 = v24;
  v16[2] = v25;
  v16[3] = v26;
  v51 = 2;
  v27 = sub_1004AECEC(&qword_10097FBD8, &type metadata accessor for Date);
  v28 = v42;
  v38 = v27;
  v39 = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v29 = *(v49 + 24);
  v30 = *(v19 + 32);
  v37 = v16;
  v31 = v28;
  v32 = v30;
  v30(v16 + v29, v31, v21);
  v50 = 3;
  v33 = v41;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v20 + 8))(v48, v47);
  v34 = v37;
  v32(v37 + *(v49 + 28), v33, v21);
  sub_1004AE70C(v34, v43);
  sub_10000C60C(a1);
  return sub_1004AE770(v34);
}

uint64_t sub_1004AD6F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73656D756C6F76 && a2 == 0xE700000000000000)
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

uint64_t sub_1004AD778(uint64_t a1)
{
  v2 = sub_1004AE9EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004AD7B4(uint64_t a1)
{
  v2 = sub_1004AE9EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1004AD7F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1004AE830(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1004AD838()
{
  v1 = 0x4449656D756C6F76;
  v2 = 0x6E6F697461657263;
  if (*v0 != 2)
  {
    v2 = 0x646573557473616CLL;
  }

  if (*v0)
  {
    v1 = 0x4449656369766564;
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

uint64_t sub_1004AD8C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1004AEE4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1004AD8EC(uint64_t a1)
{
  v2 = sub_1004AEC98();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004AD928(uint64_t a1)
{
  v2 = sub_1004AEC98();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1004AD998(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_defaultActor_initialize();
  v3[15] = a2;
  v3[16] = &_swiftEmptyDictionarySingleton;
  v3[14] = a1;
  v6 = objc_opt_self();

  v7 = [v6 standardUserDefaults];
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 dataForKey:v8];

  if (v9)
  {
    v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = type metadata accessor for JSONDecoder();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    sub_10028088C(&qword_10097FAC0, &unk_1008058A8);
    sub_1004AE5E0();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    v29 = v3[16];
    v3[16] = v41;

    if (qword_1009738F0 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_10000C4AC(v30, qword_10097F990);

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v41 = v40;
      *v33 = 136315138;
      v34 = v3[16];

      v35 = Dictionary.description.getter();
      v37 = v36;

      v38 = sub_10000C4E4(v35, v37, &v41);

      *(v33 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v31, v32, "localCache: %s", v33, 0xCu);
      sub_10000C60C(v40);
    }

    sub_100026AC0(v10, v12);
  }

  else
  {
    v16 = sub_100010F88(10, 0xD00000000000003CLL, 0x80000001007925D0);
    v18 = v17;
    sub_1000115C8();
    swift_allocError();
    *v19 = v16;
    *(v19 + 8) = v18;
    swift_willThrow();
    v20 = sub_1004ADEAC();
    if (!v20)
    {
      if (qword_1009738F0 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_10000C4AC(v21, qword_10097F990);
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
        _os_log_impl(&_mh_execute_header, v22, v23, "Could not load VolumeUnlockLocalCache %@", v24, 0xCu);
        sub_10028924C(v25);
      }

      v20 = sub_10027FF90(_swiftEmptyArrayStorage);
    }

    v27 = v20;

    v28 = v3[16];
    v3[16] = v27;
  }

  return v3;
}

uint64_t sub_1004ADE38()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 128);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

void *sub_1004ADEAC()
{
  v0 = _s14VolumeMetadataVMa();
  v80 = *(v0 - 8);
  v81 = v0;
  v1 = *(v80 + 64);
  v2 = __chkstk_darwin(v0);
  v4 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v85 = (&v68 - v5);
  v6 = objc_opt_self();
  v7 = [v6 standardUserDefaults];
  v8 = "Cache at SDVolumeByPersonaID";
  v9 = String._bridgeToObjectiveC()();
  v10 = [v7 dictionaryForKey:v9];

  if (!v10)
  {
    return 0;
  }

  v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v12 = sub_10034364C(v11);

  if (!v12)
  {
    return 0;
  }

  if (qword_1009738F0 != -1)
  {
    goto LABEL_41;
  }

  while (1)
  {
    v13 = type metadata accessor for Logger();
    v70 = sub_10000C4AC(v13, qword_10097F990);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Found legacy local cache, converting and deleting", v16, 2u);
    }

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    v19 = os_log_type_enabled(v17, v18);
    v68 = v8;
    v69 = v6;
    if (v19)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v86[0] = v21;
      *v20 = 136315138;
      sub_10028088C(&qword_1009799E8, &qword_1007FCB30);
      v22 = Dictionary.description.getter();
      v24 = sub_10000C4E4(v22, v23, v86);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v17, v18, "old cache: %s", v20, 0xCu);
      sub_10000C60C(v21);
    }

    v25 = 0;
    v26 = v12 + 64;
    v27 = 1 << *(v12 + 32);
    v28 = v27 < 64 ? ~(-1 << v27) : -1;
    v29 = v28 & *(v12 + 64);
    v30 = (v27 + 63) >> 6;
    v31 = &_swiftEmptyDictionarySingleton;
    v79 = v4;
    v71 = v30;
    v72 = v12 + 64;
    v73 = v12;
LABEL_13:
    if (!v29)
    {
      break;
    }

    v78 = v31;
    v34 = v25;
LABEL_19:
    v76 = v34;
    v77 = (v29 - 1) & v29;
    v35 = __clz(__rbit64(v29)) | (v34 << 6);
    v36 = (*(v12 + 48) + 16 * v35);
    v37 = *(*(v12 + 56) + 8 * v35);
    v38 = v36[1];
    v74 = *v36;
    v75 = v38;
    v39 = v37 + 64;
    v40 = 1 << *(v37 + 32);
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    else
    {
      v41 = -1;
    }

    v42 = v41 & *(v37 + 64);
    v8 = ((v40 + 63) >> 6);

    v83 = v37;

    v12 = 0;
    v6 = _swiftEmptyArrayStorage;
    v82 = v37 + 64;
    if (!v42)
    {
      goto LABEL_24;
    }

    do
    {
      v84 = v6;
LABEL_28:
      v44 = (v12 << 10) | (16 * __clz(__rbit64(v42)));
      v45 = (*(v83 + 48) + v44);
      v47 = *v45;
      v46 = v45[1];
      v48 = (*(v83 + 56) + v44);
      v49 = *v48;
      v50 = v48[1];
      v4 = v81;
      v51 = *(v81 + 6);

      v52 = v85;
      Date.init()();
      v53 = v52 + *(v4 + 7);
      Date.init()();
      *v52 = v49;
      v52[1] = v50;
      v52[2] = v47;
      v52[3] = v46;
      v54 = v79;
      sub_1004AE70C(v52, v79);
      v6 = v84;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_10028E454(0, v6[2] + 1, 1, v6);
      }

      v56 = v6[2];
      v55 = v6[3];
      v39 = v82;
      if (v56 >= v55 >> 1)
      {
        v6 = sub_10028E454(v55 > 1, v56 + 1, 1, v6);
      }

      v42 &= v42 - 1;
      sub_1004AE770(v85);
      v6[2] = v56 + 1;
      sub_1004AE7CC(v54, v6 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v56);
    }

    while (v42);
LABEL_24:
    while (1)
    {
      v43 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v43 >= v8)
      {

        v32 = v78;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v86[0] = v32;
        sub_100578CF4(v6, v74, v75, isUniquelyReferenced_nonNull_native);

        v31 = v86[0];
        v25 = v76;
        v29 = v77;
        v26 = v72;
        v12 = v73;
        v30 = v71;
        goto LABEL_13;
      }

      v42 = *(v39 + 8 * v43);
      ++v12;
      if (v42)
      {
        v84 = v6;
        v12 = v43;
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    swift_once();
  }

  while (1)
  {
    v34 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      goto LABEL_40;
    }

    if (v34 >= v30)
    {
      break;
    }

    v29 = *(v26 + 8 * v34);
    ++v25;
    if (v29)
    {
      v78 = v31;
      goto LABEL_19;
    }
  }

  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v86[0] = v60;
    *v59 = 136315138;

    v61 = Dictionary.description.getter();
    v63 = v62;

    v64 = sub_10000C4E4(v61, v63, v86);

    *(v59 + 4) = v64;
    _os_log_impl(&_mh_execute_header, v57, v58, "new cache: %s", v59, 0xCu);
    sub_10000C60C(v60);
  }

  v65 = [v69 standardUserDefaults];
  v66 = String._bridgeToObjectiveC()();
  [v65 removeObjectForKey:v66];

  return v31;
}

unint64_t sub_1004AE5E0()
{
  result = qword_10097FAC8;
  if (!qword_10097FAC8)
  {
    sub_100280938(&qword_10097FAC0, &unk_1008058A8);
    sub_1004AE66C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097FAC8);
  }

  return result;
}

unint64_t sub_1004AE66C()
{
  result = qword_10097FAD0;
  if (!qword_10097FAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097FAD0);
  }

  return result;
}

uint64_t _s14VolumeMetadataVMa()
{
  result = qword_10097FB70;
  if (!qword_10097FB70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004AE70C(uint64_t a1, uint64_t a2)
{
  v4 = _s14VolumeMetadataVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004AE770(uint64_t a1)
{
  v2 = _s14VolumeMetadataVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004AE7CC(uint64_t a1, uint64_t a2)
{
  v4 = _s14VolumeMetadataVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_1004AE830(uint64_t *a1)
{
  v3 = sub_10028088C(&qword_10097FAD8, &qword_1008058B8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = sub_10002CDC0(a1, a1[3]);
  sub_1004AE9EC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_10000C60C(a1);
  }

  else
  {
    sub_10028088C(&qword_10097FAE8, &qword_1008058C0);
    sub_1004AEA40(&qword_10097FAF0, &qword_10097FAF8);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    sub_10000C60C(a1);
  }

  return v9;
}

unint64_t sub_1004AE9EC()
{
  result = qword_10097FAE0;
  if (!qword_10097FAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097FAE0);
  }

  return result;
}

uint64_t sub_1004AEA40(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100280938(&qword_10097FAE8, &qword_1008058C0);
    sub_1004AECEC(a2, _s14VolumeMetadataVMa);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1004AEB14()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1004AEB94()
{
  result = qword_10097FBB0;
  if (!qword_10097FBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097FBB0);
  }

  return result;
}

unint64_t sub_1004AEBEC()
{
  result = qword_10097FBB8;
  if (!qword_10097FBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097FBB8);
  }

  return result;
}

unint64_t sub_1004AEC44()
{
  result = qword_10097FBC0;
  if (!qword_10097FBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097FBC0);
  }

  return result;
}

unint64_t sub_1004AEC98()
{
  result = qword_10097FBD0;
  if (!qword_10097FBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097FBD0);
  }

  return result;
}

uint64_t sub_1004AECEC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1004AED48()
{
  result = qword_10097FBF0;
  if (!qword_10097FBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097FBF0);
  }

  return result;
}

unint64_t sub_1004AEDA0()
{
  result = qword_10097FBF8;
  if (!qword_10097FBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097FBF8);
  }

  return result;
}

unint64_t sub_1004AEDF8()
{
  result = qword_10097FC00;
  if (!qword_10097FC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097FC00);
  }

  return result;
}

uint64_t sub_1004AEE4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656D756C6F76 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449656369766564 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x646573557473616CLL && a2 == 0xEC00000065746144)
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

uint64_t sub_1004AEFBC()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097FC08);
  v1 = sub_10000C4AC(v0, qword_10097FC08);
  if (qword_100973758 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1004AF084()
{
  v1 = *(_s14MacUnlockPhoneV17InitialKeyContextVMa(0) + 40);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
LABEL_5:
    v5 = v2;
    return v3;
  }

  result = [objc_allocWithZone(SDAuthenticationRequest) init];
  if (result)
  {
    *(v0 + v1) = result;
    v3 = result;
    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1004AF0F4()
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  result = swift_allocObject();
  *(result + 16) = xmmword_100805B60;
  if (qword_100973900 != -1)
  {
    v1 = result;
    swift_once();
    result = v1;
  }

  *(result + 56) = &type metadata for SDAuthentication.Operation.CheckIsBluetoothEnabled;
  *(result + 64) = &off_10097BDB8;
  *(result + 96) = &type metadata for SDAuthentication.Operation.CheckIsWiFiEnabled;
  *(result + 104) = &off_10097BDA0;
  *(result + 136) = &type metadata for SDAuthentication.Operation.CheckRemoteDeviceOSVersionIsSupported;
  *(result + 144) = &off_10097BE00;
  *(result + 176) = &type metadata for SDAuthentication.Operation.RecordRemoteDevice;
  *(result + 184) = &off_10097BD70;
  *(result + 216) = &type metadata for SDAuthentication.Operation.CheckEnabledWithPeer;
  *(result + 224) = &off_10097BCE0;
  *(result + 256) = &type metadata for SDAuthentication.Operation.CheckLocalSecurityPolicy;
  *(result + 264) = &off_10097BD58;
  *(result + 296) = &type metadata for SDAuthentication.Operation.IncludeLastRegistrationDateInMessage;
  *(result + 304) = &off_10097BCC8;
  *(result + 336) = &type metadata for SDAuthentication.Operation.IncludeSessionStartDateInMessage;
  *(result + 344) = &off_10097BCB0;
  *(result + 376) = &type metadata for SDAuthentication.Operation.UseAuthTokenForFirstAKSTokenAsKeyInMessage;
  *(result + 384) = &off_10097BC98;
  *(result + 416) = &type metadata for SDAuthentication.Operation.SendRequestMessage;
  *(result + 424) = &off_10097BCF8;
  return result;
}

void sub_1004AF2D0()
{
  sub_1002A6B2C();
  if (v0 <= 0x3F)
  {
    sub_1002A6B90(319, &qword_100975788);
    if (v1 <= 0x3F)
    {
      type metadata accessor for SDAuthenticationSessionMetrics();
      if (v2 <= 0x3F)
      {
        sub_1002A6BEC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1004AF3DC()
{
  sub_1002A6B2C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SDAuthenticationSessionMetrics();
    if (v1 <= 0x3F)
    {
      sub_1002A6B90(319, &qword_100975788);
      if (v2 <= 0x3F)
      {
        sub_1002A6BEC();
        if (v3 <= 0x3F)
        {
          sub_1002F9C34(319, &unk_100978AB0, &type metadata for Data, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_1002A6C94(319, &unk_1009759E8, &qword_1009758B8, off_1008C8D48);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

id sub_1004AF57C()
{
  v1 = *(_s14MacUnlockPhoneV20HandleRequestContextVMa(0) + 44);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
LABEL_5:
    v5 = v2;
    return v3;
  }

  result = [objc_allocWithZone(SDAuthenticationResponse) init];
  if (result)
  {
    *(v0 + v1) = result;
    v3 = result;
    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_1004AF5EC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v49 = a2;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v45 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v46 = &v45 - v10;
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100805B60;
  if (qword_100973900 != -1)
  {
    swift_once();
  }

  *(v11 + 56) = &type metadata for SDAuthentication.Operation.RecordSessionStart;
  *(v11 + 64) = &off_10097BDE8;
  *(v11 + 96) = &type metadata for SDAuthentication.Operation.RecordRemoteUnlockDate;
  *(v11 + 104) = &off_10097BF40;
  *(v11 + 136) = &type metadata for SDAuthentication.Operation.RecordDiscoveryEnd;
  *(v11 + 144) = &off_10097BB90;
  *(v11 + 176) = &type metadata for SDAuthentication.Operation.RecordKeyExchangeStart;
  *(v11 + 184) = &off_10097BDD0;
  *(v11 + 216) = &type metadata for SDAuthentication.Operation.RecordKeyExchangeEnd;
  *(v11 + 224) = &off_10097C1F8;
  *(v11 + 256) = &type metadata for SDAuthentication.Operation.CheckEnabledWithPeer;
  *(v11 + 264) = &off_10097BCE0;
  *(v11 + 296) = &type metadata for SDAuthentication.Operation.CheckLocalSecurityPolicy;
  *(v11 + 304) = &off_10097BD58;
  *(v11 + 336) = &type metadata for SDAuthentication.Operation.CheckLockRegisteredAndArmed;
  *(v11 + 344) = &off_10097BEC8;
  *(v11 + 376) = &type metadata for SDAuthentication.Operation.UseReceivedTokenForIncludingFirstAKSTokenInMessage;
  *(v11 + 384) = &off_10097BEB0;
  *(v11 + 416) = &type metadata for SDAuthentication.Operation.SendResponseMessage;
  *(v11 + 424) = &off_10097C1B0;
  *a3 = v11;
  v12 = _s14MacUnlockPhoneV20HandleRequestContextVMa(0);
  v13 = v12[8];
  v48 = v6;
  v14 = *(v6 + 56);
  v14(a3 + v13, 1, 1, v5);
  v15 = v5;
  v16 = v12[9];
  v47 = v15;
  (v14)(a3 + v16, 1, 1);
  *(a3 + v12[11]) = 0;
  *(a3 + v12[12]) = 1;
  v17 = a1;
  if ([a1 hasAksToken])
  {
    v18 = v49;
    sub_1002A9938(v49 + 8, (a3 + 1));
    v19 = _s14MacUnlockPhoneV18InitialLockContextVMa(0);
    sub_1004B13F4(v18 + v19[6], a3 + v12[6], type metadata accessor for SDAuthenticationSessionMetrics);
    sub_1000168F4(v18 + v19[7], a3 + v13);
    sub_1000168F4(v18 + v19[8], a3 + v16);
    if ([a1 hasUnlockDate] && (objc_msgSend(a1, "unlockDate"), v20 != 0.0))
    {
      [a1 unlockDate];
      v21 = v46;
      Date.init(timeIntervalSince1970:)();
    }

    else
    {
      v21 = v46;
      Date.init()();
    }

    v22 = v47;
    (*(v48 + 32))(a3 + v12[10], v21, v47);
    result = [a1 aksToken];
    if (result)
    {
      v24 = result;
      v25 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      v28 = (a3 + v12[7]);
      *v28 = v25;
      v28[1] = v27;
      if (qword_1009738F8 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      sub_10000C4AC(v29, qword_10097FC08);
      v30 = v17;
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v50 = v34;
        *v33 = 136315138;
        [v30 unlockDate];
        v35 = v45;
        Date.init(timeIntervalSince1970:)();
        sub_100418E5C();
        v36 = dispatch thunk of CustomStringConvertible.description.getter();
        v38 = v37;
        (*(v48 + 8))(v35, v22);
        v39 = sub_10000C4E4(v36, v38, &v50);

        *(v33 + 4) = v39;
        _os_log_impl(&_mh_execute_header, v31, v32, "got remote unlock date: %s", v33, 0xCu);
        sub_10000C60C(v34);

        v40 = v49;
      }

      else
      {

        v40 = v18;
      }

      return sub_1004B145C(v40, _s14MacUnlockPhoneV18InitialLockContextVMa);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v41 = sub_100010F88(1, 0xD000000000000011, 0x80000001007901B0);
    v43 = v42;
    sub_1000115C8();
    swift_allocError();
    *v44 = v41;
    *(v44 + 8) = v43;
    swift_willThrow();

    sub_1004B145C(v49, _s14MacUnlockPhoneV18InitialLockContextVMa);

    sub_100005508(a3 + v13, &qword_10097A7F0, &unk_1007FB600);
    return sub_100005508(a3 + v16, &qword_10097A7F0, &unk_1007FB600);
  }

  return result;
}

uint64_t sub_1004AFC14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

id sub_1004AFCC8()
{
  v1 = *(_s14MacUnlockPhoneV21HandleResponseContextVMa(0) + 36);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
LABEL_5:
    v5 = v2;
    return v3;
  }

  result = [objc_allocWithZone(SDAuthenticationToken) init];
  if (result)
  {
    *(v0 + v1) = result;
    v3 = result;
    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_1004AFD38@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007F8A70;
  if (qword_100973900 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.IncludeNextAKSTokenInMessage;
  *(v6 + 64) = &off_10097BEF8;
  *(v6 + 96) = &type metadata for SDAuthentication.Operation.SendTokenMessage;
  *(v6 + 104) = &off_10097C180;
  *a3 = v6;
  v7 = _s14MacUnlockPhoneV21HandleResponseContextVMa(0);
  *(a3 + v7[7]) = 34;
  *(a3 + v7[9]) = 0;
  *(a3 + v7[10]) = 7;
  if ([a1 hasAksToken])
  {
    v8 = _s14MacUnlockPhoneV17InitialKeyContextVMa(0);
    sub_1002A9938(a2 + *(v8 + 24), (a3 + 1));
    sub_1004B13F4(a2 + *(v8 + 20), a3 + v7[6], type metadata accessor for SDAuthenticationSessionMetrics);
    result = [a1 aksToken];
    if (result)
    {
      v10 = result;
      v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      result = sub_1004B145C(a2, _s14MacUnlockPhoneV17InitialKeyContextVMa);
      v14 = (a3 + v7[8]);
      *v14 = v11;
      v14[1] = v13;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v15 = sub_100010F88(1, 0xD000000000000019, 0x8000000100789BB0);
    v17 = v16;
    sub_1000115C8();
    swift_allocError();
    *v18 = v15;
    *(v18 + 8) = v17;
    swift_willThrow();

    sub_1004B145C(a2, _s14MacUnlockPhoneV17InitialKeyContextVMa);
  }

  return result;
}

id sub_1004AFFB0()
{
  v1 = *(_s14MacUnlockPhoneV18HandleTokenContextVMa(0) + 32);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
LABEL_5:
    v5 = v2;
    return v3;
  }

  result = [objc_allocWithZone(SDAuthenticationConfirmation) init];
  if (result)
  {
    *(v0 + v1) = result;
    v3 = result;
    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_1004B0020@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007F8830;
  if (qword_100973900 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.ConsumeAKSToken;
  *(v6 + 64) = &off_10097BEE0;
  *(v6 + 96) = &type metadata for SDAuthentication.Operation.SendConfirmation;
  *(v6 + 104) = &off_10097C270;
  *(v6 + 136) = &type metadata for SDAuthentication.Operation.RecordSessionFinished;
  *(v6 + 144) = &off_10097BB00;
  *a3 = v6;
  v7 = _s14MacUnlockPhoneV18HandleTokenContextVMa(0);
  *(a3 + v7[8]) = 0;
  *(a3 + v7[9]) = 2;
  if ([a1 hasAksToken])
  {
    sub_1002A9938(a2 + 8, (a3 + 1));
    v8 = _s14MacUnlockPhoneV20HandleRequestContextVMa(0);
    sub_1004B13F4(a2 + *(v8 + 24), a3 + v7[6], type metadata accessor for SDAuthenticationSessionMetrics);
    result = [a1 aksToken];
    if (result)
    {
      v10 = result;
      v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      result = sub_1004B145C(a2, _s14MacUnlockPhoneV20HandleRequestContextVMa);
      v14 = (a3 + v7[7]);
      *v14 = v11;
      v14[1] = v13;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v15 = sub_100010F88(1, 0xD000000000000019, 0x8000000100789BB0);
    v17 = v16;
    sub_1000115C8();
    swift_allocError();
    *v18 = v15;
    *(v18 + 8) = v17;
    swift_willThrow();

    sub_1004B145C(a2, _s14MacUnlockPhoneV20HandleRequestContextVMa);
  }

  return result;
}

uint64_t sub_1004B028C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = a3();
  v4 = [v3 data];

  if (v4)
  {
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

    return v5;
  }

  else
  {
    v7 = sub_100010F88(10, 0xD00000000000001ALL, 0x8000000100789BF0);
    v9 = v8;
    sub_1000115C8();
    swift_allocError();
    *v10 = v7;
    *(v10 + 8) = v9;
    return swift_willThrow();
  }
}

uint64_t sub_1004B0360@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007F8830;
  if (qword_100973900 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.HandleSucceededResult;
  *(v6 + 64) = &off_10097C258;
  *(v6 + 96) = &type metadata for SDAuthentication.Operation.ConfirmAKSSession;
  *(v6 + 104) = &off_10097BE98;
  *(v6 + 136) = &type metadata for SDAuthentication.Operation.RecordSessionFinished;
  *(v6 + 144) = &off_10097BB00;
  *a3 = v6;
  if ([a1 hasSuccess])
  {
    sub_1002A9938(a2 + 8, (a3 + 1));
    v7 = *(_s14MacUnlockPhoneV21HandleResponseContextVMa(0) + 24);
    v8 = _s14MacUnlockPhoneV25HandleConfirmationContextVMa(0);
    sub_1004B13F4(a2 + v7, a3 + *(v8 + 24), type metadata accessor for SDAuthenticationSessionMetrics);
    LOBYTE(v7) = [a1 success];

    result = sub_1004B145C(a2, _s14MacUnlockPhoneV21HandleResponseContextVMa);
    *(a3 + *(v8 + 28)) = v7;
  }

  else
  {
    v10 = sub_100010F88(1, 0xD000000000000016, 0x8000000100789BD0);
    v12 = v11;
    sub_1000115C8();
    swift_allocError();
    *v13 = v10;
    *(v13 + 8) = v12;
    swift_willThrow();

    sub_1004B145C(a2, _s14MacUnlockPhoneV21HandleResponseContextVMa);
  }

  return result;
}

void sub_1004B055C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v126 = a2;
  v121 = a3;
  v105 = _s14MacUnlockPhoneV25HandleConfirmationContextVMa(0);
  v4 = *(*(v105 - 8) + 64);
  __chkstk_darwin(v105);
  v109 = (&v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_10028088C(&qword_10097FE00, &qword_100805D08);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v114 = &v105 - v8;
  v106 = _s14MacUnlockPhoneV18HandleTokenContextVMa(0);
  v9 = *(*(v106 - 8) + 64);
  __chkstk_darwin(v106);
  v113 = (&v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_10028088C(&qword_10097FE08, &qword_100805D10);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v120 = &v105 - v13;
  v115 = _s14MacUnlockPhoneV21HandleResponseContextVMa(0);
  v112 = *(v115 - 8);
  v14 = *(v112 + 64);
  v15 = __chkstk_darwin(v115);
  v107 = &v105 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v108 = &v105 - v18;
  __chkstk_darwin(v17);
  v119 = (&v105 - v19);
  v20 = sub_10028088C(&qword_10097FE10, &qword_100805D18);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v105 - v22;
  v24 = _s14MacUnlockPhoneV17InitialKeyContextVMa(0);
  v123 = *(v24 - 8);
  v124 = v24;
  v25 = *(v123 + 64);
  v26 = __chkstk_darwin(v24);
  v117 = &v105 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v118 = &v105 - v28;
  v122 = _s14MacUnlockPhoneV20HandleRequestContextVMa(0);
  v116 = *(v122 - 8);
  v29 = *(v116 + 64);
  v30 = __chkstk_darwin(v122);
  v110 = &v105 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v111 = &v105 - v33;
  __chkstk_darwin(v32);
  v35 = (&v105 - v34);
  v36 = sub_10028088C(&qword_10097FE18, &unk_100805D20);
  v37 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36 - 8);
  v39 = &v105 - v38;
  v40 = _s14MacUnlockPhoneV18InitialLockContextVMa(0);
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  v43 = __chkstk_darwin(v40);
  v45 = &v105 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v47 = &v105 - v46;
  sub_1002A9938(a1, v127);
  sub_10028088C(&qword_1009819F0, &unk_1007FAAA0);
  sub_1000276B4(0, &qword_1009758B8, off_1008C8D48);
  if (swift_dynamicCast())
  {
    v48 = v128;
    sub_1002A9938(v126, v127);
    sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
    v49 = swift_dynamicCast();
    v50 = *(v41 + 56);
    if (v49)
    {
      v50(v39, 0, 1, v40);
      sub_1004B138C(v39, v47, _s14MacUnlockPhoneV18InitialLockContextVMa);
      sub_1004B13F4(v47, v45, _s14MacUnlockPhoneV18InitialLockContextVMa);
      v51 = v48;
      v52 = v125;
      sub_1004AF5EC(v51, v45, v35);
      if (v52)
      {
        v53 = _s14MacUnlockPhoneV18InitialLockContextVMa;
        v54 = v47;
LABEL_21:
        sub_1004B145C(v54, v53);

        return;
      }

      v90 = v121;
      v121[3] = v122;
      v90[4] = &off_1008E3F80;
      v91 = sub_10002F604(v90);
      sub_1004B138C(v35, v91, _s14MacUnlockPhoneV20HandleRequestContextVMa);

      v92 = _s14MacUnlockPhoneV18InitialLockContextVMa;
      v93 = v47;
      goto LABEL_30;
    }

    v50(v39, 1, 1, v40);
    sub_100005508(v39, &qword_10097FE18, &unk_100805D20);
    v64 = "sult, message may be replayed";
    v65 = 0xD000000000000047;
LABEL_10:
    v66 = sub_100010F88(10, v65, v64 | 0x8000000000000000);
    v68 = v67;
    sub_1000115C8();
    swift_allocError();
    *v69 = v66;
    *(v69 + 8) = v68;
    swift_willThrow();

    return;
  }

  v55 = v126;
  sub_1002A9938(a1, v127);
  sub_1000276B4(0, &qword_1009758C0, off_1008C8D50);
  if (swift_dynamicCast())
  {
    v56 = v128;
    sub_1002A9938(v55, v127);
    sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
    v57 = v124;
    v58 = swift_dynamicCast();
    v59 = *(v123 + 56);
    if (!v58)
    {
      v59(v23, 1, 1, v57);
      sub_100005508(v23, &qword_10097FE10, &qword_100805D18);
      v79 = sub_100010F88(10, 0xD000000000000046, 0x8000000100789AA0);
      v81 = v80;
      sub_1000115C8();
      swift_allocError();
      *v82 = v79;
      *(v82 + 8) = v81;
      swift_willThrow();

      return;
    }

    v59(v23, 0, 1, v57);
    v60 = v118;
    sub_1004B138C(v23, v118, _s14MacUnlockPhoneV17InitialKeyContextVMa);
    v61 = v117;
    sub_1004B13F4(v60, v117, _s14MacUnlockPhoneV17InitialKeyContextVMa);
    v51 = v56;
    v62 = v119;
    v63 = v125;
    sub_1004AFD38(v51, v61, v119);
    if (v63)
    {
      v53 = _s14MacUnlockPhoneV17InitialKeyContextVMa;
      v54 = v60;
      goto LABEL_21;
    }

    v98 = v121;
    v121[3] = v115;
    v98[4] = &off_1008E3F98;
    v99 = sub_10002F604(v98);
    sub_1004B138C(v62, v99, _s14MacUnlockPhoneV21HandleResponseContextVMa);

    v92 = _s14MacUnlockPhoneV17InitialKeyContextVMa;
    v93 = v60;
    goto LABEL_30;
  }

  sub_1002A9938(a1, v127);
  sub_1000276B4(0, &qword_1009758C8, off_1008C8D58);
  if (swift_dynamicCast())
  {
    v48 = v128;
    sub_1002A9938(v55, v127);
    sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
    v70 = v120;
    v71 = v122;
    v72 = swift_dynamicCast();
    v73 = *(v116 + 56);
    if (!v72)
    {
      v73(v70, 1, 1, v71);
      sub_100005508(v70, &qword_10097FE08, &qword_100805D10);
      v64 = "t, message may be replayed";
      v65 = 0xD000000000000049;
      goto LABEL_10;
    }

    v73(v70, 0, 1, v71);
    v74 = v111;
    sub_1004B138C(v70, v111, _s14MacUnlockPhoneV20HandleRequestContextVMa);
    v75 = v110;
    sub_1004B13F4(v74, v110, _s14MacUnlockPhoneV20HandleRequestContextVMa);
    v51 = v48;
    v76 = v113;
    v77 = v125;
    sub_1004B0020(v51, v75, v113);
    if (v77)
    {
      v78 = _s14MacUnlockPhoneV20HandleRequestContextVMa;
LABEL_20:
      v53 = v78;
      v54 = v74;
      goto LABEL_21;
    }

    v100 = v121;
    v121[3] = v106;
    v100[4] = &off_1008E3FB0;
    v101 = sub_10002F604(v100);
    sub_1004B138C(v76, v101, _s14MacUnlockPhoneV18HandleTokenContextVMa);

    v102 = _s14MacUnlockPhoneV20HandleRequestContextVMa;
  }

  else
  {
    sub_1002A9938(a1, v127);
    sub_1000276B4(0, &qword_1009758D0, off_1008C8D08);
    if (!swift_dynamicCast())
    {
      v94 = sub_100010F88(10, 0xD00000000000001FLL, 0x80000001007898F0);
      v96 = v95;
      sub_1000115C8();
      swift_allocError();
      *v97 = v94;
      *(v97 + 8) = v96;
      swift_willThrow();
      return;
    }

    v48 = v128;
    sub_1002A9938(v55, v127);
    sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
    v84 = v114;
    v83 = v115;
    v85 = swift_dynamicCast();
    v86 = *(v112 + 56);
    if (!v85)
    {
      v86(v84, 1, 1, v83);
      sub_100005508(v84, &qword_10097FE00, &qword_100805D08);
      v64 = "Invalid message object received";
      v65 = 0xD00000000000004ALL;
      goto LABEL_10;
    }

    v86(v84, 0, 1, v83);
    v74 = v108;
    sub_1004B138C(v84, v108, _s14MacUnlockPhoneV21HandleResponseContextVMa);
    v87 = v107;
    sub_1004B13F4(v74, v107, _s14MacUnlockPhoneV21HandleResponseContextVMa);
    v51 = v48;
    v88 = v109;
    v89 = v125;
    sub_1004B0360(v51, v87, v109);
    if (v89)
    {
      v78 = _s14MacUnlockPhoneV21HandleResponseContextVMa;
      goto LABEL_20;
    }

    v103 = v121;
    v121[3] = v105;
    v103[4] = &off_1008E3FC8;
    v104 = sub_10002F604(v103);
    sub_1004B138C(v88, v104, _s14MacUnlockPhoneV25HandleConfirmationContextVMa);

    v102 = _s14MacUnlockPhoneV21HandleResponseContextVMa;
  }

  v92 = v102;
  v93 = v74;
LABEL_30:
  sub_1004B145C(v93, v92);
}

uint64_t sub_1004B138C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004B13F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004B145C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1004B14E4()
{
  sub_1002A6B2C();
  if (v0 <= 0x3F)
  {
    sub_1002A6B90(319, &qword_100975788);
    if (v1 <= 0x3F)
    {
      type metadata accessor for SDAuthenticationSessionMetrics();
      if (v2 <= 0x3F)
      {
        sub_1002A6BEC();
        if (v3 <= 0x3F)
        {
          type metadata accessor for Date();
          if (v4 <= 0x3F)
          {
            sub_1002A6C94(319, &unk_100975A90, &qword_1009758C0, off_1008C8D50);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1004B1628()
{
  sub_1002A6B2C();
  if (v0 <= 0x3F)
  {
    sub_1002A6B90(319, &qword_100975788);
    if (v1 <= 0x3F)
    {
      type metadata accessor for SDAuthenticationSessionMetrics();
      if (v2 <= 0x3F)
      {
        sub_1002A6C94(319, &unk_100975B40, &qword_1009758D0, off_1008C8D08);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1004B174C()
{
  sub_1002A6B2C();
  if (v0 <= 0x3F)
  {
    sub_1002A6B90(319, &qword_100975788);
    if (v1 <= 0x3F)
    {
      type metadata accessor for SDAuthenticationSessionMetrics();
      if (v2 <= 0x3F)
      {
        type metadata accessor for SFAuthenticationErrorCode(319);
        if (v3 <= 0x3F)
        {
          sub_1002A6C94(319, &unk_100975BE8, &qword_1009758C8, off_1008C8D58);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1004B1884(uint64_t a1, uint64_t a2)
{
  v2[10] = a1;
  v2[11] = a2;
  v3 = type metadata accessor for SFInterventionWorkflow.SprinboardSettings();
  v2[12] = v3;
  v4 = *(v3 - 8);
  v2[13] = v4;
  v5 = *(v4 + 64) + 15;
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_1004B1944, 0, 0);
}

uint64_t sub_1004B1944()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = *(v2 + 104);
  v4(v1, enum case for SFInterventionWorkflow.SprinboardSettings.interventionShouldContinue(_:), v3);
  v5 = SFInterventionWorkflow.SprinboardSettings.rawValue.getter();
  v6 = *(v2 + 8);
  v6(v1, v3);
  v4(v1, enum case for SFInterventionWorkflow.SprinboardSettings.interventionReply(_:), v3);
  v7 = SFInterventionWorkflow.SprinboardSettings.rawValue.getter();
  v6(v1, v3);
  v8 = sub_100011040(_swiftEmptyArrayStorage);
  v9 = static SFInterventionWorkflow.SprinboardSettings.userInfoKey.getter();
  v11 = v10;
  v12 = SFInterventionWorkflow.rawValue.getter();
  *(v0 + 40) = &type metadata for String;
  *(v0 + 16) = v12;
  *(v0 + 24) = v13;
  sub_1000106E0((v0 + 16), (v0 + 48));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100011170((v0 + 48), v9, v11, isUniquelyReferenced_nonNull_native);

  v15 = v8;
  *(v0 + 120) = v8;
  v16 = [objc_allocWithZone(sub_10028088C(&qword_1009800F0 &unk_100806010))];
  *(v0 + 128) = v16;
  v17 = swift_task_alloc();
  *(v0 + 136) = v17;
  *(v17 + 16) = v16;
  *(v17 + 24) = v5;
  *(v17 + 32) = xmmword_1007F84A0;
  *(v17 + 48) = 0x8000000100789280;
  *(v17 + 56) = 0xD00000000000001DLL;
  *(v17 + 64) = 0x8000000100792680;
  *(v17 + 72) = v15;
  *(v17 + 80) = v7;
  *(v17 + 88) = 0;
  v18 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v19 = swift_task_alloc();
  *(v0 + 144) = v19;
  v20 = sub_10028088C(&qword_10097A3C0, &qword_1007FD5D0);
  *v19 = v0;
  v19[1] = sub_1004B1BD0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 160, 0, 0, 0xD00000000000006ALL, 0x80000001007892A0, sub_1004B2880, v17, v20);
}

uint64_t sub_1004B1BD0()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v7 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = sub_1004B1DE0;
  }

  else
  {
    v5 = *(v2 + 136);

    *(v2 + 161) = *(v2 + 160);
    v4 = sub_1004B1CFC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1004B1CFC()
{
  v1 = *(v0 + 161);
  v2 = *(v0 + 120);

  if (v1 == 2 || (*(v0 + 161) & 1) == 0)
  {
    v3 = &enum case for SFInterventionResponse.reject(_:);
  }

  else
  {
    v3 = &enum case for SFInterventionResponse.accept(_:);
  }

  v4 = *(v0 + 112);
  v5 = *(v0 + 80);
  v6 = *v3;
  v7 = type metadata accessor for SFInterventionResponse();
  (*(*(v7 - 8) + 104))(v5, v6, v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1004B1DE0()
{
  v1 = *(v0 + 136);
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);

  v4 = *(v0 + 8);
  v5 = *(v0 + 152);

  return v4();
}

uint64_t sub_1004B1E80()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_1009800B0);
  v1 = sub_10000C4AC(v0, qword_1009800B0);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004B1F48(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 32) = a6;
  *(v7 + 40) = a7;
  *(v7 + 24) = a5;
  *(v7 + 120) = a4;
  v8 = type metadata accessor for SFInterventionResponse();
  *(v7 + 48) = v8;
  v9 = *(v8 - 8);
  *(v7 + 56) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 64) = swift_task_alloc();
  *(v7 + 72) = swift_task_alloc();
  v11 = type metadata accessor for SFInterventionWorkflow();
  *(v7 + 80) = v11;
  v12 = *(v11 - 8);
  *(v7 + 88) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 96) = swift_task_alloc();

  return _swift_task_switch(sub_1004B2078, 0, 0);
}

uint64_t sub_1004B2078()
{
  v1 = &enum case for SFInterventionWorkflow.send(_:);
  if (!*(v0 + 120))
  {
    v1 = &enum case for SFInterventionWorkflow.receive(_:);
  }

  (*(*(v0 + 88) + 104))(*(v0 + 96), *v1, *(v0 + 80));
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *v2 = v0;
  v2[1] = sub_1004B2148;
  v3 = *(v0 + 96);
  v4 = *(v0 + 72);

  return sub_1004B1884(v4, v3);
}

uint64_t sub_1004B2148()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_1004B23CC;
  }

  else
  {
    v3 = sub_1004B225C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004B225C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  (*(v3 + 16))(v1, *(v0 + 72), v2);
  v4 = (*(v3 + 88))(v1, v2);
  if (v4 == enum case for SFInterventionResponse.accept(_:) || v4 == enum case for SFInterventionResponse.reject(_:))
  {
    v7 = *(v0 + 88);
    v6 = *(v0 + 96);
    v9 = *(v0 + 72);
    v8 = *(v0 + 80);
    v10 = *(v0 + 48);
    v11 = *(v0 + 56);
    v12 = *(v0 + 40);
    (*(v0 + 32))(v4 == enum case for SFInterventionResponse.accept(_:));
    (*(v11 + 8))(v9, v10);
    (*(v7 + 8))(v6, v8);
    v13 = *(v0 + 96);
    v14 = *(v0 + 64);
    v15 = *(v0 + 72);

    v16 = *(v0 + 8);

    return v16();
  }

  else
  {
    v18 = *(v0 + 48);

    return _diagnoseUnexpectedEnumCase<A>(type:)();
  }
}

uint64_t sub_1004B23CC()
{
  v19 = v0;
  (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
  if (qword_100973908 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_1009800B0);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 112);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    *(v0 + 16) = v5;
    swift_errorRetain();
    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    v8 = String.init<A>(describing:)();
    v10 = sub_10000C4E4(v8, v9, &v18);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Intervention UI failed {error: %s}", v6, 0xCu);
    sub_10000C60C(v7);
  }

  v11 = *(v0 + 112);
  v12 = *(v0 + 40);
  (*(v0 + 32))(0);

  v13 = *(v0 + 96);
  v14 = *(v0 + 64);
  v15 = *(v0 + 72);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1004B27A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100005C04;

  return sub_1004B1F48(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1004B28C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[26] = a4;
  v5[27] = v4;
  v5[24] = a2;
  v5[25] = a3;
  v5[23] = a1;
  v6 = sub_10028088C(&qword_10097B348, &qword_1007FE748);
  v5[28] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[29] = swift_task_alloc();
  v8 = *(*(sub_10028088C(&qword_10097B338, &unk_1007FE730) - 8) + 64) + 15;
  v5[30] = swift_task_alloc();
  v9 = type metadata accessor for SFAirDrop.TransferType();
  v5[31] = v9;
  v10 = *(v9 - 8);
  v5[32] = v10;
  v11 = *(v10 + 64) + 15;
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v12 = type metadata accessor for Date();
  v5[35] = v12;
  v13 = *(v12 - 8);
  v5[36] = v13;
  v14 = *(v13 + 64) + 15;
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();
  v15 = type metadata accessor for SFAirDropSend.Failure();
  v5[39] = v15;
  v16 = *(v15 - 8);
  v5[40] = v16;
  v17 = *(v16 + 64) + 15;
  v5[41] = swift_task_alloc();
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();
  v5[44] = swift_task_alloc();
  v18 = *(*(sub_10028088C(&qword_100980278, &unk_1008060F0) - 8) + 64) + 15;
  v5[45] = swift_task_alloc();
  v19 = _s15EndpointFailureVMa(0);
  v5[46] = v19;
  v20 = *(v19 - 8);
  v5[47] = v20;
  v21 = *(v20 + 64) + 15;
  v5[48] = swift_task_alloc();
  v22 = *(*(sub_10028088C(&qword_1009763E0, &qword_1007F95D0) - 8) + 64) + 15;
  v5[49] = swift_task_alloc();
  v23 = sub_10028088C(&qword_100980280, &unk_100806100);
  v5[50] = v23;
  v24 = *(v23 - 8);
  v5[51] = v24;
  v25 = *(v24 + 64) + 15;
  v5[52] = swift_task_alloc();
  v26 = *(*(sub_10028088C(&qword_10097B350, &qword_1007FE758) - 8) + 64) + 15;
  v5[53] = swift_task_alloc();
  v5[54] = swift_task_alloc();
  v5[55] = swift_task_alloc();
  v5[56] = swift_task_alloc();
  v27 = sub_10028088C(&qword_10097B340, &qword_100806090);
  v5[57] = v27;
  v28 = *(v27 - 8);
  v5[58] = v28;
  v29 = *(v28 + 64) + 15;
  v5[59] = swift_task_alloc();
  v30 = sub_10028088C(&qword_100980288, &unk_100806110);
  v5[60] = v30;
  v31 = *(v30 - 8);
  v5[61] = v31;
  v32 = *(v31 + 64) + 15;
  v5[62] = swift_task_alloc();
  v5[63] = swift_task_alloc();

  return _swift_task_switch(sub_1004B2D5C, v4, 0);
}

uint64_t sub_1004B2D5C()
{
  v1 = *(v0 + 464);
  v56 = *(v0 + 456);
  v2 = *(v0 + 216);
  v3 = (v2 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_runner);
  *(v0 + 136) = *(*sub_10002CDC0((v2 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_runner), *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_runner + 24)) + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_endpoints);
  swift_allocObject();
  swift_weakInit();

  sub_10028088C(&qword_100980290, &qword_100809190);
  sub_1004BA170();
  v53 = Publisher<>.sink(receiveValue:)();
  *(v0 + 512) = v53;

  *(v0 + 144) = *(*sub_10002CDC0(v3, v3[3]) + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_backupEndpoints);
  swift_allocObject();
  swift_weakInit();

  v4 = Publisher<>.sink(receiveValue:)();
  *(v0 + 520) = v4;

  v5 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_askContinuation;
  *(v0 + 528) = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_askContinuation;
  swift_beginAccess();
  v6 = *(v1 + 48);
  *(v0 + 536) = v6;
  *(v0 + 544) = (v1 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v6(v2 + v5, 1, v56))
  {
    v7 = *(v0 + 312);
    v8 = *(v0 + 320);
    v9 = *(v0 + 216);
    sub_1004BA228(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure);
    swift_allocError();
    (*(v8 + 104))(v10, enum case for SFAirDropSend.Failure.badRequest(_:), v7);
    swift_willThrow();
    sub_1004B603C(v53, v4, v9);
    v11 = *(v0 + 520);
    v13 = *(v0 + 504);
    v12 = *(v0 + 512);
    v14 = *(v0 + 496);
    v15 = *(v0 + 472);
    v17 = *(v0 + 440);
    v16 = *(v0 + 448);
    v19 = *(v0 + 424);
    v18 = *(v0 + 432);
    v20 = *(v0 + 416);
    v39 = *(v0 + 392);
    v40 = *(v0 + 384);
    v41 = *(v0 + 360);
    v42 = *(v0 + 352);
    v43 = *(v0 + 344);
    v44 = *(v0 + 336);
    v45 = *(v0 + 328);
    v46 = *(v0 + 304);
    v47 = *(v0 + 296);
    v48 = *(v0 + 272);
    v49 = *(v0 + 264);
    v51 = *(v0 + 240);
    v54 = *(v0 + 232);

    v21 = *(v0 + 8);

    return v21();
  }

  else
  {
    v23 = *(v0 + 496);
    v50 = *(v0 + 504);
    v24 = *(v0 + 480);
    v25 = *(v0 + 488);
    v27 = *(v0 + 464);
    v26 = *(v0 + 472);
    v28 = *(v0 + 456);
    v55 = *(v0 + 448);
    v57 = *(v0 + 416);
    v29 = *(v0 + 320);
    v52 = *(v0 + 312);
    v30 = *(v27 + 16);
    *(v0 + 552) = v30;
    *(v0 + 560) = (v27 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v30(v26, v2 + v5, v28);
    SFProgressContinuation.task.getter();
    v31 = *(v27 + 8);
    *(v0 + 568) = v31;
    *(v0 + 576) = (v27 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v31(v26, v28);
    (*(v25 + 32))(v50, v23, v24);
    v32 = *(v29 + 56);
    *(v0 + 584) = v32;
    *(v0 + 592) = (v29 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v32(v55, 1, 1, v52);
    SFProgressTask.makeAsyncIterator()();
    v33 = sub_1004BA228(&qword_1009802A0, type metadata accessor for SDAirDropAskFanoutHelper);
    *(v0 + 600) = v33;
    *(v0 + 608) = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_askStart;
    *(v0 + 616) = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_sendRequest;
    *(v0 + 624) = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_endpointService;
    *(v0 + 680) = enum case for SFAirDropSend.Failure.unexpected(_:);
    *(v0 + 684) = enum case for SFAirDropSend.Failure.missingEndpoint(_:);
    *(v0 + 688) = enum case for SFAirDropSend.Failure.resolveFailure(_:);
    *(v0 + 692) = enum case for SFAirDropSend.Failure.receiverDeclined(_:);
    *(v0 + 696) = enum case for SFAirDropSend.Failure.unsupportedConnection(_:);
    *(v0 + 700) = enum case for SFAirDrop.TransferType.peerPayment(_:);
    v34 = *(v0 + 216);
    v35 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
    v36 = swift_task_alloc();
    *(v0 + 632) = v36;
    *v36 = v0;
    v36[1] = sub_1004B3358;
    v37 = *(v0 + 416);
    v38 = *(v0 + 400);

    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 152, v34, v33, v38, v0 + 160);
  }
}

uint64_t sub_1004B3358()
{
  v2 = *v1;
  v3 = *(*v1 + 632);
  v7 = *v1;

  v4 = *(v2 + 216);
  if (v0)
  {
    v5 = sub_1004B4B18;
  }

  else
  {
    v5 = sub_1004B346C;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1004B346C()
{
  v168 = v0;
  v2 = v0 + 152;
  v1 = *(v0 + 152);
  *(v0 + 640) = v1;
  if (v1 == 1)
  {
    (*(*(v0 + 408) + 8))(*(v0 + 416), *(v0 + 400));
    v16 = async function pointer to SFProgressTask.finalValue.getter[1];
    v17 = swift_task_alloc();
    *(v0 + 664) = v17;
    *v17 = v0;
    v17[1] = sub_1004B46C0;
    v18 = *(v0 + 504);
    v19 = *(v0 + 480);
    v20 = *(v0 + 232);

    return SFProgressTask.finalValue.getter(v20, v19);
  }

  else
  {
    if (!v1)
    {
LABEL_42:
      v115 = *(v0 + 600);
      v116 = *(v0 + 216);
      v117 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
      v118 = swift_task_alloc();
      *(v0 + 632) = v118;
      *v118 = v0;
      v118[1] = sub_1004B3358;
      v119 = *(v0 + 416);
      v120 = *(v0 + 400);

      return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v2, v116, v115, v120, v0 + 160);
    }

    v3 = *(v0 + 392);
    v5 = *(v0 + 360);
    v4 = *(v0 + 368);
    v6 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
    v7 = *(*(v6 - 8) + 56);
    v7(v3, 1, 1, v6);
    *(v0 + 168) = v1;
    sub_1004BA270(v1);
    swift_errorRetain();
    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    v165 = v1;
    if (swift_dynamicCast())
    {
      v157 = *(v0 + 584);
      v161 = *(v0 + 592);
      v8 = *(v0 + 448);
      v9 = *(v0 + 384);
      v10 = *(v0 + 392);
      v152 = v7;
      v11 = *(v0 + 368);
      v12 = *(v0 + 376);
      v13 = *(v0 + 360);
      v14 = *(v0 + 320);
      v154 = *(v0 + 312);
      sub_100005508(v10, &qword_1009763E0, &qword_1007F95D0);
      sub_100005508(v8, &qword_10097B350, &qword_1007FE758);
      (*(v12 + 56))(v13, 0, 1, v11);
      v15 = v13;
      v2 = v0 + 152;
      sub_1004BA578(v15, v9, _s15EndpointFailureVMa);
      sub_1004BA578(v9, v10, type metadata accessor for SDAirDropDiscoveredEndpoint);
      v152(v10, 0, 1, v6);
      (*(v14 + 32))(v8, v9 + *(v11 + 20), v154);
      v157(v8, 0, 1, v154);
    }

    else
    {
      v21 = *(v0 + 440);
      v22 = *(v0 + 360);
      v23 = *(v0 + 312);
      (*(*(v0 + 376) + 56))(v22, 1, 1, *(v0 + 368));
      sub_100005508(v22, &qword_100980278, &unk_1008060F0);
      *(v0 + 176) = v1;
      swift_errorRetain();
      if (swift_dynamicCast())
      {
        v24 = *(v0 + 592);
        v25 = *(v0 + 584);
        v27 = *(v0 + 440);
        v26 = *(v0 + 448);
        v28 = *(v0 + 352);
        v29 = *(v0 + 312);
        v30 = *(v0 + 320);
        sub_100005508(v26, &qword_10097B350, &qword_1007FE758);
        v25(v27, 0, 1, v29);
        v31 = *(v30 + 32);
        v31(v28, v27, v29);
        v31(v26, v28, v29);
        v25(v26, 0, 1, v29);
      }

      else
      {
        v162 = *(v0 + 680);
        v32 = *(v0 + 592);
        v33 = *(v0 + 584);
        v35 = *(v0 + 440);
        v34 = *(v0 + 448);
        v36 = *(v0 + 432);
        v38 = *(v0 + 312);
        v37 = *(v0 + 320);
        v33(v35, 1, 1, v38);
        sub_100005508(v35, &qword_10097B350, &qword_1007FE758);
        swift_errorRetain();
        CodableError.init(_:)();
        sub_100005508(v34, &qword_10097B350, &qword_1007FE758);
        (*(v37 + 104))(v36, v162, v38);
        v33(v36, 0, 1, v38);
        v2 = v0 + 152;
        sub_10002C4E4(v36, v34, &qword_10097B350, &qword_1007FE758);
      }
    }

    v39 = *(v0 + 424);
    v41 = *(v0 + 312);
    v40 = *(v0 + 320);
    sub_10000FF90(*(v0 + 448), v39, &qword_10097B350, &qword_1007FE758);
    if ((*(v40 + 48))(v39, 1, v41) == 1)
    {
      v42 = *(v0 + 424);
      sub_100005508(*(v0 + 392), &qword_1009763E0, &qword_1007F95D0);
      sub_1004BA280(v165);
      sub_1004BA280(v165);
      sub_100005508(v42, &qword_10097B350, &qword_1007FE758);
      goto LABEL_42;
    }

    v43 = *(v0 + 684);
    v45 = *(v0 + 336);
    v44 = *(v0 + 344);
    v47 = *(v0 + 312);
    v46 = *(v0 + 320);
    (*(v46 + 32))(v44, *(v0 + 424), v47);
    v158 = *(v46 + 16);
    v158(v45, v44, v47);
    v48 = (*(v46 + 88))(v45, v47);
    if (v48 == v43)
    {
      (*(*(v0 + 320) + 8))(*(v0 + 336), *(v0 + 312));
LABEL_15:
      if (qword_100973910 != -1)
      {
        swift_once();
      }

      v49 = *(v0 + 344);
      v50 = *(v0 + 328);
      v51 = *(v0 + 312);
      v52 = type metadata accessor for Logger();
      sub_10000C4AC(v52, qword_1009800F8);
      v158(v50, v49, v51);
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.default.getter();
      v55 = os_log_type_enabled(v53, v54);
      v56 = *(v0 + 320);
      v57 = *(v0 + 328);
      v58 = *(v0 + 312);
      if (v55)
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v167 = v60;
        *v59 = 136315138;
        v149 = SFAirDropSend.Failure.errorDescription.getter();
        v62 = v61;
        v63 = *(v56 + 8);
        v63(v57, v58);
        v64 = sub_10000C4E4(v149, v62, &v167);

        *(v59 + 4) = v64;
        _os_log_impl(&_mh_execute_header, v53, v54, "Fatal Ask failure %s", v59, 0xCu);
        sub_10000C60C(v60);

        v65 = v63;
      }

      else
      {

        v65 = *(v56 + 8);
        v65(v57, v58);
      }

      v73 = v165;
      v74 = *(v0 + 544);
      v75 = *(v0 + 536);
      v76 = *(v0 + 528);
      v77 = *(v0 + 456);
      v78 = *(v0 + 216);
      swift_beginAccess();
      v2 = v0 + 152;
      if (v75(v78 + v76, 1, v77))
      {
        v79 = *(v0 + 392);
        v80 = *(v0 + 320) + 8;
        v65(*(v0 + 344), *(v0 + 312));
        sub_100005508(v79, &qword_1009763E0, &qword_1007F95D0);
        swift_endAccess();
        sub_1004BA280(v165);
        sub_1004BA280(v165);
      }

      else
      {
        v150 = *(v0 + 576);
        v102 = *(v0 + 568);
        v103 = *(v0 + 560);
        v104 = *(v0 + 472);
        v105 = *(v0 + 456);
        v166 = *(v0 + 392);
        v106 = *(v0 + 344);
        v107 = v65;
        v108 = *(v0 + 312);
        v109 = *(v0 + 320) + 8;
        (*(v0 + 552))(v104, *(v0 + 216) + *(v0 + 528), v105);
        swift_endAccess();
        sub_1004BA228(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure);
        swift_allocError();
        v158(v110, v106, v108);
        SFProgressContinuation.fail(with:)();
        sub_1004BA280(v73);
        sub_1004BA280(v73);
        v111 = v105;
        v2 = v0 + 152;
        v102(v104, v111);
        v107(v106, v108);
        sub_100005508(v166, &qword_1009763E0, &qword_1007F95D0);
      }

      v112 = *(v0 + 528);
      v113 = *(v0 + 240);
      v114 = *(v0 + 216);
      (*(*(v0 + 464) + 56))(v113, 1, 1, *(v0 + 456));
      swift_beginAccess();
      sub_1004BA290(v113, v114 + v112);
      swift_endAccess();
      goto LABEL_42;
    }

    if (v48 != *(v0 + 688))
    {
      if (v48 != *(v0 + 692) && v48 != *(v0 + 696))
      {
        if (qword_100973910 != -1)
        {
          swift_once();
        }

        v81 = type metadata accessor for Logger();
        sub_10000C4AC(v81, qword_1009800F8);
        swift_errorRetain();
        v82 = Logger.logObject.getter();
        v83 = static os_log_type_t.default.getter();
        sub_1004BA280(v165);
        if (os_log_type_enabled(v82, v83))
        {
          v84 = swift_slowAlloc();
          v85 = swift_slowAlloc();
          *v84 = 138412290;
          swift_errorRetain();
          v86 = _swift_stdlib_bridgeErrorToNSError();
          *(v84 + 4) = v86;
          *v85 = v86;
          _os_log_impl(&_mh_execute_header, v82, v83, "Ask failed %@ - waiting for other asks if appropriate", v84, 0xCu);
          sub_100005508(v85, &qword_100975400, &qword_1007F65D0);
        }

        v163 = *(v0 + 700);
        v87 = *(v0 + 608);
        v88 = *(v0 + 296);
        v89 = *(v0 + 304);
        v90 = v82;
        v92 = *(v0 + 280);
        v91 = *(v0 + 288);
        v93 = *(v0 + 264);
        v155 = *(v0 + 272);
        v159 = *(v0 + 616);
        v95 = *(v0 + 248);
        v94 = *(v0 + 256);
        v96 = *(v0 + 216);

        static Date.now.getter();
        (*(v91 + 16))(v88, v96 + v87, v92);
        Date.timeIntervalSince(_:)();
        v98 = v97;
        v99 = *(v91 + 8);
        v99(v88, v92);
        v99(v89, v92);
        SFAirDropSend.Request.type.getter();
        (*(v94 + 104))(v93, v163, v95);
        LOBYTE(v99) = static SFAirDrop.TransferType.== infix(_:_:)();
        v100 = *(v94 + 8);
        v100(v93, v95);
        v100(v155, v95);
        if (v99)
        {
          v101 = 120.0;
        }

        else
        {
          v101 = 45.0;
        }

        v2 = v0 + 152;
        if (v98 <= v101)
        {
          v131 = *(v0 + 392);
          v132 = *(v0 + 344);
          v134 = *(v0 + 312);
          v133 = *(v0 + 320);
          sub_1004BA280(v165);
          sub_1004BA280(v165);
          v130 = *(v133 + 8);
          v130(v132, v134);
          sub_100005508(v131, &qword_1009763E0, &qword_1007F95D0);
        }

        else
        {
          v121 = Logger.logObject.getter();
          v122 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v121, v122))
          {
            v123 = swift_slowAlloc();
            *v123 = 0;
            _os_log_impl(&_mh_execute_header, v121, v122, "Ask timed out", v123, 2u);
          }

          v124 = *(v0 + 544);
          v125 = *(v0 + 536);
          v126 = *(v0 + 528);
          v127 = *(v0 + 456);
          v128 = *(v0 + 216);

          swift_beginAccess();
          if (v125(v128 + v126, 1, v127))
          {
            v129 = *(v0 + 392);
            v130 = *(*(v0 + 320) + 8);
            v130(*(v0 + 344), *(v0 + 312));
            sub_100005508(v129, &qword_1009763E0, &qword_1007F95D0);
            swift_endAccess();
            sub_1004BA280(v165);
            sub_1004BA280(v165);
          }

          else
          {
            v151 = *(v0 + 684);
            v135 = *(v0 + 616);
            v156 = *(v0 + 568);
            v160 = *(v0 + 576);
            v136 = *(v0 + 560);
            v137 = *(v0 + 472);
            v138 = *(v0 + 456);
            v164 = *(v0 + 392);
            v153 = *(v0 + 344);
            v140 = *(v0 + 312);
            v139 = *(v0 + 320);
            (*(v0 + 552))(v137, *(v0 + 216) + *(v0 + 528), v138);
            swift_endAccess();
            sub_1004BA228(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure);
            swift_allocError();
            v142 = v141;
            SFAirDropSend.Request.endpointID.getter();
            (*(v139 + 104))(v142, v151, v140);
            SFProgressContinuation.fail(with:)();
            sub_1004BA280(v165);
            sub_1004BA280(v165);
            v143 = v137;
            v2 = v0 + 152;
            v156(v143, v138);
            v130 = *(v139 + 8);
            v130(v153, v140);
            sub_100005508(v164, &qword_1009763E0, &qword_1007F95D0);
          }

          v144 = *(v0 + 528);
          v145 = *(v0 + 240);
          v146 = *(v0 + 216);
          (*(*(v0 + 464) + 56))(v145, 1, 1, *(v0 + 456));
          swift_beginAccess();
          sub_1004BA290(v145, v146 + v144);
          swift_endAccess();
        }

        v147 = *(v0 + 320) + 8;
        v130(*(v0 + 336), *(v0 + 312));
        goto LABEL_42;
      }

      goto LABEL_15;
    }

    if (qword_100973910 != -1)
    {
      swift_once();
    }

    v66 = type metadata accessor for Logger();
    sub_10000C4AC(v66, qword_1009800F8);
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&_mh_execute_header, v67, v68, "Resolve failed - waiting for other asks if appropriate and attempting fallback", v69, 2u);
    }

    v70 = *(v0 + 624);
    v71 = *(v0 + 216);

    *(v0 + 648) = *(v71 + v70);
    sub_100294244();
    *(v0 + 656) = Set.init(minimumCapacity:)();
    if (qword_1009735E0 != -1)
    {
      swift_once();
    }

    v72 = static AirDropActor.shared;

    return _swift_task_switch(sub_1004B4518, v72, 0);
  }
}

uint64_t sub_1004B4518()
{
  v1 = v0[81];
  v2 = v0[27];
  sub_100481560(0, v0[82]);

  return _swift_task_switch(sub_1004B45A0, v2, 0);
}

uint64_t sub_1004B45A0()
{
  v1 = v0[80];
  v2 = v0[49];
  v3 = v0[43];
  v4 = v0[39];
  v5 = v0[40];
  v6 = v0[27];
  sub_1004B61AC(v2);
  sub_1004BA280(v1);
  sub_1004BA280(v1);
  (*(v5 + 8))(v3, v4);
  sub_100005508(v2, &qword_1009763E0, &qword_1007F95D0);
  v7 = v0[75];
  v8 = v0[27];
  v9 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
  v10 = swift_task_alloc();
  v0[79] = v10;
  *v10 = v0;
  v10[1] = sub_1004B3358;
  v11 = v0[52];
  v12 = v0[50];

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 19, v8, v7, v12, v0 + 20);
}

uint64_t sub_1004B46C0()
{
  v2 = *v1;
  v3 = *(*v1 + 664);
  v4 = *v1;
  *(*v1 + 672) = v0;

  v5 = *(v2 + 216);
  if (v0)
  {
    v6 = sub_1004B4D10;
  }

  else
  {
    v6 = sub_1004B47EC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1004B47EC()
{
  v1 = v0[65];
  v2 = v0[63];
  v3 = v0[61];
  v18 = v0[64];
  v19 = v0[62];
  v4 = v0[60];
  v20 = v0[59];
  v21 = v0[55];
  v22 = v0[54];
  v23 = v0[53];
  v26 = v0[52];
  v29 = v0[49];
  v33 = v0[48];
  v36 = v0[45];
  v37 = v0[44];
  v38 = v0[43];
  v40 = v0[42];
  v42 = v0[41];
  v43 = v0[38];
  v44 = v0[37];
  v45 = v0[34];
  v5 = v0[29];
  v47 = v0[33];
  v48 = v0[30];
  v6 = v0[28];
  v7 = v0[25];
  v16 = v0[26];
  v17 = v0[27];
  v8 = v0[23];
  v9 = v0[24];
  sub_100005508(v0[56], &qword_10097B350, &qword_1007FE758);
  (*(v3 + 8))(v2, v4);
  v46 = *(v5 + *(v6 + 48));
  v41 = *v5;
  v39 = *(v5 + 4);
  v10 = sub_10028088C(&qword_10097B320, &qword_100806120);
  v35 = *(v5 + v10[16]);
  v11 = v10[20];
  v12 = (v5 + v10[24]);
  v32 = *v12;
  v30 = *(v12 + 3);
  v31 = *(v12 + 2);
  v34 = *(v5 + v10[28]);
  LOBYTE(v4) = *(v12 + 32);
  v13 = v10[32];
  v27 = *(v12 + 72);
  v28 = *(v12 + 40);
  v24 = *(v12 + 88);
  v25 = *(v12 + 56);
  sub_1004BA578(v5 + v10[12], v9, _s10AskRequestVMa);
  sub_1004BA578(v5 + v11, v7, type metadata accessor for SDAirDropDiscoveredEndpoint);
  sub_10002C4E4(v5 + v13, v16, &qword_10097B1B8, &qword_1007FE4C0);
  sub_1004B603C(v18, v1, v17);

  *(v8 + 4) = v39;
  *v8 = v41;
  *(v8 + 8) = v35;
  *(v8 + 16) = v32;
  *(v8 + 32) = v31;
  *(v8 + 40) = v30;
  *(v8 + 48) = v4;
  *(v8 + 72) = v25;
  *(v8 + 56) = v28;
  *(v8 + 104) = v24;
  *(v8 + 88) = v27;
  *(v8 + 120) = v34;
  *(v8 + 128) = v46;
  v14 = v0[1];

  return v14();
}

uint64_t sub_1004B4B18()
{
  v1 = v0[65];
  v3 = v0[63];
  v2 = v0[64];
  v4 = v0[60];
  v5 = v0[61];
  v6 = v0[56];
  v7 = v0[27];
  (*(v0[51] + 8))(v0[52], v0[50]);
  sub_100005508(v6, &qword_10097B350, &qword_1007FE758);
  (*(v5 + 8))(v3, v4);
  v33 = v0[20];
  sub_1004B603C(v2, v1, v7);
  v8 = v0[65];
  v10 = v0[63];
  v9 = v0[64];
  v11 = v0[62];
  v12 = v0[59];
  v14 = v0[55];
  v13 = v0[56];
  v16 = v0[53];
  v15 = v0[54];
  v17 = v0[52];
  v20 = v0[49];
  v21 = v0[48];
  v22 = v0[45];
  v23 = v0[44];
  v24 = v0[43];
  v25 = v0[42];
  v26 = v0[41];
  v27 = v0[38];
  v28 = v0[37];
  v29 = v0[34];
  v30 = v0[33];
  v31 = v0[30];
  v32 = v0[29];

  v18 = v0[1];

  return v18();
}

uint64_t sub_1004B4D10()
{
  v1 = v0[65];
  v3 = v0[63];
  v2 = v0[64];
  v4 = v0[60];
  v5 = v0[61];
  v6 = v0[27];
  sub_100005508(v0[56], &qword_10097B350, &qword_1007FE758);
  (*(v5 + 8))(v3, v4);
  sub_1004B603C(v2, v1, v6);
  v32 = v0[84];
  v7 = v0[65];
  v9 = v0[63];
  v8 = v0[64];
  v10 = v0[62];
  v11 = v0[59];
  v13 = v0[55];
  v12 = v0[56];
  v15 = v0[53];
  v14 = v0[54];
  v16 = v0[52];
  v19 = v0[49];
  v20 = v0[48];
  v21 = v0[45];
  v22 = v0[44];
  v23 = v0[43];
  v24 = v0[42];
  v25 = v0[41];
  v26 = v0[38];
  v27 = v0[37];
  v28 = v0[34];
  v29 = v0[33];
  v30 = v0[30];
  v31 = v0[29];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1004B4EEC()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_1009800F8);
  v1 = sub_10000C4AC(v0, qword_1009800F8);
  if (qword_1009736E0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004B4FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return _swift_task_switch(sub_1004B4FD8, 0, 0);
}

uint64_t sub_1004B4FD8()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_1004B509C, Strong, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_1004B509C()
{
  v1 = *(v0 + 64);
  sub_1004B510C(*(v0 + 56));

  return _swift_task_switch(sub_1002F9710, 0, 0);
}

uint64_t sub_1004B510C(uint64_t a1)
{
  v2 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15[-v7];
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  swift_weakInit();
  sub_1004BA418(a1, &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for SDAirDropDiscoveredEndpoint);
  v11 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v10;
  sub_1004BA578(&v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v12 + v11, type metadata accessor for SDAirDropDiscoveredEndpoint);
  v13 = sub_1002B3098(0, 0, v8, &unk_100806188, v12);
  swift_beginAccess();

  sub_10046F2E0(&v16, v13);
  swift_endAccess();
}

uint64_t sub_1004B5350(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v56 = a5;
  v57 = a6;
  v54 = a3;
  v55 = a4;
  v53 = a2;
  v7 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v52 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v45 - v11;
  v13 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v50 = *(v13 - 8);
  v14 = *(v50 + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v48 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v16;
  __chkstk_darwin(v15);
  v47 = &v45 - v17;
  v18 = *a1;
  v19 = *a1 + 56;
  v20 = 1 << *(*a1 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(*a1 + 56);
  v23 = (v20 + 63) >> 6;
  v58 = v18;

  v25 = 0;
  v45 = v23;
  v46 = v19;
  v51 = v12;
  v26 = v53;
  while (v22)
  {
    v27 = v12;
LABEL_11:
    v29 = v50;
    v30 = v47;
    sub_1004BA418(*(v58 + 48) + *(v50 + 72) * (__clz(__rbit64(v22)) | (v25 << 6)), v47, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v31 = type metadata accessor for TaskPriority();
    v32 = *(v31 - 8);
    (*(v32 + 56))(v27, 1, 1, v31);
    v33 = v30;
    v34 = v48;
    sub_1004BA578(v33, v48, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v35 = (*(v29 + 80) + 40) & ~*(v29 + 80);
    v36 = swift_allocObject();
    v36[2] = 0;
    v36[3] = 0;
    v36[4] = v26;
    sub_1004BA578(v34, v36 + v35, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v37 = v52;
    sub_10000FF90(v27, v52, &qword_100976160, &qword_1007F8770);
    v38 = (*(v32 + 48))(v37, 1, v31);

    if (v38 == 1)
    {
      sub_100005508(v37, &qword_100976160, &qword_1007F8770);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v32 + 8))(v37, v31);
    }

    v39 = v36[2];
    v40 = v36[3];
    swift_unknownObjectRetain();

    v12 = v51;
    if (v39)
    {
      swift_getObjectType();
      v41 = dispatch thunk of Actor.unownedExecutor.getter();
      v43 = v42;
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = 0;
      v43 = 0;
    }

    sub_100005508(v12, &qword_100976160, &qword_1007F8770);
    v44 = swift_allocObject();
    *(v44 + 16) = v56;
    *(v44 + 24) = v36;
    sub_10028088C(&qword_100976168, &qword_1007F92F0);
    if (v43 | v41)
    {
      v59 = 0;
      v60 = 0;
      v61 = v41;
      v62 = v43;
    }

    v23 = v45;
    v22 &= v22 - 1;
    swift_task_create();

    v19 = v46;
  }

  while (1)
  {
    v28 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v28 >= v23)
    {
    }

    v22 = *(v19 + 8 * v28);
    ++v25;
    if (v22)
    {
      v27 = v12;
      v25 = v28;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1004B57B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return _swift_task_switch(sub_1004B57D8, 0, 0);
}

uint64_t sub_1004B57D8()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_1004B589C, Strong, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_1004B589C()
{
  v1 = *(v0 + 64);
  sub_1004B590C(*(v0 + 56));

  return _swift_task_switch(sub_1002F7F9C, 0, 0);
}

void sub_1004B590C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v59 - v6;
  v8 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v64 = *(v16 - 8);
  v17 = *(v64 + 64);
  v18 = __chkstk_darwin(v16);
  v65 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v18);
  v21 = &v59 - v20;
  __chkstk_darwin(v19);
  v23 = &v59 - v22;
  sub_1004BA418(a1, &v59 - v22, type metadata accessor for SDAirDropDiscoveredEndpoint);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v29 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
    }

    else
    {
      v29 = type metadata accessor for SDAirDropDiscoveredEndpoint;
    }

    v45 = v29;
    v46 = v23;
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload)
  {
    sub_1004BA578(v23, v11, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    v30 = &v11[*(v8 + 28)];
    v26 = *v30;
    v28 = v30[1];

    sub_1004BA5E0(v11, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    if (!v28)
    {
      return;
    }

    goto LABEL_9;
  }

  sub_1004BA578(v23, v15, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
  if (!NWEndpoint.nw.getter())
  {
    __break(1u);
    return;
  }

  device_id = nw_endpoint_get_device_id();
  swift_unknownObjectRelease();
  if (!device_id)
  {
    v45 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
    v46 = v15;
LABEL_15:
    sub_1004BA5E0(v46, v45);
    return;
  }

  v26 = String.init(cString:)();
  v28 = v27;
  sub_1004BA5E0(v15, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
LABEL_9:
  if (qword_100973910 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  v32 = sub_10000C4AC(v31, qword_1009800F8);
  sub_1004BA418(a1, v21, type metadata accessor for SDAirDropDiscoveredEndpoint);
  v62 = v32;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  v35 = os_log_type_enabled(v33, v34);
  v63 = a1;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v61 = v28;
    v37 = v36;
    v38 = swift_slowAlloc();
    v67 = v38;
    *v37 = 136315138;
    v39 = sub_10032DA30(v38);
    v60 = v26;
    v40 = v7;
    v41 = v2;
    v43 = v42;
    sub_1004BA5E0(v21, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v44 = sub_10000C4E4(v39, v43, &v67);
    v2 = v41;
    v7 = v40;
    v26 = v60;

    *(v37 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v33, v34, "Checking if backup Ask needed for %s", v37, 0xCu);
    sub_10000C60C(v38);

    v28 = v61;
  }

  else
  {

    sub_1004BA5E0(v21, type metadata accessor for SDAirDropDiscoveredEndpoint);
  }

  v47 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_needsFallbackDeviceIDs;
  swift_beginAccess();
  v48 = *(v2 + v47);

  v49 = sub_100569230(v26, v28, v48);

  if (v49)
  {
    swift_beginAccess();
    sub_10036DB18(v26, v28);
    swift_endAccess();

    v50 = type metadata accessor for TaskPriority();
    (*(*(v50 - 8) + 56))(v7, 1, 1, v50);
    v51 = swift_allocObject();
    swift_weakInit();
    v52 = v65;
    sub_1004BA418(v63, v65, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v53 = (*(v64 + 80) + 40) & ~*(v64 + 80);
    v54 = swift_allocObject();
    v54[2] = 0;
    v54[3] = 0;
    v54[4] = v51;
    sub_1004BA578(v52, v54 + v53, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v55 = sub_1002B3098(0, 0, v7, &unk_100806160, v54);
    swift_beginAccess();

    sub_10046F2E0(&v66, v55);
    swift_endAccess();
  }

  else
  {

    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v56, v57, "Fallback not needed", v58, 2u);
    }
  }
}

uint64_t sub_1004B603C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AnyCancellable.cancel()();
  AnyCancellable.cancel()();
  v4 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_askTasks;
  swift_beginAccess();
  v5 = *(a3 + v4);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 56);
  v9 = (v6 + 63) >> 6;
  v10 = *(a3 + v4);
  result = swift_bridgeObjectRetain_n();
  for (i = 0; v8; result = )
  {
    v13 = i;
LABEL_9:
    v14 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v15 = *(*(v5 + 48) + ((v13 << 9) | (8 * v14)));

    Task.cancel()();
  }

  while (1)
  {
    v13 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v13 >= v9)
    {

      v16 = *(a3 + v4);
      *(a3 + v4) = &_swiftEmptySetSingleton;
    }

    v8 = *(v5 + 56 + 8 * v13);
    ++i;
    if (v8)
    {
      i = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_1004B61AC(uint64_t a1)
{
  v2 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v61 = &v57 - v4;
  v5 = type metadata accessor for UUID();
  v64 = *(v5 - 8);
  v65 = v5;
  v6 = *(v64 + 8);
  v7 = __chkstk_darwin(v5);
  v58 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v63 = &v57 - v9;
  v10 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0);
  v59 = *(v10 - 8);
  v11 = *(v59 + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v60 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v57 - v13;
  v15 = sub_10028088C(&qword_1009763E0, &qword_1007F95D0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v57 - v17;
  v19 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v24 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v57 - v25;
  sub_10000FF90(a1, v18, &qword_1009763E0, &qword_1007F95D0);
  if ((*(v20 + 48))(v18, 1, v19) != 1)
  {
    sub_1004BA578(v18, v26, type metadata accessor for SDAirDropDiscoveredEndpoint);
    sub_1004BA418(v26, v24, type metadata accessor for SDAirDropDiscoveredEndpoint);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1004BA5E0(v24, type metadata accessor for SDAirDropDiscoveredEndpoint);
      if (qword_100973910 != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      sub_10000C4AC(v31, qword_1009800F8);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v32, v33, "We only handle Application Service endpoints for fallbacks", v34, 2u);
      }
    }

    else
    {
      v35 = v24;
      v36 = v14;
      sub_1004BA578(v35, v14, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      v37 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_failedResolveEndpointIDs;
      v38 = v62;
      swift_beginAccess();
      v39 = *(v38 + v37);

      v40 = v63;
      sub_10032C0AC();
      v41 = sub_100569018(v40, v39);

      v42 = v65;
      v43 = *(v64 + 1);
      v43(v40, v65);
      if ((v41 & 1) == 0)
      {
        v64 = v26;
        v49 = v58;
        sub_10032C0AC();
        swift_beginAccess();
        sub_10046E0A4(v40, v49);
        swift_endAccess();
        v43(v40, v42);
        v50 = type metadata accessor for TaskPriority();
        v51 = v61;
        (*(*(v50 - 8) + 56))(v61, 1, 1, v50);
        v52 = swift_allocObject();
        swift_weakInit();
        v53 = v60;
        sub_1004BA418(v36, v60, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
        v54 = (*(v59 + 80) + 40) & ~*(v59 + 80);
        v55 = swift_allocObject();
        v55[2] = 0;
        v55[3] = 0;
        v55[4] = v52;
        sub_1004BA578(v53, v55 + v54, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
        v56 = sub_1002B3098(0, 0, v51, &unk_100806130, v55);
        swift_beginAccess();

        sub_10046F2E0(&v66, v56);
        swift_endAccess();

        sub_1004BA5E0(v36, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
        v48 = v64;
        goto LABEL_20;
      }

      if (qword_100973910 != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      sub_10000C4AC(v44, qword_1009800F8);
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&_mh_execute_header, v45, v46, "We only attempt a fallback once per endpoint, for each send", v47, 2u);
      }

      sub_1004BA5E0(v36, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
    }

    v48 = v26;
LABEL_20:
    sub_1004BA5E0(v48, type metadata accessor for SDAirDropDiscoveredEndpoint);
    return;
  }

  sub_100005508(v18, &qword_1009763E0, &qword_1007F95D0);
  if (qword_100973910 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_10000C4AC(v27, qword_1009800F8);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "No endpoint provided from failure, skipping fallback", v30, 2u);
  }
}

uint64_t sub_1004B69F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v6 = sub_10028088C(&qword_10097B340, &qword_100806090);
  v5[11] = v6;
  v7 = *(v6 - 8);
  v5[12] = v7;
  v8 = *(v7 + 64) + 15;
  v5[13] = swift_task_alloc();

  return _swift_task_switch(sub_1004B6AC4, 0, 0);
}

uint64_t sub_1004B6AC4()
{
  v1 = v0[9];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[14] = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_1004B6B84, Strong, 0);
  }

  else
  {
    v3 = v0[13];

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1004B6B84()
{
  v1 = v0[14];
  if (sub_1004B6F88(v0[10]))
  {
    v2 = swift_task_alloc();
    v0[15] = v2;
    *v2 = v0;
    v2[1] = sub_1004B6CE0;
    v3 = v0[14];
    v4 = v0[10];

    return sub_1004B751C(v4);
  }

  else
  {
    v6 = v0[14];
    v7 = v0[11];
    v8 = v0[12];
    v9 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_askContinuation;
    swift_beginAccess();
    if ((*(v8 + 48))(v6 + v9, 1, v7))
    {
      v10 = sub_1004BAC78;
    }

    else
    {
      (*(v0[12] + 16))(v0[13], v6 + v9, v0[11]);
      v10 = sub_1004B6E44;
    }

    return _swift_task_switch(v10, 0, 0);
  }
}

uint64_t sub_1004B6CE0()
{
  v1 = *(*v0 + 120);
  v3 = *v0;

  return _swift_task_switch(sub_1004B6DDC, 0, 0);
}

uint64_t sub_1004B6DDC()
{
  v1 = v0[14];

  v2 = v0[13];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1004B6E44()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v5 = type metadata accessor for SFAirDropSend.Failure();
  sub_1004BA228(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure);
  v6 = swift_allocError();
  (*(*(v5 - 8) + 104))(v7, enum case for SFAirDropSend.Failure.badRequest(_:), v5);
  v0[8] = v6;
  SFProgressContinuation.yield(_:)();

  (*(v4 + 8))(v1, v3);
  v8 = v0[13];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1004B6F88(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = v46 - v10;
  __chkstk_darwin(v9);
  v13 = v46 - v12;
  v14 = *sub_10002CDC0((v1 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_runner), *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_runner + 24));
  v15 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine6Runner_sendConnections;
  swift_beginAccess();
  v16 = *(v14 + v15);
  v48 = a1;

  sub_100390318(sub_1004BAC58, v47, v16);
  v18 = v17;

  sub_10032E82C();
  if (!v19)
  {
    goto LABEL_9;
  }

  v20 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_needsFallbackDeviceIDs;
  swift_beginAccess();
  v46[1] = v20;
  v21 = *(v2 + v20);

  result = sub_10032E82C();
  if (!v23)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    return result;
  }

  v24 = sub_100569230(result, v23, v21);

  if (v24)
  {
    sub_1004BA418(a1, v13, type metadata accessor for SDAirDropDiscoveredEndpoint);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1004BA5E0(v13, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
      if (qword_100973910 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_10000C4AC(v25, qword_1009800F8);
      sub_1004BA418(a1, v11, type metadata accessor for SDAirDropDiscoveredEndpoint);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v49[0] = v29;
        *v28 = 136315138;
        v30 = sub_10032DA30(v29);
        v32 = v31;
        sub_1004BA5E0(v11, type metadata accessor for SDAirDropDiscoveredEndpoint);
        v33 = sub_10000C4E4(v30, v32, v49);

        *(v28 + 4) = v33;
        _os_log_impl(&_mh_execute_header, v26, v27, "Running fallback Ask for endpoint %s", v28, 0xCu);
        sub_10000C60C(v29);
      }

      else
      {

        sub_1004BA5E0(v11, type metadata accessor for SDAirDropDiscoveredEndpoint);
      }

      result = sub_10032E82C();
      if (v43)
      {
        v44 = result;
        v45 = v43;
        swift_beginAccess();
        sub_10036DB18(v44, v45);
        swift_endAccess();

        return 1;
      }

      goto LABEL_23;
    }

    sub_1004BA5E0(v13, type metadata accessor for SDAirDropDiscoveredEndpoint);
    if ((v18 & 1) == 0)
    {
      return 1;
    }
  }

  else
  {
LABEL_9:
    if ((v18 & 1) == 0)
    {
      return 1;
    }
  }

  if (qword_100973910 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_10000C4AC(v34, qword_1009800F8);
  sub_1004BA418(a1, v8, type metadata accessor for SDAirDropDiscoveredEndpoint);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v49[0] = v38;
    *v37 = 136315138;
    v39 = sub_10032DA30(v38);
    v41 = v40;
    sub_1004BA5E0(v8, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v42 = sub_10000C4E4(v39, v41, v49);

    *(v37 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v35, v36, "Endpoint already exists in runner endpoints, ignoring %s", v37, 0xCu);
    sub_10000C60C(v38);
  }

  else
  {

    sub_1004BA5E0(v8, type metadata accessor for SDAirDropDiscoveredEndpoint);
  }

  return 0;
}

uint64_t sub_1004B751C(uint64_t a1)
{
  v2[60] = a1;
  v2[61] = v1;
  v3 = *(*(sub_10028088C(&qword_10097B338, &unk_1007FE730) - 8) + 64) + 15;
  v2[62] = swift_task_alloc();
  v4 = sub_10028088C(&qword_10097B348, &qword_1007FE748);
  v2[63] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[64] = swift_task_alloc();
  v6 = sub_10028088C(&qword_10097B340, &qword_100806090);
  v2[65] = v6;
  v7 = *(v6 - 8);
  v2[66] = v7;
  v8 = *(v7 + 64) + 15;
  v2[67] = swift_task_alloc();
  v9 = sub_10028088C(&qword_10097B320, &qword_100806120);
  v2[68] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v2[69] = swift_task_alloc();
  v2[70] = swift_task_alloc();
  v2[71] = swift_task_alloc();
  v2[72] = swift_task_alloc();

  return _swift_task_switch(sub_1004B76BC, v1, 0);
}

uint64_t sub_1004B76BC()
{
  v1 = v0[61];
  sub_1002A9938(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_runner, (v0 + 45));
  v2 = sub_10002CDC0(v0 + 45, v0[48]);
  v3 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_sendRequest;
  if (SFAirDropSend.Request.supportsPipelining.getter() & 1) != 0 && (v4 = v0[60], (sub_10032ED50()) && *(v0[61] + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_pipelinedUploadAvailable) == 1 && (v5 = v0[60], (sub_10032F010()))
  {
    *(v0[61] + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_pipelinedUploadAvailable) = 0;
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = v0[72];
  v8 = v0[68];
  v9 = v8[12];
  v10 = v8[20];
  v11 = v8[32];
  v12 = *v2;
  v13 = swift_task_alloc();
  v0[73] = v13;
  *v13 = v0;
  v13[1] = sub_1004B7824;
  v14 = v0[60];

  return sub_1003B1C7C((v0 + 2), v7 + v9, v7 + v10, v7 + v11, v14, v6, v1 + v3);
}

uint64_t sub_1004B7824()
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 584);
  v5 = *v1;
  v3[74] = v0;
  v6 = *(v3 + 4);
  *(v3 + 604) = *(v3 + 20);
  *(v3 + 150) = v6;
  v3[76] = v2[3];
  v3[77] = v2[4];
  *(v3 + 39) = *(v3 + 5);
  v3[80] = v2[7];
  *(v3 + 740) = *(v3 + 64);
  *(v3 + 81) = *(v3 + 9);
  *(v3 + 83) = *(v3 + 11);
  *(v3 + 85) = *(v3 + 13);
  *(v3 + 87) = *(v3 + 15);
  v3[89] = v2[17];
  v3[90] = v2[18];

  if (v0)
  {
    v7 = v3[61];
    v8 = sub_1004B7FF4;
  }

  else
  {
    v9 = v3[68];
    v7 = v3[61];
    *(v3 + 182) = v9[16];
    *(v3 + 183) = v9[24];
    *(v3 + 184) = v9[28];
    v8 = sub_1004B7A28;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1004B7A28()
{
  v1 = *(v0 + 736);
  v2 = *(v0 + 728);
  v3 = *(v0 + 712);
  v4 = *(v0 + 740);
  v5 = *(v0 + 640);
  v6 = *(v0 + 632);
  v7 = *(v0 + 616);
  v8 = *(v0 + 608);
  v9 = *(v0 + 600);
  v10 = *(v0 + 576);
  v11 = *(v0 + 568);
  v12 = *(v0 + 560);
  v13 = *(v0 + 544);
  v14 = *(v0 + 528);
  v81 = *(v0 + 520);
  v15 = *(v0 + 488);
  v16 = v10 + *(v0 + 732);
  v17 = *(v0 + 648);
  v18 = *(v0 + 664);
  v19 = *(v0 + 680);
  v20 = *(v0 + 696);
  *(v10 + 4) = *(v0 + 604);
  *v10 = v9;
  *(v10 + v2) = v8;
  *v16 = v7;
  *(v16 + 16) = v6;
  *(v16 + 24) = v5;
  *(v16 + 32) = v4;
  *(v16 + 40) = v17;
  *(v16 + 56) = v18;
  *(v16 + 72) = v19;
  *(v16 + 88) = v20;
  *(v10 + v1) = v3;
  sub_10000C60C((v0 + 360));
  sub_10000FF90(v10, v11, &qword_10097B320, &qword_100806120);
  v21 = *v11;
  v22 = *(v11 + 4);
  v23 = v13[12];
  v24 = *(v11 + v13[16]);
  v25 = v13[20];
  v26 = v11 + v13[24];
  v28 = *(v26 + 48);
  v27 = *(v26 + 64);
  v29 = *(v26 + 96);
  *(v0 + 232) = *(v26 + 80);
  *(v0 + 248) = v29;
  *(v0 + 200) = v28;
  v31 = *(v26 + 16);
  v30 = *(v26 + 32);
  *(v0 + 152) = *v26;
  *(v0 + 168) = v31;
  *(v0 + 184) = v30;
  *(v0 + 216) = v27;
  v32 = *(v11 + v13[28]);
  v33 = v13[32];
  *(v12 + 4) = v22;
  *v12 = v21;
  v85 = v23;
  sub_1004BA418(v11 + v23, v12 + v13[12], _s10AskRequestVMa);
  *(v12 + v13[16]) = v24;
  v84 = v25;
  sub_1004BA418(v11 + v25, v12 + v13[20], type metadata accessor for SDAirDropDiscoveredEndpoint);
  v34 = v12 + v13[24];
  v35 = *(v0 + 248);
  v36 = *(v0 + 232);
  v37 = *(v0 + 216);
  *(v34 + 48) = *(v0 + 200);
  *(v34 + 64) = v37;
  *(v34 + 80) = v36;
  *(v34 + 96) = v35;
  v38 = *(v0 + 184);
  v39 = *(v0 + 168);
  *v34 = *(v0 + 152);
  *(v34 + 16) = v39;
  *(v34 + 32) = v38;
  *(v12 + v13[28]) = v32;
  v40 = v13[32];
  v41 = v33;
  sub_10000FF90(v11 + v33, v12 + v40, &qword_10097B1B8, &qword_1007FE4C0);
  v42 = v24;
  sub_1003C34C8(v0 + 152, v0 + 256);
  v43 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_askContinuation;
  swift_beginAccess();
  if ((*(v14 + 48))(v15 + v43, 1, v81))
  {
    sub_100005508(*(v0 + 560), &qword_10097B320, &qword_100806120);
    swift_endAccess();
    sub_10030D74C(v0 + 152);
  }

  else
  {
    v44 = *(v0 + 560);
    v76 = *(v0 + 720);
    v77 = v44;
    v45 = *(v0 + 552);
    v78 = v42;
    v46 = *(v0 + 544);
    v79 = *(v0 + 528);
    v80 = v41;
    v47 = *(v0 + 520);
    v74 = v47;
    v75 = *(v0 + 536);
    v48 = *(v0 + 512);
    v82 = *(v0 + 504);
    (*(v79 + 16))();
    swift_endAccess();
    sub_10000FF90(v44, v45, &qword_10097B320, &qword_100806120);
    v49 = *v45;
    v50 = v46[12];
    v51 = v46[16];
    v71 = *(v45 + v51);
    v52 = v46[20];
    v53 = v46[24];
    v90 = *(v45 + v53 + 64);
    v91 = *(v45 + v53 + 80);
    v92 = *(v45 + v53 + 96);
    v86 = *(v45 + v53);
    v87 = *(v45 + v53 + 16);
    v54 = v46[28];
    v88 = *(v45 + v53 + 32);
    v89 = *(v45 + v53 + 48);
    v55 = v46[32];
    v72 = *(v45 + v54);
    v73 = *(v82 + 48);
    v83 = v15;
    v56 = v48 + v53;
    *(v48 + 4) = *(v45 + 4);
    *v48 = v49;
    sub_1004BA578(v45 + v50, v48 + v50, _s10AskRequestVMa);
    *(v48 + v51) = v71;
    sub_1004BA578(v45 + v52, v48 + v52, type metadata accessor for SDAirDropDiscoveredEndpoint);
    *(v56 + 64) = v90;
    *(v56 + 80) = v91;
    *(v56 + 96) = v92;
    *v56 = v86;
    *(v56 + 16) = v87;
    *(v56 + 32) = v88;
    *(v56 + 48) = v89;
    v15 = v83;
    *(v48 + v54) = v72;
    sub_10002C4E4(v45 + v55, v48 + v55, &qword_10097B1B8, &qword_1007FE4C0);
    *(v48 + v73) = v76;
    v57 = v76;
    SFProgressContinuation.finish(with:)();
    sub_10030D74C(v0 + 152);

    v58 = v48;
    v41 = v80;
    sub_100005508(v58, &qword_10097B348, &qword_1007FE748);
    (*(v79 + 8))(v75, v74);
    sub_100005508(v77, &qword_10097B320, &qword_100806120);
  }

  v59 = *(v0 + 720);
  v60 = *(v0 + 576);
  v61 = *(v0 + 496);
  (*(*(v0 + 528) + 56))(v61, 1, 1, *(v0 + 520));
  swift_beginAccess();
  sub_1004BA290(v61, v15 + v43);
  swift_endAccess();
  sub_100005508(v11 + v41, &qword_10097B1B8, &qword_1007FE4C0);
  sub_1004BA5E0(v11 + v84, type metadata accessor for SDAirDropDiscoveredEndpoint);
  sub_1004BA5E0(v11 + v85, _s10AskRequestVMa);

  sub_100005508(v60, &qword_10097B320, &qword_100806120);
  v62 = *(v0 + 576);
  v63 = *(v0 + 568);
  v64 = *(v0 + 560);
  v65 = *(v0 + 552);
  v66 = *(v0 + 536);
  v67 = *(v0 + 512);
  v68 = *(v0 + 496);

  v69 = *(v0 + 8);

  return v69();
}

uint64_t sub_1004B7FF4()
{
  v1 = v0[66];
  v2 = v0[65];
  v3 = v0[61];
  sub_10000C60C(v0 + 45);
  v4 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_askContinuation;
  swift_beginAccess();
  if ((*(v1 + 48))(v3 + v4, 1, v2))
  {
    v5 = v0[74];
  }

  else
  {
    v6 = v0[74];
    v7 = v0[67];
    v8 = v0[66];
    v9 = v0[65];
    (*(v8 + 16))(v7, v3 + v4, v9);
    v0[59] = v6;
    SFProgressContinuation.yield(_:)();

    (*(v8 + 8))(v7, v9);
  }

  v10 = v0[72];
  v11 = v0[71];
  v12 = v0[70];
  v13 = v0[69];
  v14 = v0[67];
  v15 = v0[64];
  v16 = v0[62];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1004B8168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = *(*(type metadata accessor for SDAirDropDiscoveredEndpoint(0) - 8) + 64) + 15;
  v5[7] = swift_task_alloc();

  return _swift_task_switch(sub_1004B81F8, 0, 0);
}

uint64_t sub_1004B81F8()
{
  v22 = v0;
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    if (qword_100973910 != -1)
    {
      swift_once();
    }

    v4 = v0[6];
    v3 = v0[7];
    v5 = type metadata accessor for Logger();
    sub_10000C4AC(v5, qword_1009800F8);
    sub_1004BA418(v4, v3, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[7];
    if (v8)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v21 = v11;
      *v10 = 136315138;
      v12 = sub_10032DA30(v11);
      v14 = v13;
      sub_1004BA5E0(v9, type metadata accessor for SDAirDropDiscoveredEndpoint);
      v15 = sub_10000C4E4(v12, v14, &v21);

      *(v10 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v6, v7, "Sending backup Ask to new endpoint: %s", v10, 0xCu);
      sub_10000C60C(v11);
    }

    else
    {

      sub_1004BA5E0(v9, type metadata accessor for SDAirDropDiscoveredEndpoint);
    }

    v19 = swift_task_alloc();
    v0[9] = v19;
    *v19 = v0;
    v19[1] = sub_1004B84A4;
    v20 = v0[6];

    return sub_1004B751C(v20);
  }

  else
  {
    v16 = v0[7];

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_1004B84A4()
{
  v1 = *(*v0 + 72);
  v3 = *v0;

  return _swift_task_switch(sub_1004B85A0, 0, 0);
}

uint64_t sub_1004B85A0()
{
  v1 = v0[8];

  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1004B8608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v6 = sub_10028088C(&qword_10097B340, &qword_100806090);
  v5[12] = v6;
  v7 = *(v6 - 8);
  v5[13] = v7;
  v8 = *(v7 + 64) + 15;
  v5[14] = swift_task_alloc();
  v9 = type metadata accessor for ContinuousClock();
  v5[15] = v9;
  v10 = *(v9 - 8);
  v5[16] = v10;
  v11 = *(v10 + 64) + 15;
  v5[17] = swift_task_alloc();
  v12 = type metadata accessor for SFAirDrop.TransferType();
  v5[18] = v12;
  v13 = *(v12 - 8);
  v5[19] = v13;
  v14 = *(v13 + 64) + 15;
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v15 = *(*(sub_10028088C(&qword_1009763E0, &qword_1007F95D0) - 8) + 64) + 15;
  v5[22] = swift_task_alloc();
  v16 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v5[23] = v16;
  v17 = *(v16 - 8);
  v5[24] = v17;
  v18 = *(v17 + 64) + 15;
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();

  return _swift_task_switch(sub_1004B8838, 0, 0);
}

uint64_t sub_1004B8838()
{
  v1 = v0[10];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[27] = Strong;
  if (Strong)
  {
    v0[28] = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_runner;

    return _swift_task_switch(sub_1004B895C, Strong, 0);
  }

  else
  {
    v4 = v0[25];
    v3 = v0[26];
    v6 = v0[21];
    v5 = v0[22];
    v7 = v0[20];
    v8 = v0[17];
    v9 = v0[14];

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_1004B895C()
{
  v1 = (v0[27] + v0[28]);
  v2 = v1[3];
  v0[29] = v2;
  sub_10002CDC0(v1, v2);
  v3 = *(v2 - 8);
  v4 = v3;
  v0[30] = v3;
  v5 = *(v3 + 64) + 15;
  v0[31] = swift_task_alloc();
  (*(v4 + 16))();

  return _swift_task_switch(sub_1004B8A50, 0, 0);
}

uint64_t sub_1004B8A50()
{
  v47 = v0;
  v1 = v0[31];
  v2 = v0[29];
  v3 = v0[23];
  v4 = v0[24];
  v5 = v0[22];
  v6 = v0[11];
  v7 = *(*v1 + OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_backupEndpoints);
  v8 = *(v0[30] + 8);

  v8(v1, v2);
  CurrentValueSubject.value.getter();

  v9 = v0[8];
  *(swift_task_alloc() + 16) = v6;
  sub_1002CC594(sub_1004BA3F8, v9, v5);

  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    v10 = v0[11];
    sub_100005508(v0[22], &qword_1009763E0, &qword_1007F95D0);
    result = NWEndpoint.nw.getter();
    if (result)
    {
      device_id = nw_endpoint_get_device_id();
      swift_unknownObjectRelease();
      if (device_id)
      {
        v13 = String.init(cString:)();
        v15 = v14;
        v0[32] = v14;
        v16 = swift_task_alloc();
        v0[33] = v16;
        *v16 = v0;
        v16[1] = sub_1004B8FA8;
        v17 = v0[27];

        return sub_1004B9924(v13, v15);
      }

      else
      {
        v35 = v0[20];
        v34 = v0[21];
        v36 = v0[18];
        v37 = v0[19];
        v38 = v0[17];
        v39 = v0[27] + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_sendRequest;
        SFAirDropSend.Request.type.getter();
        (*(v37 + 104))(v35, enum case for SFAirDrop.TransferType.peerPayment(_:), v36);
        v40 = static SFAirDrop.TransferType.== infix(_:_:)();
        v41 = *(v37 + 8);
        v41(v35, v36);
        v41(v34, v36);
        if (v40)
        {
          v42 = 0x8155A43676E00000;
        }

        else
        {
          v42 = 0x70801D946C940000;
        }

        if (v40)
        {
          v43 = 6;
        }

        else
        {
          v43 = 2;
        }

        static Clock<>.continuous.getter();
        v44 = swift_task_alloc();
        v0[35] = v44;
        *v44 = v0;
        v44[1] = sub_1004B941C;
        v45 = v0[17];

        return sub_10002ED10(v42, v43, 0, 0, 1);
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_1004BA578(v0[22], v0[26], type metadata accessor for SDAirDropDiscoveredEndpoint);
    if (qword_100973910 != -1)
    {
      swift_once();
    }

    v18 = v0[25];
    v19 = v0[26];
    v20 = type metadata accessor for Logger();
    sub_10000C4AC(v20, qword_1009800F8);
    sub_1004BA418(v19, v18, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    v23 = os_log_type_enabled(v21, v22);
    v24 = v0[25];
    if (v23)
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v46 = v26;
      *v25 = 136315138;
      v27 = sub_10032DA30(v26);
      v29 = v28;
      sub_1004BA5E0(v24, type metadata accessor for SDAirDropDiscoveredEndpoint);
      v30 = sub_10000C4E4(v27, v29, &v46);

      *(v25 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v21, v22, "Sending backup Ask to existing backup endpoint: %s", v25, 0xCu);
      sub_10000C60C(v26);
    }

    else
    {

      sub_1004BA5E0(v24, type metadata accessor for SDAirDropDiscoveredEndpoint);
    }

    v31 = swift_task_alloc();
    v0[34] = v31;
    *v31 = v0;
    v31[1] = sub_1004B924C;
    v32 = v0[26];
    v33 = v0[27];

    return sub_1004B751C(v32);
  }

  return result;
}

uint64_t sub_1004B8FA8()
{
  v1 = *(*v0 + 264);
  v2 = *(*v0 + 256);
  v4 = *v0;

  return _swift_task_switch(sub_1004B90C0, 0, 0);
}

uint64_t sub_1004B90C0()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[18];
  v4 = v0[19];
  v5 = v0[17];
  v6 = v0[27] + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_sendRequest;
  SFAirDropSend.Request.type.getter();
  (*(v4 + 104))(v2, enum case for SFAirDrop.TransferType.peerPayment(_:), v3);
  v7 = static SFAirDrop.TransferType.== infix(_:_:)();
  v8 = *(v4 + 8);
  v8(v2, v3);
  v8(v1, v3);
  if (v7)
  {
    v9 = 0x8155A43676E00000;
  }

  else
  {
    v9 = 0x70801D946C940000;
  }

  if (v7)
  {
    v10 = 6;
  }

  else
  {
    v10 = 2;
  }

  static Clock<>.continuous.getter();
  v11 = swift_task_alloc();
  v0[35] = v11;
  *v11 = v0;
  v11[1] = sub_1004B941C;
  v12 = v0[17];

  return sub_10002ED10(v9, v10, 0, 0, 1);
}

uint64_t sub_1004B924C()
{
  v1 = *(*v0 + 272);
  v3 = *v0;

  return _swift_task_switch(sub_1004B9348, 0, 0);
}

uint64_t sub_1004B9348()
{
  v2 = v0[26];
  v1 = v0[27];

  sub_1004BA5E0(v2, type metadata accessor for SDAirDropDiscoveredEndpoint);
  v4 = v0[25];
  v3 = v0[26];
  v6 = v0[21];
  v5 = v0[22];
  v7 = v0[20];
  v8 = v0[17];
  v9 = v0[14];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1004B941C()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 280);
  v5 = *v1;

  v6 = v2[17];
  v7 = v2[16];
  v8 = v2[15];
  if (v0)
  {

    (*(v7 + 8))(v6, v8);
    v9 = sub_1004B95C8;
    v10 = 0;
  }

  else
  {
    (*(v7 + 8))(v6, v8);
    v10 = v3[27];
    v3[36] = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_askContinuation;
    v9 = sub_1004B95F0;
  }

  return _swift_task_switch(v9, v10, 0);
}

uint64_t sub_1004B95C8()
{
  v1 = *(v0 + 216);
  *(v0 + 288) = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_askContinuation;
  return _swift_task_switch(sub_1004B95F0, v1, 0);
}

uint64_t sub_1004B95F0()
{
  v1 = v0[36];
  v2 = v0[27];
  v3 = v0[12];
  v4 = v0[13];
  swift_beginAccess();
  if ((*(v4 + 48))(v2 + v1, 1, v3))
  {
    v5 = sub_1004B96CC;
  }

  else
  {
    (*(v0[13] + 16))(v0[14], v0[27] + v0[36], v0[12]);
    v5 = sub_1004B9784;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1004B96CC()
{
  v1 = v0[27];

  v3 = v0[25];
  v2 = v0[26];
  v5 = v0[21];
  v4 = v0[22];
  v6 = v0[20];
  v7 = v0[17];
  v8 = v0[14];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1004B9784()
{
  v1 = v0[27];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[11];
  v5 = v0[12];
  v6 = type metadata accessor for SFAirDropSend.Failure();
  sub_1004BA228(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure);
  v7 = swift_allocError();
  v9 = v8;
  sub_10032C0AC();
  (*(*(v6 - 8) + 104))(v9, enum case for SFAirDropSend.Failure.missingEndpoint(_:), v6);
  v0[9] = v7;
  SFProgressContinuation.yield(_:)();

  (*(v3 + 8))(v2, v5);
  v11 = v0[25];
  v10 = v0[26];
  v13 = v0[21];
  v12 = v0[22];
  v14 = v0[20];
  v15 = v0[17];
  v16 = v0[14];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1004B9924(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return _swift_task_switch(sub_1004B9948, v2, 0);
}

uint64_t sub_1004B9948()
{
  v15 = v0;
  if (qword_100973910 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_1009800F8);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[5];
    v5 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_10000C4E4(v6, v5, &v14);
    _os_log_impl(&_mh_execute_header, v3, v4, "No backup endpoint present, adding deviceID for needsFallback %s", v7, 0xCu);
    sub_10000C60C(v8);
  }

  v9 = v0[6];
  v10 = v0[7];
  v11 = v0[5];
  swift_beginAccess();

  sub_10046DAAC(&v14, v11, v9);
  swift_endAccess();

  v12 = v0[1];

  return v12();
}

uint64_t sub_1004B9B1C()
{
  v0 = sub_10032E82C();
  v2 = v1;
  result = NWEndpoint.nw.getter();
  if (result)
  {
    device_id = nw_endpoint_get_device_id();
    swift_unknownObjectRelease();
    if (device_id)
    {
      v5 = String.init(cString:)();
      if (v2)
      {
        if (v6)
        {
          if (v0 == v5 && v2 == v6)
          {

            v7 = 1;
          }

          else
          {
            v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
          }

          goto LABEL_14;
        }

        goto LABEL_9;
      }

      if (v6)
      {
        v7 = 0;
        goto LABEL_14;
      }
    }

    else if (v2)
    {
LABEL_9:
      v7 = 0;
LABEL_14:

      return v7 & 1;
    }

    v7 = 1;
    return v7 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1004B9C14(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_10032B99C();
  v4 = v3;
  if (v2 == sub_10032B99C() && v4 == v5)
  {
LABEL_13:

    return 1;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
    return 1;
  }

  v8 = sub_10032E82C();
  v10 = v9;
  v11 = sub_10032E82C();
  if (v10)
  {
    if (v12)
    {
      if (v8 != v11 || v10 != v12)
      {
        v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

        return v14 & 1;
      }

      goto LABEL_13;
    }
  }

  else if (!v12)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1004B9D50()
{
  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_sendRequest;
  v2 = type metadata accessor for SFAirDropSend.Request();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_initialTransfer;
  v4 = type metadata accessor for SFAirDropSend.Transfer();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_10000C60C((v0 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_runner));
  sub_100005508(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_askContinuation, &qword_10097B338, &unk_1007FE730);
  v5 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_askTasks);

  v6 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_failedResolveEndpointIDs);

  v7 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_needsFallbackDeviceIDs);

  v8 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropAskFanoutHelper_askStart;
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1004B9EB8()
{
  sub_1004B9D50();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for SDAirDropAskFanoutHelper()
{
  result = qword_100980190;
  if (!qword_100980190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004B9F38()
{
  v0 = type metadata accessor for SFAirDropSend.Request();
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    v2 = type metadata accessor for SFAirDropSend.Transfer();
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_1004BA0B8();
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        v6 = type metadata accessor for Date();
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1004BA0B8()
{
  if (!qword_1009801A0)
  {
    sub_100280938(&qword_10097B340, &qword_100806090);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1009801A0);
    }
  }
}

unint64_t sub_1004BA170()
{
  result = qword_100980298;
  if (!qword_100980298)
  {
    sub_100280938(&qword_100980290, &qword_100809190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100980298);
  }

  return result;
}

uint64_t sub_1004BA228(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004BA270(uint64_t result)
{
  if (result != 1)
  {
    return swift_errorRetain();
  }

  return result;
}

uint64_t sub_1004BA280(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1004BA290(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_10097B338, &unk_1007FE730);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004BA300(uint64_t a1)
{
  v4 = *(type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005C00;

  return sub_1004B8608(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1004BA418(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004BA480(uint64_t a1)
{
  v4 = *(type metadata accessor for SDAirDropDiscoveredEndpoint(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005C00;

  return sub_1004B57B4(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1004BA578(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004BA5E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1004BA640(uint64_t a1)
{
  v4 = *(type metadata accessor for SDAirDropDiscoveredEndpoint(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005C00;

  return sub_1004B8168(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1004BA738(uint64_t a1)
{
  v4 = *(type metadata accessor for SDAirDropDiscoveredEndpoint(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005C00;

  return sub_1004B4FB4(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1004BA830(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100005C04;

  return sub_1002D65C0(a1, v5);
}

uint64_t sub_1004BA8E8()
{
  v1 = *(type metadata accessor for SDAirDropDiscoveredEndpoint(0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = *(v0 + 32);

  v6 = v0 + v2;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_100026AC0(*v6, *(v6 + 8));
      v21 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint(0);
      v22 = v21[5];
      v23 = type metadata accessor for UUID();
      (*(*(v23 - 8) + 8))(v6 + v22, v23);
      v24 = *(v6 + v21[6]);
      swift_unknownObjectRelease();
      v25 = *(v6 + v21[7] + 8);
    }

    else if (EnumCaseMultiPayload == 3)
    {
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v8 = *(v6 + 8);

      v9 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
      v10 = v9[5];
      v11 = type metadata accessor for NWEndpoint();
      (*(*(v11 - 8) + 8))(v6 + v10, v11);
      v12 = *(v6 + v9[7] + 8);

      v13 = *(v6 + v9[8] + 8);

      v14 = *(v6 + v9[9] + 8);

      v15 = *(v6 + v9[10] + 8);

      v16 = *(v6 + v9[11] + 8);

      v17 = *(v6 + v9[12] + 8);

      v18 = (v6 + v9[14]);
      v19 = v18[1];
      if (v19 >> 60 != 15)
      {
        sub_100026AC0(*v18, v19);
      }
    }
  }

  else
  {
    v20 = type metadata accessor for NWEndpoint();
    (*(*(v20 - 8) + 8))(v0 + v2, v20);
  }

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1004BAB60(uint64_t a1)
{
  v4 = *(type metadata accessor for SDAirDropDiscoveredEndpoint(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005C04;

  return sub_1004B69F8(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1004BAC7C()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_1009802A8);
  v1 = sub_10000C4AC(v0, qword_1009802A8);
  if (qword_100973700 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0948);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1004BAD44()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10000C5B0(v25, v24);
    if (swift_dynamicCast())
    {
      v3 = v22[0];
      if (v22[0] <= 2592000.0)
      {
        sub_10000C60C(v25);
        return;
      }

      if (qword_100973918 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      sub_10000C4AC(v4, qword_1009802A8);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v24[0] = v8;
        *v7 = 134218498;
        *(v7 + 4) = v3;
        *(v7 + 12) = 2080;
        *(v7 + 14) = sub_10000C4E4(0xD000000000000028, 0x80000001007927C0, v24);
        *(v7 + 22) = 2048;
        *(v7 + 24) = 0x4143C68000000000;
        _os_log_impl(&_mh_execute_header, v5, v6, "Pseudonym properties provider retrieved an invalid IDS Server Bag value %f for key %s greater than %f", v7, 0x20u);
        sub_10000C60C(v8);
      }
    }

    else
    {
      if (qword_100973918 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_10000C4AC(v14, qword_1009802A8);
      sub_10000C5B0(v25, v24);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        *v17 = 136315394;
        sub_10000C5B0(v24, v22);
        v18 = String.init<A>(describing:)();
        v20 = v19;
        sub_10000C60C(v24);
        v21 = sub_10000C4E4(v18, v20, &v23);

        *(v17 + 4) = v21;
        *(v17 + 12) = 2080;
        *(v17 + 14) = sub_10000C4E4(0xD000000000000028, 0x80000001007927C0, &v23);
        _os_log_impl(&_mh_execute_header, v15, v16, "Pseudonym properties provider retrieved an invalid IDS Server Bag object %s for key %s", v17, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_10000C60C(v24);
      }
    }

    sub_10000C60C(v25);
  }

  else
  {
    if (qword_100973918 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000C4AC(v9, qword_1009802A8);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v25[0] = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_10000C4E4(0xD000000000000028, 0x80000001007927C0, v25);
      _os_log_impl(&_mh_execute_header, v10, v11, "Pseudonym properties provider failed to retrieve an IDS Server Bag object for key %s", v12, 0xCu);
      sub_10000C60C(v13);
    }
  }
}

uint64_t sub_1004BB21C()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10000C5B0(v20, v19);
    if (swift_dynamicCast())
    {
      sub_10000C60C(v20);
      return v17[0];
    }

    if (qword_100973918 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000C4AC(v9, qword_1009802A8);
    sub_10000C5B0(v20, v19);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v12 = 136315394;
      sub_10000C5B0(v19, v17);
      v13 = String.init<A>(describing:)();
      v15 = v14;
      sub_10000C60C(v19);
      v16 = sub_10000C4E4(v13, v15, &v18);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_10000C4E4(0xD000000000000019, 0x80000001007927A0, &v18);
      _os_log_impl(&_mh_execute_header, v10, v11, "Pseudonym properties provider retrieved an invalid IDS Server Bag object %s for key %s", v12, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_10000C60C(v19);
    }

    sub_10000C60C(v20);
  }

  else
  {
    if (qword_100973918 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000C4AC(v4, qword_1009802A8);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v20[0] = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_10000C4E4(0xD000000000000019, 0x80000001007927A0, v20);
      _os_log_impl(&_mh_execute_header, v5, v6, "Pseudonym properties provider failed to retrieve an IDS Server Bag object for key %s", v7, 0xCu);
      sub_10000C60C(v8);
    }
  }

  return 1;
}

uint64_t sub_1004BB5B4()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_1009802C0);
  v1 = sub_10000C4AC(v0, qword_1009802C0);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004BB67C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(sub_10028088C(&unk_100974E00, &qword_1007F8940) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = *(*(sub_10028088C(&qword_1009803B8, &unk_100807F30) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v2[8] = v5;
  v6 = *(v5 - 8);
  v2[9] = v6;
  v7 = *(v6 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v8 = type metadata accessor for SFAirDrop.TransferType();
  v2[12] = v8;
  v9 = *(v8 - 8);
  v2[13] = v9;
  v10 = *(v9 + 64) + 15;
  v2[14] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v11 = static AirDropActor.shared;

  return _swift_task_switch(sub_1004BB864, v11, 0);
}

uint64_t sub_1004BB864()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[2];
  SFAirDropReceive.AskRequest.type.getter();
  LOBYTE(v4) = SFAirDrop.TransferType.isLinks.getter();
  (*(v2 + 8))(v1, v3);
  if ((v4 & 1) == 0)
  {
    v38 = 0;
    goto LABEL_30;
  }

  v5 = v0[9];
  v6 = v0[2];
  result = SFAirDropReceive.AskRequest.urlItems.getter();
  v8 = 0;
  v9 = *(result + 56);
  v58 = result + 56;
  v10 = -1;
  v11 = -1 << *(result + 32);
  if (-v11 < 64)
  {
    v10 = ~(-1 << -v11);
  }

  v12 = v10 & v9;
  v59 = v5;
  v60 = (v5 + 8);
  v61 = result;
  v57 = (63 - v11) >> 6;
  if ((v10 & v9) != 0)
  {
    while (1)
    {
LABEL_12:
      v16 = v0[11];
      v18 = v0[7];
      v17 = v0[8];
      v19 = v0[6];
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      (*(v59 + 16))(v16, *(v61 + 48) + *(v59 + 72) * (v20 | (v8 << 6)), v17);
      URLComponents.init(url:resolvingAgainstBaseURL:)();
      (*(v59 + 8))(v16, v17);
      sub_1004BCD60(v18, v19);
      v21 = type metadata accessor for URLComponents();
      v22 = *(v21 - 8);
      v23 = *(v22 + 48);
      v24 = v23(v19, 1, v21);
      v25 = v0[6];
      if (v24 == 1)
      {
        sub_100005508(v0[6], &qword_1009803B8, &unk_100807F30);
LABEL_18:
        v31 = v0[5];
        sub_1004BCD60(v0[7], v31);
        v32 = v23(v31, 1, v21);
        v33 = v0[5];
        if (v32 == 1)
        {
          sub_100005508(v0[5], &qword_1009803B8, &unk_100807F30);
LABEL_34:
          sub_100005508(v0[7], &qword_1009803B8, &unk_100807F30);

          v38 = 0;
          goto LABEL_30;
        }

        v34 = v0[5];
        v35 = URLComponents.scheme.getter();
        v37 = v36;
        (*(v22 + 8))(v33, v21);
        if (!v37)
        {
          goto LABEL_34;
        }

        if (v35 == 0xD000000000000010 && v37 == 0x80000001007928B0)
        {
LABEL_22:

          goto LABEL_23;
        }

        v13 = v0[7];
        v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

        result = sub_100005508(v13, &qword_1009803B8, &unk_100807F30);
        if ((v14 & 1) == 0)
        {

          v38 = 0;
          goto LABEL_30;
        }

        if (!v12)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v26 = v0[6];
        v27 = URLComponents.scheme.getter();
        v29 = v28;
        (*(v22 + 8))(v25, v21);
        if (!v29)
        {
          goto LABEL_18;
        }

        if (v27 == 0xD000000000000013 && v29 == 0x8000000100792910)
        {
          goto LABEL_22;
        }

        v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v30 & 1) == 0)
        {
          goto LABEL_18;
        }

LABEL_23:
        result = sub_100005508(v0[7], &qword_1009803B8, &unk_100807F30);
        if (!v12)
        {
          goto LABEL_8;
        }
      }
    }
  }

  while (1)
  {
LABEL_8:
    v15 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return result;
    }

    if (v15 >= v57)
    {
      break;
    }

    v12 = *(v58 + 8 * v15);
    ++v8;
    if (v12)
    {
      v8 = v15;
      goto LABEL_12;
    }
  }

  v40 = v0[8];
  v39 = v0[9];
  v41 = v0[4];
  v42 = v0[2];

  v43 = SFAirDropReceive.AskRequest.urlItems.getter();
  sub_1002FB398(v43, v41);

  if ((*(v39 + 48))(v41, 1, v40) == 1)
  {
    sub_100005508(v0[4], &unk_100974E00, &qword_1007F8940);
  }

  else
  {
    v44 = v0[10];
    v45 = v0[8];
    v46 = v0[3];
    (*(v0[9] + 32))(v44, v0[4], v45);
    v47 = sub_1004BC5D4();
    (*v60)(v44, v45);
    v48 = *(v46 + 16);
    *(v46 + 16) = v47;
  }

  v38 = *(v0[3] + 16) != 0;
LABEL_30:
  v49 = v0[14];
  v51 = v0[10];
  v50 = v0[11];
  v53 = v0[6];
  v52 = v0[7];
  v55 = v0[4];
  v54 = v0[5];

  v56 = v0[1];

  return v56(v38);
}

void sub_1004BBDAC(uint64_t a1, char a2)
{
  v3 = v2;
  LOBYTE(v4) = a2;
  v5 = *(SFAirDropReceive.AskRequest.urlItems.getter() + 16);

  v6 = *(v2 + 16);
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = [v6 displayName];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = *(v3 + 16);
  if (v11)
  {
    v12 = [v11 passkeyCredential];
    if (v12)
    {
      v13 = v12;
      v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      sub_100026AC0(v14, v16);
      if (!v10)
      {
        goto LABEL_16;
      }

      if (v5 != 1)
      {
LABEL_15:

LABEL_16:
        sub_10028088C(&qword_1009775E0, &unk_1007FAD10);
        inited = swift_initStackObject();
        v34 = xmmword_1007F5670;
        *(inited + 16) = xmmword_1007F5670;
        *(inited + 32) = 0x59454B53534150;
        v30 = inited + 32;
        *(inited + 40) = 0xE700000000000000;
        *(inited + 48) = v5;
        sub_1003D8D18(inited, v4 & 1);
        swift_setDeallocating();
        sub_100005508(v30, &qword_100981D40, &unk_1007FA6C0);
        v31 = String._bridgeToObjectiveC()();
        v28 = SFLocalizedStringForKey();

        if (!v28)
        {
          __break(1u);
          goto LABEL_20;
        }

LABEL_17:

        static String._unconditionallyBridgeFromObjectiveC(_:)();

        sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
        v32 = swift_allocObject();
        *(v32 + 16) = v34;
        *(v32 + 56) = &type metadata for Int;
        *(v32 + 64) = &protocol witness table for Int;
        *(v32 + 32) = v5;
        goto LABEL_18;
      }

      sub_10028088C(&qword_1009775E0, &unk_1007FAD10);
      v17 = swift_initStackObject();
      v33 = xmmword_1007F5670;
      *(v17 + 16) = xmmword_1007F5670;
      *(v17 + 32) = 0xD000000000000012;
      v18 = v17 + 32;
      *(v17 + 40) = 0x80000001007928F0;
      *(v17 + 48) = 1;
      sub_1003D8D18(v17, v4 & 1);
      LOBYTE(v4) = v19;
      swift_setDeallocating();
      sub_100005508(v18, &qword_100981D40, &unk_1007FA6C0);
      v20 = String._bridgeToObjectiveC()();
      v21 = SFLocalizedStringForKey();

      if (v21)
      {
LABEL_11:

        static String._unconditionallyBridgeFromObjectiveC(_:)();

        sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
        v25 = swift_allocObject();
        *(v25 + 16) = v33;
        *(v25 + 56) = &type metadata for String;
        *(v25 + 64) = sub_100026764();
        *(v25 + 32) = v8;
        *(v25 + 40) = v10;
LABEL_18:
        static String.localizedStringWithFormat(_:_:)();

        return;
      }

      __break(1u);
    }
  }

  if (!v10)
  {
LABEL_13:
    sub_10028088C(&qword_1009775E0, &unk_1007FAD10);
    v26 = swift_initStackObject();
    v34 = xmmword_1007F5670;
    *(v26 + 16) = xmmword_1007F5670;
    *(v26 + 32) = 0x49544E4544455243;
    v27 = v26 + 32;
    *(v26 + 40) = 0xEA00000000004C41;
    *(v26 + 48) = v5;
    sub_1003D8D18(v26, v4 & 1);
    swift_setDeallocating();
    sub_100005508(v27, &qword_100981D40, &unk_1007FA6C0);
    v4 = String._bridgeToObjectiveC()();
    v28 = SFLocalizedStringForKey();

    if (v28)
    {
      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (v5 != 1)
  {

    goto LABEL_13;
  }

  sub_10028088C(&qword_1009775E0, &unk_1007FAD10);
  v22 = swift_initStackObject();
  v33 = xmmword_1007F5670;
  *(v22 + 16) = xmmword_1007F5670;
  *(v22 + 32) = 0xD000000000000015;
  v23 = v22 + 32;
  *(v22 + 40) = 0x80000001007928D0;
  *(v22 + 48) = 1;
  sub_1003D8D18(v22, v4 & 1);
  swift_setDeallocating();
  sub_100005508(v23, &qword_100981D40, &unk_1007FA6C0);
  v24 = String._bridgeToObjectiveC()();
  v21 = SFLocalizedStringForKey();

  if (v21)
  {
    goto LABEL_11;
  }

LABEL_20:
  __break(1u);
}

uint64_t sub_1004BC258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = type metadata accessor for URL();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v4[6] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v8 = static AirDropActor.shared;

  return _swift_task_switch(sub_1004BC350, v8, 0);
}

uint64_t sub_1004BC350()
{
  v1 = *(*(v0 + 24) + 16);
  if (v1)
  {
    v2 = *(v0 + 48);
    v3 = v1;
    v4 = [v3 passwordManagerURL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    if (qword_100973920 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000C4AC(v5, qword_1009802C0);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Opening password manager url", v8, 2u);
    }

    v10 = *(v0 + 40);
    v9 = *(v0 + 48);
    v11 = *(v0 + 32);

    v12 = objc_opt_self();
    URL._bridgeToObjectiveC()(v13);
    v15 = v14;
    [v12 openPasswordManagerURL:v14];

    (*(v10 + 8))(v9, v11);
    v16 = 1;
  }

  else
  {
    if (qword_100973920 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000C4AC(v17, qword_1009802C0);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "### No credential?", v20, 2u);
    }

    v16 = 0;
  }

  v21 = *(v0 + 48);
  **(v0 + 16) = v16;

  v22 = *(v0 + 8);

  return v22();
}

id sub_1004BC5D4()
{
  v1 = sub_10028088C(&qword_1009803B8, &unk_100807F30);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v45 - v3;
  v5 = *(v0 + 16);
  if (!v5)
  {
    v7 = v0;
    if (qword_100973920 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000C4AC(v8, qword_1009802C0);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Grabbing credential from AirDrop handler...", v11, 2u);
    }

    URLComponents.init(url:resolvingAgainstBaseURL:)();
    v12 = type metadata accessor for URLComponents();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v4, 1, v12) == 1)
    {
      sub_100005508(v4, &qword_1009803B8, &unk_100807F30);
      goto LABEL_15;
    }

    v14 = URLComponents.scheme.getter();
    v16 = v15;
    (*(v13 + 8))(v4, v12);
    if (v16)
    {
      if (v14 == 0xD000000000000010 && v16 == 0x80000001007928B0)
      {
      }

      else
      {
        v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v18 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      URL._bridgeToObjectiveC()(v19);
      v38 = v37;
      v5 = SFSharablePasswordForUnencryptedAirDropURL();

      if (!v5)
      {
        goto LABEL_19;
      }

      goto LABEL_30;
    }

LABEL_15:
    v20 = [objc_opt_self() sharedAgent];
    v21 = [v20 myAccount];

    if (!v21)
    {
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        v33 = "### Failed to grab myAccount?";
        goto LABEL_23;
      }

LABEL_24:

      return 0;
    }

    v22 = [v21 identity];
    if (!v22)
    {
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&_mh_execute_header, v34, v35, "### Failed to grab myIdentity?", v36, 2u);
      }

      return 0;
    }

    v23 = v22;
    v24 = [v22 copyPrivateKey];
    if (!v24)
    {
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&_mh_execute_header, v41, v42, "### Failed to grab myPrivateKey?", v43, 2u);
      }

      return 0;
    }

    v26 = v24;
    URL._bridgeToObjectiveC()(v25);
    v28 = v27;
    v29 = v26;
    v5 = SFSharablePasswordForEncryptedAirDropURL();

    if (!v5)
    {
LABEL_19:
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        v33 = "Failed to grab credential from AirDrop handler!";
LABEL_23:
        _os_log_impl(&_mh_execute_header, v30, v31, v33, v32, 2u);

        goto LABEL_24;
      }

      goto LABEL_24;
    }

LABEL_30:
    v39 = *(v7 + 16);
    *(v7 + 16) = v5;
    v40 = v5;

    return v5;
  }

  v6 = v5;
  return v5;
}

uint64_t sub_1004BCB04@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SDAirDropContentHandlerCredentialLinks();
  result = swift_allocObject();
  *(result + 16) = 0;
  *a1 = result;
  return result;
}

uint64_t sub_1004BCB3C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100289000;

  return sub_1004BB67C(a1);
}

uint64_t sub_1004BCBF8()
{
  v1 = *v0;

  return SFProgressTask.init(_:initialProgress:operation:file:line:)();
}

uint64_t sub_1004BCCAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_100005C04;

  return sub_1004BC258(a1, a2, a3, v3);
}

uint64_t sub_1004BCD60(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_1009803B8, &unk_100807F30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1004BCEB8()
{
  result = qword_1009803C0;
  if (!qword_1009803C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009803C0);
  }

  return result;
}

unint64_t sub_1004BCF0C()
{
  result = qword_1009803C8;
  if (!qword_1009803C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009803C8);
  }

  return result;
}

unint64_t sub_1004BCF84()
{
  result = qword_1009803D0;
  if (!qword_1009803D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009803D0);
  }

  return result;
}

unint64_t sub_1004BCFDC()
{
  result = qword_1009803D8;
  if (!qword_1009803D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009803D8);
  }

  return result;
}

uint64_t _s10AKSSessionVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s10AKSSessionVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_1004BD0BC(uint64_t a1, unint64_t a2)
{
  v19 = 0;
  if (a2 >> 60 == 15)
  {
    v2 = 0;
  }

  else
  {
    v2 = a1;
  }

  if (a2 >> 60 == 15)
  {
    v3 = 0xC000000000000000;
  }

  else
  {
    v3 = a2;
  }

  v4 = v3 >> 62;
  if ((v3 >> 62) <= 1)
  {
    if (!v4)
    {
      v18[0] = v2;
      LOWORD(v18[1]) = v3;
      BYTE2(v18[1]) = BYTE2(v3);
      BYTE3(v18[1]) = BYTE3(v3);
      BYTE4(v18[1]) = BYTE4(v3);
      BYTE5(v18[1]) = BYTE5(v3);
      sub_1002A9924(a1, a2);
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  if (v4 == 2)
  {
    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
    sub_1002A9924(a1, a2);
    a1 = __DataStorage._bytes.getter();
    if (a1)
    {
      a1 = __DataStorage._offset.getter();
      if (__OFSUB__(v5, a1))
      {
        goto LABEL_27;
      }
    }

    if (!__OFSUB__(v6, v5))
    {
LABEL_19:
      __DataStorage._length.getter();
      goto LABEL_21;
    }

    __break(1u);
LABEL_16:
    if (v2 >> 32 >= v2)
    {
      sub_1002A9924(a1, a2);
      if (!__DataStorage._bytes.getter() || !__OFSUB__(v2, __DataStorage._offset.getter()))
      {
        goto LABEL_19;
      }

LABEL_28:
      __break(1u);
    }

    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  memset(v18, 0, 14);
  sub_1002A9924(a1, a2);
LABEL_21:
  v7 = aks_remote_session_step();
  if (qword_100973928 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000C4AC(v8, qword_1009803E0);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18[0] = v12;
    *v11 = 67109378;
    *(v11 + 4) = v7;
    *(v11 + 8) = 2080;
    v13 = sub_1004BD7D4();
    v15 = sub_10000C4E4(v13, v14, v18);

    *(v11 + 10) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "AKS step ret: %d %s", v11, 0x12u);
    sub_10000C60C(v12);
  }

  v16 = sub_1004BD8E4(v7, v19, 0, 0xD000000000000021, 0x8000000100792AA0);
  sub_100026AC0(v2, v3);
  return v16;
}

uint64_t sub_1004BD438(uint64_t a1, unint64_t a2)
{
  v3 = a2 >> 60;
  if (a2 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v4 = a1;
  }

  if (a2 >> 60 == 15)
  {
    v5 = 0xC000000000000000;
  }

  else
  {
    v5 = a2;
  }

  v6 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v6)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  if (v6 == 2)
  {
    v7 = *(v4 + 16);
    v8 = *(v4 + 24);
    sub_1002A9924(a1, a2);
    a1 = __DataStorage._bytes.getter();
    if (a1)
    {
      a1 = __DataStorage._offset.getter();
      if (__OFSUB__(v7, a1))
      {
        goto LABEL_34;
      }
    }

    if (!__OFSUB__(v8, v7))
    {
LABEL_19:
      __DataStorage._length.getter();
      goto LABEL_21;
    }

    __break(1u);
LABEL_16:
    if (v4 >> 32 >= v4)
    {
      sub_1002A9924(a1, a2);
      if (!__DataStorage._bytes.getter() || !__OFSUB__(v4, __DataStorage._offset.getter()))
      {
        goto LABEL_19;
      }

LABEL_35:
      __break(1u);
    }

    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

LABEL_20:
  sub_1002A9924(a1, a2);
LABEL_21:
  v9 = aks_remote_peer_setup();
  if (v9 == -536870194)
  {
    v10 = sub_100010F88(23, 0xD000000000000015, 0x8000000100792B10);
    v12 = v11;
    sub_1000115C8();
    swift_allocError();
    *v13 = v10;
    *(v13 + 8) = v12;
    swift_willThrow();
  }

  else
  {
    if (v3 <= 0xE)
    {
      v14 = 0xD000000000000019;
    }

    else
    {
      v14 = 0xD00000000000001FLL;
    }

    if (v3 <= 0xE)
    {
      v15 = "mote_session_step";
    }

    else
    {
      v15 = "Finalizing pairing failed";
    }

    v16 = sub_1004BD8E4(v9, 0, 0, v14, v15 | 0x8000000000000000);
    if (!v2)
    {
      sub_10028BCC0(v16, v17);
    }
  }

  return sub_100026AC0(v4, v5);
}

uint64_t sub_1004BD70C()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_1009803E0);
  v1 = sub_10000C4AC(v0, qword_1009803E0);
  if (qword_100973758 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004BD7D4()
{
  _StringGuts.grow(_:)(33);

  strcpy(v4, "AKSSession id=");
  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0x67616279656B202CLL;
  v1._object = 0xEF3D656C646E6148;
  String.append(_:)(v1);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  return v4[0];
}

uint64_t sub_1004BD8E4(int a1, _BYTE *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a1)
  {
    if (qword_100973928 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000C4AC(v8, qword_1009803E0);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v21 = v12;
      *v11 = 136315394;
      *(v11 + 4) = sub_10000C4E4(a4, a5, &v21);
      *(v11 + 12) = 1024;
      *(v11 + 14) = a1;
      _os_log_impl(&_mh_execute_header, v9, v10, "%s, AKS errCode: %d", v11, 0x12u);
      sub_10000C60C(v12);
    }

    v21 = a4;
    v22 = a5;

    v13._countAndFlagsBits = 0x646F43727265202CLL;
    v13._object = 0xEB00000000203A65;
    String.append(_:)(v13);
    v23 = a1;
    v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v14);

    v15 = sub_100010F88(10, v21, v22);
    v17 = v16;
    sub_1000115C8();
    swift_allocError();
    *v18 = v15;
    *(v18 + 8) = v17;
    swift_willThrow();
  }

  else
  {
    v15 = 0;
    if (a2 && a3 >= 1)
    {
      v15 = sub_1004E53D0(a2, a3);
      free(a2);
    }
  }

  return v15;
}

uint64_t sub_1004BDB34()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_1009803F8);
  v1 = sub_10000C4AC(v0, qword_1009803F8);
  if (qword_1009736C0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0888);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004BDBFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004C361C();
  v5 = sub_100283208();

  return Error<>._code.getter(a1, a2, v4, v5);
}

uint64_t sub_1004BDC80()
{
  v1 = v0;
  if (qword_100973930 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_1009803F8);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 136315138;
    v13 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDTempPairingConnection_connection);
    v14 = v6;
    type metadata accessor for NWConnection();

    v7 = String.init<A>(describing:)();
    v9 = sub_10000C4E4(v7, v8, &v14);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Starting connection: %s", v5, 0xCu);
    sub_10000C60C(v6);
  }

  v10 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDTempPairingConnection_connection);
  swift_allocObject();
  swift_weakInit();

  NWConnection.stateUpdateHandler.setter();

  v11 = *(v1 + 16);
  return NWConnection.start(queue:)();
}

uint64_t sub_1004BDE60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[46] = a3;
  v4[47] = v3;
  v4[44] = a1;
  v4[45] = a2;
  v5 = *(*(sub_10028088C(&unk_100976120, &qword_1007F9260) - 8) + 64) + 15;
  v4[48] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v4[49] = v6;
  v7 = *(v6 - 8);
  v4[50] = v7;
  v8 = *(v7 + 64) + 15;
  v4[51] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v9 = static AirDropActor.shared;
  v4[52] = static AirDropActor.shared;

  return _swift_task_switch(sub_1004BDF98, v9, 0);
}

uint64_t sub_1004BDF98()
{
  v1 = *(v0[47] + OBJC_IVAR____TtC16DaemoniOSLibrary23SDTempPairingConnection_temporaryIdentity);
  v2 = [v1 identifier];
  if (v2)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v8 = v0[50];
    v7 = v0[51];
    v9 = v0[49];
    UUID.init()();
    v4 = UUID.uuidString.getter();
    v6 = v10;
    (*(v8 + 8))(v7, v9);
  }

  v11 = [v1 deviceIRKData];
  if (v11)
  {
    v12 = v11;
    v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v0[53] = v13;
    v0[54] = v15;
    v16 = [v1 edPKData];
    if (v16)
    {
      v18 = v0[45];
      v17 = v0[46];
      v19 = v16;
      v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v0[55] = v20;
      v0[56] = v22;
      v0[2] = 1;
      v0[3] = v18;
      v0[4] = v17;
      v0[5] = v4;
      v0[6] = v6;
      v0[7] = v20;
      v0[8] = v22;
      v0[9] = v13;
      v0[10] = v15;

      sub_100294008(v20, v22);
      sub_100294008(v13, v15);
      if (qword_100973930 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      v0[57] = sub_10000C4AC(v23, qword_1009803F8);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "Sending pairing request", v26, 2u);
      }

      v27 = v0[47];

      v0[58] = *(v27 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDTempPairingConnection_connection);
      v0[41] = &type metadata for SDTempPairingMessage.Request;
      v0[42] = sub_1004C2728();
      v28 = swift_allocObject();
      v0[38] = v28;
      v29 = *(v0 + 4);
      *(v28 + 48) = *(v0 + 3);
      *(v28 + 64) = v29;
      *(v28 + 80) = v0[10];
      v30 = *(v0 + 2);
      *(v28 + 16) = *(v0 + 1);
      *(v28 + 32) = v30;
      sub_1004C277C((v0 + 2), (v0 + 11));
      v31 = swift_task_alloc();
      v0[59] = v31;
      *v31 = v0;
      v31[1] = sub_1004BE458;

      return sub_100676434((v0 + 38));
    }

    v35 = type metadata accessor for SFError();
    sub_10044FED8();
    swift_allocError();
    *v36 = 0x617461444B506465;
    v36[1] = 0xE800000000000000;
    v36[2] = 0xD00000000000005ELL;
    v36[3] = 0x8000000100792BC0;
    v36[4] = 83;
    (*(*(v35 - 8) + 104))(v36, enum case for SFError.missingValue(_:), v35);
    swift_willThrow();
    sub_100026AC0(v13, v15);
  }

  else
  {

    v33 = type metadata accessor for SFError();
    sub_10044FED8();
    swift_allocError();
    strcpy(v34, "deviceIRKData");
    *(v34 + 7) = -4864;
    *(v34 + 2) = 0xD00000000000005ELL;
    *(v34 + 3) = 0x8000000100792BC0;
    *(v34 + 4) = 79;
    (*(*(v33 - 8) + 104))(v34, enum case for SFError.missingValue(_:), v33);
    swift_willThrow();
  }

  v37 = v0[51];
  v38 = v0[48];

  v39 = v0[1];

  return v39();
}

uint64_t sub_1004BE458()
{
  v2 = *v1;
  v3 = *(*v1 + 472);
  v8 = *v1;
  *(*v1 + 480) = v0;

  if (v0)
  {
    v4 = *(v2 + 416);
    v5 = sub_1004BF29C;
  }

  else
  {
    v6 = *(v2 + 416);
    sub_10000C60C((v2 + 304));
    v5 = sub_1004BE580;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1004BE580()
{
  v1 = v0[57];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Sent pairing request, waiting for response", v4, 2u);
  }

  v5 = swift_task_alloc();
  v0[61] = v5;
  *v5 = v0;
  v5[1] = sub_1004BE688;
  v6 = v0[58];

  return sub_100630D8C();
}

uint64_t sub_1004BE688(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 488);
  v6 = *v2;

  if (v1)
  {
    v4[66] = v1;
    v7 = v4[52];

    return _swift_task_switch(sub_1004BF0B4, v7, 0);
  }

  else
  {
    v8 = swift_task_alloc();
    v4[62] = v8;
    *v8 = v6;
    v8[1] = sub_1004BE810;
    v9 = v4[58];

    return sub_1006311CC(a1, 0x20000);
  }
}

uint64_t sub_1004BE810(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 496);
  v6 = *v3;
  v4[63] = a1;
  v4[64] = a2;
  v4[65] = v2;

  if (v2)
  {
    v4[66] = v2;
    v7 = v4[52];
    v8 = sub_1004BF0B4;
  }

  else
  {
    v8 = sub_1004BE944;
    v7 = 0;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1004BE944()
{
  v1 = v0[65];
  v2 = v0[63];
  v3 = v0[64];
  sub_1006760AC();
  if (v1)
  {
    sub_100026AC0(v0[63], v0[64]);
    v0[66] = v1;
    v4 = v0[52];
    v5 = sub_1004BF0B4;
  }

  else
  {
    v6 = v0[52];
    sub_100026AC0(v0[63], v0[64]);
    v5 = sub_1004BE9F0;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1004BE9F0()
{
  v63 = v0;
  v1 = *(v0 + 456);
  v2 = *(v0 + 160);
  *(v0 + 248) = *(v0 + 176);
  v3 = *(v0 + 208);
  *(v0 + 264) = *(v0 + 192);
  *(v0 + 280) = v3;
  *(v0 + 296) = *(v0 + 224);
  *(v0 + 232) = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Received pairing response", v6, 2u);
  }

  if ((*(v0 + 248) & 1) == 0)
  {
    v19 = *(v0 + 240) != 0;
    v20 = type metadata accessor for SFError();
    sub_10044FED8();
    v21 = swift_allocError();
    v23 = v22;
    _StringGuts.grow(_:)(28);

    v61 = 0xD00000000000001ALL;
    v62 = 0x8000000100792CA0;
    *(v0 + 536) = v19;
    sub_10028088C(&qword_1009805C8, &qword_100806718);
    v24._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v24);

    v25 = v62;
    *v23 = v61;
    v23[1] = v25;
    v23[2] = 0xD00000000000005ELL;
    v23[3] = 0x8000000100792BC0;
    v23[4] = 101;
    (*(*(v20 - 8) + 104))(v23, enum case for SFError.unexpected(_:), v20);
    goto LABEL_9;
  }

  v7 = *(v0 + 352);
  v8 = (v7 + *(type metadata accessor for SDTempPairingEndpoint(0) + 20));
  if ((sub_100331508(v8[2], v8[3], *(v0 + 272), *(v0 + 280)) & 1) == 0)
  {
    v26 = type metadata accessor for SFError();
    sub_10044FED8();
    v21 = swift_allocError();
    *v27 = 0xD000000000000018;
    v27[1] = 0x8000000100792C20;
    v27[2] = 0xD00000000000005ELL;
    v27[3] = 0x8000000100792BC0;
    v27[4] = 103;
    (*(*(v26 - 8) + 104))(v27, enum case for SFError.unexpected(_:), v26);
LABEL_9:
    swift_willThrow();
    sub_1004C27E4(v0 + 232);
    sub_1004C27B4(v0 + 16);
    v28 = *(v0 + 456);
    swift_errorRetain();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    v31 = os_log_type_enabled(v29, v30);
    v33 = *(v0 + 440);
    v32 = *(v0 + 448);
    v35 = *(v0 + 424);
    v34 = *(v0 + 432);
    if (v31)
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v61 = v37;
      *v36 = 136315138;
      *(v0 + 344) = v21;
      swift_errorRetain();
      sub_10028088C(&unk_10097A930, &unk_1007F9050);
      v38 = String.init<A>(describing:)();
      v60 = v35;
      v40 = sub_10000C4E4(v38, v39, &v61);

      *(v36 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v29, v30, "Failed to exchange temporary identity: %s", v36, 0xCu);
      sub_10000C60C(v37);

      sub_100026AC0(v33, v32);
      sub_100026AC0(v60, v34);
    }

    else
    {
      sub_100026AC0(*(v0 + 440), *(v0 + 448));
      sub_100026AC0(v35, v34);
    }

    goto LABEL_19;
  }

  v10 = *(v0 + 424);
  v9 = *(v0 + 432);
  v12 = *(v0 + 392);
  v11 = *(v0 + 400);
  v13 = *(v0 + 384);
  sub_100026AC0(*(v0 + 440), *(v0 + 448));
  sub_100026AC0(v10, v9);
  v14 = *(v0 + 256);
  v15 = *(v0 + 264);
  v57 = v8[1];
  v58 = *v8;
  v16 = *(v0 + 288);
  v59 = *(v0 + 296);
  v17 = [objc_allocWithZone(CUPairedPeer) init];
  UUID.init(uuidString:)();
  if ((*(v11 + 48))(v13, 1, v12) == 1)
  {
    isa = 0;
  }

  else
  {
    v42 = *(v0 + 392);
    v41 = *(v0 + 400);
    v43 = *(v0 + 384);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v41 + 8))(v43, v42);
  }

  [v17 setIdentifier:isa];

  v44 = [objc_allocWithZone(RPIdentity) initWithPairedPeer:v17 type:15];
  if (!v44)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v45 = v44;
  v46 = *(v0 + 376);
  v47 = String._bridgeToObjectiveC()();
  [v45 setName:v47];

  v48 = Data._bridgeToObjectiveC()().super.isa;
  [v45 setDeviceIRKData:v48];

  v49 = Data._bridgeToObjectiveC()().super.isa;
  [v45 setEdPKData:v49];

  v50 = Array._bridgeToObjectiveC()().super.isa;
  [v45 setAccessGroups:v50];

  v51 = *(v46 + 24);
  if (v51)
  {
    v52 = *(*(v0 + 376) + 32);

    v51(v45);
    sub_1004C27B4(v0 + 16);
    sub_1002F5A40(v51, v52);
  }

  else
  {
    sub_1004C27B4(v0 + 16);
  }

  sub_1004C27E4(v0 + 232);
LABEL_19:
  v54 = *(v0 + 408);
  v55 = *(v0 + 384);

  v56 = *(v0 + 8);

  return v56();
}

uint64_t sub_1004BF0B4()
{
  v21 = v0;
  sub_1004C27B4((v0 + 2));
  v1 = v0[66];
  v2 = v0[57];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[55];
    v5 = v0[56];
    v18 = v0[53];
    v19 = v0[54];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315138;
    v0[43] = v1;
    swift_errorRetain();
    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    v9 = String.init<A>(describing:)();
    v11 = sub_10000C4E4(v9, v10, &v20);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to exchange temporary identity: %s", v7, 0xCu);
    sub_10000C60C(v8);

    sub_100026AC0(v6, v5);
    sub_100026AC0(v18, v19);
  }

  else
  {
    v13 = v0[53];
    v12 = v0[54];
    sub_100026AC0(v0[55], v0[56]);
    sub_100026AC0(v13, v12);
  }

  v14 = v0[51];
  v15 = v0[48];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1004BF29C()
{
  v21 = v0;
  sub_1004C27B4((v0 + 2));
  sub_10000C60C(v0 + 38);
  v1 = v0[60];
  v2 = v0[57];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[55];
    v5 = v0[56];
    v18 = v0[53];
    v19 = v0[54];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315138;
    v0[43] = v1;
    swift_errorRetain();
    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    v9 = String.init<A>(describing:)();
    v11 = sub_10000C4E4(v9, v10, &v20);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to exchange temporary identity: %s", v7, 0xCu);
    sub_10000C60C(v8);

    sub_100026AC0(v6, v5);
    sub_100026AC0(v18, v19);
  }

  else
  {
    v13 = v0[53];
    v12 = v0[54];
    sub_100026AC0(v0[55], v0[56]);
    sub_100026AC0(v13, v12);
  }

  v14 = v0[51];
  v15 = v0[48];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1004BF48C()
{
  v1[44] = v0;
  v2 = *(*(sub_10028088C(&unk_100976120, &qword_1007F9260) - 8) + 64) + 15;
  v1[45] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v1[46] = v3;
  v4 = *(v3 - 8);
  v1[47] = v4;
  v5 = *(v4 + 64) + 15;
  v1[48] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;
  v1[49] = static AirDropActor.shared;

  return _swift_task_switch(sub_1004BF5C0, v6, 0);
}

uint64_t sub_1004BF5C0()
{
  v1 = *(v0[44] + OBJC_IVAR____TtC16DaemoniOSLibrary23SDTempPairingConnection_temporaryIdentity);
  v2 = [v1 identifier];
  if (v2)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v8 = v0[47];
    v7 = v0[48];
    v9 = v0[46];
    UUID.init()();
    v4 = UUID.uuidString.getter();
    v6 = v10;
    (*(v8 + 8))(v7, v9);
  }

  v0[50] = v6;
  v0[51] = v4;
  v11 = [v1 deviceIRKData];
  if (v11)
  {
    v12 = v11;
    v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v0[52] = v13;
    v0[53] = v15;
    v16 = [v1 edPKData];
    if (v16)
    {
      v17 = v16;
      v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      v0[54] = v18;
      v0[55] = v20;
      if (qword_100973930 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      v0[56] = sub_10000C4AC(v21, qword_1009803F8);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v22, v23, "Waiting for pairing request", v24, 2u);
      }

      v25 = v0[44];

      v0[57] = *(v25 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDTempPairingConnection_connection);
      v26 = swift_task_alloc();
      v0[58] = v26;
      *v26 = v0;
      v26[1] = sub_1004BF9E4;

      return sub_100630D8C();
    }

    v30 = type metadata accessor for SFError();
    sub_10044FED8();
    swift_allocError();
    *v31 = 0x617461444B506465;
    v31[1] = 0xE800000000000000;
    v31[2] = 0xD00000000000005ELL;
    v31[3] = 0x8000000100792BC0;
    v31[4] = 123;
    (*(*(v30 - 8) + 104))(v31, enum case for SFError.missingValue(_:), v30);
    swift_willThrow();
    sub_100026AC0(v13, v15);
  }

  else
  {

    v28 = type metadata accessor for SFError();
    sub_10044FED8();
    swift_allocError();
    strcpy(v29, "deviceIRKData");
    *(v29 + 7) = -4864;
    *(v29 + 2) = 0xD00000000000005ELL;
    *(v29 + 3) = 0x8000000100792BC0;
    *(v29 + 4) = 119;
    (*(*(v28 - 8) + 104))(v29, enum case for SFError.missingValue(_:), v28);
    swift_willThrow();
  }

  v32 = v0[48];
  v33 = v0[45];

  v34 = v0[1];

  return v34();
}

uint64_t sub_1004BF9E4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 464);
  v6 = *v2;

  if (v1)
  {
    v7 = v4[50];

    v4[63] = v1;
    v8 = v4[49];

    return _swift_task_switch(sub_1004BFFB0, v8, 0);
  }

  else
  {
    v9 = swift_task_alloc();
    v4[59] = v9;
    *v9 = v6;
    v9[1] = sub_1004BFB74;
    v10 = v4[57];

    return sub_1006311CC(a1, 0x20000);
  }
}

uint64_t sub_1004BFB74(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 472);
  v6 = *v3;
  v4[60] = a1;
  v4[61] = a2;
  v4[62] = v2;

  if (v2)
  {
    v7 = v4[50];

    v4[63] = v2;
    v8 = v4[49];
    v9 = sub_1004BFFB0;
  }

  else
  {
    v9 = sub_1004BFCB0;
    v8 = 0;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1004BFCB0()
{
  v1 = v0[61];
  v2 = v0[62];
  v3 = v0[60];
  sub_100676270();
  if (v2)
  {
    v4 = v0[60];
    v5 = v0[61];
    v6 = v0[50];

    sub_100026AC0(v4, v5);
    v0[63] = v2;
    v7 = v0[49];
    v8 = sub_1004BFFB0;
  }

  else
  {
    v9 = v0[49];
    sub_100026AC0(v0[60], v0[61]);
    v8 = sub_1004BFD6C;
    v7 = v9;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1004BFD6C()
{
  v1 = *(v0 + 448);
  v2 = *(v0 + 16);
  *(v0 + 104) = *(v0 + 32);
  v3 = *(v0 + 64);
  *(v0 + 120) = *(v0 + 48);
  *(v0 + 136) = v3;
  *(v0 + 152) = *(v0 + 80);
  *(v0 + 88) = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Received pairing request", v6, 2u);
  }

  v7 = *(v0 + 440);
  v8 = *(v0 + 448);
  v10 = *(v0 + 424);
  v9 = *(v0 + 432);
  v12 = *(v0 + 408);
  v11 = *(v0 + 416);
  v13 = *(v0 + 400);

  *(v0 + 160) = xmmword_100806670;
  *(v0 + 176) = 1;
  *(v0 + 184) = v12;
  *(v0 + 192) = v13;
  *(v0 + 200) = v9;
  *(v0 + 208) = v7;
  *(v0 + 216) = v11;
  *(v0 + 224) = v10;
  sub_100294008(v9, v7);
  sub_100294008(v11, v10);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Sending pairing response", v16, 2u);
  }

  *(v0 + 328) = &type metadata for SDTempPairingMessage.Response;
  *(v0 + 336) = sub_1004C2814();
  v17 = swift_allocObject();
  *(v0 + 304) = v17;
  v18 = *(v0 + 208);
  *(v17 + 48) = *(v0 + 192);
  *(v17 + 64) = v18;
  *(v17 + 80) = *(v0 + 224);
  v19 = *(v0 + 176);
  *(v17 + 16) = *(v0 + 160);
  *(v17 + 32) = v19;
  sub_1004C2868(v0 + 160, v0 + 232);
  v20 = swift_task_alloc();
  *(v0 + 512) = v20;
  *v20 = v0;
  v20[1] = sub_1004C0190;
  v21 = *(v0 + 456);

  return sub_100676434(v0 + 304);
}

uint64_t sub_1004BFFB0()
{
  v21 = v0;
  v1 = v0[63];
  v2 = v0[56];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[54];
    v5 = v0[55];
    v18 = v0[52];
    v19 = v0[53];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315138;
    v0[43] = v1;
    swift_errorRetain();
    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    v9 = String.init<A>(describing:)();
    v11 = sub_10000C4E4(v9, v10, &v20);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to exchange temporary identity: %s", v7, 0xCu);
    sub_10000C60C(v8);

    sub_100026AC0(v6, v5);
    sub_100026AC0(v18, v19);
  }

  else
  {
    v13 = v0[52];
    v12 = v0[53];
    sub_100026AC0(v0[54], v0[55]);
    sub_100026AC0(v13, v12);
  }

  v14 = v0[48];
  v15 = v0[45];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1004C0190()
{
  v2 = *v1;
  v3 = *(*v1 + 512);
  v10 = *v1;
  *(*v1 + 520) = v0;

  if (v0)
  {
    v4 = v2[49];
    v5 = sub_1004C0620;
  }

  else
  {
    v7 = v2[52];
    v6 = v2[53];
    v8 = v2[49];
    sub_100026AC0(v2[54], v2[55]);
    sub_100026AC0(v7, v6);
    sub_10000C60C(v2 + 38);
    v5 = sub_1004C02D8;
    v4 = v8;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1004C02D8()
{
  v1 = v0[56];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Sent pairing response", v4, 2u);
  }

  v5 = v0[46];
  v6 = v0[47];
  v7 = v0[45];

  v8 = v0[14];
  v9 = v0[15];
  v10 = v0[12];
  v11 = v0[13];
  v12 = v0[19];
  v33 = v0[16];
  v31 = v0[18];
  v32 = v0[17];
  v13 = [objc_allocWithZone(CUPairedPeer) init];
  UUID.init(uuidString:)();
  if ((*(v6 + 48))(v7, 1, v5) == 1)
  {
    isa = 0;
  }

  else
  {
    v15 = v0[46];
    v16 = v0[47];
    v17 = v0[45];
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v16 + 8))(v17, v15);
  }

  [v13 setIdentifier:isa];

  v18 = [objc_allocWithZone(RPIdentity) initWithPairedPeer:v13 type:15];
  if (!v18)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v19 = v18;
  v20 = v0[44];
  v21 = String._bridgeToObjectiveC()();
  [v19 setName:v21];

  v22 = Data._bridgeToObjectiveC()().super.isa;
  [v19 setDeviceIRKData:v22];

  v23 = Data._bridgeToObjectiveC()().super.isa;
  [v19 setEdPKData:v23];

  v24 = Array._bridgeToObjectiveC()().super.isa;
  [v19 setAccessGroups:v24];

  v25 = *(v20 + 24);
  if (v25)
  {
    v26 = *(v0[44] + 32);

    v25(v19);
    sub_1004C27E4((v0 + 20));
    sub_1002F5A40(v25, v26);
  }

  else
  {
    sub_1004C27E4((v0 + 20));
  }

  sub_1004C27B4((v0 + 11));
  v28 = v0[48];
  v29 = v0[45];

  v30 = v0[1];

  return v30();
}

uint64_t sub_1004C0620()
{
  v21 = v0;
  sub_1004C27E4((v0 + 20));
  sub_1004C27B4((v0 + 11));
  sub_10000C60C(v0 + 38);
  v1 = v0[65];
  v2 = v0[56];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[54];
    v5 = v0[55];
    v18 = v0[52];
    v19 = v0[53];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315138;
    v0[43] = v1;
    swift_errorRetain();
    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    v9 = String.init<A>(describing:)();
    v11 = sub_10000C4E4(v9, v10, &v20);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to exchange temporary identity: %s", v7, 0xCu);
    sub_10000C60C(v8);

    sub_100026AC0(v6, v5);
    sub_100026AC0(v18, v19);
  }

  else
  {
    v13 = v0[52];
    v12 = v0[53];
    sub_100026AC0(v0[54], v0[55]);
    sub_100026AC0(v13, v12);
  }

  v14 = v0[48];
  v15 = v0[45];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1004C0818(char *a1)
{
  v2 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v36 - v4;
  v6 = type metadata accessor for NWConnection.State();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v36 - v13;
  __chkstk_darwin(v12);
  v16 = &v36 - v15;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = result;
    if (qword_100973930 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000C4AC(v19, qword_1009803F8);
    v20 = *(v7 + 16);
    v40 = a1;
    v41 = v20;
    v20(v16, a1, v6);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v37 = v18;
      v24 = v23;
      v25 = swift_slowAlloc();
      v38 = v11;
      v36 = v25;
      v42 = v25;
      *v24 = 136315138;
      v41(v14, v16, v6);
      v26 = String.init<A>(describing:)();
      v39 = v5;
      v28 = v27;
      v29 = *(v7 + 8);
      v29(v16, v6);
      v30 = sub_10000C4E4(v26, v28, &v42);
      v5 = v39;

      *(v24 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v21, v22, "Connection state changed to %s", v24, 0xCu);
      sub_10000C60C(v36);
      v11 = v38;

      v18 = v37;
    }

    else
    {

      v29 = *(v7 + 8);
      v29(v16, v6);
    }

    v41(v11, v40, v6);
    v31 = (*(v7 + 88))(v11, v6);
    if (v31 == enum case for NWConnection.State.waiting(_:) || v31 == enum case for NWConnection.State.failed(_:))
    {

      return (v29)(v11, v6);
    }

    if (v31 == enum case for NWConnection.State.setup(_:) || v31 == enum case for NWConnection.State.preparing(_:))
    {
    }

    if (v31 == enum case for NWConnection.State.ready(_:))
    {
      v32 = type metadata accessor for TaskPriority();
      (*(*(v32 - 8) + 56))(v5, 1, 1, v32);
      v33 = swift_allocObject();
      v33[2] = 0;
      v33[3] = 0;
      v33[4] = v18;
      sub_1002B3098(0, 0, v5, &unk_1008066F8, v33);
    }

    v34 = enum case for NWConnection.State.cancelled(_:);
    v35 = v31;

    if (v35 != v34)
    {
      return (v29)(v11, v6);
    }
  }

  return result;
}

uint64_t sub_1004C0CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = *(*(type metadata accessor for SDTempPairingEndpoint(0) - 8) + 64) + 15;
  v4[3] = swift_task_alloc();
  v6 = type metadata accessor for SDTempPairingConnection.Role(0);
  v4[4] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v4[5] = swift_task_alloc();

  return _swift_task_switch(sub_1004C0D7C, 0, 0);
}

uint64_t sub_1004C0D7C()
{
  v1 = v0[4];
  sub_1004C25A8(v0[2] + OBJC_IVAR____TtC16DaemoniOSLibrary23SDTempPairingConnection_role, v0[5]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[5];
  if (EnumCaseMultiPayload == 1)
  {
    sub_1004C260C(v0[5], type metadata accessor for SDTempPairingConnection.Role);
    v4 = swift_task_alloc();
    v0[9] = v4;
    *v4 = v0;
    v4[1] = sub_1004C10C8;
    v5 = v0[2];

    return sub_1004BF48C();
  }

  else
  {
    v7 = v0[3];
    v8 = (v3 + *(sub_10028088C(&unk_10097CA30, &unk_100801610) + 48));
    v9 = *v8;
    v10 = v8[1];
    v0[6] = v10;
    sub_100413418(v3, v7);
    v11 = swift_task_alloc();
    v0[7] = v11;
    *v11 = v0;
    v11[1] = sub_1004C0F10;
    v13 = v0[2];
    v12 = v0[3];

    return sub_1004BDE60(v12, v9, v10);
  }
}

uint64_t sub_1004C0F10()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v6 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_1004C1248;
  }

  else
  {
    v4 = sub_1004C1040;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1004C1040()
{
  sub_1004C260C(v0[3], type metadata accessor for SDTempPairingEndpoint);
  v1 = v0[5];
  v2 = v0[3];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1004C10C8()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_1004C1408;
  }

  else
  {
    v3 = sub_1004C11DC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004C11DC()
{
  v1 = v0[5];
  v2 = v0[3];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1004C1248()
{
  sub_1004C260C(v0[3], type metadata accessor for SDTempPairingEndpoint);
  v1 = v0[8];
  if (qword_100973930 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_1009803F8);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "%@", v5, 0xCu);
    sub_10028924C(v6);
  }

  else
  {
  }

  v8 = v0[5];
  v9 = v0[3];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1004C1408()
{
  v1 = v0[10];
  if (qword_100973930 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_1009803F8);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "%@", v5, 0xCu);
    sub_10028924C(v6);
  }

  else
  {
  }

  v8 = v0[5];
  v9 = v0[3];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1004C15AC()
{
  sub_1002F5A40(*(v0 + 24), *(v0 + 32));
  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDTempPairingConnection_identifier;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1004C260C(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDTempPairingConnection_role, type metadata accessor for SDTempPairingConnection.Role);

  v3 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDTempPairingConnection_connection);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1004C16C4()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for SDTempPairingConnection.Role(319);
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_1004C17D8()
{
  sub_1004C184C();
  if (v0 <= 0x3F)
  {
    sub_1004C18B8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1004C184C()
{
  if (!qword_100980588)
  {
    type metadata accessor for SDTempPairingEndpoint(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100980588);
    }
  }
}

void sub_1004C18B8()
{
  if (!qword_100980590)
  {
    v0 = type metadata accessor for NWConnection();
    if (!v1)
    {
      atomic_store(v0, &qword_100980590);
    }
  }
}

uint64_t sub_1004C1900(void *a1)
{
  v3 = v1;
  v5 = sub_10028088C(&qword_1009805E0, &qword_100806AF8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18[-v8 - 8];
  v10 = a1[4];
  sub_10002CDC0(a1, a1[3]);
  sub_1004C2A7C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  LOBYTE(v20) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v12 = v3[1];
    v13 = v3[2];
    LOBYTE(v20) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = v3[3];
    v15 = v3[4];
    LOBYTE(v20) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v22 = *(v3 + 5);
    v20 = *(v3 + 5);
    v19 = 3;
    sub_100320328(&v22, v18);
    sub_1002F3198();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100026AC0(v20, *(&v20 + 1));
    v20 = *(v3 + 7);
    v21 = v20;
    v19 = 4;
    sub_100320328(&v21, v18);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100026AC0(v20, *(&v20 + 1));
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1004C1B78(void *a1)
{
  v3 = v1;
  v5 = sub_10028088C(&qword_100980600, &qword_100806B08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18[-v8 - 8];
  v10 = a1[4];
  sub_10002CDC0(a1, a1[3]);
  sub_1004C35C8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  LOBYTE(v20) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v12 = v3[1];
    v13 = *(v3 + 16);
    LOBYTE(v20) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v14 = v3[3];
    v15 = v3[4];
    LOBYTE(v20) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v22 = *(v3 + 5);
    v20 = *(v3 + 5);
    v19 = 3;
    sub_100320328(&v22, v18);
    sub_1002F3198();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100026AC0(v20, *(&v20 + 1));
    v20 = *(v3 + 7);
    v21 = v20;
    v19 = 4;
    sub_100320328(&v21, v18);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100026AC0(v20, *(&v20 + 1));
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1004C1DF4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return static UUID.== infix(_:_:)();
}

uint64_t sub_1004C1E10()
{
  v1 = *v0;
  v2 = 0x6E6F6973726576;
  v3 = 0x696669746E656469;
  v4 = 0x654B63696C627570;
  if (v1 != 3)
  {
    v4 = 0x5249656369766564;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1701667182;
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

uint64_t sub_1004C1EB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1004C2AD0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1004C1EE0(uint64_t a1)
{
  v2 = sub_1004C2A7C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004C1F1C(uint64_t a1)
{
  v2 = sub_1004C2A7C();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_1004C1F58@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1004C2C98(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_1004C1FAC(void *a1)
{
  v5 = v1[2];
  v6 = v1[3];
  v7 = *(v1 + 8);
  v3 = *v1;
  v4 = v1[1];
  return sub_1004C1900(a1);
}

uint64_t sub_1004C1FF0()
{
  v1 = *v0;
  v2 = 0x6E6F6973726576;
  v3 = 0x696669746E656469;
  v4 = 0x654B63696C627570;
  if (v1 != 3)
  {
    v4 = 0x5249656369766564;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x726F727265;
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

uint64_t sub_1004C209C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1004C3070(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1004C20C4(uint64_t a1)
{
  v2 = sub_1004C35C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004C2100(uint64_t a1)
{
  v2 = sub_1004C35C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_1004C213C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1004C3234(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_1004C2190(void *a1)
{
  v5 = v1[2];
  v6 = v1[3];
  v7 = *(v1 + 8);
  v3 = *v1;
  v4 = v1[1];
  return sub_1004C1B78(a1);
}

void *sub_1004C21D4(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = type metadata accessor for NWEndpoint();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SDTempPairingEndpoint(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SDTempPairingConnection.Role(0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = (&v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4[3] = 0;
  v4[4] = 0;
  UUID.init()();
  sub_1004C25A8(a1, v4 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDTempPairingConnection_role);
  *(v4 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDTempPairingConnection_temporaryIdentity) = a2;
  v4[2] = a3;
  sub_1004C25A8(a1, v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *(v4 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDTempPairingConnection_connection) = *v20;
    v21 = a2;
    v22 = a3;
  }

  else
  {
    v23 = v20 + *(sub_10028088C(&unk_10097CA30, &unk_100801610) + 48);
    v41 = v8;
    v24 = *(v23 + 1);
    v25 = a2;
    v26 = a3;

    sub_100413418(v20, v16);
    v27 = type metadata accessor for NWProtocolTCP.Options();
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();
    NWProtocolTCP.Options.init()();
    dispatch thunk of NWProtocolTCP.Options.enableKeepalive.setter();
    dispatch thunk of NWProtocolTCP.Options.keepaliveIdle.setter();
    v30 = type metadata accessor for NWProtocolTLS.Options();
    v31 = *(v30 + 48);
    v32 = *(v30 + 52);
    swift_allocObject();
    NWProtocolTLS.Options.init()();
    v33 = dispatch thunk of NWProtocolTLS.Options.securityProtocolOptions.getter();
    aBlock[4] = sub_1004BDC54;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10062FDCC;
    aBlock[3] = &unk_1008E44E0;
    v34 = _Block_copy(aBlock);
    sec_protocol_options_set_verify_block(v33, v34, v26);
    _Block_release(v34);
    swift_unknownObjectRelease();
    type metadata accessor for NWParameters();

    NWParameters.__allocating_init(tls:tcp:)();
    NWParameters.includePeerToPeer.setter();
    (*(v9 + 16))(v12, v16, v41);
    v35 = type metadata accessor for NWConnection();
    v36 = *(v35 + 48);
    v37 = *(v35 + 52);
    swift_allocObject();
    v38 = NWConnection.init(to:using:)();

    sub_1004C260C(v16, type metadata accessor for SDTempPairingEndpoint);
    *(v4 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDTempPairingConnection_connection) = v38;
  }

  sub_1004BDC80();
  sub_1004C260C(a1, type metadata accessor for SDTempPairingConnection.Role);
  return v4;
}

uint64_t sub_1004C25A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SDTempPairingConnection.Role(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004C260C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1004C2674(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C04;

  return sub_1004C0CBC(a1, v4, v5, v6);
}

unint64_t sub_1004C2728()
{
  result = qword_1009805C0;
  if (!qword_1009805C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009805C0);
  }

  return result;
}

unint64_t sub_1004C2814()
{
  result = qword_1009805D0;
  if (!qword_1009805D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009805D0);
  }

  return result;
}

__n128 sub_1004C28B0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1004C28D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1004C291C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1004C297C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1004C29C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1004C2A28()
{
  result = qword_1009805D8;
  if (!qword_1009805D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009805D8);
  }

  return result;
}

unint64_t sub_1004C2A7C()
{
  result = qword_1009805E8;
  if (!qword_1009805E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009805E8);
  }

  return result;
}

uint64_t sub_1004C2AD0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x654B63696C627570 && a2 == 0xE900000000000079 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x5249656369766564 && a2 == 0xED0000617461444BLL)
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

uint64_t sub_1004C2C98@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10028088C(&qword_100980608, &qword_100806B10);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  sub_10002CDC0(a1, a1[3]);
  sub_1004C2A7C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000C60C(a1);
  }

  LOBYTE(v40) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v40) = 1;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v34 = v13;
  v33 = v12;
  LOBYTE(v40) = 2;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v32 = v15;
  v30 = v14;
  LOBYTE(v35) = 3;
  v31 = sub_1002F309C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v16 = v41;
  v29 = v40;
  v51 = 4;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v31 = v49;
  v28 = v50;
  v17 = v33;
  *&v35 = v11;
  *(&v35 + 1) = v33;
  v18 = v34;
  v19 = v16;
  v27 = v16;
  v20 = v30;
  *&v36 = v34;
  *(&v36 + 1) = v30;
  v21 = v32;
  v22 = v29;
  *&v37 = v32;
  *(&v37 + 1) = v29;
  *&v38 = v19;
  *(&v38 + 1) = v49;
  v39 = v50;
  sub_1004C277C(&v35, &v40);
  sub_10000C60C(a1);
  v40 = v11;
  v41 = v17;
  v42 = v18;
  v43 = v20;
  v44 = v21;
  v45 = v22;
  v46 = v27;
  v47 = v31;
  v48 = v28;
  result = sub_1004C27B4(&v40);
  v24 = v38;
  *(a2 + 32) = v37;
  *(a2 + 48) = v24;
  *(a2 + 64) = v39;
  v25 = v36;
  *a2 = v35;
  *(a2 + 16) = v25;
  return result;
}

uint64_t sub_1004C3070(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x654B63696C627570 && a2 == 0xE900000000000079 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x5249656369766564 && a2 == 0xED0000617461444BLL)
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

uint64_t sub_1004C3234@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10028088C(&qword_1009805F0, &qword_100806B00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  sub_10002CDC0(a1, a1[3]);
  sub_1004C35C8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000C60C(a1);
  }

  LOBYTE(v35) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v35) = 1;
  v29 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v46 = v12 & 1;
  LOBYTE(v35) = 2;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v28 = v14;
  v27 = v13;
  LOBYTE(v30) = 3;
  sub_1002F309C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v25 = v35;
  v26 = v36;
  v47 = 4;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v24 = v44;
  v23 = v45;
  *&v30 = v11;
  *(&v30 + 1) = v29;
  v15 = v46;
  LOBYTE(v31) = v46;
  v16 = v27;
  v17 = v28;
  *(&v31 + 1) = v27;
  *&v32 = v28;
  v18 = v25;
  v19 = v26;
  *(&v32 + 1) = v25;
  *&v33 = v26;
  *(&v33 + 1) = v44;
  v34 = v45;
  sub_1004C2868(&v30, &v35);
  sub_10000C60C(a1);
  v35 = v11;
  v36 = v29;
  v37 = v15;
  v38 = v16;
  v39 = v17;
  v40 = v18;
  v41 = v19;
  v42 = v24;
  v43 = v23;
  result = sub_1004C27E4(&v35);
  v21 = v33;
  *(a2 + 32) = v32;
  *(a2 + 48) = v21;
  *(a2 + 64) = v34;
  v22 = v31;
  *a2 = v30;
  *(a2 + 16) = v22;
  return result;
}

unint64_t sub_1004C35C8()
{
  result = qword_1009805F8;
  if (!qword_1009805F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009805F8);
  }

  return result;
}