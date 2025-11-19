uint64_t sub_10006C930(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 200);
  v13 = *v2;
  *(*v2 + 208) = v1;

  if (v1)
  {
    v7 = v4[20];
    v6 = v4[21];
    v8 = v4[17];
    v9 = v4[6];

    v10 = sub_10006DCDC;
    v11 = v9;
  }

  else
  {
    v11 = v4[6];
    v4[27] = a1;
    v10 = sub_10006CA7C;
  }

  return _swift_task_switch(v10, v11, 0);
}

size_t sub_10006CA7C()
{
  v1 = *(v0 + 216);
  v49 = *(v0 + 160);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 288);
  CKSyncEngine.state.getter();

  sub_10005F5CC(&qword_100128490, &qword_1000E6420);
  v5 = type metadata accessor for CKSyncEngine.PendingDatabaseChange();
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000E61E0;
  v10 = objc_allocWithZone(CKRecordZone);
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 initWithZoneName:v11];

  *(v9 + v8) = v12;
  (*(v6 + 104))(v9 + v8, v4, v5);
  CKSyncEngine.State.add(pendingDatabaseChanges:)(v9);

  v13 = *(v0 + 160);
  if (v49 >> 62)
  {
    if (v13 < 0)
    {
      v29 = *(v0 + 160);
    }

    v14 = _CocoaArrayWrapper.endIndex.getter();
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_13:
    v30 = *(v0 + 160);

    v16 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
    goto LABEL_13;
  }

LABEL_3:
  *(v0 + 24) = _swiftEmptyArrayStorage;
  result = sub_10009265C(0, v14 & ~(v14 >> 63), 0);
  if (v14 < 0)
  {
    __break(1u);
    return result;
  }

  v16 = *(v0 + 24);
  v17 = *(v0 + 160);
  if ((v17 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v14; ++i)
    {
      v19 = *(v0 + 160);
      v20 = *(v0 + 292);
      v21 = *(v0 + 96);
      v22 = *(v0 + 56);
      v23 = *(v0 + 64);
      *v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      (*(v23 + 104))(v21, v20, v22);
      *(v0 + 24) = v16;
      v25 = v16[2];
      v24 = v16[3];
      if (v25 >= v24 >> 1)
      {
        sub_10009265C(v24 > 1, v25 + 1, 1);
        v16 = *(v0 + 24);
      }

      v26 = *(v0 + 96);
      v27 = *(v0 + 56);
      v28 = *(v0 + 64);
      v16[2] = v25 + 1;
      (*(v28 + 32))(v16 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v25, v26, v27);
    }
  }

  else
  {
    v31 = (v17 + 32);
    v32 = *(*(v0 + 64) + 104);
    do
    {
      v33 = *(v0 + 292);
      v34 = *(v0 + 56);
      v35 = *(v0 + 64) + 104;
      v36 = *v31;
      **(v0 + 72) = *v31;
      v32();
      *(v0 + 24) = v16;
      v38 = v16[2];
      v37 = v16[3];
      v39 = v36;
      if (v38 >= v37 >> 1)
      {
        sub_10009265C(v37 > 1, v38 + 1, 1);
        v16 = *(v0 + 24);
      }

      v41 = *(v0 + 64);
      v40 = *(v0 + 72);
      v42 = *(v0 + 56);
      v16[2] = v38 + 1;
      (*(v41 + 32))(v16 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v38, v40, v42);
      ++v31;
      --v14;
    }

    while (v14);
  }

  v43 = *(v0 + 160);

LABEL_19:
  *(v0 + 224) = v16;
  v44 = *(v0 + 192);
  v50 = (*(v0 + 184) + **(v0 + 184));
  v45 = *(*(v0 + 184) + 4);
  v46 = swift_task_alloc();
  *(v0 + 232) = v46;
  *v46 = v0;
  v46[1] = sub_10006CE9C;
  v47 = *(v0 + 192);
  v48 = *(v0 + 48);

  return v50();
}

uint64_t sub_10006CE9C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 232);
  v13 = *v2;
  *(*v2 + 240) = v1;

  if (v1)
  {
    v6 = v4[28];
    v7 = v4[21];
    v8 = v4[17];
    v9 = v4[6];

    v10 = sub_10006DD78;
    v11 = v9;
  }

  else
  {
    v11 = v4[6];
    v4[31] = a1;
    v10 = sub_10006CFEC;
  }

  return _swift_task_switch(v10, v11, 0);
}

uint64_t sub_10006CFEC()
{
  v82 = v0;
  v2 = *(v0 + 248);
  v3._rawValue = *(v0 + 224);
  CKSyncEngine.state.getter();

  CKSyncEngine.State.add(pendingRecordZoneChanges:)(v3);

  v4 = *(v0 + 168);
  if (!v4)
  {
    v17 = *(v0 + 136);
    v18 = *(v0 + 144);

LABEL_36:
    swift_unknownObjectRelease();
    goto LABEL_37;
  }

  v1 = v4 >> 62;
  if (!(v4 >> 62))
  {
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_33:

    if (qword_100129980 == -1)
    {
      goto LABEL_34;
    }

    goto LABEL_53;
  }

  if (v4 < 0)
  {
    v50 = *(v0 + 168);
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_33;
  }

LABEL_4:
  if (qword_100129980 != -1)
  {
LABEL_51:
    swift_once();
  }

  v5 = *(v0 + 136);
  v6 = type metadata accessor for Logger();
  sub_100066000(v6, qword_100129988);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 136);
  if (v9)
  {
    v11 = *(v0 + 128);
    v12 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    *v12 = 136315394;
    sub_100092C8C(0, &qword_100128458, CKRecordID_ptr);
    v13 = Array.description.getter();
    v15 = sub_100065658(v13, v14, &v81);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    v16 = sub_100065658(v11, v10, &v81);

    *(v12 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v7, v8, "Request to delete records %s for zone %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v19 = *(v0 + 168) & 0xFFFFFFFFFFFFFF8;
  if (v1)
  {
    if (v4 >= 0)
    {
      v32 = *(v0 + 168) & 0xFFFFFFFFFFFFFF8;
    }

    v20 = _CocoaArrayWrapper.endIndex.getter();
    if (v20)
    {
      goto LABEL_11;
    }

LABEL_21:

    v21 = _swiftEmptyArrayStorage;
LABEL_27:
    *(v0 + 256) = v21;
    v45 = *(**(v0 + 48) + 192);
    v80 = (v45 + *v45);
    v46 = v45[1];
    v47 = swift_task_alloc();
    *(v0 + 264) = v47;
    *v47 = v0;
    v47[1] = sub_10006D880;
    v48 = *(v0 + 48);

    return v80();
  }

  v20 = *((*(v0 + 168) & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v20)
  {
    goto LABEL_21;
  }

LABEL_11:
  *(v0 + 16) = _swiftEmptyArrayStorage;
  sub_10009265C(0, v20 & ~(v20 >> 63), 0);
  if ((v20 & 0x8000000000000000) == 0)
  {
    v21 = *(v0 + 16);
    if ((*(v0 + 168) & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v20; ++i)
      {
        v23 = *(v0 + 296);
        v24 = *(v0 + 88);
        v25 = *(v0 + 56);
        v26 = *(v0 + 64);
        *v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        (*(v26 + 104))(v24, v23, v25);
        *(v0 + 16) = v21;
        v28 = v21[2];
        v27 = v21[3];
        if (v28 >= v27 >> 1)
        {
          sub_10009265C(v27 > 1, v28 + 1, 1);
          v21 = *(v0 + 16);
        }

        v29 = *(v0 + 88);
        v30 = *(v0 + 56);
        v31 = *(v0 + 64);
        v21[2] = v28 + 1;
        (*(v31 + 32))(v21 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v28, v29, v30);
      }
    }

    else
    {
      v33 = (v4 + 32);
      v34 = *(*(v0 + 64) + 104);
      do
      {
        v35 = *(v0 + 296);
        v36 = *(v0 + 56);
        v37 = *(v0 + 64) + 104;
        v38 = *v33;
        **(v0 + 80) = *v33;
        v34();
        *(v0 + 16) = v21;
        v40 = v21[2];
        v39 = v21[3];
        v41 = v38;
        if (v40 >= v39 >> 1)
        {
          sub_10009265C(v39 > 1, v40 + 1, 1);
          v21 = *(v0 + 16);
        }

        v42 = *(v0 + 80);
        v43 = *(v0 + 56);
        v44 = *(v0 + 64);
        v21[2] = v40 + 1;
        (*(v44 + 32))(v21 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v40, v42, v43);
        ++v33;
        --v20;
      }

      while (v20);
    }

    goto LABEL_27;
  }

  __break(1u);
LABEL_53:
  swift_once();
LABEL_34:
  v51 = *(v0 + 136);
  v52 = type metadata accessor for Logger();
  sub_100066000(v52, qword_100129988);

  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.info.getter();

  v55 = os_log_type_enabled(v53, v54);
  v56 = *(v0 + 136);
  v4 = *(v0 + 144);
  if (v55)
  {
    v57 = *(v0 + 128);
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v81 = v59;
    *v58 = 136315138;
    v1 = sub_100065658(v57, v56, &v81);

    *(v58 + 4) = v1;
    _os_log_impl(&_mh_execute_header, v53, v54, "No pending record delete request for zone %s", v58, 0xCu);
    sub_10005D588(v59);

    goto LABEL_36;
  }

  swift_unknownObjectRelease();

LABEL_37:
  v60 = *(v0 + 120);
  v61 = (*(v0 + 112) - 1) & *(v0 + 112);
  if (v61)
  {
    v62 = *(v0 + 104);
LABEL_43:
    *(v0 + 112) = v61;
    *(v0 + 120) = v60;
    v64 = (v60 << 10) | (16 * __clz(__rbit64(v61)));
    v65 = (*(v62 + 48) + v64);
    *(v0 + 128) = *v65;
    *(v0 + 136) = v65[1];
    v66 = (*(v62 + 56) + v64);
    *(v0 + 144) = *v66;
    v67 = v66[1];
    ObjectType = swift_getObjectType();
    v69 = *(v67 + 160);

    swift_unknownObjectRetain();
    v79 = (v69 + *v69);
    v70 = v69[1];
    v71 = swift_task_alloc();
    *(v0 + 152) = v71;
    *v71 = v0;
    v71[1] = sub_10006BC18;
    v73 = *(v0 + 32);
    v72 = *(v0 + 40);

    return v79(v73, v72, ObjectType, v67);
  }

  else
  {
    while (1)
    {
      v63 = v60 + 1;
      if (__OFADD__(v60, 1))
      {
        __break(1u);
        goto LABEL_51;
      }

      v62 = *(v0 + 104);
      if (v63 >= (((1 << *(v0 + 300)) + 63) >> 6))
      {
        break;
      }

      v61 = *(v62 + 8 * v63 + 64);
      ++v60;
      if (v61)
      {
        v60 = v63;
        goto LABEL_43;
      }
    }

    v74 = *(v0 + 88);
    v75 = *(v0 + 96);
    v77 = *(v0 + 72);
    v76 = *(v0 + 80);

    v78 = *(v0 + 8);

    return v78();
  }
}

uint64_t sub_10006D880(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 264);
  v6 = *v2;
  *(*v2 + 272) = v1;

  if (v1)
  {
    v7 = v4[32];
    v8 = v4[6];

    v9 = sub_10006DE14;
    v10 = v8;
  }

  else
  {
    v10 = v4[6];
    v4[35] = a1;
    v9 = sub_10006D9C0;
  }

  return _swift_task_switch(v9, v10, 0);
}

uint64_t sub_10006D9C0()
{
  v1 = *(v0 + 280);
  v2._rawValue = *(v0 + 256);
  v3 = *(v0 + 144);
  CKSyncEngine.state.getter();

  CKSyncEngine.State.add(pendingRecordZoneChanges:)(v2);
  swift_unknownObjectRelease();

  v5 = *(v0 + 120);
  v6 = (*(v0 + 112) - 1) & *(v0 + 112);
  if (v6)
  {
    result = *(v0 + 104);
LABEL_7:
    *(v0 + 112) = v6;
    *(v0 + 120) = v5;
    v8 = (v5 << 10) | (16 * __clz(__rbit64(v6)));
    v9 = (*(result + 48) + v8);
    *(v0 + 128) = *v9;
    *(v0 + 136) = v9[1];
    v10 = (*(result + 56) + v8);
    *(v0 + 144) = *v10;
    v11 = v10[1];
    ObjectType = swift_getObjectType();
    v13 = *(v11 + 160);

    swift_unknownObjectRetain();
    v23 = (v13 + *v13);
    v14 = v13[1];
    v15 = swift_task_alloc();
    *(v0 + 152) = v15;
    *v15 = v0;
    v15[1] = sub_10006BC18;
    v17 = *(v0 + 32);
    v16 = *(v0 + 40);

    return v23(v17, v16, ObjectType, v11);
  }

  else
  {
    while (1)
    {
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
        return result;
      }

      result = *(v0 + 104);
      if (v7 >= (((1 << *(v0 + 300)) + 63) >> 6))
      {
        break;
      }

      v6 = *(result + 8 * v7 + 64);
      ++v5;
      if (v6)
      {
        v5 = v7;
        goto LABEL_7;
      }
    }

    v18 = *(v0 + 88);
    v19 = *(v0 + 96);
    v21 = *(v0 + 72);
    v20 = *(v0 + 80);

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_10006DC40()
{
  v1 = v0[18];
  v2 = v0[13];

  swift_unknownObjectRelease();
  v3 = v0[22];
  v5 = v0[11];
  v4 = v0[12];
  v7 = v0[9];
  v6 = v0[10];

  v8 = v0[1];

  return v8();
}

uint64_t sub_10006DCDC()
{
  v1 = v0[18];
  v2 = v0[13];

  swift_unknownObjectRelease();
  v3 = v0[26];
  v5 = v0[11];
  v4 = v0[12];
  v7 = v0[9];
  v6 = v0[10];

  v8 = v0[1];

  return v8();
}

uint64_t sub_10006DD78()
{
  v1 = v0[18];
  v2 = v0[13];

  swift_unknownObjectRelease();
  v3 = v0[30];
  v5 = v0[11];
  v4 = v0[12];
  v7 = v0[9];
  v6 = v0[10];

  v8 = v0[1];

  return v8();
}

uint64_t sub_10006DE14()
{
  v1 = v0[18];
  v2 = v0[13];

  swift_unknownObjectRelease();
  v3 = v0[34];
  v5 = v0[11];
  v4 = v0[12];
  v7 = v0[9];
  v6 = v0[10];

  v8 = v0[1];

  return v8();
}

uint64_t sub_10006DEB0()
{
  v1[3] = v0;
  v2 = *(*(sub_10005F5CC(&qword_100128470, &qword_1000E6408) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v3 = type metadata accessor for CKSyncEngine.Configuration();
  v1[5] = v3;
  v4 = *(v3 - 8);
  v1[6] = v4;
  v5 = *(v4 + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_10006DFB4, v0, 0);
}

uint64_t sub_10006DFB4()
{
  if ((*(*v0[3] + 136))())
  {

    if (qword_100129980 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100066000(v1, qword_100129988);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "nil the existing sync engine", v4, 2u);
    }

    v5 = v0[3];

    (*(*v5 + 144))(0);
  }

  v6 = *(v0[3] + 112);
  v0[9] = v6;
  v7 = (*v6 + 152) & 0xFFFFFFFFFFFFLL | 0xE7DC000000000000;
  v0[10] = *(*v6 + 152);
  v0[11] = v7;

  return _swift_task_switch(sub_10006E150, v6, 0);
}

uint64_t sub_10006E150()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  v3 = *(v0 + 24);
  (*(v0 + 80))();
  v4 = *(*v3 + 200);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  *v6 = v0;
  v6[1] = sub_10006E27C;
  v7 = *(v0 + 24);

  return v9();
}

uint64_t sub_10006E27C()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_10006EA48;
  }

  else
  {
    v6 = sub_10006E3A8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10006E3A8()
{
  v39 = v0;
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  v7 = [v5[15] privateCloudDatabase];
  v8 = type metadata accessor for CKSyncEngine.State.Serialization();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  sub_100092BD4(&qword_100128478, v9, type metadata accessor for MACloudSyncedDatabase);
  swift_unknownObjectRetain();
  CKSyncEngine.Configuration.init(database:stateSerialization:delegate:)();
  CKSyncEngine.Configuration.automaticallySync.setter();
  CKSyncEngine.Configuration.apsMachServiceName.setter();
  (*(v4 + 16))(v1, v2, v3);
  v10 = type metadata accessor for CKSyncEngine();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = CKSyncEngine.init(_:)();
  v0[14] = v13;
  v14 = *(*v5 + 18);

  v14(v15);
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100066000(v16, qword_100129988);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v38 = v20;
    *v19 = 136315138;
    v0[2] = v13;
    sub_100092BD4(&qword_100128480, 255, &type metadata accessor for CKSyncEngine);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = sub_100065658(v21, v22, &v38);

    *(v19 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v17, v18, "ReInitialized sync engine: %s", v19, 0xCu);
    sub_10005D588(v20);
  }

  v24 = (*(*v0[3] + 160))();
  v0[15] = v25;
  if (v25)
  {
    v26 = v24;
    v27 = v25;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Account identifier fetched, try to save all local data not yet uploaded", v30, 2u);
    }

    v31 = swift_task_alloc();
    v0[16] = v31;
    *v31 = v0;
    v31[1] = sub_10006E844;
    v32 = v0[3];

    return sub_10006B8A0(v26, v27);
  }

  else
  {
    (*(v0[6] + 8))(v0[8], v0[5]);

    v35 = v0[7];
    v34 = v0[8];
    v36 = v0[4];

    v37 = v0[1];

    return v37();
  }
}

uint64_t sub_10006E844()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;

  v5 = *(v2 + 120);
  v6 = *(v2 + 24);
  if (v0)
  {

    v7 = sub_100093B2C;
  }

  else
  {

    v7 = sub_10006E9A0;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10006E9A0()
{
  v1 = v0[14];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[6];

  (*(v4 + 8))(v2, v3);
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[4];

  v8 = v0[1];

  return v8();
}

uint64_t sub_10006EA48()
{
  v48 = v0;
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = type metadata accessor for Logger();
  sub_100066000(v2, qword_100129988);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[13];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to fetch account identifier: %@, intiate sync engine without account identifier", v7, 0xCu);
    sub_100066C80(v8, &qword_1001287F0, &qword_1000E6C40);
  }

  else
  {
  }

  v11 = v0[7];
  v10 = v0[8];
  v12 = v0[5];
  v13 = v0[6];
  v14 = v0[3];
  v15 = v0[4];
  v16 = [v14[15] privateCloudDatabase];
  v17 = type metadata accessor for CKSyncEngine.State.Serialization();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  sub_100092BD4(&qword_100128478, v18, type metadata accessor for MACloudSyncedDatabase);
  swift_unknownObjectRetain();
  CKSyncEngine.Configuration.init(database:stateSerialization:delegate:)();
  CKSyncEngine.Configuration.automaticallySync.setter();
  CKSyncEngine.Configuration.apsMachServiceName.setter();
  (*(v13 + 16))(v11, v10, v12);
  v19 = type metadata accessor for CKSyncEngine();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = CKSyncEngine.init(_:)();
  v0[14] = v22;
  v23 = *(*v14 + 18);

  v23(v24);
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  sub_100066000(v2, qword_100129988);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v47 = v28;
    *v27 = 136315138;
    v0[2] = v22;
    sub_100092BD4(&qword_100128480, 255, &type metadata accessor for CKSyncEngine);
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = sub_100065658(v29, v30, &v47);

    *(v27 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v25, v26, "ReInitialized sync engine: %s", v27, 0xCu);
    sub_10005D588(v28);
  }

  v33 = (*(*v0[3] + 160))(v32);
  v0[15] = v34;
  if (v34)
  {
    v35 = v33;
    v36 = v34;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "Account identifier fetched, try to save all local data not yet uploaded", v39, 2u);
    }

    v40 = swift_task_alloc();
    v0[16] = v40;
    *v40 = v0;
    v40[1] = sub_10006E844;
    v41 = v0[3];

    return sub_10006B8A0(v35, v36);
  }

  else
  {
    (*(v0[6] + 8))(v0[8], v0[5]);

    v44 = v0[7];
    v43 = v0[8];
    v45 = v0[4];

    v46 = v0[1];

    return v46();
  }
}

uint64_t sub_10006F020(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_10006F040, v1, 0);
}

uint64_t sub_10006F040()
{
  v1 = *(v0[3] + 112);
  v0[4] = v1;
  v2 = (*v1 + 112) & 0xFFFFFFFFFFFFLL | 0x5821000000000000;
  v0[5] = *(*v1 + 112);
  v0[6] = v2;
  return _swift_task_switch(sub_10006F080, v1, 0);
}

uint64_t sub_10006F080()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  v3 = (*(v0 + 40))();
  *(v0 + 56) = 0;
  *(v0 + 64) = v3;
  *(v0 + 72) = v4;
  v5 = *(v0 + 24);

  return _swift_task_switch(sub_10006F13C, v5, 0);
}

uint64_t sub_10006F13C()
{
  v1 = v0[9];
  if (v1 >> 60 == 15)
  {
    v2 = type metadata accessor for CKSyncEngine.State.Serialization();
    v3 = 1;
  }

  else
  {
    v4 = v0[7];
    v5 = v0[8];
    v6 = v0[2];
    v7 = type metadata accessor for JSONDecoder();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    sub_10005F304(v5, v1);
    JSONDecoder.init()();
    v2 = type metadata accessor for CKSyncEngine.State.Serialization();
    sub_100092BD4(&qword_100128498, 255, &type metadata accessor for CKSyncEngine.State.Serialization);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v11 = v0[8];
    v10 = v0[9];
    if (v4)
    {

      sub_10005F69C(v11, v10);
      sub_10005F69C(v11, v10);
      v12 = v0[1];
      goto LABEL_7;
    }

    sub_10005F69C(v0[8], v0[9]);
    sub_10005F69C(v11, v10);

    v3 = 0;
  }

  (*(*(v2 - 8) + 56))(v0[2], v3, 1, v2);
  v12 = v0[1];
LABEL_7:

  return v12();
}

uint64_t sub_10006F2F8(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return _swift_task_switch(sub_10006F31C, v2, 0);
}

uint64_t sub_10006F31C()
{
  v42 = v0;
  v1 = *(**(v0 + 40) + 136);
  v2 = v1();
  if (v2 && (v3 = *(v0 + 32), v4 = v2, , v3 == v4))
  {
    if (qword_100129980 != -1)
    {
      swift_once();
    }

    v22 = *(v0 + 32);
    v23 = type metadata accessor for Logger();
    *(v0 + 48) = sub_100066000(v23, qword_100129988);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = *(v0 + 32);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v41[0] = v28;
      *v27 = 136315138;
      *(v0 + 16) = v26;
      type metadata accessor for CKSyncEngine();
      sub_100092BD4(&qword_100128480, 255, &type metadata accessor for CKSyncEngine);
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = sub_100065658(v29, v30, v41);

      *(v27 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v24, v25, "Saving sync state for active sync engine %s", v27, 0xCu);
      sub_10005D588(v28);
    }

    v32 = *(v0 + 24);
    v33 = type metadata accessor for JSONEncoder();
    v34 = *(v33 + 48);
    v35 = *(v33 + 52);
    swift_allocObject();
    JSONEncoder.init()();
    type metadata accessor for CKSyncEngine.State.Serialization();
    sub_100092BD4(&qword_1001284A8, 255, &type metadata accessor for CKSyncEngine.State.Serialization);
    v36 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    *(v0 + 56) = 0;
    *(v0 + 64) = v36;
    *(v0 + 72) = v37;
    v38 = *(v0 + 40);

    v39 = *(v38 + 112);
    *(v0 + 80) = v39;
    v40 = (*v39 + 120) & 0xFFFFFFFFFFFFLL | 0x3697000000000000;
    *(v0 + 88) = *(*v39 + 120);
    *(v0 + 96) = v40;

    return _swift_task_switch(sub_10006F930, v39, 0);
  }

  else
  {
    if (qword_100129980 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 32);
    v5 = *(v0 + 40);
    v7 = type metadata accessor for Logger();
    sub_100066000(v7, qword_100129988);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 32);
      v11 = *(v0 + 40);
      v12 = swift_slowAlloc();
      v41[0] = swift_slowAlloc();
      *v12 = 136315394;
      *(v0 + 16) = v10;
      type metadata accessor for CKSyncEngine();
      sub_100092BD4(&qword_100128480, 255, &type metadata accessor for CKSyncEngine);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      v15 = sub_100065658(v13, v14, v41);

      *(v12 + 4) = v15;
      *(v12 + 12) = 2080;
      *(v0 + 16) = (v1)(v16);
      sub_10005F5CC(&qword_1001284A0, &qword_1000E6440);
      v17 = String.init<A>(describing:)();
      v19 = sub_100065658(v17, v18, v41);

      *(v12 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v8, v9, "Ignore sync state for inactive sync engine %s, active engine is %s", v12, 0x16u);
      swift_arrayDestroy();
    }

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_10006F930()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);
  (*(v0 + 88))(*(v0 + 64), *(v0 + 72));
  *(v0 + 104) = v3;
  v4 = *(v0 + 40);
  if (v3)
  {
    v5 = sub_10006FA20;
  }

  else
  {
    v5 = sub_10006F9C0;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10006F9C0()
{
  sub_10005F358(v0[8], v0[9]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_10006FA20()
{
  sub_10005F358(v0[8], v0[9]);
  v1 = v0[13];
  v2 = v0[6];
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
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to save sync state: %@", v5, 0xCu);
    sub_100066C80(v6, &qword_1001287F0, &qword_1000E6C40);
  }

  else
  {
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_10006FB84()
{
  *(v1 + 16) = v0;
  v2 = *(*v0 + 248);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 24) = v4;
  *v4 = v1;
  v4[1] = sub_10006FC98;

  return v6();
}

uint64_t sub_10006FC98()
{
  v2 = *(*v1 + 24);
  v3 = *v1;
  v3[4] = v0;

  if (v0)
  {
    v4 = v3[2];

    return _swift_task_switch(sub_10006FDCC, v4, 0);
  }

  else
  {
    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_10006FDCC()
{
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = type metadata accessor for Logger();
  sub_100066000(v2, qword_100129988);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 32);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to reset sync state: %@", v7, 0xCu);
    sub_100066C80(v8, &qword_1001287F0, &qword_1000E6C40);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10006FF74(uint64_t a1, void *a2)
{
  v5 = *(v2 + 128);
  if (*(v5 + 16) && (v6 = sub_100065A98(a1, a2), (v7 & 1) != 0))
  {
    v8 = (*(v5 + 56) + 16 * v6);
    v9 = *v8;
    v10 = v8[1];
    return swift_unknownObjectRetain();
  }

  else
  {
    _StringGuts.grow(_:)(45);

    v12._countAndFlagsBits = a1;
    v12._object = a2;
    String.append(_:)(v12);
    v13._object = 0x80000001000F0E80;
    v13._countAndFlagsBits = 0xD000000000000022;
    String.append(_:)(v13);
    v14 = nullsub_1(6, 0x656D614E656E6F7ALL, 0xE900000000000020);
    v16 = v15;
    v18 = v17;
    sub_100092A98();
    swift_allocError();
    *v19 = v14;
    *(v19 + 8) = v16;
    *(v19 + 16) = v18;
    return swift_willThrow();
  }
}

uint64_t sub_100070094(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1000700B4, v1, 0);
}

uint64_t sub_1000700B4()
{
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = type metadata accessor for Logger();
  sub_100066000(v2, qword_100129988);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "Starting fetchLocalRecord %@", v7, 0xCu);
    sub_100066C80(v8, &qword_1001287F0, &qword_1000E6C40);
  }

  v11 = v0[2];
  v10 = v0[3];

  v12 = [v11 zoneID];
  v13 = [v12 zoneName];

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17 = (*(*v10 + 280))(v14, v16);
  v19 = v18;

  v0[4] = v17;
  ObjectType = swift_getObjectType();
  v21 = *(v19 + 64);
  v26 = (v21 + *v21);
  v22 = v21[1];
  v23 = swift_task_alloc();
  v0[5] = v23;
  *v23 = v0;
  v23[1] = sub_1000704E0;
  v24 = v0[2];

  return v26(v24, ObjectType, v19);
}

uint64_t sub_1000704E0(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_1000705F8, v3, 0);
}

uint64_t sub_1000705F8()
{
  v1 = v0[4];
  swift_unknownObjectRelease();
  v2 = v0[6];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_10007065C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_10007067C, v1, 0);
}

