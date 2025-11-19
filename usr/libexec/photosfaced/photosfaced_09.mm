uint64_t sub_1000D5EF4()
{
  v1 = v0[37];
  v2 = v0[38];
  v3 = v0[30];
  v4 = v0[26];

  v5 = v0[42];
  v7 = v0[23];
  v6 = v0[24];
  v9 = v0[19];
  v8 = v0[20];
  v11 = v0[15];
  v10 = v0[16];
  v12 = v0[12];
  v13 = v0[9];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1000D5FE0()
{
  v0[2] = type metadata accessor for CommunicationActor();
  v0[3] = static CommunicationActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10008C444;

  return sub_1000D62F0();
}

uint64_t sub_1000D60A4()
{
  v0[2] = type metadata accessor for CommunicationActor();
  v0[3] = static CommunicationActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10008C444;

  return sub_1000D6EF8();
}

uint64_t sub_1000D6168()
{
  v0[2] = type metadata accessor for CommunicationActor();
  v0[3] = static CommunicationActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10008C444;

  return sub_1000D7B00();
}

uint64_t sub_1000D622C()
{
  v0[2] = type metadata accessor for CommunicationActor();
  v0[3] = static CommunicationActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10008C444;

  return sub_1000D8708();
}

uint64_t sub_1000D62F0()
{
  v1[3] = v0;
  v2 = sub_10000560C(&qword_10012B488, &qword_10010A258);
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v1[7] = v5;
  v6 = *(v5 - 8);
  v1[8] = v6;
  v7 = *(v6 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  type metadata accessor for CommunicationActor();
  v1[14] = static CommunicationActor.shared.getter();
  sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[15] = v9;
  v1[16] = v8;

  return _swift_task_switch(sub_1000D64AC, v9, v8);
}

uint64_t sub_1000D64AC()
{
  result = static TestProperties.syncRetryAttempts.getter();
  *(v0 + 136) = result;
  if (result < 0)
  {
    __break(1u);
  }

  else if (result)
  {
    *(v0 + 184) = enum case for SyncedPhotosFace.Failure.missingPhotos<A>(_:);
    *(v0 + 144) = 0;
    v2 = *(v0 + 96);
    static Log.session.getter();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      *(v5 + 4) = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Attempt %ld to sync faces after a readyToSync request", v5, 0xCu);
    }

    v6 = *(v0 + 96);
    v7 = *(v0 + 56);
    v8 = *(v0 + 64);

    v9 = *(v8 + 8);
    *(v0 + 152) = v9;
    *(v0 + 160) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v6, v7);
    v10 = swift_task_alloc();
    *(v0 + 168) = v10;
    *v10 = v0;
    v10[1] = sub_1000D6768;
    v11 = *(v0 + 24);

    return sub_100094594();
  }

  else
  {
    v12 = *(v0 + 112);

    v13 = *(v0 + 104);
    static Log.session.getter();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 136);
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      *(v17 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to sync faces after %ld attempts", v17, 0xCu);
    }

    v18 = *(v0 + 64);

    v19 = *(v0 + 96);
    v21 = *(v0 + 80);
    v20 = *(v0 + 88);
    v22 = *(v0 + 72);
    v23 = *(v0 + 48);
    (*(v18 + 8))(*(v0 + 104), *(v0 + 56));

    v24 = *(v0 + 8);

    return v24();
  }

  return result;
}

uint64_t sub_1000D6768()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  v5 = *(v2 + 128);
  v6 = *(v2 + 120);
  if (v0)
  {
    v7 = sub_1000D68A4;
  }

  else
  {
    v7 = sub_1000FBE14;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1000D68A4()
{
  v83 = v0;
  *(v0 + 16) = *(v0 + 176);
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  swift_errorRetain();
  sub_10000560C(&qword_10012A308, &qword_100109000);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v23 = *(v0 + 112);

LABEL_7:
    v28 = *(v0 + 176);
    v29 = *(v0 + 72);
    v30 = *(v0 + 16);

    static Log.session.getter();
    swift_errorRetain();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = *(v0 + 176);
      v34 = *(v0 + 144);
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 134218242;
      *(v35 + 4) = v34;
      *(v35 + 12) = 2112;
      swift_errorRetain();
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 14) = v37;
      *v36 = v37;
      _os_log_impl(&_mh_execute_header, v31, v32, "Attempt %ld to sync faces failed %@", v35, 0x16u);
      sub_10000C460(v36, &qword_100129EF8, &qword_100108C70);
    }

    v38 = *(v0 + 176);
    v39 = v31;
    v41 = *(v0 + 152);
    v40 = *(v0 + 160);
    v43 = *(v0 + 96);
    v42 = *(v0 + 104);
    v45 = *(v0 + 80);
    v44 = *(v0 + 88);
    v46 = *(v0 + 72);
    v47 = *(v0 + 56);
    v81 = *(v0 + 48);

    v41(v46, v47);
    swift_willThrow();

    v48 = *(v0 + 8);
    v49 = *(v0 + 176);
    goto LABEL_10;
  }

  v3 = *(v0 + 184);
  if ((*(*(v0 + 40) + 88))(*(v0 + 48), *(v0 + 32)) != v3)
  {
    v24 = *(v0 + 112);
    v26 = *(v0 + 40);
    v25 = *(v0 + 48);
    v27 = *(v0 + 32);

    (*(v26 + 8))(v25, v27);
    goto LABEL_7;
  }

  v4 = *(v0 + 176);
  v5 = *(v0 + 80);
  v7 = *(v0 + 40);
  v6 = *(v0 + 48);
  v8 = *(v0 + 32);

  (*(v7 + 96))(v6, v8);
  v9 = *v6;
  static Log.session.getter();

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  v12 = os_log_type_enabled(v10, v11);
  v14 = *(v0 + 152);
  v13 = *(v0 + 160);
  if (v12)
  {
    v15 = *(v0 + 144);
    v79 = *(v0 + 56);
    v80 = *(v0 + 80);
    v16 = swift_slowAlloc();
    v17 = v14;
    v18 = swift_slowAlloc();
    v82 = v18;
    *v16 = 134218242;
    *(v16 + 4) = v15;
    *(v16 + 12) = 2080;
    type metadata accessor for UUID();
    v19 = Array.description.getter();
    v21 = v20;

    v22 = sub_100102F80(v19, v21, &v82);

    *(v16 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v10, v11, "Attempt %ld to sync faces: missing photos in faces %s", v16, 0x16u);
    sub_10000C304(v18);

    v17(v80, v79);
  }

  else
  {
    v51 = *(v0 + 80);
    v52 = *(v0 + 56);

    v14(v51, v52);
  }

  v53 = *(v0 + 136);
  v54 = *(v0 + 144) + 1;
  v55 = *(v0 + 16);

  if (v54 == v53)
  {
    v56 = *(v0 + 112);

    v57 = *(v0 + 104);
    static Log.session.getter();
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = *(v0 + 136);
      v61 = swift_slowAlloc();
      *v61 = 134217984;
      *(v61 + 4) = v60;
      _os_log_impl(&_mh_execute_header, v58, v59, "Failed to sync faces after %ld attempts", v61, 0xCu);
    }

    v62 = *(v0 + 64);

    v63 = *(v0 + 96);
    v65 = *(v0 + 80);
    v64 = *(v0 + 88);
    v66 = *(v0 + 72);
    v67 = *(v0 + 48);
    (*(v62 + 8))(*(v0 + 104), *(v0 + 56));

    v48 = *(v0 + 8);
LABEL_10:

    return v48();
  }

  v68 = *(v0 + 144) + 1;
  *(v0 + 144) = v68;
  v69 = *(v0 + 96);
  static Log.session.getter();
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    *v72 = 134217984;
    *(v72 + 4) = v68;
    _os_log_impl(&_mh_execute_header, v70, v71, "Attempt %ld to sync faces after a readyToSync request", v72, 0xCu);
  }

  v73 = *(v0 + 96);
  v74 = *(v0 + 56);
  v75 = *(v0 + 64);

  v76 = *(v75 + 8);
  *(v0 + 152) = v76;
  *(v0 + 160) = (v75 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v76(v73, v74);
  v77 = swift_task_alloc();
  *(v0 + 168) = v77;
  *v77 = v0;
  v77[1] = sub_1000D6768;
  v78 = *(v0 + 24);

  return sub_100094594();
}

uint64_t sub_1000D6EF8()
{
  v1[3] = v0;
  v2 = sub_10000560C(&qword_10012B518, &qword_10010A578);
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v1[7] = v5;
  v6 = *(v5 - 8);
  v1[8] = v6;
  v7 = *(v6 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  type metadata accessor for CommunicationActor();
  v1[14] = static CommunicationActor.shared.getter();
  sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[15] = v9;
  v1[16] = v8;

  return _swift_task_switch(sub_1000D70B4, v9, v8);
}

uint64_t sub_1000D70B4()
{
  result = static TestProperties.syncRetryAttempts.getter();
  *(v0 + 136) = result;
  if (result < 0)
  {
    __break(1u);
  }

  else if (result)
  {
    *(v0 + 184) = enum case for SyncedPhotosFace.Failure.missingPhotos<A>(_:);
    *(v0 + 144) = 0;
    v2 = *(v0 + 96);
    static Log.session.getter();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      *(v5 + 4) = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Attempt %ld to sync faces after a readyToSync request", v5, 0xCu);
    }

    v6 = *(v0 + 96);
    v7 = *(v0 + 56);
    v8 = *(v0 + 64);

    v9 = *(v8 + 8);
    *(v0 + 152) = v9;
    *(v0 + 160) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v6, v7);
    v10 = swift_task_alloc();
    *(v0 + 168) = v10;
    *v10 = v0;
    v10[1] = sub_1000D7370;
    v11 = *(v0 + 24);

    return sub_1000A2D30();
  }

  else
  {
    v12 = *(v0 + 112);

    v13 = *(v0 + 104);
    static Log.session.getter();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 136);
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      *(v17 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to sync faces after %ld attempts", v17, 0xCu);
    }

    v18 = *(v0 + 64);

    v19 = *(v0 + 96);
    v21 = *(v0 + 80);
    v20 = *(v0 + 88);
    v22 = *(v0 + 72);
    v23 = *(v0 + 48);
    (*(v18 + 8))(*(v0 + 104), *(v0 + 56));

    v24 = *(v0 + 8);

    return v24();
  }

  return result;
}

uint64_t sub_1000D7370()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  v5 = *(v2 + 128);
  v6 = *(v2 + 120);
  if (v0)
  {
    v7 = sub_1000D74AC;
  }

  else
  {
    v7 = sub_1000FBE14;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1000D74AC()
{
  v83 = v0;
  *(v0 + 16) = *(v0 + 176);
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  swift_errorRetain();
  sub_10000560C(&qword_10012A308, &qword_100109000);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v23 = *(v0 + 112);

LABEL_7:
    v28 = *(v0 + 176);
    v29 = *(v0 + 72);
    v30 = *(v0 + 16);

    static Log.session.getter();
    swift_errorRetain();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = *(v0 + 176);
      v34 = *(v0 + 144);
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 134218242;
      *(v35 + 4) = v34;
      *(v35 + 12) = 2112;
      swift_errorRetain();
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 14) = v37;
      *v36 = v37;
      _os_log_impl(&_mh_execute_header, v31, v32, "Attempt %ld to sync faces failed %@", v35, 0x16u);
      sub_10000C460(v36, &qword_100129EF8, &qword_100108C70);
    }

    v38 = *(v0 + 176);
    v39 = v31;
    v41 = *(v0 + 152);
    v40 = *(v0 + 160);
    v43 = *(v0 + 96);
    v42 = *(v0 + 104);
    v45 = *(v0 + 80);
    v44 = *(v0 + 88);
    v46 = *(v0 + 72);
    v47 = *(v0 + 56);
    v81 = *(v0 + 48);

    v41(v46, v47);
    swift_willThrow();

    v48 = *(v0 + 8);
    v49 = *(v0 + 176);
    goto LABEL_10;
  }

  v3 = *(v0 + 184);
  if ((*(*(v0 + 40) + 88))(*(v0 + 48), *(v0 + 32)) != v3)
  {
    v24 = *(v0 + 112);
    v26 = *(v0 + 40);
    v25 = *(v0 + 48);
    v27 = *(v0 + 32);

    (*(v26 + 8))(v25, v27);
    goto LABEL_7;
  }

  v4 = *(v0 + 176);
  v5 = *(v0 + 80);
  v7 = *(v0 + 40);
  v6 = *(v0 + 48);
  v8 = *(v0 + 32);

  (*(v7 + 96))(v6, v8);
  v9 = *v6;
  static Log.session.getter();

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  v12 = os_log_type_enabled(v10, v11);
  v14 = *(v0 + 152);
  v13 = *(v0 + 160);
  if (v12)
  {
    v15 = *(v0 + 144);
    v79 = *(v0 + 56);
    v80 = *(v0 + 80);
    v16 = swift_slowAlloc();
    v17 = v14;
    v18 = swift_slowAlloc();
    v82 = v18;
    *v16 = 134218242;
    *(v16 + 4) = v15;
    *(v16 + 12) = 2080;
    type metadata accessor for UUID();
    v19 = Array.description.getter();
    v21 = v20;

    v22 = sub_100102F80(v19, v21, &v82);

    *(v16 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v10, v11, "Attempt %ld to sync faces: missing photos in faces %s", v16, 0x16u);
    sub_10000C304(v18);

    v17(v80, v79);
  }

  else
  {
    v51 = *(v0 + 80);
    v52 = *(v0 + 56);

    v14(v51, v52);
  }

  v53 = *(v0 + 136);
  v54 = *(v0 + 144) + 1;
  v55 = *(v0 + 16);

  if (v54 == v53)
  {
    v56 = *(v0 + 112);

    v57 = *(v0 + 104);
    static Log.session.getter();
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = *(v0 + 136);
      v61 = swift_slowAlloc();
      *v61 = 134217984;
      *(v61 + 4) = v60;
      _os_log_impl(&_mh_execute_header, v58, v59, "Failed to sync faces after %ld attempts", v61, 0xCu);
    }

    v62 = *(v0 + 64);

    v63 = *(v0 + 96);
    v65 = *(v0 + 80);
    v64 = *(v0 + 88);
    v66 = *(v0 + 72);
    v67 = *(v0 + 48);
    (*(v62 + 8))(*(v0 + 104), *(v0 + 56));

    v48 = *(v0 + 8);
LABEL_10:

    return v48();
  }

  v68 = *(v0 + 144) + 1;
  *(v0 + 144) = v68;
  v69 = *(v0 + 96);
  static Log.session.getter();
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    *v72 = 134217984;
    *(v72 + 4) = v68;
    _os_log_impl(&_mh_execute_header, v70, v71, "Attempt %ld to sync faces after a readyToSync request", v72, 0xCu);
  }

  v73 = *(v0 + 96);
  v74 = *(v0 + 56);
  v75 = *(v0 + 64);

  v76 = *(v75 + 8);
  *(v0 + 152) = v76;
  *(v0 + 160) = (v75 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v76(v73, v74);
  v77 = swift_task_alloc();
  *(v0 + 168) = v77;
  *v77 = v0;
  v77[1] = sub_1000D7370;
  v78 = *(v0 + 24);

  return sub_1000A2D30();
}

uint64_t sub_1000D7B00()
{
  v1[3] = v0;
  v2 = sub_10000560C(&qword_10012B488, &qword_10010A258);
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v1[7] = v5;
  v6 = *(v5 - 8);
  v1[8] = v6;
  v7 = *(v6 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  type metadata accessor for CommunicationActor();
  v1[14] = static CommunicationActor.shared.getter();
  sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[15] = v9;
  v1[16] = v8;

  return _swift_task_switch(sub_1000D7CBC, v9, v8);
}

uint64_t sub_1000D7CBC()
{
  result = static TestProperties.syncRetryAttempts.getter();
  *(v0 + 136) = result;
  if (result < 0)
  {
    __break(1u);
  }

  else if (result)
  {
    *(v0 + 184) = enum case for SyncedPhotosFace.Failure.missingPhotos<A>(_:);
    *(v0 + 144) = 0;
    v2 = *(v0 + 96);
    static Log.session.getter();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      *(v5 + 4) = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Attempt %ld to sync faces after a readyToSync request", v5, 0xCu);
    }

    v6 = *(v0 + 96);
    v7 = *(v0 + 56);
    v8 = *(v0 + 64);

    v9 = *(v8 + 8);
    *(v0 + 152) = v9;
    *(v0 + 160) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v6, v7);
    v10 = swift_task_alloc();
    *(v0 + 168) = v10;
    *v10 = v0;
    v10[1] = sub_1000D7F78;
    v11 = *(v0 + 24);

    return sub_1000B1B4C();
  }

  else
  {
    v12 = *(v0 + 112);

    v13 = *(v0 + 104);
    static Log.session.getter();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 136);
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      *(v17 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to sync faces after %ld attempts", v17, 0xCu);
    }

    v18 = *(v0 + 64);

    v19 = *(v0 + 96);
    v21 = *(v0 + 80);
    v20 = *(v0 + 88);
    v22 = *(v0 + 72);
    v23 = *(v0 + 48);
    (*(v18 + 8))(*(v0 + 104), *(v0 + 56));

    v24 = *(v0 + 8);

    return v24();
  }

  return result;
}

uint64_t sub_1000D7F78()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  v5 = *(v2 + 128);
  v6 = *(v2 + 120);
  if (v0)
  {
    v7 = sub_1000D80B4;
  }

  else
  {
    v7 = sub_1000FBE14;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1000D80B4()
{
  v83 = v0;
  *(v0 + 16) = *(v0 + 176);
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  swift_errorRetain();
  sub_10000560C(&qword_10012A308, &qword_100109000);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v23 = *(v0 + 112);

LABEL_7:
    v28 = *(v0 + 176);
    v29 = *(v0 + 72);
    v30 = *(v0 + 16);

    static Log.session.getter();
    swift_errorRetain();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = *(v0 + 176);
      v34 = *(v0 + 144);
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 134218242;
      *(v35 + 4) = v34;
      *(v35 + 12) = 2112;
      swift_errorRetain();
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 14) = v37;
      *v36 = v37;
      _os_log_impl(&_mh_execute_header, v31, v32, "Attempt %ld to sync faces failed %@", v35, 0x16u);
      sub_10000C460(v36, &qword_100129EF8, &qword_100108C70);
    }

    v38 = *(v0 + 176);
    v39 = v31;
    v41 = *(v0 + 152);
    v40 = *(v0 + 160);
    v43 = *(v0 + 96);
    v42 = *(v0 + 104);
    v45 = *(v0 + 80);
    v44 = *(v0 + 88);
    v46 = *(v0 + 72);
    v47 = *(v0 + 56);
    v81 = *(v0 + 48);

    v41(v46, v47);
    swift_willThrow();

    v48 = *(v0 + 8);
    v49 = *(v0 + 176);
    goto LABEL_10;
  }

  v3 = *(v0 + 184);
  if ((*(*(v0 + 40) + 88))(*(v0 + 48), *(v0 + 32)) != v3)
  {
    v24 = *(v0 + 112);
    v26 = *(v0 + 40);
    v25 = *(v0 + 48);
    v27 = *(v0 + 32);

    (*(v26 + 8))(v25, v27);
    goto LABEL_7;
  }

  v4 = *(v0 + 176);
  v5 = *(v0 + 80);
  v7 = *(v0 + 40);
  v6 = *(v0 + 48);
  v8 = *(v0 + 32);

  (*(v7 + 96))(v6, v8);
  v9 = *v6;
  static Log.session.getter();

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  v12 = os_log_type_enabled(v10, v11);
  v14 = *(v0 + 152);
  v13 = *(v0 + 160);
  if (v12)
  {
    v15 = *(v0 + 144);
    v79 = *(v0 + 56);
    v80 = *(v0 + 80);
    v16 = swift_slowAlloc();
    v17 = v14;
    v18 = swift_slowAlloc();
    v82 = v18;
    *v16 = 134218242;
    *(v16 + 4) = v15;
    *(v16 + 12) = 2080;
    type metadata accessor for UUID();
    v19 = Array.description.getter();
    v21 = v20;

    v22 = sub_100102F80(v19, v21, &v82);

    *(v16 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v10, v11, "Attempt %ld to sync faces: missing photos in faces %s", v16, 0x16u);
    sub_10000C304(v18);

    v17(v80, v79);
  }

  else
  {
    v51 = *(v0 + 80);
    v52 = *(v0 + 56);

    v14(v51, v52);
  }

  v53 = *(v0 + 136);
  v54 = *(v0 + 144) + 1;
  v55 = *(v0 + 16);

  if (v54 == v53)
  {
    v56 = *(v0 + 112);

    v57 = *(v0 + 104);
    static Log.session.getter();
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = *(v0 + 136);
      v61 = swift_slowAlloc();
      *v61 = 134217984;
      *(v61 + 4) = v60;
      _os_log_impl(&_mh_execute_header, v58, v59, "Failed to sync faces after %ld attempts", v61, 0xCu);
    }

    v62 = *(v0 + 64);

    v63 = *(v0 + 96);
    v65 = *(v0 + 80);
    v64 = *(v0 + 88);
    v66 = *(v0 + 72);
    v67 = *(v0 + 48);
    (*(v62 + 8))(*(v0 + 104), *(v0 + 56));

    v48 = *(v0 + 8);
LABEL_10:

    return v48();
  }

  v68 = *(v0 + 144) + 1;
  *(v0 + 144) = v68;
  v69 = *(v0 + 96);
  static Log.session.getter();
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    *v72 = 134217984;
    *(v72 + 4) = v68;
    _os_log_impl(&_mh_execute_header, v70, v71, "Attempt %ld to sync faces after a readyToSync request", v72, 0xCu);
  }

  v73 = *(v0 + 96);
  v74 = *(v0 + 56);
  v75 = *(v0 + 64);

  v76 = *(v75 + 8);
  *(v0 + 152) = v76;
  *(v0 + 160) = (v75 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v76(v73, v74);
  v77 = swift_task_alloc();
  *(v0 + 168) = v77;
  *v77 = v0;
  v77[1] = sub_1000D7F78;
  v78 = *(v0 + 24);

  return sub_1000B1B4C();
}

uint64_t sub_1000D8708()
{
  v1[3] = v0;
  v2 = sub_10000560C(&qword_10012B588, &qword_10010A8C0);
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v1[7] = v5;
  v6 = *(v5 - 8);
  v1[8] = v6;
  v7 = *(v6 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  type metadata accessor for CommunicationActor();
  v1[14] = static CommunicationActor.shared.getter();
  sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[15] = v9;
  v1[16] = v8;

  return _swift_task_switch(sub_1000D88C4, v9, v8);
}

uint64_t sub_1000D88C4()
{
  result = static TestProperties.syncRetryAttempts.getter();
  *(v0 + 136) = result;
  if (result < 0)
  {
    __break(1u);
  }

  else if (result)
  {
    *(v0 + 184) = enum case for SyncedPhotosFace.Failure.missingPhotos<A>(_:);
    *(v0 + 144) = 0;
    v2 = *(v0 + 96);
    static Log.session.getter();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      *(v5 + 4) = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Attempt %ld to sync faces after a readyToSync request", v5, 0xCu);
    }

    v6 = *(v0 + 96);
    v7 = *(v0 + 56);
    v8 = *(v0 + 64);

    v9 = *(v8 + 8);
    *(v0 + 152) = v9;
    *(v0 + 160) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v6, v7);
    v10 = swift_task_alloc();
    *(v0 + 168) = v10;
    *v10 = v0;
    v10[1] = sub_1000D8B80;
    v11 = *(v0 + 24);

    return sub_1000C0B00();
  }

  else
  {
    v12 = *(v0 + 112);

    v13 = *(v0 + 104);
    static Log.session.getter();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 136);
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      *(v17 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to sync faces after %ld attempts", v17, 0xCu);
    }

    v18 = *(v0 + 64);

    v19 = *(v0 + 96);
    v21 = *(v0 + 80);
    v20 = *(v0 + 88);
    v22 = *(v0 + 72);
    v23 = *(v0 + 48);
    (*(v18 + 8))(*(v0 + 104), *(v0 + 56));

    v24 = *(v0 + 8);

    return v24();
  }

  return result;
}

uint64_t sub_1000D8B80()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  v5 = *(v2 + 128);
  v6 = *(v2 + 120);
  if (v0)
  {
    v7 = sub_1000D8E04;
  }

  else
  {
    v7 = sub_1000D8CBC;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1000D8CBC()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 88);

  static Log.session.getter();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 144);
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = v5;
    _os_log_impl(&_mh_execute_header, v3, v4, "Attempt %ld to sync faces: succeeded", v6, 0xCu);
  }

  v7 = *(v0 + 160);
  v9 = *(v0 + 96);
  v8 = *(v0 + 104);
  v10 = *(v0 + 80);
  v11 = *(v0 + 72);
  v12 = *(v0 + 48);
  (*(v0 + 152))(*(v0 + 88), *(v0 + 56));

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1000D8E04()
{
  v83 = v0;
  *(v0 + 16) = *(v0 + 176);
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  swift_errorRetain();
  sub_10000560C(&qword_10012A308, &qword_100109000);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v23 = *(v0 + 112);

LABEL_7:
    v28 = *(v0 + 176);
    v29 = *(v0 + 72);
    v30 = *(v0 + 16);

    static Log.session.getter();
    swift_errorRetain();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = *(v0 + 176);
      v34 = *(v0 + 144);
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 134218242;
      *(v35 + 4) = v34;
      *(v35 + 12) = 2112;
      swift_errorRetain();
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 14) = v37;
      *v36 = v37;
      _os_log_impl(&_mh_execute_header, v31, v32, "Attempt %ld to sync faces failed %@", v35, 0x16u);
      sub_10000C460(v36, &qword_100129EF8, &qword_100108C70);
    }

    v38 = *(v0 + 176);
    v39 = v31;
    v41 = *(v0 + 152);
    v40 = *(v0 + 160);
    v43 = *(v0 + 96);
    v42 = *(v0 + 104);
    v45 = *(v0 + 80);
    v44 = *(v0 + 88);
    v46 = *(v0 + 72);
    v47 = *(v0 + 56);
    v81 = *(v0 + 48);

    v41(v46, v47);
    swift_willThrow();

    v48 = *(v0 + 8);
    v49 = *(v0 + 176);
    goto LABEL_10;
  }

  v3 = *(v0 + 184);
  if ((*(*(v0 + 40) + 88))(*(v0 + 48), *(v0 + 32)) != v3)
  {
    v24 = *(v0 + 112);
    v26 = *(v0 + 40);
    v25 = *(v0 + 48);
    v27 = *(v0 + 32);

    (*(v26 + 8))(v25, v27);
    goto LABEL_7;
  }

  v4 = *(v0 + 176);
  v5 = *(v0 + 80);
  v7 = *(v0 + 40);
  v6 = *(v0 + 48);
  v8 = *(v0 + 32);

  (*(v7 + 96))(v6, v8);
  v9 = *v6;
  static Log.session.getter();

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  v12 = os_log_type_enabled(v10, v11);
  v14 = *(v0 + 152);
  v13 = *(v0 + 160);
  if (v12)
  {
    v15 = *(v0 + 144);
    v79 = *(v0 + 56);
    v80 = *(v0 + 80);
    v16 = swift_slowAlloc();
    v17 = v14;
    v18 = swift_slowAlloc();
    v82 = v18;
    *v16 = 134218242;
    *(v16 + 4) = v15;
    *(v16 + 12) = 2080;
    type metadata accessor for UUID();
    v19 = Array.description.getter();
    v21 = v20;

    v22 = sub_100102F80(v19, v21, &v82);

    *(v16 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v10, v11, "Attempt %ld to sync faces: missing photos in faces %s", v16, 0x16u);
    sub_10000C304(v18);

    v17(v80, v79);
  }

  else
  {
    v51 = *(v0 + 80);
    v52 = *(v0 + 56);

    v14(v51, v52);
  }

  v53 = *(v0 + 136);
  v54 = *(v0 + 144) + 1;
  v55 = *(v0 + 16);

  if (v54 == v53)
  {
    v56 = *(v0 + 112);

    v57 = *(v0 + 104);
    static Log.session.getter();
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = *(v0 + 136);
      v61 = swift_slowAlloc();
      *v61 = 134217984;
      *(v61 + 4) = v60;
      _os_log_impl(&_mh_execute_header, v58, v59, "Failed to sync faces after %ld attempts", v61, 0xCu);
    }

    v62 = *(v0 + 64);

    v63 = *(v0 + 96);
    v65 = *(v0 + 80);
    v64 = *(v0 + 88);
    v66 = *(v0 + 72);
    v67 = *(v0 + 48);
    (*(v62 + 8))(*(v0 + 104), *(v0 + 56));

    v48 = *(v0 + 8);
LABEL_10:

    return v48();
  }

  v68 = *(v0 + 144) + 1;
  *(v0 + 144) = v68;
  v69 = *(v0 + 96);
  static Log.session.getter();
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    *v72 = 134217984;
    *(v72 + 4) = v68;
    _os_log_impl(&_mh_execute_header, v70, v71, "Attempt %ld to sync faces after a readyToSync request", v72, 0xCu);
  }

  v73 = *(v0 + 96);
  v74 = *(v0 + 56);
  v75 = *(v0 + 64);

  v76 = *(v75 + 8);
  *(v0 + 152) = v76;
  *(v0 + 160) = (v75 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v76(v73, v74);
  v77 = swift_task_alloc();
  *(v0 + 168) = v77;
  *v77 = v0;
  v77[1] = sub_1000D8B80;
  v78 = *(v0 + 24);

  return sub_1000C0B00();
}

uint64_t sub_1000D9458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = type metadata accessor for ShuffleID();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v3[8] = *(v5 + 64);
  v3[9] = swift_task_alloc();
  v3[10] = type metadata accessor for CommunicationActor();
  v3[11] = static CommunicationActor.shared.getter();
  v3[12] = sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000D9590, v7, v6);
}

uint64_t sub_1000D9590()
{
  v1 = v0[11];
  v14 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[5];
  v7 = v0[6];
  v9 = v0[3];
  v8 = v0[4];

  static CommunicationActor.shared.getter();
  (*(v5 + 16))(v2, v6, v7);
  v10 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  (*(v5 + 32))(v11 + v10, v2, v7);
  v9[3] = sub_10000560C(&qword_10012A440, &unk_1001091D0);
  v0[2] = sub_10000A990(&qword_10012A428, &unk_1001091B0);
  v9[4] = swift_getOpaqueTypeConformance2();
  sub_10000C1AC(v9);

  generateElements<A>(isolation:_:)();

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000D973C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = type metadata accessor for DailyID();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v3[8] = *(v5 + 64);
  v3[9] = swift_task_alloc();
  v3[10] = type metadata accessor for CommunicationActor();
  v3[11] = static CommunicationActor.shared.getter();
  v3[12] = sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000D9874, v7, v6);
}