uint64_t sub_10007067C()
{
  v1 = *(v0 + 24);
  v2 = [*(v0 + 16) recordID];
  v3 = [v2 zoneID];

  v4 = [v3 zoneName];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = (*(*v1 + 280))(v5, v7);
  v10 = v9;
  *(v0 + 32) = v8;

  ObjectType = swift_getObjectType();
  v12 = *(v10 + 72);
  v17 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v0 + 40) = v14;
  *v14 = v0;
  v14[1] = sub_100070A2C;
  v15 = *(v0 + 16);

  return v17(v15, ObjectType, v10);
}

uint64_t sub_100070A2C()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_100070B58;
  }

  else
  {
    v6 = sub_100093B44;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100070B58()
{
  v1 = v0[4];
  swift_unknownObjectRelease();
  v2 = v0[6];
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v3 = v0[2];
  v4 = type metadata accessor for Logger();
  sub_100066000(v4, qword_100129988);
  v5 = v3;
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[2];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412546;
    v11 = [v8 recordID];
    *(v9 + 4) = v11;
    *v10 = v11;
    *(v9 + 12) = 2112;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v12;
    v10[1] = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to update recordSyncedUp: %@ error: %@", v9, 0x16u);
    sub_10005F5CC(&qword_1001287F0, &qword_1000E6C40);
    swift_arrayDestroy();
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_100070D48(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100070D68, v1, 0);
}

uint64_t sub_100070D68()
{
  v1 = *(v0 + 24);
  v2 = [*(v0 + 16) zoneID];
  v3 = [v2 zoneName];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = (*(*v1 + 280))(v4, v6);
  v9 = v8;
  *(v0 + 32) = v7;

  ObjectType = swift_getObjectType();
  v11 = *(v9 + 80);
  v16 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v0 + 40) = v13;
  *v13 = v0;
  v13[1] = sub_1000710E8;
  v14 = *(v0 + 16);

  return v16(v14, ObjectType, v9);
}

uint64_t sub_1000710E8()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_100071214;
  }

  else
  {
    v6 = sub_100093B44;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100071214()
{
  v1 = v0[4];
  swift_unknownObjectRelease();
  v2 = v0[6];
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v3 = v0[2];
  v4 = type metadata accessor for Logger();
  sub_100066000(v4, qword_100129988);
  v5 = v3;
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[2];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412546;
    *(v9 + 4) = v8;
    *v10 = v8;
    *(v9 + 12) = 2112;
    v11 = v8;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v12;
    v10[1] = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to update deleteSyncedUp: %@ error: %@", v9, 0x16u);
    sub_10005F5CC(&qword_1001287F0, &qword_1000E6C40);
    swift_arrayDestroy();
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_1000713F0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_100071414, v2, 0);
}

uint64_t sub_100071414()
{
  v1 = *(v0 + 32);
  v2 = [*(v0 + 16) zoneID];
  v3 = [v2 zoneName];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = (*(*v1 + 280))(v4, v6);
  v9 = v8;
  *(v0 + 40) = v7;

  ObjectType = swift_getObjectType();
  v11 = *(v9 + 88);
  v17 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v0 + 48) = v13;
  *v13 = v0;
  v13[1] = sub_100071798;
  v15 = *(v0 + 16);
  v14 = *(v0 + 24);

  return v17(v15, v14, ObjectType, v9);
}

uint64_t sub_100071798()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 56) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = sub_1000718C4;
  }

  else
  {
    v6 = sub_100093B48;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000718C4()
{
  v1 = v0[5];
  swift_unknownObjectRelease();
  v2 = v0[7];
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v3 = v0[2];
  v4 = type metadata accessor for Logger();
  sub_100066000(v4, qword_100129988);
  v5 = v3;
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[2];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412546;
    *(v9 + 4) = v8;
    *v10 = v8;
    *(v9 + 12) = 2112;
    v11 = v8;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v12;
    v10[1] = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to process deleteFailed: %@ error: %@", v9, 0x16u);
    sub_10005F5CC(&qword_1001287F0, &qword_1000E6C40);
    swift_arrayDestroy();
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_100071AA0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100071AC0, v1, 0);
}

uint64_t sub_100071AC0()
{
  v1 = *(v0 + 24);
  v2 = [*(v0 + 16) zoneName];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = (*(*v1 + 280))(v3, v5);
  v8 = v7;
  *(v0 + 32) = v6;

  ObjectType = swift_getObjectType();
  v10 = *(v8 + 96);
  v15 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v0 + 40) = v12;
  *v12 = v0;
  v12[1] = sub_100071E20;
  v13 = *(v0 + 16);

  return v15(v13, ObjectType, v8);
}

uint64_t sub_100071E20()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_100071FAC;
  }

  else
  {
    v6 = sub_100071F4C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100071F4C()
{
  v1 = *(v0 + 32);
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100071FAC()
{
  v1 = v0[4];
  swift_unknownObjectRelease();
  v2 = v0[6];
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v3 = v0[2];
  v4 = type metadata accessor for Logger();
  sub_100066000(v4, qword_100129988);
  v5 = v3;
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[2];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412546;
    *(v9 + 4) = v8;
    *v10 = v8;
    *(v9 + 12) = 2112;
    v11 = v8;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v12;
    v10[1] = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to update zoneDeleteSyncedUp: %@ error: %@", v9, 0x16u);
    sub_10005F5CC(&qword_1001287F0, &qword_1000E6C40);
    swift_arrayDestroy();
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_100072188(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1000721AC, v2, 0);
}

uint64_t sub_1000721AC()
{
  v1 = *(v0 + 32);
  v2 = [*(v0 + 16) zoneName];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = (*(*v1 + 280))(v3, v5);
  v8 = v7;
  *(v0 + 40) = v6;

  ObjectType = swift_getObjectType();
  v10 = *(v8 + 104);
  v16 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v0 + 48) = v12;
  *v12 = v0;
  v12[1] = sub_100072510;
  v14 = *(v0 + 16);
  v13 = *(v0 + 24);

  return v16(v14, v13, ObjectType, v8);
}

uint64_t sub_100072510()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 56) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = sub_10007263C;
  }

  else
  {
    v6 = sub_100093B48;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10007263C()
{
  v1 = v0[5];
  swift_unknownObjectRelease();
  v2 = v0[7];
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v3 = v0[2];
  v4 = type metadata accessor for Logger();
  sub_100066000(v4, qword_100129988);
  v5 = v3;
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[2];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412546;
    *(v9 + 4) = v8;
    *v10 = v8;
    *(v9 + 12) = 2112;
    v11 = v8;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v12;
    v10[1] = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to process zoneDeleteFailed: %@ error: %@", v9, 0x16u);
    sub_10005F5CC(&qword_1001287F0, &qword_1000E6C40);
    swift_arrayDestroy();
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_100072818(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_10007283C, v2, 0);
}

uint64_t sub_10007283C()
{
  v44 = v0;
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for Logger();
  *(v0 + 40) = sub_100066000(v3, qword_100129988);
  v4 = v1;
  v5 = v2;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 16);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v43[0] = swift_slowAlloc();
    *v9 = 138412802;
    v11 = [v8 recordID];
    *(v9 + 4) = v11;
    *v10 = v11;
    *(v9 + 12) = 2080;
    v12 = [v8 etag];
    if (v12)
    {
      v13 = v12;
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;
    }

    else
    {
      v14 = 0;
      v16 = 0xE000000000000000;
    }

    v17 = *(v0 + 24);
    v18 = sub_100065658(v14, v16, v43);

    *(v9 + 14) = v18;
    *(v9 + 22) = 2080;
    v19 = [v17 etag];
    if (v19)
    {
      v20 = v19;
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;
    }

    else
    {
      v21 = 0;
      v23 = 0xE000000000000000;
    }

    v24 = sub_100065658(v21, v23, v43);

    *(v9 + 24) = v24;
    _os_log_impl(&_mh_execute_header, v6, v7, "Starting resolveSyncUpConflict %@ cliETag: %s serverETag: %s", v9, 0x20u);
    sub_100066C80(v10, &qword_1001287F0, &qword_1000E6C40);

    swift_arrayDestroy();
  }

  else
  {
  }

  v25 = *(v0 + 32);
  v26 = [*(v0 + 16) recordID];
  v27 = [v26 zoneID];

  v28 = [v27 zoneName];
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  v32 = (*(*v25 + 280))(v29, v31);
  v34 = v33;
  *(v0 + 48) = v32;

  ObjectType = swift_getObjectType();
  v36 = *(v34 + 112);
  v42 = (v36 + *v36);
  v37 = v36[1];
  v38 = swift_task_alloc();
  *(v0 + 56) = v38;
  *v38 = v0;
  v38[1] = sub_100072E00;
  v40 = *(v0 + 16);
  v39 = *(v0 + 24);

  return v42(v40, v39, ObjectType, v34);
}

uint64_t sub_100072E00(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  *(v4 + 64) = v1;

  v7 = *(v4 + 32);
  if (v1)
  {
    v8 = sub_100072FA4;
  }

  else
  {
    *(v4 + 72) = a1 & 1;
    v8 = sub_100072F40;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100072F40()
{
  v1 = *(v0 + 48);
  swift_unknownObjectRelease();
  v2 = *(v0 + 72);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_100072FA4()
{
  v1 = *(v0 + 48);
  swift_unknownObjectRelease();
  v2 = *(v0 + 64);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 16);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412546;
    v10 = [v7 recordID];
    *(v8 + 4) = v10;
    *v9 = v10;
    *(v8 + 12) = 2112;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v11;
    v9[1] = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to process resolveSyncUpConflict: %@ error: %@", v8, 0x16u);
    sub_10005F5CC(&qword_1001287F0, &qword_1000E6C40);
    swift_arrayDestroy();
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12(0);
}

uint64_t sub_100073154(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100073174, v1, 0);
}

uint64_t sub_100073174()
{
  v1 = *(v0 + 24);
  v2 = [*(v0 + 16) recordID];
  v3 = [v2 zoneID];

  v4 = [v3 zoneName];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = (*(*v1 + 280))(v5, v7);
  v10 = v9;
  *(v0 + 32) = v8;

  ObjectType = swift_getObjectType();
  v12 = *(v10 + 120);
  v17 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v0 + 40) = v14;
  *v14 = v0;
  v14[1] = sub_100073528;
  v15 = *(v0 + 16);

  return v17(v15, ObjectType, v10);
}

uint64_t sub_100073528(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(v4 + 48) = v1;

  v7 = *(v4 + 24);
  if (v1)
  {
    v8 = sub_1000736CC;
  }

  else
  {
    *(v4 + 56) = a1 & 1;
    v8 = sub_100073668;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100073668()
{
  v1 = *(v0 + 32);
  swift_unknownObjectRelease();
  v2 = *(v0 + 56);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1000736CC()
{
  v1 = v0[4];
  swift_unknownObjectRelease();
  v2 = v0[6];
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v3 = v0[2];
  v4 = type metadata accessor for Logger();
  sub_100066000(v4, qword_100129988);
  v5 = v3;
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[2];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412546;
    v11 = [v8 recordID];
    *(v9 + 4) = v11;
    *v10 = v11;
    *(v9 + 12) = 2112;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v12;
    v10[1] = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to process resolveUnknownItem: %@ error: %@", v9, 0x16u);
    sub_10005F5CC(&qword_1001287F0, &qword_1000E6C40);
    swift_arrayDestroy();
  }

  else
  {
  }

  v13 = v0[1];

  return v13(0);
}

uint64_t sub_1000738C0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1000738E4, v2, 0);
}

uint64_t sub_1000738E4()
{
  v1 = *(v0 + 32);
  v2 = [*(v0 + 16) recordID];
  v3 = [v2 zoneID];

  v4 = [v3 zoneName];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = (*(*v1 + 280))(v5, v7);
  v10 = v9;
  *(v0 + 40) = v8;

  ObjectType = swift_getObjectType();
  v12 = *(v10 + 128);
  v18 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v0 + 48) = v14;
  *v14 = v0;
  v14[1] = sub_100073C98;
  v16 = *(v0 + 16);
  v15 = *(v0 + 24);

  return v18(v16, v15, ObjectType, v10);
}

uint64_t sub_100073C98()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 56) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = sub_100073DC4;
  }

  else
  {
    v6 = sub_100093B48;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100073DC4()
{
  v1 = v0[5];
  swift_unknownObjectRelease();
  v2 = v0[7];
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v3 = v0[2];
  v4 = type metadata accessor for Logger();
  sub_100066000(v4, qword_100129988);
  v5 = v3;
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[2];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412546;
    v11 = [v8 recordID];
    *(v9 + 4) = v11;
    *v10 = v11;
    *(v9 + 12) = 2112;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v12;
    v10[1] = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to process handleQuotaExceeded: %@ error: %@", v9, 0x16u);
    sub_10005F5CC(&qword_1001287F0, &qword_1000E6C40);
    swift_arrayDestroy();
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_100073FB4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100073FD4, v1, 0);
}

uint64_t sub_100073FD4()
{
  v1 = *(v0 + 24);
  v2 = [*(v0 + 16) recordID];
  v3 = [v2 zoneID];

  v4 = [v3 zoneName];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = (*(*v1 + 280))(v5, v7);
  v10 = v9;
  *(v0 + 32) = v8;

  ObjectType = swift_getObjectType();
  v12 = *(v10 + 136);
  v17 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v0 + 40) = v14;
  *v14 = v0;
  v14[1] = sub_100074384;
  v15 = *(v0 + 16);

  return v17(v15, ObjectType, v10);
}

uint64_t sub_100074384()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_1000744B0;
  }

  else
  {
    v6 = sub_100093B44;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000744B0()
{
  v1 = v0[4];
  swift_unknownObjectRelease();
  v2 = v0[6];
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v3 = v0[2];
  v4 = type metadata accessor for Logger();
  sub_100066000(v4, qword_100129988);
  v5 = v3;
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[2];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412546;
    v11 = [v8 recordID];
    *(v9 + 4) = v11;
    *v10 = v11;
    *(v9 + 12) = 2112;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v12;
    v10[1] = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to process recordSyncedDown: %@ error: %@", v9, 0x16u);
    sub_10005F5CC(&qword_1001287F0, &qword_1000E6C40);
    swift_arrayDestroy();
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_1000746A0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1000746C0, v1, 0);
}

uint64_t sub_1000746C0()
{
  v1 = *(v0 + 24);
  v2 = [*(v0 + 16) zoneID];
  v3 = [v2 zoneName];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = (*(*v1 + 280))(v4, v6);
  v9 = v8;
  *(v0 + 32) = v7;

  ObjectType = swift_getObjectType();
  v11 = *(v9 + 144);
  v16 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v0 + 40) = v13;
  *v13 = v0;
  v13[1] = sub_100074A40;
  v14 = *(v0 + 16);

  return v16(v14, ObjectType, v9);
}

uint64_t sub_100074A40()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_100074B6C;
  }

  else
  {
    v6 = sub_100093B44;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100074B6C()
{
  v1 = v0[4];
  swift_unknownObjectRelease();
  v2 = v0[6];
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v3 = v0[2];
  v4 = type metadata accessor for Logger();
  sub_100066000(v4, qword_100129988);
  v5 = v3;
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[2];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412546;
    *(v9 + 4) = v8;
    *v10 = v8;
    *(v9 + 12) = 2112;
    v11 = v8;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v12;
    v10[1] = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to process deleteSyncedDown: %@ error: %@", v9, 0x16u);
    sub_10005F5CC(&qword_1001287F0, &qword_1000E6C40);
    swift_arrayDestroy();
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_100074D48(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_100074D6C, v2, 0);
}

uint64_t sub_100074D6C()
{
  v1 = *(v0 + 32);
  v2 = [*(v0 + 16) zoneName];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = (*(*v1 + 280))(v3, v5);
  v8 = v7;
  *(v0 + 40) = v6;

  ObjectType = swift_getObjectType();
  v10 = *(v8 + 152);
  v16 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v0 + 48) = v12;
  *v12 = v0;
  v12[1] = sub_1000750D0;
  v14 = *(v0 + 16);
  v13 = *(v0 + 24);

  return v16(v14, v13, ObjectType, v8);
}

uint64_t sub_1000750D0()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 56) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = sub_10007525C;
  }

  else
  {
    v6 = sub_1000751FC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000751FC()
{
  v1 = *(v0 + 40);
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10007525C()
{
  v1 = v0[5];
  swift_unknownObjectRelease();
  v2 = v0[7];
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v3 = v0[2];
  v4 = type metadata accessor for Logger();
  sub_100066000(v4, qword_100129988);
  v5 = v3;
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[2];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412546;
    *(v9 + 4) = v8;
    *v10 = v8;
    *(v9 + 12) = 2112;
    v11 = v8;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v12;
    v10[1] = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to process zoneDeleteSyncedDown: %@ error: %@", v9, 0x16u);
    sub_10005F5CC(&qword_1001287F0, &qword_1000E6C40);
    swift_arrayDestroy();
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_100075438(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100075458, v1, 0);
}

uint64_t sub_100075458()
{
  v1 = *(v0 + 24);
  v2 = [*(v0 + 16) recordName];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  *(v0 + 32) = v3;
  *(v0 + 40) = v5;
  v6 = *(v1 + 112);
  *(v0 + 48) = v6;
  v7 = (*v6 + 160) & 0xFFFFFFFFFFFFLL | 0xBCE6000000000000;
  *(v0 + 56) = *(*v6 + 160);
  *(v0 + 64) = v7;

  return _swift_task_switch(sub_100075510, v6, 0);
}

uint64_t sub_100075510()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = (*(v0 + 56))();
  *(v0 + 72) = 0;
  *(v0 + 80) = v3;
  *(v0 + 88) = v4;
  v5 = *(v0 + 24);

  return _swift_task_switch(sub_1000755A4, v5, 0);
}

uint64_t sub_1000755A4()
{
  v43 = v0;
  v1 = *(v0 + 88);
  if (!v1)
  {
    v6 = 0;
    v1 = *(v0 + 40);
    goto LABEL_10;
  }

  v2 = *(v0 + 40);
  if (*(v0 + 80) == *(v0 + 32) && v1 == v2)
  {
    v7 = *(v0 + 88);

    v6 = 0;
LABEL_10:
    *(v0 + 193) = v6;
    *(v0 + 144) = v1;
    v8 = *(v0 + 40);
    v9 = *(**(v0 + 24) + 240);

    v40 = (v9 + *v9);
    v10 = v9[1];
    v11 = swift_task_alloc();
    *(v0 + 152) = v11;
    *v11 = v0;
    v11[1] = sub_100075E70;
    v12 = *(v0 + 24);
    v13 = *(v0 + 32);
    v14 = v1;
    v15 = v40;

    return v15(v13, v14);
  }

  v4 = *(v0 + 88);
  v5 = *(v0 + 40);
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {

    v6 = 0;
    v1 = v2;
    goto LABEL_10;
  }

  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v17 = *(v0 + 40);
  v18 = type metadata accessor for Logger();
  sub_100066000(v18, qword_100129988);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = *(v0 + 80);
    v23 = *(v0 + 32);
    v22 = *(v0 + 40);
    v24 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v24 = 136315394;
    v25 = sub_100065658(v21, v1, &v42);

    *(v24 + 4) = v25;
    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_100065658(v23, v22, &v42);
    _os_log_impl(&_mh_execute_header, v19, v20, "account switch from = %s to %s", v24, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v26 = *(*(v0 + 24) + 128);
  *(v0 + 96) = v26;
  v27 = *(v26 + 32);
  *(v0 + 192) = v27;
  v28 = -1;
  v29 = -1 << v27;
  if (-(-1 << v27) < 64)
  {
    v28 = ~(-1 << -v29);
  }

  v30 = v28 & *(v26 + 64);

  if (!v30)
  {
    v33 = 0;
    while (((63 - v29) >> 6) - 1 != v33)
    {
      v32 = v33 + 1;
      v30 = *(v31 + 8 * v33++ + 72);
      if (v30)
      {
        goto LABEL_25;
      }
    }

    v1 = *(v0 + 40);
    v6 = 1;
    goto LABEL_10;
  }

  v32 = 0;
LABEL_25:
  *(v0 + 104) = v30;
  *(v0 + 112) = v32;
  v34 = (*(v31 + 56) + ((v32 << 10) | (16 * __clz(__rbit64(v30)))));
  *(v0 + 120) = *v34;
  v35 = v34[1];
  ObjectType = swift_getObjectType();
  v37 = *(v35 + 200);
  swift_unknownObjectRetain();
  v41 = (v37 + *v37);
  v38 = v37[1];
  v39 = swift_task_alloc();
  *(v0 + 128) = v39;
  *v39 = v0;
  v39[1] = sub_100075A74;
  v13 = ObjectType;
  v14 = v35;
  v15 = v41;

  return v15(v13, v14);
}

uint64_t sub_100075A74()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_100076534;
  }

  else
  {
    v6 = sub_100075BA0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100075BA0()
{
  v1 = *(v0 + 120);
  result = swift_unknownObjectRelease();
  v3 = *(v0 + 112);
  v4 = (*(v0 + 104) - 1) & *(v0 + 104);
  if (v4)
  {
    result = *(v0 + 96);
LABEL_7:
    *(v0 + 104) = v4;
    *(v0 + 112) = v3;
    v6 = (*(result + 56) + ((v3 << 10) | (16 * __clz(__rbit64(v4)))));
    *(v0 + 120) = *v6;
    v7 = v6[1];
    ObjectType = swift_getObjectType();
    v9 = *(v7 + 200);
    swift_unknownObjectRetain();
    v20 = (v9 + *v9);
    v10 = v9[1];
    v11 = swift_task_alloc();
    *(v0 + 128) = v11;
    *v11 = v0;
    v11[1] = sub_100075A74;
    v12 = ObjectType;
    v13 = v7;
    v14 = v20;
  }

  else
  {
    while (1)
    {
      v5 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
        return result;
      }

      result = *(v0 + 96);
      if (v5 >= (((1 << *(v0 + 192)) + 63) >> 6))
      {
        break;
      }

      v4 = *(result + 8 * v5 + 64);
      ++v3;
      if (v4)
      {
        v3 = v5;
        goto LABEL_7;
      }
    }

    v15 = *(v0 + 40);
    *(v0 + 193) = 1;
    *(v0 + 144) = v15;
    v16 = *(**(v0 + 24) + 240);

    v21 = (v16 + *v16);
    v17 = v16[1];
    v18 = swift_task_alloc();
    *(v0 + 152) = v18;
    *v18 = v0;
    v18[1] = sub_100075E70;
    v19 = *(v0 + 24);
    v12 = *(v0 + 32);
    v13 = v15;
    v14 = v21;
  }

  return v14(v12, v13);
}

uint64_t sub_100075E70()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;

  if (v0)
  {
  }

  v5 = *(**(v2 + 24) + 224);
  v12 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 160) = v7;
  *v7 = v4;
  v7[1] = sub_100076040;
  v8 = *(v2 + 144);
  v9 = *(v2 + 24);
  v10 = *(v2 + 32);

  return v12(v10, v8);
}

uint64_t sub_100076040()
{
  v2 = *(*v1 + 160);
  v3 = *v1;
  *(v3 + 168) = v0;

  if (v0)
  {
    v4 = *(v3 + 40);
    v5 = *(v3 + 24);

    return _swift_task_switch(sub_100076770, v5, 0);
  }

  else
  {
    v6 = swift_task_alloc();
    *(v3 + 176) = v6;
    *v6 = v3;
    v6[1] = sub_1000761CC;
    v7 = *(v3 + 193);
    v8 = *(v3 + 144);
    v9 = *(v3 + 24);
    v10 = *(v3 + 32);

    return sub_100076BC8(v10, v8, 0, 0, v7);
  }
}

uint64_t sub_1000761CC()
{
  v2 = *(*v1 + 176);
  v3 = *v1;
  v3[23] = v0;

  if (v0)
  {
    v4 = v3[3];

    return _swift_task_switch(sub_100076998, v4, 0);
  }

  else
  {
    v5 = v3[5];
    swift_bridgeObjectRelease_n();
    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_10007630C()
{
  v17 = v0;
  v1 = v0[9];
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v3 = type metadata accessor for Logger();
  sub_100066000(v3, qword_100129988);

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[5];
  if (v6)
  {
    v8 = v0[4];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v9 = 136315394;
    v12 = sub_100065658(v8, v7, &v16);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error handleAccount signIn, currently signed in user %s, error: %@", v9, 0x16u);
    sub_100066C80(v10, &qword_1001287F0, &qword_1000E6C40);

    sub_10005D588(v11);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_100076534()
{
  v19 = v0;
  v1 = v0[15];
  v2 = v0[12];

  swift_unknownObjectRelease();
  v3 = v0[17];
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v4 = v0[5];
  v5 = type metadata accessor for Logger();
  sub_100066000(v5, qword_100129988);

  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[5];
  if (v8)
  {
    v10 = v0[4];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v11 = 136315394;
    v14 = sub_100065658(v10, v9, &v18);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    *v12 = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "Error handleAccount signIn, currently signed in user %s, error: %@", v11, 0x16u);
    sub_100066C80(v12, &qword_1001287F0, &qword_1000E6C40);

    sub_10005D588(v13);
  }

  else
  {
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_100076770()
{
  v17 = v0;
  v1 = v0[21];
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v3 = type metadata accessor for Logger();
  sub_100066000(v3, qword_100129988);

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[5];
  if (v6)
  {
    v8 = v0[4];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v9 = 136315394;
    v12 = sub_100065658(v8, v7, &v16);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error handleAccount signIn, currently signed in user %s, error: %@", v9, 0x16u);
    sub_100066C80(v10, &qword_1001287F0, &qword_1000E6C40);

    sub_10005D588(v11);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_100076998()
{
  v18 = v0;
  v1 = v0[5];

  v2 = v0[23];
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v3 = v0[5];
  v4 = type metadata accessor for Logger();
  sub_100066000(v4, qword_100129988);

  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[5];
  if (v7)
  {
    v9 = v0[4];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v10 = 136315394;
    v13 = sub_100065658(v9, v8, &v17);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2112;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    *v11 = v14;
    _os_log_impl(&_mh_execute_header, v5, v6, "Error handleAccount signIn, currently signed in user %s, error: %@", v10, 0x16u);
    sub_100066C80(v11, &qword_1001287F0, &qword_1000E6C40);

    sub_10005D588(v12);
  }

  else
  {
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_100076BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = a4;
  *(v6 + 64) = v5;
  *(v6 + 340) = a5;
  *(v6 + 40) = a2;
  *(v6 + 48) = a3;
  *(v6 + 32) = a1;
  v7 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
  *(v6 + 72) = v7;
  v8 = *(v7 - 8);
  *(v6 + 80) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 96) = swift_task_alloc();
  *(v6 + 104) = swift_task_alloc();
  *(v6 + 112) = swift_task_alloc();

  return _swift_task_switch(sub_100076CB8, v5, 0);
}

uint64_t sub_100076CB8()
{
  v1 = *(v0 + 40);
  v2 = *(*(v0 + 64) + 128);
  *(v0 + 120) = v2;
  v3 = *(v2 + 32);
  *(v0 + 341) = v3;
  v4 = -1;
  v5 = -1 << v3;
  if (-(-1 << v3) < 64)
  {
    v4 = ~(-1 << -(-1 << v3));
  }

  v6 = v4 & *(v2 + 64);
  *(v0 + 328) = enum case for CKSyncEngine.PendingDatabaseChange.saveZone(_:);
  *(v0 + 332) = enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:);
  *(v0 + 336) = enum case for CKSyncEngine.PendingRecordZoneChange.deleteRecord(_:);

  if (v6)
  {
    v8 = 0;
LABEL_8:
    *(v0 + 128) = v6;
    *(v0 + 136) = v8;
    v10 = (v8 << 10) | (16 * __clz(__rbit64(v6)));
    v11 = (*(v7 + 48) + v10);
    *(v0 + 144) = *v11;
    *(v0 + 152) = v11[1];
    v12 = (*(v7 + 56) + v10);
    *(v0 + 160) = *v12;
    v37 = v12[1];
    *(v0 + 168) = v37;
    if (v1)
    {
      ObjectType = swift_getObjectType();
      v14 = *(v37 + 160);
      swift_unknownObjectRetain();

      v35 = (v14 + *v14);
      v15 = v14[1];
      v16 = swift_task_alloc();
      *(v0 + 176) = v16;
      *v16 = v0;
      v16[1] = sub_100077060;
      v17 = *(v0 + 32);

      return v35(v17, v1, ObjectType, v37);
    }

    else
    {
      swift_unknownObjectRetain();
      v19 = swift_getObjectType();
      v20 = *(v37 + 168);
      v36 = (v20 + *v20);
      v21 = v20[1];
      v22 = swift_task_alloc();
      *(v0 + 312) = v22;
      *v22 = v0;
      v22[1] = sub_100078D1C;
      v24 = *(v0 + 160);
      v23 = *(v0 + 168);
      v25 = *(v0 + 340);
      v26 = *(v0 + 48);
      v27 = *(v0 + 56);
      v28 = *(v0 + 40);
      v29 = *(v0 + 32);

      return v36(v29, v28, v26, v27, v25, v19, v23);
    }
  }

  else
  {
    v9 = 0;
    while (((63 - v5) >> 6) - 1 != v9)
    {
      v8 = v9 + 1;
      v6 = *(v7 + 8 * v9++ + 72);
      if (v6)
      {
        goto LABEL_8;
      }
    }

    v30 = *(v0 + 104);
    v31 = *(v0 + 112);
    v33 = *(v0 + 88);
    v32 = *(v0 + 96);

    v34 = *(v0 + 8);

    return v34();
  }
}

uint64_t sub_100077060(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 176);
  v11 = *v3;
  v4[23] = a1;
  v4[24] = a2;
  v4[25] = v2;

  if (v2)
  {
    v6 = v4[19];
    v7 = v4[8];

    v8 = sub_1000791A8;
    v9 = v7;
  }

  else
  {
    v9 = v4[8];
    v8 = sub_10007718C;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_10007718C()
{
  v98 = v0;
  v1 = *(v0 + 184);
  if (v1)
  {
    if (v1 >> 62)
    {
      if (v1 < 0)
      {
        v17 = *(v0 + 184);
      }

      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_4;
      }
    }

    else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      if (qword_100129980 != -1)
      {
        swift_once();
      }

      v2 = *(v0 + 152);
      v3 = type metadata accessor for Logger();
      sub_100066000(v3, qword_100129988);

      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v4, v5))
      {
        v7 = *(v0 + 144);
        v6 = *(v0 + 152);
        v8 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        *v8 = 136315394;
        sub_100092C8C(0, &qword_100128458, CKRecordID_ptr);
        v9 = Array.description.getter();
        v11 = sub_100065658(v9, v10, &v97);

        *(v8 + 4) = v11;
        *(v8 + 12) = 2080;
        *(v8 + 14) = sub_100065658(v7, v6, &v97);
        _os_log_impl(&_mh_execute_header, v4, v5, "Uploading pending records %s for zone %s", v8, 0x16u);
        swift_arrayDestroy();
      }

      v12 = **(v0 + 64);
      v13 = *(v12 + 192);
      *(v0 + 208) = v13;
      *(v0 + 216) = (v12 + 192) & 0xFFFFFFFFFFFFLL | 0x9F87000000000000;
      v95 = (v13 + *v13);
      v14 = v13[1];
      v15 = swift_task_alloc();
      *(v0 + 224) = v15;
      *v15 = v0;
      v16 = sub_100077C50;
      goto LABEL_45;
    }

    if (qword_100129980 != -1)
    {
      swift_once();
    }

    v18 = *(v0 + 152);
    v19 = type metadata accessor for Logger();
    sub_100066000(v19, qword_100129988);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v23 = *(v0 + 144);
      v22 = *(v0 + 152);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v97 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_100065658(v23, v22, &v97);
      _os_log_impl(&_mh_execute_header, v20, v21, "No pending records to upload for zone %s", v24, 0xCu);
      sub_10005D588(v25);
    }
  }

  v26 = *(v0 + 192);
  if (!v26)
  {
    v40 = *(v0 + 152);
LABEL_55:

    goto LABEL_56;
  }

  v27 = v26 >> 62;
  if (!(v26 >> 62))
  {
    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_20;
    }

LABEL_51:

    if (qword_100129980 == -1)
    {
      goto LABEL_52;
    }

    goto LABEL_60;
  }

  if (v26 < 0)
  {
    v71 = *(v0 + 192);
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_51;
  }

LABEL_20:
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v28 = *(v0 + 152);
  v29 = type metadata accessor for Logger();
  sub_100066000(v29, qword_100129988);

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.info.getter();

  v32 = os_log_type_enabled(v30, v31);
  v33 = *(v0 + 152);
  if (v32)
  {
    v34 = *(v0 + 144);
    v35 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    *v35 = 136315394;
    sub_100092C8C(0, &qword_100128458, CKRecordID_ptr);
    v36 = Array.description.getter();
    v38 = sub_100065658(v36, v37, &v97);

    *(v35 + 4) = v38;
    *(v35 + 12) = 2080;
    v39 = sub_100065658(v34, v33, &v97);

    *(v35 + 14) = v39;
    _os_log_impl(&_mh_execute_header, v30, v31, "Request to delete records %s for zone %s", v35, 0x16u);
    swift_arrayDestroy();
    v27 = v26 >> 62;
  }

  else
  {
  }

  v41 = *(v0 + 192) & 0xFFFFFFFFFFFFFF8;
  if (v27)
  {
    if (v26 >= 0)
    {
      v54 = *(v0 + 192) & 0xFFFFFFFFFFFFFF8;
    }

    v42 = _CocoaArrayWrapper.endIndex.getter();
    if (v42)
    {
      goto LABEL_28;
    }

LABEL_38:

    v43 = _swiftEmptyArrayStorage;
LABEL_44:
    *(v0 + 280) = v43;
    v67 = *(**(v0 + 64) + 192);
    v95 = (v67 + *v67);
    v68 = v67[1];
    v15 = swift_task_alloc();
    *(v0 + 288) = v15;
    *v15 = v0;
    v16 = sub_100078A78;
LABEL_45:
    v15[1] = v16;
    v69 = *(v0 + 64);

    return v95();
  }

  v42 = *((*(v0 + 192) & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v42)
  {
    goto LABEL_38;
  }

LABEL_28:
  *(v0 + 16) = _swiftEmptyArrayStorage;
  sub_10009265C(0, v42 & ~(v42 >> 63), 0);
  if ((v42 & 0x8000000000000000) == 0)
  {
    v43 = *(v0 + 16);
    if ((*(v0 + 192) & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v42; ++i)
      {
        v45 = *(v0 + 336);
        v46 = *(v0 + 104);
        v47 = *(v0 + 72);
        v48 = *(v0 + 80);
        *v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        (*(v48 + 104))(v46, v45, v47);
        *(v0 + 16) = v43;
        v50 = v43[2];
        v49 = v43[3];
        if (v50 >= v49 >> 1)
        {
          sub_10009265C(v49 > 1, v50 + 1, 1);
          v43 = *(v0 + 16);
        }

        v51 = *(v0 + 104);
        v52 = *(v0 + 72);
        v53 = *(v0 + 80);
        v43[2] = v50 + 1;
        (*(v53 + 32))(v43 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v50, v51, v52);
      }
    }

    else
    {
      v55 = (v26 + 32);
      v56 = *(*(v0 + 80) + 104);
      do
      {
        v57 = *(v0 + 336);
        v58 = *(v0 + 72);
        v59 = *(v0 + 80) + 104;
        v60 = *v55;
        **(v0 + 96) = *v55;
        v56();
        *(v0 + 16) = v43;
        v62 = v43[2];
        v61 = v43[3];
        v63 = v60;
        if (v62 >= v61 >> 1)
        {
          sub_10009265C(v61 > 1, v62 + 1, 1);
          v43 = *(v0 + 16);
        }

        v64 = *(v0 + 96);
        v65 = *(v0 + 72);
        v66 = *(v0 + 80);
        v43[2] = v62 + 1;
        (*(v66 + 32))(v43 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v62, v64, v65);
        ++v55;
        --v42;
      }

      while (v42);
    }

    goto LABEL_44;
  }

  __break(1u);
LABEL_60:
  swift_once();
LABEL_52:
  v72 = *(v0 + 152);
  v73 = type metadata accessor for Logger();
  sub_100066000(v73, qword_100129988);

  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.info.getter();

  v76 = os_log_type_enabled(v74, v75);
  v77 = *(v0 + 152);
  if (!v76)
  {

    goto LABEL_55;
  }

  v78 = *(v0 + 144);
  v79 = swift_slowAlloc();
  v80 = swift_slowAlloc();
  v97 = v80;
  *v79 = 136315138;
  v81 = sub_100065658(v78, v77, &v97);

  *(v79 + 4) = v81;
  _os_log_impl(&_mh_execute_header, v74, v75, "No pending record delete request for zone %s", v79, 0xCu);
  sub_10005D588(v80);

LABEL_56:
  v82 = *(v0 + 160);
  v96 = *(v0 + 168);
  ObjectType = swift_getObjectType();
  v84 = *(v96 + 168);
  v94 = (v84 + *v84);
  v85 = v84[1];
  v86 = swift_task_alloc();
  *(v0 + 312) = v86;
  *v86 = v0;
  v86[1] = sub_100078D1C;
  v88 = *(v0 + 160);
  v87 = *(v0 + 168);
  v89 = *(v0 + 340);
  v90 = *(v0 + 48);
  v91 = *(v0 + 56);
  v92 = *(v0 + 40);
  v93 = *(v0 + 32);

  return v94(v93, v92, v90, v91, v89, ObjectType, v87);
}

uint64_t sub_100077C50(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 224);
  v13 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {
    v7 = v4[23];
    v6 = v4[24];
    v8 = v4[19];
    v9 = v4[8];

    v10 = sub_100079244;
    v11 = v9;
  }

  else
  {
    v11 = v4[8];
    v4[30] = a1;
    v10 = sub_100077D9C;
  }

  return _swift_task_switch(v10, v11, 0);
}

size_t sub_100077D9C()
{
  v1 = *(v0 + 240);
  v49 = *(v0 + 184);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);
  v4 = *(v0 + 328);
  CKSyncEngine.state.getter();

  sub_10005F5CC(&qword_100128490, &qword_1000E6420);
  v5 = type metadata accessor for CKSyncEngine.PendingDatabaseChange();
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000E61E0;
  v10 = objc_allocWithZone(CKRecordZone);
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 initWithZoneName:v11];

  *(v9 + v8) = v12;
  (*(v6 + 104))(v9 + v8, v4, v5);
  CKSyncEngine.State.add(pendingDatabaseChanges:)(v9);

  v13 = *(v0 + 184);
  if (v49 >> 62)
  {
    if (v13 < 0)
    {
      v29 = *(v0 + 184);
    }

    v14 = _CocoaArrayWrapper.endIndex.getter();
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_13:
    v30 = *(v0 + 184);

    v16 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
    goto LABEL_13;
  }

LABEL_3:
  *(v0 + 24) = _swiftEmptyArrayStorage;
  result = sub_10009265C(0, v14 & ~(v14 >> 63), 0);
  if (v14 < 0)
  {
    __break(1u);
    return result;
  }

  v16 = *(v0 + 24);
  v17 = *(v0 + 184);
  if ((v17 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v14; ++i)
    {
      v19 = *(v0 + 184);
      v20 = *(v0 + 332);
      v21 = *(v0 + 112);
      v22 = *(v0 + 72);
      v23 = *(v0 + 80);
      *v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      (*(v23 + 104))(v21, v20, v22);
      *(v0 + 24) = v16;
      v25 = v16[2];
      v24 = v16[3];
      if (v25 >= v24 >> 1)
      {
        sub_10009265C(v24 > 1, v25 + 1, 1);
        v16 = *(v0 + 24);
      }

      v26 = *(v0 + 112);
      v27 = *(v0 + 72);
      v28 = *(v0 + 80);
      v16[2] = v25 + 1;
      (*(v28 + 32))(v16 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v25, v26, v27);
    }
  }

  else
  {
    v31 = (v17 + 32);
    v32 = *(*(v0 + 80) + 104);
    do
    {
      v33 = *(v0 + 332);
      v34 = *(v0 + 72);
      v35 = *(v0 + 80) + 104;
      v36 = *v31;
      **(v0 + 88) = *v31;
      v32();
      *(v0 + 24) = v16;
      v38 = v16[2];
      v37 = v16[3];
      v39 = v36;
      if (v38 >= v37 >> 1)
      {
        sub_10009265C(v37 > 1, v38 + 1, 1);
        v16 = *(v0 + 24);
      }

      v41 = *(v0 + 80);
      v40 = *(v0 + 88);
      v42 = *(v0 + 72);
      v16[2] = v38 + 1;
      (*(v41 + 32))(v16 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v38, v40, v42);
      ++v31;
      --v14;
    }

    while (v14);
  }

  v43 = *(v0 + 184);

LABEL_19:
  *(v0 + 248) = v16;
  v44 = *(v0 + 216);
  v50 = (*(v0 + 208) + **(v0 + 208));
  v45 = *(*(v0 + 208) + 4);
  v46 = swift_task_alloc();
  *(v0 + 256) = v46;
  *v46 = v0;
  v46[1] = sub_1000781BC;
  v47 = *(v0 + 216);
  v48 = *(v0 + 64);

  return v50();
}

uint64_t sub_1000781BC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 256);
  v13 = *v2;
  *(*v2 + 264) = v1;

  if (v1)
  {
    v6 = v4[31];
    v7 = v4[24];
    v8 = v4[19];
    v9 = v4[8];

    v10 = sub_1000792E0;
    v11 = v9;
  }

  else
  {
    v11 = v4[8];
    v4[34] = a1;
    v10 = sub_10007830C;
  }

  return _swift_task_switch(v10, v11, 0);
}

uint64_t sub_10007830C()
{
  v76 = v0;
  v1 = *(v0 + 272);
  v2._rawValue = *(v0 + 248);
  CKSyncEngine.state.getter();

  CKSyncEngine.State.add(pendingRecordZoneChanges:)(v2);

  v3 = *(v0 + 192);
  if (!v3)
  {
    v17 = *(v0 + 152);
LABEL_38:

    goto LABEL_39;
  }

  v4 = v3 >> 62;
  if (!(v3 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_34:

    if (qword_100129980 == -1)
    {
      goto LABEL_35;
    }

    goto LABEL_43;
  }

  if (v3 < 0)
  {
    v49 = *(v0 + 192);
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_34;
  }

LABEL_4:
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 152);
  v6 = type metadata accessor for Logger();
  sub_100066000(v6, qword_100129988);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 152);
  if (v9)
  {
    v11 = *(v0 + 144);
    v12 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    *v12 = 136315394;
    sub_100092C8C(0, &qword_100128458, CKRecordID_ptr);
    v13 = Array.description.getter();
    v15 = sub_100065658(v13, v14, &v75);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    v16 = sub_100065658(v11, v10, &v75);

    *(v12 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v7, v8, "Request to delete records %s for zone %s", v12, 0x16u);
    swift_arrayDestroy();
    v4 = v3 >> 62;
  }

  else
  {
  }

  v18 = *(v0 + 192) & 0xFFFFFFFFFFFFFF8;
  if (v4)
  {
    if (v3 >= 0)
    {
      v31 = *(v0 + 192) & 0xFFFFFFFFFFFFFF8;
    }

    v19 = _CocoaArrayWrapper.endIndex.getter();
    if (v19)
    {
      goto LABEL_12;
    }

LABEL_22:

    v20 = _swiftEmptyArrayStorage;
LABEL_28:
    *(v0 + 280) = v20;
    v44 = *(**(v0 + 64) + 192);
    v73 = (v44 + *v44);
    v45 = v44[1];
    v46 = swift_task_alloc();
    *(v0 + 288) = v46;
    *v46 = v0;
    v46[1] = sub_100078A78;
    v47 = *(v0 + 64);

    return v73();
  }

  v19 = *((*(v0 + 192) & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v19)
  {
    goto LABEL_22;
  }

LABEL_12:
  *(v0 + 16) = _swiftEmptyArrayStorage;
  sub_10009265C(0, v19 & ~(v19 >> 63), 0);
  if ((v19 & 0x8000000000000000) == 0)
  {
    v20 = *(v0 + 16);
    if ((*(v0 + 192) & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v19; ++i)
      {
        v22 = *(v0 + 336);
        v23 = *(v0 + 104);
        v24 = *(v0 + 72);
        v25 = *(v0 + 80);
        *v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        (*(v25 + 104))(v23, v22, v24);
        *(v0 + 16) = v20;
        v27 = v20[2];
        v26 = v20[3];
        if (v27 >= v26 >> 1)
        {
          sub_10009265C(v26 > 1, v27 + 1, 1);
          v20 = *(v0 + 16);
        }

        v28 = *(v0 + 104);
        v29 = *(v0 + 72);
        v30 = *(v0 + 80);
        v20[2] = v27 + 1;
        (*(v30 + 32))(v20 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v27, v28, v29);
      }
    }

    else
    {
      v32 = (v3 + 32);
      v33 = *(*(v0 + 80) + 104);
      do
      {
        v34 = *(v0 + 336);
        v35 = *(v0 + 72);
        v36 = *(v0 + 80) + 104;
        v37 = *v32;
        **(v0 + 96) = *v32;
        v33();
        *(v0 + 16) = v20;
        v39 = v20[2];
        v38 = v20[3];
        v40 = v37;
        if (v39 >= v38 >> 1)
        {
          sub_10009265C(v38 > 1, v39 + 1, 1);
          v20 = *(v0 + 16);
        }

        v41 = *(v0 + 96);
        v42 = *(v0 + 72);
        v43 = *(v0 + 80);
        v20[2] = v39 + 1;
        (*(v43 + 32))(v20 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v39, v41, v42);
        ++v32;
        --v19;
      }

      while (v19);
    }

    goto LABEL_28;
  }

  __break(1u);
LABEL_43:
  swift_once();
LABEL_35:
  v50 = *(v0 + 152);
  v51 = type metadata accessor for Logger();
  sub_100066000(v51, qword_100129988);

  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.info.getter();

  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v0 + 152);
  if (!v54)
  {

    goto LABEL_38;
  }

  v56 = *(v0 + 144);
  v57 = swift_slowAlloc();
  v58 = swift_slowAlloc();
  v75 = v58;
  *v57 = 136315138;
  v59 = sub_100065658(v56, v55, &v75);

  *(v57 + 4) = v59;
  _os_log_impl(&_mh_execute_header, v52, v53, "No pending record delete request for zone %s", v57, 0xCu);
  sub_10005D588(v58);

LABEL_39:
  v60 = *(v0 + 160);
  v74 = *(v0 + 168);
  ObjectType = swift_getObjectType();
  v62 = *(v74 + 168);
  v72 = (v62 + *v62);
  v63 = v62[1];
  v64 = swift_task_alloc();
  *(v0 + 312) = v64;
  *v64 = v0;
  v64[1] = sub_100078D1C;
  v66 = *(v0 + 160);
  v65 = *(v0 + 168);
  v67 = *(v0 + 340);
  v68 = *(v0 + 48);
  v69 = *(v0 + 56);
  v70 = *(v0 + 40);
  v71 = *(v0 + 32);

  return v72(v71, v70, v68, v69, v67, ObjectType, v65);
}

uint64_t sub_100078A78(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 288);
  v6 = *v2;
  *(*v2 + 296) = v1;

  if (v1)
  {
    v7 = v4[35];
    v8 = v4[8];

    v9 = sub_10007937C;
    v10 = v8;
  }

  else
  {
    v10 = v4[8];
    v4[38] = a1;
    v9 = sub_100078BB8;
  }

  return _swift_task_switch(v9, v10, 0);
}

uint64_t sub_100078BB8()
{
  v1 = *(v0 + 304);
  v2._rawValue = *(v0 + 280);
  CKSyncEngine.state.getter();

  CKSyncEngine.State.add(pendingRecordZoneChanges:)(v2);

  v3 = *(v0 + 160);
  v17 = *(v0 + 168);
  ObjectType = swift_getObjectType();
  v5 = *(v17 + 168);
  v16 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v0 + 312) = v7;
  *v7 = v0;
  v7[1] = sub_100078D1C;
  v9 = *(v0 + 160);
  v8 = *(v0 + 168);
  v10 = *(v0 + 340);
  v11 = *(v0 + 48);
  v12 = *(v0 + 56);
  v13 = *(v0 + 40);
  v14 = *(v0 + 32);

  return v16(v14, v13, v11, v12, v10, ObjectType, v8);
}

uint64_t sub_100078D1C()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v4 = *v1;
  *(*v1 + 320) = v0;

  v5 = *(v2 + 64);
  if (v0)
  {
    v6 = sub_100079418;
  }

  else
  {
    v6 = sub_100078E48;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100078E48()
{
  v1 = *(v0 + 160);
  result = swift_unknownObjectRelease();
  v3 = *(v0 + 136);
  v4 = (*(v0 + 128) - 1) & *(v0 + 128);
  if (v4)
  {
    result = *(v0 + 120);
LABEL_7:
    *(v0 + 128) = v4;
    *(v0 + 136) = v3;
    v6 = *(v0 + 40);
    v7 = (v3 << 10) | (16 * __clz(__rbit64(v4)));
    v8 = (*(result + 48) + v7);
    *(v0 + 144) = *v8;
    *(v0 + 152) = v8[1];
    v9 = (*(result + 56) + v7);
    *(v0 + 160) = *v9;
    v33 = v9[1];
    *(v0 + 168) = v33;
    if (v6)
    {
      ObjectType = swift_getObjectType();
      v11 = *(v33 + 160);
      swift_unknownObjectRetain();

      v31 = (v11 + *v11);
      v12 = v11[1];
      v13 = swift_task_alloc();
      *(v0 + 176) = v13;
      *v13 = v0;
      v13[1] = sub_100077060;
      v14 = *(v0 + 32);

      return v31(v14, v6, ObjectType, v33);
    }

    else
    {
      swift_unknownObjectRetain();
      v15 = swift_getObjectType();
      v16 = *(v33 + 168);
      v32 = (v16 + *v16);
      v17 = v16[1];
      v18 = swift_task_alloc();
      *(v0 + 312) = v18;
      *v18 = v0;
      v18[1] = sub_100078D1C;
      v20 = *(v0 + 160);
      v19 = *(v0 + 168);
      v21 = *(v0 + 340);
      v22 = *(v0 + 48);
      v23 = *(v0 + 56);
      v24 = *(v0 + 40);
      v25 = *(v0 + 32);

      return v32(v25, v24, v22, v23, v21, v15, v19);
    }
  }

  else
  {
    while (1)
    {
      v5 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
        return result;
      }

      result = *(v0 + 120);
      if (v5 >= (((1 << *(v0 + 341)) + 63) >> 6))
      {
        break;
      }

      v4 = *(result + 8 * v5 + 64);
      ++v3;
      if (v4)
      {
        v3 = v5;
        goto LABEL_7;
      }
    }

    v26 = *(v0 + 104);
    v27 = *(v0 + 112);
    v29 = *(v0 + 88);
    v28 = *(v0 + 96);

    v30 = *(v0 + 8);

    return v30();
  }
}