uint64_t sub_1000D9874()
{
  v1 = v0[11];
  v14 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[5];
  v7 = v0[6];
  v9 = v0[3];
  v8 = v0[4];

  static CommunicationActor.shared.getter();
  (*(v5 + 16))(v2, v6, v7);
  v10 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  (*(v5 + 32))(v11 + v10, v2, v7);
  v9[3] = sub_10000560C(&qword_10012A440, &unk_1001091D0);
  v0[2] = sub_10000A990(&qword_10012A428, &unk_1001091B0);
  v9[4] = swift_getOpaqueTypeConformance2();
  sub_10000C1AC(v9);

  generateElements<A>(isolation:_:)();

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000D9A20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = type metadata accessor for ShuffleID();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v3[8] = *(v5 + 64);
  v3[9] = swift_task_alloc();
  v3[10] = type metadata accessor for CommunicationActor();
  v3[11] = static CommunicationActor.shared.getter();
  v3[12] = sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000D9B58, v7, v6);
}

uint64_t sub_1000D9B58()
{
  v1 = v0[11];
  v14 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[5];
  v7 = v0[6];
  v9 = v0[3];
  v8 = v0[4];

  static CommunicationActor.shared.getter();
  (*(v5 + 16))(v2, v6, v7);
  v10 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  (*(v5 + 32))(v11 + v10, v2, v7);
  v9[3] = sub_10000560C(&qword_10012A440, &unk_1001091D0);
  v0[2] = sub_10000A990(&qword_10012A428, &unk_1001091B0);
  v9[4] = swift_getOpaqueTypeConformance2();
  sub_10000C1AC(v9);

  generateElements<A>(isolation:_:)();

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000D9D04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = type metadata accessor for AlbumID();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v3[8] = *(v5 + 64);
  v3[9] = swift_task_alloc();
  v3[10] = type metadata accessor for CommunicationActor();
  v3[11] = static CommunicationActor.shared.getter();
  v3[12] = sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000D9E3C, v7, v6);
}

uint64_t sub_1000D9E3C()
{
  v1 = v0[11];
  v14 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[5];
  v7 = v0[6];
  v9 = v0[3];
  v8 = v0[4];

  static CommunicationActor.shared.getter();
  (*(v5 + 16))(v2, v6, v7);
  v10 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  (*(v5 + 32))(v11 + v10, v2, v7);
  v9[3] = sub_10000560C(&qword_10012A440, &unk_1001091D0);
  v0[2] = sub_10000A990(&qword_10012A428, &unk_1001091B0);
  v9[4] = swift_getOpaqueTypeConformance2();
  sub_10000C1AC(v9);

  generateElements<A>(isolation:_:)();

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000D9FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  v5 = sub_10000560C(&qword_10012A428, &unk_1001091B0);
  v4[10] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v4[12] = v7;
  v8 = *(v7 - 8);
  v4[13] = v8;
  v9 = *(v8 + 64) + 15;
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v10 = type metadata accessor for ShuffleID();
  v4[16] = v10;
  v11 = *(v10 - 8);
  v4[17] = v11;
  v12 = *(v11 + 64) + 15;
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v13 = type metadata accessor for Logger();
  v4[20] = v13;
  v14 = *(v13 - 8);
  v4[21] = v14;
  v15 = *(v14 + 64) + 15;
  v4[22] = swift_task_alloc();
  v16 = type metadata accessor for StoredPhoto();
  v4[23] = v16;
  v17 = *(v16 - 8);
  v4[24] = v17;
  v18 = *(v17 + 64) + 15;
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v19 = *(*(sub_10000560C(&qword_10012A400, &qword_100109190) - 8) + 64) + 15;
  v4[28] = swift_task_alloc();
  v20 = sub_10000560C(&qword_10012AA18, &qword_100109A00);
  v4[29] = v20;
  v21 = *(v20 - 8);
  v4[30] = v21;
  v22 = *(v21 + 64) + 15;
  v4[31] = swift_task_alloc();
  v23 = sub_10000560C(&qword_10012AA20, &qword_100109A08);
  v4[32] = v23;
  v24 = *(v23 - 8);
  v4[33] = v24;
  v25 = *(v24 + 64) + 15;
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();

  return _swift_task_switch(sub_1000DA340, 0, 0);
}

uint64_t sub_1000DA340()
{
  v1 = *(v0 + 64);
  *(v0 + 288) = *(v1 + 96);
  *(v0 + 460) = *(v1 + 16);
  type metadata accessor for CommunicationActor();
  *(v0 + 296) = static CommunicationActor.shared.getter();
  sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000DA418, v3, v2);
}

uint64_t sub_1000DA418()
{
  v2 = *(v0 + 288);
  v1 = *(v0 + 296);
  v3 = *(v0 + 280);
  v4 = *(v0 + 72);
  v5 = *(v0 + 460);

  sub_100087F38(v5, v4, v3);
  *(v0 + 304) = 0;

  return _swift_task_switch(sub_1000DA4C8, 0, 0);
}

uint64_t sub_1000DA4C8()
{
  v1 = v0[31];
  (*(v0[33] + 16))(v0[34], v0[35], v0[32]);
  sub_10000CC24(&qword_10012AA28, &qword_10012AA20, &qword_100109A08);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v2 = sub_10000CC24(&qword_10012AA30, &qword_10012AA18, &qword_100109A00);
  v3 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v4 = swift_task_alloc();
  v0[39] = v4;
  *v4 = v0;
  v4[1] = sub_1000DA614;
  v5 = v0[31];
  v6 = v0[28];
  v7 = v0[29];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v6, 0, 0, v0 + 2, v7, v2);
}

uint64_t sub_1000DA614()
{
  v2 = *(*v1 + 312);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_1000FBEF8;
  }

  else
  {
    v3 = sub_1000DA724;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000DA724()
{
  v75 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 184);
  v3 = *(v0 + 192);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 176);
    v5 = *(v0 + 152);
    v6 = *(v0 + 128);
    v7 = *(v0 + 136);
    v9 = *(v0 + 64);
    v8 = *(v0 + 72);
    (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
    static Log.photos.getter();
    v10 = *(v7 + 16);
    v10(v5, v8, v6);
    swift_retain_n();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    log = v11;
    if (os_log_type_enabled(v11, v12))
    {
      v67 = *(v0 + 256);
      v69 = *(v0 + 280);
      v65 = *(v0 + 176);
      v66 = *(v0 + 264);
      v13 = *(v0 + 152);
      v63 = *(v0 + 168);
      v64 = *(v0 + 160);
      v15 = *(v0 + 136);
      v14 = *(v0 + 144);
      v16 = *(v0 + 128);
      v61 = *(v0 + 64);
      v62 = *(v0 + 460);
      v17 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *v17 = 136315394;
      v10(v14, v13, v16);
      v18 = *(v15 + 8);
      v18(v13, v16);
      sub_1000FAACC(&qword_10012A2F0, &type metadata accessor for ShuffleID);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v20;
      v18(v14, v16);
      v22 = sub_100102F80(v19, v21, &v74);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2080;

      v23 = PhotosFaceType.description.getter();
      v25 = v24;

      v26 = sub_100102F80(v23, v25, &v74);

      *(v17 + 14) = v26;
      _os_log_impl(&_mh_execute_header, log, v12, "Completed tracking %s for type %s", v17, 0x16u);
      swift_arrayDestroy();

      (*(v63 + 8))(v65, v64);
      (*(v66 + 8))(v69, v67);
    }

    else
    {
      v70 = *(v0 + 280);
      v40 = *(v0 + 256);
      v41 = *(v0 + 264);
      v42 = *(v0 + 168);
      v43 = *(v0 + 176);
      v45 = *(v0 + 152);
      v44 = *(v0 + 160);
      v47 = *(v0 + 128);
      v46 = *(v0 + 136);
      v48 = *(v0 + 64);

      (*(v46 + 8))(v45, v47);

      (*(v42 + 8))(v43, v44);
      (*(v41 + 8))(v70, v40);
    }

    v50 = *(v0 + 272);
    v49 = *(v0 + 280);
    v51 = *(v0 + 248);
    v53 = *(v0 + 216);
    v52 = *(v0 + 224);
    v55 = *(v0 + 200);
    v54 = *(v0 + 208);
    v56 = *(v0 + 176);
    v58 = *(v0 + 144);
    v57 = *(v0 + 152);
    v68 = *(v0 + 120);
    v71 = *(v0 + 112);
    loga = *(v0 + 88);

    v59 = *(v0 + 8);

    return v59();
  }

  else
  {
    v27 = *(v0 + 216);
    v28 = *(v0 + 64);
    v29 = *(v3 + 32);
    *(v0 + 320) = v29;
    *(v0 + 328) = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v29(v27, v1, v2);
    v30 = *(v28 + 104);
    sub_10000560C(&qword_10012A600, &qword_100109468);
    *(v0 + 336) = *(v3 + 72);
    v31 = *(v3 + 80);
    *(v0 + 456) = v31;
    v32 = (v31 + 32) & ~v31;
    v33 = swift_allocObject();
    *(v0 + 344) = v33;
    *(v33 + 16) = xmmword_1001089C0;
    v34 = *(v3 + 16);
    *(v0 + 352) = v34;
    *(v0 + 360) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v34(v33 + v32, v27, v2);
    *(v0 + 24) = v33;
    v35 = async function pointer to Sequence.asyncMap<A>(predicate:)[1];
    v36 = swift_task_alloc();
    *(v0 + 368) = v36;
    v37 = sub_10000560C(&qword_10012B4D0, &qword_10010A358);
    v38 = sub_10000CC24(&qword_10012B4D8, &qword_10012B4D0, &qword_10010A358);
    *v36 = v0;
    v36[1] = sub_1000DACF0;
    v39 = *(v0 + 184);

    return Sequence.asyncMap<A>(predicate:)(&unk_10010A478, v30, v37, v39, v38);
  }
}

uint64_t sub_1000DACF0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 368);
  v8 = *v2;
  v3[47] = a1;
  v3[48] = v1;

  if (v1)
  {
    v5 = sub_1000FBEC8;
  }

  else
  {
    v6 = v3[43];

    v5 = sub_1000DAE0C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000DAE0C()
{
  v1 = *(*(v0 + 64) + 80);
  *(v0 + 32) = v1;
  v2 = *(v0 + 376);
  *(v0 + 392) = v1;
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (*(v0 + 456) + 32) & ~*(v0 + 456);
    *(v0 + 40) = _swiftEmptyArrayStorage;

    sub_10005C508(0, v3, 0);
    v5 = 0;
    v6 = *(v0 + 40);
    v7 = v2 + v4;
    do
    {
      v8 = *(v0 + 360);
      v10 = *(v0 + 192);
      v9 = *(v0 + 200);
      v11 = *(v0 + 184);
      v12 = *(v0 + 112);
      (*(v0 + 352))(v9, v7 + *(v0 + 336) * v5, v11);
      StoredPhoto.localIdentifier.getter();
      (*(v10 + 8))(v9, v11);
      *(v0 + 40) = v6;
      v14 = v6[2];
      v13 = v6[3];
      if (v14 >= v13 >> 1)
      {
        sub_10005C508(v13 > 1, v14 + 1, 1);
        v6 = *(v0 + 40);
      }

      v16 = *(v0 + 104);
      v15 = *(v0 + 112);
      v17 = *(v0 + 96);
      ++v5;
      v6[2] = v14 + 1;
      (*(v16 + 32))(v6 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v14, v15, v17);
    }

    while (v3 != v5);
  }

  else
  {

    v6 = _swiftEmptyArrayStorage;
  }

  *(v0 + 400) = v6;
  v19 = *(v0 + 120);
  v18 = *(v0 + 128);
  v20 = *(v0 + 72);
  sub_1000FAACC(&qword_10012A2B0, &type metadata accessor for ShuffleID);
  dispatch thunk of PhotosFaceID.id.getter();
  v21 = static TimeUtilities.currentEpoch.getter();
  v22 = type metadata accessor for GalleryDatabase();
  v23 = sub_1000FAACC(&qword_10012A438, &type metadata accessor for GalleryDatabase);
  v24 = async function pointer to dispatch thunk of PhotosFaceIDDatabase.relate(photos:to:on:)[1];
  v25 = swift_task_alloc();
  *(v0 + 408) = v25;
  *v25 = v0;
  v25[1] = sub_1000DB094;
  v26 = *(v0 + 120);

  return dispatch thunk of PhotosFaceIDDatabase.relate(photos:to:on:)(v6, v26, v21, v22, v23);
}

uint64_t sub_1000DB094()
{
  v2 = *v1;
  v3 = *(*v1 + 408);
  v19 = *v1;
  *(*v1 + 416) = v0;

  if (v0)
  {
    v5 = v2[49];
    v4 = v2[50];
    v6 = v2[47];
    v7 = v2[15];
    v10 = v2 + 12;
    v8 = v2[12];
    v9 = v10[1];

    (*(v9 + 8))(v7, v8);

    v11 = sub_1000FBEEC;
  }

  else
  {
    v13 = v2[49];
    v12 = v2[50];
    v14 = v2[15];
    v17 = v2 + 12;
    v15 = v2[12];
    v16 = v17[1];

    (*(v16 + 8))(v14, v15);

    v11 = sub_1000DB224;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_1000DB224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(v6 + 376);
  v8 = *(v7 + 16);
  *(v6 + 424) = v8;
  if (!v8)
  {
    (*(*(v6 + 192) + 8))(*(v6 + 216), *(v6 + 184));

    v24 = sub_10000CC24(&qword_10012AA30, &qword_10012AA18, &qword_100109A00);
    v25 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
    v26 = swift_task_alloc();
    *(v6 + 312) = v26;
    *v26 = v6;
    v26[1] = sub_1000DA614;
    v27 = *(v6 + 248);
    a1 = *(v6 + 224);
    a5 = *(v6 + 232);
    a4 = v6 + 16;
    a2 = 0;
    a3 = 0;
    a6 = v24;

    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(a1, a2, a3, a4, a5, a6);
  }

  v9 = *(v6 + 456);
  *(v6 + 432) = 0;
  if (!*(v7 + 16))
  {
    __break(1u);
    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(a1, a2, a3, a4, a5, a6);
  }

  v10 = *(v6 + 360);
  v12 = *(v6 + 320);
  v11 = *(v6 + 328);
  v13 = *(v6 + 208);
  v14 = *(v6 + 184);
  v16 = *(v6 + 80);
  v15 = *(v6 + 88);
  v17 = *(v6 + 48);
  (*(v6 + 352))(v13, v7 + ((v9 + 32) & ~v9), v14);
  sub_10000560C(&qword_10012A668, &qword_100109538);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1001089C0;
  *(v18 + 32) = static TimeUtilities.currentEpoch.getter();
  *v15 = v18;
  v12(v15 + *(v16 + 48), v13, v14);
  v28 = (v17 + *v17);
  v19 = v17[1];
  v20 = swift_task_alloc();
  *(v6 + 440) = v20;
  *v20 = v6;
  v20[1] = sub_1000DB4BC;
  v21 = *(v6 + 88);
  v22 = *(v6 + 56);

  return v28(v21);
}

uint64_t sub_1000DB4BC()
{
  v2 = *v1;
  v3 = *(*v1 + 440);
  v7 = *v1;
  *(*v1 + 448) = v0;

  if (v0)
  {
    v4 = *(v2 + 376);
    sub_10000C460(*(v2 + 88), &qword_10012A428, &unk_1001091B0);

    v5 = sub_1000FBE28;
  }

  else
  {
    sub_10000C460(*(v2 + 88), &qword_10012A428, &unk_1001091B0);
    v5 = sub_1000DB60C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000DB60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(v6 + 432) + 1;
  if (v7 == *(v6 + 424))
  {
    v8 = *(v6 + 376);
    (*(*(v6 + 192) + 8))(*(v6 + 216), *(v6 + 184));

    v9 = sub_10000CC24(&qword_10012AA30, &qword_10012AA18, &qword_100109A00);
    v10 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
    v11 = swift_task_alloc();
    *(v6 + 312) = v11;
    *v11 = v6;
    v11[1] = sub_1000DA614;
    v12 = *(v6 + 248);
    a1 = *(v6 + 224);
    a5 = *(v6 + 232);
    a4 = v6 + 16;
    a2 = 0;
    a3 = 0;
    a6 = v9;

    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(a1, a2, a3, a4, a5, a6);
  }

  *(v6 + 432) = v7;
  v13 = *(v6 + 376);
  if (v7 >= *(v13 + 16))
  {
    __break(1u);
    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(a1, a2, a3, a4, a5, a6);
  }

  v14 = *(v6 + 360);
  v15 = *(v6 + 328);
  v16 = *(v6 + 320);
  v17 = *(v6 + 208);
  v18 = *(v6 + 184);
  v20 = *(v6 + 80);
  v19 = *(v6 + 88);
  v21 = *(v6 + 48);
  (*(v6 + 352))(v17, v13 + ((*(v6 + 456) + 32) & ~*(v6 + 456)) + *(v6 + 336) * v7, v18);
  sub_10000560C(&qword_10012A668, &qword_100109538);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1001089C0;
  *(v22 + 32) = static TimeUtilities.currentEpoch.getter();
  *v19 = v22;
  v16(v19 + *(v20 + 48), v17, v18);
  v28 = (v21 + *v21);
  v23 = v21[1];
  v24 = swift_task_alloc();
  *(v6 + 440) = v24;
  *v24 = v6;
  v24[1] = sub_1000DB4BC;
  v25 = *(v6 + 88);
  v26 = *(v6 + 56);

  return v28(v25);
}

uint64_t sub_1000DB8B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  v5 = sub_10000560C(&qword_10012A428, &unk_1001091B0);
  v4[10] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v4[12] = v7;
  v8 = *(v7 - 8);
  v4[13] = v8;
  v9 = *(v8 + 64) + 15;
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v10 = type metadata accessor for DailyID();
  v4[16] = v10;
  v11 = *(v10 - 8);
  v4[17] = v11;
  v12 = *(v11 + 64) + 15;
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v13 = type metadata accessor for Logger();
  v4[20] = v13;
  v14 = *(v13 - 8);
  v4[21] = v14;
  v15 = *(v14 + 64) + 15;
  v4[22] = swift_task_alloc();
  v16 = type metadata accessor for StoredPhoto();
  v4[23] = v16;
  v17 = *(v16 - 8);
  v4[24] = v17;
  v18 = *(v17 + 64) + 15;
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v19 = *(*(sub_10000560C(&qword_10012A400, &qword_100109190) - 8) + 64) + 15;
  v4[28] = swift_task_alloc();
  v20 = sub_10000560C(&qword_10012AA18, &qword_100109A00);
  v4[29] = v20;
  v21 = *(v20 - 8);
  v4[30] = v21;
  v22 = *(v21 + 64) + 15;
  v4[31] = swift_task_alloc();
  v23 = sub_10000560C(&qword_10012AA20, &qword_100109A08);
  v4[32] = v23;
  v24 = *(v23 - 8);
  v4[33] = v24;
  v25 = *(v24 + 64) + 15;
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();

  return _swift_task_switch(sub_1000DBC10, 0, 0);
}

uint64_t sub_1000DBC10()
{
  v1 = *(v0 + 64);
  *(v0 + 288) = *(v1 + 96);
  *(v0 + 460) = *(v1 + 16);
  type metadata accessor for CommunicationActor();
  *(v0 + 296) = static CommunicationActor.shared.getter();
  sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000DBCE8, v3, v2);
}

uint64_t sub_1000DBCE8()
{
  v2 = *(v0 + 288);
  v1 = *(v0 + 296);
  v3 = *(v0 + 280);
  v4 = *(v0 + 72);
  v5 = *(v0 + 460);

  sub_100088450(v5, v4, v3);
  *(v0 + 304) = 0;

  return _swift_task_switch(sub_1000DBD98, 0, 0);
}

uint64_t sub_1000DBD98()
{
  v1 = v0[31];
  (*(v0[33] + 16))(v0[34], v0[35], v0[32]);
  sub_10000CC24(&qword_10012AA28, &qword_10012AA20, &qword_100109A08);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v2 = sub_10000CC24(&qword_10012AA30, &qword_10012AA18, &qword_100109A00);
  v3 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v4 = swift_task_alloc();
  v0[39] = v4;
  *v4 = v0;
  v4[1] = sub_1000DBEE4;
  v5 = v0[31];
  v6 = v0[28];
  v7 = v0[29];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v6, 0, 0, v0 + 2, v7, v2);
}

uint64_t sub_1000DBEE4()
{
  v2 = *(*v1 + 312);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_1000FBEF8;
  }

  else
  {
    v3 = sub_1000DBFF4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000DBFF4()
{
  v75 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 184);
  v3 = *(v0 + 192);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 176);
    v5 = *(v0 + 152);
    v6 = *(v0 + 128);
    v7 = *(v0 + 136);
    v9 = *(v0 + 64);
    v8 = *(v0 + 72);
    (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
    static Log.photos.getter();
    v10 = *(v7 + 16);
    v10(v5, v8, v6);
    swift_retain_n();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    log = v11;
    if (os_log_type_enabled(v11, v12))
    {
      v67 = *(v0 + 256);
      v69 = *(v0 + 280);
      v65 = *(v0 + 176);
      v66 = *(v0 + 264);
      v13 = *(v0 + 152);
      v63 = *(v0 + 168);
      v64 = *(v0 + 160);
      v15 = *(v0 + 136);
      v14 = *(v0 + 144);
      v16 = *(v0 + 128);
      v61 = *(v0 + 64);
      v62 = *(v0 + 460);
      v17 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *v17 = 136315394;
      v10(v14, v13, v16);
      v18 = *(v15 + 8);
      v18(v13, v16);
      sub_1000FAACC(&qword_10012A1E0, &type metadata accessor for DailyID);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v20;
      v18(v14, v16);
      v22 = sub_100102F80(v19, v21, &v74);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2080;

      v23 = PhotosFaceType.description.getter();
      v25 = v24;

      v26 = sub_100102F80(v23, v25, &v74);

      *(v17 + 14) = v26;
      _os_log_impl(&_mh_execute_header, log, v12, "Completed tracking %s for type %s", v17, 0x16u);
      swift_arrayDestroy();

      (*(v63 + 8))(v65, v64);
      (*(v66 + 8))(v69, v67);
    }

    else
    {
      v70 = *(v0 + 280);
      v40 = *(v0 + 256);
      v41 = *(v0 + 264);
      v42 = *(v0 + 168);
      v43 = *(v0 + 176);
      v45 = *(v0 + 152);
      v44 = *(v0 + 160);
      v47 = *(v0 + 128);
      v46 = *(v0 + 136);
      v48 = *(v0 + 64);

      (*(v46 + 8))(v45, v47);

      (*(v42 + 8))(v43, v44);
      (*(v41 + 8))(v70, v40);
    }

    v50 = *(v0 + 272);
    v49 = *(v0 + 280);
    v51 = *(v0 + 248);
    v53 = *(v0 + 216);
    v52 = *(v0 + 224);
    v55 = *(v0 + 200);
    v54 = *(v0 + 208);
    v56 = *(v0 + 176);
    v58 = *(v0 + 144);
    v57 = *(v0 + 152);
    v68 = *(v0 + 120);
    v71 = *(v0 + 112);
    loga = *(v0 + 88);

    v59 = *(v0 + 8);

    return v59();
  }

  else
  {
    v27 = *(v0 + 216);
    v28 = *(v0 + 64);
    v29 = *(v3 + 32);
    *(v0 + 320) = v29;
    *(v0 + 328) = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v29(v27, v1, v2);
    v30 = *(v28 + 104);
    sub_10000560C(&qword_10012A600, &qword_100109468);
    *(v0 + 336) = *(v3 + 72);
    v31 = *(v3 + 80);
    *(v0 + 456) = v31;
    v32 = (v31 + 32) & ~v31;
    v33 = swift_allocObject();
    *(v0 + 344) = v33;
    *(v33 + 16) = xmmword_1001089C0;
    v34 = *(v3 + 16);
    *(v0 + 352) = v34;
    *(v0 + 360) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v34(v33 + v32, v27, v2);
    *(v0 + 24) = v33;
    v35 = async function pointer to Sequence.asyncMap<A>(predicate:)[1];
    v36 = swift_task_alloc();
    *(v0 + 368) = v36;
    v37 = sub_10000560C(&qword_10012B4D0, &qword_10010A358);
    v38 = sub_10000CC24(&qword_10012B4D8, &qword_10012B4D0, &qword_10010A358);
    *v36 = v0;
    v36[1] = sub_1000DC5C0;
    v39 = *(v0 + 184);

    return Sequence.asyncMap<A>(predicate:)(&unk_10010A650, v30, v37, v39, v38);
  }
}

uint64_t sub_1000DC5C0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 368);
  v8 = *v2;
  v3[47] = a1;
  v3[48] = v1;

  if (v1)
  {
    v5 = sub_1000FBEC8;
  }

  else
  {
    v6 = v3[43];

    v5 = sub_1000DC6DC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000DC6DC()
{
  v1 = *(*(v0 + 64) + 80);
  *(v0 + 32) = v1;
  v2 = *(v0 + 376);
  *(v0 + 392) = v1;
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (*(v0 + 456) + 32) & ~*(v0 + 456);
    *(v0 + 40) = _swiftEmptyArrayStorage;

    sub_10005C508(0, v3, 0);
    v5 = 0;
    v6 = *(v0 + 40);
    v7 = v2 + v4;
    do
    {
      v8 = *(v0 + 360);
      v10 = *(v0 + 192);
      v9 = *(v0 + 200);
      v11 = *(v0 + 184);
      v12 = *(v0 + 112);
      (*(v0 + 352))(v9, v7 + *(v0 + 336) * v5, v11);
      StoredPhoto.localIdentifier.getter();
      (*(v10 + 8))(v9, v11);
      *(v0 + 40) = v6;
      v14 = v6[2];
      v13 = v6[3];
      if (v14 >= v13 >> 1)
      {
        sub_10005C508(v13 > 1, v14 + 1, 1);
        v6 = *(v0 + 40);
      }

      v16 = *(v0 + 104);
      v15 = *(v0 + 112);
      v17 = *(v0 + 96);
      ++v5;
      v6[2] = v14 + 1;
      (*(v16 + 32))(v6 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v14, v15, v17);
    }

    while (v3 != v5);
  }

  else
  {

    v6 = _swiftEmptyArrayStorage;
  }

  *(v0 + 400) = v6;
  v19 = *(v0 + 120);
  v18 = *(v0 + 128);
  v20 = *(v0 + 72);
  sub_1000FAACC(&qword_10012A178, &type metadata accessor for DailyID);
  dispatch thunk of PhotosFaceID.id.getter();
  v21 = static TimeUtilities.currentEpoch.getter();
  v22 = type metadata accessor for DailyDatabase();
  v23 = sub_1000FAACC(&qword_10012A470, &type metadata accessor for DailyDatabase);
  v24 = async function pointer to dispatch thunk of PhotosFaceIDDatabase.relate(photos:to:on:)[1];
  v25 = swift_task_alloc();
  *(v0 + 408) = v25;
  *v25 = v0;
  v25[1] = sub_1000DC964;
  v26 = *(v0 + 120);

  return dispatch thunk of PhotosFaceIDDatabase.relate(photos:to:on:)(v6, v26, v21, v22, v23);
}