uint64_t sub_1000791A8()
{
  v1 = v0[20];
  v2 = v0[15];

  swift_unknownObjectRelease();
  v3 = v0[25];
  v5 = v0[13];
  v4 = v0[14];
  v7 = v0[11];
  v6 = v0[12];

  v8 = v0[1];

  return v8();
}

uint64_t sub_100079244()
{
  v1 = v0[20];
  v2 = v0[15];

  swift_unknownObjectRelease();
  v3 = v0[29];
  v5 = v0[13];
  v4 = v0[14];
  v7 = v0[11];
  v6 = v0[12];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000792E0()
{
  v1 = v0[20];
  v2 = v0[15];

  swift_unknownObjectRelease();
  v3 = v0[33];
  v5 = v0[13];
  v4 = v0[14];
  v7 = v0[11];
  v6 = v0[12];

  v8 = v0[1];

  return v8();
}

uint64_t sub_10007937C()
{
  v1 = v0[20];
  v2 = v0[15];

  swift_unknownObjectRelease();
  v3 = v0[37];
  v5 = v0[13];
  v4 = v0[14];
  v7 = v0[11];
  v6 = v0[12];

  v8 = v0[1];

  return v8();
}

uint64_t sub_100079418()
{
  v1 = v0[20];
  v2 = v0[15];

  swift_unknownObjectRelease();
  v3 = v0[40];
  v5 = v0[13];
  v4 = v0[14];
  v7 = v0[11];
  v6 = v0[12];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000794B4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1000794D4, v1, 0);
}

uint64_t sub_1000794D4()
{
  v1 = v0[2];
  v2 = *(v0[3] + 112);
  v0[4] = v2;
  v3 = [v1 recordName];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v0[5] = v4;
  v0[6] = v6;
  v7 = (*v2 + 168) & 0xFFFFFFFFFFFFLL | 0xDCE2000000000000;
  v0[7] = *(*v2 + 168);
  v0[8] = v7;

  return _swift_task_switch(sub_100079590, v2, 0);
}

uint64_t sub_100079590()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);
  (*(v0 + 56))(*(v0 + 40), *(v0 + 48));
  *(v0 + 72) = 0;
  v3 = *(v0 + 48);
  v4 = *(v0 + 24);

  v5 = *(*v4 + 224);
  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  *v7 = v0;
  v7[1] = sub_100079718;
  v8 = *(v0 + 24);

  return (v10)(0, 0);
}

uint64_t sub_100079718()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_10007A284;
  }

  else
  {
    v6 = sub_100079844;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100079844()
{
  v1 = *(v0 + 24);
  v2 = [*(v0 + 16) recordName];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  *(v0 + 96) = v3;
  *(v0 + 104) = v5;
  v6 = *(v1 + 128);
  *(v0 + 112) = v6;
  v7 = *(v6 + 32);
  *(v0 + 160) = v7;
  v8 = -1;
  v9 = -1 << v7;
  if (-(-1 << v7) < 64)
  {
    v8 = ~(-1 << -v9);
  }

  v10 = v8 & *(v6 + 64);

  if (v10)
  {
    v11 = 0;
LABEL_8:
    *(v0 + 120) = v10;
    *(v0 + 128) = v11;
    v13 = (*(v6 + 56) + ((v11 << 10) | (16 * __clz(__rbit64(v10)))));
    *(v0 + 136) = *v13;
    v14 = v13[1];
    ObjectType = swift_getObjectType();
    v16 = *(v14 + 168);
    swift_unknownObjectRetain();
    v22 = (v16 + *v16);
    v17 = v16[1];
    v18 = swift_task_alloc();
    *(v0 + 144) = v18;
    *v18 = v0;
    v18[1] = sub_100079AA0;
    v19 = *(v0 + 96);

    return (v22)(0, 0, v19, v5, 0, ObjectType, v14);
  }

  else
  {
    v12 = 0;
    while (((63 - v9) >> 6) - 1 != v12)
    {
      v11 = v12 + 1;
      v10 = *(v6 + 8 * v12++ + 72);
      if (v10)
      {
        goto LABEL_8;
      }
    }

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_100079AA0()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v9 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = *(v2 + 104);
    v5 = *(v2 + 24);

    v6 = sub_100079DE0;
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 24);
    v6 = sub_100079BC8;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_100079BC8()
{
  v1 = *(v0 + 136);
  result = swift_unknownObjectRelease();
  v3 = *(v0 + 128);
  v4 = (*(v0 + 120) - 1) & *(v0 + 120);
  if (v4)
  {
    v5 = *(v0 + 112);
LABEL_7:
    *(v0 + 120) = v4;
    *(v0 + 128) = v3;
    v7 = *(v0 + 104);
    v8 = (*(v5 + 56) + ((v3 << 10) | (16 * __clz(__rbit64(v4)))));
    *(v0 + 136) = *v8;
    v9 = v8[1];
    ObjectType = swift_getObjectType();
    v11 = *(v9 + 168);
    swift_unknownObjectRetain();
    v17 = (v11 + *v11);
    v12 = v11[1];
    v13 = swift_task_alloc();
    *(v0 + 144) = v13;
    *v13 = v0;
    v13[1] = sub_100079AA0;
    v14 = *(v0 + 96);

    return (v17)(0, 0, v14, v7, 0, ObjectType, v9);
  }

  else
  {
    while (1)
    {
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
        return result;
      }

      v5 = *(v0 + 112);
      if (v6 >= (((1 << *(v0 + 160)) + 63) >> 6))
      {
        break;
      }

      v4 = *(v5 + 8 * v6 + 64);
      ++v3;
      if (v4)
      {
        v3 = v6;
        goto LABEL_7;
      }
    }

    v15 = *(v0 + 104);

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_100079DE0()
{
  v22 = v0;
  v1 = v0[17];
  v2 = v0[14];

  swift_unknownObjectRelease();
  v3 = v0[19];
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_100066000(v5, qword_100129988);
  v6 = v4;
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[2];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v10 = 136315394;
    v13 = [v9 recordName];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = sub_100065658(v14, v16, &v21);

    *(v10 + 4) = v17;
    *(v10 + 12) = 2112;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v18;
    *v11 = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Error handleAccount signOut prviously signed user %s, error: %@", v10, 0x16u);
    sub_100066C80(v11, &qword_1001287F0, &qword_1000E6C40);

    sub_10005D588(v12);
  }

  else
  {
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_10007A038()
{
  v21 = v0;
  v1 = v0[6];

  v2 = v0[9];
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v3 = v0[2];
  v4 = type metadata accessor for Logger();
  sub_100066000(v4, qword_100129988);
  v5 = v3;
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[2];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v9 = 136315394;
    v12 = [v8 recordName];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_100065658(v13, v15, &v20);

    *(v9 + 4) = v16;
    *(v9 + 12) = 2112;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v17;
    *v10 = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Error handleAccount signOut prviously signed user %s, error: %@", v9, 0x16u);
    sub_100066C80(v10, &qword_1001287F0, &qword_1000E6C40);

    sub_10005D588(v11);
  }

  else
  {
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_10007A284()
{
  v20 = v0;
  v1 = v0[11];
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v2 = v0[2];
  v3 = type metadata accessor for Logger();
  sub_100066000(v3, qword_100129988);
  v4 = v2;
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[2];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v8 = 136315394;
    v11 = [v7 recordName];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_100065658(v12, v14, &v19);

    *(v8 + 4) = v15;
    *(v8 + 12) = 2112;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v16;
    *v9 = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "Error handleAccount signOut prviously signed user %s, error: %@", v8, 0x16u);
    sub_100066C80(v9, &qword_1001287F0, &qword_1000E6C40);

    sub_10005D588(v10);
  }

  else
  {
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_10007A4C8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_10007A4EC, v2, 0);
}

uint64_t sub_10007A4EC()
{
  v56 = v0;
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = [v2 recordName];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *(v0 + 40) = v4;
  *(v0 + 48) = v6;
  v7 = [v1 recordName];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = [v2 recordName];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  if (v8 == v12 && v10 == v14)
  {

    v17 = 0;
LABEL_15:
    *(v0 + 153) = v17;
    v37 = *(v0 + 48);
    v38 = *(**(v0 + 32) + 240);

    v53 = (v38 + *v38);
    v39 = v38[1];
    v40 = swift_task_alloc();
    *(v0 + 104) = v40;
    *v40 = v0;
    v40[1] = sub_10007AE3C;
    v41 = *(v0 + 32);
    v42 = *(v0 + 40);
    v43 = v37;
    v44 = v53;

    return v44(v42, v43);
  }

  v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v17 = 0;
  if (v16)
  {
    goto LABEL_15;
  }

  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v18 = *(v0 + 16);
  v19 = type metadata accessor for Logger();
  sub_100066000(v19, qword_100129988);
  v20 = v18;

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = *(v0 + 16);
    v24 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *v24 = 136315394;
    v25 = [v23 recordName];
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    v29 = sub_100065658(v26, v28, &v55);

    *(v24 + 4) = v29;
    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_100065658(v4, v6, &v55);
    _os_log_impl(&_mh_execute_header, v21, v22, "account switch from = %s to %s", v24, 0x16u);
    swift_arrayDestroy();
  }

  v30 = *(*(v0 + 32) + 128);
  *(v0 + 56) = v30;
  v31 = *(v30 + 32);
  *(v0 + 152) = v31;
  v32 = -1;
  v33 = -1 << v31;
  if (-(-1 << v31) < 64)
  {
    v32 = ~(-1 << -v33);
  }

  v34 = v32 & *(v30 + 64);

  if (!v34)
  {
    v46 = 0;
    while (((63 - v33) >> 6) - 1 != v46)
    {
      v36 = v46 + 1;
      v34 = *(v35 + 8 * v46++ + 72);
      if (v34)
      {
        goto LABEL_21;
      }
    }

    v17 = 1;
    goto LABEL_15;
  }

  v36 = 0;
LABEL_21:
  *(v0 + 64) = v34;
  *(v0 + 72) = v36;
  v47 = (*(v35 + 56) + ((v36 << 10) | (16 * __clz(__rbit64(v34)))));
  *(v0 + 80) = *v47;
  v48 = v47[1];
  ObjectType = swift_getObjectType();
  v50 = *(v48 + 200);
  swift_unknownObjectRetain();
  v54 = (v50 + *v50);
  v51 = v50[1];
  v52 = swift_task_alloc();
  *(v0 + 88) = v52;
  *v52 = v0;
  v52[1] = sub_10007AA44;
  v42 = ObjectType;
  v43 = v48;
  v44 = v54;

  return v44(v42, v43);
}

uint64_t sub_10007AA44()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = sub_10007B36C;
  }

  else
  {
    v6 = sub_10007AB70;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10007AB70()
{
  v1 = *(v0 + 80);
  result = swift_unknownObjectRelease();
  v3 = *(v0 + 72);
  v4 = (*(v0 + 64) - 1) & *(v0 + 64);
  if (v4)
  {
    result = *(v0 + 56);
LABEL_7:
    *(v0 + 64) = v4;
    *(v0 + 72) = v3;
    v6 = (*(result + 56) + ((v3 << 10) | (16 * __clz(__rbit64(v4)))));
    *(v0 + 80) = *v6;
    v7 = v6[1];
    ObjectType = swift_getObjectType();
    v9 = *(v7 + 200);
    swift_unknownObjectRetain();
    v20 = (v9 + *v9);
    v10 = v9[1];
    v11 = swift_task_alloc();
    *(v0 + 88) = v11;
    *v11 = v0;
    v11[1] = sub_10007AA44;
    v12 = ObjectType;
    v13 = v7;
    v14 = v20;
  }

  else
  {
    while (1)
    {
      v5 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
        return result;
      }

      result = *(v0 + 56);
      if (v5 >= (((1 << *(v0 + 152)) + 63) >> 6))
      {
        break;
      }

      v4 = *(result + 8 * v5 + 64);
      ++v3;
      if (v4)
      {
        v3 = v5;
        goto LABEL_7;
      }
    }

    *(v0 + 153) = 1;
    v15 = *(v0 + 48);
    v16 = *(**(v0 + 32) + 240);

    v21 = (v16 + *v16);
    v17 = v16[1];
    v18 = swift_task_alloc();
    *(v0 + 104) = v18;
    *v18 = v0;
    v18[1] = sub_10007AE3C;
    v19 = *(v0 + 32);
    v12 = *(v0 + 40);
    v13 = v15;
    v14 = v21;
  }

  return v14(v12, v13);
}

uint64_t sub_10007AE3C()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;

  if (v0)
  {
  }

  v5 = *(v2 + 48);
  v6 = *(**(v2 + 32) + 224);
  v12 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v2 + 112) = v8;
  *v8 = v4;
  v8[1] = sub_10007B010;
  v9 = *(v2 + 32);
  v10 = *(v2 + 40);

  return v12(v10, v5);
}

uint64_t sub_10007B010()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v9 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = *(v2 + 48);
    v5 = *(v2 + 32);

    v6 = sub_10007B624;
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 32);
    v6 = sub_10007B138;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_10007B138()
{
  v1 = *(v0 + 48);
  v2 = [*(v0 + 16) recordName];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  *(v0 + 128) = v5;
  v6 = swift_task_alloc();
  *(v0 + 136) = v6;
  *v6 = v0;
  v6[1] = sub_10007B220;
  v7 = *(v0 + 153);
  v9 = *(v0 + 32);
  v8 = *(v0 + 40);

  return sub_100076BC8(v8, v1, v3, v5, v7);
}

uint64_t sub_10007B220()
{
  v2 = *(*v1 + 136);
  v3 = *v1;
  v3[18] = v0;

  if (v0)
  {
    v4 = v3[4];

    return _swift_task_switch(sub_10007B8C8, v4, 0);
  }

  else
  {
    v5 = v3[16];
    v6 = v3[6];
    swift_bridgeObjectRelease_n();

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_10007B36C()
{
  v26 = v0;
  v1 = v0[10];
  v2 = v0[7];

  swift_unknownObjectRelease();
  v3 = v0[12];
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v4 = v0[6];
  v5 = v0[2];
  v6 = type metadata accessor for Logger();
  sub_100066000(v6, qword_100129988);
  v7 = v5;

  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[6];
  if (v10)
  {
    v24 = v0[5];
    v12 = v0[2];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v13 = 136315650;
    v15 = [v12 recordName];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = sub_100065658(v16, v18, &v25);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    v20 = sub_100065658(v24, v11, &v25);

    *(v13 + 14) = v20;
    *(v13 + 22) = 2112;
    swift_errorRetain();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 24) = v21;
    *v14 = v21;
    _os_log_impl(&_mh_execute_header, v8, v9, "Error handleAccount switch prviously signed user %s, currently signed in user %s, error: %@", v13, 0x20u);
    sub_100066C80(v14, &qword_1001287F0, &qword_1000E6C40);

    swift_arrayDestroy();
  }

  else
  {
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_10007B624()
{
  v24 = v0;
  v1 = v0[15];
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v3 = v0[2];
  v4 = type metadata accessor for Logger();
  sub_100066000(v4, qword_100129988);
  v5 = v3;

  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[6];
  if (v8)
  {
    v22 = v0[5];
    v10 = v0[2];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v11 = 136315650;
    v13 = [v10 recordName];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = sub_100065658(v14, v16, &v23);

    *(v11 + 4) = v17;
    *(v11 + 12) = 2080;
    v18 = sub_100065658(v22, v9, &v23);

    *(v11 + 14) = v18;
    *(v11 + 22) = 2112;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v19;
    *v12 = v19;
    _os_log_impl(&_mh_execute_header, v6, v7, "Error handleAccount switch prviously signed user %s, currently signed in user %s, error: %@", v11, 0x20u);
    sub_100066C80(v12, &qword_1001287F0, &qword_1000E6C40);

    swift_arrayDestroy();
  }

  else
  {
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_10007B8C8()
{
  v26 = v0;
  v1 = v0[16];
  v2 = v0[6];

  v3 = v0[18];
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v4 = v0[6];
  v5 = v0[2];
  v6 = type metadata accessor for Logger();
  sub_100066000(v6, qword_100129988);
  v7 = v5;

  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[6];
  if (v10)
  {
    v24 = v0[5];
    v12 = v0[2];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v13 = 136315650;
    v15 = [v12 recordName];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = sub_100065658(v16, v18, &v25);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    v20 = sub_100065658(v24, v11, &v25);

    *(v13 + 14) = v20;
    *(v13 + 22) = 2112;
    swift_errorRetain();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 24) = v21;
    *v14 = v21;
    _os_log_impl(&_mh_execute_header, v8, v9, "Error handleAccount switch prviously signed user %s, currently signed in user %s, error: %@", v13, 0x20u);
    sub_100066C80(v14, &qword_1001287F0, &qword_1000E6C40);

    swift_arrayDestroy();
  }

  else
  {
  }

  v22 = v0[1];

  return v22();
}

void sub_10007BB80(uint64_t a1, uint64_t a2)
{
  v79 = a2;
  v78 = a1;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v76 = *(v2 - 8);
  v77 = v2;
  v3 = *(v76 + 64);
  __chkstk_darwin(v2);
  v74 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for DispatchQoS();
  v73 = *(v75 - 8);
  v5 = *(v73 + 64);
  __chkstk_darwin(v75);
  v72 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for DispatchTime();
  v71 = *(v81 - 8);
  v7 = *(v71 + 64);
  v8 = __chkstk_darwin(v81);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v68 - v11;
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100066000(v13, qword_100129988);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "fetch MA cloud record zones", v16, 2u);
  }

  sub_10005F5CC(&qword_1001284B0, &qword_1000E64D0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1000E63A0;
  sub_100092C8C(0, &qword_1001284B8, CKRecordZoneID_ptr);
  v18 = sub_1000C549C();
  v19 = *v18;
  v20 = v18[1];
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v24._countAndFlagsBits = v19;
  v24._object = v20;
  v25._countAndFlagsBits = v21;
  v25._object = v23;
  *(v17 + 32) = CKRecordZoneID.init(zoneName:ownerName:)(v24, v25);
  v26 = sub_1000C54A8();
  v27 = *v26;
  v28 = v26[1];
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  v32._countAndFlagsBits = v27;
  v32._object = v28;
  v33._countAndFlagsBits = v29;
  v33._object = v31;
  *(v17 + 40) = CKRecordZoneID.init(zoneName:ownerName:)(v32, v33);
  v34 = objc_allocWithZone(CKFetchRecordZonesOperation);
  v70 = v17;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v36 = [v34 initWithRecordZoneIDs:isa];

  v37 = objc_allocWithZone(NSUserDefaults);
  v38 = String._bridgeToObjectiveC()();
  v39 = [v37 initWithSuiteName:v38];

  v40 = 5.0;
  if (v39)
  {
    v41 = v39;
    v42 = String._bridgeToObjectiveC()();
    [v41 doubleForKey:v42];
    v44 = v43;

    if (v44 > 1.0)
    {
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 134217984;
        *(v47 + 4) = v44;
        _os_log_impl(&_mh_execute_header, v45, v46, "CKfetchZonesOperationTimeout is configured as %f secs", v47, 0xCu);
      }

      v40 = v44;
    }
  }

  v69 = v39;
  v48 = v36;
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *v51 = 134218242;
    *(v51 + 4) = v40;
    *(v51 + 12) = 2112;
    *(v51 + 14) = v48;
    *v52 = v48;
    v53 = v48;
    _os_log_impl(&_mh_execute_header, v49, v50, "create %f secs timer for %@", v51, 0x16u);
    sub_100066C80(v52, &qword_1001287F0, &qword_1000E6C40);
  }

  sub_100092C8C(0, &qword_1001284C0, OS_dispatch_queue_ptr);
  v54 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  v55 = v12;
  + infix(_:_:)();
  v71 = *(v71 + 8);
  (v71)(v10, v81);
  v56 = swift_allocObject();
  *(v56 + 16) = v48;
  aBlock[4] = sub_100092D0C;
  aBlock[5] = v56;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000624B0;
  aBlock[3] = &unk_100117590;
  v57 = _Block_copy(aBlock);
  v58 = v48;
  v59 = v72;
  static DispatchQoS.unspecified.getter();
  v82 = _swiftEmptyArrayStorage;
  sub_100092BD4(&qword_1001284C8, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_10005F5CC(&qword_1001284D0, &qword_1000E64D8);
  sub_100092F08();
  v60 = v74;
  v61 = v77;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v57);

  (*(v76 + 8))(v60, v61);
  (*(v73 + 8))(v59, v75);
  (v71)(v55, v81);

  v62 = swift_allocObject();
  *(v62 + 16) = 0;
  [v58 setQualityOfService:25];
  v63 = swift_allocObject();
  *(v63 + 16) = v70;
  *(v63 + 24) = v62;

  CKFetchRecordZonesOperation.perRecordZoneResultBlock.setter();
  v64 = swift_allocObject();
  v65 = v78;
  v66 = v79;
  v64[2] = v62;
  v64[3] = v65;
  v64[4] = v66;

  CKFetchRecordZonesOperation.fetchRecordZonesResultBlock.setter();
  v67 = [*(v80 + 120) privateCloudDatabase];
  [v67 addOperation:v58];
}

void sub_10007C43C(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    if (qword_100129980 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100066000(v7, qword_100129988);
    v8 = a1;
    sub_100093928(a2, 1);
    v42 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    sub_100093934(a2, 1);
    if (os_log_type_enabled(v42, v9))
    {
      v10 = swift_slowAlloc();
      v43[0] = swift_slowAlloc();
      *v10 = 136315394;
      v11 = v8;
      v12 = [v11 description];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = sub_100065658(v13, v15, v43);

      *(v10 + 4) = v16;
      *(v10 + 12) = 2080;
      ErrorValue = swift_getErrorValue();
      v18 = *(*(v43[5] - 8) + 64);
      __chkstk_darwin(ErrorValue);
      (*(v20 + 16))(&v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
      v21 = String.init<A>(describing:)();
      v23 = sub_100065658(v21, v22, v43);

      *(v10 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v42, v9, "Error fetching record zone %s {error: %s}", v10, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {
    v43[0] = a1;
    __chkstk_darwin(a1);
    v40[2] = v43;
    if (sub_100092534(sub_100093940, v40, v25))
    {
      if (qword_100129980 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      sub_100066000(v26, qword_100129988);
      v27 = a1;
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v43[0] = v31;
        *v30 = 136315138;
        v32 = [v27 zoneName];
        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = v34;

        v36 = sub_100065658(v33, v35, v43);

        *(v30 + 4) = v36;
        _os_log_impl(&_mh_execute_header, v28, v29, "found matched MA record zone: %s", v30, 0xCu);
        sub_10005D588(v31);
      }

      swift_beginAccess();
      v37 = *(a5 + 16);
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        __break(1u);
      }

      else
      {
        *(a5 + 16) = v39;
      }
    }
  }
}

uint64_t sub_10007C8C8(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(_BOOL8, uint64_t))
{
  if (a2)
  {
    if (qword_100129980 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100066000(v6, qword_100129988);
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    sub_10009391C(a1, 1);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v27[0] = v10;
      *v9 = 136315138;
      ErrorValue = swift_getErrorValue();
      v12 = *(*(v27[4] - 8) + 64);
      __chkstk_darwin(ErrorValue);
      (*(v14 + 16))(&v26[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)]);
      v15 = String.init<A>(describing:)();
      v17 = sub_100065658(v15, v16, v27);

      *(v9 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v7, v8, "Error fetching record zones {error: %s}", v9, 0xCu);
      sub_10005D588(v10);
    }

    v18 = 0;
    v19 = a1;
  }

  else
  {
    if (qword_100129980 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100066000(v21, qword_100129988);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      swift_beginAccess();
      *(v24 + 4) = *(a3 + 16);

      _os_log_impl(&_mh_execute_header, v22, v23, "fetchRecordZones completes with number of zones: %ld", v24, 0xCu);
    }

    else
    {
    }

    swift_beginAccess();
    v18 = *(a3 + 16) > 0;
    v19 = 0;
  }

  return a4(v18, v19);
}

uint64_t sub_10007CC18()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 128);

  v3 = *(v0 + 144);

  v4 = *(v0 + 160);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10007CC60()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 128);

  v3 = *(v0 + 144);

  v4 = *(v0 + 160);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10007CCC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  return _swift_task_switch(sub_10007CCE8, v3, 0);
}

uint64_t sub_10007CCE8()
{
  v76 = v0;
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 72);
  v2 = type metadata accessor for Logger();
  *(v0 + 96) = sub_100066000(v2, qword_100129988);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 72);
    v6 = *(v0 + 80);
    v7 = *(v0 + 64);
    v8 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    *v8 = 136315394;
    *(v8 + 4) = sub_100065658(v7, v5, &v74);
    *(v8 + 12) = 2080;
    *(v0 + 56) = v6;
    type metadata accessor for MASDAssetType(0);
    sub_100092BD4(&qword_1001284E0, 255, type metadata accessor for MASDAssetType);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = sub_100065658(v9, v10, &v74);

    *(v8 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "Scheduling upload: %s %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v12 = *(v0 + 72);
  v13 = *(v0 + 64) & 0xFFFFFFFFFFFFLL;
  if ((v12 & 0x2000000000000000) != 0)
  {
    v13 = HIBYTE(v12) & 0xF;
  }

  if (v13)
  {
    v14.super.isa = sub_1000C60E0(*(v0 + 80)).super.isa;
    *(v0 + 104) = v14;
    if (v14.super.isa)
    {
      isa = v14.super.isa;
      v16 = *(v0 + 88);
      v18 = *(v0 + 64);
      v17 = *(v0 + 72);
      sub_100092C8C(0, &qword_100128458, CKRecordID_ptr);

      v19 = isa;
      v20._countAndFlagsBits = v18;
      v20._object = v17;
      v21 = CKRecordID.init(recordName:zoneID:)(v20, v19).super.isa;
      *(v0 + 112) = v21;
      sub_10005F5CC(&qword_1001284E8, &qword_1000E64E8);
      v22 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
      v23 = *(v22 - 8);
      v24 = *(v23 + 72);
      v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1000E61E0;
      *(v26 + v25) = v21;
      *(v0 + 120) = v26;
      (*(v23 + 104))(v26 + v25, enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:), v22);
      v27 = *(*v16 + 192);
      v28 = v21;
      v73 = (v27 + *v27);
      v29 = v27[1];
      v30 = swift_task_alloc();
      *(v0 + 128) = v30;
      *v30 = v0;
      v30[1] = sub_10007D5D8;
      v31 = *(v0 + 88);

      return v73();
    }

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = *(v0 + 80);
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v74 = v58;
      *v57 = 136315138;
      *(v0 + 24) = v56;
      type metadata accessor for MASDAssetType(0);
      sub_100092BD4(&qword_1001284E0, 255, type metadata accessor for MASDAssetType);
      v59 = dispatch thunk of CustomStringConvertible.description.getter();
      v61 = sub_100065658(v59, v60, &v74);

      *(v57 + 4) = v61;
      _os_log_impl(&_mh_execute_header, v54, v55, "Uploading record %s is not supported on this platform", v57, 0xCu);
      sub_10005D588(v58);
    }

    v62 = *(v0 + 80);
    v74 = 0;
    v75 = 0xE000000000000000;
    _StringGuts.grow(_:)(64);
    v63._countAndFlagsBits = 0xD00000000000001CLL;
    v63._object = 0x80000001000F0F00;
    String.append(_:)(v63);
    *(v0 + 16) = v62;
    type metadata accessor for MASDAssetType(0);
    sub_100092BD4(&qword_1001284E0, 255, type metadata accessor for MASDAssetType);
    v64._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v64);

    v65._countAndFlagsBits = 0xD000000000000022;
    v65._object = 0x80000001000F0E80;
    String.append(_:)(v65);
    v51 = v74;
    v52 = v75;
    v53 = 15;
  }

  else
  {
    v33 = *(v0 + 72);

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = *(v0 + 72);
      v37 = *(v0 + 80);
      v38 = *(v0 + 64);
      v39 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *v39 = 136315394;
      *(v39 + 4) = sub_100065658(v38, v36, &v74);
      *(v39 + 12) = 2080;
      *(v0 + 48) = v37;
      type metadata accessor for MASDAssetType(0);
      sub_100092BD4(&qword_1001284E0, 255, type metadata accessor for MASDAssetType);
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = sub_100065658(v40, v41, &v74);

      *(v39 + 14) = v42;
      _os_log_impl(&_mh_execute_header, v34, v35, "Uploading record %s type %s with empty recordName is not allowed", v39, 0x16u);
      swift_arrayDestroy();
    }

    v43 = *(v0 + 72);
    v44 = *(v0 + 80);
    v45 = *(v0 + 64);
    v74 = 0;
    v75 = 0xE000000000000000;
    _StringGuts.grow(_:)(64);
    v46._object = 0x80000001000F0F20;
    v46._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v46);
    v47._countAndFlagsBits = v45;
    v47._object = v43;
    String.append(_:)(v47);
    v48._countAndFlagsBits = 0x206570797420;
    v48._object = 0xE600000000000000;
    String.append(_:)(v48);
    *(v0 + 40) = v44;
    type metadata accessor for MASDAssetType(0);
    sub_100092BD4(&qword_1001284E0, 255, type metadata accessor for MASDAssetType);
    v49._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v49);

    v50._countAndFlagsBits = 0xD000000000000025;
    v50._object = 0x80000001000F0F40;
    String.append(_:)(v50);
    v51 = v74;
    v52 = v75;
    v53 = 17;
  }

  v66 = nullsub_1(v53, v51, v52);
  v68 = v67;
  v70 = v69;
  sub_100092A98();
  swift_allocError();
  *v71 = v66;
  *(v71 + 8) = v68;
  *(v71 + 16) = v70;
  swift_willThrow();
  v72 = *(v0 + 8);

  return v72();
}

uint64_t sub_10007D5D8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;
  v4[17] = v1;

  v7 = v4[11];
  if (v1)
  {
    v8 = sub_10007D948;
  }

  else
  {
    v4[18] = a1;
    v8 = sub_10007D714;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10007D714()
{
  v20 = v0;
  v1 = *(v0 + 144);
  v2._rawValue = *(v0 + 120);
  v3 = *(v0 + 96);
  v4 = *(v0 + 72);
  CKSyncEngine.state.getter();

  CKSyncEngine.State.add(pendingRecordZoneChanges:)(v2);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = *(v0 + 104);
    v7 = *(v0 + 112);
    v9 = *(v0 + 72);
    v10 = *(v0 + 80);
    v11 = *(v0 + 64);
    v12 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v12 = 136315394;
    *(v12 + 4) = sub_100065658(v11, v9, &v19);
    *(v12 + 12) = 2080;
    *(v0 + 32) = v10;
    type metadata accessor for MASDAssetType(0);
    sub_100092BD4(&qword_1001284E0, 255, type metadata accessor for MASDAssetType);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = sub_100065658(v13, v14, &v19);

    *(v12 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "Asked syncEngine to upload: %s %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v16 = *(v0 + 104);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_10007D948()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];

  v4 = v0[17];
  v5 = v0[1];

  return v5();
}

uint64_t sub_10007D9B8(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
  v3[9] = v4;
  v5 = *(v4 - 8);
  v3[10] = v5;
  v6 = *(v5 + 64) + 15;
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_10007DA7C, v2, 0);
}

uint64_t sub_10007DA7C()
{
  v76 = v0;
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = type metadata accessor for Logger();
  sub_100066000(v2, qword_100129988);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 48);
    v6 = *(v0 + 56);
    v7 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    *v7 = 136315394;
    v8 = Array.description.getter();
    v10 = sub_100065658(v8, v9, &v74);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    *(v0 + 40) = v6;
    type metadata accessor for MASDAssetType(0);
    sub_100092BD4(&qword_1001284E0, 255, type metadata accessor for MASDAssetType);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = sub_100065658(v11, v12, &v74);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deleting record %s %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v14 = *(v0 + 48);
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = (v14 + 40);
    v17 = *(v14 + 16);
    do
    {
      if ((*v16 & 0x2000000000000000) != 0)
      {
        v18 = HIBYTE(*v16) & 0xFLL;
      }

      else
      {
        v18 = *(v16 - 1) & 0xFFFFFFFFFFFFLL;
      }

      if (!v18)
      {
        v38 = *(v0 + 48);

        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v39, v40))
        {
          v41 = *(v0 + 48);
          v42 = *(v0 + 56);
          v43 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          *v43 = 136315394;
          v44 = Array.description.getter();
          v46 = sub_100065658(v44, v45, &v74);

          *(v43 + 4) = v46;
          *(v43 + 12) = 2080;
          *(v0 + 32) = v42;
          type metadata accessor for MASDAssetType(0);
          sub_100092BD4(&qword_1001284E0, 255, type metadata accessor for MASDAssetType);
          v47 = dispatch thunk of CustomStringConvertible.description.getter();
          v49 = sub_100065658(v47, v48, &v74);

          *(v43 + 14) = v49;
          _os_log_impl(&_mh_execute_header, v39, v40, "RecordNames: %s type: %s to be deleted contain empty recordName", v43, 0x16u);
          swift_arrayDestroy();
        }

        sub_1000B9568();
        goto LABEL_29;
      }

      v16 += 2;
      --v17;
    }

    while (v17);
    v72.super.isa = sub_1000C60E0(*(v0 + 56)).super.isa;
    if (!v72.super.isa)
    {
      goto LABEL_26;
    }

    v19 = *(v0 + 80);
    v74 = _swiftEmptyArrayStorage;
    sub_10009265C(0, v15, 0);
    sub_100092C8C(0, &qword_100128458, CKRecordID_ptr);
    v20 = v74;
    v71 = enum case for CKSyncEngine.PendingRecordZoneChange.deleteRecord(_:);
    v21 = (v14 + 40);
    do
    {
      v22 = *(v0 + 88);
      v23 = *(v0 + 72);
      v24 = *(v21 - 1);
      v25 = *v21;

      isa = v72.super.isa;
      v27._countAndFlagsBits = v24;
      v27._object = v25;
      v22->super.isa = CKRecordID.init(recordName:zoneID:)(v27, isa).super.isa;
      (*(v19 + 104))(v22, v71, v23);
      v74 = v20;
      v29 = v20[2];
      v28 = v20[3];
      if (v29 >= v28 >> 1)
      {
        sub_10009265C(v28 > 1, v29 + 1, 1);
        v20 = v74;
      }

      v30 = *(v0 + 88);
      v31 = *(v0 + 72);
      v20[2] = v29 + 1;
      (*(v19 + 32))(v20 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v29, v30, v31);
      v21 += 2;
      --v15;
    }

    while (v15);
    goto LABEL_20;
  }

  v32.super.isa = sub_1000C60E0(*(v0 + 56)).super.isa;
  if (v32.super.isa)
  {
    isa = v32.super.isa;
    v20 = _swiftEmptyArrayStorage;
LABEL_20:
    *(v0 + 96) = isa;
    *(v0 + 104) = v20;
    v33 = *(**(v0 + 64) + 192);
    v73 = (v33 + *v33);
    v34 = v33[1];
    v35 = swift_task_alloc();
    *(v0 + 112) = v35;
    *v35 = v0;
    v35[1] = sub_10007E308;
    v36 = *(v0 + 64);

    return v73();
  }

LABEL_26:
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = *(v0 + 56);
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v74 = v57;
    *v56 = 136315138;
    *(v0 + 24) = v55;
    type metadata accessor for MASDAssetType(0);
    sub_100092BD4(&qword_1001284E0, 255, type metadata accessor for MASDAssetType);
    v58 = dispatch thunk of CustomStringConvertible.description.getter();
    v60 = sub_100065658(v58, v59, &v74);

    *(v56 + 4) = v60;
    _os_log_impl(&_mh_execute_header, v53, v54, "Deleting record %s is not supported on this platform", v56, 0xCu);
    sub_10005D588(v57);
  }

  v61 = *(v0 + 56);
  v74 = 0;
  v75 = 0xE000000000000000;
  _StringGuts.grow(_:)(63);
  v62._object = 0x80000001000F0F70;
  v62._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v62);
  *(v0 + 16) = v61;
  type metadata accessor for MASDAssetType(0);
  sub_100092BD4(&qword_1001284E0, 255, type metadata accessor for MASDAssetType);
  v63._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v63);

  v64._countAndFlagsBits = 0xD000000000000022;
  v64._object = 0x80000001000F0E80;
  String.append(_:)(v64);
  v50 = nullsub_1(15, v74, v75);
LABEL_29:
  v65 = v50;
  v66 = v51;
  v67 = v52;
  sub_100092A98();
  swift_allocError();
  *v68 = v65;
  *(v68 + 8) = v66;
  *(v68 + 16) = v67;
  swift_willThrow();
  v69 = *(v0 + 88);

  v70 = *(v0 + 8);

  return v70();
}

uint64_t sub_10007E308(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;
  v4[15] = v1;

  v7 = v4[8];
  if (v1)
  {
    v8 = sub_10007E4F4;
  }

  else
  {
    v4[16] = a1;
    v8 = sub_10007E444;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10007E444()
{
  v1 = v0[16];
  v3 = v0[12];
  v2._rawValue = v0[13];
  v4 = v0[11];
  CKSyncEngine.state.getter();

  CKSyncEngine.State.add(pendingRecordZoneChanges:)(v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10007E4F4()
{
  v2 = v0[12];
  v1 = v0[13];

  v3 = v0[15];
  v4 = v0[11];

  v5 = v0[1];

  return v5();
}

uint64_t sub_10007E584()
{
  v26 = v0;
  v1 = *(*(v0 + 16) + 128);
  *(v0 + 24) = v1;
  v2 = *(v1 + 32);
  *(v0 + 100) = v2;
  v3 = -1;
  v4 = -1 << v2;
  if (-(-1 << v2) < 64)
  {
    v3 = ~(-1 << -(-1 << v2));
  }

  v5 = v3 & *(v1 + 64);
  *(v0 + 32) = CKCurrentUserDefaultName;
  *(v0 + 96) = enum case for CKSyncEngine.PendingDatabaseChange.deleteZone(_:);

  if (v5)
  {
    v7 = 0;
LABEL_8:
    *(v0 + 40) = v5;
    *(v0 + 48) = v7;
    v9 = (*(v6 + 48) + ((v7 << 10) | (16 * __clz(__rbit64(v5)))));
    v10 = *v9;
    *(v0 + 56) = *v9;
    v11 = v9[1];
    *(v0 + 64) = v11;
    v12 = qword_100129980;

    if (v12 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100066000(v13, qword_100129988);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v25 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_100065658(v10, v11, &v25);
      _os_log_impl(&_mh_execute_header, v14, v15, "Deleting zone %s", v16, 0xCu);
      sub_10005D588(v17);
    }

    v18 = *(**(v0 + 16) + 192);
    v24 = (v18 + *v18);
    v19 = v18[1];
    v20 = swift_task_alloc();
    *(v0 + 72) = v20;
    *v20 = v0;
    v20[1] = sub_10007E8CC;
    v21 = *(v0 + 16);

    return v24();
  }

  else
  {
    v8 = 0;
    while (((63 - v4) >> 6) - 1 != v8)
    {
      v7 = v8 + 1;
      v5 = *(v6 + 8 * v8++ + 72);
      if (v5)
      {
        goto LABEL_8;
      }
    }

    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_10007E8CC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v7 = v4[8];
    v8 = v4[2];

    v9 = sub_10007EE4C;
    v10 = v8;
  }

  else
  {
    v10 = v4[2];
    v4[11] = a1;
    v9 = sub_10007EA0C;
  }

  return _swift_task_switch(v9, v10, 0);
}

uint64_t sub_10007EA0C()
{
  v34 = v0;
  v1 = *(v0 + 88);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v31 = *(v0 + 96);
  v4 = *(v0 + 32);
  v5 = CKSyncEngine.state.getter();

  sub_10005F5CC(&qword_100128490, &qword_1000E6420);
  v6 = type metadata accessor for CKSyncEngine.PendingDatabaseChange();
  v7 = *(v6 - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1000E61E0;
  sub_100092C8C(0, &qword_1001284B8, CKRecordZoneID_ptr);
  v11._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11._object = v12;
  v13._countAndFlagsBits = v3;
  v13._object = v2;
  *(v10 + v9) = CKRecordZoneID.init(zoneName:ownerName:)(v13, v11);
  (*(v7 + 104))(v10 + v9, v31, v6);
  CKSyncEngine.State.add(pendingDatabaseChanges:)(v10);

  v14 = *(v0 + 48);
  v15 = (*(v0 + 40) - 1) & *(v0 + 40);
  if (v15)
  {
    v16 = *(v0 + 24);
LABEL_7:
    *(v0 + 40) = v15;
    *(v0 + 48) = v14;
    v18 = (*(v16 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v15)))));
    v5 = *v18;
    *(v0 + 56) = *v18;
    v9 = v18[1];
    *(v0 + 64) = v9;
    v19 = qword_100129980;

    if (v19 != -1)
    {
LABEL_17:
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100066000(v20, qword_100129988);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v33 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_100065658(v5, v9, &v33);
      _os_log_impl(&_mh_execute_header, v21, v22, "Deleting zone %s", v23, 0xCu);
      sub_10005D588(v24);
    }

    v25 = *(**(v0 + 16) + 192);
    v32 = (v25 + *v25);
    v26 = v25[1];
    v27 = swift_task_alloc();
    *(v0 + 72) = v27;
    *v27 = v0;
    v27[1] = sub_10007E8CC;
    v28 = *(v0 + 16);

    return v32();
  }

  else
  {
    while (1)
    {
      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_17;
      }

      v16 = *(v0 + 24);
      if (v17 >= (((1 << *(v0 + 100)) + 63) >> 6))
      {
        break;
      }

      v15 = *(v16 + 8 * v17 + 64);
      ++v14;
      if (v15)
      {
        v14 = v17;
        goto LABEL_7;
      }
    }

    v30 = *(v0 + 8);

    return v30();
  }
}

uint64_t sub_10007EE4C()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_10007EEB0(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return _swift_task_switch(sub_10007EED4, v2, 0);
}

uint64_t sub_10007EED4()
{
  v46 = v0;
  v1 = *(v0 + 32);
  v2 = related decl 'e' for CKErrorCode.underlyingError.getter();
  *(v0 + 56) = v2;
  if (v2)
  {
    v3 = v2;
    *(v0 + 16) = v2;
    type metadata accessor for CKUnderlyingError(0);
    sub_100092BD4(&qword_1001284F0, 255, type metadata accessor for CKUnderlyingError);
    _BridgedStoredNSError.code.getter();
    if (*(v0 + 24) == 5011)
    {
      if (qword_100129980 != -1)
      {
        swift_once();
      }

      v4 = *(v0 + 40);
      v5 = type metadata accessor for Logger();
      *(v0 + 64) = sub_100066000(v5, qword_100129988);
      v6 = v4;
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = *(v0 + 40);
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v45 = v11;
        *v10 = 136315138;
        v12 = [v9 zoneName];
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;

        v16 = sub_100065658(v13, v15, &v45);

        *(v10 + 4) = v16;
        _os_log_impl(&_mh_execute_header, v7, v8, "Missing manatee identity, deleting zone %s", v10, 0xCu);
        sub_10005D588(v11);
      }

      v17 = *(*(v0 + 48) + 128);
      v18 = [*(v0 + 40) zoneName];
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      if (*(v17 + 16))
      {
        v22 = sub_100065A98(v19, v21);
        v24 = v23;

        if (v24)
        {
          v25 = (*(v17 + 56) + 16 * v22);
          *(v0 + 72) = *v25;
          v26 = v25[1];
          ObjectType = swift_getObjectType();
          v28 = *(v26 + 192);
          swift_unknownObjectRetain();
          v44 = (v28 + *v28);
          v29 = v28[1];
          v30 = swift_task_alloc();
          *(v0 + 80) = v30;
          *v30 = v0;
          v30[1] = sub_10007F3AC;

          return v44(1, ObjectType, v26);
        }
      }

      else
      {
      }

      v32 = *(v0 + 40);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = *(v0 + 40);
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v45 = v37;
        *v36 = 136315138;
        v38 = [v35 zoneName];
        v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v41 = v40;

        v42 = sub_100065658(v39, v41, &v45);

        *(v36 + 4) = v42;
        _os_log_impl(&_mh_execute_header, v33, v34, "Ignored unknown zone: %s", v36, 0xCu);
        sub_10005D588(v37);
      }
    }

    else
    {
    }
  }

  v43 = *(v0 + 8);

  return v43(0);
}

uint64_t sub_10007F3AC()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 48);
  v10 = *v0;

  v4 = *(*v3 + 192);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v1 + 88) = v6;
  *v6 = v10;
  v6[1] = sub_10007F578;
  v7 = *(v1 + 48);

  return v9();
}