uint64_t sub_1000DC964()
{
  v2 = *v1;
  v3 = *(*v1 + 408);
  v19 = *v1;
  *(*v1 + 416) = v0;

  if (v0)
  {
    v5 = v2[49];
    v4 = v2[50];
    v6 = v2[47];
    v7 = v2[15];
    v10 = v2 + 12;
    v8 = v2[12];
    v9 = v10[1];

    (*(v9 + 8))(v7, v8);

    v11 = sub_1000FBEEC;
  }

  else
  {
    v13 = v2[49];
    v12 = v2[50];
    v14 = v2[15];
    v17 = v2 + 12;
    v15 = v2[12];
    v16 = v17[1];

    (*(v16 + 8))(v14, v15);

    v11 = sub_1000DCAF4;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_1000DCAF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(v6 + 376);
  v8 = *(v7 + 16);
  *(v6 + 424) = v8;
  if (!v8)
  {
    (*(*(v6 + 192) + 8))(*(v6 + 216), *(v6 + 184));

    v24 = sub_10000CC24(&qword_10012AA30, &qword_10012AA18, &qword_100109A00);
    v25 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
    v26 = swift_task_alloc();
    *(v6 + 312) = v26;
    *v26 = v6;
    v26[1] = sub_1000DBEE4;
    v27 = *(v6 + 248);
    a1 = *(v6 + 224);
    a5 = *(v6 + 232);
    a4 = v6 + 16;
    a2 = 0;
    a3 = 0;
    a6 = v24;

    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(a1, a2, a3, a4, a5, a6);
  }

  v9 = *(v6 + 456);
  *(v6 + 432) = 0;
  if (!*(v7 + 16))
  {
    __break(1u);
    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(a1, a2, a3, a4, a5, a6);
  }

  v10 = *(v6 + 360);
  v12 = *(v6 + 320);
  v11 = *(v6 + 328);
  v13 = *(v6 + 208);
  v14 = *(v6 + 184);
  v16 = *(v6 + 80);
  v15 = *(v6 + 88);
  v17 = *(v6 + 48);
  (*(v6 + 352))(v13, v7 + ((v9 + 32) & ~v9), v14);
  sub_10000560C(&qword_10012A668, &qword_100109538);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1001089C0;
  *(v18 + 32) = static TimeUtilities.currentEpoch.getter();
  *v15 = v18;
  v12(v15 + *(v16 + 48), v13, v14);
  v28 = (v17 + *v17);
  v19 = v17[1];
  v20 = swift_task_alloc();
  *(v6 + 440) = v20;
  *v20 = v6;
  v20[1] = sub_1000DCD8C;
  v21 = *(v6 + 88);
  v22 = *(v6 + 56);

  return v28(v21);
}

uint64_t sub_1000DCD8C()
{
  v2 = *v1;
  v3 = *(*v1 + 440);
  v7 = *v1;
  *(*v1 + 448) = v0;

  if (v0)
  {
    v4 = *(v2 + 376);
    sub_10000C460(*(v2 + 88), &qword_10012A428, &unk_1001091B0);

    v5 = sub_1000FBE28;
  }

  else
  {
    sub_10000C460(*(v2 + 88), &qword_10012A428, &unk_1001091B0);
    v5 = sub_1000DCEDC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000DCEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(v6 + 432) + 1;
  if (v7 == *(v6 + 424))
  {
    v8 = *(v6 + 376);
    (*(*(v6 + 192) + 8))(*(v6 + 216), *(v6 + 184));

    v9 = sub_10000CC24(&qword_10012AA30, &qword_10012AA18, &qword_100109A00);
    v10 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
    v11 = swift_task_alloc();
    *(v6 + 312) = v11;
    *v11 = v6;
    v11[1] = sub_1000DBEE4;
    v12 = *(v6 + 248);
    a1 = *(v6 + 224);
    a5 = *(v6 + 232);
    a4 = v6 + 16;
    a2 = 0;
    a3 = 0;
    a6 = v9;

    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(a1, a2, a3, a4, a5, a6);
  }

  *(v6 + 432) = v7;
  v13 = *(v6 + 376);
  if (v7 >= *(v13 + 16))
  {
    __break(1u);
    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(a1, a2, a3, a4, a5, a6);
  }

  v14 = *(v6 + 360);
  v15 = *(v6 + 328);
  v16 = *(v6 + 320);
  v17 = *(v6 + 208);
  v18 = *(v6 + 184);
  v20 = *(v6 + 80);
  v19 = *(v6 + 88);
  v21 = *(v6 + 48);
  (*(v6 + 352))(v17, v13 + ((*(v6 + 456) + 32) & ~*(v6 + 456)) + *(v6 + 336) * v7, v18);
  sub_10000560C(&qword_10012A668, &qword_100109538);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1001089C0;
  *(v22 + 32) = static TimeUtilities.currentEpoch.getter();
  *v19 = v22;
  v16(v19 + *(v20 + 48), v17, v18);
  v28 = (v21 + *v21);
  v23 = v21[1];
  v24 = swift_task_alloc();
  *(v6 + 440) = v24;
  *v24 = v6;
  v24[1] = sub_1000DCD8C;
  v25 = *(v6 + 88);
  v26 = *(v6 + 56);

  return v28(v25);
}

uint64_t sub_1000DD188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  v5 = sub_10000560C(&qword_10012A428, &unk_1001091B0);
  v4[10] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v4[12] = v7;
  v8 = *(v7 - 8);
  v4[13] = v8;
  v9 = *(v8 + 64) + 15;
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v10 = type metadata accessor for ShuffleID();
  v4[16] = v10;
  v11 = *(v10 - 8);
  v4[17] = v11;
  v12 = *(v11 + 64) + 15;
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v13 = type metadata accessor for Logger();
  v4[20] = v13;
  v14 = *(v13 - 8);
  v4[21] = v14;
  v15 = *(v14 + 64) + 15;
  v4[22] = swift_task_alloc();
  v16 = type metadata accessor for StoredPhoto();
  v4[23] = v16;
  v17 = *(v16 - 8);
  v4[24] = v17;
  v18 = *(v17 + 64) + 15;
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v19 = *(*(sub_10000560C(&qword_10012A400, &qword_100109190) - 8) + 64) + 15;
  v4[28] = swift_task_alloc();
  v20 = sub_10000560C(&qword_10012AA18, &qword_100109A00);
  v4[29] = v20;
  v21 = *(v20 - 8);
  v4[30] = v21;
  v22 = *(v21 + 64) + 15;
  v4[31] = swift_task_alloc();
  v23 = sub_10000560C(&qword_10012AA20, &qword_100109A08);
  v4[32] = v23;
  v24 = *(v23 - 8);
  v4[33] = v24;
  v25 = *(v24 + 64) + 15;
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();

  return _swift_task_switch(sub_1000DD4E0, 0, 0);
}

uint64_t sub_1000DD4E0()
{
  v1 = *(v0 + 64);
  *(v0 + 288) = *(v1 + 96);
  *(v0 + 460) = *(v1 + 16);
  type metadata accessor for CommunicationActor();
  *(v0 + 296) = static CommunicationActor.shared.getter();
  sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000DD5B8, v3, v2);
}

uint64_t sub_1000DD5B8()
{
  v2 = *(v0 + 288);
  v1 = *(v0 + 296);
  v3 = *(v0 + 280);
  v4 = *(v0 + 72);
  v5 = *(v0 + 460);

  sub_100087F38(v5, v4, v3);
  *(v0 + 304) = 0;

  return _swift_task_switch(sub_1000DD668, 0, 0);
}

uint64_t sub_1000DD668()
{
  v1 = v0[31];
  (*(v0[33] + 16))(v0[34], v0[35], v0[32]);
  sub_10000CC24(&qword_10012AA28, &qword_10012AA20, &qword_100109A08);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v2 = sub_10000CC24(&qword_10012AA30, &qword_10012AA18, &qword_100109A00);
  v3 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v4 = swift_task_alloc();
  v0[39] = v4;
  *v4 = v0;
  v4[1] = sub_1000DD7B4;
  v5 = v0[31];
  v6 = v0[28];
  v7 = v0[29];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v6, 0, 0, v0 + 2, v7, v2);
}

uint64_t sub_1000DD7B4()
{
  v2 = *(*v1 + 312);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_1000FBEF8;
  }

  else
  {
    v3 = sub_1000DD8C4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000DD8C4()
{
  v75 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 184);
  v3 = *(v0 + 192);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 176);
    v5 = *(v0 + 152);
    v6 = *(v0 + 128);
    v7 = *(v0 + 136);
    v9 = *(v0 + 64);
    v8 = *(v0 + 72);
    (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
    static Log.photos.getter();
    v10 = *(v7 + 16);
    v10(v5, v8, v6);
    swift_retain_n();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    log = v11;
    if (os_log_type_enabled(v11, v12))
    {
      v67 = *(v0 + 256);
      v69 = *(v0 + 280);
      v65 = *(v0 + 176);
      v66 = *(v0 + 264);
      v13 = *(v0 + 152);
      v63 = *(v0 + 168);
      v64 = *(v0 + 160);
      v15 = *(v0 + 136);
      v14 = *(v0 + 144);
      v16 = *(v0 + 128);
      v61 = *(v0 + 64);
      v62 = *(v0 + 460);
      v17 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *v17 = 136315394;
      v10(v14, v13, v16);
      v18 = *(v15 + 8);
      v18(v13, v16);
      sub_1000FAACC(&qword_10012A2F0, &type metadata accessor for ShuffleID);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v20;
      v18(v14, v16);
      v22 = sub_100102F80(v19, v21, &v74);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2080;

      v23 = PhotosFaceType.description.getter();
      v25 = v24;

      v26 = sub_100102F80(v23, v25, &v74);

      *(v17 + 14) = v26;
      _os_log_impl(&_mh_execute_header, log, v12, "Completed tracking %s for type %s", v17, 0x16u);
      swift_arrayDestroy();

      (*(v63 + 8))(v65, v64);
      (*(v66 + 8))(v69, v67);
    }

    else
    {
      v70 = *(v0 + 280);
      v40 = *(v0 + 256);
      v41 = *(v0 + 264);
      v42 = *(v0 + 168);
      v43 = *(v0 + 176);
      v45 = *(v0 + 152);
      v44 = *(v0 + 160);
      v47 = *(v0 + 128);
      v46 = *(v0 + 136);
      v48 = *(v0 + 64);

      (*(v46 + 8))(v45, v47);

      (*(v42 + 8))(v43, v44);
      (*(v41 + 8))(v70, v40);
    }

    v50 = *(v0 + 272);
    v49 = *(v0 + 280);
    v51 = *(v0 + 248);
    v53 = *(v0 + 216);
    v52 = *(v0 + 224);
    v55 = *(v0 + 200);
    v54 = *(v0 + 208);
    v56 = *(v0 + 176);
    v58 = *(v0 + 144);
    v57 = *(v0 + 152);
    v68 = *(v0 + 120);
    v71 = *(v0 + 112);
    loga = *(v0 + 88);

    v59 = *(v0 + 8);

    return v59();
  }

  else
  {
    v27 = *(v0 + 216);
    v28 = *(v0 + 64);
    v29 = *(v3 + 32);
    *(v0 + 320) = v29;
    *(v0 + 328) = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v29(v27, v1, v2);
    v30 = *(v28 + 104);
    sub_10000560C(&qword_10012A600, &qword_100109468);
    *(v0 + 336) = *(v3 + 72);
    v31 = *(v3 + 80);
    *(v0 + 456) = v31;
    v32 = (v31 + 32) & ~v31;
    v33 = swift_allocObject();
    *(v0 + 344) = v33;
    *(v33 + 16) = xmmword_1001089C0;
    v34 = *(v3 + 16);
    *(v0 + 352) = v34;
    *(v0 + 360) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v34(v33 + v32, v27, v2);
    *(v0 + 24) = v33;
    v35 = async function pointer to Sequence.asyncMap<A>(predicate:)[1];
    v36 = swift_task_alloc();
    *(v0 + 368) = v36;
    v37 = sub_10000560C(&qword_10012B4D0, &qword_10010A358);
    v38 = sub_10000CC24(&qword_10012B4D8, &qword_10012B4D0, &qword_10010A358);
    *v36 = v0;
    v36[1] = sub_1000DDE90;
    v39 = *(v0 + 184);

    return Sequence.asyncMap<A>(predicate:)(&unk_10010A7D0, v30, v37, v39, v38);
  }
}

uint64_t sub_1000DDE90(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 368);
  v8 = *v2;
  v3[47] = a1;
  v3[48] = v1;

  if (v1)
  {
    v5 = sub_1000FBEC8;
  }

  else
  {
    v6 = v3[43];

    v5 = sub_1000DDFAC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000DDFAC()
{
  v1 = *(*(v0 + 64) + 80);
  *(v0 + 32) = v1;
  v2 = *(v0 + 376);
  *(v0 + 392) = v1;
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (*(v0 + 456) + 32) & ~*(v0 + 456);
    *(v0 + 40) = _swiftEmptyArrayStorage;

    sub_10005C508(0, v3, 0);
    v5 = 0;
    v6 = *(v0 + 40);
    v7 = v2 + v4;
    do
    {
      v8 = *(v0 + 360);
      v10 = *(v0 + 192);
      v9 = *(v0 + 200);
      v11 = *(v0 + 184);
      v12 = *(v0 + 112);
      (*(v0 + 352))(v9, v7 + *(v0 + 336) * v5, v11);
      StoredPhoto.localIdentifier.getter();
      (*(v10 + 8))(v9, v11);
      *(v0 + 40) = v6;
      v14 = v6[2];
      v13 = v6[3];
      if (v14 >= v13 >> 1)
      {
        sub_10005C508(v13 > 1, v14 + 1, 1);
        v6 = *(v0 + 40);
      }

      v16 = *(v0 + 104);
      v15 = *(v0 + 112);
      v17 = *(v0 + 96);
      ++v5;
      v6[2] = v14 + 1;
      (*(v16 + 32))(v6 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v14, v15, v17);
    }

    while (v3 != v5);
  }

  else
  {

    v6 = _swiftEmptyArrayStorage;
  }

  *(v0 + 400) = v6;
  v19 = *(v0 + 120);
  v18 = *(v0 + 128);
  v20 = *(v0 + 72);
  sub_1000FAACC(&qword_10012A2B0, &type metadata accessor for ShuffleID);
  dispatch thunk of PhotosFaceID.id.getter();
  v21 = static TimeUtilities.currentEpoch.getter();
  v22 = type metadata accessor for ShuffleDatabase();
  v23 = sub_1000FAACC(&qword_10012A480, &type metadata accessor for ShuffleDatabase);
  v24 = async function pointer to dispatch thunk of PhotosFaceIDDatabase.relate(photos:to:on:)[1];
  v25 = swift_task_alloc();
  *(v0 + 408) = v25;
  *v25 = v0;
  v25[1] = sub_1000DE234;
  v26 = *(v0 + 120);

  return dispatch thunk of PhotosFaceIDDatabase.relate(photos:to:on:)(v6, v26, v21, v22, v23);
}

uint64_t sub_1000DE234()
{
  v2 = *v1;
  v3 = *(*v1 + 408);
  v19 = *v1;
  *(*v1 + 416) = v0;

  if (v0)
  {
    v5 = v2[49];
    v4 = v2[50];
    v6 = v2[47];
    v7 = v2[15];
    v10 = v2 + 12;
    v8 = v2[12];
    v9 = v10[1];

    (*(v9 + 8))(v7, v8);

    v11 = sub_1000FBEEC;
  }

  else
  {
    v13 = v2[49];
    v12 = v2[50];
    v14 = v2[15];
    v17 = v2 + 12;
    v15 = v2[12];
    v16 = v17[1];

    (*(v16 + 8))(v14, v15);

    v11 = sub_1000DE3C4;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_1000DE3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(v6 + 376);
  v8 = *(v7 + 16);
  *(v6 + 424) = v8;
  if (!v8)
  {
    (*(*(v6 + 192) + 8))(*(v6 + 216), *(v6 + 184));

    v24 = sub_10000CC24(&qword_10012AA30, &qword_10012AA18, &qword_100109A00);
    v25 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
    v26 = swift_task_alloc();
    *(v6 + 312) = v26;
    *v26 = v6;
    v26[1] = sub_1000DD7B4;
    v27 = *(v6 + 248);
    a1 = *(v6 + 224);
    a5 = *(v6 + 232);
    a4 = v6 + 16;
    a2 = 0;
    a3 = 0;
    a6 = v24;

    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(a1, a2, a3, a4, a5, a6);
  }

  v9 = *(v6 + 456);
  *(v6 + 432) = 0;
  if (!*(v7 + 16))
  {
    __break(1u);
    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(a1, a2, a3, a4, a5, a6);
  }

  v10 = *(v6 + 360);
  v12 = *(v6 + 320);
  v11 = *(v6 + 328);
  v13 = *(v6 + 208);
  v14 = *(v6 + 184);
  v16 = *(v6 + 80);
  v15 = *(v6 + 88);
  v17 = *(v6 + 48);
  (*(v6 + 352))(v13, v7 + ((v9 + 32) & ~v9), v14);
  sub_10000560C(&qword_10012A668, &qword_100109538);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1001089C0;
  *(v18 + 32) = static TimeUtilities.currentEpoch.getter();
  *v15 = v18;
  v12(v15 + *(v16 + 48), v13, v14);
  v28 = (v17 + *v17);
  v19 = v17[1];
  v20 = swift_task_alloc();
  *(v6 + 440) = v20;
  *v20 = v6;
  v20[1] = sub_1000DE65C;
  v21 = *(v6 + 88);
  v22 = *(v6 + 56);

  return v28(v21);
}

uint64_t sub_1000DE65C()
{
  v2 = *v1;
  v3 = *(*v1 + 440);
  v7 = *v1;
  *(*v1 + 448) = v0;

  if (v0)
  {
    v4 = *(v2 + 376);
    sub_10000C460(*(v2 + 88), &qword_10012A428, &unk_1001091B0);

    v5 = sub_1000FBE28;
  }

  else
  {
    sub_10000C460(*(v2 + 88), &qword_10012A428, &unk_1001091B0);
    v5 = sub_1000DE7AC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000DE7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(v6 + 432) + 1;
  if (v7 == *(v6 + 424))
  {
    v8 = *(v6 + 376);
    (*(*(v6 + 192) + 8))(*(v6 + 216), *(v6 + 184));

    v9 = sub_10000CC24(&qword_10012AA30, &qword_10012AA18, &qword_100109A00);
    v10 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
    v11 = swift_task_alloc();
    *(v6 + 312) = v11;
    *v11 = v6;
    v11[1] = sub_1000DD7B4;
    v12 = *(v6 + 248);
    a1 = *(v6 + 224);
    a5 = *(v6 + 232);
    a4 = v6 + 16;
    a2 = 0;
    a3 = 0;
    a6 = v9;

    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(a1, a2, a3, a4, a5, a6);
  }

  *(v6 + 432) = v7;
  v13 = *(v6 + 376);
  if (v7 >= *(v13 + 16))
  {
    __break(1u);
    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(a1, a2, a3, a4, a5, a6);
  }

  v14 = *(v6 + 360);
  v15 = *(v6 + 328);
  v16 = *(v6 + 320);
  v17 = *(v6 + 208);
  v18 = *(v6 + 184);
  v20 = *(v6 + 80);
  v19 = *(v6 + 88);
  v21 = *(v6 + 48);
  (*(v6 + 352))(v17, v13 + ((*(v6 + 456) + 32) & ~*(v6 + 456)) + *(v6 + 336) * v7, v18);
  sub_10000560C(&qword_10012A668, &qword_100109538);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1001089C0;
  *(v22 + 32) = static TimeUtilities.currentEpoch.getter();
  *v19 = v22;
  v16(v19 + *(v20 + 48), v17, v18);
  v28 = (v21 + *v21);
  v23 = v21[1];
  v24 = swift_task_alloc();
  *(v6 + 440) = v24;
  *v24 = v6;
  v24[1] = sub_1000DE65C;
  v25 = *(v6 + 88);
  v26 = *(v6 + 56);

  return v28(v25);
}

uint64_t sub_1000DEA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  v5 = sub_10000560C(&qword_10012A428, &unk_1001091B0);
  v4[10] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v4[12] = v7;
  v8 = *(v7 - 8);
  v4[13] = v8;
  v9 = *(v8 + 64) + 15;
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v10 = type metadata accessor for AlbumID();
  v4[16] = v10;
  v11 = *(v10 - 8);
  v4[17] = v11;
  v12 = *(v11 + 64) + 15;
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v13 = type metadata accessor for Logger();
  v4[20] = v13;
  v14 = *(v13 - 8);
  v4[21] = v14;
  v15 = *(v14 + 64) + 15;
  v4[22] = swift_task_alloc();
  v16 = type metadata accessor for StoredPhoto();
  v4[23] = v16;
  v17 = *(v16 - 8);
  v4[24] = v17;
  v18 = *(v17 + 64) + 15;
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v19 = *(*(sub_10000560C(&qword_10012A400, &qword_100109190) - 8) + 64) + 15;
  v4[28] = swift_task_alloc();
  v20 = sub_10000560C(&qword_10012AA18, &qword_100109A00);
  v4[29] = v20;
  v21 = *(v20 - 8);
  v4[30] = v21;
  v22 = *(v21 + 64) + 15;
  v4[31] = swift_task_alloc();
  v23 = sub_10000560C(&qword_10012AA20, &qword_100109A08);
  v4[32] = v23;
  v24 = *(v23 - 8);
  v4[33] = v24;
  v25 = *(v24 + 64) + 15;
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();

  return _swift_task_switch(sub_1000DEDB0, 0, 0);
}

uint64_t sub_1000DEDB0()
{
  v1 = *(v0 + 64);
  *(v0 + 288) = *(v1 + 96);
  *(v0 + 460) = *(v1 + 16);
  type metadata accessor for CommunicationActor();
  *(v0 + 296) = static CommunicationActor.shared.getter();
  sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000DEE88, v3, v2);
}

uint64_t sub_1000DEE88()
{
  v2 = *(v0 + 288);
  v1 = *(v0 + 296);
  v3 = *(v0 + 280);
  v4 = *(v0 + 72);
  v5 = *(v0 + 460);

  sub_100088968(v5, v4, v3);
  *(v0 + 304) = 0;

  return _swift_task_switch(sub_1000DEF38, 0, 0);
}

uint64_t sub_1000DEF38()
{
  v1 = v0[31];
  (*(v0[33] + 16))(v0[34], v0[35], v0[32]);
  sub_10000CC24(&qword_10012AA28, &qword_10012AA20, &qword_100109A08);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v2 = sub_10000CC24(&qword_10012AA30, &qword_10012AA18, &qword_100109A00);
  v3 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v4 = swift_task_alloc();
  v0[39] = v4;
  *v4 = v0;
  v4[1] = sub_1000DF190;
  v5 = v0[31];
  v6 = v0[28];
  v7 = v0[29];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v6, 0, 0, v0 + 2, v7, v2);
}

uint64_t sub_1000DF084()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[31];
  v5 = v0[27];
  v4 = v0[28];
  v7 = v0[25];
  v6 = v0[26];
  v8 = v0[22];
  v9 = v0[18];
  v10 = v0[19];
  v13 = v0[15];
  v14 = v0[14];
  v15 = v0[11];
  v16 = v0[38];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000DF190()
{
  v2 = *(*v1 + 312);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_1000DF86C;
  }

  else
  {
    v3 = sub_1000DF2A0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000DF2A0()
{
  v75 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 184);
  v3 = *(v0 + 192);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 176);
    v5 = *(v0 + 152);
    v6 = *(v0 + 128);
    v7 = *(v0 + 136);
    v9 = *(v0 + 64);
    v8 = *(v0 + 72);
    (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
    static Log.photos.getter();
    v10 = *(v7 + 16);
    v10(v5, v8, v6);
    swift_retain_n();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    log = v11;
    if (os_log_type_enabled(v11, v12))
    {
      v67 = *(v0 + 256);
      v69 = *(v0 + 280);
      v65 = *(v0 + 176);
      v66 = *(v0 + 264);
      v13 = *(v0 + 152);
      v63 = *(v0 + 168);
      v64 = *(v0 + 160);
      v15 = *(v0 + 136);
      v14 = *(v0 + 144);
      v16 = *(v0 + 128);
      v61 = *(v0 + 64);
      v62 = *(v0 + 460);
      v17 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *v17 = 136315394;
      v10(v14, v13, v16);
      v18 = *(v15 + 8);
      v18(v13, v16);
      sub_1000FAACC(&qword_10012A0A0, &type metadata accessor for AlbumID);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v20;
      v18(v14, v16);
      v22 = sub_100102F80(v19, v21, &v74);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2080;

      v23 = PhotosFaceType.description.getter();
      v25 = v24;

      v26 = sub_100102F80(v23, v25, &v74);

      *(v17 + 14) = v26;
      _os_log_impl(&_mh_execute_header, log, v12, "Completed tracking %s for type %s", v17, 0x16u);
      swift_arrayDestroy();

      (*(v63 + 8))(v65, v64);
      (*(v66 + 8))(v69, v67);
    }

    else
    {
      v70 = *(v0 + 280);
      v40 = *(v0 + 256);
      v41 = *(v0 + 264);
      v42 = *(v0 + 168);
      v43 = *(v0 + 176);
      v45 = *(v0 + 152);
      v44 = *(v0 + 160);
      v47 = *(v0 + 128);
      v46 = *(v0 + 136);
      v48 = *(v0 + 64);

      (*(v46 + 8))(v45, v47);

      (*(v42 + 8))(v43, v44);
      (*(v41 + 8))(v70, v40);
    }

    v50 = *(v0 + 272);
    v49 = *(v0 + 280);
    v51 = *(v0 + 248);
    v53 = *(v0 + 216);
    v52 = *(v0 + 224);
    v55 = *(v0 + 200);
    v54 = *(v0 + 208);
    v56 = *(v0 + 176);
    v58 = *(v0 + 144);
    v57 = *(v0 + 152);
    v68 = *(v0 + 120);
    v71 = *(v0 + 112);
    loga = *(v0 + 88);

    v59 = *(v0 + 8);

    return v59();
  }

  else
  {
    v27 = *(v0 + 216);
    v28 = *(v0 + 64);
    v29 = *(v3 + 32);
    *(v0 + 320) = v29;
    *(v0 + 328) = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v29(v27, v1, v2);
    v30 = *(v28 + 104);
    sub_10000560C(&qword_10012A600, &qword_100109468);
    *(v0 + 336) = *(v3 + 72);
    v31 = *(v3 + 80);
    *(v0 + 456) = v31;
    v32 = (v31 + 32) & ~v31;
    v33 = swift_allocObject();
    *(v0 + 344) = v33;
    *(v33 + 16) = xmmword_1001089C0;
    v34 = *(v3 + 16);
    *(v0 + 352) = v34;
    *(v0 + 360) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v34(v33 + v32, v27, v2);
    *(v0 + 24) = v33;
    v35 = async function pointer to Sequence.asyncMap<A>(predicate:)[1];
    v36 = swift_task_alloc();
    *(v0 + 368) = v36;
    v37 = sub_10000560C(&qword_10012B4D0, &qword_10010A358);
    v38 = sub_10000CC24(&qword_10012B4D8, &qword_10012B4D0, &qword_10010A358);
    *v36 = v0;
    v36[1] = sub_1000DF9B0;
    v39 = *(v0 + 184);

    return Sequence.asyncMap<A>(predicate:)(&unk_10010A998, v30, v37, v39, v38);
  }
}

uint64_t sub_1000DF86C()
{
  v1 = v0[35];
  v2 = v0[32];
  v3 = v0[33];
  (*(v0[30] + 8))(v0[31], v0[29]);
  (*(v3 + 8))(v1, v2);
  v5 = v0[34];
  v4 = v0[35];
  v6 = v0[31];
  v8 = v0[27];
  v7 = v0[28];
  v10 = v0[25];
  v9 = v0[26];
  v11 = v0[22];
  v12 = v0[18];
  v13 = v0[19];
  v16 = v0[15];
  v17 = v0[14];
  v18 = v0[11];
  v19 = v0[2];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1000DF9B0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 368);
  v8 = *v2;
  v3[47] = a1;
  v3[48] = v1;

  if (v1)
  {
    v5 = sub_1000DFD54;
  }

  else
  {
    v6 = v3[43];

    v5 = sub_1000DFACC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000DFACC()
{
  v1 = *(*(v0 + 64) + 80);
  *(v0 + 32) = v1;
  v2 = *(v0 + 376);
  *(v0 + 392) = v1;
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (*(v0 + 456) + 32) & ~*(v0 + 456);
    *(v0 + 40) = _swiftEmptyArrayStorage;

    sub_10005C508(0, v3, 0);
    v5 = 0;
    v6 = *(v0 + 40);
    v7 = v2 + v4;
    do
    {
      v8 = *(v0 + 360);
      v10 = *(v0 + 192);
      v9 = *(v0 + 200);
      v11 = *(v0 + 184);
      v12 = *(v0 + 112);
      (*(v0 + 352))(v9, v7 + *(v0 + 336) * v5, v11);
      StoredPhoto.localIdentifier.getter();
      (*(v10 + 8))(v9, v11);
      *(v0 + 40) = v6;
      v14 = v6[2];
      v13 = v6[3];
      if (v14 >= v13 >> 1)
      {
        sub_10005C508(v13 > 1, v14 + 1, 1);
        v6 = *(v0 + 40);
      }

      v16 = *(v0 + 104);
      v15 = *(v0 + 112);
      v17 = *(v0 + 96);
      ++v5;
      v6[2] = v14 + 1;
      (*(v16 + 32))(v6 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v14, v15, v17);
    }

    while (v3 != v5);
  }

  else
  {

    v6 = _swiftEmptyArrayStorage;
  }

  *(v0 + 400) = v6;
  v19 = *(v0 + 120);
  v18 = *(v0 + 128);
  v20 = *(v0 + 72);
  sub_1000FAACC(&qword_10012A048, &type metadata accessor for AlbumID);
  dispatch thunk of PhotosFaceID.id.getter();
  v21 = static TimeUtilities.currentEpoch.getter();
  v22 = type metadata accessor for AlbumDatabase();
  v23 = sub_1000FAACC(&qword_10012A490, &type metadata accessor for AlbumDatabase);
  v24 = async function pointer to dispatch thunk of PhotosFaceIDDatabase.relate(photos:to:on:)[1];
  v25 = swift_task_alloc();
  *(v0 + 408) = v25;
  *v25 = v0;
  v25[1] = sub_1000DFEC8;
  v26 = *(v0 + 120);

  return dispatch thunk of PhotosFaceIDDatabase.relate(photos:to:on:)(v6, v26, v21, v22, v23);
}

uint64_t sub_1000DFD54()
{
  v1 = v0[43];
  v2 = v0[35];
  v3 = v0[32];
  v4 = v0[33];
  v6 = v0[30];
  v5 = v0[31];
  v7 = v0[29];
  v8 = v0[27];
  v9 = v0[23];
  v10 = v0[24];

  (*(v10 + 8))(v8, v9);
  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v2, v3);
  v12 = v0[34];
  v11 = v0[35];
  v13 = v0[31];
  v15 = v0[27];
  v14 = v0[28];
  v17 = v0[25];
  v16 = v0[26];
  v18 = v0[22];
  v19 = v0[18];
  v20 = v0[19];
  v23 = v0[15];
  v24 = v0[14];
  v25 = v0[11];
  v26 = v0[48];

  v21 = v0[1];

  return v21();
}