uint64_t sub_10007F578(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;
  v4[12] = v1;

  v7 = v4[6];
  if (v1)
  {
    v8 = sub_10007F830;
  }

  else
  {
    v4[13] = a1;
    v8 = sub_10007F6B4;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10007F6B4()
{
  v1 = v0[13];
  v2 = v0[9];
  v3 = v0[7];
  v4 = v0[5];
  CKSyncEngine.state.getter();

  sub_10005F5CC(&qword_100128490, &qword_1000E6420);
  v5 = type metadata accessor for CKSyncEngine.PendingDatabaseChange();
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000E61E0;
  *(v9 + v8) = v4;
  (*(v6 + 104))(v9 + v8, enum case for CKSyncEngine.PendingDatabaseChange.deleteZone(_:), v5);
  v10 = v4;
  CKSyncEngine.State.add(pendingDatabaseChanges:)(v9);

  swift_unknownObjectRelease();
  v11 = v0[1];

  return v11(1);
}

uint64_t sub_10007F830()
{
  v25 = v0;
  v1 = v0[12];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[5];
  swift_unknownObjectRelease();
  v5 = v4;
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[12];
  v10 = v0[7];
  if (v8)
  {
    v11 = v0[5];
    v23 = v0[7];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24 = v14;
    *v12 = 136315394;
    v15 = [v11 zoneName];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = sub_100065658(v16, v18, &v24);

    *(v12 + 4) = v19;
    *(v12 + 12) = 2112;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v20;
    *v13 = v20;
    _os_log_impl(&_mh_execute_header, v6, v7, "Error deleting zone %s, error: %@", v12, 0x16u);
    sub_100066C80(v13, &qword_1001287F0, &qword_1000E6C40);

    sub_10005D588(v14);
  }

  else
  {
  }

  v21 = v0[1];

  return v21(1);
}

uint64_t sub_10007FA50(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10007FAFC;

  return (sub_100093060)(a1);
}

uint64_t sub_10007FAFC(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_10007FBF8(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  Asset = type metadata accessor for CKSyncEngine.Event.DidFetchAsset();
  v3[6] = Asset;
  v5 = *(Asset - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v7 = type metadata accessor for CKSyncEngine.Event.FetchedAsset();
  v3[10] = v7;
  v8 = *(v7 - 8);
  v3[11] = v8;
  v9 = *(v8 + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v10 = type metadata accessor for CKSyncEngine.Event.WillFetchAsset();
  v3[14] = v10;
  v11 = *(v10 - 8);
  v3[15] = v11;
  v12 = *(v11 + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v13 = type metadata accessor for CKSyncEngine.Event.SentDatabaseChanges();
  v3[18] = v13;
  v14 = *(v13 - 8);
  v3[19] = v14;
  v15 = *(v14 + 64) + 15;
  v3[20] = swift_task_alloc();
  v16 = type metadata accessor for CKSyncEngine.Event.SentRecordZoneChanges();
  v3[21] = v16;
  v17 = *(v16 - 8);
  v3[22] = v17;
  v18 = *(v17 + 64) + 15;
  v3[23] = swift_task_alloc();
  RecordZoneChanges = type metadata accessor for CKSyncEngine.Event.DidFetchRecordZoneChanges();
  v3[24] = RecordZoneChanges;
  v20 = *(RecordZoneChanges - 8);
  v3[25] = v20;
  v21 = *(v20 + 64) + 15;
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v22 = type metadata accessor for CKSyncEngine.Event.FetchedRecordZoneChanges();
  v3[29] = v22;
  v23 = *(v22 - 8);
  v3[30] = v23;
  v24 = *(v23 + 64) + 15;
  v3[31] = swift_task_alloc();
  v25 = type metadata accessor for CKSyncEngine.Event.FetchedDatabaseChanges();
  v3[32] = v25;
  v26 = *(v25 - 8);
  v3[33] = v26;
  v27 = *(v26 + 64) + 15;
  v3[34] = swift_task_alloc();
  v28 = type metadata accessor for CKSyncEngine.Event.AccountChange.ChangeType();
  v3[35] = v28;
  v29 = *(v28 - 8);
  v3[36] = v29;
  v30 = *(v29 + 64) + 15;
  v3[37] = swift_task_alloc();
  v31 = type metadata accessor for CKSyncEngine.Event.AccountChange();
  v3[38] = v31;
  v32 = *(v31 - 8);
  v3[39] = v32;
  v33 = *(v32 + 64) + 15;
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v34 = type metadata accessor for CKSyncEngine.State.Serialization();
  v3[42] = v34;
  v35 = *(v34 - 8);
  v3[43] = v35;
  v36 = *(v35 + 64) + 15;
  v3[44] = swift_task_alloc();
  v37 = type metadata accessor for CKSyncEngine.Event.StateUpdate();
  v3[45] = v37;
  v38 = *(v37 - 8);
  v3[46] = v38;
  v39 = *(v38 + 64) + 15;
  v3[47] = swift_task_alloc();
  v40 = type metadata accessor for CKSyncEngine.Event();
  v3[48] = v40;
  v41 = *(v40 - 8);
  v3[49] = v41;
  v42 = *(v41 + 64) + 15;
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();

  return _swift_task_switch(sub_10008016C, v2, 0);
}

uint64_t sub_10008016C()
{
  v252 = v0;
  v1 = v0;
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v2 = v0[52];
  v3 = v0[48];
  v4 = v0[49];
  v5 = v0[3];
  v6 = type metadata accessor for Logger();
  sub_100066000(v6, qword_100129988);
  v7 = *(v4 + 16);
  v7(v2, v5, v3);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v1[52];
  v13 = v1[48];
  v12 = v1[49];
  if (v10)
  {
    v239 = v7;
    v14 = swift_slowAlloc();
    v230 = swift_slowAlloc();
    v251 = v230;
    *v14 = 136315138;
    sub_100092BD4(&qword_1001284F8, 255, &type metadata accessor for CKSyncEngine.Event);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v249 = v1;
    v17 = v16;
    v228 = v9;
    v18 = *(v12 + 8);
    v18(v11, v13);
    v19 = sub_100065658(v15, v17, &v251);
    v1 = v249;

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v228, "Handling event %s", v14, 0xCu);
    sub_10005D588(v230);

    v7 = v239;
  }

  else
  {

    v18 = *(v12 + 8);
    v18(v11, v13);
  }

  v20 = v1[51];
  v22 = v1[48];
  v21 = v1[49];
  v7(v20, v1[3], v22);
  v23 = (*(v21 + 88))(v20, v22);
  v24 = v1[48];
  if (v23 == enum case for CKSyncEngine.Event.stateUpdate(_:))
  {
    v25 = v1[51];
    v27 = v1[46];
    v26 = v1[47];
    v29 = v1[44];
    v28 = v1[45];
    v30 = v1[5];
    (*(v1[49] + 96))(v25, v1[48]);
    (*(v27 + 32))(v26, v25, v28);
    CKSyncEngine.Event.StateUpdate.stateSerialization.getter();
    v231 = (*v30 + 264);
    v240 = (*v231 + **v231);
    v31 = (*v231)[1];
    v32 = swift_task_alloc();
    v1[53] = v32;
    *v32 = v1;
    v32[1] = sub_100081AF4;
    v33 = v1[4];
    v34 = v1[5];
    v35 = v1[44];
    v36 = v240;

    return v36(v35, v33);
  }

  if (v23 == enum case for CKSyncEngine.Event.accountChange(_:))
  {
    v38 = v1[51];
    v39 = v1[41];
    v41 = v1[38];
    v40 = v1[39];
    v42 = v1[36];
    v43 = v1[37];
    v44 = v1[35];
    (*(v1[49] + 96))(v38, v1[48]);
    (*(v40 + 32))(v39, v38, v41);
    CKSyncEngine.Event.AccountChange.changeType.getter();
    v45 = (*(v42 + 88))(v43, v44);
    if (v45 == enum case for CKSyncEngine.Event.AccountChange.ChangeType.signIn(_:))
    {
      v46 = v1[37];
      v47 = v1[5];
      (*(v1[36] + 96))(v46, v1[35]);
      v48 = *v46;
      v1[54] = *v46;
      v232 = (*v47 + 384);
      v241 = (*v232 + **v232);
      v49 = (*v232)[1];
      v50 = swift_task_alloc();
      v1[55] = v50;
      *v50 = v1;
      v50[1] = sub_100081DE8;
      v51 = v1[5];
      v52 = v48;
      v53 = v241;

      return v53(v52);
    }

    if (v45 == enum case for CKSyncEngine.Event.AccountChange.ChangeType.signOut(_:))
    {
      v61 = v1[37];
      v62 = v1[5];
      (*(v1[36] + 96))(v61, v1[35]);
      v63 = *v61;
      v1[56] = *v61;
      v233 = (*v62 + 392);
      v242 = (*v233 + **v233);
      v64 = (*v233)[1];
      v65 = swift_task_alloc();
      v1[57] = v65;
      *v65 = v1;
      v65[1] = sub_100082090;
      v66 = v1[5];
      v52 = v63;
      v53 = v242;

      return v53(v52);
    }

    if (v45 == enum case for CKSyncEngine.Event.AccountChange.ChangeType.switchAccounts(_:))
    {
      v74 = v1[37];
      v75 = v1[5];
      (*(v1[36] + 96))(v74, v1[35]);
      v76 = *v74;
      v1[58] = *v74;
      v77 = v74[1];
      v1[59] = v77;
      v234 = (*v75 + 400);
      v243 = (*v234 + **v234);
      v78 = (*v234)[1];
      v79 = swift_task_alloc();
      v1[60] = v79;
      *v79 = v1;
      v79[1] = sub_100082338;
      v80 = v1[5];
      v35 = v76;
      v33 = v77;
      v36 = v243;

      return v36(v35, v33);
    }

    (*(v1[39] + 16))(v1[40], v1[41], v1[38]);
    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.error.getter();
    v90 = os_log_type_enabled(v88, v89);
    v91 = v1[40];
    v92 = v1[41];
    v94 = v1[38];
    v93 = v1[39];
    if (v90)
    {
      v244 = v1[41];
      v95 = swift_slowAlloc();
      v235 = swift_slowAlloc();
      v251 = v235;
      *v95 = 136315138;
      sub_100092BD4(&qword_100128528, 255, &type metadata accessor for CKSyncEngine.Event.AccountChange);
      v96 = dispatch thunk of CustomStringConvertible.description.getter();
      v97 = v1;
      v99 = v98;
      v100 = *(v93 + 8);
      v100(v91, v94);
      v101 = sub_100065658(v96, v99, &v251);
      v1 = v97;

      *(v95 + 4) = v101;
      _os_log_impl(&_mh_execute_header, v88, v89, "Unknown account change type: %s", v95, 0xCu);
      sub_10005D588(v235);

      v100(v244, v94);
    }

    else
    {

      v109 = *(v93 + 8);
      v109(v91, v94);
      v109(v92, v94);
    }

    (*(v1[36] + 8))(v1[37], v1[35]);
    goto LABEL_46;
  }

  if (v23 == enum case for CKSyncEngine.Event.fetchedDatabaseChanges(_:))
  {
    v54 = v1[51];
    v56 = v1[33];
    v55 = v1[34];
    v57 = v1[32];
    (*(v1[49] + 96))(v54, v1[48]);
    (*(v56 + 32))(v55, v54, v57);
    v58 = swift_task_alloc();
    v1[61] = v58;
    *v58 = v1;
    v58[1] = sub_1000825E4;
    v59 = v1[5];
    v60 = v1[34];

    return sub_100083300(v60);
  }

  if (v23 == enum case for CKSyncEngine.Event.fetchedRecordZoneChanges(_:))
  {
    v67 = v1[51];
    v69 = v1[30];
    v68 = v1[31];
    v70 = v1[29];
    (*(v1[49] + 96))(v67, v1[48]);
    (*(v69 + 32))(v68, v67, v70);
    v71 = swift_task_alloc();
    v1[62] = v71;
    *v71 = v1;
    v71[1] = sub_10008287C;
    v72 = v1[5];
    v73 = v1[31];

    return sub_100083E5C(v73);
  }

  if (v23 == enum case for CKSyncEngine.Event.sentDatabaseChanges(_:))
  {
    v81 = v1[51];
    v83 = v1[19];
    v82 = v1[20];
    v84 = v1[18];
    (*(v1[49] + 96))(v81, v1[48]);
    (*(v83 + 32))(v82, v81, v84);
    v85 = swift_task_alloc();
    v1[68] = v85;
    *v85 = v1;
    v85[1] = sub_100083068;
    v86 = v1[5];
    v87 = v1[20];

    return sub_10008ED8C(v87);
  }

  if (v23 == enum case for CKSyncEngine.Event.sentRecordZoneChanges(_:))
  {
    v102 = v1[51];
    v104 = v1[22];
    v103 = v1[23];
    v105 = v1[21];
    (*(v1[49] + 96))(v102, v1[48]);
    (*(v104 + 32))(v103, v102, v105);
    v106 = swift_task_alloc();
    v1[67] = v106;
    *v106 = v1;
    v106[1] = sub_100082DD0;
    v107 = v1[5];
    v108 = v1[23];

    return sub_100085188(v108);
  }

  if (v23 == enum case for CKSyncEngine.Event.willFetchChanges(_:) || v23 == enum case for CKSyncEngine.Event.willFetchRecordZoneChanges(_:))
  {
    goto LABEL_45;
  }

  if (v23 != enum case for CKSyncEngine.Event.didFetchRecordZoneChanges(_:))
  {
    if (v23 == enum case for CKSyncEngine.Event.didFetchChanges(_:) || v23 == enum case for CKSyncEngine.Event.willSendChanges(_:) || v23 == enum case for CKSyncEngine.Event.didSendChanges(_:))
    {
LABEL_45:
      v110 = v1[49] + 8;
      v18(v1[51], v1[48]);
LABEL_46:
      v111 = v1;
      v114 = v1 + 51;
      v113 = v1[51];
      v112 = v114[1];
      v115 = v111[50];
      v116 = v111[47];
      v117 = v111[44];
      v119 = v111[40];
      v118 = v111[41];
      v120 = v111[37];
      v121 = v111[34];
      v122 = v111[31];
      v220 = v111[28];
      v221 = v111[27];
      v222 = v111[26];
      v223 = v111[23];
      v224 = v111[20];
      v225 = v111[17];
      v226 = v111[16];
      v227 = v111[13];
      v229 = v111[12];
      v236 = v111[9];
      v245 = v111[8];

      v123 = v111[1];

      return v123();
    }

    if (v23 == enum case for CKSyncEngine.Event.willFetchAsset(_:))
    {
      v149 = v1[51];
      v151 = v1[16];
      v150 = v1[17];
      v153 = v1[14];
      v152 = v1[15];
      (*(v1[49] + 96))(v149, v1[48]);
      (*(v152 + 32))(v150, v149, v153);
      (*(v152 + 16))(v151, v150, v153);
      v154 = Logger.logObject.getter();
      v155 = static os_log_type_t.info.getter();
      v156 = os_log_type_enabled(v154, v155);
      v157 = v1[16];
      v158 = v1[17];
      v160 = v1[14];
      v159 = v1[15];
      if (v156)
      {
        v246 = v1[17];
        v161 = swift_slowAlloc();
        v238 = swift_slowAlloc();
        v251 = v238;
        *v161 = 136315138;
        sub_100092BD4(&qword_100128510, 255, &type metadata accessor for CKSyncEngine.Event.WillFetchAsset);
        v162 = dispatch thunk of CustomStringConvertible.description.getter();
        v163 = v1;
        v165 = v164;
        v166 = *(v159 + 8);
        v166(v157, v160);
        v167 = sub_100065658(v162, v165, &v251);
        v1 = v163;

        *(v161 + 4) = v167;
        _os_log_impl(&_mh_execute_header, v154, v155, "Received willFetchAsset event: %s", v161, 0xCu);
        sub_10005D588(v238);

        v166(v246, v160);
      }

      else
      {

        v195 = *(v159 + 8);
        v195(v157, v160);
        v195(v158, v160);
      }

      goto LABEL_46;
    }

    v250 = v1;
    if (v23 == enum case for CKSyncEngine.Event.fetchedAsset(_:))
    {
      v176 = v1[51];
      v178 = v1[12];
      v177 = v1[13];
      v180 = v1[10];
      v179 = v1[11];
      (*(v1[49] + 96))(v176, v24);
      (*(v179 + 32))(v177, v176, v180);
      (*(v179 + 16))(v178, v177, v180);
      v181 = Logger.logObject.getter();
      v182 = static os_log_type_t.info.getter();
      v183 = os_log_type_enabled(v181, v182);
      v184 = v1[12];
      v247 = v1[13];
      v186 = v1[10];
      v185 = v1[11];
      if (v183)
      {
        v187 = swift_slowAlloc();
        v188 = swift_slowAlloc();
        v251 = v188;
        *v187 = 136315138;
        sub_100092BD4(&qword_100128508, 255, &type metadata accessor for CKSyncEngine.Event.FetchedAsset);
        v189 = dispatch thunk of CustomStringConvertible.description.getter();
        v191 = v190;
        v192 = *(v185 + 8);
        v192(v184, v186);
        v193 = sub_100065658(v189, v191, &v251);

        *(v187 + 4) = v193;
        v194 = "Received fetchedAsset event: %s";
LABEL_71:
        _os_log_impl(&_mh_execute_header, v181, v182, v194, v187, 0xCu);
        sub_10005D588(v188);

LABEL_73:
        v192(v247, v186);
        v1 = v250;
        goto LABEL_46;
      }
    }

    else
    {
      if (v23 != enum case for CKSyncEngine.Event.didFetchAsset(_:))
      {
        v206 = v7;
        v207 = v18;
        v206(v1[50], v1[3], v24);
        v208 = v1;
        v209 = Logger.logObject.getter();
        v210 = static os_log_type_t.info.getter();
        v211 = os_log_type_enabled(v209, v210);
        v213 = v208[49];
        v212 = v208[50];
        v214 = v208[48];
        if (v211)
        {
          v215 = swift_slowAlloc();
          v248 = swift_slowAlloc();
          v251 = v248;
          *v215 = 136315138;
          sub_100092BD4(&qword_1001284F8, 255, &type metadata accessor for CKSyncEngine.Event);
          v216 = dispatch thunk of CustomStringConvertible.description.getter();
          v218 = v217;
          v207(v212, v214);
          v219 = sub_100065658(v216, v218, &v251);

          *(v215 + 4) = v219;
          _os_log_impl(&_mh_execute_header, v209, v210, "Received unknown event: %s", v215, 0xCu);
          sub_10005D588(v248);
        }

        else
        {

          v207(v212, v214);
        }

        v1 = v250;
        v207(v250[51], v250[48]);
        goto LABEL_46;
      }

      v196 = v1[51];
      v198 = v1[8];
      v197 = v1[9];
      v200 = v1[6];
      v199 = v1[7];
      (*(v1[49] + 96))(v196, v24);
      (*(v199 + 32))(v197, v196, v200);
      (*(v199 + 16))(v198, v197, v200);
      v181 = Logger.logObject.getter();
      v182 = static os_log_type_t.info.getter();
      v201 = os_log_type_enabled(v181, v182);
      v184 = v1[8];
      v247 = v1[9];
      v186 = v1[6];
      v185 = v1[7];
      if (v201)
      {
        v187 = swift_slowAlloc();
        v188 = swift_slowAlloc();
        v251 = v188;
        *v187 = 136315138;
        sub_100092BD4(&qword_100128500, 255, &type metadata accessor for CKSyncEngine.Event.DidFetchAsset);
        v202 = dispatch thunk of CustomStringConvertible.description.getter();
        v204 = v203;
        v192 = *(v185 + 8);
        v192(v184, v186);
        v205 = sub_100065658(v202, v204, &v251);

        *(v187 + 4) = v205;
        v194 = "Received didFetchAsset event: %s";
        goto LABEL_71;
      }
    }

    v192 = *(v185 + 8);
    v192(v184, v186);
    goto LABEL_73;
  }

  v124 = v1[51];
  v126 = v1[27];
  v125 = v1[28];
  v127 = v1[25];
  v128 = v1[26];
  v129 = v1[24];
  (*(v1[49] + 96))(v124, v1[48]);
  (*(v127 + 32))(v125, v124, v129);
  v130 = *(v127 + 16);
  v130(v126, v125, v129);
  v130(v128, v125, v129);
  v131 = Logger.logObject.getter();
  v132 = static os_log_type_t.info.getter();
  v133 = os_log_type_enabled(v131, v132);
  v135 = v1[26];
  v134 = v1[27];
  v137 = v1[24];
  v136 = v1[25];
  if (v133)
  {
    v138 = swift_slowAlloc();
    v251 = swift_slowAlloc();
    *v138 = 136315394;
    sub_100092BD4(&qword_100128518, 255, &type metadata accessor for CKSyncEngine.Event.DidFetchRecordZoneChanges);
    v139 = dispatch thunk of CustomStringConvertible.description.getter();
    v237 = v132;
    v140 = v1;
    v142 = v141;
    v143 = *(v136 + 8);
    v143(v134, v137);
    v144 = sub_100065658(v139, v142, &v251);
    v1 = v140;

    *(v138 + 4) = v144;
    *(v138 + 12) = 2080;
    v140[2] = CKSyncEngine.Event.DidFetchRecordZoneChanges.error.getter();
    sub_10005F5CC(&qword_100128520, &qword_1000E6530);
    v145 = String.init<A>(describing:)();
    v147 = v146;
    v143(v135, v137);
    v148 = sub_100065658(v145, v147, &v251);

    *(v138 + 14) = v148;
    _os_log_impl(&_mh_execute_header, v131, v237, "Handle didFetchRecordZoneChanges, event: %s, error: %s", v138, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v143 = *(v136 + 8);
    v143(v135, v137);
    v143(v134, v137);
  }

  v1[63] = v143;
  v168 = v1[28];
  RecordZone = CKSyncEngine.Event.DidFetchRecordZoneChanges.error.getter();
  v1[64] = RecordZone;
  if (!RecordZone)
  {
    v175 = v1[25] + 8;
    (v1[63])(v1[28], v1[24]);
    goto LABEL_46;
  }

  v170 = RecordZone;
  v171 = v1[28];
  v172 = CKSyncEngine.Event.DidFetchRecordZoneChanges.zoneID.getter();
  v1[65] = v172;
  v173 = swift_task_alloc();
  v1[66] = v173;
  *v173 = v1;
  v173[1] = sub_100082B14;
  v174 = v1[5];

  return sub_10007EEB0(v170, v172);
}

uint64_t sub_100081AF4()
{
  v1 = *(*v0 + 424);
  v2 = *(*v0 + 352);
  v3 = *(*v0 + 344);
  v4 = *(*v0 + 336);
  v5 = *(*v0 + 40);
  v7 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_100081C60, v5, 0);
}

uint64_t sub_100081C60()
{
  (*(v0[46] + 8))(v0[47], v0[45]);
  v2 = v0[51];
  v1 = v0[52];
  v3 = v0[50];
  v4 = v0[47];
  v5 = v0[44];
  v7 = v0[40];
  v6 = v0[41];
  v8 = v0[37];
  v9 = v0[34];
  v10 = v0[31];
  v13 = v0[28];
  v14 = v0[27];
  v15 = v0[26];
  v16 = v0[23];
  v17 = v0[20];
  v18 = v0[17];
  v19 = v0[16];
  v20 = v0[13];
  v21 = v0[12];
  v22 = v0[9];
  v23 = v0[8];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100081DE8()
{
  v1 = *(*v0 + 440);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return _swift_task_switch(sub_100081EF8, v2, 0);
}

uint64_t sub_100081EF8()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 304);
  v3 = *(v0 + 312);

  (*(v3 + 8))(v1, v2);
  v5 = *(v0 + 408);
  v4 = *(v0 + 416);
  v6 = *(v0 + 400);
  v7 = *(v0 + 376);
  v8 = *(v0 + 352);
  v10 = *(v0 + 320);
  v9 = *(v0 + 328);
  v11 = *(v0 + 296);
  v12 = *(v0 + 272);
  v13 = *(v0 + 248);
  v16 = *(v0 + 224);
  v17 = *(v0 + 216);
  v18 = *(v0 + 208);
  v19 = *(v0 + 184);
  v20 = *(v0 + 160);
  v21 = *(v0 + 136);
  v22 = *(v0 + 128);
  v23 = *(v0 + 104);
  v24 = *(v0 + 96);
  v25 = *(v0 + 72);
  v26 = *(v0 + 64);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_100082090()
{
  v1 = *(*v0 + 456);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return _swift_task_switch(sub_1000821A0, v2, 0);
}

uint64_t sub_1000821A0()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 304);
  v3 = *(v0 + 312);

  (*(v3 + 8))(v1, v2);
  v5 = *(v0 + 408);
  v4 = *(v0 + 416);
  v6 = *(v0 + 400);
  v7 = *(v0 + 376);
  v8 = *(v0 + 352);
  v10 = *(v0 + 320);
  v9 = *(v0 + 328);
  v11 = *(v0 + 296);
  v12 = *(v0 + 272);
  v13 = *(v0 + 248);
  v16 = *(v0 + 224);
  v17 = *(v0 + 216);
  v18 = *(v0 + 208);
  v19 = *(v0 + 184);
  v20 = *(v0 + 160);
  v21 = *(v0 + 136);
  v22 = *(v0 + 128);
  v23 = *(v0 + 104);
  v24 = *(v0 + 96);
  v25 = *(v0 + 72);
  v26 = *(v0 + 64);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_100082338()
{
  v1 = *(*v0 + 480);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return _swift_task_switch(sub_100082448, v2, 0);
}

uint64_t sub_100082448()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 328);
  v3 = *(v0 + 304);
  v4 = *(v0 + 312);

  (*(v4 + 8))(v2, v3);
  v6 = *(v0 + 408);
  v5 = *(v0 + 416);
  v7 = *(v0 + 400);
  v8 = *(v0 + 376);
  v9 = *(v0 + 352);
  v11 = *(v0 + 320);
  v10 = *(v0 + 328);
  v12 = *(v0 + 296);
  v13 = *(v0 + 272);
  v14 = *(v0 + 248);
  v17 = *(v0 + 224);
  v18 = *(v0 + 216);
  v19 = *(v0 + 208);
  v20 = *(v0 + 184);
  v21 = *(v0 + 160);
  v22 = *(v0 + 136);
  v23 = *(v0 + 128);
  v24 = *(v0 + 104);
  v25 = *(v0 + 96);
  v26 = *(v0 + 72);
  v27 = *(v0 + 64);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1000825E4()
{
  v1 = *(*v0 + 488);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return _swift_task_switch(sub_1000826F4, v2, 0);
}

uint64_t sub_1000826F4()
{
  (*(v0[33] + 8))(v0[34], v0[32]);
  v2 = v0[51];
  v1 = v0[52];
  v3 = v0[50];
  v4 = v0[47];
  v5 = v0[44];
  v7 = v0[40];
  v6 = v0[41];
  v8 = v0[37];
  v9 = v0[34];
  v10 = v0[31];
  v13 = v0[28];
  v14 = v0[27];
  v15 = v0[26];
  v16 = v0[23];
  v17 = v0[20];
  v18 = v0[17];
  v19 = v0[16];
  v20 = v0[13];
  v21 = v0[12];
  v22 = v0[9];
  v23 = v0[8];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10008287C()
{
  v1 = *(*v0 + 496);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return _swift_task_switch(sub_10008298C, v2, 0);
}

uint64_t sub_10008298C()
{
  (*(v0[30] + 8))(v0[31], v0[29]);
  v2 = v0[51];
  v1 = v0[52];
  v3 = v0[50];
  v4 = v0[47];
  v5 = v0[44];
  v7 = v0[40];
  v6 = v0[41];
  v8 = v0[37];
  v9 = v0[34];
  v10 = v0[31];
  v13 = v0[28];
  v14 = v0[27];
  v15 = v0[26];
  v16 = v0[23];
  v17 = v0[20];
  v18 = v0[17];
  v19 = v0[16];
  v20 = v0[13];
  v21 = v0[12];
  v22 = v0[9];
  v23 = v0[8];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100082B14()
{
  v1 = *(*v0 + 528);
  v2 = *(*v0 + 520);
  v3 = *(*v0 + 40);
  v5 = *v0;

  return _swift_task_switch(sub_100082C3C, v3, 0);
}

uint64_t sub_100082C3C()
{
  v1 = *(v0 + 200) + 8;
  (*(v0 + 504))(*(v0 + 224), *(v0 + 192));
  v3 = *(v0 + 408);
  v2 = *(v0 + 416);
  v4 = *(v0 + 400);
  v5 = *(v0 + 376);
  v6 = *(v0 + 352);
  v8 = *(v0 + 320);
  v7 = *(v0 + 328);
  v9 = *(v0 + 296);
  v10 = *(v0 + 272);
  v11 = *(v0 + 248);
  v14 = *(v0 + 224);
  v15 = *(v0 + 216);
  v16 = *(v0 + 208);
  v17 = *(v0 + 184);
  v18 = *(v0 + 160);
  v19 = *(v0 + 136);
  v20 = *(v0 + 128);
  v21 = *(v0 + 104);
  v22 = *(v0 + 96);
  v23 = *(v0 + 72);
  v24 = *(v0 + 64);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100082DD0()
{
  v1 = *(*v0 + 536);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return _swift_task_switch(sub_100082EE0, v2, 0);
}

uint64_t sub_100082EE0()
{
  (*(v0[22] + 8))(v0[23], v0[21]);
  v2 = v0[51];
  v1 = v0[52];
  v3 = v0[50];
  v4 = v0[47];
  v5 = v0[44];
  v7 = v0[40];
  v6 = v0[41];
  v8 = v0[37];
  v9 = v0[34];
  v10 = v0[31];
  v13 = v0[28];
  v14 = v0[27];
  v15 = v0[26];
  v16 = v0[23];
  v17 = v0[20];
  v18 = v0[17];
  v19 = v0[16];
  v20 = v0[13];
  v21 = v0[12];
  v22 = v0[9];
  v23 = v0[8];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100083068()
{
  v1 = *(*v0 + 544);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return _swift_task_switch(sub_100083178, v2, 0);
}

uint64_t sub_100083178()
{
  (*(v0[19] + 8))(v0[20], v0[18]);
  v2 = v0[51];
  v1 = v0[52];
  v3 = v0[50];
  v4 = v0[47];
  v5 = v0[44];
  v7 = v0[40];
  v6 = v0[41];
  v8 = v0[37];
  v9 = v0[34];
  v10 = v0[31];
  v13 = v0[28];
  v14 = v0[27];
  v15 = v0[26];
  v16 = v0[23];
  v17 = v0[20];
  v18 = v0[17];
  v19 = v0[16];
  v20 = v0[13];
  v21 = v0[12];
  v22 = v0[9];
  v23 = v0[8];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100083300(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for CKDatabase.DatabaseChange.Deletion.Reason();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for CKDatabase.DatabaseChange.Deletion();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_100083434, v1, 0);
}

uint64_t sub_100083434()
{
  v52 = v0;
  v1 = *(v0 + 16);
  v2 = CKSyncEngine.Event.FetchedDatabaseChanges.deletions.getter();
  *(v0 + 96) = v2;
  v3 = *(v2 + 16);
  *(v0 + 104) = v3;
  if (v3)
  {
    v4 = *(v0 + 56);
    v5 = *(v0 + 64);
    v6 = **(v0 + 24) + 376;
    *(v0 + 112) = *v6;
    *(v0 + 120) = v6 & 0xFFFFFFFFFFFFLL | 0xC2A000000000000;
    v7 = *(v5 + 16);
    v5 += 16;
    v8 = *(v5 + 64);
    *(v0 + 176) = v8;
    *(v0 + 128) = *(v5 + 56);
    *(v0 + 136) = v7;
    *(v0 + 144) = 0;
    v7(*(v0 + 88), v2 + ((v8 + 32) & ~v8), v4);
    if (qword_100129980 != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 136);
    v10 = *(v0 + 80);
    v11 = *(v0 + 88);
    v12 = *(v0 + 72);
    v13 = *(v0 + 56);
    v14 = type metadata accessor for Logger();
    sub_100066000(v14, qword_100129988);
    v9(v10, v11, v13);
    v9(v12, v11, v13);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    v17 = os_log_type_enabled(v15, v16);
    v19 = *(v0 + 72);
    v18 = *(v0 + 80);
    v20 = *(v0 + 56);
    v21 = *(v0 + 64);
    if (v17)
    {
      v46 = *(v0 + 48);
      v47 = *(v0 + 32);
      v48 = v16;
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v51 = v49;
      *v22 = 138412546;
      v24 = CKDatabase.DatabaseChange.Deletion.zoneID.getter();
      v25 = *(v21 + 8);
      v25(v18, v20);
      *(v22 + 4) = v24;
      *v23 = v24;
      *(v22 + 12) = 2080;
      CKDatabase.DatabaseChange.Deletion.reason.getter();
      v26 = String.init<A>(describing:)();
      v28 = v27;
      v25(v19, v20);
      v29 = sub_100065658(v26, v28, &v51);

      *(v22 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v15, v48, "Received deletion for zone: %@ reason: %s", v22, 0x16u);
      sub_100066C80(v23, &qword_1001287F0, &qword_1000E6C40);

      sub_10005D588(v49);
    }

    else
    {

      v25 = *(v21 + 8);
      v25(v19, v20);
      v25(v18, v20);
    }

    *(v0 + 152) = v25;
    v36 = *(v0 + 112);
    v37 = *(v0 + 120);
    v38 = *(v0 + 88);
    v39 = *(v0 + 48);
    v40 = CKDatabase.DatabaseChange.Deletion.zoneID.getter();
    *(v0 + 160) = v40;
    CKDatabase.DatabaseChange.Deletion.reason.getter();
    v50 = (v36 + *v36);
    v41 = v36[1];
    v42 = swift_task_alloc();
    *(v0 + 168) = v42;
    *v42 = v0;
    v42[1] = sub_10008388C;
    v43 = *(v0 + 120);
    v44 = *(v0 + 48);
    v45 = *(v0 + 24);

    return v50(v40, v44);
  }

  else
  {

    v31 = *(v0 + 80);
    v30 = *(v0 + 88);
    v32 = *(v0 + 72);
    v33 = *(v0 + 48);

    v34 = *(v0 + 8);

    return v34();
  }
}

uint64_t sub_10008388C()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);
  v5 = *(*v0 + 32);
  v6 = *(*v0 + 24);
  v8 = *v0;

  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(sub_100083A18, v6, 0);
}

uint64_t sub_100083A18()
{
  v51 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 144) + 1;
  v3 = (*(v0 + 64) + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  (*(v0 + 152))(*(v0 + 88), *(v0 + 56));
  if (v2 == v1)
  {
    v4 = *(v0 + 96);

    v6 = *(v0 + 80);
    v5 = *(v0 + 88);
    v7 = *(v0 + 72);
    v8 = *(v0 + 48);

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v11 = *(v0 + 136);
    v12 = *(v0 + 144) + 1;
    *(v0 + 144) = v12;
    v13 = *(v0 + 64) + 16;
    v11(*(v0 + 88), *(v0 + 96) + ((*(v0 + 176) + 32) & ~*(v0 + 176)) + *(v0 + 128) * v12, *(v0 + 56));
    if (qword_100129980 != -1)
    {
      swift_once();
    }

    v14 = *(v0 + 136);
    v15 = *(v0 + 80);
    v16 = *(v0 + 88);
    v17 = *(v0 + 72);
    v18 = *(v0 + 56);
    v19 = type metadata accessor for Logger();
    sub_100066000(v19, qword_100129988);
    v14(v15, v16, v18);
    v14(v17, v16, v18);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    v22 = os_log_type_enabled(v20, v21);
    v24 = *(v0 + 72);
    v23 = *(v0 + 80);
    v25 = *(v0 + 56);
    v26 = *(v0 + 64);
    if (v22)
    {
      v45 = *(v0 + 48);
      v46 = *(v0 + 32);
      v47 = v21;
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v50 = v48;
      *v27 = 138412546;
      v29 = CKDatabase.DatabaseChange.Deletion.zoneID.getter();
      v30 = *(v26 + 8);
      v30(v23, v25);
      *(v27 + 4) = v29;
      *v28 = v29;
      *(v27 + 12) = 2080;
      CKDatabase.DatabaseChange.Deletion.reason.getter();
      v31 = String.init<A>(describing:)();
      v33 = v32;
      v30(v24, v25);
      v34 = sub_100065658(v31, v33, &v50);

      *(v27 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v20, v47, "Received deletion for zone: %@ reason: %s", v27, 0x16u);
      sub_100066C80(v28, &qword_1001287F0, &qword_1000E6C40);

      sub_10005D588(v48);
    }

    else
    {

      v30 = *(v26 + 8);
      v30(v24, v25);
      v30(v23, v25);
    }

    *(v0 + 152) = v30;
    v35 = *(v0 + 112);
    v36 = *(v0 + 120);
    v37 = *(v0 + 88);
    v38 = *(v0 + 48);
    v39 = CKDatabase.DatabaseChange.Deletion.zoneID.getter();
    *(v0 + 160) = v39;
    CKDatabase.DatabaseChange.Deletion.reason.getter();
    v49 = (v35 + *v35);
    v40 = v35[1];
    v41 = swift_task_alloc();
    *(v0 + 168) = v41;
    *v41 = v0;
    v41[1] = sub_10008388C;
    v42 = *(v0 + 120);
    v43 = *(v0 + 48);
    v44 = *(v0 + 24);

    return v49(v39, v43);
  }
}

uint64_t sub_100083E5C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for CKDatabase.RecordZoneChange.Deletion();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v6 = type metadata accessor for CKDatabase.RecordZoneChange.Modification();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v9 = type metadata accessor for CKSyncEngine.Event.FetchedRecordZoneChanges();
  v2[11] = v9;
  v10 = *(v9 - 8);
  v2[12] = v10;
  v11 = *(v10 + 64) + 15;
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_100083FE0, v1, 0);
}

uint64_t sub_100083FE0()
{
  v79 = v0;
  if (qword_100129980 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = *(v0 + 16);
  v5 = type metadata accessor for Logger();
  *(v0 + 112) = sub_100066000(v5, qword_100129988);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 96);
  v9 = *(v0 + 104);
  v11 = *(v0 + 88);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v78 = v13;
    *v12 = 136315138;
    sub_100092BD4(&qword_100128530, 255, &type metadata accessor for CKSyncEngine.Event.FetchedRecordZoneChanges);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_100065658(v14, v16, &v78);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "handleFetchedRecordZoneChanges: %s", v12, 0xCu);
    sub_10005D588(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = *(v0 + 16);
  v19 = CKSyncEngine.Event.FetchedRecordZoneChanges.modifications.getter();
  *(v0 + 120) = v19;
  v20 = *(v19 + 16);
  *(v0 + 128) = v20;
  if (v20)
  {
    v22 = *(v0 + 72);
    v21 = *(v0 + 80);
    v23 = **(v0 + 24) + 360;
    *(v0 + 136) = *v23;
    *(v0 + 144) = v23 & 0xFFFFFFFFFFFFLL | 0xC4C4000000000000;
    v24 = *(v22 + 80);
    *(v0 + 272) = v24;
    *(v0 + 152) = *(v22 + 72);
    v25 = *(v22 + 16);
    *(v0 + 160) = v25;
    *(v0 + 168) = 0;
    v26 = *(v0 + 112);
    v27 = *(v0 + 64);
    v25(v21, v19 + ((v24 + 32) & ~v24), v27);
    v28 = CKDatabase.RecordZoneChange.Modification.record.getter();
    *(v0 + 176) = v28;
    (*(v22 + 8))(v21, v27);
    v29 = v28;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      v34 = [v29 recordID];
      *(v32 + 4) = v34;
      *v33 = v34;
      _os_log_impl(&_mh_execute_header, v30, v31, "Received CKRecord modification: %@", v32, 0xCu);
      sub_100066C80(v33, &qword_1001287F0, &qword_1000E6C40);
    }

    v35 = *(v0 + 136);
    v36 = *(v0 + 144);

    v77 = (v35 + *v35);
    v37 = v35[1];
    v38 = swift_task_alloc();
    *(v0 + 184) = v38;
    *v38 = v0;
    v38[1] = sub_100084700;
    v39 = *(v0 + 144);
    v40 = *(v0 + 24);
    v41 = v29;
    goto LABEL_18;
  }

  v42 = *(v0 + 16);
  v43 = CKSyncEngine.Event.FetchedRecordZoneChanges.deletions.getter();
  *(v0 + 192) = v43;
  v44 = *(v43 + 16);
  *(v0 + 200) = v44;
  if (v44)
  {
    v46 = *(v0 + 40);
    v45 = *(v0 + 48);
    v47 = *(v0 + 32);
    v48 = **(v0 + 24) + 368;
    *(v0 + 208) = *v48;
    *(v0 + 216) = v48 & 0xFFFFFFFFFFFFLL | 0x6C56000000000000;
    v49 = *(v46 + 16);
    v46 += 16;
    v50 = *(v46 + 64);
    *(v0 + 276) = v50;
    *(v0 + 224) = *(v46 + 56);
    *(v0 + 232) = v49;
    *(v0 + 240) = 0;
    v51 = *(v0 + 112);
    v52 = *(v0 + 56);
    v49(v52, v43 + ((v50 + 32) & ~v50), v47);
    v49(v45, v52, v47);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.default.getter();
    v55 = os_log_type_enabled(v53, v54);
    v57 = *(v0 + 40);
    v56 = *(v0 + 48);
    v58 = *(v0 + 32);
    if (v55)
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *v59 = 138412290;
      v61 = CKDatabase.RecordZoneChange.Deletion.recordID.getter();
      v62 = *(v57 + 8);
      v62(v56, v58);
      *(v59 + 4) = v61;
      *v60 = v61;
      _os_log_impl(&_mh_execute_header, v53, v54, "Received CKRecord deletion: %@", v59, 0xCu);
      sub_100066C80(v60, &qword_1001287F0, &qword_1000E6C40);
    }

    else
    {

      v62 = *(v57 + 8);
      v62(v56, v58);
    }

    *(v0 + 248) = v62;
    v69 = *(v0 + 208);
    v70 = *(v0 + 216);
    v71 = *(v0 + 56);
    v72 = CKDatabase.RecordZoneChange.Deletion.recordID.getter();
    *(v0 + 256) = v72;
    v77 = (v69 + *v69);
    v73 = v69[1];
    v74 = swift_task_alloc();
    *(v0 + 264) = v74;
    *v74 = v0;
    v74[1] = sub_100084D44;
    v75 = *(v0 + 216);
    v76 = *(v0 + 24);
    v41 = v72;
LABEL_18:

    return v77(v41);
  }

  v63 = *(v0 + 104);
  v64 = *(v0 + 80);
  v66 = *(v0 + 48);
  v65 = *(v0 + 56);

  v67 = *(v0 + 8);

  return v67();
}

uint64_t sub_100084700()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return _swift_task_switch(sub_100084810, v2, 0);
}

uint64_t sub_100084810()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 128);

  if (v1 + 1 != v2)
  {
    v25 = *(v0 + 160);
    v26 = *(v0 + 168) + 1;
    *(v0 + 168) = v26;
    v27 = *(v0 + 112);
    v29 = *(v0 + 72);
    v28 = *(v0 + 80);
    v30 = *(v0 + 64);
    v25(v28, *(v0 + 120) + ((*(v0 + 272) + 32) & ~*(v0 + 272)) + *(v0 + 152) * v26, v30);
    v31 = CKDatabase.RecordZoneChange.Modification.record.getter();
    *(v0 + 176) = v31;
    (*(v29 + 8))(v28, v30);
    v32 = v31;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138412290;
      v37 = [v32 recordID];
      *(v35 + 4) = v37;
      *v36 = v37;
      _os_log_impl(&_mh_execute_header, v33, v34, "Received CKRecord modification: %@", v35, 0xCu);
      sub_100066C80(v36, &qword_1001287F0, &qword_1000E6C40);
    }

    v38 = *(v0 + 136);
    v39 = *(v0 + 144);

    v59 = (v38 + *v38);
    v40 = v38[1];
    v41 = swift_task_alloc();
    *(v0 + 184) = v41;
    *v41 = v0;
    v41[1] = sub_100084700;
    v42 = *(v0 + 144);
    v43 = *(v0 + 24);
    v44 = v32;
    goto LABEL_13;
  }

  v3 = *(v0 + 120);

  v4 = *(v0 + 16);
  v5 = CKSyncEngine.Event.FetchedRecordZoneChanges.deletions.getter();
  *(v0 + 192) = v5;
  v6 = *(v5 + 16);
  *(v0 + 200) = v6;
  if (v6)
  {
    v8 = *(v0 + 40);
    v7 = *(v0 + 48);
    v9 = *(v0 + 32);
    v10 = **(v0 + 24) + 368;
    *(v0 + 208) = *v10;
    *(v0 + 216) = v10 & 0xFFFFFFFFFFFFLL | 0x6C56000000000000;
    v11 = *(v8 + 16);
    v8 += 16;
    v12 = *(v8 + 64);
    *(v0 + 276) = v12;
    *(v0 + 224) = *(v8 + 56);
    *(v0 + 232) = v11;
    *(v0 + 240) = 0;
    v13 = *(v0 + 112);
    v14 = *(v0 + 56);
    v11(v14, v5 + ((v12 + 32) & ~v12), v9);
    v11(v7, v14, v9);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    v17 = os_log_type_enabled(v15, v16);
    v19 = *(v0 + 40);
    v18 = *(v0 + 48);
    v20 = *(v0 + 32);
    if (v17)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      v23 = CKDatabase.RecordZoneChange.Deletion.recordID.getter();
      v24 = *(v19 + 8);
      v24(v18, v20);
      *(v21 + 4) = v23;
      *v22 = v23;
      _os_log_impl(&_mh_execute_header, v15, v16, "Received CKRecord deletion: %@", v21, 0xCu);
      sub_100066C80(v22, &qword_1001287F0, &qword_1000E6C40);
    }

    else
    {

      v24 = *(v19 + 8);
      v24(v18, v20);
    }

    *(v0 + 248) = v24;
    v51 = *(v0 + 208);
    v52 = *(v0 + 216);
    v53 = *(v0 + 56);
    v54 = CKDatabase.RecordZoneChange.Deletion.recordID.getter();
    *(v0 + 256) = v54;
    v59 = (v51 + *v51);
    v55 = v51[1];
    v56 = swift_task_alloc();
    *(v0 + 264) = v56;
    *v56 = v0;
    v56[1] = sub_100084D44;
    v57 = *(v0 + 216);
    v58 = *(v0 + 24);
    v44 = v54;
LABEL_13:

    return v59(v44);
  }

  v45 = *(v0 + 104);
  v46 = *(v0 + 80);
  v48 = *(v0 + 48);
  v47 = *(v0 + 56);

  v49 = *(v0 + 8);

  return v49();
}

uint64_t sub_100084D44()
{
  v1 = *(*v0 + 264);
  v2 = *(*v0 + 256);
  v3 = *(*v0 + 24);
  v5 = *v0;

  return _swift_task_switch(sub_100084E6C, v3, 0);
}

uint64_t sub_100084E6C()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 240) + 1;
  v3 = (*(v0 + 40) + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  (*(v0 + 248))(*(v0 + 56), *(v0 + 32));
  if (v2 == v1)
  {
    v4 = *(v0 + 192);

    v5 = *(v0 + 104);
    v6 = *(v0 + 80);
    v8 = *(v0 + 48);
    v7 = *(v0 + 56);

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v11 = *(v0 + 232);
    v12 = *(v0 + 240) + 1;
    *(v0 + 240) = v12;
    v13 = *(v0 + 112);
    v15 = *(v0 + 48);
    v14 = *(v0 + 56);
    v16 = *(v0 + 32);
    v11(v14, *(v0 + 192) + ((*(v0 + 276) + 32) & ~*(v0 + 276)) + *(v0 + 224) * v12, v16);
    v11(v15, v14, v16);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    v19 = os_log_type_enabled(v17, v18);
    v21 = *(v0 + 40);
    v20 = *(v0 + 48);
    v22 = *(v0 + 32);
    if (v19)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      v25 = CKDatabase.RecordZoneChange.Deletion.recordID.getter();
      v26 = *(v21 + 8);
      v26(v20, v22);
      *(v23 + 4) = v25;
      *v24 = v25;
      _os_log_impl(&_mh_execute_header, v17, v18, "Received CKRecord deletion: %@", v23, 0xCu);
      sub_100066C80(v24, &qword_1001287F0, &qword_1000E6C40);
    }

    else
    {

      v26 = *(v21 + 8);
      v26(v20, v22);
    }

    *(v0 + 248) = v26;
    v27 = *(v0 + 208);
    v28 = *(v0 + 216);
    v29 = *(v0 + 56);
    v30 = CKDatabase.RecordZoneChange.Deletion.recordID.getter();
    *(v0 + 256) = v30;
    v35 = (v27 + *v27);
    v31 = v27[1];
    v32 = swift_task_alloc();
    *(v0 + 264) = v32;
    *v32 = v0;
    v32[1] = sub_100084D44;
    v33 = *(v0 + 216);
    v34 = *(v0 + 24);

    return v35(v30);
  }
}

uint64_t sub_100085188(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for CKSyncEngine.PendingDatabaseChange();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
  v2[12] = v6;
  v7 = *(v6 - 8);
  v2[13] = v7;
  v8 = *(v7 + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v9 = type metadata accessor for CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave();
  v2[19] = v9;
  v10 = *(v9 - 8);
  v2[20] = v10;
  v11 = *(v10 + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();

  return _swift_task_switch(sub_10008533C, v1, 0);
}

uint64_t sub_10008533C()
{
  v203 = v1;
  v2 = *(v1 + 56);
  v3 = CKSyncEngine.Event.SentRecordZoneChanges.savedRecords.getter();
  *(v1 + 184) = v3;
  if (v3 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    *(v1 + 192) = v4;
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v1 + 192) = v4;
    if (v4)
    {
LABEL_3:
      if (v4 >= 1)
      {
        v5 = **(v1 + 64) + 296;
        v6 = *v5;
        *(v1 + 200) = *v5;
        *(v1 + 208) = v5 & 0xFFFFFFFFFFFFLL | 0x6889000000000000;
        *(v1 + 216) = 0;
        v7 = *(v1 + 184);
        if ((v7 & 0xC000000000000001) != 0)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v6 = *(v1 + 200);
          v9 = *(v1 + 208);
        }

        else
        {
          v8 = *(v7 + 32);
        }

        *(v1 + 224) = v8;
        v195 = (v6 + *v6);
        v10 = v6;
        v11 = v6[1];
        v12 = v8;
        v13 = v10[1];
        v14 = swift_task_alloc();
        *(v1 + 232) = v14;
        *v14 = v1;
        v14[1] = sub_100086BF0;
        v15 = *(v1 + 208);
LABEL_16:
        v29 = *(v1 + 64);

        return v195(v12);
      }

      __break(1u);
LABEL_20:
      v18 = _CocoaArrayWrapper.endIndex.getter();
      *(v1 + 248) = v18;
      if (!v18)
      {
        goto LABEL_21;
      }

LABEL_11:
      if (v18 >= 1)
      {
        v19 = **(v1 + 64) + 304;
        v20 = *v19;
        *(v1 + 256) = *v19;
        *(v1 + 264) = v19 & 0xFFFFFFFFFFFFLL | 0x1963000000000000;
        *(v1 + 272) = 0;
        v21 = *(v1 + 240);
        if ((v21 & 0xC000000000000001) != 0)
        {
          v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v20 = *(v1 + 256);
          v23 = *(v1 + 264);
        }

        else
        {
          v22 = *(v21 + 32);
        }

        *(v1 + 280) = v22;
        v195 = (v20 + *v20);
        v24 = v20;
        v25 = v20[1];
        v12 = v22;
        v26 = v24[1];
        v27 = swift_task_alloc();
        *(v1 + 288) = v27;
        *v27 = v1;
        v27[1] = sub_100088560;
        v28 = *(v1 + 264);
        goto LABEL_16;
      }

      __break(1u);
LABEL_121:
      swift_once();
LABEL_102:
      v150 = type metadata accessor for Logger();
      sub_100066000(v150, qword_100129988);
      v151 = v2;
      v152 = v0;
      v153 = Logger.logObject.getter();
      v154 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v153, v154))
      {
        v155 = swift_slowAlloc();
        v156 = swift_slowAlloc();
        *v155 = 138412546;
        *(v155 + 4) = v151;
        *v156 = v151;
        *(v155 + 12) = 2112;
        v157 = v151;
        v158 = v152;
        v159 = _swift_stdlib_bridgeErrorToNSError();
        *(v155 + 14) = v159;
        v156[1] = v159;
        _os_log_impl(&_mh_execute_header, v153, v154, "Error deleting recordID %@ error: %@", v155, 0x16u);
        sub_10005F5CC(&qword_1001287F0, &qword_1000E6C40);
        swift_arrayDestroy();
      }

      v160 = *(v1 + 64);

      v161 = *(*v160 + 312);
      v198 = (v161 + *v161);
      v162 = v161[1];
      v163 = swift_task_alloc();
      *(v1 + 544) = v163;
      *v163 = v1;
      v163[1] = sub_10008E0C4;
      v164 = *(v1 + 64);
      v77 = v151;
      v78 = v152;
      v79 = v198;

      return v79(v77, v78);
    }
  }

  v16 = *(v1 + 184);
  v2 = *(v1 + 56);

  v17 = CKSyncEngine.Event.SentRecordZoneChanges.deletedRecordIDs.getter();
  *(v1 + 240) = v17;
  if (v17 >> 62)
  {
    goto LABEL_20;
  }

  v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  *(v1 + 248) = v18;
  if (v18)
  {
    goto LABEL_11;
  }

LABEL_21:
  v31 = *(v1 + 240);
  v32 = *(v1 + 56);

  v33 = CKSyncEngine.Event.SentRecordZoneChanges.failedRecordSaves.getter();
  v34 = *(v33 + 16);
  if (!v34)
  {

    v80 = 0;
    v35 = 0;
    v39 = _swiftEmptyArrayStorage;
    goto LABEL_52;
  }

  v35 = 0;
  v36 = *(v1 + 160);
  v37 = *(v36 + 16);
  v36 += 16;
  v38 = v33 + ((*(v36 + 64) + 32) & ~*(v36 + 64));
  v189 = *(v36 + 56);
  v191 = v37;
  v188 = (v36 - 8);
  v185 = (*(v1 + 104) + 104);
  v39 = _swiftEmptyArrayStorage;
  v184 = enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:);
  v40 = 0;
  v186 = *(v1 + 104);
  do
  {
    v196 = v35;
    v191(*(v1 + 176), v38, *(v1 + 152));
    v35 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.record.getter();
    v46 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.error.getter();
    *(v1 + 16) = v46;
    type metadata accessor for CKError(0);
    sub_100092BD4(&qword_100128538, 255, type metadata accessor for CKError);
    _BridgedStoredNSError.code.getter();
    if (*(v1 + 24) == 25)
    {
      if (!v196)
      {
        goto LABEL_24;
      }

      v47 = [v196 size];
      v48 = [v35 size];
      v49 = *(v1 + 96);
      v187 = v40;
      if (v47 < v48)
      {
        v50 = *(v1 + 144);
        *v50 = [v196 recordID];
        (*v185)(v50, v184, v49);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v39 = sub_100092358(0, v39[2] + 1, 1, v39, &qword_1001284E8, &qword_1000E64E8, &type metadata accessor for CKSyncEngine.PendingRecordZoneChange);
        }

        v52 = v39[2];
        v51 = v39[3];
        if (v52 >= v51 >> 1)
        {
          v39 = sub_100092358(v51 > 1, v52 + 1, 1, v39, &qword_1001284E8, &qword_1000E64E8, &type metadata accessor for CKSyncEngine.PendingRecordZoneChange);
        }

        v41 = *(v1 + 144);
        v42 = *(v1 + 96);

        v39[2] = v52 + 1;
        (*(v186 + 32))(v39 + ((*(v186 + 80) + 32) & ~*(v186 + 80)) + *(v186 + 72) * v52, v41, v42);
        v40 = v187;
LABEL_24:
        v43 = *(v1 + 176);
        v44 = *(v1 + 152);
        v45 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.error.getter();

        (*v188)(v43, v44);
        v40 = v45;
        goto LABEL_25;
      }

      v53 = *(v1 + 136);
      *v53 = [v35 recordID];
      (*v185)(v53, v184, v49);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = sub_100092358(0, v39[2] + 1, 1, v39, &qword_1001284E8, &qword_1000E64E8, &type metadata accessor for CKSyncEngine.PendingRecordZoneChange);
      }

      v55 = v39[2];
      v54 = v39[3];
      if (v55 >= v54 >> 1)
      {
        v39 = sub_100092358(v54 > 1, v55 + 1, 1, v39, &qword_1001284E8, &qword_1000E64E8, &type metadata accessor for CKSyncEngine.PendingRecordZoneChange);
      }

      v56 = *(v1 + 176);
      v57 = *(v1 + 152);
      v183 = *(v1 + 136);
      v58 = *(v1 + 96);

      (*v188)(v56, v57);
      v39[2] = v55 + 1;
      (*(v186 + 32))(v39 + ((*(v186 + 80) + 32) & ~*(v186 + 80)) + *(v186 + 72) * v55, v183, v58);
      v40 = v187;
    }

    else
    {
      (*v188)(*(v1 + 176), *(v1 + 152));
    }

    v35 = v196;
LABEL_25:
    *(v1 + 304) = v35;
    *(v1 + 312) = v39;
    v38 += v189;
    *(v1 + 296) = v40;
    --v34;
  }

  while (v34);

  if (v35)
  {
    if (v40)
    {
      v59 = qword_100129980;
      v60 = v35;
      v61 = v40;
      if (v59 != -1)
      {
        swift_once();
      }

      v62 = type metadata accessor for Logger();
      sub_100066000(v62, qword_100129988);
      v63 = v60;
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v202 = v68;
        *v66 = 138412546;
        v69 = [v63 recordID];
        *(v66 + 4) = v69;
        *v67 = v69;
        *(v66 + 12) = 2080;
        *(v1 + 48) = [v63 size];
        v70 = dispatch thunk of CustomStringConvertible.description.getter();
        v72 = sub_100065658(v70, v71, &v202);

        *(v66 + 14) = v72;
        _os_log_impl(&_mh_execute_header, v64, v65, "Quota exceeded saving %@ size %s", v66, 0x16u);
        sub_100066C80(v67, &qword_1001287F0, &qword_1000E6C40);

        sub_10005D588(v68);
      }

      v73 = *(**(v1 + 64) + 352);
      v197 = (v73 + *v73);
      v74 = v73[1];
      v75 = swift_task_alloc();
      *(v1 + 320) = v75;
      *v75 = v1;
      v75[1] = sub_100089D8C;
      v76 = *(v1 + 64);
      v77 = v63;
      v78 = v61;
      v79 = v197;

      return v79(v77, v78);
    }

    v80 = 0;
  }

  else
  {
    v80 = v40;
  }