uint64_t sub_1000DFEC8()
{
  v2 = *v1;
  v3 = *(*v1 + 408);
  v19 = *v1;
  *(*v1 + 416) = v0;

  if (v0)
  {
    v5 = v2[49];
    v4 = v2[50];
    v6 = v2[47];
    v7 = v2[15];
    v10 = v2 + 12;
    v8 = v2[12];
    v9 = v10[1];

    (*(v9 + 8))(v7, v8);

    v11 = sub_1000E02F0;
  }

  else
  {
    v13 = v2[49];
    v12 = v2[50];
    v14 = v2[15];
    v17 = v2 + 12;
    v15 = v2[12];
    v16 = v17[1];

    (*(v16 + 8))(v14, v15);

    v11 = sub_1000E0058;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_1000E0058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(v6 + 376);
  v8 = *(v7 + 16);
  *(v6 + 424) = v8;
  if (!v8)
  {
    (*(*(v6 + 192) + 8))(*(v6 + 216), *(v6 + 184));

    v24 = sub_10000CC24(&qword_10012AA30, &qword_10012AA18, &qword_100109A00);
    v25 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
    v26 = swift_task_alloc();
    *(v6 + 312) = v26;
    *v26 = v6;
    v26[1] = sub_1000DF190;
    v27 = *(v6 + 248);
    a1 = *(v6 + 224);
    a5 = *(v6 + 232);
    a4 = v6 + 16;
    a2 = 0;
    a3 = 0;
    a6 = v24;

    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(a1, a2, a3, a4, a5, a6);
  }

  v9 = *(v6 + 456);
  *(v6 + 432) = 0;
  if (!*(v7 + 16))
  {
    __break(1u);
    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(a1, a2, a3, a4, a5, a6);
  }

  v10 = *(v6 + 360);
  v12 = *(v6 + 320);
  v11 = *(v6 + 328);
  v13 = *(v6 + 208);
  v14 = *(v6 + 184);
  v16 = *(v6 + 80);
  v15 = *(v6 + 88);
  v17 = *(v6 + 48);
  (*(v6 + 352))(v13, v7 + ((v9 + 32) & ~v9), v14);
  sub_10000560C(&qword_10012A668, &qword_100109538);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1001089C0;
  *(v18 + 32) = static TimeUtilities.currentEpoch.getter();
  *v15 = v18;
  v12(v15 + *(v16 + 48), v13, v14);
  v28 = (v17 + *v17);
  v19 = v17[1];
  v20 = swift_task_alloc();
  *(v6 + 440) = v20;
  *v20 = v6;
  v20[1] = sub_1000E0454;
  v21 = *(v6 + 88);
  v22 = *(v6 + 56);

  return v28(v21);
}

uint64_t sub_1000E02F0()
{
  v1 = v0[35];
  v2 = v0[32];
  v3 = v0[33];
  v5 = v0[30];
  v4 = v0[31];
  v6 = v0[29];
  (*(v0[24] + 8))(v0[27], v0[23]);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  v8 = v0[34];
  v7 = v0[35];
  v9 = v0[31];
  v11 = v0[27];
  v10 = v0[28];
  v13 = v0[25];
  v12 = v0[26];
  v14 = v0[22];
  v15 = v0[18];
  v16 = v0[19];
  v19 = v0[15];
  v20 = v0[14];
  v21 = v0[11];
  v22 = v0[52];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1000E0454()
{
  v2 = *v1;
  v3 = *(*v1 + 440);
  v7 = *v1;
  *(*v1 + 448) = v0;

  if (v0)
  {
    v4 = *(v2 + 376);
    sub_10000C460(*(v2 + 88), &qword_10012A428, &unk_1001091B0);

    v5 = sub_1000E0850;
  }

  else
  {
    sub_10000C460(*(v2 + 88), &qword_10012A428, &unk_1001091B0);
    v5 = sub_1000E05A4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000E05A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(v6 + 432) + 1;
  if (v7 == *(v6 + 424))
  {
    v8 = *(v6 + 376);
    (*(*(v6 + 192) + 8))(*(v6 + 216), *(v6 + 184));

    v9 = sub_10000CC24(&qword_10012AA30, &qword_10012AA18, &qword_100109A00);
    v10 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
    v11 = swift_task_alloc();
    *(v6 + 312) = v11;
    *v11 = v6;
    v11[1] = sub_1000DF190;
    v12 = *(v6 + 248);
    a1 = *(v6 + 224);
    a5 = *(v6 + 232);
    a4 = v6 + 16;
    a2 = 0;
    a3 = 0;
    a6 = v9;

    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(a1, a2, a3, a4, a5, a6);
  }

  *(v6 + 432) = v7;
  v13 = *(v6 + 376);
  if (v7 >= *(v13 + 16))
  {
    __break(1u);
    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(a1, a2, a3, a4, a5, a6);
  }

  v14 = *(v6 + 360);
  v15 = *(v6 + 328);
  v16 = *(v6 + 320);
  v17 = *(v6 + 208);
  v18 = *(v6 + 184);
  v20 = *(v6 + 80);
  v19 = *(v6 + 88);
  v21 = *(v6 + 48);
  (*(v6 + 352))(v17, v13 + ((*(v6 + 456) + 32) & ~*(v6 + 456)) + *(v6 + 336) * v7, v18);
  sub_10000560C(&qword_10012A668, &qword_100109538);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1001089C0;
  *(v22 + 32) = static TimeUtilities.currentEpoch.getter();
  *v19 = v22;
  v16(v19 + *(v20 + 48), v17, v18);
  v28 = (v21 + *v21);
  v23 = v21[1];
  v24 = swift_task_alloc();
  *(v6 + 440) = v24;
  *v24 = v6;
  v24[1] = sub_1000E0454;
  v25 = *(v6 + 88);
  v26 = *(v6 + 56);

  return v28(v25);
}

uint64_t sub_1000E0850()
{
  v1 = v0[35];
  v2 = v0[32];
  v3 = v0[33];
  v5 = v0[30];
  v4 = v0[31];
  v6 = v0[29];
  (*(v0[24] + 8))(v0[27], v0[23]);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  v8 = v0[34];
  v7 = v0[35];
  v9 = v0[31];
  v11 = v0[27];
  v10 = v0[28];
  v13 = v0[25];
  v12 = v0[26];
  v14 = v0[22];
  v15 = v0[18];
  v16 = v0[19];
  v19 = v0[15];
  v20 = v0[14];
  v21 = v0[11];
  v22 = v0[56];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1000E09B4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  v4 = a1 + a2;
  v6 = *(a1 + a2 - 40);
  v5 = *(a1 + a2 - 32);
  v7 = *(v4 - 16);
  swift_getAssociatedConformanceWitness();
  type metadata accessor for SyncedPhotosFace();
  result = SyncedPhotosFace.complete.getter();
  *a3 = result & 1;
  return result;
}

uint64_t sub_1000E0A20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2 + a3;
  v5 = *(a2 + a3 - 40);
  v4 = *(a2 + a3 - 32);
  v6 = *(v3 - 16);
  swift_getAssociatedConformanceWitness();
  type metadata accessor for SyncedPhotosFace();
  return SyncedPhotosFace.id.getter();
}

uint64_t sub_1000E0A88(uint64_t a1)
{
  v2 = sub_10000560C(&qword_100129F60, &qword_100108D78);
  v3 = *(v2 - 8);
  v35 = v2;
  v36 = v3;
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v34 = v32 - v5;
  type metadata accessor for CommunicationActor();
  v6 = static CommunicationActor.shared.getter();
  sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v32[1] = v6;
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = type metadata accessor for DailyID();
  sub_1000FAACC(&qword_10012A1E0, &type metadata accessor for DailyID);
  v38 = dispatch thunk of CustomStringConvertible.description.getter();
  v39 = v8;
  v9._countAndFlagsBits = 8250;
  v9._object = 0xE200000000000000;
  String.append(_:)(v9);
  v10 = sub_10000560C(&qword_10012B528, &qword_10010A590);
  v11 = *(a1 + *(v10 + 48));
  __chkstk_darwin(v10);
  v32[-6] = v7;
  v32[-5] = type metadata accessor for DailyProvider();
  v32[-4] = type metadata accessor for DailyDatabase();
  v32[-3] = sub_1000FAACC(&qword_10012A1D0, type metadata accessor for DailyProvider);
  v32[-2] = sub_1000FAACC(&qword_10012A470, &type metadata accessor for DailyDatabase);
  KeyPath = swift_getKeyPath();
  v13 = *(v11 + 16);
  if (v13)
  {
    v40 = _swiftEmptyArrayStorage;
    result = sub_10005C5B0(0, v13, 0);
    v15 = 0;
    v16 = v40;
    v33 = v11 + ((*(v36 + 80) + 32) & ~*(v36 + 80));
    v32[3] = v36 + 8;
    v32[4] = v36 + 16;
    do
    {
      if (v15 >= *(v11 + 16))
      {
        __break(1u);
        goto LABEL_18;
      }

      v17 = v11;
      v18 = v35;
      v19 = v36;
      v20 = v34;
      (*(v36 + 16))(v34, v33 + *(v36 + 72) * v15, v35);
      v21 = KeyPath;
      swift_getAtKeyPath();
      v22 = v37;
      result = (*(v19 + 8))(v20, v18);
      v40 = v16;
      v24 = v16[2];
      v23 = v16[3];
      if (v24 >= v23 >> 1)
      {
        result = sub_10005C5B0((v23 > 1), v24 + 1, 1);
        v16 = v40;
      }

      ++v15;
      v16[2] = v24 + 1;
      v16[v24 + 4] = v22;
      v11 = v17;
      KeyPath = v21;
    }

    while (v13 != v15);

    v25 = v16[2];
    if (!v25)
    {
      goto LABEL_15;
    }
  }

  else
  {

    v16 = _swiftEmptyArrayStorage;
    v25 = _swiftEmptyArrayStorage[2];
    if (!v25)
    {
LABEL_15:
      v26 = 0;
LABEL_16:

      v40 = v26;
      v30._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v30);

      v31._countAndFlagsBits = 0x736F746F687020;
      v31._object = 0xE700000000000000;
      String.append(_:)(v31);

      return v38;
    }
  }

  v26 = 0;
  v27 = v16 + 4;
  while (1)
  {
    v28 = *v27++;
    v29 = __OFADD__(v26, v28);
    v26 = (v26 + v28);
    if (v29)
    {
      break;
    }

    if (!--v25)
    {
      goto LABEL_16;
    }
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000E0EF8(uint64_t a1, uint64_t (*a2)(void), unint64_t *a3, void (*a4)(uint64_t), uint64_t a5)
{
  v39 = a4;
  v40 = a5;
  v36 = sub_10000560C(&qword_100129F30, &qword_100108D20);
  v43 = *(v36 - 8);
  v9 = *(v43 + 64);
  __chkstk_darwin(v36);
  v42 = &v35 - v10;
  type metadata accessor for CommunicationActor();
  v11 = static CommunicationActor.shared.getter();
  sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v37 = v11;
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = type metadata accessor for ShuffleID();
  sub_1000FAACC(&qword_10012A2F0, &type metadata accessor for ShuffleID);
  v45 = dispatch thunk of CustomStringConvertible.description.getter();
  v46 = v13;
  v14._countAndFlagsBits = 8250;
  v14._object = 0xE200000000000000;
  String.append(_:)(v14);
  v15 = sub_10000560C(&qword_10012B498, &qword_10010A270);
  v16 = *(a1 + *(v15 + 48));
  __chkstk_darwin(v15);
  *(&v35 - 6) = v12;
  *(&v35 - 5) = type metadata accessor for ShuffleProvider();
  *(&v35 - 4) = a2(0);
  *(&v35 - 3) = sub_1000FAACC(&qword_10012B4C0, type metadata accessor for ShuffleProvider);
  *(&v35 - 2) = sub_1000FAACC(a3, v39);
  v17 = v16;
  swift_getKeyPath();
  v18 = *(v16 + 16);
  if (v18)
  {
    v35 = v5;
    v47 = _swiftEmptyArrayStorage;
    result = sub_10005C5B0(0, v18, 0);
    v20 = 0;
    v21 = v47;
    v40 = v16 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
    v41 = v16;
    v38 = v43 + 8;
    v39 = (v43 + 16);
    v22 = v36;
    do
    {
      if (v20 >= *(v17 + 16))
      {
        __break(1u);
        goto LABEL_18;
      }

      v24 = v42;
      v23 = v43;
      (*(v43 + 16))(v42, v40 + *(v43 + 72) * v20, v22);
      swift_getAtKeyPath();
      v25 = v44;
      result = (*(v23 + 8))(v24, v22);
      v47 = v21;
      v27 = v21[2];
      v26 = v21[3];
      if (v27 >= v26 >> 1)
      {
        result = sub_10005C5B0((v26 > 1), v27 + 1, 1);
        v22 = v36;
        v21 = v47;
      }

      ++v20;
      v21[2] = v27 + 1;
      v21[v27 + 4] = v25;
      v17 = v41;
    }

    while (v18 != v20);

    v28 = v21[2];
    if (!v28)
    {
      goto LABEL_15;
    }
  }

  else
  {

    v21 = _swiftEmptyArrayStorage;
    v28 = _swiftEmptyArrayStorage[2];
    if (!v28)
    {
LABEL_15:
      v29 = 0;
LABEL_16:

      v47 = v29;
      v33._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v33);

      v34._countAndFlagsBits = 0x736F746F687020;
      v34._object = 0xE700000000000000;
      String.append(_:)(v34);

      return v45;
    }
  }

  v29 = 0;
  v30 = v21 + 4;
  while (1)
  {
    v31 = *v30++;
    v32 = __OFADD__(v29, v31);
    v29 = (v29 + v31);
    if (v32)
    {
      break;
    }

    if (!--v28)
    {
      goto LABEL_16;
    }
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000E1360(uint64_t a1)
{
  v2 = sub_10000560C(&qword_100129F70, &qword_100108D90);
  v3 = *(v2 - 8);
  v35 = v2;
  v36 = v3;
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v34 = v32 - v5;
  type metadata accessor for CommunicationActor();
  v6 = static CommunicationActor.shared.getter();
  sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v32[1] = v6;
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = type metadata accessor for AlbumID();
  sub_1000FAACC(&qword_10012A0A0, &type metadata accessor for AlbumID);
  v38 = dispatch thunk of CustomStringConvertible.description.getter();
  v39 = v8;
  v9._countAndFlagsBits = 8250;
  v9._object = 0xE200000000000000;
  String.append(_:)(v9);
  v10 = sub_10000560C(&qword_10012B598, &qword_10010A8D8);
  v11 = *(a1 + *(v10 + 48));
  __chkstk_darwin(v10);
  v32[-6] = v7;
  v32[-5] = type metadata accessor for AlbumProvider();
  v32[-4] = type metadata accessor for AlbumDatabase();
  v32[-3] = sub_1000FAACC(&qword_10012B5C0, type metadata accessor for AlbumProvider);
  v32[-2] = sub_1000FAACC(&qword_10012A490, &type metadata accessor for AlbumDatabase);
  KeyPath = swift_getKeyPath();
  v13 = *(v11 + 16);
  if (v13)
  {
    v40 = _swiftEmptyArrayStorage;
    result = sub_10005C5B0(0, v13, 0);
    v15 = 0;
    v16 = v40;
    v33 = v11 + ((*(v36 + 80) + 32) & ~*(v36 + 80));
    v32[3] = v36 + 8;
    v32[4] = v36 + 16;
    do
    {
      if (v15 >= *(v11 + 16))
      {
        __break(1u);
        goto LABEL_18;
      }

      v17 = v11;
      v18 = v35;
      v19 = v36;
      v20 = v34;
      (*(v36 + 16))(v34, v33 + *(v36 + 72) * v15, v35);
      v21 = KeyPath;
      swift_getAtKeyPath();
      v22 = v37;
      result = (*(v19 + 8))(v20, v18);
      v40 = v16;
      v24 = v16[2];
      v23 = v16[3];
      if (v24 >= v23 >> 1)
      {
        result = sub_10005C5B0((v23 > 1), v24 + 1, 1);
        v16 = v40;
      }

      ++v15;
      v16[2] = v24 + 1;
      v16[v24 + 4] = v22;
      v11 = v17;
      KeyPath = v21;
    }

    while (v13 != v15);

    v25 = v16[2];
    if (!v25)
    {
      goto LABEL_15;
    }
  }

  else
  {

    v16 = _swiftEmptyArrayStorage;
    v25 = _swiftEmptyArrayStorage[2];
    if (!v25)
    {
LABEL_15:
      v26 = 0;
LABEL_16:

      v40 = v26;
      v30._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v30);

      v31._countAndFlagsBits = 0x736F746F687020;
      v31._object = 0xE700000000000000;
      String.append(_:)(v31);

      return v38;
    }
  }

  v26 = 0;
  v27 = v16 + 4;
  while (1)
  {
    v28 = *v27++;
    v29 = __OFADD__(v26, v28);
    v26 = (v26 + v28);
    if (v29)
    {
      break;
    }

    if (!--v25)
    {
      goto LABEL_16;
    }
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000E17D0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = a1 + a2;
  v6 = *(a1 + a2 - 40);
  v5 = *(a1 + a2 - 32);
  v7 = *(v4 - 16);
  swift_getAssociatedConformanceWitness();
  type metadata accessor for SyncedPhotosFace();
  result = SyncedPhotosFace.photos.getter();
  *a3 = result;
  return result;
}

uint64_t sub_1000E1838@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = a1 + a2;
  v6 = *(a1 + a2 - 40);
  v5 = *(a1 + a2 - 32);
  v7 = *(v4 - 16);
  swift_getAssociatedConformanceWitness();
  type metadata accessor for SyncedPhotosFace();
  result = SyncedPhotosFace.contentDescription.getter();
  *a3 = result;
  a3[1] = v9;
  return result;
}

uint64_t sub_1000E18A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = sub_10000560C(&qword_100129F30, &qword_100108D20);
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();
  v7 = type metadata accessor for ShuffleID();
  v3[11] = v7;
  v8 = *(v7 - 8);
  v3[12] = v8;
  v9 = *(v8 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v3[16] = v10;
  v11 = *(v10 - 8);
  v3[17] = v11;
  v12 = *(v11 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v13 = type metadata accessor for UUID();
  v3[20] = v13;
  v14 = *(v13 - 8);
  v3[21] = v14;
  v15 = *(v14 + 64) + 15;
  v3[22] = swift_task_alloc();

  return _swift_task_switch(sub_1000E1AA8, 0, 0);
}

uint64_t sub_1000E1AA8()
{
  v1 = v0[22];
  v2 = v0[11];
  v3 = v0[5];
  v4 = v0[6];
  sub_1000FAACC(&qword_10012A2B0, &type metadata accessor for ShuffleID);
  dispatch thunk of PhotosFaceID.id.getter();
  v5 = type metadata accessor for GalleryDatabase();
  v0[23] = v5;
  v6 = sub_1000FAACC(&qword_10012A3D0, &type metadata accessor for GalleryDatabase);
  v7 = async function pointer to dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryByDay(id:)[1];
  v8 = swift_task_alloc();
  v0[24] = v8;
  *v8 = v0;
  v8[1] = sub_1000E1BEC;
  v9 = v0[22];

  return dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryByDay(id:)(v9, v5, v6);
}

uint64_t sub_1000E1BEC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 192);
  v5 = *(*v2 + 176);
  v6 = *(*v2 + 168);
  v7 = *(*v2 + 160);
  v10 = *v2;
  *(v3 + 200) = a1;
  *(v3 + 208) = v1;

  (*(v6 + 8))(v5, v7);
  if (v1)
  {
    v8 = sub_1000FBF00;
  }

  else
  {
    v8 = sub_1000E1D60;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1000E1D60()
{
  v41 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 152);
  v3 = *(v0 + 120);
  v4 = *(v0 + 88);
  v5 = *(v0 + 96);
  v6 = *(v0 + 40);
  static Log.photos.getter();
  v7 = *(v5 + 16);
  *(v0 + 216) = v7;
  *(v0 + 224) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v3, v6, v4);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 200);
  v12 = *(v0 + 152);
  v14 = *(v0 + 128);
  v13 = *(v0 + 136);
  v15 = *(v0 + 120);
  if (v10)
  {
    log = v8;
    v38 = *(v0 + 128);
    v16 = *(v0 + 112);
    v39 = *(v0 + 152);
    v18 = *(v0 + 88);
    v17 = *(v0 + 96);
    v36 = v9;
    v19 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v40 = v35;
    *v19 = 134218242;
    *(v19 + 4) = *(v11 + 16);

    *(v19 + 12) = 2080;
    v7(v16, v15, v18);
    v20 = *(v17 + 8);
    v20(v15, v18);
    sub_1000FAACC(&qword_10012A2F0, &type metadata accessor for ShuffleID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    v20(v16, v18);
    v24 = sub_100102F80(v21, v23, &v40);

    *(v19 + 14) = v24;
    _os_log_impl(&_mh_execute_header, log, v36, "Found %ld days for face %s", v19, 0x16u);
    sub_10000C304(v35);

    v25 = *(v13 + 8);
    v25(v39, v38);
  }

  else
  {
    v20 = *(*(v0 + 96) + 8);
    v20(*(v0 + 120), *(v0 + 88));

    v25 = *(v13 + 8);
    v25(v12, v14);
  }

  *(v0 + 232) = v25;
  *(v0 + 240) = v20;
  v26 = *(v0 + 56);
  *(v0 + 32) = *(v0 + 200);
  v27 = swift_task_alloc();
  *(v0 + 248) = v27;
  v27[1] = vextq_s8(*(v0 + 40), *(v0 + 40), 8uLL);
  v27[2].i64[0] = v26;
  v28 = swift_task_alloc();
  *(v0 + 256) = v28;
  *(v28 + 16) = &unk_10010A420;
  *(v28 + 24) = v27;
  v29 = async function pointer to Sequence.asyncMap<A>(predicate:)[1];
  v30 = swift_task_alloc();
  *(v0 + 264) = v30;
  v31 = sub_10000560C(&qword_10012A410, &qword_1001091A0);
  v32 = sub_10000CC24(&qword_10012A418, &qword_10012A410, &qword_1001091A0);
  *v30 = v0;
  v30[1] = sub_1000E2104;
  v33 = *(v0 + 64);

  return Sequence.asyncMap<A>(predicate:)(&unk_10010A430, v28, v31, v33, v32);
}

uint64_t sub_1000E2104(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 264);
  v10 = *v2;
  v3[34] = a1;
  v3[35] = v1;

  if (v1)
  {
    v5 = sub_1000FBE84;
  }

  else
  {
    v7 = v3[31];
    v6 = v3[32];
    v8 = v3[25];

    v5 = sub_1000E223C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000E223C()
{
  v85 = v0;
  v1 = v0[34];
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[18];
  v5 = v0[13];
  v6 = v0[11];
  v8 = v0[5];
  v7 = v0[6];
  static Log.session.getter();
  v3(v5, v8, v6);
  swift_bridgeObjectRetain_n();

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[34];
  v81 = v0[30];
  if (v11)
  {
    v73 = v10;
    log = v9;
    v75 = v0[27];
    v77 = v0[28];
    v79 = v0[23];
    v14 = v0[13];
    v13 = v0[14];
    v16 = v0[11];
    v15 = v0[12];
    v17 = v0[6];
    v18 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    *v18 = 136315650;
    v19 = *(v17 + 16);
    v20 = PhotosFaceType.description.getter();
    v22 = v21;

    v23 = sub_100102F80(v20, v22, &v83);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2080;
    v75(v13, v14, v16);
    v81(v14, v16);
    sub_1000FAACC(&qword_10012A2F0, &type metadata accessor for ShuffleID);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    v81(v13, v16);
    v27 = sub_100102F80(v24, v26, &v83);

    *(v18 + 14) = v27;
    buf = v18;
    *(v18 + 22) = 2080;
    v28 = swift_task_alloc();
    *v28 = v16;
    v28[1] = type metadata accessor for ShuffleProvider();
    v28[2] = v79;
    v28[3] = sub_1000FAACC(&qword_10012B4C0, type metadata accessor for ShuffleProvider);
    v28[4] = sub_1000FAACC(&qword_10012A438, &type metadata accessor for GalleryDatabase);
    KeyPath = swift_getKeyPath();

    v30 = *(v12 + 16);
    v31 = v0[34];
    if (v30)
    {
      v82 = v0;
      v32 = v0[9];
      v84 = _swiftEmptyArrayStorage;
      sub_10005C54C(0, v30, 0);
      v33 = v84;
      v34 = *(v32 + 16);
      v32 += 16;
      v35 = v31 + ((*(v32 + 64) + 32) & ~*(v32 + 64));
      v76 = *(v32 + 56);
      v78 = v34;
      v36 = (v32 - 8);
      do
      {
        v37 = v82[10];
        v38 = v82[8];
        v78(v37, v35, v38);
        v39 = KeyPath;
        swift_getAtKeyPath();
        v40 = v82[2];
        v41 = v82[3];
        (*v36)(v37, v38);
        v84 = v33;
        v43 = v33[2];
        v42 = v33[3];
        if (v43 >= v42 >> 1)
        {
          sub_10005C54C((v42 > 1), v43 + 1, 1);
          v33 = v84;
        }

        v33[2] = v43 + 1;
        v44 = &v33[2 * v43];
        v44[4] = v40;
        v44[5] = v41;
        v35 += v76;
        --v30;
        KeyPath = v39;
      }

      while (v30);
      v0 = v82;
      v52 = v82[34];
    }

    else
    {
    }

    v53 = v0[34];
    v54 = v0[29];
    v55 = v0[17];
    v56 = v0[18];
    v57 = v0[16];
    v58 = Array.description.getter();
    v60 = v59;

    v61 = sub_100102F80(v58, v60, &v83);

    *(buf + 3) = v61;
    _os_log_impl(&_mh_execute_header, log, v73, "  %s %s: %s", buf, 0x20u);
    swift_arrayDestroy();

    v54(v56, v57);
  }

  else
  {
    v80 = v0[29];
    v46 = v0[17];
    v45 = v0[18];
    v47 = v0[16];
    v49 = v0[12];
    v48 = v0[13];
    v50 = v0[11];
    v51 = v0[6];

    v81(v48, v50);

    v80(v45, v47);
  }

  v62 = v0[22];
  v63 = v0[18];
  v64 = v0[19];
  v66 = v0[14];
  v65 = v0[15];
  v67 = v0[13];
  v68 = v0[10];

  v69 = v0[1];
  v70 = v0[34];

  return v69(v70);
}

uint64_t sub_1000E27FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = sub_10000560C(&qword_100129F60, &qword_100108D78);
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();
  v7 = type metadata accessor for DailyID();
  v3[11] = v7;
  v8 = *(v7 - 8);
  v3[12] = v8;
  v9 = *(v8 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v3[16] = v10;
  v11 = *(v10 - 8);
  v3[17] = v11;
  v12 = *(v11 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v13 = type metadata accessor for UUID();
  v3[20] = v13;
  v14 = *(v13 - 8);
  v3[21] = v14;
  v15 = *(v14 + 64) + 15;
  v3[22] = swift_task_alloc();

  return _swift_task_switch(sub_1000E2A04, 0, 0);
}

uint64_t sub_1000E2A04()
{
  v1 = v0[22];
  v2 = v0[11];
  v3 = v0[5];
  v4 = v0[6];
  sub_1000FAACC(&qword_10012A178, &type metadata accessor for DailyID);
  dispatch thunk of PhotosFaceID.id.getter();
  v5 = type metadata accessor for DailyDatabase();
  v0[23] = v5;
  v6 = sub_1000FAACC(&qword_10012A468, &type metadata accessor for DailyDatabase);
  v7 = async function pointer to dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryByDay(id:)[1];
  v8 = swift_task_alloc();
  v0[24] = v8;
  *v8 = v0;
  v8[1] = sub_1000E2B48;
  v9 = v0[22];

  return dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryByDay(id:)(v9, v5, v6);
}

uint64_t sub_1000E2B48(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 192);
  v5 = *(*v2 + 176);
  v6 = *(*v2 + 168);
  v7 = *(*v2 + 160);
  v10 = *v2;
  *(v3 + 200) = a1;
  *(v3 + 208) = v1;

  (*(v6 + 8))(v5, v7);
  if (v1)
  {
    v8 = sub_1000FBF00;
  }

  else
  {
    v8 = sub_1000E2CBC;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1000E2CBC()
{
  v41 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 152);
  v3 = *(v0 + 120);
  v4 = *(v0 + 88);
  v5 = *(v0 + 96);
  v6 = *(v0 + 40);
  static Log.photos.getter();
  v7 = *(v5 + 16);
  *(v0 + 216) = v7;
  *(v0 + 224) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v3, v6, v4);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 200);
  v12 = *(v0 + 152);
  v14 = *(v0 + 128);
  v13 = *(v0 + 136);
  v15 = *(v0 + 120);
  if (v10)
  {
    log = v8;
    v38 = *(v0 + 128);
    v16 = *(v0 + 112);
    v39 = *(v0 + 152);
    v18 = *(v0 + 88);
    v17 = *(v0 + 96);
    v36 = v9;
    v19 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v40 = v35;
    *v19 = 134218242;
    *(v19 + 4) = *(v11 + 16);

    *(v19 + 12) = 2080;
    v7(v16, v15, v18);
    v20 = *(v17 + 8);
    v20(v15, v18);
    sub_1000FAACC(&qword_10012A1E0, &type metadata accessor for DailyID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    v20(v16, v18);
    v24 = sub_100102F80(v21, v23, &v40);

    *(v19 + 14) = v24;
    _os_log_impl(&_mh_execute_header, log, v36, "Found %ld days for face %s", v19, 0x16u);
    sub_10000C304(v35);

    v25 = *(v13 + 8);
    v25(v39, v38);
  }

  else
  {
    v20 = *(*(v0 + 96) + 8);
    v20(*(v0 + 120), *(v0 + 88));

    v25 = *(v13 + 8);
    v25(v12, v14);
  }

  *(v0 + 232) = v25;
  *(v0 + 240) = v20;
  v26 = *(v0 + 56);
  *(v0 + 32) = *(v0 + 200);
  v27 = swift_task_alloc();
  *(v0 + 248) = v27;
  v27[1] = vextq_s8(*(v0 + 40), *(v0 + 40), 8uLL);
  v27[2].i64[0] = v26;
  v28 = swift_task_alloc();
  *(v0 + 256) = v28;
  *(v28 + 16) = &unk_10010A608;
  *(v28 + 24) = v27;
  v29 = async function pointer to Sequence.asyncMap<A>(predicate:)[1];
  v30 = swift_task_alloc();
  *(v0 + 264) = v30;
  v31 = sub_10000560C(&qword_10012A410, &qword_1001091A0);
  v32 = sub_10000CC24(&qword_10012A418, &qword_10012A410, &qword_1001091A0);
  *v30 = v0;
  v30[1] = sub_1000E3060;
  v33 = *(v0 + 64);

  return Sequence.asyncMap<A>(predicate:)(&unk_10010A618, v28, v31, v33, v32);
}

uint64_t sub_1000E3060(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 264);
  v10 = *v2;
  v3[34] = a1;
  v3[35] = v1;

  if (v1)
  {
    v5 = sub_1000FBE84;
  }

  else
  {
    v7 = v3[31];
    v6 = v3[32];
    v8 = v3[25];

    v5 = sub_1000E3198;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000E3198()
{
  v85 = v0;
  v1 = v0[34];
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[18];
  v5 = v0[13];
  v6 = v0[11];
  v8 = v0[5];
  v7 = v0[6];
  static Log.session.getter();
  v3(v5, v8, v6);
  swift_bridgeObjectRetain_n();

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[34];
  v81 = v0[30];
  if (v11)
  {
    v73 = v10;
    log = v9;
    v75 = v0[27];
    v77 = v0[28];
    v79 = v0[23];
    v14 = v0[13];
    v13 = v0[14];
    v16 = v0[11];
    v15 = v0[12];
    v17 = v0[6];
    v18 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    *v18 = 136315650;
    v19 = *(v17 + 16);
    v20 = PhotosFaceType.description.getter();
    v22 = v21;

    v23 = sub_100102F80(v20, v22, &v83);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2080;
    v75(v13, v14, v16);
    v81(v14, v16);
    sub_1000FAACC(&qword_10012A1E0, &type metadata accessor for DailyID);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    v81(v13, v16);
    v27 = sub_100102F80(v24, v26, &v83);

    *(v18 + 14) = v27;
    buf = v18;
    *(v18 + 22) = 2080;
    v28 = swift_task_alloc();
    *v28 = v16;
    v28[1] = type metadata accessor for DailyProvider();
    v28[2] = v79;
    v28[3] = sub_1000FAACC(&qword_10012A1D0, type metadata accessor for DailyProvider);
    v28[4] = sub_1000FAACC(&qword_10012A470, &type metadata accessor for DailyDatabase);
    KeyPath = swift_getKeyPath();

    v30 = *(v12 + 16);
    v31 = v0[34];
    if (v30)
    {
      v82 = v0;
      v32 = v0[9];
      v84 = _swiftEmptyArrayStorage;
      sub_10005C54C(0, v30, 0);
      v33 = v84;
      v34 = *(v32 + 16);
      v32 += 16;
      v35 = v31 + ((*(v32 + 64) + 32) & ~*(v32 + 64));
      v76 = *(v32 + 56);
      v78 = v34;
      v36 = (v32 - 8);
      do
      {
        v37 = v82[10];
        v38 = v82[8];
        v78(v37, v35, v38);
        v39 = KeyPath;
        swift_getAtKeyPath();
        v40 = v82[2];
        v41 = v82[3];
        (*v36)(v37, v38);
        v84 = v33;
        v43 = v33[2];
        v42 = v33[3];
        if (v43 >= v42 >> 1)
        {
          sub_10005C54C((v42 > 1), v43 + 1, 1);
          v33 = v84;
        }

        v33[2] = v43 + 1;
        v44 = &v33[2 * v43];
        v44[4] = v40;
        v44[5] = v41;
        v35 += v76;
        --v30;
        KeyPath = v39;
      }

      while (v30);
      v0 = v82;
      v52 = v82[34];
    }

    else
    {
    }

    v53 = v0[34];
    v54 = v0[29];
    v55 = v0[17];
    v56 = v0[18];
    v57 = v0[16];
    v58 = Array.description.getter();
    v60 = v59;

    v61 = sub_100102F80(v58, v60, &v83);

    *(buf + 3) = v61;
    _os_log_impl(&_mh_execute_header, log, v73, "  %s %s: %s", buf, 0x20u);
    swift_arrayDestroy();

    v54(v56, v57);
  }

  else
  {
    v80 = v0[29];
    v46 = v0[17];
    v45 = v0[18];
    v47 = v0[16];
    v49 = v0[12];
    v48 = v0[13];
    v50 = v0[11];
    v51 = v0[6];

    v81(v48, v50);

    v80(v45, v47);
  }

  v62 = v0[22];
  v63 = v0[18];
  v64 = v0[19];
  v66 = v0[14];
  v65 = v0[15];
  v67 = v0[13];
  v68 = v0[10];

  v69 = v0[1];
  v70 = v0[34];

  return v69(v70);
}

uint64_t sub_1000E3758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = sub_10000560C(&qword_100129F30, &qword_100108D20);
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();
  v7 = type metadata accessor for ShuffleID();
  v3[11] = v7;
  v8 = *(v7 - 8);
  v3[12] = v8;
  v9 = *(v8 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v3[16] = v10;
  v11 = *(v10 - 8);
  v3[17] = v11;
  v12 = *(v11 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v13 = type metadata accessor for UUID();
  v3[20] = v13;
  v14 = *(v13 - 8);
  v3[21] = v14;
  v15 = *(v14 + 64) + 15;
  v3[22] = swift_task_alloc();

  return _swift_task_switch(sub_1000E3960, 0, 0);
}

uint64_t sub_1000E3960()
{
  v1 = v0[22];
  v2 = v0[11];
  v3 = v0[5];
  v4 = v0[6];
  sub_1000FAACC(&qword_10012A2B0, &type metadata accessor for ShuffleID);
  dispatch thunk of PhotosFaceID.id.getter();
  v5 = type metadata accessor for ShuffleDatabase();
  v0[23] = v5;
  v6 = sub_1000FAACC(&qword_10012A478, &type metadata accessor for ShuffleDatabase);
  v7 = async function pointer to dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryByDay(id:)[1];
  v8 = swift_task_alloc();
  v0[24] = v8;
  *v8 = v0;
  v8[1] = sub_1000E3AA4;
  v9 = v0[22];

  return dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryByDay(id:)(v9, v5, v6);
}

uint64_t sub_1000E3AA4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 192);
  v5 = *(*v2 + 176);
  v6 = *(*v2 + 168);
  v7 = *(*v2 + 160);
  v10 = *v2;
  *(v3 + 200) = a1;
  *(v3 + 208) = v1;

  (*(v6 + 8))(v5, v7);
  if (v1)
  {
    v8 = sub_1000FBF00;
  }

  else
  {
    v8 = sub_1000E3C18;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1000E3C18()
{
  v41 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 152);
  v3 = *(v0 + 120);
  v4 = *(v0 + 88);
  v5 = *(v0 + 96);
  v6 = *(v0 + 40);
  static Log.photos.getter();
  v7 = *(v5 + 16);
  *(v0 + 216) = v7;
  *(v0 + 224) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v3, v6, v4);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 200);
  v12 = *(v0 + 152);
  v14 = *(v0 + 128);
  v13 = *(v0 + 136);
  v15 = *(v0 + 120);
  if (v10)
  {
    log = v8;
    v38 = *(v0 + 128);
    v16 = *(v0 + 112);
    v39 = *(v0 + 152);
    v18 = *(v0 + 88);
    v17 = *(v0 + 96);
    v36 = v9;
    v19 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v40 = v35;
    *v19 = 134218242;
    *(v19 + 4) = *(v11 + 16);

    *(v19 + 12) = 2080;
    v7(v16, v15, v18);
    v20 = *(v17 + 8);
    v20(v15, v18);
    sub_1000FAACC(&qword_10012A2F0, &type metadata accessor for ShuffleID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    v20(v16, v18);
    v24 = sub_100102F80(v21, v23, &v40);

    *(v19 + 14) = v24;
    _os_log_impl(&_mh_execute_header, log, v36, "Found %ld days for face %s", v19, 0x16u);
    sub_10000C304(v35);

    v25 = *(v13 + 8);
    v25(v39, v38);
  }

  else
  {
    v20 = *(*(v0 + 96) + 8);
    v20(*(v0 + 120), *(v0 + 88));

    v25 = *(v13 + 8);
    v25(v12, v14);
  }

  *(v0 + 232) = v25;
  *(v0 + 240) = v20;
  v26 = *(v0 + 56);
  *(v0 + 32) = *(v0 + 200);
  v27 = swift_task_alloc();
  *(v0 + 248) = v27;
  v27[1] = vextq_s8(*(v0 + 40), *(v0 + 40), 8uLL);
  v27[2].i64[0] = v26;
  v28 = swift_task_alloc();
  *(v0 + 256) = v28;
  *(v28 + 16) = &unk_10010A788;
  *(v28 + 24) = v27;
  v29 = async function pointer to Sequence.asyncMap<A>(predicate:)[1];
  v30 = swift_task_alloc();
  *(v0 + 264) = v30;
  v31 = sub_10000560C(&qword_10012A410, &qword_1001091A0);
  v32 = sub_10000CC24(&qword_10012A418, &qword_10012A410, &qword_1001091A0);
  *v30 = v0;
  v30[1] = sub_1000E3FBC;
  v33 = *(v0 + 64);

  return Sequence.asyncMap<A>(predicate:)(&unk_10010A798, v28, v31, v33, v32);
}

uint64_t sub_1000E3FBC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 264);
  v10 = *v2;
  v3[34] = a1;
  v3[35] = v1;

  if (v1)
  {
    v5 = sub_1000FBE84;
  }

  else
  {
    v7 = v3[31];
    v6 = v3[32];
    v8 = v3[25];

    v5 = sub_1000E40F4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000E40F4()
{
  v85 = v0;
  v1 = v0[34];
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[18];
  v5 = v0[13];
  v6 = v0[11];
  v8 = v0[5];
  v7 = v0[6];
  static Log.session.getter();
  v3(v5, v8, v6);
  swift_bridgeObjectRetain_n();

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[34];
  v81 = v0[30];
  if (v11)
  {
    v73 = v10;
    log = v9;
    v75 = v0[27];
    v77 = v0[28];
    v79 = v0[23];
    v14 = v0[13];
    v13 = v0[14];
    v16 = v0[11];
    v15 = v0[12];
    v17 = v0[6];
    v18 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    *v18 = 136315650;
    v19 = *(v17 + 16);
    v20 = PhotosFaceType.description.getter();
    v22 = v21;

    v23 = sub_100102F80(v20, v22, &v83);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2080;
    v75(v13, v14, v16);
    v81(v14, v16);
    sub_1000FAACC(&qword_10012A2F0, &type metadata accessor for ShuffleID);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    v81(v13, v16);
    v27 = sub_100102F80(v24, v26, &v83);

    *(v18 + 14) = v27;
    buf = v18;
    *(v18 + 22) = 2080;
    v28 = swift_task_alloc();
    *v28 = v16;
    v28[1] = type metadata accessor for ShuffleProvider();
    v28[2] = v79;
    v28[3] = sub_1000FAACC(&qword_10012B4C0, type metadata accessor for ShuffleProvider);
    v28[4] = sub_1000FAACC(&qword_10012A480, &type metadata accessor for ShuffleDatabase);
    KeyPath = swift_getKeyPath();

    v30 = *(v12 + 16);
    v31 = v0[34];
    if (v30)
    {
      v82 = v0;
      v32 = v0[9];
      v84 = _swiftEmptyArrayStorage;
      sub_10005C54C(0, v30, 0);
      v33 = v84;
      v34 = *(v32 + 16);
      v32 += 16;
      v35 = v31 + ((*(v32 + 64) + 32) & ~*(v32 + 64));
      v76 = *(v32 + 56);
      v78 = v34;
      v36 = (v32 - 8);
      do
      {
        v37 = v82[10];
        v38 = v82[8];
        v78(v37, v35, v38);
        v39 = KeyPath;
        swift_getAtKeyPath();
        v40 = v82[2];
        v41 = v82[3];
        (*v36)(v37, v38);
        v84 = v33;
        v43 = v33[2];
        v42 = v33[3];
        if (v43 >= v42 >> 1)
        {
          sub_10005C54C((v42 > 1), v43 + 1, 1);
          v33 = v84;
        }

        v33[2] = v43 + 1;
        v44 = &v33[2 * v43];
        v44[4] = v40;
        v44[5] = v41;
        v35 += v76;
        --v30;
        KeyPath = v39;
      }

      while (v30);
      v0 = v82;
      v52 = v82[34];
    }

    else
    {
    }

    v53 = v0[34];
    v54 = v0[29];
    v55 = v0[17];
    v56 = v0[18];
    v57 = v0[16];
    v58 = Array.description.getter();
    v60 = v59;

    v61 = sub_100102F80(v58, v60, &v83);

    *(buf + 3) = v61;
    _os_log_impl(&_mh_execute_header, log, v73, "  %s %s: %s", buf, 0x20u);
    swift_arrayDestroy();

    v54(v56, v57);
  }

  else
  {
    v80 = v0[29];
    v46 = v0[17];
    v45 = v0[18];
    v47 = v0[16];
    v49 = v0[12];
    v48 = v0[13];
    v50 = v0[11];
    v51 = v0[6];

    v81(v48, v50);

    v80(v45, v47);
  }

  v62 = v0[22];
  v63 = v0[18];
  v64 = v0[19];
  v66 = v0[14];
  v65 = v0[15];
  v67 = v0[13];
  v68 = v0[10];

  v69 = v0[1];
  v70 = v0[34];

  return v69(v70);
}

uint64_t sub_1000E46B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = sub_10000560C(&qword_100129F70, &qword_100108D90);
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();
  v7 = type metadata accessor for AlbumID();
  v3[11] = v7;
  v8 = *(v7 - 8);
  v3[12] = v8;
  v9 = *(v8 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v3[16] = v10;
  v11 = *(v10 - 8);
  v3[17] = v11;
  v12 = *(v11 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v13 = type metadata accessor for UUID();
  v3[20] = v13;
  v14 = *(v13 - 8);
  v3[21] = v14;
  v15 = *(v14 + 64) + 15;
  v3[22] = swift_task_alloc();

  return _swift_task_switch(sub_1000E48BC, 0, 0);
}

uint64_t sub_1000E48BC()
{
  v1 = v0[22];
  v2 = v0[11];
  v3 = v0[5];
  v4 = v0[6];
  sub_1000FAACC(&qword_10012A048, &type metadata accessor for AlbumID);
  dispatch thunk of PhotosFaceID.id.getter();
  v5 = type metadata accessor for AlbumDatabase();
  v0[23] = v5;
  v6 = sub_1000FAACC(&qword_10012A488, &type metadata accessor for AlbumDatabase);
  v7 = async function pointer to dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryByDay(id:)[1];
  v8 = swift_task_alloc();
  v0[24] = v8;
  *v8 = v0;
  v8[1] = sub_1000E4A00;
  v9 = v0[22];

  return dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryByDay(id:)(v9, v5, v6);
}

uint64_t sub_1000E4A00(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 192);
  v5 = *(*v2 + 176);
  v6 = *(*v2 + 168);
  v7 = *(*v2 + 160);
  v10 = *v2;
  *(v3 + 200) = a1;
  *(v3 + 208) = v1;

  (*(v6 + 8))(v5, v7);
  if (v1)
  {
    v8 = sub_1000E4F18;
  }

  else
  {
    v8 = sub_1000E4B74;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1000E4B74()
{
  v41 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 152);
  v3 = *(v0 + 120);
  v4 = *(v0 + 88);
  v5 = *(v0 + 96);
  v6 = *(v0 + 40);
  static Log.photos.getter();
  v7 = *(v5 + 16);
  *(v0 + 216) = v7;
  *(v0 + 224) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v3, v6, v4);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 200);
  v12 = *(v0 + 152);
  v14 = *(v0 + 128);
  v13 = *(v0 + 136);
  v15 = *(v0 + 120);
  if (v10)
  {
    log = v8;
    v38 = *(v0 + 128);
    v16 = *(v0 + 112);
    v39 = *(v0 + 152);
    v18 = *(v0 + 88);
    v17 = *(v0 + 96);
    v36 = v9;
    v19 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v40 = v35;
    *v19 = 134218242;
    *(v19 + 4) = *(v11 + 16);

    *(v19 + 12) = 2080;
    v7(v16, v15, v18);
    v20 = *(v17 + 8);
    v20(v15, v18);
    sub_1000FAACC(&qword_10012A0A0, &type metadata accessor for AlbumID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    v20(v16, v18);
    v24 = sub_100102F80(v21, v23, &v40);

    *(v19 + 14) = v24;
    _os_log_impl(&_mh_execute_header, log, v36, "Found %ld days for face %s", v19, 0x16u);
    sub_10000C304(v35);

    v25 = *(v13 + 8);
    v25(v39, v38);
  }

  else
  {
    v20 = *(*(v0 + 96) + 8);
    v20(*(v0 + 120), *(v0 + 88));

    v25 = *(v13 + 8);
    v25(v12, v14);
  }

  *(v0 + 232) = v25;
  *(v0 + 240) = v20;
  v26 = *(v0 + 56);
  *(v0 + 32) = *(v0 + 200);
  v27 = swift_task_alloc();
  *(v0 + 248) = v27;
  v27[1] = vextq_s8(*(v0 + 40), *(v0 + 40), 8uLL);
  v27[2].i64[0] = v26;
  v28 = swift_task_alloc();
  *(v0 + 256) = v28;
  *(v28 + 16) = &unk_10010A950;
  *(v28 + 24) = v27;
  v29 = async function pointer to Sequence.asyncMap<A>(predicate:)[1];
  v30 = swift_task_alloc();
  *(v0 + 264) = v30;
  v31 = sub_10000560C(&qword_10012A410, &qword_1001091A0);
  v32 = sub_10000CC24(&qword_10012A418, &qword_10012A410, &qword_1001091A0);
  *v30 = v0;
  v30[1] = sub_1000E4FD4;
  v33 = *(v0 + 64);

  return Sequence.asyncMap<A>(predicate:)(&unk_10010A960, v28, v31, v33, v32);
}

uint64_t sub_1000E4F18()
{
  v1 = v0[26];
  v2 = v0[22];
  v4 = v0[18];
  v3 = v0[19];
  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[13];
  v8 = v0[10];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000E4FD4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 264);
  v10 = *v2;
  v3[34] = a1;
  v3[35] = v1;

  if (v1)
  {
    v5 = sub_1000E56CC;
  }

  else
  {
    v7 = v3[31];
    v6 = v3[32];
    v8 = v3[25];

    v5 = sub_1000E510C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000E510C()
{
  v85 = v0;
  v1 = v0[34];
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[18];
  v5 = v0[13];
  v6 = v0[11];
  v8 = v0[5];
  v7 = v0[6];
  static Log.session.getter();
  v3(v5, v8, v6);
  swift_bridgeObjectRetain_n();

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[34];
  v81 = v0[30];
  if (v11)
  {
    v73 = v10;
    log = v9;
    v75 = v0[27];
    v77 = v0[28];
    v79 = v0[23];
    v14 = v0[13];
    v13 = v0[14];
    v16 = v0[11];
    v15 = v0[12];
    v17 = v0[6];
    v18 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    *v18 = 136315650;
    v19 = *(v17 + 16);
    v20 = PhotosFaceType.description.getter();
    v22 = v21;

    v23 = sub_100102F80(v20, v22, &v83);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2080;
    v75(v13, v14, v16);
    v81(v14, v16);
    sub_1000FAACC(&qword_10012A0A0, &type metadata accessor for AlbumID);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    v81(v13, v16);
    v27 = sub_100102F80(v24, v26, &v83);

    *(v18 + 14) = v27;
    buf = v18;
    *(v18 + 22) = 2080;
    v28 = swift_task_alloc();
    *v28 = v16;
    v28[1] = type metadata accessor for AlbumProvider();
    v28[2] = v79;
    v28[3] = sub_1000FAACC(&qword_10012B5C0, type metadata accessor for AlbumProvider);
    v28[4] = sub_1000FAACC(&qword_10012A490, &type metadata accessor for AlbumDatabase);
    KeyPath = swift_getKeyPath();

    v30 = *(v12 + 16);
    v31 = v0[34];
    if (v30)
    {
      v82 = v0;
      v32 = v0[9];
      v84 = _swiftEmptyArrayStorage;
      sub_10005C54C(0, v30, 0);
      v33 = v84;
      v34 = *(v32 + 16);
      v32 += 16;
      v35 = v31 + ((*(v32 + 64) + 32) & ~*(v32 + 64));
      v76 = *(v32 + 56);
      v78 = v34;
      v36 = (v32 - 8);
      do
      {
        v37 = v82[10];
        v38 = v82[8];
        v78(v37, v35, v38);
        v39 = KeyPath;
        swift_getAtKeyPath();
        v40 = v82[2];
        v41 = v82[3];
        (*v36)(v37, v38);
        v84 = v33;
        v43 = v33[2];
        v42 = v33[3];
        if (v43 >= v42 >> 1)
        {
          sub_10005C54C((v42 > 1), v43 + 1, 1);
          v33 = v84;
        }

        v33[2] = v43 + 1;
        v44 = &v33[2 * v43];
        v44[4] = v40;
        v44[5] = v41;
        v35 += v76;
        --v30;
        KeyPath = v39;
      }

      while (v30);
      v0 = v82;
      v52 = v82[34];
    }

    else
    {
    }

    v53 = v0[34];
    v54 = v0[29];
    v55 = v0[17];
    v56 = v0[18];
    v57 = v0[16];
    v58 = Array.description.getter();
    v60 = v59;

    v61 = sub_100102F80(v58, v60, &v83);

    *(buf + 3) = v61;
    _os_log_impl(&_mh_execute_header, log, v73, "  %s %s: %s", buf, 0x20u);
    swift_arrayDestroy();

    v54(v56, v57);
  }

  else
  {
    v80 = v0[29];
    v46 = v0[17];
    v45 = v0[18];
    v47 = v0[16];
    v49 = v0[12];
    v48 = v0[13];
    v50 = v0[11];
    v51 = v0[6];

    v81(v48, v50);

    v80(v45, v47);
  }

  v62 = v0[22];
  v63 = v0[18];
  v64 = v0[19];
  v66 = v0[14];
  v65 = v0[15];
  v67 = v0[13];
  v68 = v0[10];

  v69 = v0[1];
  v70 = v0[34];

  return v69(v70);
}

uint64_t sub_1000E56CC()
{
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[25];

  v4 = v0[35];
  v5 = v0[22];
  v7 = v0[18];
  v6 = v0[19];
  v9 = v0[14];
  v8 = v0[15];
  v10 = v0[13];
  v11 = v0[10];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000E57A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = type metadata accessor for UUID();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v10 = type metadata accessor for StoredPhoto();
  v6[15] = v10;
  v11 = *(v10 - 8);
  v6[16] = v11;
  v12 = *(v11 + 64) + 15;
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v13 = type metadata accessor for ShuffleID();
  v6[20] = v13;
  v14 = *(v13 - 8);
  v6[21] = v14;
  v15 = *(v14 + 64) + 15;
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v16 = type metadata accessor for Logger();
  v6[25] = v16;
  v17 = *(v16 - 8);
  v6[26] = v17;
  v18 = *(v17 + 64) + 15;
  v6[27] = swift_task_alloc();

  return _swift_task_switch(sub_1000E59E0, 0, 0);
}

uint64_t sub_1000E59E0()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = *(v1 + 104);
  v4 = *(v2 + 16);
  if (v4)
  {
    v19 = *(v1 + 104);
    v5 = v0[16];
    v6 = v0[9];
    sub_10005C508(0, v4, 0);
    v7 = *(v5 + 16);
    v5 += 16;
    v8 = v2 + ((*(v5 + 64) + 32) & ~*(v5 + 64));
    v20 = *(v5 + 56);
    v21 = v7;
    v9 = (v5 - 8);
    do
    {
      v10 = v0[18];
      v11 = v0[15];
      v12 = v0[10];
      v21(v10, v8, v11);
      StoredPhoto.localIdentifier.getter();
      (*v9)(v10, v11);
      v14 = _swiftEmptyArrayStorage[2];
      v13 = _swiftEmptyArrayStorage[3];
      if (v14 >= v13 >> 1)
      {
        sub_10005C508(v13 > 1, v14 + 1, 1);
      }

      v15 = v0[10];
      v16 = v0[8];
      _swiftEmptyArrayStorage[2] = v14 + 1;
      (*(v6 + 32))(_swiftEmptyArrayStorage + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v15, v16);
      v8 += v20;
      --v4;
    }

    while (v4);
  }

  v0[28] = _swiftEmptyArrayStorage;
  v17 = swift_task_alloc();
  v0[29] = v17;
  *v17 = v0;
  v17[1] = sub_1000E5BC4;

  return sub_100060270(_swiftEmptyArrayStorage);
}

uint64_t sub_1000E5BC4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 232);
  v9 = *v3;
  v4[30] = a1;
  v4[31] = a2;
  v4[32] = v2;

  if (v2)
  {
    v6 = sub_1000FBEF4;
  }

  else
  {
    v7 = v4[28];

    v6 = sub_1000FBF14;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000E5CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = type metadata accessor for UUID();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v10 = type metadata accessor for StoredPhoto();
  v6[15] = v10;
  v11 = *(v10 - 8);
  v6[16] = v11;
  v12 = *(v11 + 64) + 15;
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v13 = type metadata accessor for DailyID();
  v6[20] = v13;
  v14 = *(v13 - 8);
  v6[21] = v14;
  v15 = *(v14 + 64) + 15;
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v16 = type metadata accessor for Logger();
  v6[25] = v16;
  v17 = *(v16 - 8);
  v6[26] = v17;
  v18 = *(v17 + 64) + 15;
  v6[27] = swift_task_alloc();

  return _swift_task_switch(sub_1000E5F20, 0, 0);
}

uint64_t sub_1000E5F20()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = *(v1 + 104);
  v4 = *(v2 + 16);
  if (v4)
  {
    v19 = *(v1 + 104);
    v5 = v0[16];
    v6 = v0[9];
    sub_10005C508(0, v4, 0);
    v7 = *(v5 + 16);
    v5 += 16;
    v8 = v2 + ((*(v5 + 64) + 32) & ~*(v5 + 64));
    v20 = *(v5 + 56);
    v21 = v7;
    v9 = (v5 - 8);
    do
    {
      v10 = v0[18];
      v11 = v0[15];
      v12 = v0[10];
      v21(v10, v8, v11);
      StoredPhoto.localIdentifier.getter();
      (*v9)(v10, v11);
      v14 = _swiftEmptyArrayStorage[2];
      v13 = _swiftEmptyArrayStorage[3];
      if (v14 >= v13 >> 1)
      {
        sub_10005C508(v13 > 1, v14 + 1, 1);
      }

      v15 = v0[10];
      v16 = v0[8];
      _swiftEmptyArrayStorage[2] = v14 + 1;
      (*(v6 + 32))(_swiftEmptyArrayStorage + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v15, v16);
      v8 += v20;
      --v4;
    }

    while (v4);
  }

  v0[28] = _swiftEmptyArrayStorage;
  v17 = swift_task_alloc();
  v0[29] = v17;
  *v17 = v0;
  v17[1] = sub_1000E6104;

  return sub_100060270(_swiftEmptyArrayStorage);
}

uint64_t sub_1000E6104(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 232);
  v9 = *v3;
  v4[30] = a1;
  v4[31] = a2;
  v4[32] = v2;

  if (v2)
  {
    v6 = sub_1000FBEF4;
  }

  else
  {
    v7 = v4[28];

    v6 = sub_1000E6224;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000E6224()
{
  v146 = v0;
  v1 = v0[31];
  if (*(v1 + 16))
  {
    v2 = v0[27];
    v3 = v0[24];
    v4 = v0[20];
    v5 = v0[21];
    v6 = v0[6];
    static Log.photos.getter();
    v7 = *(v5 + 16);
    v7(v3, v6, v4);

    v8 = Logger.logObject.getter();
    v141 = static os_log_type_t.error.getter();
    v9 = os_log_type_enabled(v8, v141);
    v10 = v0[31];
    v11 = v0[26];
    v12 = v0[27];
    v13 = v0[24];
    v14 = v0[25];
    if (v9)
    {
      logb = v8;
      v132 = v0[26];
      v136 = v0[27];
      v15 = v0[21];
      v16 = v0[22];
      v17 = v0[20];
      v117 = v0[3];
      v120 = v0[8];
      v129 = v0[25];
      v18 = swift_slowAlloc();
      v145 = swift_slowAlloc();
      *v18 = 134218754;
      *(v18 + 4) = *(v1 + 16);

      *(v18 + 12) = 2048;
      *(v18 + 14) = v117;
      *(v18 + 22) = 2080;
      v7(v16, v13, v17);
      v19 = *(v15 + 8);
      v19(v13, v17);
      sub_1000FAACC(&qword_10012A1E0, &type metadata accessor for DailyID);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      v19(v16, v17);
      v23 = sub_100102F80(v20, v22, &v145);

      *(v18 + 24) = v23;
      *(v18 + 32) = 2080;
      v24 = Array.description.getter();
      v26 = v25;

      v27 = sub_100102F80(v24, v26, &v145);

      *(v18 + 34) = v27;
      _os_log_impl(&_mh_execute_header, logb, v141, "Ignoring %ld uncached photos on %ld for face %s: %s", v18, 0x2Au);
      swift_arrayDestroy();

      result = (*(v132 + 8))(v136, v129);
    }

    else
    {
      (*(v0[21] + 8))(v0[24], v0[20]);
      swift_bridgeObjectRelease_n();

      result = (*(v11 + 8))(v12, v14);
    }
  }

  else
  {
    v29 = v0[31];
  }

  v30 = v0[30];
  v115 = *(v30 + 16);
  if (v115)
  {
    v31 = 0;
    v32 = v0[16];
    v111 = v0[9];
    v142 = v0[7];
    v137 = v142 + 56;
    v33 = (v111 + 8);
    v110 = (v32 + 8);
    v112 = v32;
    v118 = (v32 + 32);
    v34 = _swiftEmptyArrayStorage;
    v113 = v0[30];
    do
    {
      if (v31 >= *(v30 + 16))
      {
        __break(1u);
        goto LABEL_47;
      }

      log = v31;
      v130 = v34;
      v37 = v0[14];
      v123 = (*(v112 + 80) + 32) & ~*(v112 + 80);
      v121 = *(v112 + 72);
      (*(v112 + 16))(v0[19], v0[30] + v123 + v121 * v31, v0[15]);
      StoredPhoto.localIdentifier.getter();
      if (*(v142 + 16) && (v38 = v0[14], v39 = v0[8], v40 = *(v142 + 40), sub_1000FAACC(&qword_10012A1F8, &type metadata accessor for UUID), v41 = dispatch thunk of Hashable._rawHashValue(seed:)(), v42 = -1 << *(v142 + 32), v43 = v41 & ~v42, ((*(v137 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) != 0))
      {
        v44 = ~v42;
        v45 = *(v111 + 72);
        v46 = *(v111 + 16);
        while (1)
        {
          v47 = v0[14];
          v48 = v0[11];
          v49 = v0[8];
          v46(v48, *(v142 + 48) + v43 * v45, v49);
          sub_1000FAACC(&qword_10012A660, &type metadata accessor for UUID);
          LOBYTE(v47) = dispatch thunk of static Equatable.== infix(_:_:)();
          v50 = *v33;
          (*v33)(v48, v49);
          if (v47)
          {
            break;
          }

          v43 = (v43 + 1) & v44;
          if (((*(v137 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
          {
            goto LABEL_16;
          }
        }

        v35 = v0[19];
        v36 = v0[15];
        v50(v0[14], v0[8]);
        result = (*v110)(v35, v36);
        v34 = v130;
      }

      else
      {
LABEL_16:
        v51 = v0[19];
        v52 = v0[17];
        v53 = v0[15];
        (*v33)(v0[14], v0[8]);
        v54 = *v118;
        (*v118)(v52, v51, v53);
        v34 = v130;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v145 = v130;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10005C5D0(0, v130[2] + 1, 1);
          v34 = v145;
        }

        v57 = v34[2];
        v56 = v34[3];
        if (v57 >= v56 >> 1)
        {
          sub_10005C5D0(v56 > 1, v57 + 1, 1);
          v34 = v145;
        }

        v58 = v0[17];
        v59 = v0[15];
        v34[2] = v57 + 1;
        result = v54(v34 + v123 + v57 * v121, v58, v59);
      }

      v30 = v113;
      v31 = (&log->isa + 1);
    }

    while ((&log->isa + 1) != v115);
    v60 = *(v113 + 16);
    v61 = v0[30];
    if (!v60)
    {
      goto LABEL_28;
    }

    v131 = v34;
    v62 = v0[16];
    v63 = v0[9];
    v145 = _swiftEmptyArrayStorage;
    sub_10005C508(0, v60, 0);
    v64 = v145;
    v65 = *(v62 + 16);
    v62 += 16;
    v66 = v61 + ((*(v62 + 64) + 32) & ~*(v62 + 64));
    v133 = *(v62 + 56);
    v138 = v65;
    v67 = (v62 - 8);
    do
    {
      v68 = v0[18];
      v69 = v0[15];
      v70 = v0[12];
      v138(v68, v66, v69);
      StoredPhoto.localIdentifier.getter();
      (*v67)(v68, v69);
      v145 = v64;
      v72 = v64[2];
      v71 = v64[3];
      if (v72 >= v71 >> 1)
      {
        sub_10005C508(v71 > 1, v72 + 1, 1);
        v64 = v145;
      }

      v73 = v0[12];
      v74 = v0[8];
      v64[2] = v72 + 1;
      (*(v63 + 32))(v64 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v72, v73, v74);
      v66 += v133;
      --v60;
    }

    while (v60);
    v75 = v0[30];

    v34 = v131;
  }

  else
  {
    v34 = _swiftEmptyArrayStorage;
LABEL_28:

    v64 = _swiftEmptyArrayStorage;
  }

  v76 = v0[7];

  v77 = sub_1000F3E6C(v64, v76);

  v78 = v34[2];
  v79 = _swiftEmptyArrayStorage;
  if (v78)
  {
    loga = v77;
    v80 = v0[16];
    v81 = v0[9];
    v145 = _swiftEmptyArrayStorage;
    sub_10005C508(0, v78, 0);
    v79 = v145;
    v82 = *(v80 + 16);
    v80 += 16;
    v83 = v34 + ((*(v80 + 64) + 32) & ~*(v80 + 64));
    v134 = *(v80 + 56);
    v139 = v82;
    v84 = (v80 - 8);
    do
    {
      v85 = v0[18];
      v86 = v0[15];
      v87 = v0[13];
      v139(v85, v83, v86);
      StoredPhoto.localIdentifier.getter();
      (*v84)(v85, v86);
      v145 = v79;
      v89 = v79[2];
      v88 = v79[3];
      if (v89 >= v88 >> 1)
      {
        sub_10005C508(v88 > 1, v89 + 1, 1);
        v79 = v145;
      }

      v90 = v0[13];
      v91 = v0[8];
      v79[2] = v89 + 1;
      (*(v81 + 32))(v79 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v89, v90, v91);
      v83 += v134;
      --v78;
    }

    while (v78);
    v77 = loga;
  }

  v92 = *(v77 + 16);
  if (v92)
  {
    v93 = v0[9];
    v94 = sub_10006465C(*(v77 + 16), 0);
    v143 = sub_10006BA60(&v145, &v94[(*(v93 + 80) + 32) & ~*(v93 + 80)], v92, v77);

    result = sub_100010E54();
    if (v143 != v92)
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }
  }

  else
  {
    v94 = _swiftEmptyArrayStorage;
  }

  v95 = v0[23];
  v96 = v0[20];
  v97 = v0[21];
  v98 = v0[6];
  v145 = v79;
  sub_1000847B0(v94);
  sub_1000FAACC(&qword_10012A178, &type metadata accessor for DailyID);
  static SyncedPhotosFace.faceChecksum(for:)();

  (*(v97 + 16))(v95, v98, v96);
  v99 = *(v77 + 16);
  if (v99)
  {
    v100 = v0[9];
    v101 = sub_10006465C(*(v77 + 16), 0);
    v102 = sub_10006BA60(&v145, &v101[(*(v100 + 80) + 32) & ~*(v100 + 80)], v99, v77);
    result = sub_100010E54();
    if (v102 == v99)
    {
      goto LABEL_43;
    }

LABEL_48:
    __break(1u);
    return result;
  }

LABEL_43:
  v103 = v0[27];
  v105 = v0[23];
  v104 = v0[24];
  v106 = v0[20];
  v114 = v0[22];
  v116 = v0[19];
  v119 = v0[18];
  v122 = v0[17];
  v124 = v0[14];
  logc = v0[13];
  v135 = v0[12];
  v140 = v0[11];
  v144 = v0[10];
  v107 = v0[2];
  v108 = v0[3];
  default argument 4 of SyncedPhotosFace.init(id:day:uncached:cached:complete:checksum:)();
  SyncedPhotosFace.init(id:day:uncached:cached:complete:checksum:)();

  v109 = v0[1];

  return v109();
}

uint64_t sub_1000E6D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = type metadata accessor for UUID();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v10 = type metadata accessor for StoredPhoto();
  v6[15] = v10;
  v11 = *(v10 - 8);
  v6[16] = v11;
  v12 = *(v11 + 64) + 15;
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v13 = type metadata accessor for ShuffleID();
  v6[20] = v13;
  v14 = *(v13 - 8);
  v6[21] = v14;
  v15 = *(v14 + 64) + 15;
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v16 = type metadata accessor for Logger();
  v6[25] = v16;
  v17 = *(v16 - 8);
  v6[26] = v17;
  v18 = *(v17 + 64) + 15;
  v6[27] = swift_task_alloc();

  return _swift_task_switch(sub_1000E6FC4, 0, 0);
}

uint64_t sub_1000E6FC4()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = *(v1 + 104);
  v4 = *(v2 + 16);
  if (v4)
  {
    v19 = *(v1 + 104);
    v5 = v0[16];
    v6 = v0[9];
    sub_10005C508(0, v4, 0);
    v7 = *(v5 + 16);
    v5 += 16;
    v8 = v2 + ((*(v5 + 64) + 32) & ~*(v5 + 64));
    v20 = *(v5 + 56);
    v21 = v7;
    v9 = (v5 - 8);
    do
    {
      v10 = v0[18];
      v11 = v0[15];
      v12 = v0[10];
      v21(v10, v8, v11);
      StoredPhoto.localIdentifier.getter();
      (*v9)(v10, v11);
      v14 = _swiftEmptyArrayStorage[2];
      v13 = _swiftEmptyArrayStorage[3];
      if (v14 >= v13 >> 1)
      {
        sub_10005C508(v13 > 1, v14 + 1, 1);
      }

      v15 = v0[10];
      v16 = v0[8];
      _swiftEmptyArrayStorage[2] = v14 + 1;
      (*(v6 + 32))(_swiftEmptyArrayStorage + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v15, v16);
      v8 += v20;
      --v4;
    }

    while (v4);
  }

  v0[28] = _swiftEmptyArrayStorage;
  v17 = swift_task_alloc();
  v0[29] = v17;
  *v17 = v0;
  v17[1] = sub_1000E71A8;

  return sub_100060270(_swiftEmptyArrayStorage);
}

uint64_t sub_1000E71A8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 232);
  v9 = *v3;
  v4[30] = a1;
  v4[31] = a2;
  v4[32] = v2;

  if (v2)
  {
    v6 = sub_1000FBEF4;
  }

  else
  {
    v7 = v4[28];

    v6 = sub_1000E72C8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000E72C8()
{
  v146 = v0;
  v1 = v0[31];
  if (*(v1 + 16))
  {
    v2 = v0[27];
    v3 = v0[24];
    v4 = v0[20];
    v5 = v0[21];
    v6 = v0[6];
    static Log.photos.getter();
    v7 = *(v5 + 16);
    v7(v3, v6, v4);

    v8 = Logger.logObject.getter();
    v141 = static os_log_type_t.error.getter();
    v9 = os_log_type_enabled(v8, v141);
    v10 = v0[31];
    v11 = v0[26];
    v12 = v0[27];
    v13 = v0[24];
    v14 = v0[25];
    if (v9)
    {
      logb = v8;
      v132 = v0[26];
      v136 = v0[27];
      v15 = v0[21];
      v16 = v0[22];
      v17 = v0[20];
      v117 = v0[3];
      v120 = v0[8];
      v129 = v0[25];
      v18 = swift_slowAlloc();
      v145 = swift_slowAlloc();
      *v18 = 134218754;
      *(v18 + 4) = *(v1 + 16);

      *(v18 + 12) = 2048;
      *(v18 + 14) = v117;
      *(v18 + 22) = 2080;
      v7(v16, v13, v17);
      v19 = *(v15 + 8);
      v19(v13, v17);
      sub_1000FAACC(&qword_10012A2F0, &type metadata accessor for ShuffleID);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      v19(v16, v17);
      v23 = sub_100102F80(v20, v22, &v145);

      *(v18 + 24) = v23;
      *(v18 + 32) = 2080;
      v24 = Array.description.getter();
      v26 = v25;

      v27 = sub_100102F80(v24, v26, &v145);

      *(v18 + 34) = v27;
      _os_log_impl(&_mh_execute_header, logb, v141, "Ignoring %ld uncached photos on %ld for face %s: %s", v18, 0x2Au);
      swift_arrayDestroy();

      result = (*(v132 + 8))(v136, v129);
    }

    else
    {
      (*(v0[21] + 8))(v0[24], v0[20]);
      swift_bridgeObjectRelease_n();

      result = (*(v11 + 8))(v12, v14);
    }
  }

  else
  {
    v29 = v0[31];
  }

  v30 = v0[30];
  v115 = *(v30 + 16);
  if (v115)
  {
    v31 = 0;
    v32 = v0[16];
    v111 = v0[9];
    v142 = v0[7];
    v137 = v142 + 56;
    v33 = (v111 + 8);
    v110 = (v32 + 8);
    v112 = v32;
    v118 = (v32 + 32);
    v34 = _swiftEmptyArrayStorage;
    v113 = v0[30];
    do
    {
      if (v31 >= *(v30 + 16))
      {
        __break(1u);
        goto LABEL_47;
      }

      log = v31;
      v130 = v34;
      v37 = v0[14];
      v123 = (*(v112 + 80) + 32) & ~*(v112 + 80);
      v121 = *(v112 + 72);
      (*(v112 + 16))(v0[19], v0[30] + v123 + v121 * v31, v0[15]);
      StoredPhoto.localIdentifier.getter();
      if (*(v142 + 16) && (v38 = v0[14], v39 = v0[8], v40 = *(v142 + 40), sub_1000FAACC(&qword_10012A1F8, &type metadata accessor for UUID), v41 = dispatch thunk of Hashable._rawHashValue(seed:)(), v42 = -1 << *(v142 + 32), v43 = v41 & ~v42, ((*(v137 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) != 0))
      {
        v44 = ~v42;
        v45 = *(v111 + 72);
        v46 = *(v111 + 16);
        while (1)
        {
          v47 = v0[14];
          v48 = v0[11];
          v49 = v0[8];
          v46(v48, *(v142 + 48) + v43 * v45, v49);
          sub_1000FAACC(&qword_10012A660, &type metadata accessor for UUID);
          LOBYTE(v47) = dispatch thunk of static Equatable.== infix(_:_:)();
          v50 = *v33;
          (*v33)(v48, v49);
          if (v47)
          {
            break;
          }

          v43 = (v43 + 1) & v44;
          if (((*(v137 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
          {
            goto LABEL_16;
          }
        }

        v35 = v0[19];
        v36 = v0[15];
        v50(v0[14], v0[8]);
        result = (*v110)(v35, v36);
        v34 = v130;
      }

      else
      {
LABEL_16:
        v51 = v0[19];
        v52 = v0[17];
        v53 = v0[15];
        (*v33)(v0[14], v0[8]);
        v54 = *v118;
        (*v118)(v52, v51, v53);
        v34 = v130;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v145 = v130;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10005C5D0(0, v130[2] + 1, 1);
          v34 = v145;
        }

        v57 = v34[2];
        v56 = v34[3];
        if (v57 >= v56 >> 1)
        {
          sub_10005C5D0(v56 > 1, v57 + 1, 1);
          v34 = v145;
        }

        v58 = v0[17];
        v59 = v0[15];
        v34[2] = v57 + 1;
        result = v54(v34 + v123 + v57 * v121, v58, v59);
      }

      v30 = v113;
      v31 = (&log->isa + 1);
    }

    while ((&log->isa + 1) != v115);
    v60 = *(v113 + 16);
    v61 = v0[30];
    if (!v60)
    {
      goto LABEL_28;
    }

    v131 = v34;
    v62 = v0[16];
    v63 = v0[9];
    v145 = _swiftEmptyArrayStorage;
    sub_10005C508(0, v60, 0);
    v64 = v145;
    v65 = *(v62 + 16);
    v62 += 16;
    v66 = v61 + ((*(v62 + 64) + 32) & ~*(v62 + 64));
    v133 = *(v62 + 56);
    v138 = v65;
    v67 = (v62 - 8);
    do
    {
      v68 = v0[18];
      v69 = v0[15];
      v70 = v0[12];
      v138(v68, v66, v69);
      StoredPhoto.localIdentifier.getter();
      (*v67)(v68, v69);
      v145 = v64;
      v72 = v64[2];
      v71 = v64[3];
      if (v72 >= v71 >> 1)
      {
        sub_10005C508(v71 > 1, v72 + 1, 1);
        v64 = v145;
      }

      v73 = v0[12];
      v74 = v0[8];
      v64[2] = v72 + 1;
      (*(v63 + 32))(v64 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v72, v73, v74);
      v66 += v133;
      --v60;
    }

    while (v60);
    v75 = v0[30];

    v34 = v131;
  }

  else
  {
    v34 = _swiftEmptyArrayStorage;
LABEL_28:

    v64 = _swiftEmptyArrayStorage;
  }

  v76 = v0[7];

  v77 = sub_1000F3E6C(v64, v76);

  v78 = v34[2];
  v79 = _swiftEmptyArrayStorage;
  if (v78)
  {
    loga = v77;
    v80 = v0[16];
    v81 = v0[9];
    v145 = _swiftEmptyArrayStorage;
    sub_10005C508(0, v78, 0);
    v79 = v145;
    v82 = *(v80 + 16);
    v80 += 16;
    v83 = v34 + ((*(v80 + 64) + 32) & ~*(v80 + 64));
    v134 = *(v80 + 56);
    v139 = v82;
    v84 = (v80 - 8);
    do
    {
      v85 = v0[18];
      v86 = v0[15];
      v87 = v0[13];
      v139(v85, v83, v86);
      StoredPhoto.localIdentifier.getter();
      (*v84)(v85, v86);
      v145 = v79;
      v89 = v79[2];
      v88 = v79[3];
      if (v89 >= v88 >> 1)
      {
        sub_10005C508(v88 > 1, v89 + 1, 1);
        v79 = v145;
      }

      v90 = v0[13];
      v91 = v0[8];
      v79[2] = v89 + 1;
      (*(v81 + 32))(v79 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v89, v90, v91);
      v83 += v134;
      --v78;
    }

    while (v78);
    v77 = loga;
  }

  v92 = *(v77 + 16);
  if (v92)
  {
    v93 = v0[9];
    v94 = sub_10006465C(*(v77 + 16), 0);
    v143 = sub_10006BA60(&v145, &v94[(*(v93 + 80) + 32) & ~*(v93 + 80)], v92, v77);

    result = sub_100010E54();
    if (v143 != v92)
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }
  }

  else
  {
    v94 = _swiftEmptyArrayStorage;
  }

  v95 = v0[23];
  v96 = v0[20];
  v97 = v0[21];
  v98 = v0[6];
  v145 = v79;
  sub_1000847B0(v94);
  sub_1000FAACC(&qword_10012A2B0, &type metadata accessor for ShuffleID);
  static SyncedPhotosFace.faceChecksum(for:)();

  (*(v97 + 16))(v95, v98, v96);
  v99 = *(v77 + 16);
  if (v99)
  {
    v100 = v0[9];
    v101 = sub_10006465C(*(v77 + 16), 0);
    v102 = sub_10006BA60(&v145, &v101[(*(v100 + 80) + 32) & ~*(v100 + 80)], v99, v77);
    result = sub_100010E54();
    if (v102 == v99)
    {
      goto LABEL_43;
    }

LABEL_48:
    __break(1u);
    return result;
  }

LABEL_43:
  v103 = v0[27];
  v105 = v0[23];
  v104 = v0[24];
  v106 = v0[20];
  v114 = v0[22];
  v116 = v0[19];
  v119 = v0[18];
  v122 = v0[17];
  v124 = v0[14];
  logc = v0[13];
  v135 = v0[12];
  v140 = v0[11];
  v144 = v0[10];
  v107 = v0[2];
  v108 = v0[3];
  default argument 4 of SyncedPhotosFace.init(id:day:uncached:cached:complete:checksum:)();
  SyncedPhotosFace.init(id:day:uncached:cached:complete:checksum:)();

  v109 = v0[1];

  return v109();
}

uint64_t sub_1000E7E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = type metadata accessor for UUID();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v10 = type metadata accessor for StoredPhoto();
  v6[15] = v10;
  v11 = *(v10 - 8);
  v6[16] = v11;
  v12 = *(v11 + 64) + 15;
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v13 = type metadata accessor for AlbumID();
  v6[20] = v13;
  v14 = *(v13 - 8);
  v6[21] = v14;
  v15 = *(v14 + 64) + 15;
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v16 = type metadata accessor for Logger();
  v6[25] = v16;
  v17 = *(v16 - 8);
  v6[26] = v17;
  v18 = *(v17 + 64) + 15;
  v6[27] = swift_task_alloc();

  return _swift_task_switch(sub_1000E8068, 0, 0);
}

uint64_t sub_1000E8068()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = *(v1 + 104);
  v4 = *(v2 + 16);
  if (v4)
  {
    v19 = *(v1 + 104);
    v5 = v0[16];
    v6 = v0[9];
    sub_10005C508(0, v4, 0);
    v7 = *(v5 + 16);
    v5 += 16;
    v8 = v2 + ((*(v5 + 64) + 32) & ~*(v5 + 64));
    v20 = *(v5 + 56);
    v21 = v7;
    v9 = (v5 - 8);
    do
    {
      v10 = v0[18];
      v11 = v0[15];
      v12 = v0[10];
      v21(v10, v8, v11);
      StoredPhoto.localIdentifier.getter();
      (*v9)(v10, v11);
      v14 = _swiftEmptyArrayStorage[2];
      v13 = _swiftEmptyArrayStorage[3];
      if (v14 >= v13 >> 1)
      {
        sub_10005C508(v13 > 1, v14 + 1, 1);
      }

      v15 = v0[10];
      v16 = v0[8];
      _swiftEmptyArrayStorage[2] = v14 + 1;
      (*(v6 + 32))(_swiftEmptyArrayStorage + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v15, v16);
      v8 += v20;
      --v4;
    }

    while (v4);
  }

  v0[28] = _swiftEmptyArrayStorage;
  v17 = swift_task_alloc();
  v0[29] = v17;
  *v17 = v0;
  v17[1] = sub_1000E824C;

  return sub_100060270(_swiftEmptyArrayStorage);
}

uint64_t sub_1000E824C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 232);
  v9 = *v3;
  v4[30] = a1;
  v4[31] = a2;
  v4[32] = v2;

  if (v2)
  {
    v6 = sub_1000E8ED0;
  }

  else
  {
    v7 = v4[28];

    v6 = sub_1000E836C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000E836C()
{
  v146 = v0;
  v1 = v0[31];
  if (*(v1 + 16))
  {
    v2 = v0[27];
    v3 = v0[24];
    v4 = v0[20];
    v5 = v0[21];
    v6 = v0[6];
    static Log.photos.getter();
    v7 = *(v5 + 16);
    v7(v3, v6, v4);

    v8 = Logger.logObject.getter();
    v141 = static os_log_type_t.error.getter();
    v9 = os_log_type_enabled(v8, v141);
    v10 = v0[31];
    v11 = v0[26];
    v12 = v0[27];
    v13 = v0[24];
    v14 = v0[25];
    if (v9)
    {
      logb = v8;
      v132 = v0[26];
      v136 = v0[27];
      v15 = v0[21];
      v16 = v0[22];
      v17 = v0[20];
      v117 = v0[3];
      v120 = v0[8];
      v129 = v0[25];
      v18 = swift_slowAlloc();
      v145 = swift_slowAlloc();
      *v18 = 134218754;
      *(v18 + 4) = *(v1 + 16);

      *(v18 + 12) = 2048;
      *(v18 + 14) = v117;
      *(v18 + 22) = 2080;
      v7(v16, v13, v17);
      v19 = *(v15 + 8);
      v19(v13, v17);
      sub_1000FAACC(&qword_10012A0A0, &type metadata accessor for AlbumID);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      v19(v16, v17);
      v23 = sub_100102F80(v20, v22, &v145);

      *(v18 + 24) = v23;
      *(v18 + 32) = 2080;
      v24 = Array.description.getter();
      v26 = v25;

      v27 = sub_100102F80(v24, v26, &v145);

      *(v18 + 34) = v27;
      _os_log_impl(&_mh_execute_header, logb, v141, "Ignoring %ld uncached photos on %ld for face %s: %s", v18, 0x2Au);
      swift_arrayDestroy();

      result = (*(v132 + 8))(v136, v129);
    }

    else
    {
      (*(v0[21] + 8))(v0[24], v0[20]);
      swift_bridgeObjectRelease_n();

      result = (*(v11 + 8))(v12, v14);
    }
  }

  else
  {
    v29 = v0[31];
  }

  v30 = v0[30];
  v115 = *(v30 + 16);
  if (v115)
  {
    v31 = 0;
    v32 = v0[16];
    v111 = v0[9];
    v142 = v0[7];
    v137 = v142 + 56;
    v33 = (v111 + 8);
    v110 = (v32 + 8);
    v112 = v32;
    v118 = (v32 + 32);
    v34 = _swiftEmptyArrayStorage;
    v113 = v0[30];
    do
    {
      if (v31 >= *(v30 + 16))
      {
        __break(1u);
        goto LABEL_47;
      }

      log = v31;
      v130 = v34;
      v37 = v0[14];
      v123 = (*(v112 + 80) + 32) & ~*(v112 + 80);
      v121 = *(v112 + 72);
      (*(v112 + 16))(v0[19], v0[30] + v123 + v121 * v31, v0[15]);
      StoredPhoto.localIdentifier.getter();
      if (*(v142 + 16) && (v38 = v0[14], v39 = v0[8], v40 = *(v142 + 40), sub_1000FAACC(&qword_10012A1F8, &type metadata accessor for UUID), v41 = dispatch thunk of Hashable._rawHashValue(seed:)(), v42 = -1 << *(v142 + 32), v43 = v41 & ~v42, ((*(v137 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) != 0))
      {
        v44 = ~v42;
        v45 = *(v111 + 72);
        v46 = *(v111 + 16);
        while (1)
        {
          v47 = v0[14];
          v48 = v0[11];
          v49 = v0[8];
          v46(v48, *(v142 + 48) + v43 * v45, v49);
          sub_1000FAACC(&qword_10012A660, &type metadata accessor for UUID);
          LOBYTE(v47) = dispatch thunk of static Equatable.== infix(_:_:)();
          v50 = *v33;
          (*v33)(v48, v49);
          if (v47)
          {
            break;
          }

          v43 = (v43 + 1) & v44;
          if (((*(v137 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
          {
            goto LABEL_16;
          }
        }

        v35 = v0[19];
        v36 = v0[15];
        v50(v0[14], v0[8]);
        result = (*v110)(v35, v36);
        v34 = v130;
      }

      else
      {
LABEL_16:
        v51 = v0[19];
        v52 = v0[17];
        v53 = v0[15];
        (*v33)(v0[14], v0[8]);
        v54 = *v118;
        (*v118)(v52, v51, v53);
        v34 = v130;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v145 = v130;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10005C5D0(0, v130[2] + 1, 1);
          v34 = v145;
        }

        v57 = v34[2];
        v56 = v34[3];
        if (v57 >= v56 >> 1)
        {
          sub_10005C5D0(v56 > 1, v57 + 1, 1);
          v34 = v145;
        }

        v58 = v0[17];
        v59 = v0[15];
        v34[2] = v57 + 1;
        result = v54(v34 + v123 + v57 * v121, v58, v59);
      }

      v30 = v113;
      v31 = (&log->isa + 1);
    }

    while ((&log->isa + 1) != v115);
    v60 = *(v113 + 16);
    v61 = v0[30];
    if (!v60)
    {
      goto LABEL_28;
    }

    v131 = v34;
    v62 = v0[16];
    v63 = v0[9];
    v145 = _swiftEmptyArrayStorage;
    sub_10005C508(0, v60, 0);
    v64 = v145;
    v65 = *(v62 + 16);
    v62 += 16;
    v66 = v61 + ((*(v62 + 64) + 32) & ~*(v62 + 64));
    v133 = *(v62 + 56);
    v138 = v65;
    v67 = (v62 - 8);
    do
    {
      v68 = v0[18];
      v69 = v0[15];
      v70 = v0[12];
      v138(v68, v66, v69);
      StoredPhoto.localIdentifier.getter();
      (*v67)(v68, v69);
      v145 = v64;
      v72 = v64[2];
      v71 = v64[3];
      if (v72 >= v71 >> 1)
      {
        sub_10005C508(v71 > 1, v72 + 1, 1);
        v64 = v145;
      }

      v73 = v0[12];
      v74 = v0[8];
      v64[2] = v72 + 1;
      (*(v63 + 32))(v64 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v72, v73, v74);
      v66 += v133;
      --v60;
    }

    while (v60);
    v75 = v0[30];

    v34 = v131;
  }

  else
  {
    v34 = _swiftEmptyArrayStorage;
LABEL_28:

    v64 = _swiftEmptyArrayStorage;
  }

  v76 = v0[7];

  v77 = sub_1000F3E6C(v64, v76);

  v78 = v34[2];
  v79 = _swiftEmptyArrayStorage;
  if (v78)
  {
    loga = v77;
    v80 = v0[16];
    v81 = v0[9];
    v145 = _swiftEmptyArrayStorage;
    sub_10005C508(0, v78, 0);
    v79 = v145;
    v82 = *(v80 + 16);
    v80 += 16;
    v83 = v34 + ((*(v80 + 64) + 32) & ~*(v80 + 64));
    v134 = *(v80 + 56);
    v139 = v82;
    v84 = (v80 - 8);
    do
    {
      v85 = v0[18];
      v86 = v0[15];
      v87 = v0[13];
      v139(v85, v83, v86);
      StoredPhoto.localIdentifier.getter();
      (*v84)(v85, v86);
      v145 = v79;
      v89 = v79[2];
      v88 = v79[3];
      if (v89 >= v88 >> 1)
      {
        sub_10005C508(v88 > 1, v89 + 1, 1);
        v79 = v145;
      }

      v90 = v0[13];
      v91 = v0[8];
      v79[2] = v89 + 1;
      (*(v81 + 32))(v79 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v89, v90, v91);
      v83 += v134;
      --v78;
    }

    while (v78);
    v77 = loga;
  }

  v92 = *(v77 + 16);
  if (v92)
  {
    v93 = v0[9];
    v94 = sub_10006465C(*(v77 + 16), 0);
    v143 = sub_10006BA60(&v145, &v94[(*(v93 + 80) + 32) & ~*(v93 + 80)], v92, v77);

    result = sub_100010E54();
    if (v143 != v92)
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }
  }

  else
  {
    v94 = _swiftEmptyArrayStorage;
  }

  v95 = v0[23];
  v96 = v0[20];
  v97 = v0[21];
  v98 = v0[6];
  v145 = v79;
  sub_1000847B0(v94);
  sub_1000FAACC(&qword_10012A048, &type metadata accessor for AlbumID);
  static SyncedPhotosFace.faceChecksum(for:)();

  (*(v97 + 16))(v95, v98, v96);
  v99 = *(v77 + 16);
  if (v99)
  {
    v100 = v0[9];
    v101 = sub_10006465C(*(v77 + 16), 0);
    v102 = sub_10006BA60(&v145, &v101[(*(v100 + 80) + 32) & ~*(v100 + 80)], v99, v77);
    result = sub_100010E54();
    if (v102 == v99)
    {
      goto LABEL_43;
    }

LABEL_48:
    __break(1u);
    return result;
  }

LABEL_43:
  v103 = v0[27];
  v105 = v0[23];
  v104 = v0[24];
  v106 = v0[20];
  v114 = v0[22];
  v116 = v0[19];
  v119 = v0[18];
  v122 = v0[17];
  v124 = v0[14];
  logc = v0[13];
  v135 = v0[12];
  v140 = v0[11];
  v144 = v0[10];
  v107 = v0[2];
  v108 = v0[3];
  default argument 4 of SyncedPhotosFace.init(id:day:uncached:cached:complete:checksum:)();
  SyncedPhotosFace.init(id:day:uncached:cached:complete:checksum:)();

  v109 = v0[1];

  return v109();
}

uint64_t sub_1000E8ED0()
{
  v2 = v0[27];
  v1 = v0[28];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[22];
  v7 = v0[18];
  v6 = v0[19];
  v8 = v0[17];
  v10 = v0[13];
  v9 = v0[14];
  v14 = v0[12];
  v15 = v0[11];
  v16 = v0[10];

  v11 = v0[1];
  v12 = v0[32];

  return v11();
}

uint64_t sub_1000E8FD8()
{
  *(v0 + 32) = sub_10005D0B4(&_swiftEmptyArrayStorage);
  *(v0 + 40) = sub_10005D1C4(&_swiftEmptyArrayStorage);
  *(v0 + 48) = 0;
  *(v0 + 56) = *_emptyDequeStorage.unsafeMutableAddressor();
  v1 = type metadata accessor for OutgoingConnectionManager();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();

  *(v0 + 16) = sub_10007346C();
  type metadata accessor for IncomingConnectionManager();
  swift_allocObject();
  *(v0 + 24) = sub_10006FE60();
  sub_10000560C(&qword_10012B600, &qword_10010A9C8);
  type metadata accessor for MessageBody();
  default argument 0 of MessageDemultiplexer.init(timeout:logTag:)();
  *(v0 + 64) = MessageDemultiplexer.__allocating_init(timeout:logTag:)();
  return v0;
}

void sub_1000E90D0()
{
  v1 = *(v0 + 24);
  v2 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();
  v3 = v1[4];
  v4 = v1[5];
  v1[4] = &unk_10010A0E8;
  v1[5] = v2;

  sub_100071B20(v3);

  v5 = v1[2];
  type metadata accessor for CommunicationActor();
  v6 = static CommunicationActor.sharedQueue.getter();
  NWListener.start(queue:)();
}

uint64_t sub_1000E9190(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  type metadata accessor for CommunicationActor();
  v2[7] = static CommunicationActor.shared.getter();
  sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[8] = v4;
  v2[9] = v3;

  return _swift_task_switch(sub_1000E9258, v4, v3);
}

uint64_t sub_1000E9258()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[11] = v3;
    *v3 = v0;
    v3[1] = sub_1000E9350;
    v4 = v0[5];

    return sub_1000E94F4(v4);
  }

  else
  {
    v6 = v0[7];

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1000E9350()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v7 = *v0;

  v4 = *(v1 + 72);
  v5 = *(v1 + 64);

  return _swift_task_switch(sub_1000E9494, v5, v4);
}

uint64_t sub_1000E9494()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000E94F4(uint64_t a1)
{
  v2[25] = a1;
  v2[26] = v1;
  v3 = *(*(sub_10000560C(&qword_100129E70, &unk_100109CD0) - 8) + 64) + 15;
  v2[27] = swift_task_alloc();
  v4 = sub_10000560C(&qword_10012B448, &qword_10010A0F8);
  v2[28] = v4;
  v5 = *(v4 - 8);
  v2[29] = v5;
  v6 = *(v5 + 64) + 15;
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v7 = type metadata accessor for Message.Operation();
  v2[32] = v7;
  v8 = *(v7 - 8);
  v2[33] = v8;
  v9 = *(v8 + 64) + 15;
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v10 = type metadata accessor for Message();
  v2[36] = v10;
  v11 = *(v10 - 8);
  v2[37] = v11;
  v2[38] = *(v11 + 64);
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  v2[52] = v12;
  v13 = *(v12 - 8);
  v2[53] = v13;
  v14 = *(v13 + 64) + 15;
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  v2[61] = swift_task_alloc();
  v2[62] = swift_task_alloc();
  v2[63] = swift_task_alloc();
  v2[64] = swift_task_alloc();
  v2[65] = swift_task_alloc();
  v15 = type metadata accessor for ProtocolVersion();
  v2[66] = v15;
  v16 = *(v15 - 8);
  v2[67] = v16;
  v17 = *(v16 + 64) + 15;
  v2[68] = swift_task_alloc();
  v2[69] = swift_task_alloc();
  v18 = type metadata accessor for MessageBody();
  v2[70] = v18;
  v19 = *(v18 - 8);
  v2[71] = v19;
  v20 = *(v19 + 64) + 15;
  v2[72] = swift_task_alloc();
  v2[73] = swift_task_alloc();
  v2[74] = swift_task_alloc();
  v2[75] = swift_task_alloc();
  v2[76] = type metadata accessor for CommunicationActor();
  v2[77] = static CommunicationActor.shared.getter();
  v2[78] = sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v22 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[79] = v22;
  v2[80] = v21;

  return _swift_task_switch(sub_1000E9998, v22, v21);
}

uint64_t sub_1000E9998()
{
  v492 = v0;
  v1 = v0;
  v2 = v0[75];
  v3 = v0[71];
  v4 = v1[70];
  v5 = v1[69];
  v6 = v1[68];
  v7 = v1[67];
  v8 = v1[66];
  v9 = v1[25];
  Message.content.getter();
  MessageBody.version.getter();
  v10 = *(v3 + 8);
  v1[81] = v10;
  v1[82] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v474 = v10;
  v10(v2, v4);
  v11 = *(v7 + 104);
  v11(v6, enum case for ProtocolVersion.V0(_:), v8);
  sub_1000FAACC(&qword_10012B450, &type metadata accessor for ProtocolVersion);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v12 = *(v7 + 8);
  v12(v6, v8);
  v12(v5, v8);
  if (*(v1 + 192) == *(v1 + 193))
  {
    goto LABEL_3;
  }

  v13 = v1[75];
  v459 = v1[70];
  v466 = v11;
  v14 = v1[69];
  v15 = v1[68];
  v16 = v1;
  v17 = v1[66];
  v18 = v16[25];
  Message.content.getter();
  MessageBody.version.getter();
  v474(v13, v459);
  v466(v15, enum case for ProtocolVersion.V1(_:), v17);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v12(v15, v17);
  v19 = v17;
  v1 = v16;
  v12(v14, v19);
  if (*(v16 + 194) == *(v16 + 195))
  {
LABEL_3:
    v20 = v1[65];
    v22 = v1[50];
    v21 = v1[51];
    v24 = v1[36];
    v23 = v1[37];
    v25 = v1[25];
    static Log.network.getter();
    v26 = *(v23 + 16);
    v26(v21, v25, v24);
    v460 = v26;
    v26(v22, v25, v24);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = v1[75];
      v420 = v1[69];
      v424 = v1[70];
      v432 = v1[66];
      v450 = v1[65];
      v440 = v1[53];
      v445 = v1[52];
      v428 = v28;
      v30 = v1[51];
      v418 = v1[50];
      v32 = v1[36];
      v31 = v1[37];
      v33 = swift_slowAlloc();
      v34 = v1;
      v491[0] = swift_slowAlloc();
      *v33 = 136315394;
      v35 = Message.shortDescription.getter();
      v37 = v36;
      v38 = *(v31 + 8);
      v38(v30, v32);
      v39 = sub_100102F80(v35, v37, v491);

      *(v33 + 4) = v39;
      *(v33 + 12) = 2080;
      Message.content.getter();
      MessageBody.version.getter();
      v474(v29, v424);
      v40 = String.init<A>(describing:)();
      v42 = v41;
      v38(v418, v32);
      v43 = sub_100102F80(v40, v42, v491);

      *(v33 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v27, v428, "[NMC] Ignoring %s, as it's %s", v33, 0x16u);
      swift_arrayDestroy();

      v44 = *(v440 + 8);
      v44(v450, v445);
    }

    else
    {
      v45 = v1[65];
      v46 = v1[52];
      v47 = v1[53];
      v49 = v1[50];
      v48 = v1[51];
      v34 = v1;
      v50 = v1[37];
      v51 = v34[36];

      v38 = *(v50 + 8);
      v38(v49, v51);
      v38(v48, v51);
      v44 = *(v47 + 8);
      v44(v45, v46);
    }

    v52 = v34[35];
    v53 = v34[32];
    v54 = v34[33];
    v55 = v34[25];
    Message.operation.getter();
    v56 = (*(v54 + 88))(v52, v53);
    v1 = v34;
    if (v56 == enum case for Message.Operation.event(_:))
    {
      v57 = v34[77];
LABEL_8:

      goto LABEL_9;
    }

    if (v56 != enum case for Message.Operation.request(_:))
    {
      v100 = v34[77];
      if (v56 == enum case for Message.Operation.response(_:))
      {
        v101 = v34[77];
        goto LABEL_8;
      }

      v112 = enum case for Message.Operation.error(_:);
      v113 = v56;
      v114 = v34[77];

      if (v113 == v112)
      {
        goto LABEL_9;
      }

      v115 = v34[35];
      goto LABEL_91;
    }

    v434 = v44;
    v438 = v38;
    v442 = enum case for Message.Operation.event(_:);
    v447 = v34[78];
    v71 = v34[76];
    v72 = v34[49];
    v426 = v34[64];
    v430 = v34[48];
    v73 = v34[37];
    v74 = v34[38];
    v76 = v34[35];
    v75 = v1[36];
    v77 = v1[25];
    v422 = v77;
    (*(v1[33] + 96))(v76, v1[32]);
    v452 = v1;
    v78 = *(v76 + 4);
    static CommunicationActor.shared.getter();
    v460(v72, v77, v75);
    v79 = (*(v73 + 80) + 20) & ~*(v73 + 80);
    v80 = swift_allocObject();
    *(v80 + 16) = v78;
    v1 = v452;
    (*(v73 + 32))(v80 + v79, v72, v75);
    v81 = swift_allocObject();
    *(v81 + 16) = &unk_10010A128;
    *(v81 + 24) = v80;
    generateElements<A>(isolation:_:)();

    static Log.network.getter();
    v460(v430, v422, v75);
    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.debug.getter();
    v84 = os_log_type_enabled(v82, v83);
    v85 = v452[64];
    v86 = v452[52];
    v87 = v452[53];
    v88 = v452[48];
    v90 = v452[36];
    v89 = v452[37];
    if (v84)
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v491[0] = v92;
      *v91 = 136315138;
      v468 = v86;
      v93 = Message.shortDescription.getter();
      v95 = v94;
      v438(v88, v90);
      v96 = sub_100102F80(v93, v95, v491);

      *(v91 + 4) = v96;
      _os_log_impl(&_mh_execute_header, v82, v83, "[MSQ] Enqueue reply stream for: %s", v91, 0xCu);
      sub_10000C304(v92);

      v1 = v452;

      v97 = v468;
      v98 = v85;
    }

    else
    {

      v438(v88, v90);
      v98 = v85;
      v97 = v86;
    }

    v434(v98, v97);
    v102 = v1[36];
    v103 = v1[31];
    v104 = v1[28];
    v105 = v1[29];
    v106 = v1[26];
    v1[10] = v104;
    v1[24] = v102;
    v1[11] = swift_getOpaqueTypeConformance2();
    v107 = sub_10000C1AC(v1 + 7);
    (*(v105 + 16))(v107, v103, v104);
    swift_beginAccess();
    result = *(v106 + 56);
    v108 = *(result + 24);
    v109 = v108 + 1;
    v99 = v442;
    if (__OFADD__(v108, 1))
    {
      __break(1u);
      goto LABEL_102;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v111 = *(v106 + 56);
    if (*(v111 + 16) < v109 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10000ABC8(isUniquelyReferenced_nonNull_native, v109, 0);
      v111 = *(v106 + 56);
    }

    sub_10000B028((v111 + 16), v111 + 40, (v1 + 7));
    v116 = v1[26];
    swift_endAccess();
    sub_10000C304(v1 + 7);
    if ((*(v116 + 48) & 1) == 0)
    {
      v117 = v1[76];
      v119 = v1[26];
      v118 = v1[27];
      v120 = type metadata accessor for TaskPriority();
      (*(*(v120 - 8) + 56))(v118, 1, 1, v120);

      v121 = static CommunicationActor.shared.getter();
      v122 = swift_allocObject();
      v122[2] = v121;
      v122[3] = v447;
      v122[4] = v119;
      sub_100005654(0, 0, v118, &unk_10010A138, v122);
    }

    (*(v1[29] + 8))(v1[31], v1[28]);
  }

  else
  {
    v99 = enum case for Message.Operation.event(_:);
  }

  v124 = v1[33];
  v123 = v1[34];
  v125 = v1[32];
  v126 = v1[25];
  Message.operation.getter();
  v127 = (*(v124 + 88))(v123, v125);
  if (v127 == v99)
  {
    v128 = v1[34];
    (*(v1[33] + 96))(v128, v1[32]);
    v129 = *v128;
    *(v1 + 196) = v129;
    v130 = sub_10000C758(v129);
    if (v130 == 4)
    {
      v131 = v1[77];
      v132 = v1[60];
      v133 = v1[44];
      v134 = v1[36];
      v135 = v1[37];
      v136 = v1[25];

      static Log.network.getter();
      (*(v135 + 16))(v133, v136, v134);
      v137 = Logger.logObject.getter();
      v138 = static os_log_type_t.error.getter();
      v139 = os_log_type_enabled(v137, v138);
      v140 = v1[60];
      v142 = v1[52];
      v141 = v1[53];
      v143 = v1[44];
      v145 = v1[36];
      v144 = v1[37];
      if (v139)
      {
        v453 = v1;
        v146 = swift_slowAlloc();
        v483 = v142;
        v491[0] = swift_slowAlloc();
        v147 = v491[0];
        *v146 = 67109378;
        *(v146 + 4) = v129;
        *(v146 + 8) = 2080;
        v148 = Message.shortDescription.getter();
        v476 = v140;
        v150 = v149;
        (*(v144 + 8))(v143, v145);
        v151 = sub_100102F80(v148, v150, v491);

        *(v146 + 10) = v151;
        _os_log_impl(&_mh_execute_header, v137, v138, "handleMessage: Invalid message type %u. Dropping message %s", v146, 0x12u);
        sub_10000C304(v147);

        v1 = v453;

        (*(v141 + 8))(v476, v483);
      }

      else
      {

        (*(v144 + 8))(v143, v145);
        (*(v141 + 8))(v140, v142);
      }

      goto LABEL_9;
    }

    v180 = v130;
    v181 = v1[61];
    v182 = v1[45];
    v184 = v1[36];
    v183 = v1[37];
    v185 = v1[25];
    static Log.network.getter();
    (*(v183 + 16))(v182, v185, v184);
    v186 = Logger.logObject.getter();
    v187 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v186, v187))
    {
      v240 = v1[61];
      v241 = v1[52];
      v242 = v1[53];
      v243 = v1[45];
      v245 = v1[36];
      v244 = v1[37];

      (*(v244 + 8))(v243, v245);
      v246 = *(v242 + 8);
      v246(v240, v241);
      goto LABEL_80;
    }

    v485 = v187;
    v188 = 0xEE00796461655263;
    v189 = swift_slowAlloc();
    v491[0] = swift_slowAlloc();
    *v189 = 136315394;
    if (v180 > 1u)
    {
      if (v180 != 2)
      {
        v190 = 0x53796C696164;
        goto LABEL_78;
      }

      v254 = 0xD000000000000010;
      v255 = "shuffleSyncReady";
    }

    else
    {
      if (!v180)
      {
        v190 = 0x536D75626C61;
LABEL_78:
        v254 = v190 & 0xFFFFFFFFFFFFLL | 0x6E79000000000000;
        goto LABEL_79;
      }

      v254 = 0xD000000000000010;
      v255 = "gallerySyncReady";
    }

    v188 = (v255 - 32) | 0x8000000000000000;
LABEL_79:
    v355 = v1[53];
    v465 = v1[52];
    v473 = v1[61];
    v356 = v1[45];
    v358 = v1[36];
    v357 = v1[37];
    v359 = sub_100102F80(v254, v188, v491);

    *(v189 + 4) = v359;
    *(v189 + 12) = 2080;
    sub_1000FAACC(&qword_100129EE8, &type metadata accessor for Message);
    v360 = dispatch thunk of CustomStringConvertible.description.getter();
    v362 = v361;
    (*(v357 + 8))(v356, v358);
    v363 = sub_100102F80(v360, v362, v491);

    *(v189 + 14) = v363;
    _os_log_impl(&_mh_execute_header, v186, v485, "[NMC] Received %s: %s", v189, 0x16u);
    swift_arrayDestroy();

    v246 = *(v355 + 8);
    v246(v473, v465);
LABEL_80:
    v1[85] = v246;
    v364 = v1[26];
    swift_beginAccess();
    v365 = *(v364 + 40);
    if (*(v365 + 16) && (v366 = sub_10005F8DC(v180), (v367 & 1) != 0))
    {
      v368 = *(*(v365 + 56) + 8 * v366);
    }

    else
    {
      v368 = _swiftEmptyArrayStorage;
    }

    v1[86] = v368;
    v369 = v368[2];
    v1[87] = v369;
    if (!v369)
    {
      v376 = v1[77];

      goto LABEL_9;
    }

    v1[88] = 0;
    v370 = v1[73];
    v371 = v1[25];
    v372 = v368[4];
    v1[89] = v368[5];

    Message.content.getter();
    v490 = (v372 + *v372);
    v373 = v372[1];
    v374 = swift_task_alloc();
    v1[90] = v374;
    *v374 = v1;
    v374[1] = sub_1000EBD1C;
    v375 = v1[73];

    return v490();
  }

  if (v127 == enum case for Message.Operation.request(_:))
  {
    v152 = v1[77];
    v153 = v1[37];
    v155 = v1[33];
    v154 = v1[34];
    v156 = v1[32];

    (*(v155 + 96))(v154, v156);
    v158 = *v154;
    v157 = v154[1];
    v159 = sub_10000C748(*v154);
    v160 = (v153 + 16);
    v161 = v1[36];
    v162 = v1[25];
    if (v159 == 14)
    {
      v163 = v1[57];
      v164 = v1[42];
      static Log.network.getter();
      (*v160)(v164, v162, v161);
      v165 = Logger.logObject.getter();
      v166 = static os_log_type_t.error.getter();
      v167 = os_log_type_enabled(v165, v166);
      v168 = v1[57];
      v169 = v1[52];
      v170 = v1[53];
      v171 = v1[42];
      v173 = v1[36];
      v172 = v1[37];
      if (v167)
      {
        v454 = v1;
        v174 = swift_slowAlloc();
        v484 = v169;
        v491[0] = swift_slowAlloc();
        v175 = v491[0];
        *v174 = 67109378;
        *(v174 + 4) = v158;
        *(v174 + 8) = 2080;
        v176 = Message.shortDescription.getter();
        v477 = v168;
        v178 = v177;
        (*(v172 + 8))(v171, v173);
        v179 = sub_100102F80(v176, v178, v491);

        *(v174 + 10) = v179;
        _os_log_impl(&_mh_execute_header, v165, v166, "handleMessage: Invalid request type %u. Dropping message %s", v174, 0x12u);
        sub_10000C304(v175);

        v1 = v454;

        (*(v170 + 8))(v477, v484);
      }

      else
      {

        (*(v172 + 8))(v171, v173);
        (*(v170 + 8))(v168, v169);
      }

LABEL_9:
      v58 = v1[75];
      v59 = v1[74];
      v60 = v1[73];
      v61 = v1[72];
      v62 = v1[69];
      v63 = v1[68];
      v64 = v1;
      v65 = v1[65];
      v66 = v64[63];
      v67 = v64[64];
      v68 = v64[62];
      v405 = v64[61];
      v406 = v64[60];
      v407 = v64[59];
      v408 = v64[58];
      v409 = v64[57];
      v410 = v64[56];
      v411 = v64[55];
      v412 = v64[54];
      v413 = v64[51];
      v414 = v64[50];
      v415 = v64[49];
      v416 = v64[48];
      v417 = v64[47];
      v419 = v64[46];
      v421 = v64[45];
      v425 = v64[44];
      v429 = v64[43];
      v433 = v64[42];
      v437 = v64[41];
      v441 = v64[40];
      v446 = v64[39];
      v451 = v64[35];
      v461 = v64[34];
      v467 = v64[31];
      v475 = v64[30];
      v482 = v64[27];

      v69 = v64[1];

      return v69();
    }

    v478 = v159;
    v444 = v157;
    v216 = v1[58];
    v217 = v1[43];
    static Log.network.getter();
    v449 = *v160;
    (*v160)(v217, v162, v161);
    v218 = Logger.logObject.getter();
    v219 = static os_log_type_t.default.getter();
    v220 = os_log_type_enabled(v218, v219);
    v221 = v1[58];
    v223 = v1[52];
    v222 = v1[53];
    v224 = v1[43];
    v225 = v1;
    v226 = v1[37];
    v456 = v225;
    v227 = v225[36];
    v463 = v158;
    if (v220)
    {
      v228 = v219;
      v229 = swift_slowAlloc();
      v491[0] = swift_slowAlloc();
      *v229 = 136315394;
      v230 = sub_1000025CC(v478);
      v470 = v223;
      v435 = v221;
      v232 = sub_100102F80(v230, v231, v491);

      *(v229 + 4) = v232;
      *(v229 + 12) = 2080;
      sub_1000FAACC(&qword_100129EE8, &type metadata accessor for Message);
      v233 = dispatch thunk of CustomStringConvertible.description.getter();
      v235 = v234;
      v439 = *(v226 + 8);
      v439(v224, v227);
      v236 = sub_100102F80(v233, v235, v491);

      *(v229 + 14) = v236;
      _os_log_impl(&_mh_execute_header, v218, v228, "[NMC] Received %s: %s", v229, 0x16u);
      swift_arrayDestroy();

      v237 = *(v222 + 8);
      v238 = v435;
      v239 = v470;
    }

    else
    {

      v439 = *(v226 + 8);
      v439(v224, v227);
      v237 = *(v222 + 8);
      v238 = v221;
      v239 = v223;
    }

    v436 = v237;
    v237(v238, v239);
    v1 = v456;
    v472 = v456[78];
    v289 = v456[76];
    v290 = v456[49];
    v427 = v456[56];
    v431 = v456[41];
    v292 = v456[37];
    v291 = v456[38];
    v293 = v456[36];
    v295 = v456[25];
    v294 = v456[26];
    v423 = v295;
    static CommunicationActor.shared.getter();
    v449(v290, v295, v293);
    v296 = (*(v292 + 80) + 32) & ~*(v292 + 80);
    v297 = swift_allocObject();
    *(v297 + 16) = v294;
    *(v297 + 24) = v478;
    *(v297 + 28) = v463;
    (*(v292 + 32))(v297 + v296, v290, v293);
    *(v297 + ((v291 + v296 + 3) & 0xFFFFFFFFFFFFFFFCLL)) = v444;
    v298 = swift_allocObject();
    *(v298 + 16) = &unk_10010A108;
    *(v298 + 24) = v297;

    generateElements<A>(isolation:_:)();

    static Log.network.getter();
    v449(v431, v423, v293);
    v299 = Logger.logObject.getter();
    v300 = static os_log_type_t.debug.getter();
    v301 = os_log_type_enabled(v299, v300);
    v302 = v456[56];
    v303 = v456[52];
    v304 = v456[53];
    v305 = v456[41];
    v307 = v456[36];
    v306 = v456[37];
    if (v301)
    {
      v308 = swift_slowAlloc();
      v488 = v302;
      v491[0] = swift_slowAlloc();
      v309 = v491[0];
      *v308 = 136315138;
      v310 = Message.shortDescription.getter();
      v480 = v303;
      v312 = v311;
      v439(v305, v307);
      v313 = sub_100102F80(v310, v312, v491);

      *(v308 + 4) = v313;
      _os_log_impl(&_mh_execute_header, v299, v300, "[MSQ] Enqueue reply stream for: %s", v308, 0xCu);
      sub_10000C304(v309);

      v1 = v456;

      v315 = v480;
      v314 = v488;
    }

    else
    {

      v439(v305, v307);
      v314 = v302;
      v315 = v303;
    }

    v436(v314, v315);
    v336 = v1[36];
    v338 = v1[29];
    v337 = v1[30];
    v339 = v1[28];
    v340 = v1[26];
    v1[5] = v339;
    v1[23] = v336;
    v1[6] = swift_getOpaqueTypeConformance2();
    v341 = sub_10000C1AC(v1 + 2);
    (*(v338 + 16))(v341, v337, v339);
    swift_beginAccess();
    result = *(v340 + 56);
    v342 = *(result + 24);
    v343 = v342 + 1;
    if (!__OFADD__(v342, 1))
    {
      v344 = swift_isUniquelyReferenced_nonNull_native();
      v345 = *(v340 + 56);
      if (*(v345 + 16) < v343 || (v344 & 1) == 0)
      {
        sub_10000ABC8(v344, v343, 0);
        v345 = *(v340 + 56);
      }

      sub_10000B028((v345 + 16), v345 + 40, (v1 + 2));
      v346 = v1[26];
      swift_endAccess();
      sub_10000C304(v1 + 2);
      if ((*(v346 + 48) & 1) == 0)
      {
        v347 = v1[76];
        v349 = v1[26];
        v348 = v1[27];
        v350 = type metadata accessor for TaskPriority();
        (*(*(v350 - 8) + 56))(v348, 1, 1, v350);

        v351 = static CommunicationActor.shared.getter();
        v352 = swift_allocObject();
        v352[2] = v351;
        v352[3] = v472;
        v352[4] = v349;
        sub_100005654(0, 0, v348, &unk_10010A120, v352);
      }

      v353 = v1[29];
      v115 = v1[30];
      v354 = v1[28];
      goto LABEL_92;
    }

LABEL_102:
    __break(1u);
    return result;
  }

  if (v127 != enum case for Message.Operation.response(_:))
  {
    v247 = v1[77];
    v248 = enum case for Message.Operation.error(_:);
    v249 = v127;

    if (v249 == v248)
    {
      v250 = v1[74];
      v251 = v1[34];
      v252 = v1[25];
      (*(v1[33] + 96))(v251, v1[32]);
      v253 = *v251;
      Message.content.getter();
      MessageBody.deserialized<A>()();
      v378 = v1[21];
      v377 = v1[22];
      v379 = v1[54];
      v380 = v1[39];
      v382 = v1[36];
      v381 = v1[37];
      v383 = v1[25];
      v474(v1[74], v1[70]);
      static Log.network.getter();
      (*(v381 + 16))(v380, v383, v382);

      v384 = Logger.logObject.getter();
      v385 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v384, v385))
      {
        v387 = swift_slowAlloc();
        v388 = swift_slowAlloc();
        v491[0] = v388;
        *v387 = 67109378;
        *(v387 + 4) = v253;
        *(v387 + 8) = 2080;
        if (!v377)
        {
          v389 = v1[39];
          v378 = Message.description.getter();
          v377 = v390;
        }

        v392 = v1[53];
        v391 = v1[54];
        v393 = v1[52];
        (*(v1[37] + 8))(v1[39], v1[36]);
        v394 = sub_100102F80(v378, v377, v491);

        *(v387 + 10) = v394;
        _os_log_impl(&_mh_execute_header, v384, v385, "[NMC] Error executing request %u: %s", v387, 0x12u);
        sub_10000C304(v388);

        (*(v392 + 8))(v391, v393);
      }

      else
      {
        v396 = v1[53];
        v395 = v1[54];
        v397 = v1[52];
        v398 = v1[39];
        v399 = v1[36];
        v400 = v1[37];

        (*(v400 + 8))(v398, v399);
        (*(v396 + 8))(v395, v397);
      }

      v401 = *(v1[26] + 64);
      sub_10008559C();
      swift_allocError();
      *v402 = 0;

      dispatch thunk of MessageDemultiplexer.error(_:_:)();

      goto LABEL_8;
    }

    v316 = v1[62];
    v317 = v1[46];
    v318 = v1[36];
    v319 = v1[37];
    v320 = v1[25];
    static Log.network.getter();
    (*(v319 + 16))(v317, v320, v318);
    v321 = Logger.logObject.getter();
    v322 = static os_log_type_t.error.getter();
    v323 = os_log_type_enabled(v321, v322);
    v324 = v1[62];
    v326 = v1[52];
    v325 = v1[53];
    v327 = v1[46];
    v329 = v1[36];
    v328 = v1[37];
    if (v323)
    {
      v489 = v1[52];
      v330 = swift_slowAlloc();
      v458 = v1;
      v331 = swift_slowAlloc();
      v491[0] = v331;
      *v330 = 136315138;
      sub_1000FAACC(&qword_100129EE8, &type metadata accessor for Message);
      v332 = dispatch thunk of CustomStringConvertible.description.getter();
      v481 = v324;
      v334 = v333;
      (*(v328 + 8))(v327, v329);
      v335 = sub_100102F80(v332, v334, v491);

      *(v330 + 4) = v335;
      _os_log_impl(&_mh_execute_header, v321, v322, "[NMC] Unknown message type for message %s. Ignoring.", v330, 0xCu);
      sub_10000C304(v331);
      v1 = v458;

      (*(v325 + 8))(v481, v489);
    }

    else
    {

      (*(v328 + 8))(v327, v329);
      (*(v325 + 8))(v324, v326);
    }

    v115 = v1[34];
LABEL_91:
    v354 = v1[32];
    v353 = v1[33];
LABEL_92:
    (*(v353 + 8))(v115, v354);
    goto LABEL_9;
  }

  v191 = v1[63];
  v192 = v1[47];
  v194 = v1[36];
  v193 = v1[37];
  v195 = v1[34];
  v196 = v1[25];
  (*(v1[33] + 96))(v195, v1[32]);
  v197 = *v195;
  *(v1 + 197) = v197;
  static Log.network.getter();
  v198 = *(v193 + 16);
  v1[83] = v198;
  v1[84] = (v193 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v198(v192, v196, v194);
  v199 = Logger.logObject.getter();
  v200 = static os_log_type_t.default.getter();
  v201 = os_log_type_enabled(v199, v200);
  v202 = v1[63];
  v203 = v1[52];
  v204 = v1[53];
  v205 = v1[47];
  v207 = v1[36];
  v206 = v1[37];
  if (v201)
  {
    v455 = v1;
    v208 = swift_slowAlloc();
    v469 = v197;
    v209 = swift_slowAlloc();
    v491[0] = v209;
    *v208 = 136315138;
    sub_1000FAACC(&qword_100129EE8, &type metadata accessor for Message);
    v462 = v202;
    v210 = dispatch thunk of CustomStringConvertible.description.getter();
    v448 = v203;
    v212 = v211;
    v443 = v200;
    v213 = *(v206 + 8);
    v213(v205, v207);
    v214 = sub_100102F80(v210, v212, v491);

    *(v208 + 4) = v214;
    _os_log_impl(&_mh_execute_header, v199, v443, "[NMC] Received response: %s", v208, 0xCu);
    sub_10000C304(v209);
    v197 = v469;

    v1 = v455;

    v215 = *(v204 + 8);
    v215(v462, v448);
  }

  else
  {

    v213 = *(v206 + 8);
    v213(v205, v207);
    v215 = *(v204 + 8);
    v215(v202, v203);
  }

  v1[93] = v213;
  v1[92] = v215;
  v256 = v1[72];
  v257 = v1[70];
  v258 = v1[25];
  Message.content.getter();
  LOBYTE(v258) = MessageBody.isEmpty.getter();
  v474(v256, v257);
  if (v258)
  {
    v259 = v1[25];
    if (Message.complete.getter())
    {
      v260 = v1[77];

      v261 = v1[25];
      if ((Message.complete.getter() & 1) == 0)
      {
        goto LABEL_9;
      }

      v262 = v1[84];
      v263 = v1[83];
      v264 = v1[55];
      v265 = v1[40];
      v266 = v1[36];
      v267 = v1[25];
      static Log.network.getter();
      v263(v265, v267, v266);
      v268 = Logger.logObject.getter();
      v269 = static os_log_type_t.default.getter();
      v270 = os_log_type_enabled(v268, v269);
      v271 = v1[93];
      v272 = v1[92];
      v273 = v1[55];
      v274 = v1[52];
      v486 = v1[53];
      v275 = v1[40];
      v277 = v1[36];
      v276 = v1[37];
      if (v270)
      {
        v479 = v1[55];
        v278 = swift_slowAlloc();
        v457 = v1;
        v279 = swift_slowAlloc();
        v491[0] = v279;
        *v278 = 136315138;
        sub_1000FAACC(&qword_100129EE8, &type metadata accessor for Message);
        v464 = v274;
        v471 = v272;
        v280 = dispatch thunk of CustomStringConvertible.description.getter();
        v282 = v281;
        v271(v275, v277);
        v283 = sub_100102F80(v280, v282, v491);

        *(v278 + 4) = v283;
        _os_log_impl(&_mh_execute_header, v268, v269, "[NMC] Finished receiving response: %s", v278, 0xCu);
        sub_10000C304(v279);
        v1 = v457;

        v471(v479, v464);
      }

      else
      {

        v271(v275, v277);
        v272(v273, v274);
      }

      v403 = *(v1 + 197);
      v404 = *(v1[26] + 64);

      dispatch thunk of MessageDemultiplexer.finish(_:)();
      goto LABEL_8;
    }
  }

  v284 = v1[75];
  v285 = v1[25];
  v1[94] = *(v1[26] + 64);

  Message.content.getter();
  v286 = *(&async function pointer to dispatch thunk of MessageDemultiplexer.send(_:_:) + 1);
  v487 = (&async function pointer to dispatch thunk of MessageDemultiplexer.send(_:_:) + async function pointer to dispatch thunk of MessageDemultiplexer.send(_:_:));
  v287 = swift_task_alloc();
  v1[95] = v287;
  *v287 = v1;
  v287[1] = sub_1000EC6A4;
  v288 = v1[75];

  return (v487)(v197, v288);
}

uint64_t sub_1000EBD1C()
{
  v2 = *v1;
  v3 = *(*v1 + 720);
  v4 = *v1;
  *(*v1 + 728) = v0;

  v5 = v2[89];
  v6 = v2[82];
  v7 = v2[81];
  v8 = v2[73];
  v9 = v2[70];

  v7(v8, v9);
  v10 = v2[80];
  v11 = v2[79];
  if (v0)
  {
    v12 = sub_1000EC228;
  }

  else
  {
    v12 = sub_1000EBEDC;
  }

  return _swift_task_switch(v12, v11, v10);
}

uint64_t sub_1000EBEDC()
{
  v1 = v0[88] + 1;
  if (v1 == v0[87])
  {
    v2 = v0[86];
    v3 = v0[77];

    v4 = v0[75];
    v5 = v0[74];
    v6 = v0[73];
    v7 = v0[72];
    v8 = v0[69];
    v9 = v0[68];
    v10 = v0[65];
    v11 = v0[63];
    v12 = v0[64];
    v13 = v0[62];
    v23 = v0[61];
    v24 = v0[60];
    v25 = v0[59];
    v26 = v0[58];
    v27 = v0[57];
    v28 = v0[56];
    v29 = v0[55];
    v30 = v0[54];
    v31 = v0[51];
    v32 = v0[50];
    v33 = v0[49];
    v34 = v0[48];
    v35 = v0[47];
    v36 = v0[46];
    v37 = v0[45];
    v38 = v0[44];
    v39 = v0[43];
    v40 = v0[42];
    v41 = v0[41];
    v42 = v0[40];
    v43 = v0[39];
    v44 = v0[35];
    v45 = v0[34];
    v46 = v0[31];
    v47 = v0[30];
    v48 = v0[27];

    v14 = v0[1];

    return v14();
  }

  else
  {
    v0[88] = v1;
    v16 = v0[73];
    v17 = v0[25];
    v18 = v0[86] + 16 * v1;
    v19 = *(v18 + 32);
    v0[89] = *(v18 + 40);

    Message.content.getter();
    v49 = (v19 + *v19);
    v20 = v19[1];
    v21 = swift_task_alloc();
    v0[90] = v21;
    *v21 = v0;
    v21[1] = sub_1000EBD1C;
    v22 = v0[73];

    return v49();
  }
}

uint64_t sub_1000EC228()
{
  v1 = *(v0 + 728);
  v2 = *(v0 + 472);
  static Log.network.getter();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 728);
  if (v5)
  {
    v7 = *(v0 + 784);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 67109378;
    *(v8 + 4) = v7;
    *(v8 + 8) = 2112;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 10) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "handleMessage: Exception occurred while processing event %u. Error: %@", v8, 0x12u);
    sub_10000C460(v9, &qword_100129EF8, &qword_100108C70);
  }

  else
  {
    v11 = *(v0 + 728);
  }

  v12 = *(v0 + 424) + 8;
  (*(v0 + 680))(*(v0 + 472), *(v0 + 416));
  v13 = *(v0 + 704) + 1;
  if (v13 == *(v0 + 696))
  {
    v14 = *(v0 + 688);
    v15 = *(v0 + 616);

    v16 = *(v0 + 600);
    v17 = *(v0 + 592);
    v18 = *(v0 + 584);
    v19 = *(v0 + 576);
    v20 = *(v0 + 552);
    v21 = *(v0 + 544);
    v22 = *(v0 + 520);
    v23 = *(v0 + 504);
    v24 = *(v0 + 512);
    v25 = *(v0 + 496);
    v35 = *(v0 + 488);
    v36 = *(v0 + 480);
    v37 = *(v0 + 472);
    v38 = *(v0 + 464);
    v39 = *(v0 + 456);
    v40 = *(v0 + 448);
    v41 = *(v0 + 440);
    v42 = *(v0 + 432);
    v43 = *(v0 + 408);
    v44 = *(v0 + 400);
    v45 = *(v0 + 392);
    v46 = *(v0 + 384);
    v47 = *(v0 + 376);
    v48 = *(v0 + 368);
    v49 = *(v0 + 360);
    v50 = *(v0 + 352);
    v51 = *(v0 + 344);
    v52 = *(v0 + 336);
    v53 = *(v0 + 328);
    v54 = *(v0 + 320);
    v55 = *(v0 + 312);
    v56 = *(v0 + 280);
    v57 = *(v0 + 272);
    v58 = *(v0 + 248);
    v59 = *(v0 + 240);
    v60 = *(v0 + 216);

    v26 = *(v0 + 8);

    return v26();
  }

  else
  {
    *(v0 + 704) = v13;
    v28 = *(v0 + 584);
    v29 = *(v0 + 200);
    v30 = *(v0 + 688) + 16 * v13;
    v31 = *(v30 + 32);
    *(v0 + 712) = *(v30 + 40);

    Message.content.getter();
    v61 = (v31 + *v31);
    v32 = v31[1];
    v33 = swift_task_alloc();
    *(v0 + 720) = v33;
    *v33 = v0;
    v33[1] = sub_1000EBD1C;
    v34 = *(v0 + 584);

    return v61();
  }
}

uint64_t sub_1000EC6A4()
{
  v1 = *v0;
  v2 = *(*v0 + 760);
  v3 = *(*v0 + 752);
  v4 = *(*v0 + 656);
  v5 = *(*v0 + 648);
  v6 = *(*v0 + 600);
  v7 = *(*v0 + 560);
  v11 = *v0;

  v5(v6, v7);
  v8 = *(v1 + 640);
  v9 = *(v1 + 632);

  return _swift_task_switch(sub_1000EC854, v9, v8);
}

uint64_t sub_1000EC854()
{
  v70 = v0;
  v1 = *(v0 + 616);

  v2 = *(v0 + 200);
  if (Message.complete.getter())
  {
    v3 = *(v0 + 672);
    v4 = *(v0 + 664);
    v5 = *(v0 + 440);
    v6 = *(v0 + 320);
    v7 = *(v0 + 288);
    v8 = *(v0 + 200);
    static Log.network.getter();
    v4(v6, v8, v7);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    v11 = os_log_type_enabled(v9, v10);
    v67 = *(v0 + 744);
    v12 = *(v0 + 736);
    v13 = *(v0 + 440);
    v14 = *(v0 + 416);
    v15 = *(v0 + 424);
    v16 = *(v0 + 320);
    v18 = *(v0 + 288);
    v17 = *(v0 + 296);
    if (v11)
    {
      v65 = *(v0 + 440);
      v19 = swift_slowAlloc();
      v63 = v14;
      v20 = swift_slowAlloc();
      v69 = v20;
      *v19 = 136315138;
      sub_1000FAACC(&qword_100129EE8, &type metadata accessor for Message);
      v61 = v12;
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      v67(v16, v18);
      v24 = sub_100102F80(v21, v23, &v69);

      *(v19 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v9, v10, "[NMC] Finished receiving response: %s", v19, 0xCu);
      sub_10000C304(v20);

      v61(v65, v63);
    }

    else
    {

      v67(v16, v18);
      v12(v13, v14);
    }

    v25 = *(v0 + 788);
    v26 = *(*(v0 + 208) + 64);

    dispatch thunk of MessageDemultiplexer.finish(_:)();
  }

  v27 = *(v0 + 600);
  v28 = *(v0 + 592);
  v29 = *(v0 + 584);
  v30 = *(v0 + 576);
  v31 = *(v0 + 552);
  v32 = *(v0 + 544);
  v33 = *(v0 + 520);
  v34 = *(v0 + 504);
  v35 = *(v0 + 512);
  v36 = *(v0 + 496);
  v39 = *(v0 + 488);
  v40 = *(v0 + 480);
  v41 = *(v0 + 472);
  v42 = *(v0 + 464);
  v43 = *(v0 + 456);
  v44 = *(v0 + 448);
  v45 = *(v0 + 440);
  v46 = *(v0 + 432);
  v47 = *(v0 + 408);
  v48 = *(v0 + 400);
  v49 = *(v0 + 392);
  v50 = *(v0 + 384);
  v51 = *(v0 + 376);
  v52 = *(v0 + 368);
  v53 = *(v0 + 360);
  v54 = *(v0 + 352);
  v55 = *(v0 + 344);
  v56 = *(v0 + 336);
  v57 = *(v0 + 328);
  v58 = *(v0 + 320);
  v59 = *(v0 + 312);
  v60 = *(v0 + 280);
  v62 = *(v0 + 272);
  v64 = *(v0 + 248);
  v66 = *(v0 + 240);
  v68 = *(v0 + 216);

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_1000ECC88(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v35 = a1;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.network.getter();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v32 = v11;
    v18 = v17;
    v19 = swift_slowAlloc();
    v33 = a2;
    v20 = v19;
    v37[0] = v19;
    *v18 = 136315138;
    v21 = sub_10004DF54(v35);
    v34 = a3;
    v23 = sub_100102F80(v21, v22, v37);
    v31 = v10;
    v24 = a5;
    v25 = v23;
    a3 = v34;

    *(v18 + 4) = v25;
    a5 = v24;
    _os_log_impl(&_mh_execute_header, v15, v16, "Registry: Registering request for %s.", v18, 0xCu);
    sub_10000C304(v20);
    a2 = v33;

    (*(v32 + 8))(v14, v31);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  v26 = swift_allocObject();
  *(v26 + 16) = a2;
  *(v26 + 24) = a3;
  swift_beginAccess();

  v27 = *(v7 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36 = *(v7 + 32);
  *(v7 + 32) = 0x8000000000000000;
  sub_10005BF40(a5, v26, v35, isUniquelyReferenced_nonNull_native);
  *(v7 + 32) = v36;
  return swift_endAccess();
}

uint64_t sub_1000ECF04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for MessageBody();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  (*(v9 + 16))(v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v9 + 32))(v12 + v11, v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  a4[3] = sub_10000560C(&qword_10012A628, &qword_1001094F0);
  v14[1] = v8;
  a4[4] = swift_getOpaqueTypeConformance2();
  sub_10000C1AC(a4);

  return generateElements<A>(isolation:_:)();
}

uint64_t sub_1000ED0A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  v6 = *(*(type metadata accessor for ProtocolVersion() - 8) + 64) + 15;
  v5[13] = swift_task_alloc();
  v7 = type metadata accessor for MessageBody();
  v5[14] = v7;
  v8 = *(v7 - 8);
  v5[15] = v8;
  v9 = *(v8 + 64) + 15;
  v5[16] = swift_task_alloc();

  return _swift_task_switch(sub_1000ED19C, 0, 0);
}

uint64_t sub_1000ED19C()
{
  v1 = v0[12];
  MessageBody.deserialized<A>()();
  v6 = (v0[10] + *v0[10]);
  v2 = *(v0[10] + 4);
  v3 = swift_task_alloc();
  v0[17] = v3;
  *v3 = v0;
  v3[1] = sub_1000ED30C;
  v4 = v0[11];

  return v6(v0 + 2, v0 + 4);
}

uint64_t sub_1000ED30C()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v7 = *v1;
  *(*v1 + 144) = v0;

  v4 = *(v2 + 40);

  if (v0)
  {
    v5 = sub_1000ED5F4;
  }

  else
  {
    v5 = sub_1000ED430;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000ED430()
{
  v0[6] = v0[2];
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[3];
  v0[19] = v5;
  v0[7] = v5;

  MessageBody.version.getter();
  MessageBody.init<A>(serializable:version:)();
  if (v1)
  {

    v6 = v0[16];
    v7 = v0[13];

    v8 = v0[1];

    return v8();
  }

  else
  {
    v14 = (v0[8] + *v0[8]);
    v10 = *(v0[8] + 4);
    v11 = swift_task_alloc();
    v0[20] = v11;
    *v11 = v0;
    v11[1] = sub_1000ED664;
    v12 = v0[16];
    v13 = v0[9];

    return v14(v12);
  }
}

uint64_t sub_1000ED5F4()
{
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[13];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000ED664()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;
  *(*v1 + 168) = v0;

  (*(v2[15] + 8))(v2[16], v2[14]);
  if (v0)
  {
    v5 = sub_1000ED848;
  }

  else
  {
    v5 = sub_1000ED7CC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000ED7CC()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[13];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000ED848()
{
  v1 = v0[19];

  v2 = v0[21];
  v3 = v0[16];
  v4 = v0[13];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000ED8C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  v6 = *(*(type metadata accessor for ProtocolVersion() - 8) + 64) + 15;
  v5[11] = swift_task_alloc();
  v7 = type metadata accessor for MessageBody();
  v5[12] = v7;
  v8 = *(v7 - 8);
  v5[13] = v8;
  v9 = *(v8 + 64) + 15;
  v5[14] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v5[15] = v10;
  v11 = *(v10 - 8);
  v5[16] = v11;
  v12 = *(v11 + 64) + 15;
  v5[17] = swift_task_alloc();

  return _swift_task_switch(sub_1000EDA10, 0, 0);
}

uint64_t sub_1000EDA10()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[10];
  MessageBody.deserialized<A>()();
  v9 = (v0[8] + *v0[8]);
  v4 = *(v0[8] + 4);
  v5 = swift_task_alloc();
  v0[18] = v5;
  *v5 = v0;
  v5[1] = sub_1000EDB88;
  v6 = v0[17];
  v7 = v0[9];

  return v9(v0 + 2, v6);
}

uint64_t sub_1000EDB88()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = v0;

  (*(v2[16] + 8))(v2[17], v2[15]);
  if (v0)
  {
    v5 = sub_1000EDEAC;
  }

  else
  {
    v5 = sub_1000EDCF0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000EDCF0()
{
  v1 = v0[2];
  v0[4] = v1;
  v2 = v0[19];
  v3 = v0[14];
  v4 = v0[10];
  v5 = v0[11];
  v6 = v0[3];
  v0[5] = v6;
  sub_100041E80(v1, v6);
  MessageBody.version.getter();
  MessageBody.init<A>(serializable:version:)();
  if (v2)
  {
    sub_10000C868(v0[2], v0[3]);
    v7 = v0[17];
    v8 = v0[14];
    v9 = v0[11];

    v10 = v0[1];

    return v10();
  }

  else
  {
    v16 = (v0[6] + *v0[6]);
    v12 = *(v0[6] + 4);
    v13 = swift_task_alloc();
    v0[20] = v13;
    *v13 = v0;
    v13[1] = sub_1000EDF30;
    v14 = v0[14];
    v15 = v0[7];

    return v16(v14);
  }
}

uint64_t sub_1000EDEAC()
{
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[11];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000EDF30()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;
  *(*v1 + 168) = v0;

  (*(v2[13] + 8))(v2[14], v2[12]);
  if (v0)
  {
    v5 = sub_1000EE128;
  }

  else
  {
    v5 = sub_1000EE098;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000EE098()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[11];
  sub_10000C868(v0[2], v0[3]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000EE128()
{
  sub_10000C868(v0[2], v0[3]);
  v1 = v0[21];
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[11];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000EE1B4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.network.getter();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v42 = a2;
    v43 = a3;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v46 = v16;
    *v15 = 136315138;
    v44 = a1;
    v17 = 0x6E79536D75626C61;
    v18 = 0xD000000000000010;
    v19 = 0x8000000100106E60;
    if (a1 != 2)
    {
      v18 = 0x6E7953796C696164;
      v19 = 0xEE00796461655263;
    }

    if (a1)
    {
      v17 = 0xD000000000000010;
      v20 = 0x8000000100106E80;
    }

    else
    {
      v20 = 0xEE00796461655263;
    }

    if (a1 <= 1u)
    {
      v21 = v17;
    }

    else
    {
      v21 = v18;
    }

    if (a1 <= 1u)
    {
      v22 = v20;
    }

    else
    {
      v22 = v19;
    }

    v23 = sub_100102F80(v21, v22, &v46);

    *(v15 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v13, v14, "Registry: Registering event for %s.", v15, 0xCu);
    sub_10000C304(v16);

    (*(v9 + 8))(v12, v8);
    a1 = v44;
    a2 = v42;
    a3 = v43;
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a2;
  *(v24 + 24) = a3;
  swift_beginAccess();

  v25 = *(v4 + 40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v45 = *(v4 + 40);
  v27 = v45;
  *(v4 + 40) = 0x8000000000000000;
  v29 = sub_10005F8DC(a1);
  v30 = v27[2];
  v31 = (v28 & 1) == 0;
  v32 = v30 + v31;
  if (__OFADD__(v30, v31))
  {
    __break(1u);
    goto LABEL_28;
  }

  v33 = v28;
  if (v27[3] >= v32)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *(v4 + 40) = v27;
      if (v28)
      {
        goto LABEL_23;
      }
    }

    else
    {
      sub_100058144();
      v27 = v45;
      *(v4 + 40) = v45;
      if (v33)
      {
        goto LABEL_23;
      }
    }

LABEL_22:
    sub_10005F8A8(v29, a1, _swiftEmptyArrayStorage, v27);
    goto LABEL_23;
  }

  sub_10005909C(v32, isUniquelyReferenced_nonNull_native);
  v27 = v45;
  v34 = sub_10005F8DC(a1);
  if ((v33 & 1) != (v35 & 1))
  {
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v29 = v34;
  *(v4 + 40) = v27;
  if ((v33 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_23:
  v4 = v27[7];
  a1 = *(v4 + 8 * v29);
  v36 = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 8 * v29) = a1;
  if ((v36 & 1) == 0)
  {
LABEL_28:
    a1 = sub_1000FFE40(0, *(a1 + 16) + 1, 1, a1);
    *(v4 + 8 * v29) = a1;
  }

  v38 = *(a1 + 16);
  v37 = *(a1 + 24);
  if (v38 >= v37 >> 1)
  {
    a1 = sub_1000FFE40((v37 > 1), v38 + 1, 1, a1);
    *(v4 + 8 * v29) = a1;
  }

  *(a1 + 16) = v38 + 1;
  v39 = (a1 + 16 * v38);
  v39[4] = &unk_10010A248;
  v39[5] = v24;
  return swift_endAccess();
}

uint64_t sub_1000EE5B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[4] = a2;
  type metadata accessor for CommunicationActor();
  v4[7] = static CommunicationActor.shared.getter();
  sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[8] = v6;
  v4[9] = v5;

  return _swift_task_switch(sub_1000EE684, v6, v5);
}

uint64_t sub_1000EE684()
{
  v1 = v0[4];
  MessageBody.deserialized<A>()();
  v6 = (v0[5] + *v0[5]);
  v2 = *(v0[5] + 4);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_1000EE7E4;
  v4 = v0[6];

  return v6(v0 + 2);
}

uint64_t sub_1000EE7E4()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  v2[11] = v0;

  sub_10000C868(v2[2], v2[3]);
  v5 = v2[8];
  v6 = v2[9];
  if (v0)
  {
    v7 = sub_1000EE984;
  }

  else
  {
    v7 = sub_1000EE920;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1000EE920()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000EE984()
{
  v1 = v0[7];

  v2 = v0[11];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1000EE9E8(uint64_t a1, uint64_t a2, int *a3)
{
  v9 = (a3 + *a3);
  v6 = a3[1];
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000045BC;

  return v9(a1, a2);
}

uint64_t sub_1000EEAE8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5, uint64_t a6, int a7)
{
  *(v7 + 596) = a7;
  *(v7 + 592) = a5;
  *(v7 + 604) = a4;
  *(v7 + 152) = a3;
  *(v7 + 160) = a6;
  *(v7 + 136) = a1;
  *(v7 + 144) = a2;
  v8 = type metadata accessor for ProtocolVersion();
  *(v7 + 168) = v8;
  v9 = *(v8 - 8);
  *(v7 + 176) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 184) = swift_task_alloc();
  *(v7 + 192) = swift_task_alloc();
  v11 = type metadata accessor for Message.Operation();
  *(v7 + 200) = v11;
  v12 = *(v11 - 8);
  *(v7 + 208) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 216) = swift_task_alloc();
  *(v7 + 224) = swift_task_alloc();
  v14 = type metadata accessor for Message();
  *(v7 + 232) = v14;
  v15 = *(v14 - 8);
  *(v7 + 240) = v15;
  v16 = *(v15 + 64) + 15;
  *(v7 + 248) = swift_task_alloc();
  *(v7 + 256) = swift_task_alloc();
  *(v7 + 264) = swift_task_alloc();
  v17 = *(*(sub_10000560C(&qword_10012B458, &qword_10010A148) - 8) + 64) + 15;
  *(v7 + 272) = swift_task_alloc();
  v18 = sub_10000560C(&qword_10012B460, &qword_10010A150);
  *(v7 + 280) = v18;
  v19 = *(v18 - 8);
  *(v7 + 288) = v19;
  v20 = *(v19 + 64) + 15;
  *(v7 + 296) = swift_task_alloc();
  v21 = type metadata accessor for AsyncBufferSequencePolicy();
  *(v7 + 304) = v21;
  v22 = *(v21 - 8);
  *(v7 + 312) = v22;
  v23 = *(v22 + 64) + 15;
  *(v7 + 320) = swift_task_alloc();
  v24 = sub_10000560C(&qword_10012B468, &qword_10010A158);
  *(v7 + 328) = v24;
  v25 = *(v24 - 8);
  *(v7 + 336) = v25;
  v26 = *(v25 + 64) + 15;
  *(v7 + 344) = swift_task_alloc();
  v27 = type metadata accessor for MessageBody();
  *(v7 + 352) = v27;
  v28 = *(v27 - 8);
  *(v7 + 360) = v28;
  v29 = *(v28 + 64) + 15;
  *(v7 + 368) = swift_task_alloc();
  *(v7 + 376) = swift_task_alloc();
  *(v7 + 384) = swift_task_alloc();
  *(v7 + 392) = swift_task_alloc();
  *(v7 + 400) = swift_task_alloc();
  v30 = sub_10000560C(&qword_10012B470, &qword_10010A160);
  *(v7 + 408) = v30;
  v31 = *(v30 - 8);
  *(v7 + 416) = v31;
  v32 = *(v31 + 64) + 15;
  *(v7 + 424) = swift_task_alloc();
  v33 = type metadata accessor for Logger();
  *(v7 + 432) = v33;
  v34 = *(v33 - 8);
  *(v7 + 440) = v34;
  v35 = *(v34 + 64) + 15;
  *(v7 + 448) = swift_task_alloc();
  *(v7 + 456) = swift_task_alloc();

  return _swift_task_switch(sub_1000EEF60, 0, 0);
}

uint64_t sub_1000EEF60()
{
  type metadata accessor for CommunicationActor();
  *(v0 + 464) = static CommunicationActor.shared.getter();
  sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000EF024, v2, v1);
}

uint64_t sub_1000EF024()
{
  v1 = v0[58];
  v2 = v0[19];

  swift_beginAccess();
  v0[59] = *(v2 + 32);

  return _swift_task_switch(sub_1000EF0B4, 0, 0);
}

uint64_t sub_1000EF0B4()
{
  if (*(*(v0 + 472) + 16) && (v1 = sub_10005F8DC(*(v0 + 604)), (v2 & 1) != 0))
  {
    v3 = *(v0 + 456);
    v4 = *(*(v0 + 472) + 56) + 16 * v1;
    v5 = *v4;
    *(v0 + 480) = *(v4 + 8);

    static Log.network.getter();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 592);
      v9 = swift_slowAlloc();
      *v9 = 67109120;
      *(v9 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v6, v7, "handleMessage: Calling handler for: %u", v9, 8u);
    }

    v10 = *(v0 + 456);
    v11 = *(v0 + 432);
    v12 = *(v0 + 440);
    v13 = *(v0 + 400);
    v14 = *(v0 + 160);

    (*(v12 + 8))(v10, v11);
    Message.content.getter();
    v5(v13);
    v35 = *(v0 + 424);
    v36 = *(v0 + 400);
    v37 = *(v0 + 352);
    v38 = *(v0 + 360);
    v39 = *(v0 + 336);
    v40 = *(v0 + 344);
    v42 = *(v0 + 320);
    v41 = *(v0 + 328);
    v44 = *(v0 + 304);
    v43 = *(v0 + 312);
    v61 = *(v0 + 296);
    v63 = *(v0 + 408);
    v45 = *(v38 + 8);
    *(v0 + 488) = v45;
    *(v0 + 496) = (v38 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v45(v36, v37);
    v46 = *(v0 + 48);
    sub_10000C3CC((v0 + 16), *(v0 + 40));
    AsyncSequence.generic.getter();
    static AsyncBufferSequencePolicy.bounded(_:)();
    sub_10000CC24(&qword_10012B478, &qword_10012B468, &qword_10010A158);
    AsyncSequence<>.buffer(policy:)();
    (*(v43 + 8))(v42, v44);
    (*(v39 + 8))(v40, v41);
    sub_10000C304((v0 + 16));
    AsyncBufferSequence.makeAsyncIterator()();
    *(v0 + 600) = enum case for Message.Operation.response(_:);
    v47 = sub_10000CC24(&qword_10012B480, &qword_10012B460, &qword_10010A150);
    v48 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
    v49 = swift_task_alloc();
    *(v0 + 504) = v49;
    *v49 = v0;
    v49[1] = sub_1000EF6A0;
    v50 = *(v0 + 296);
    v51 = *(v0 + 272);
    v52 = *(v0 + 280);

    return dispatch thunk of AsyncIteratorProtocol.next()(v51, v52, v47);
  }

  else
  {
    v15 = *(v0 + 448);

    static Log.network.getter();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = *(v0 + 592);
      v19 = swift_slowAlloc();
      *v19 = 67109120;
      *(v19 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v16, v17, "handleMessage: No handler registered for request: %u", v19, 8u);
    }

    v21 = *(v0 + 440);
    v20 = *(v0 + 448);
    v22 = *(v0 + 432);

    (*(v21 + 8))(v20, v22);
    v24 = *(v0 + 448);
    v23 = *(v0 + 456);
    v25 = *(v0 + 424);
    v26 = *(v0 + 392);
    v27 = *(v0 + 400);
    v29 = *(v0 + 376);
    v28 = *(v0 + 384);
    v30 = *(v0 + 368);
    v31 = *(v0 + 344);
    v32 = *(v0 + 320);
    v53 = *(v0 + 296);
    v54 = *(v0 + 272);
    v55 = *(v0 + 264);
    v56 = *(v0 + 256);
    v57 = *(v0 + 248);
    v58 = *(v0 + 224);
    v59 = *(v0 + 216);
    v60 = *(v0 + 192);
    v62 = *(v0 + 184);

    v33 = *(v0 + 8);

    return v33();
  }
}

uint64_t sub_1000EF6A0()
{
  v2 = *(*v1 + 504);
  v5 = *v1;
  *(*v1 + 512) = v0;

  if (v0)
  {
    v3 = sub_1000EFAD4;
  }

  else
  {
    v3 = sub_1000EF7B4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000EF7B4()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 360);
  v3 = *(v0 + 272);
  v4 = (*(v2 + 48))(v3, 1, v1);
  v5 = *(v0 + 600);
  if (v4 == 1)
  {
    v31 = *(v0 + 488);
    v32 = *(v0 + 496);
    v6 = *(v0 + 384);
    v35 = *(v0 + 256);
    v7 = *(v0 + 224);
    v8 = *(v0 + 200);
    v9 = *(v0 + 208);
    v10 = *(v0 + 192);
    v11 = *(v0 + 176);
    v12 = *(v0 + 596);
    v29 = v8;
    v30 = *(v0 + 168);
    v13 = *(v0 + 160);
    v33 = *(v0 + 392);
    v34 = *(v0 + 136);
    (*(*(v0 + 288) + 8))(*(v0 + 296), *(v0 + 280));
    *v7 = v12;
    v14 = *(v9 + 104);
    *(v0 + 544) = v14;
    v14(v7, v5, v29);
    Message.content.getter();
    MessageBody.version.getter();
    v31(v6, v1);
    static MessageBody.empty(version:)();
    (*(v11 + 8))(v10, v30);
    Message.init(operation:content:complete:)();
    v36 = (v34 + *v34);
    v15 = v34[1];
    v16 = swift_task_alloc();
    *(v0 + 552) = v16;
    *v16 = v0;
    v16[1] = sub_1000F011C;
    v17 = *(v0 + 256);
  }

  else
  {
    v18 = *(v0 + 392);
    v19 = *(v0 + 264);
    v20 = *(v0 + 224);
    v21 = *(v0 + 200);
    v22 = *(v0 + 208);
    v23 = *(v0 + 136);
    *v20 = *(v0 + 596);
    v24 = *(v22 + 104);
    *(v0 + 520) = v24;
    v24(v20, v5, v21);
    (*(v2 + 32))(v18, v3, v1);
    Message.init(operation:content:complete:)();
    v36 = (v23 + *v23);
    v25 = v23[1];
    v26 = swift_task_alloc();
    *(v0 + 528) = v26;
    *v26 = v0;
    v26[1] = sub_1000EFF04;
    v17 = *(v0 + 264);
  }

  v27 = *(v0 + 144);

  return v36(v17);
}

uint64_t sub_1000EFAD4()
{
  *(v0 + 120) = *(v0 + 512);
  sub_10000560C(&qword_10012A308, &qword_100109000);
  swift_willThrowTypedImpl();

  return _swift_task_switch(sub_1000EFB68, 0, 0);
}

uint64_t sub_1000EFB68()
{
  v1 = *(v0 + 208);
  (*(*(v0 + 288) + 8))(*(v0 + 296), *(v0 + 280));
  v2 = *(v1 + 104);
  *(v0 + 568) = *(v0 + 512);
  v3 = *(v0 + 488);
  v4 = *(v0 + 496);
  v5 = *(v0 + 368);
  v23 = *(v0 + 376);
  v6 = *(v0 + 352);
  v7 = *(v0 + 200);
  v8 = *(v0 + 184);
  v9 = *(v0 + 160);
  v10 = *(v0 + 208) + 104;
  **(v0 + 216) = *(v0 + 596);
  v2();
  v11._countAndFlagsBits = 0x203A726F727245;
  v11._object = 0xE700000000000000;
  String.append(_:)(v11);
  swift_getErrorValue();
  v12 = *(v0 + 80);
  v13 = *(v0 + 88);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  *(v0 + 104) = 0;
  *(v0 + 112) = 0xE000000000000000;
  Message.content.getter();
  MessageBody.version.getter();
  v3(v5, v6);
  MessageBody.init<A>(serializable:version:)();
  v14 = *(v0 + 376);
  v15 = *(v0 + 248);
  v16 = *(v0 + 216);
  v17 = *(v0 + 136);
  Message.init(operation:content:complete:)();
  v24 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v0 + 576) = v19;
  *v19 = v0;
  v19[1] = sub_1000F061C;
  v20 = *(v0 + 248);
  v21 = *(v0 + 144);

  return v24(v20);
}