LABEL_52:
  *(v1 + 328) = v80;
  *(v1 + 336) = v35;
  v81 = *(v1 + 56);
  v82 = CKSyncEngine.Event.SentRecordZoneChanges.failedRecordSaves.getter();
  *(v1 + 344) = v82;
  v83 = *(v82 + 16);
  *(v1 + 352) = v83;
  if (!v83)
  {

    v86 = _swiftEmptyArrayStorage;
LABEL_94:
    *(v1 + 456) = v86;
    *(v1 + 464) = v39;
    v137 = *(v1 + 56);
    v138 = CKSyncEngine.Event.SentRecordZoneChanges.failedRecordDeletes.getter();
    *(v1 + 472) = v138;
    v139 = *(v138 + 32);
    *(v1 + 599) = v139;
    v140 = -1;
    v141 = -1 << v139;
    if (-(-1 << v139) < 64)
    {
      v140 = ~(-1 << -(-1 << v139));
    }

    v142 = v140 & *(v138 + 64);
    if (!v142)
    {
      v144 = 0;
      v145 = ((63 - v141) >> 6) - 1;
      while (v145 != v144)
      {
        v143 = v144 + 1;
        v142 = *(v138 + 8 * v144++ + 72);
        if (v142)
        {
          goto LABEL_101;
        }
      }

      v165 = *(v1 + 64);

      v166 = *(*v165 + 192);
      v194 = *v165 + 192;
      *(v1 + 480) = v166;
      *(v1 + 488) = v194 & 0xFFFFFFFFFFFFLL | 0x9F87000000000000;
      v199 = (v166 + *v166);
      v167 = v166[1];
      v168 = swift_task_alloc();
      *(v1 + 496) = v168;
      *v168 = v1;
      v168[1] = sub_10008DF7C;
      v169 = *(v1 + 64);

      return v199();
    }

    v143 = 0;
LABEL_101:
    *(v1 + 520) = v143;
    *(v1 + 512) = v142;
    v146 = (v143 << 9) | (8 * __clz(__rbit64(v142)));
    v147 = *(*(v138 + 48) + v146);
    *(v1 + 528) = v147;
    v148 = *(*(v138 + 56) + v146);
    *(v1 + 536) = v148;
    v149 = qword_100129980;
    v2 = v147;
    v0 = v148;
    if (v149 == -1)
    {
      goto LABEL_102;
    }

    goto LABEL_121;
  }

  v84 = 0;
  v85 = *(v1 + 160);
  v86 = _swiftEmptyArrayStorage;
  *(v1 + 584) = *(v85 + 80);
  *(v1 + 360) = *(v85 + 72);
  *(v1 + 368) = *(v85 + 16);
  *(v1 + 588) = enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:);
  *(v1 + 592) = enum case for CKSyncEngine.PendingDatabaseChange.saveZone(_:);
  while (1)
  {
    v87 = v39;
    *(v1 + 384) = v86;
    *(v1 + 392) = v39;
    *(v1 + 376) = v84;
    v89 = *(v1 + 160);
    v88 = *(v1 + 168);
    v90 = *(v1 + 152);
    (*(v1 + 368))(v88, *(v1 + 344) + ((*(v1 + 584) + 32) & ~*(v1 + 584)) + *(v1 + 360) * v84, v90);
    v91 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.record.getter();
    *(v1 + 400) = v91;
    v92 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.error.getter();
    *(v1 + 408) = v92;
    (*(v89 + 8))(v88, v90);
    *(v1 + 32) = v92;
    type metadata accessor for CKError(0);
    sub_100092BD4(&qword_100128538, 255, type metadata accessor for CKError);
    _BridgedStoredNSError.code.getter();
    v93 = *(v1 + 40);
    if (v93 <= 13)
    {
      break;
    }

    if (v93 <= 22)
    {
      if (v93 == 14)
      {
        v126 = related decl 'e' for CKErrorCode.serverRecord.getter();
        *(v1 + 416) = v126;
        if (v126)
        {
          v178 = *(**(v1 + 64) + 336);
          v201 = (v178 + *v178);
          v179 = v178[1];
          v180 = v126;
          v181 = swift_task_alloc();
          *(v1 + 424) = v181;
          *v181 = v1;
          v181[1] = sub_10008AD4C;
          v182 = *(v1 + 64);
          v77 = v91;
          v78 = v180;
          v79 = v201;

          return v79(v77, v78);
        }

        if (qword_100129980 != -1)
        {
          swift_once();
        }

        v127 = type metadata accessor for Logger();
        sub_100066000(v127, qword_100129988);
        v128 = v92;
        v129 = Logger.logObject.getter();
        v130 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v129, v130))
        {
          v131 = swift_slowAlloc();
          v132 = swift_slowAlloc();
          *v131 = 138412290;
          v133 = v128;
          v134 = _swift_stdlib_bridgeErrorToNSError();
          *(v131 + 4) = v134;
          *v132 = v134;
          _os_log_impl(&_mh_execute_header, v129, v130, "No server record for conflict %@", v131, 0xCu);
          sub_100066C80(v132, &qword_1001287F0, &qword_1000E6C40);

          v135 = v91;
        }

        else
        {
          v135 = v129;
          v129 = v91;
        }

        goto LABEL_55;
      }

      if (v93 != 20)
      {
        goto LABEL_114;
      }

      goto LABEL_79;
    }

    if (v93 == 23)
    {
      goto LABEL_79;
    }

    if (v93 == 25)
    {

LABEL_55:
      v39 = v87;
      goto LABEL_56;
    }

    if (v93 != 26)
    {
      goto LABEL_114;
    }

    v192 = *(v1 + 592);
    v95 = *(v1 + 80);
    v94 = *(v1 + 88);
    v96 = *(v1 + 72);
    v97 = [v91 recordID];
    v98 = v86;
    v99 = [v97 zoneID];

    v100 = [objc_allocWithZone(CKRecordZone) initWithZoneID:v99];
    *v94 = v100;
    (*(v95 + 104))(v94, v192, v96);
    v190 = v100;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v98 = sub_100092358(0, v98[2] + 1, 1, v98, &qword_100128490, &qword_1000E6420, &type metadata accessor for CKSyncEngine.PendingDatabaseChange);
    }

    v102 = v98[2];
    v101 = v98[3];
    if (v102 >= v101 >> 1)
    {
      v193 = sub_100092358(v101 > 1, v102 + 1, 1, v98, &qword_100128490, &qword_1000E6420, &type metadata accessor for CKSyncEngine.PendingDatabaseChange);
    }

    else
    {
      v193 = v98;
    }

    v103 = *(v1 + 588);
    v104 = *(v1 + 120);
    v106 = *(v1 + 96);
    v105 = *(v1 + 104);
    v108 = *(v1 + 80);
    v107 = *(v1 + 88);
    v109 = *(v1 + 72);
    *(v193 + 16) = v102 + 1;
    (*(v108 + 32))(v193 + ((*(v108 + 80) + 32) & ~*(v108 + 80)) + *(v108 + 72) * v102, v107, v109);
    *v104 = [v91 recordID];
    (*(v105 + 104))(v104, v103, v106);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v87 = sub_100092358(0, v87[2] + 1, 1, v87, &qword_1001284E8, &qword_1000E64E8, &type metadata accessor for CKSyncEngine.PendingRecordZoneChange);
    }

    v111 = v87[2];
    v110 = v87[3];
    if (v111 >= v110 >> 1)
    {
      v87 = sub_100092358(v110 > 1, v111 + 1, 1, v87, &qword_1001284E8, &qword_1000E64E8, &type metadata accessor for CKSyncEngine.PendingRecordZoneChange);
    }

    v112 = *(v1 + 120);
    v114 = *(v1 + 96);
    v113 = *(v1 + 104);

    v39 = v87;
    v87[2] = v111 + 1;
    (*(v113 + 32))(v87 + ((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v111, v112, v114);
    v86 = v193;
LABEL_56:
    v84 = *(v1 + 376) + 1;
    if (v84 == *(v1 + 352))
    {
      v136 = *(v1 + 344);

      goto LABEL_94;
    }
  }

  if (v93 <= 5)
  {
    if ((v93 - 3) >= 2)
    {
      goto LABEL_114;
    }

    goto LABEL_79;
  }

  if (v93 == 6 || v93 == 9)
  {
LABEL_79:
    if (qword_100129980 != -1)
    {
      swift_once();
    }

    v115 = type metadata accessor for Logger();
    sub_100066000(v115, qword_100129988);
    v116 = v92;
    v117 = v91;
    v118 = Logger.logObject.getter();
    v119 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v118, v119))
    {
      v120 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      *v120 = 138412546;
      v122 = [v117 recordID];
      *(v120 + 4) = v122;
      *v121 = v122;
      *(v120 + 12) = 2112;
      v123 = v86;
      v124 = v116;
      v125 = _swift_stdlib_bridgeErrorToNSError();
      *(v120 + 14) = v125;
      v121[1] = v125;
      _os_log_impl(&_mh_execute_header, v118, v119, "Retryable error saving %@: %@", v120, 0x16u);
      sub_10005F5CC(&qword_1001287F0, &qword_1000E6C40);
      swift_arrayDestroy();

      v86 = v123;
    }

    else
    {
    }

    goto LABEL_55;
  }

  if (v93 != 11)
  {
LABEL_114:
    v174 = [v91 recordID];
    v175 = [v174 zoneID];
    *(v1 + 440) = v175;

    v176 = swift_task_alloc();
    *(v1 + 448) = v176;
    *v176 = v1;
    v176[1] = sub_10008CE84;
    v177 = *(v1 + 64);

    return sub_10007EEB0(v92, v175);
  }

  v170 = *(**(v1 + 64) + 344);
  v200 = (v170 + *v170);
  v171 = v170[1];
  v172 = swift_task_alloc();
  *(v1 + 432) = v172;
  *v172 = v1;
  v172[1] = sub_10008BDF0;
  v173 = *(v1 + 64);

  return v200(v91);
}

uint64_t sub_100086BF0()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return _swift_task_switch(sub_100086D00, v2, 0);
}

uint64_t sub_100086D00()
{
  v200 = v1;
  v2 = *(v1 + 216);
  v3 = *(v1 + 192);

  if (v2 + 1 != v3)
  {
    v13 = *(v1 + 216) + 1;
    *(v1 + 216) = v13;
    v14 = *(v1 + 184);
    if ((v14 & 0xC000000000000001) != 0)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v15 = *(v14 + 8 * v13 + 32);
    }

    v16 = v15;
    *(v1 + 224) = v15;
    v17 = *(v1 + 208);
    v192 = (*(v1 + 200) + **(v1 + 200));
    v18 = *(*(v1 + 200) + 4);
    v19 = swift_task_alloc();
    *(v1 + 232) = v19;
    *v19 = v1;
    v19[1] = sub_100086BF0;
    v20 = *(v1 + 208);
    goto LABEL_13;
  }

  v4 = *(v1 + 184);
  v5 = *(v1 + 56);

  v6 = CKSyncEngine.Event.SentRecordZoneChanges.deletedRecordIDs.getter();
  *(v1 + 240) = v6;
  if (v6 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
    *(v1 + 248) = v7;
    if (v7)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v1 + 248) = v7;
    if (v7)
    {
LABEL_4:
      if (v7 >= 1)
      {
        v8 = **(v1 + 64) + 304;
        v9 = *v8;
        *(v1 + 256) = *v8;
        *(v1 + 264) = v8 & 0xFFFFFFFFFFFFLL | 0x1963000000000000;
        *(v1 + 272) = 0;
        v10 = *(v1 + 240);
        if ((v10 & 0xC000000000000001) != 0)
        {
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v9 = *(v1 + 256);
          v12 = *(v1 + 264);
        }

        else
        {
          v11 = *(v10 + 32);
        }

        *(v1 + 280) = v11;
        v192 = (v9 + *v9);
        v21 = v9;
        v22 = v9[1];
        v16 = v11;
        v23 = v21[1];
        v24 = swift_task_alloc();
        *(v1 + 288) = v24;
        *v24 = v1;
        v24[1] = sub_100088560;
        v25 = *(v1 + 264);
LABEL_13:
        v26 = *(v1 + 64);

        return v192(v16);
      }

      __break(1u);
LABEL_117:
      swift_once();
LABEL_98:
      v147 = type metadata accessor for Logger();
      sub_100066000(v147, qword_100129988);
      v148 = v5;
      v149 = v0;
      v150 = Logger.logObject.getter();
      v151 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v150, v151))
      {
        v152 = swift_slowAlloc();
        v153 = swift_slowAlloc();
        *v152 = 138412546;
        *(v152 + 4) = v148;
        *v153 = v148;
        *(v152 + 12) = 2112;
        v154 = v148;
        v155 = v149;
        v156 = _swift_stdlib_bridgeErrorToNSError();
        *(v152 + 14) = v156;
        v153[1] = v156;
        _os_log_impl(&_mh_execute_header, v150, v151, "Error deleting recordID %@ error: %@", v152, 0x16u);
        sub_10005F5CC(&qword_1001287F0, &qword_1000E6C40);
        swift_arrayDestroy();
      }

      v157 = *(v1 + 64);

      v158 = *(*v157 + 312);
      v195 = (v158 + *v158);
      v159 = v158[1];
      v160 = swift_task_alloc();
      *(v1 + 544) = v160;
      *v160 = v1;
      v160[1] = sub_10008E0C4;
      v161 = *(v1 + 64);
      v74 = v148;
      v75 = v149;
      v76 = v195;

      return v76(v74, v75);
    }
  }

  v28 = *(v1 + 240);
  v29 = *(v1 + 56);

  v30 = CKSyncEngine.Event.SentRecordZoneChanges.failedRecordSaves.getter();
  v31 = *(v30 + 16);
  if (!v31)
  {

    v77 = 0;
    v32 = 0;
    v36 = _swiftEmptyArrayStorage;
    goto LABEL_48;
  }

  v32 = 0;
  v33 = *(v1 + 160);
  v34 = *(v33 + 16);
  v33 += 16;
  v35 = v30 + ((*(v33 + 64) + 32) & ~*(v33 + 64));
  v186 = *(v33 + 56);
  v188 = v34;
  v185 = (v33 - 8);
  v182 = (*(v1 + 104) + 104);
  v36 = _swiftEmptyArrayStorage;
  v181 = enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:);
  v37 = 0;
  v183 = *(v1 + 104);
  do
  {
    v193 = v32;
    v188(*(v1 + 176), v35, *(v1 + 152));
    v32 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.record.getter();
    v43 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.error.getter();
    *(v1 + 16) = v43;
    type metadata accessor for CKError(0);
    sub_100092BD4(&qword_100128538, 255, type metadata accessor for CKError);
    _BridgedStoredNSError.code.getter();
    if (*(v1 + 24) == 25)
    {
      if (!v193)
      {
        goto LABEL_20;
      }

      v44 = [v193 size];
      v45 = [v32 size];
      v46 = *(v1 + 96);
      v184 = v37;
      if (v44 < v45)
      {
        v47 = *(v1 + 144);
        *v47 = [v193 recordID];
        (*v182)(v47, v181, v46);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = sub_100092358(0, v36[2] + 1, 1, v36, &qword_1001284E8, &qword_1000E64E8, &type metadata accessor for CKSyncEngine.PendingRecordZoneChange);
        }

        v49 = v36[2];
        v48 = v36[3];
        if (v49 >= v48 >> 1)
        {
          v36 = sub_100092358(v48 > 1, v49 + 1, 1, v36, &qword_1001284E8, &qword_1000E64E8, &type metadata accessor for CKSyncEngine.PendingRecordZoneChange);
        }

        v38 = *(v1 + 144);
        v39 = *(v1 + 96);

        v36[2] = v49 + 1;
        (*(v183 + 32))(v36 + ((*(v183 + 80) + 32) & ~*(v183 + 80)) + *(v183 + 72) * v49, v38, v39);
        v37 = v184;
LABEL_20:
        v40 = *(v1 + 176);
        v41 = *(v1 + 152);
        v42 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.error.getter();

        (*v185)(v40, v41);
        v37 = v42;
        goto LABEL_21;
      }

      v50 = *(v1 + 136);
      *v50 = [v32 recordID];
      (*v182)(v50, v181, v46);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_100092358(0, v36[2] + 1, 1, v36, &qword_1001284E8, &qword_1000E64E8, &type metadata accessor for CKSyncEngine.PendingRecordZoneChange);
      }

      v52 = v36[2];
      v51 = v36[3];
      if (v52 >= v51 >> 1)
      {
        v36 = sub_100092358(v51 > 1, v52 + 1, 1, v36, &qword_1001284E8, &qword_1000E64E8, &type metadata accessor for CKSyncEngine.PendingRecordZoneChange);
      }

      v53 = *(v1 + 176);
      v54 = *(v1 + 152);
      v180 = *(v1 + 136);
      v55 = *(v1 + 96);

      (*v185)(v53, v54);
      v36[2] = v52 + 1;
      (*(v183 + 32))(v36 + ((*(v183 + 80) + 32) & ~*(v183 + 80)) + *(v183 + 72) * v52, v180, v55);
      v37 = v184;
    }

    else
    {
      (*v185)(*(v1 + 176), *(v1 + 152));
    }

    v32 = v193;
LABEL_21:
    *(v1 + 304) = v32;
    *(v1 + 312) = v36;
    v35 += v186;
    *(v1 + 296) = v37;
    --v31;
  }

  while (v31);

  if (v32)
  {
    if (v37)
    {
      v56 = qword_100129980;
      v57 = v32;
      v58 = v37;
      if (v56 != -1)
      {
        swift_once();
      }

      v59 = type metadata accessor for Logger();
      sub_100066000(v59, qword_100129988);
      v60 = v57;
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v199 = v65;
        *v63 = 138412546;
        v66 = [v60 recordID];
        *(v63 + 4) = v66;
        *v64 = v66;
        *(v63 + 12) = 2080;
        *(v1 + 48) = [v60 size];
        v67 = dispatch thunk of CustomStringConvertible.description.getter();
        v69 = sub_100065658(v67, v68, &v199);

        *(v63 + 14) = v69;
        _os_log_impl(&_mh_execute_header, v61, v62, "Quota exceeded saving %@ size %s", v63, 0x16u);
        sub_100066C80(v64, &qword_1001287F0, &qword_1000E6C40);

        sub_10005D588(v65);
      }

      v70 = *(**(v1 + 64) + 352);
      v194 = (v70 + *v70);
      v71 = v70[1];
      v72 = swift_task_alloc();
      *(v1 + 320) = v72;
      *v72 = v1;
      v72[1] = sub_100089D8C;
      v73 = *(v1 + 64);
      v74 = v60;
      v75 = v58;
      v76 = v194;

      return v76(v74, v75);
    }

    v77 = 0;
  }

  else
  {
    v77 = v37;
  }

LABEL_48:
  *(v1 + 328) = v77;
  *(v1 + 336) = v32;
  v78 = *(v1 + 56);
  v79 = CKSyncEngine.Event.SentRecordZoneChanges.failedRecordSaves.getter();
  *(v1 + 344) = v79;
  v80 = *(v79 + 16);
  *(v1 + 352) = v80;
  if (!v80)
  {

    v83 = _swiftEmptyArrayStorage;
LABEL_90:
    *(v1 + 456) = v83;
    *(v1 + 464) = v36;
    v134 = *(v1 + 56);
    v135 = CKSyncEngine.Event.SentRecordZoneChanges.failedRecordDeletes.getter();
    *(v1 + 472) = v135;
    v136 = *(v135 + 32);
    *(v1 + 599) = v136;
    v137 = -1;
    v138 = -1 << v136;
    if (-(-1 << v136) < 64)
    {
      v137 = ~(-1 << -(-1 << v136));
    }

    v139 = v137 & *(v135 + 64);
    if (!v139)
    {
      v141 = 0;
      v142 = ((63 - v138) >> 6) - 1;
      while (v142 != v141)
      {
        v140 = v141 + 1;
        v139 = *(v135 + 8 * v141++ + 72);
        if (v139)
        {
          goto LABEL_97;
        }
      }

      v162 = *(v1 + 64);

      v163 = *(*v162 + 192);
      v191 = *v162 + 192;
      *(v1 + 480) = v163;
      *(v1 + 488) = v191 & 0xFFFFFFFFFFFFLL | 0x9F87000000000000;
      v196 = (v163 + *v163);
      v164 = v163[1];
      v165 = swift_task_alloc();
      *(v1 + 496) = v165;
      *v165 = v1;
      v165[1] = sub_10008DF7C;
      v166 = *(v1 + 64);

      return v196();
    }

    v140 = 0;
LABEL_97:
    *(v1 + 520) = v140;
    *(v1 + 512) = v139;
    v143 = (v140 << 9) | (8 * __clz(__rbit64(v139)));
    v144 = *(*(v135 + 48) + v143);
    *(v1 + 528) = v144;
    v145 = *(*(v135 + 56) + v143);
    *(v1 + 536) = v145;
    v146 = qword_100129980;
    v5 = v144;
    v0 = v145;
    if (v146 == -1)
    {
      goto LABEL_98;
    }

    goto LABEL_117;
  }

  v81 = 0;
  v82 = *(v1 + 160);
  v83 = _swiftEmptyArrayStorage;
  *(v1 + 584) = *(v82 + 80);
  *(v1 + 360) = *(v82 + 72);
  *(v1 + 368) = *(v82 + 16);
  *(v1 + 588) = enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:);
  *(v1 + 592) = enum case for CKSyncEngine.PendingDatabaseChange.saveZone(_:);
  while (2)
  {
    v84 = v36;
    *(v1 + 384) = v83;
    *(v1 + 392) = v36;
    *(v1 + 376) = v81;
    v86 = *(v1 + 160);
    v85 = *(v1 + 168);
    v87 = *(v1 + 152);
    (*(v1 + 368))(v85, *(v1 + 344) + ((*(v1 + 584) + 32) & ~*(v1 + 584)) + *(v1 + 360) * v81, v87);
    v88 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.record.getter();
    *(v1 + 400) = v88;
    v89 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.error.getter();
    *(v1 + 408) = v89;
    (*(v86 + 8))(v85, v87);
    *(v1 + 32) = v89;
    type metadata accessor for CKError(0);
    sub_100092BD4(&qword_100128538, 255, type metadata accessor for CKError);
    _BridgedStoredNSError.code.getter();
    v90 = *(v1 + 40);
    if (v90 > 13)
    {
      if (v90 <= 22)
      {
        if (v90 == 14)
        {
          v123 = related decl 'e' for CKErrorCode.serverRecord.getter();
          *(v1 + 416) = v123;
          if (v123)
          {
            v175 = *(**(v1 + 64) + 336);
            v198 = (v175 + *v175);
            v176 = v175[1];
            v177 = v123;
            v178 = swift_task_alloc();
            *(v1 + 424) = v178;
            *v178 = v1;
            v178[1] = sub_10008AD4C;
            v179 = *(v1 + 64);
            v74 = v88;
            v75 = v177;
            v76 = v198;

            return v76(v74, v75);
          }

          if (qword_100129980 != -1)
          {
            swift_once();
          }

          v124 = type metadata accessor for Logger();
          sub_100066000(v124, qword_100129988);
          v125 = v89;
          v126 = Logger.logObject.getter();
          v127 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v126, v127))
          {
            v128 = swift_slowAlloc();
            v129 = swift_slowAlloc();
            *v128 = 138412290;
            v130 = v125;
            v131 = _swift_stdlib_bridgeErrorToNSError();
            *(v128 + 4) = v131;
            *v129 = v131;
            _os_log_impl(&_mh_execute_header, v126, v127, "No server record for conflict %@", v128, 0xCu);
            sub_100066C80(v129, &qword_1001287F0, &qword_1000E6C40);

            v132 = v88;
          }

          else
          {
            v132 = v126;
            v126 = v88;
          }

          goto LABEL_51;
        }

        if (v90 != 20)
        {
          goto LABEL_110;
        }
      }

      else if (v90 != 23)
      {
        if (v90 != 25)
        {
          if (v90 != 26)
          {
            goto LABEL_110;
          }

          v189 = *(v1 + 592);
          v92 = *(v1 + 80);
          v91 = *(v1 + 88);
          v93 = *(v1 + 72);
          v94 = [v88 recordID];
          v95 = v83;
          v96 = [v94 zoneID];

          v97 = [objc_allocWithZone(CKRecordZone) initWithZoneID:v96];
          *v91 = v97;
          (*(v92 + 104))(v91, v189, v93);
          v187 = v97;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v95 = sub_100092358(0, v95[2] + 1, 1, v95, &qword_100128490, &qword_1000E6420, &type metadata accessor for CKSyncEngine.PendingDatabaseChange);
          }

          v99 = v95[2];
          v98 = v95[3];
          if (v99 >= v98 >> 1)
          {
            v190 = sub_100092358(v98 > 1, v99 + 1, 1, v95, &qword_100128490, &qword_1000E6420, &type metadata accessor for CKSyncEngine.PendingDatabaseChange);
          }

          else
          {
            v190 = v95;
          }

          v100 = *(v1 + 588);
          v101 = *(v1 + 120);
          v103 = *(v1 + 96);
          v102 = *(v1 + 104);
          v105 = *(v1 + 80);
          v104 = *(v1 + 88);
          v106 = *(v1 + 72);
          *(v190 + 16) = v99 + 1;
          (*(v105 + 32))(v190 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * v99, v104, v106);
          *v101 = [v88 recordID];
          (*(v102 + 104))(v101, v100, v103);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v84 = sub_100092358(0, v84[2] + 1, 1, v84, &qword_1001284E8, &qword_1000E64E8, &type metadata accessor for CKSyncEngine.PendingRecordZoneChange);
          }

          v108 = v84[2];
          v107 = v84[3];
          if (v108 >= v107 >> 1)
          {
            v84 = sub_100092358(v107 > 1, v108 + 1, 1, v84, &qword_1001284E8, &qword_1000E64E8, &type metadata accessor for CKSyncEngine.PendingRecordZoneChange);
          }

          v109 = *(v1 + 120);
          v111 = *(v1 + 96);
          v110 = *(v1 + 104);

          v36 = v84;
          v84[2] = v108 + 1;
          (*(v110 + 32))(v84 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v108, v109, v111);
          v83 = v190;
          goto LABEL_52;
        }

LABEL_51:
        v36 = v84;
LABEL_52:
        v81 = *(v1 + 376) + 1;
        if (v81 == *(v1 + 352))
        {
          v133 = *(v1 + 344);

          goto LABEL_90;
        }

        continue;
      }

      goto LABEL_75;
    }

    break;
  }

  if (v90 <= 5)
  {
    if ((v90 - 3) >= 2)
    {
      goto LABEL_110;
    }

    goto LABEL_75;
  }

  if (v90 == 6 || v90 == 9)
  {
LABEL_75:
    if (qword_100129980 != -1)
    {
      swift_once();
    }

    v112 = type metadata accessor for Logger();
    sub_100066000(v112, qword_100129988);
    v113 = v89;
    v114 = v88;
    v115 = Logger.logObject.getter();
    v116 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      *v117 = 138412546;
      v119 = [v114 recordID];
      *(v117 + 4) = v119;
      *v118 = v119;
      *(v117 + 12) = 2112;
      v120 = v83;
      v121 = v113;
      v122 = _swift_stdlib_bridgeErrorToNSError();
      *(v117 + 14) = v122;
      v118[1] = v122;
      _os_log_impl(&_mh_execute_header, v115, v116, "Retryable error saving %@: %@", v117, 0x16u);
      sub_10005F5CC(&qword_1001287F0, &qword_1000E6C40);
      swift_arrayDestroy();

      v83 = v120;
    }

    else
    {
    }

    goto LABEL_51;
  }

  if (v90 != 11)
  {
LABEL_110:
    v171 = [v88 recordID];
    v172 = [v171 zoneID];
    *(v1 + 440) = v172;

    v173 = swift_task_alloc();
    *(v1 + 448) = v173;
    *v173 = v1;
    v173[1] = sub_10008CE84;
    v174 = *(v1 + 64);

    return sub_10007EEB0(v89, v172);
  }

  v167 = *(**(v1 + 64) + 344);
  v197 = (v167 + *v167);
  v168 = v167[1];
  v169 = swift_task_alloc();
  *(v1 + 432) = v169;
  *v169 = v1;
  v169[1] = sub_10008BDF0;
  v170 = *(v1 + 64);

  return v197(v88);
}