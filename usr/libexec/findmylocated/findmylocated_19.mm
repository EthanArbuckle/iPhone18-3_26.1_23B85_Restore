uint64_t sub_1001E8004()
{
  v23 = v0;
  (*(v0[53] + 8))(v0[56], v0[52]);
  sub_100004984(v0 + 27);
  sub_100004984(v0 + 22);
  v1 = v0[63];
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFF18);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v5 = 136446467;
    *(v5 + 4) = sub_10000D01C(0xD00000000000002ALL, 0x80000001004E52E0, &v22);
    *(v5 + 12) = 2081;
    swift_getErrorValue();
    v7 = v0[32];
    v6 = v0[33];
    v8 = v0[34];
    v9 = Error.localizedDescription.getter();
    v11 = sub_10000D01C(v9, v10, &v22);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s: Sending command failed. Error: %{private}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v12 = v0[45];
  v0[35] = v1;
  sub_10004B564(&qword_1005B0138, &qword_1004D16C8);
  CheckedContinuation.resume(throwing:)();
  v14 = v0[55];
  v13 = v0[56];
  v15 = v0[54];
  v17 = v0[50];
  v16 = v0[51];
  v19 = v0[48];
  v18 = v0[49];

  v20 = v0[1];

  return v20();
}

uint64_t sub_1001E827C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[40] = a4;
  v5[41] = v4;
  v5[38] = a2;
  v5[39] = a3;
  v5[37] = a1;
  v6 = type metadata accessor for Response();
  v5[42] = v6;
  v7 = *(v6 - 8);
  v5[43] = v7;
  v8 = *(v7 + 64) + 15;
  v5[44] = swift_task_alloc();
  v9 = type metadata accessor for Account();
  v5[45] = v9;
  v10 = *(v9 - 8);
  v5[46] = v10;
  v11 = *(v10 + 64) + 15;
  v5[47] = swift_task_alloc();

  return _swift_task_switch(sub_1001E83A0, v4, 0);
}

uint64_t sub_1001E83A0()
{
  v81 = v0;
  v1 = v0[40];
  v2 = Response.response.getter();
  v3 = [v2 statusCode];

  v4 = sub_100181DA8(v3);
  if (v4 == 21)
  {
    if (qword_1005A80B8 != -1)
    {
      swift_once();
    }

    v6 = v0[43];
    v5 = v0[44];
    v7 = v0[42];
    v8 = v0[40];
    v9 = type metadata accessor for Logger();
    sub_10000A6F0(v9, qword_1005DFF18);
    v10 = *(v6 + 16);
    v10(v5, v8, v7);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    v13 = os_log_type_enabled(v11, v12);
    v15 = v0[43];
    v14 = v0[44];
    v16 = v0[42];
    if (v13)
    {
      v79 = v10;
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      v18 = Response.response.getter();
      v19 = [v18 statusCode];

      (*(v15 + 8))(v14, v16);
      *(v17 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v11, v12, "Invalid status code: %ld", v17, 0xCu);
      v10 = v79;
    }

    else
    {
      (*(v15 + 8))(v0[44], v0[42]);
    }

    v35 = v0[42];
    v36 = v0[40];
    v37 = v0[37];

    v10(v37, v36, v35);
LABEL_18:
    v38 = v0[47];
    v39 = v0[44];

    v40 = v0[1];
  }

  else
  {
    v20 = v4;
    if (qword_1005A80B8 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    v0[48] = sub_10000A6F0(v21, qword_1005DFF18);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v80[0] = swift_slowAlloc();
      *v24 = 136446466;
      *(v24 + 4) = sub_10000D01C(0xD000000000000036, 0x80000001004E52A0, v80);
      *(v24 + 12) = 2080;
      v25 = sub_10018166C(v20);
      v27 = sub_10000D01C(v25, v26, v80);

      *(v24 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v22, v23, "%{public}s statusCode: %s", v24, 0x16u);
      swift_arrayDestroy();
    }

    switch(v20)
    {
      case 1:
        sub_100011004(v0[38], (v0 + 27));
        v28 = Logger.logObject.getter();
        v46 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v28, v46))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v80[0] = v48;
          *v47 = 136315138;
          sub_100011004((v0 + 27), (v0 + 32));
          sub_10004B564(&qword_1005AFFC0, &qword_1004D14C0);
          v49 = String.init<A>(describing:)();
          v51 = v50;
          sub_100004984(v0 + 27);
          v52 = sub_10000D01C(v49, v51, v80);

          *(v47 + 4) = v52;
          _os_log_impl(&_mh_execute_header, v28, v46, "%s succeeded!", v47, 0xCu);
          sub_100004984(v48);

          goto LABEL_13;
        }

        sub_100004984(v0 + 27);
        goto LABEL_15;
      case 5:
        v55 = v0[41];

        v56 = Logger.logObject.getter();
        v57 = static os_log_type_t.default.getter();
        v58 = os_log_type_enabled(v56, v57);
        v59 = v0[41];
        if (v58)
        {
          v60 = swift_slowAlloc();
          *v60 = 134217984;
          *(v60 + 4) = *(v59 + OBJC_IVAR____TtC13findmylocated11DataManager_retryCount);

          _os_log_impl(&_mh_execute_header, v56, v57, "Need to renew credentials. Retry count: %ld", v60, 0xCu);
        }

        else
        {
          v70 = v0[41];
        }

        v71 = v0[41];
        v72 = *(v71 + OBJC_IVAR____TtC13findmylocated11DataManager_retryCount);
        if (v72 <= 0)
        {
          *(v71 + OBJC_IVAR____TtC13findmylocated11DataManager_retryCount) = v72 + 1;
          v77 = async function pointer to daemon.getter[1];
          v78 = swift_task_alloc();
          v0[49] = v78;
          *v78 = v0;
          v78[1] = sub_1001E8F78;

          return daemon.getter();
        }

        v73 = Logger.logObject.getter();
        v74 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v73, v74))
        {
          v75 = swift_slowAlloc();
          *v75 = 134217984;
          *(v75 + 4) = 1;
          _os_log_impl(&_mh_execute_header, v73, v74, "Exceeded retry limit: %ld", v75, 0xCu);
        }

        sub_10020ADDC();
        swift_allocError();
        *v76 = 3;
LABEL_34:
        swift_willThrow();
        v67 = v0[47];
        v68 = v0[44];

        v40 = v0[1];
        break;
      case 9:
        v41 = type metadata accessor for Fence.Error();
        sub_1001E6D00(&qword_1005B00E8, &type metadata accessor for Fence.Error);
        swift_allocError();
        v43 = v42;
        v44 = &enum case for Fence.Error.fenceCannotBeSet(_:);
        goto LABEL_33;
      case 12:
        v41 = type metadata accessor for Fence.Error();
        sub_1001E6D00(&qword_1005B00E8, &type metadata accessor for Fence.Error);
        swift_allocError();
        v43 = v45;
        v44 = &enum case for Fence.Error.upgradeNeeded(_:);
        goto LABEL_33;
      case 13:
        v41 = type metadata accessor for Fence.Error();
        sub_1001E6D00(&qword_1005B00E8, &type metadata accessor for Fence.Error);
        swift_allocError();
        v43 = v54;
        v44 = &enum case for Fence.Error.appUpgradeNeeded(_:);
        goto LABEL_33;
      case 14:
        v41 = type metadata accessor for Fence.Error();
        sub_1001E6D00(&qword_1005B00E8, &type metadata accessor for Fence.Error);
        swift_allocError();
        v43 = v64;
        v44 = &enum case for Fence.Error.geoFencingDisabled(_:);
        goto LABEL_33;
      case 15:
        v41 = type metadata accessor for Fence.Error();
        sub_1001E6D00(&qword_1005B00E8, &type metadata accessor for Fence.Error);
        swift_allocError();
        v43 = v53;
        v44 = &enum case for Fence.Error.deviceUpgradeNeeded(_:);
        goto LABEL_33;
      case 16:
        v41 = type metadata accessor for Fence.Error();
        sub_1001E6D00(&qword_1005B00E8, &type metadata accessor for Fence.Error);
        swift_allocError();
        v43 = v66;
        v44 = &enum case for Fence.Error.noMeDevice(_:);
        goto LABEL_33;
      case 17:
        v41 = type metadata accessor for Fence.Error();
        sub_1001E6D00(&qword_1005B00E8, &type metadata accessor for Fence.Error);
        swift_allocError();
        v43 = v61;
        v44 = &enum case for Fence.Error.phoneNumberOutOfNetwork(_:);
        goto LABEL_33;
      case 18:
        v41 = type metadata accessor for Fence.Error();
        sub_1001E6D00(&qword_1005B00E8, &type metadata accessor for Fence.Error);
        swift_allocError();
        v43 = v63;
        v44 = &enum case for Fence.Error.regionNotAvailable(_:);
        goto LABEL_33;
      case 19:
        v41 = type metadata accessor for Fence.Error();
        sub_1001E6D00(&qword_1005B00E8, &type metadata accessor for Fence.Error);
        swift_allocError();
        v43 = v65;
        v44 = &enum case for Fence.Error.fenceMaxLimitNotifyOthers(_:);
        goto LABEL_33;
      case 20:
        v41 = type metadata accessor for Fence.Error();
        sub_1001E6D00(&qword_1005B00E8, &type metadata accessor for Fence.Error);
        swift_allocError();
        v43 = v62;
        v44 = &enum case for Fence.Error.fenceMaxLimit(_:);
LABEL_33:
        (*(*(v41 - 8) + 104))(v43, *v44, v41);
        goto LABEL_34;
      default:
        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v80[0] = v31;
          *v30 = 136446210;
          v32 = sub_10018166C(v20);
          v34 = sub_10000D01C(v32, v33, v80);

          *(v30 + 4) = v34;
          _os_log_impl(&_mh_execute_header, v28, v29, "Unhandled status: %{public}s", v30, 0xCu);
          sub_100004984(v31);

LABEL_13:
        }

LABEL_15:
        (*(v0[43] + 16))(v0[37], v0[40], v0[42]);
        goto LABEL_18;
    }
  }

  return v40();
}

uint64_t sub_1001E8F78(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 392);
  v12 = *v1;
  *(v3 + 400) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 408) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for AccountService(0);
  v9 = sub_1001E6D00(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_1001E6D00(&qword_1005A9118, type metadata accessor for AccountService);
  *v6 = v12;
  v6[1] = sub_1001E9154;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1001E9154(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 408);
  v6 = *v2;
  v4[52] = a1;
  v4[53] = v1;

  if (v1)
  {
    v7 = v4[41];

    return _swift_task_switch(sub_1001E9948, v7, 0);
  }

  else
  {
    v8 = v4[50];

    v9 = swift_task_alloc();
    v4[54] = v9;
    *v9 = v6;
    v9[1] = sub_1001E92E0;
    v10 = v4[47];

    return sub_10049A7FC(v10);
  }
}

uint64_t sub_1001E92E0()
{
  v2 = *v1;
  v3 = *(*v1 + 432);
  v4 = *v1;
  *(*v1 + 440) = v0;

  v5 = *(v2 + 328);
  if (v0)
  {
    v6 = sub_1001E99C0;
  }

  else
  {
    v6 = sub_1001E940C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1001E940C()
{
  v28 = v0;
  v1 = v0[48];
  v2 = v0[39];
  sub_100011004(v0[38], (v0 + 2));
  sub_100011004(v2, (v0 + 7));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v5 = 136315394;
    sub_100011004((v0 + 2), (v0 + 22));
    sub_10004B564(&qword_1005AFFC0, &qword_1004D14C0);
    v6 = String.init<A>(describing:)();
    v8 = v7;
    sub_100004984(v0 + 2);
    v9 = sub_10000D01C(v6, v8, &v27);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    v10 = v0[11];
    sub_100011AEC(v0 + 7, v0[10]);
    v11 = *(*(v10 + 8) + 8);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    sub_100004984(v0 + 7);
    v15 = sub_10000D01C(v12, v14, &v27);

    *(v5 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "Retry sending command to %s %s", v5, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100004984(v0 + 2);
    sub_100004984(v0 + 7);
  }

  v16 = v0[47];
  sub_100011004(v0[41] + OBJC_IVAR____TtC13findmylocated11DataManager_sic, (v0 + 12));
  v17 = v0[15];
  v18 = v0[16];
  sub_100011AEC(v0 + 12, v17);
  Account.dsid.getter();
  Account.appToken.getter();
  v0[20] = type metadata accessor for BasicCredential();
  v0[21] = &protocol witness table for BasicCredential;
  sub_10000331C(v0 + 17);
  BasicCredential.init(username:password:)();
  v19 = *(v18 + 8);
  v26 = (v19 + *v19);
  v20 = v19[1];
  v21 = swift_task_alloc();
  v0[56] = v21;
  *v21 = v0;
  v21[1] = sub_1001E9758;
  v22 = v0[38];
  v23 = v0[39];
  v24 = v0[37];

  return v26(v24, v22, v23, v0 + 17, v17, v18);
}

uint64_t sub_1001E9758()
{
  v2 = *v1;
  v3 = *(*v1 + 448);
  v4 = *v1;
  *(v2 + 456) = v0;

  v5 = *(v2 + 328);
  sub_100002CE0(v2 + 136, &qword_1005A9138, &qword_1004C2600);
  if (v0)
  {
    v6 = sub_1001E9A38;
  }

  else
  {
    v6 = sub_1001E98A0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1001E98A0()
{
  v1 = v0[52];
  v3 = v0[46];
  v2 = v0[47];
  v4 = v0[45];

  (*(v3 + 8))(v2, v4);
  sub_100004984(v0 + 12);
  v5 = v0[47];
  v6 = v0[44];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1001E9948()
{
  v1 = v0[50];

  v2 = v0[53];
  v3 = v0[47];
  v4 = v0[44];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1001E99C0()
{
  v1 = v0[52];

  v2 = v0[55];
  v3 = v0[47];
  v4 = v0[44];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1001E9A38()
{
  v1 = v0[52];
  v3 = v0[46];
  v2 = v0[47];
  v4 = v0[45];

  (*(v3 + 8))(v2, v4);
  sub_100004984(v0 + 12);
  v5 = v0[57];
  v6 = v0[47];
  v7 = v0[44];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1001E9AE0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Response();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = Response.response.getter();
  v12 = [v11 statusCode];

  v13 = sub_100181DA8(v12);
  if (v13 == 21)
  {
    v39 = a2;
    if (qword_1005A80B8 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_10000A6F0(v20, qword_1005DFF18);
    (*(v7 + 16))(v10, a1, v6);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v40 = v24;
      *v23 = 136446466;
      *(v23 + 4) = sub_10000D01C(0xD00000000000002ALL, 0x80000001004E52E0, &v40);
      *(v23 + 12) = 2050;
      v25 = Response.response.getter();
      v26 = [v25 statusCode];

      (*(v7 + 8))(v10, v6);
      *(v23 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v21, v22, "%{public}s: Invalid status code: %{public}ld", v23, 0x16u);
      sub_100004984(v24);
    }

    else
    {
      (*(v7 + 8))(v10, v6);
    }

    a2 = v39;
    sub_10020B050();
    v35 = swift_allocError();
    *v37 = 0;
    goto LABEL_19;
  }

  if (v13 != 1)
  {
    v27 = v13;
    if (qword_1005A80B8 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_10000A6F0(v28, qword_1005DFF18);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v31 = 136446466;
      *(v31 + 4) = sub_10000D01C(0xD00000000000002ALL, 0x80000001004E52E0, &v40);
      *(v31 + 12) = 2082;
      v32 = sub_10018166C(v27);
      v34 = sub_10000D01C(v32, v33, &v40);

      *(v31 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v29, v30, "%{public}s: Request failed. Status code: %{public}s", v31, 0x16u);
      swift_arrayDestroy();
    }

    sub_10020B050();
    v35 = swift_allocError();
    *v36 = 1;
LABEL_19:
    result = swift_willThrow();
    *a2 = v35;
    return result;
  }

  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000A6F0(v14, qword_1005DFF18);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v40 = v18;
    *v17 = 136446210;
    *(v17 + 4) = sub_10000D01C(0xD00000000000002ALL, 0x80000001004E52E0, &v40);
    _os_log_impl(&_mh_execute_header, v15, v16, "%{public}s: Success response.", v17, 0xCu);
    sub_100004984(v18);
  }

  return (*(v7 + 16))(a3, a1, v6);
}

uint64_t sub_1001EA044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v47 = a6;
  v11 = type metadata accessor for UUID();
  v44 = *(v11 - 8);
  v45 = v11;
  v12 = *(v44 + 64);
  __chkstk_darwin(v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10004B564(&qword_1005AFFB8, &qword_1004D14A0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v43 - v18;
  v46 = type metadata accessor for WorkItemQueue.WorkItem();
  v48 = a2;
  sub_100011004(a2, v52);
  sub_100011004(a3, v51);
  sub_100005F04(a5, v49, &qword_1005A9138, &qword_1004C2600);
  (*(v16 + 16))(v19, a1, v15);
  v20 = (*(v16 + 80) + 144) & ~*(v16 + 80);
  v21 = (v17 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  sub_100010BD4(v52, v22 + 16);
  sub_100010BD4(v51, v22 + 56);
  *(v22 + 96) = a4;
  v23 = v49[1];
  *(v22 + 104) = v49[0];
  *(v22 + 120) = v23;
  *(v22 + 136) = v50;
  (*(v16 + 32))(v22 + v20, v19, v15);
  *(v22 + v21) = v47;

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_10000A6F0(v24, qword_1005DFF18);
  sub_100011004(v48, v52);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *&v49[0] = swift_slowAlloc();
    *v27 = 136446722;
    sub_100011004(v52, v51);
    sub_10004B564(&qword_1005AFFC0, &qword_1004D14C0);
    v28 = String.init<A>(describing:)();
    v30 = v29;
    sub_100004984(v52);
    v31 = sub_10000D01C(v28, v30, v49);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2082;
    v32 = *(a4 + 160);
    v33 = WorkItemQueue.name.getter();
    v35 = sub_10000D01C(v33, v34, v49);

    *(v27 + 14) = v35;
    *(v27 + 22) = 2082;
    WorkItemQueue.WorkItem.id.getter();
    sub_1001E6D00(&qword_1005A92C0, &type metadata accessor for UUID);
    v36 = v45;
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    v39 = v38;
    (*(v44 + 8))(v14, v36);
    v40 = sub_10000D01C(v37, v39, v49);

    *(v27 + 24) = v40;
    _os_log_impl(&_mh_execute_header, v25, v26, "Scheduling command to %{public}s on %{public}s.\nWorkItem: %{public}s", v27, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100004984(v52);
  }

  v41 = *(a4 + 160);
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_1001EA544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[651] = a6;
  v6[650] = a5;
  v6[649] = a4;
  v6[648] = a3;
  v6[647] = a2;
  v6[646] = a1;
  v7 = type metadata accessor for Date();
  v6[652] = v7;
  v8 = *(v7 - 8);
  v6[653] = v8;
  v9 = *(v8 + 64) + 15;
  v6[654] = swift_task_alloc();
  v10 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v6[655] = v10;
  v11 = *(v10 - 8);
  v6[656] = v11;
  v12 = *(v11 + 64) + 15;
  v6[657] = swift_task_alloc();
  refreshed = type metadata accessor for RefreshClientEndpoint();
  v6[658] = refreshed;
  v14 = *(*(refreshed - 8) + 64) + 15;
  v6[659] = swift_task_alloc();
  v15 = type metadata accessor for ContinuousClock.Instant();
  v6[660] = v15;
  v16 = *(v15 - 8);
  v6[661] = v16;
  v17 = *(v16 + 64) + 15;
  v6[662] = swift_task_alloc();
  v6[663] = swift_task_alloc();
  v6[664] = swift_task_alloc();
  v6[665] = swift_task_alloc();
  v18 = type metadata accessor for ContinuousClock();
  v6[666] = v18;
  v19 = *(v18 - 8);
  v6[667] = v19;
  v20 = *(v19 + 64) + 15;
  v6[668] = swift_task_alloc();
  v21 = type metadata accessor for Response();
  v6[669] = v21;
  v22 = *(v21 - 8);
  v6[670] = v22;
  v23 = *(v22 + 64) + 15;
  v6[671] = swift_task_alloc();
  v6[672] = swift_task_alloc();
  v24 = type metadata accessor for UUID();
  v6[673] = v24;
  v25 = *(v24 - 8);
  v6[674] = v25;
  v26 = *(v25 + 64) + 15;
  v6[675] = swift_task_alloc();

  return _swift_task_switch(sub_1001EA844, 0, 0);
}

uint64_t sub_1001EA844()
{
  v29 = v0;
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v1 = v0[648];
  v2 = v0[647];
  v3 = v0[646];
  v4 = type metadata accessor for Logger();
  v0[676] = sub_10000A6F0(v4, qword_1005DFF18);
  sub_100011004(v2, (v0 + 612));
  sub_100011004(v1, (v0 + 617));

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[675];
    v8 = v0[674];
    v9 = v0[673];
    v10 = v0[646];
    v11 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v11 = 136446722;
    sub_100011004((v0 + 612), (v0 + 637));
    sub_10004B564(&qword_1005AFFC0, &qword_1004D14C0);
    v12 = String.init<A>(describing:)();
    v14 = v13;
    sub_100004984(v0 + 612);
    v15 = sub_10000D01C(v12, v14, &v28);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2082;
    WorkItemQueue.WorkItem.id.getter();
    sub_1001E6D00(&qword_1005A92C0, &type metadata accessor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v8 + 8))(v7, v9);
    v19 = sub_10000D01C(v16, v18, &v28);

    *(v11 + 14) = v19;
    *(v11 + 22) = 2080;
    v20 = v0[621];
    sub_100011AEC(v0 + 617, v0[620]);
    v21 = *(*(v20 + 8) + 8);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    sub_100004984(v0 + 617);
    v25 = sub_10000D01C(v22, v24, &v28);

    *(v11 + 24) = v25;
    _os_log_impl(&_mh_execute_header, v5, v6, "Sending command to %{public}s\nWorkItem: %{public}s\n%s", v11, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100004984(v0 + 612);
    sub_100004984(v0 + 617);
  }

  v26 = v0[649];

  return _swift_task_switch(sub_1001EAB84, v26, 0);
}

uint64_t sub_1001EAB84()
{
  sub_100011004(*(v0 + 5192) + OBJC_IVAR____TtC13findmylocated11DataManager_sic, v0 + 4976);

  return _swift_task_switch(sub_1001EAC00, 0, 0);
}

uint64_t sub_1001EAC00()
{
  v1 = v0[625];
  v2 = v0[626];
  sub_100011AEC(v0 + 622, v1);
  v3 = *(v2 + 8);
  v11 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[677] = v5;
  *v5 = v0;
  v5[1] = sub_1001EAD40;
  v6 = v0[672];
  v7 = v0[650];
  v8 = v0[648];
  v9 = v0[647];

  return v11(v6, v9, v8, v7, v1, v2);
}

uint64_t sub_1001EAD40()
{
  v2 = *(*v1 + 5416);
  v5 = *v1;
  *(*v1 + 5424) = v0;

  if (v0)
  {
    v3 = sub_1001EBFA4;
  }

  else
  {
    v3 = sub_1001EAE54;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001EAE54()
{
  sub_100004984(v0 + 622);
  v1 = swift_task_alloc();
  v0[679] = v1;
  *v1 = v0;
  v1[1] = sub_1001EAF04;
  v2 = v0[672];
  v3 = v0[671];
  v4 = v0[649];
  v5 = v0[648];
  v6 = v0[647];

  return sub_1001E827C(v3, v6, v5, v2);
}

uint64_t sub_1001EAF04()
{
  v2 = *(*v1 + 5432);
  v5 = *v1;
  *(*v1 + 5440) = v0;

  if (v0)
  {
    v3 = sub_1001EC1E0;
  }

  else
  {
    v3 = sub_1001EB018;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001EB018()
{
  v1 = v0[668];
  v2 = v0[665];
  v3 = v0[659];
  v4 = v0[658];
  v5 = v0[647];
  ContinuousClock.init()();
  ContinuousClock.now.getter();
  sub_100011004(v5, (v0 + 627));
  sub_10004B564(&qword_1005AFFC0, &qword_1004D14C0);
  v6 = swift_dynamicCast();
  if (v6)
  {
    sub_10020A58C(v0[659], type metadata accessor for RefreshClientEndpoint);
  }

  v7 = swift_task_alloc();
  v0[681] = v7;
  *v7 = v0;
  v7[1] = sub_1001EB148;
  v8 = v0[671];
  v9 = v0[649];

  return sub_1001EC55C(v8, v6);
}

uint64_t sub_1001EB148()
{
  v1 = *(*v0 + 5448);
  v3 = *v0;

  return _swift_task_switch(sub_1001EB244, 0, 0);
}

uint64_t sub_1001EB244()
{
  v137 = v0;
  v1 = *(v0 + 5408);
  v2 = *(v0 + 5344);
  v3 = *(v0 + 5320);
  v4 = *(v0 + 5312);
  v5 = *(v0 + 5304);
  v6 = *(v0 + 5296);
  v7 = *(v0 + 5288);
  v8 = *(v0 + 5280);
  ContinuousClock.now.getter();
  v9 = *(v7 + 16);
  v9(v5, v3, v8);
  v9(v6, v4, v8);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 5304);
  v14 = *(v0 + 5296);
  v15 = *(v0 + 5288);
  v16 = *(v0 + 5280);
  if (v12)
  {
    v17 = *(v0 + 5256);
    v18 = *(v0 + 5248);
    v129 = *(v0 + 5240);
    v133 = v11;
    v19 = swift_slowAlloc();
    v131 = swift_slowAlloc();
    v136[0] = v131;
    *v19 = 136315138;
    static Duration.UnitsFormatStyle.Unit.milliseconds.getter();
    sub_1001E6D00(&qword_1005AFFD0, &type metadata accessor for ContinuousClock.Instant);
    v127 = static Duration.description<A>(_:_:units:)();
    v21 = v20;
    (*(v18 + 8))(v17, v129);
    v22 = *(v15 + 8);
    v22(v14, v16);
    v22(v13, v16);
    v23 = sub_10000D01C(v127, v21, v136);

    *(v19 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v10, v133, "updateData Duration: %s", v19, 0xCu);
    sub_100004984(v131);
  }

  else
  {

    v22 = *(v15 + 8);
    v22(v14, v16);
    v22(v13, v16);
  }

  *(v0 + 5456) = v22;
  v24 = *(v0 + 5408);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "Start decoding command response", v27, 2u);
  }

  v28 = *(v0 + 5440);
  v29 = *(v0 + 5368);

  v30 = type metadata accessor for JSONDecoder();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  v33 = Response.body.getter();
  v35 = v34;
  sub_1001FD71C();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v28)
  {
    v130 = *(v0 + 5368);
    v132 = *(v0 + 5376);
    v36 = v22;
    v37 = *(v0 + 5360);
    v126 = *(v0 + 5344);
    v128 = *(v0 + 5352);
    v134 = v28;
    v38 = *(v0 + 5336);
    v124 = *(v0 + 5320);
    v125 = *(v0 + 5328);
    v39 = *(v0 + 5312);
    v40 = *(v0 + 5288);
    v41 = *(v0 + 5280);
    sub_1000049D0(v33, v35);

    v36(v39, v41);
    v36(v124, v41);
    (*(v38 + 8))(v126, v125);
    v42 = *(v37 + 8);
    v42(v130, v128);
    v42(v132, v128);
    v43 = *(v0 + 5408);
    swift_errorRetain();
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v136[0] = v47;
      *v46 = 136446210;
      *(v0 + 5160) = v134;
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v48 = String.init<A>(describing:)();
      v50 = sub_10000D01C(v48, v49, v136);

      *(v46 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v44, v45, "sendCommand error: %{public}s", v46, 0xCu);
      sub_100004984(v47);
    }

    v51 = *(v0 + 5208);
    *(v0 + 5152) = v134;
    sub_10004B564(&qword_1005AFFB8, &qword_1004D14A0);
    CheckedContinuation.resume(throwing:)();
    v52 = *(v0 + 5400);
    v53 = *(v0 + 5376);
    v54 = *(v0 + 5368);
    v55 = *(v0 + 5344);
    v56 = *(v0 + 5320);
    v57 = *(v0 + 5312);
    v58 = *(v0 + 5304);
    v59 = *(v0 + 5296);
    v60 = *(v0 + 5272);
    v61 = *(v0 + 5256);
    v135 = *(v0 + 5232);

    v62 = *(v0 + 8);

    return v62();
  }

  v64 = (v0 + 4192);
  v65 = (v0 + 4368);
  v66 = *(v0 + 5408);
  v67 = *(v0 + 5184);
  sub_1000049D0(v33, v35);

  memcpy((v0 + 16), (v0 + 816), 0x320uLL);
  sub_100011004(v67, v0 + 5056);
  sub_10006DAC8(v0 + 16, v0 + 1616);
  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.default.getter();
  sub_10005D06C(v0 + 16);
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v136[0] = swift_slowAlloc();
    *v70 = 136315394;
    sub_100011AEC((v0 + 5056), *(v0 + 5080));
    swift_getDynamicType();
    v71 = _typeName(_:qualified:)();
    v73 = v72;
    sub_100004984((v0 + 5056));
    v74 = sub_10000D01C(v71, v73, v136);

    *(v70 + 4) = v74;
    *(v70 + 12) = 2080;
    sub_10006DAC8(v0 + 16, v0 + 3216);
    v75 = sub_100176040();
    v77 = v76;
    sub_10005D06C(v0 + 16);
    v78 = sub_10000D01C(v75, v77, v136);

    *(v70 + 14) = v78;
    _os_log_impl(&_mh_execute_header, v68, v69, "%s decoded response: %s", v70, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100004984((v0 + 5056));
  }

  v79 = *(v0 + 752);
  v81 = *(v0 + 768);
  v80 = *(v0 + 784);
  *(v0 + 4496) = v81;
  *(v0 + 4512) = v80;
  v82 = *(v0 + 784);
  *(v0 + 4528) = *(v0 + 800);
  v83 = *(v0 + 688);
  v85 = *(v0 + 704);
  v84 = *(v0 + 720);
  *(v0 + 4432) = v85;
  *(v0 + 4448) = v84;
  v86 = *(v0 + 720);
  v88 = *(v0 + 736);
  v87 = *(v0 + 752);
  *(v0 + 4464) = v88;
  *(v0 + 4480) = v87;
  v89 = *(v0 + 656);
  *v65 = *(v0 + 640);
  *(v0 + 4384) = v89;
  v90 = *(v0 + 688);
  v92 = *(v0 + 640);
  v91 = *(v0 + 656);
  v93 = *(v0 + 672);
  *(v0 + 4400) = v93;
  *(v0 + 4416) = v90;
  *(v0 + 4320) = v81;
  *(v0 + 4336) = v82;
  *(v0 + 4352) = *(v0 + 800);
  *(v0 + 4256) = v85;
  *(v0 + 4272) = v86;
  *(v0 + 4288) = v88;
  *(v0 + 4304) = v79;
  *v64 = v92;
  *(v0 + 4208) = v91;
  *(v0 + 4224) = v93;
  *(v0 + 4240) = v83;
  if (sub_10004AFD4(v0 + 4192) != 1)
  {
    v94 = *(v0 + 5408);
    v95 = *(v0 + 4336);
    *(v0 + 4144) = *(v0 + 4320);
    *(v0 + 4160) = v95;
    *(v0 + 4176) = *(v0 + 4352);
    v96 = *(v0 + 4272);
    *(v0 + 4080) = *(v0 + 4256);
    *(v0 + 4096) = v96;
    v97 = *(v0 + 4304);
    *(v0 + 4112) = *(v0 + 4288);
    *(v0 + 4128) = v97;
    v98 = *(v0 + 4208);
    *(v0 + 4016) = *v64;
    *(v0 + 4032) = v98;
    v99 = *(v0 + 4240);
    *(v0 + 4048) = *(v0 + 4224);
    *(v0 + 4064) = v99;
    v100 = *(v0 + 4512);
    *(v0 + 4672) = *(v0 + 4496);
    *(v0 + 4688) = v100;
    *(v0 + 4704) = *(v0 + 4528);
    v101 = *(v0 + 4448);
    *(v0 + 4608) = *(v0 + 4432);
    *(v0 + 4624) = v101;
    v102 = *(v0 + 4480);
    *(v0 + 4640) = *(v0 + 4464);
    *(v0 + 4656) = v102;
    v103 = *(v0 + 4384);
    *(v0 + 4544) = *v65;
    *(v0 + 4560) = v103;
    v104 = *(v0 + 4416);
    *(v0 + 4576) = *(v0 + 4400);
    *(v0 + 4592) = v104;
    sub_10017E60C(v0 + 4544, v0 + 4720);
    v105 = Logger.logObject.getter();
    v106 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v136[0] = v108;
      *v107 = 136446210;
      v109 = *(v0 + 4360);
      *(v0 + 5136) = *(v0 + 4352);
      *(v0 + 5144) = v109;

      sub_10004B564(&qword_1005A96A8, &qword_1004C3320);
      v110 = String.init<A>(describing:)();
      v112 = sub_10000D01C(v110, v111, v136);

      *(v107 + 4) = v112;
      _os_log_impl(&_mh_execute_header, v105, v106, "Got server alert with ID: %{public}s", v107, 0xCu);
      sub_100004984(v108);
    }

    v113 = (*(v0 + 5192) + OBJC_IVAR____TtC13findmylocated11DataManager_serverAlertPresenter);
    v114 = v113[3];
    v115 = v113[4];
    sub_100011AEC(v113, v114);
    (*(v115 + 8))(v0 + 4016, v114, v115);
    sub_100002CE0(v0 + 4368, &qword_1005AD7F0, &unk_1004CA2D0);
  }

  v116 = *(v0 + 296);
  if (v116 == 21)
  {
    if (*(v0 + 240) == 1)
    {
LABEL_24:
      v123 = *(v0 + 5192);
      v122 = sub_1001EBD10;
      goto LABEL_25;
    }

    v116 = *(v0 + 256);
  }

  if (v116 != 1)
  {
    goto LABEL_24;
  }

  v117 = *(v0 + 5232);
  v118 = *(v0 + 5224);
  v119 = *(v0 + 5216);
  v120 = *(v0 + 5192);
  static Date.trustedNow.getter(v117);
  Date.timeIntervalSince1970.getter();
  *(v0 + 5464) = v121;
  (*(v118 + 8))(v117, v119);
  v122 = sub_1001EBCE0;
  v123 = v120;
LABEL_25:

  return _swift_task_switch(v122, v123, 0);
}

uint64_t sub_1001EBD40()
{
  v1 = v0[676];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[684];
    v5 = swift_slowAlloc();
    *v5 = 134349056;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "CommandManager: lastSuccessfulResponseTimestamp: %{public}f", v5, 0xCu);
  }

  v6 = v0[682];
  v30 = v0[671];
  v31 = v0[672];
  v7 = v0[670];
  v8 = v0[669];
  v9 = v0[667];
  v28 = v0[666];
  v29 = v0[668];
  v27 = v0[665];
  v10 = v0[664];
  v11 = v0[661];
  v12 = v0[660];
  v13 = v0[651];

  memcpy(v0 + 302, v0 + 2, 0x320uLL);
  sub_10004B564(&qword_1005AFFB8, &qword_1004D14A0);
  CheckedContinuation.resume(returning:)();
  v6(v10, v12);
  v6(v27, v12);
  (*(v9 + 8))(v29, v28);
  v14 = *(v7 + 8);
  v14(v30, v8);
  v14(v31, v8);
  v15 = v0[675];
  v16 = v0[672];
  v17 = v0[671];
  v18 = v0[668];
  v19 = v0[665];
  v20 = v0[664];
  v21 = v0[663];
  v22 = v0[662];
  v23 = v0[659];
  v24 = v0[657];
  v32 = v0[654];

  v25 = v0[1];

  return v25();
}

uint64_t sub_1001EBFA4()
{
  v25 = v0;
  sub_100004984(v0 + 622);
  v1 = v0[678];
  v2 = v0[676];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v24 = v6;
    *v5 = 136446210;
    v0[645] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v24);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "sendCommand error: %{public}s", v5, 0xCu);
    sub_100004984(v6);
  }

  v10 = v0[651];
  v0[644] = v1;
  sub_10004B564(&qword_1005AFFB8, &qword_1004D14A0);
  CheckedContinuation.resume(throwing:)();
  v11 = v0[675];
  v12 = v0[672];
  v13 = v0[671];
  v14 = v0[668];
  v15 = v0[665];
  v16 = v0[664];
  v17 = v0[663];
  v18 = v0[662];
  v19 = v0[659];
  v20 = v0[657];
  v23 = v0[654];

  v21 = v0[1];

  return v21();
}

uint64_t sub_1001EC1E0()
{
  v25 = v0;
  (*(v0[670] + 8))(v0[672], v0[669]);
  v1 = v0[680];
  v2 = v0[676];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v24 = v6;
    *v5 = 136446210;
    v0[645] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v24);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "sendCommand error: %{public}s", v5, 0xCu);
    sub_100004984(v6);
  }

  v10 = v0[651];
  v0[644] = v1;
  sub_10004B564(&qword_1005AFFB8, &qword_1004D14A0);
  CheckedContinuation.resume(throwing:)();
  v11 = v0[675];
  v12 = v0[672];
  v13 = v0[671];
  v14 = v0[668];
  v15 = v0[665];
  v16 = v0[664];
  v17 = v0[663];
  v18 = v0[662];
  v19 = v0[659];
  v20 = v0[657];
  v23 = v0[654];

  v21 = v0[1];

  return v21();
}

uint64_t sub_1001EC42C(uint64_t a1)
{
  v4 = *(sub_10004B564(&qword_1005AFFB8, &qword_1004D14A0) - 8);
  v5 = (*(v4 + 80) + 144) & ~*(v4 + 80);
  v6 = *(v1 + 96);
  v7 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000368C;

  return sub_1001EA544(a1, v1 + 16, v1 + 56, v6, v1 + 104, v1 + v5);
}

uint64_t sub_1001EC55C(uint64_t a1, char a2)
{
  *(v3 + 264) = a2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v2;
  *(v3 + 80) = *v2;
  v4 = type metadata accessor for Response();
  *(v3 + 88) = v4;
  v5 = *(v4 - 8);
  *(v3 + 96) = v5;
  *(v3 + 104) = *(v5 + 64);
  *(v3 + 112) = swift_task_alloc();
  v6 = *(*(type metadata accessor for AccountService.State(0) - 8) + 64) + 15;
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  v7 = async function pointer to daemon.getter[1];
  v8 = swift_task_alloc();
  *(v3 + 136) = v8;
  *v8 = v3;
  v8[1] = sub_1001EC6B8;

  return daemon.getter();
}

uint64_t sub_1001EC6B8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 136);
  v12 = *v1;
  v3[18] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[19] = v6;
  v7 = type metadata accessor for Daemon();
  v3[20] = v7;
  v8 = type metadata accessor for AccountService(0);
  v9 = sub_1001E6D00(&unk_1005AFA50, &type metadata accessor for Daemon);
  v3[21] = v9;
  v10 = sub_1001E6D00(&qword_1005A9118, type metadata accessor for AccountService);
  *v6 = v12;
  v6[1] = sub_1001EC898;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1001EC898(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 152);
  v6 = *v2;
  v4[22] = a1;
  v4[23] = v1;

  if (v1)
  {
    v7 = v4[9];
    v8 = sub_1001ED47C;
  }

  else
  {
    v9 = v4[18];

    v8 = sub_1001EC9D0;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1001EC9D0()
{
  v1 = v0[22];
  v2 = v0[16];
  v3 = v0[9];
  v4 = OBJC_IVAR____TtC13findmylocated14AccountService_state;
  swift_beginAccess();
  sub_10020AABC(v1 + v4, v2, type metadata accessor for AccountService.State);

  return _swift_task_switch(sub_1001ECA84, v3, 0);
}

uint64_t sub_1001ECA84()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = sub_10004B564(&qword_1005AFFD8, &qword_1004D14D8);
  (*(*(v3 - 8) + 56))(v1, 3, 3, v3);
  v4 = sub_10049F7A4(v2, v1);
  sub_10020A58C(v1, type metadata accessor for AccountService.State);
  sub_10020A58C(v2, type metadata accessor for AccountService.State);
  if (v4)
  {
    if (qword_1005A80B8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000A6F0(v5, qword_1005DFF18);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[22];
    if (v8)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "DataManager: should not updateData when state == .noAccount", v10, 2u);
    }

    v12 = v0[15];
    v11 = v0[16];
    v13 = v0[14];

    v14 = v0[1];

    return v14();
  }

  else
  {
    v16 = async function pointer to daemon.getter[1];
    v17 = swift_task_alloc();
    v0[24] = v17;
    *v17 = v0;
    v17[1] = sub_1001ECCBC;

    return daemon.getter();
  }
}

uint64_t sub_1001ECCBC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 192);
  v5 = *v1;
  v3[25] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[26] = v7;
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_1001E6D00(&qword_1005A90D0, type metadata accessor for DataManager);
  *v7 = v5;
  v7[1] = sub_1001ECE70;
  v10 = v3[21];
  v11 = v3[20];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1001ECE70(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 208);
  v6 = *v2;
  v4[27] = a1;
  v4[28] = v1;

  if (v1)
  {
    v7 = v4[9];

    return _swift_task_switch(sub_1001ED66C, v7, 0);
  }

  else
  {
    v8 = v4[25];

    v9 = swift_task_alloc();
    v4[29] = v9;
    *v9 = v6;
    v9[1] = sub_1001ECFF8;

    return sub_100008CC0();
  }
}

uint64_t sub_1001ECFF8(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 40) = v1;
  *(v3 + 48) = a1;
  v4 = *(v2 + 232);
  v5 = *(v2 + 72);
  v7 = *v1;

  return _swift_task_switch(sub_1001ED10C, v5, 0);
}

uint64_t sub_1001ED10C(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char *a6)
{
  v7 = *(v6 + 72);
  v8 = *(v7 + 120);
  if (__OFADD__(v8, 1))
  {
    __break(1u);
  }

  else
  {
    v9 = *(v6 + 104);
    v10 = *(v6 + 112);
    v11 = *(v6 + 88);
    v12 = *(v6 + 96);
    v22 = *(v6 + 80);
    v23 = *(v6 + 48);
    v21 = *(v6 + 264);
    v13 = *(v6 + 64);
    *(v7 + 120) = v8 + 1;
    v20 = v8 + 1;
    (*(v12 + 16))(v10, v13, v11);
    v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v15 = v14 + v9;
    v16 = (v14 + v9) & 0xFFFFFFFFFFFFFFF8;
    v17 = swift_allocObject();
    *(v6 + 240) = v17;
    *(v17 + 16) = v20;
    *(v17 + 24) = v7;
    (*(v12 + 32))(v17 + v14, v10, v11);
    *(v17 + v15) = v21;
    *(v17 + v16 + 8) = v23;
    *(v17 + ((v16 + 23) & 0xFFFFFFFFFFFFFFF8)) = v22;
    v18 = async function pointer to withTimeout<A>(_:block:)[1];

    a1 = swift_task_alloc();
    *(v6 + 248) = a1;
    *a1 = v6;
    a1[1] = sub_1001ED2CC;
    a4 = &unk_1004D14E8;
    a2 = 0x40AAD21B3B700000;
    a6 = &type metadata for () + 8;
    a3 = 3;
    a5 = v17;
  }

  return withTimeout<A>(_:block:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1001ED2CC()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v9 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v4 = *(v2 + 72);
    v5 = sub_1001ED868;
  }

  else
  {
    v6 = *(v2 + 240);
    v7 = *(v2 + 72);

    v5 = sub_1001ED3F4;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1001ED3F4()
{
  v1 = v0[27];
  v2 = v0[22];

  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[14];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1001ED47C()
{
  v17 = v0;
  v1 = v0[18];

  v2 = v0[23];
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005DFF18);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136446210;
    v0[7] = v2;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v8 = String.init<A>(describing:)();
    v10 = sub_10000D01C(v8, v9, &v16);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "DataManager updateData error: %{public}s", v6, 0xCu);
    sub_100004984(v7);
  }

  else
  {
  }

  v12 = v0[15];
  v11 = v0[16];
  v13 = v0[14];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1001ED66C()
{
  v18 = v0;
  v1 = v0[25];
  v2 = v0[22];

  v3 = v0[28];
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000A6F0(v4, qword_1005DFF18);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136446210;
    v0[7] = v3;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v9 = String.init<A>(describing:)();
    v11 = sub_10000D01C(v9, v10, &v17);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "DataManager updateData error: %{public}s", v7, 0xCu);
    sub_100004984(v8);
  }

  else
  {
  }

  v13 = v0[15];
  v12 = v0[16];
  v14 = v0[14];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1001ED868()
{
  v19 = v0;
  v1 = v0[30];
  v2 = v0[27];
  v3 = v0[22];

  v4 = v0[32];
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005DFF18);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136446210;
    v0[7] = v4;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v10 = String.init<A>(describing:)();
    v12 = sub_10000D01C(v10, v11, &v18);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "DataManager updateData error: %{public}s", v8, 0xCu);
    sub_100004984(v9);
  }

  else
  {
  }

  v14 = v0[15];
  v13 = v0[16];
  v15 = v0[14];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1001EDA70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for Account();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v3[7] = *(v5 + 64);
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_1001EDB3C, 0, 0);
}

uint64_t sub_1001EDB3C()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[4];
  v6 = v0[2];
  (*(v4 + 16))(v1, v0[3], v3);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = (v2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  v0[9] = v9;
  *(v9 + 16) = v6;
  (*(v4 + 32))(v9 + v7, v1, v3);
  *(v9 + v8) = v5;
  v10 = async function pointer to withTimeout<A>(_:block:)[1];

  v11 = swift_task_alloc();
  v0[10] = v11;
  *v11 = v0;
  v11[1] = sub_1001EDCA8;

  return withTimeout<A>(_:block:)(v11, 0x40AAD21B3B700000, 3, &unk_1004D18A8, v9, &type metadata for () + 8);
}

uint64_t sub_1001EDCA8()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_1001EDE28;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_1001EDDC4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001EDDC4()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001EDE28()
{
  v2 = v0[8];
  v1 = v0[9];

  v3 = v0[1];
  v4 = v0[11];

  return v3();
}

uint64_t sub_1001EDE94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  return _swift_task_switch(sub_1001EDEB4, a2, 0);
}

uint64_t sub_1001EDEDC()
{
  v21 = v0;
  if (*(v0 + 136))
  {
    if (qword_1005A80B8 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000A6F0(v1, qword_1005DFF18);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v20 = v5;
      *v4 = 136446210;
      *(v4 + 4) = sub_10000D01C(0xD000000000000013, 0x80000001004E54F0, &v20);
      _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s APNS has already been set up", v4, 0xCu);
      sub_100004984(v5);
    }

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    if (qword_1005A80B8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000A6F0(v8, qword_1005DFF18);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v20 = v12;
      *v11 = 136446210;
      *(v11 + 4) = sub_10000D01C(0xD000000000000013, 0x80000001004E54F0, &v20);
      _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s", v11, 0xCu);
      sub_100004984(v12);
    }

    if (static SystemInfo.underTest.getter())
    {
      v13 = *(v0 + 16);

      return _swift_task_switch(sub_1001EE258, v13, 0);
    }

    else
    {
      v14 = *(v0 + 24);
      type metadata accessor for APNSManager();
      v15 = Account.apsEnvironment.getter();
      v17 = v16;
      v18 = async function pointer to APNSManager.__allocating_init(environmentName:delegatePort:)[1];
      v19 = swift_task_alloc();
      *(v0 + 56) = v19;
      *v19 = v0;
      v19[1] = sub_1001EE4A4;

      return APNSManager.__allocating_init(environmentName:delegatePort:)(v15, v17, 0xD000000000000019, 0x80000001004E54D0);
    }
  }
}

uint64_t sub_1001EE258()
{
  v1 = v0[2];
  v0[5] = *(v1 + 168);
  v0[6] = *(v1 + 176);
  swift_unknownObjectRetain();

  return _swift_task_switch(sub_1001EE2D4, 0, 0);
}

uint64_t sub_1001EE2D4()
{
  v1 = v0[5];
  if (v1)
  {
    v2 = v0[6];
    v0[9] = v1;
    v0[10] = v2;
    v3 = v0[4];
    v4 = v0[2];
    ObjectType = swift_getObjectType();
    v0[11] = ObjectType;
    v6 = swift_allocObject();
    v0[12] = v6;
    *(v6 + 16) = v4;
    *(v6 + 24) = v3;
    v7 = async function pointer to dispatch thunk of APNSConnector.setDidReceive(block:)[1];
    swift_unknownObjectRetain_n();

    v8 = swift_task_alloc();
    v0[13] = v8;
    *v8 = v0;
    v8[1] = sub_1001EE6C4;

    return dispatch thunk of APNSConnector.setDidReceive(block:)(&unk_1004D18B8, v6, ObjectType, v2);
  }

  else
  {
    v9 = v0[3];
    type metadata accessor for APNSManager();
    v10 = Account.apsEnvironment.getter();
    v12 = v11;
    v13 = async function pointer to APNSManager.__allocating_init(environmentName:delegatePort:)[1];
    v14 = swift_task_alloc();
    v0[7] = v14;
    *v14 = v0;
    v14[1] = sub_1001EE4A4;

    return APNSManager.__allocating_init(environmentName:delegatePort:)(v10, v12, 0xD000000000000019, 0x80000001004E54D0);
  }
}

uint64_t sub_1001EE4A4(uint64_t a1)
{
  v2 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 64) = a1;

  return _swift_task_switch(sub_1001EE5A4, 0, 0);
}

uint64_t sub_1001EE5A4()
{
  v0[9] = v0[8];
  v0[10] = &protocol witness table for APNSManager;
  v1 = v0[4];
  v2 = v0[2];
  ObjectType = swift_getObjectType();
  v0[11] = ObjectType;
  v4 = swift_allocObject();
  v0[12] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = async function pointer to dispatch thunk of APNSConnector.setDidReceive(block:)[1];
  swift_unknownObjectRetain_n();

  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_1001EE6C4;

  return dispatch thunk of APNSConnector.setDidReceive(block:)(&unk_1004D18B8, v4, ObjectType, &protocol witness table for APNSManager);
}

uint64_t sub_1001EE6C4()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 72);
  v5 = *v0;

  swift_unknownObjectRelease();

  return _swift_task_switch(sub_1001EE7F8, 0, 0);
}

uint64_t sub_1001EE7F8()
{
  v1 = v0[9];
  v2 = v0[4];
  v3 = v0[2];
  v4 = swift_allocObject();
  v0[14] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = async function pointer to dispatch thunk of APNSConnector.setDidReceivePublicToken(block:)[1];
  swift_unknownObjectRetain();

  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = sub_1001EE8F0;
  v8 = v0[10];
  v7 = v0[11];
  v9 = v0[9];

  return dispatch thunk of APNSConnector.setDidReceivePublicToken(block:)(&unk_1004D18C8, v4, v7, v8);
}

uint64_t sub_1001EE8F0()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v4 = *(*v0 + 72);
  v5 = *v0;

  swift_unknownObjectRelease();

  v6 = async function pointer to dispatch thunk of APNSConnector.set(enabledTopics:)[1];
  v7 = swift_task_alloc();
  v1[16] = v7;
  *v7 = v5;
  v7[1] = sub_1001EEA98;
  v8 = v1[11];
  v9 = v1[10];
  v10 = v1[9];

  return dispatch thunk of APNSConnector.set(enabledTopics:)(&off_10058BB88, v8, v9);
}

uint64_t sub_1001EEA98()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 16);
  v5 = *v0;

  swift_unknownObjectRelease();

  return _swift_task_switch(sub_1001EEBC4, v3, 0);
}

uint64_t sub_1001EEBC4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 168);
  *(v1 + 168) = *(v0 + 72);
  swift_unknownObjectRelease();
  *(v1 + 136) = 1;

  return _swift_task_switch(sub_1001EEC40, 0, 0);
}

uint64_t sub_1001EEC40()
{
  v1 = *(v0 + 72);
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001EECA4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for APNSManager.IncomingMessage();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_1001EED64, 0, 0);
}

uint64_t sub_1001EED64()
{
  v23 = v0;
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005DFF18);
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
    v22 = v13;
    *v12 = 136446210;
    sub_1001E6D00(&qword_1005B0308, &type metadata accessor for APNSManager.IncomingMessage);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_10000D01C(v14, v16, &v22);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Did receive push: %{public}s", v12, 0xCu);
    sub_100004984(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = swift_task_alloc();
  v0[7] = v18;
  *v18 = v0;
  v18[1] = sub_1001EEFD4;
  v19 = v0[2];
  v20 = v0[3];

  return sub_1001EF0E4(v19);
}

uint64_t sub_1001EEFD4()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1001EF0E4(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for FMFAPSMessage(0);
  v2[7] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_1001EF1C4, v1, 0);
}

uint64_t sub_1001EF1C4()
{
  v46 = v0;
  v1 = *(v0 + 40);
  *(v0 + 16) = APNSManager.IncomingMessage.topic.getter();
  *(v0 + 24) = v2;
  v3 = swift_task_alloc();
  *(v3 + 16) = v0 + 16;
  v4 = sub_1001B94DC(sub_10020B680, v3, &off_10058BB88);

  if (v4)
  {
    v5 = *(v0 + 40);
    v6 = objc_opt_self();
    APNSManager.IncomingMessage.userInfo.getter();
    sub_10004B564(&qword_1005A9268, &unk_1004D38E0);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    *(v0 + 32) = 0;
    v8 = [v6 dataWithJSONObject:isa options:0 error:v0 + 32];

    v9 = *(v0 + 32);
    if (v8)
    {
      v10 = *(v0 + 80);
      v11 = *(v0 + 56);
      v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      *(v0 + 88) = v12;
      *(v0 + 96) = v14;
      v15 = type metadata accessor for JSONDecoder();
      v16 = *(v15 + 48);
      v17 = *(v15 + 52);
      swift_allocObject();
      JSONDecoder.init()();
      sub_1001E6D00(&qword_1005B0310, type metadata accessor for FMFAPSMessage);
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();

      if (qword_1005A80B8 != -1)
      {
        swift_once();
      }

      v30 = *(v0 + 72);
      v31 = *(v0 + 80);
      v32 = type metadata accessor for Logger();
      sub_10000A6F0(v32, qword_1005DFF18);
      sub_10020AABC(v31, v30, type metadata accessor for FMFAPSMessage);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.default.getter();
      v35 = os_log_type_enabled(v33, v34);
      v36 = *(v0 + 72);
      if (v35)
      {
        v37 = *(v0 + 64);
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v45 = v39;
        *v38 = 136315138;
        sub_10020AABC(v36, v37, type metadata accessor for FMFAPSMessage);
        v40._countAndFlagsBits = Date.localISO8601.getter();
        String.append(_:)(v40);

        sub_10020A58C(v37, type metadata accessor for FMFAPSMessage);
        sub_10020A58C(v36, type metadata accessor for FMFAPSMessage);
        v41 = sub_10000D01C(0x54646E6553706174, 0xEB00000000203A53, &v45);

        *(v38 + 4) = v41;
        _os_log_impl(&_mh_execute_header, v33, v34, "APNS message: %s.", v38, 0xCu);
        sub_100004984(v39);
      }

      else
      {

        sub_10020A58C(v36, type metadata accessor for FMFAPSMessage);
      }

      v42 = swift_task_alloc();
      *(v0 + 104) = v42;
      *v42 = v0;
      v42[1] = sub_1001EF804;
      v43 = *(v0 + 80);
      v44 = *(v0 + 48);

      return sub_1001EFC74(v43);
    }

    v18 = v9;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1005A80B8 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000A6F0(v19, qword_1005DFF18);
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138543362;
      swift_errorRetain();
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v24;
      *v23 = v24;
      _os_log_impl(&_mh_execute_header, v20, v21, "Unable to decode APNS message due to %{public}@", v22, 0xCu);
      sub_100002CE0(v23, &qword_1005A9670, &unk_1004C2480);
    }

    else
    {
    }
  }

  v26 = *(v0 + 72);
  v25 = *(v0 + 80);
  v27 = *(v0 + 64);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_1001EF804()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return _swift_task_switch(sub_1001EF940, v2, 0);
}

uint64_t sub_1001EF940()
{
  v1 = v0[10];
  sub_1000049D0(v0[11], v0[12]);
  sub_10020A58C(v1, type metadata accessor for FMFAPSMessage);
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1001EFA10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1001EFA34, 0, 0);
}

uint64_t sub_1001EFA34()
{
  v16 = v0;
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v2 = v0[2];
  v1 = v0[3];
  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005DFF18);
  sub_100005F6C(v2, v1);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  sub_1000049D0(v2, v1);
  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[2];
    v6 = v0[3];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 141558275;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    v10 = Data.hexString.getter();
    v12 = sub_10000D01C(v10, v11, &v15);

    *(v8 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "Did receive APNS public token: %{private,mask.hash}s", v8, 0x16u);
    sub_100004984(v9);
  }

  v13 = v0[4];

  return _swift_task_switch(sub_1001EFBF0, v13, 0);
}

uint64_t sub_1001EFBF0()
{
  v1 = v0[3];
  v2 = v0[2];
  v3 = (v0[4] + OBJC_IVAR____TtC13findmylocated11DataManager_apnsToken);
  v5 = *v3;
  v4 = v3[1];
  *v3 = v2;
  v3[1] = v1;
  sub_100005F6C(v2, v1);
  sub_10001A794(v5, v4);
  v6 = v0[1];

  return v6();
}

uint64_t sub_1001EFC74(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v3 = *(*(sub_10004B564(&qword_1005A9690, &qword_1004C2A00) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v2[6] = v4;
  v5 = *(v4 - 8);
  v2[7] = v5;
  v6 = *(v5 + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_1001EFDA0, v1, 0);
}

uint64_t sub_1001EFDA0()
{
  v41 = v0;
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFF18);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v40 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD000000000000025, 0x80000001004E5510, &v40);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = v0[3];
  v7 = OBJC_IVAR____TtC13findmylocated11DataManager__apnsRefreshTimestamps;
  v8 = *(v6 + OBJC_IVAR____TtC13findmylocated11DataManager__apnsRefreshTimestamps);
  if (v8[2])
  {
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Found existing trigger. Not refreshing.", v11, 2u);
    }

    v13 = v0[7];
    v12 = v0[8];
    v14 = v0[6];
    v15 = v0[2];

    (*(v13 + 16))(v12, v15, v14);
    v16 = *(v6 + v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v6 + v7) = v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = sub_10000DFC0(0, v16[2] + 1, 1, v16, &qword_1005B0318, &qword_1004D18F0, &type metadata accessor for Date);
      *(v6 + v7) = v16;
    }

    v19 = v16[2];
    v18 = v16[3];
    if (v19 >= v18 >> 1)
    {
      v16 = sub_10000DFC0(v18 > 1, v19 + 1, 1, v16, &qword_1005B0318, &qword_1004D18F0, &type metadata accessor for Date);
    }

    v21 = v0[7];
    v20 = v0[8];
    v22 = v0[6];
    v16[2] = v19 + 1;
    (*(v21 + 32))(v16 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v19, v20, v22);
    *(v6 + v7) = v16;
  }

  else
  {
    (*(v0[7] + 16))(v0[9], v0[2], v0[6]);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    *(v6 + v7) = v8;
    if ((v23 & 1) == 0)
    {
      v8 = sub_10000DFC0(0, 1, 1, v8, &qword_1005B0318, &qword_1004D18F0, &type metadata accessor for Date);
      *(v6 + v7) = v8;
    }

    v25 = v8[2];
    v24 = v8[3];
    if (v25 >= v24 >> 1)
    {
      v8 = sub_10000DFC0(v24 > 1, v25 + 1, 1, v8, &qword_1005B0318, &qword_1004D18F0, &type metadata accessor for Date);
    }

    v26 = v0[9];
    v27 = v0[6];
    v28 = v0[7];
    v30 = v0[4];
    v29 = v0[5];
    v31 = v0[3];
    v8[2] = v25 + 1;
    (*(v28 + 32))(v8 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v25, v26, v27);
    *(v6 + v7) = v8;
    v32 = type metadata accessor for TaskPriority();
    (*(*(v32 - 8) + 56))(v29, 1, 1, v32);
    v33 = sub_1001E6D00(&qword_1005AFFB0, type metadata accessor for DataManager);
    v34 = swift_allocObject();
    v34[2] = v31;
    v34[3] = v33;
    v34[4] = v31;
    v34[5] = v30;
    swift_retain_n();
    sub_1001D7F30(0, 0, v29, &unk_1004D18E8, v34);
  }

  v36 = v0[8];
  v35 = v0[9];
  v37 = v0[5];

  v38 = v0[1];

  return v38();
}

uint64_t sub_1001F02AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[103] = a4;
  v6 = type metadata accessor for ContinuousClock();
  v4[104] = v6;
  v7 = *(v6 - 8);
  v4[105] = v7;
  v8 = *(v7 + 64) + 15;
  v4[106] = swift_task_alloc();

  return _swift_task_switch(sub_1001F0370, a4, 0);
}

uint64_t sub_1001F0370()
{
  v1 = *(v0 + 848);
  static Clock<>.continuous.getter();
  v2 = swift_task_alloc();
  *(v0 + 856) = v2;
  *v2 = v0;
  v2[1] = sub_1001F043C;
  v3 = *(v0 + 848);

  return sub_100291918(1000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1001F043C()
{
  v2 = *v1;
  v3 = *(*v1 + 856);
  v4 = *(*v1 + 848);
  v5 = *(*v1 + 840);
  v6 = *(*v1 + 832);
  v7 = *v1;
  *(*v1 + 864) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 824);
  if (v0)
  {
    v9 = sub_1001F08A0;
  }

  else
  {
    v9 = sub_1001F05C4;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1001F05C4()
{
  v24 = v0;
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFF18);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v23 = v5;
    *v4 = 136315138;
    v6 = Duration.description.getter();
    v8 = sub_10000D01C(v6, v7, &v23);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "refreshClientWithThrottle after sleeping for %s", v4, 0xCu);
    sub_100004984(v5);
  }

  v9 = *(v0 + 824);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 824);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = v14;
    *v13 = 136315138;
    v15 = *(v12 + OBJC_IVAR____TtC13findmylocated11DataManager__apnsRefreshTimestamps);
    type metadata accessor for Date();

    v16 = Array.description.getter();
    v18 = v17;

    v19 = sub_10000D01C(v16, v18, &v23);

    *(v13 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v10, v11, "Refreshing with triggers: %s", v13, 0xCu);
    sub_100004984(v14);
  }

  v20 = swift_task_alloc();
  *(v0 + 872) = v20;
  *v20 = v0;
  v20[1] = sub_1001F0AA0;
  v21 = *(v0 + 824);

  return sub_1001E17C0(v0 + 16);
}

uint64_t sub_1001F08A0()
{
  v18 = v0;
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v1 = v0[108];
  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFF18);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[108];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136446210;
    v0[102] = v6;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v9 = String.init<A>(describing:)();
    v11 = sub_10000D01C(v9, v10, &v17);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "refreshIfNeeded error: %{public}s", v7, 0xCu);
    sub_100004984(v8);
  }

  else
  {
  }

  v12 = v0[106];
  v13 = v0[103];
  v14 = *(v13 + OBJC_IVAR____TtC13findmylocated11DataManager__apnsRefreshTimestamps);
  *(v13 + OBJC_IVAR____TtC13findmylocated11DataManager__apnsRefreshTimestamps) = _swiftEmptyArrayStorage;

  v15 = v0[1];

  return v15();
}

uint64_t sub_1001F0AA0()
{
  v1 = *v0;
  v2 = *(*v0 + 872);
  v3 = *(*v0 + 824);
  v5 = *v0;

  sub_100002CE0(v1 + 16, &qword_1005B02C0, &unk_1004D5E90);

  return _swift_task_switch(sub_1001F0BC8, v3, 0);
}

uint64_t sub_1001F0BC8()
{
  v1 = v0[106];
  v2 = v0[103];
  v3 = *(v2 + OBJC_IVAR____TtC13findmylocated11DataManager__apnsRefreshTimestamps);
  *(v2 + OBJC_IVAR____TtC13findmylocated11DataManager__apnsRefreshTimestamps) = _swiftEmptyArrayStorage;

  v4 = v0[1];

  return v4();
}

uint64_t sub_1001F0C4C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 2624) = a4;
  *(v4 + 2961) = a3;
  *(v4 + 2616) = a2;
  v5 = *(*(sub_10004B564(&qword_1005A9690, &qword_1004C2A00) - 8) + 64) + 15;
  *(v4 + 2632) = swift_task_alloc();
  v6 = sub_10004B564(&qword_1005B02D8, &qword_1004D1868);
  *(v4 + 2640) = v6;
  v7 = *(v6 - 8);
  *(v4 + 2648) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 2656) = swift_task_alloc();
  v9 = *(*(sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0) - 8) + 64) + 15;
  *(v4 + 2664) = swift_task_alloc();
  v10 = type metadata accessor for Date();
  *(v4 + 2672) = v10;
  v11 = *(v10 - 8);
  *(v4 + 2680) = v11;
  v12 = *(v11 + 64) + 15;
  *(v4 + 2688) = swift_task_alloc();
  *(v4 + 2696) = swift_task_alloc();
  v13 = type metadata accessor for DataManager.State(0);
  *(v4 + 2704) = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  *(v4 + 2712) = swift_task_alloc();
  inited = type metadata accessor for InitEndpoint();
  *(v4 + 2720) = inited;
  v16 = *(*(inited - 8) + 64) + 15;
  *(v4 + 2728) = swift_task_alloc();
  v17 = *(*(sub_10004B564(&qword_1005A9110, &qword_1004C25F8) - 8) + 64) + 15;
  *(v4 + 2736) = swift_task_alloc();
  v18 = type metadata accessor for Account();
  *(v4 + 2744) = v18;
  v19 = *(v18 - 8);
  *(v4 + 2752) = v19;
  v20 = *(v19 + 64) + 15;
  *(v4 + 2760) = swift_task_alloc();
  *(v4 + 2768) = swift_task_alloc();
  *(v4 + 2776) = swift_task_alloc();
  *(v4 + 2784) = swift_task_alloc();
  v21 = async function pointer to daemon.getter[1];
  v22 = swift_task_alloc();
  *(v4 + 2792) = v22;
  *v22 = v4;
  v22[1] = sub_1001F0F40;

  return daemon.getter();
}

uint64_t sub_1001F0F40(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 2792);
  v12 = *v1;
  *(v3 + 2800) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 2808) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for AccountService(0);
  v9 = sub_1001E6D00(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_1001E6D00(&qword_1005A9118, type metadata accessor for AccountService);
  *v6 = v12;
  v6[1] = sub_1001F111C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1001F111C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 2808);
  v6 = *v2;
  v4[352] = a1;
  v4[353] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1001F2DDC, 0, 0);
  }

  else
  {
    v7 = v4[350];

    v8 = swift_task_alloc();
    v4[354] = v8;
    *v8 = v6;
    v8[1] = sub_1001F12AC;
    v9 = v4[342];

    return sub_10000EB24(v9);
  }
}

uint64_t sub_1001F12AC()
{
  v1 = *(*v0 + 2832);
  v3 = *v0;

  return _swift_task_switch(sub_1001F13A8, 0, 0);
}

uint64_t sub_1001F13A8()
{
  v50 = v0;
  v1 = v0[344];
  v2 = v0[343];
  v3 = v0[342];
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_100002CE0(v3, &qword_1005A9110, &qword_1004C25F8);
    if (qword_1005A80B8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000A6F0(v4, qword_1005DFF18);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Missing primary account to send init client!", v7, 2u);
    }

    v8 = v0[352];

    sub_10020ADDC();
    swift_allocError();
    *v9 = 7;
    swift_willThrow();

    v10 = v0[348];
    v11 = v0[347];
    v12 = v0[346];
    v13 = v0[345];
    v14 = v0[342];
    v15 = v0[341];
    v16 = v0[339];
    v17 = v0[337];
    v18 = v0[336];
    v19 = v0[333];
    v46 = v0[332];
    v47 = v0[329];

    v20 = v0[1];

    return v20();
  }

  else
  {
    (*(v1 + 32))(v0[348], v3, v2);
    if (qword_1005A80B8 != -1)
    {
      swift_once();
    }

    v22 = v0[348];
    v23 = v0[347];
    v24 = v0[344];
    v25 = v0[343];
    v26 = type metadata accessor for Logger();
    v0[355] = sub_10000A6F0(v26, qword_1005DFF18);
    v27 = *(v24 + 16);
    v0[356] = v27;
    v0[357] = (v24 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v27(v23, v22, v25);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    v30 = os_log_type_enabled(v28, v29);
    v31 = v0[347];
    if (v30)
    {
      v32 = v0[346];
      v33 = v0[344];
      v34 = v0[343];
      v35 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v49 = v48;
      *v35 = 136315138;
      v27(v32, v31, v34);
      v36 = String.init<A>(describing:)();
      v38 = v37;
      v39 = *(v33 + 8);
      v39(v31, v34);
      v40 = sub_10000D01C(v36, v38, &v49);

      *(v35 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v28, v29, "Successfully retrieved account info: %s", v35, 0xCu);
      sub_100004984(v48);
    }

    else
    {
      v41 = v0[344];
      v42 = v0[343];

      v39 = *(v41 + 8);
      v39(v31, v42);
    }

    v0[358] = v39;
    v43 = swift_task_alloc();
    v0[359] = v43;
    *v43 = v0;
    v43[1] = sub_1001F1858;
    v44 = v0[348];
    v45 = v0[327];

    return sub_1001E0BE8(v44);
  }
}

uint64_t sub_1001F1858()
{
  v2 = *(*v1 + 2872);
  v5 = *v1;
  *(*v1 + 2880) = v0;

  if (v0)
  {
    v3 = sub_1001F2EF8;
  }

  else
  {
    v3 = sub_1001F196C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001F196C()
{
  if (*(v0 + 2961))
  {
    v1 = *(v0 + 2712);
    v2 = *(v0 + 2704);
    v3 = *(v0 + 2616);
    swift_storeEnumTagMultiPayload();

    return _swift_task_switch(sub_1001F2AF0, v3, 0);
  }

  else
  {
    v4 = *(v0 + 2840);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "First launch Daemon, need to InitClient", v7, 2u);
    }

    v8 = *(v0 + 2856);
    v9 = *(v0 + 2848);
    v10 = *(v0 + 2784);
    v11 = *(v0 + 2768);
    v20 = *(v0 + 2760);
    v21 = *(v0 + 2864);
    v12 = *(v0 + 2752);
    v13 = *(v0 + 2744);
    v14 = *(v0 + 2728);

    v9(v11, v10, v13);
    sub_10006DF9C(v11);
    v15 = URLComponents.path.modify();
    v16._countAndFlagsBits = 0x65696C4374696E69;
    v16._object = 0xEA0000000000746ELL;
    String.append(_:)(v16);
    v15(v0 + 2536, 0);
    *(v0 + 2888) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v21(v11, v13);
    v9(v20, v10, v13);
    v17 = swift_task_alloc();
    *(v0 + 2896) = v17;
    *v17 = v0;
    v17[1] = sub_1001F1BCC;
    v18 = *(v0 + 2760);

    return sub_10015B80C(v18);
  }
}

uint64_t sub_1001F1BCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 2896);
  v9 = *v4;
  v5[363] = a1;
  v5[364] = a2;
  v5[365] = a3;
  v5[366] = v3;

  if (v3)
  {
    v7 = sub_1001F1FE4;
  }

  else
  {
    v7 = sub_1001F1CEC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1001F1CEC()
{
  v1 = v0[365];
  v2 = v0[364];
  v3 = v0[363];
  v4 = v0[348];
  v5 = v0[341];
  v0[305] = v0[340];
  v0[306] = sub_1001E6D00(&qword_1005B0320, type metadata accessor for InitEndpoint);
  v6 = sub_10000331C(v0 + 302);
  sub_10020AABC(v5, v6, type metadata accessor for InitEndpoint);
  v0[310] = &type metadata for InitClientRequest;
  v0[311] = sub_10015CCD4();
  v0[307] = v3;
  v0[308] = v2;
  v0[309] = v1;

  sub_10002CF44(v2, v1);
  Account.dsid.getter();
  Account.appToken.getter();
  v0[315] = type metadata accessor for BasicCredential();
  v0[316] = &protocol witness table for BasicCredential;
  sub_10000331C(v0 + 312);
  BasicCredential.init(username:password:)();
  v7 = swift_task_alloc();
  v0[367] = v7;
  *v7 = v0;
  v7[1] = sub_1001F1EA0;
  v8 = v0[327];

  return sub_1001D7B78((v0 + 102), (v0 + 302), (v0 + 307), (v0 + 312));
}

uint64_t sub_1001F1EA0()
{
  v2 = *v1;
  v3 = *(*v1 + 2936);
  v6 = *v1;
  *(*v1 + 2944) = v0;

  sub_100002CE0(v2 + 2496, &qword_1005A9138, &qword_1004C2600);
  if (v0)
  {
    v4 = sub_1001F303C;
  }

  else
  {
    sub_100004984((v2 + 2456));
    sub_100004984((v2 + 2416));
    v4 = sub_1001F213C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001F1FE4()
{
  v1 = v0[361];
  v2 = v0[358];
  v3 = v0[352];
  v4 = v0[348];
  v5 = v0[343];
  v6 = v0[341];

  sub_10020A58C(v6, type metadata accessor for InitEndpoint);
  v2(v4, v5);
  v7 = v0[348];
  v8 = v0[347];
  v9 = v0[346];
  v10 = v0[345];
  v11 = v0[342];
  v12 = v0[341];
  v13 = v0[339];
  v14 = v0[337];
  v15 = v0[336];
  v16 = v0[333];
  v19 = v0[332];
  v20 = v0[329];
  v21 = v0[366];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1001F213C()
{
  v16 = v0;
  v1 = *(v0 + 2840);
  sub_10006DAC8(v0 + 816, v0 + 1616);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  sub_10005D06C(v0 + 816);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136315138;
    v6 = sub_100176040();
    v8 = v7;
    sub_10005D06C(v0 + 816);
    v9 = sub_10000D01C(v6, v8, &v15);

    *(v4 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Received init client response: %s", v4, 0xCu);
    sub_100004984(v5);
  }

  else
  {

    sub_10005D06C(v0 + 816);
  }

  if (qword_1005A80D8 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 2712);
  v11 = *(v0 + 2704);
  v12 = *(v0 + 2616);
  v13 = sub_10004B564(&qword_1005AFFF0, &qword_1004D1520);
  sub_10000A6F0(v13, qword_1005AFAA8);
  *(v0 + 2960) = 1;
  swift_beginAccess();
  ManagedDefault.wrappedValue.setter();
  swift_endAccess();
  swift_storeEnumTagMultiPayload();

  return _swift_task_switch(sub_1001F2358, v12, 0);
}

uint64_t sub_1001F2358()
{
  v1 = *(v0 + 2712);
  v2 = *(v0 + 2616);
  sub_100241560(v1);
  sub_10020A58C(v1, type metadata accessor for DataManager.State);

  return _swift_task_switch(sub_1001F23E4, 0, 0);
}

uint64_t sub_1001F23E4()
{
  static Date.trustedNow.getter(v0[337]);
  if (qword_1005A80D0 != -1)
  {
    swift_once();
  }

  v1 = v0[335];
  v2 = v0[334];
  v3 = v0[333];
  v4 = v0[332];
  v5 = v0[331];
  v6 = v0[330];
  v7 = sub_10000A6F0(v6, qword_1005AFA90);
  swift_beginAccess();
  (*(v5 + 16))(v4, v7, v6);
  ManagedDefault.wrappedValue.getter();
  (*(v5 + 8))(v4, v6);
  v8 = *(v1 + 48);
  if (v8(v3, 1, v2) == 1)
  {
    v9 = v0[334];
    v10 = v0[333];
    v11 = v0[336];
    static Date.distantPast.getter();
    if (v8(v10, 1, v9) != 1)
    {
      sub_100002CE0(v0[333], &unk_1005AE5B0, &qword_1004C32F0);
    }
  }

  else
  {
    (*(v0[335] + 32))(v0[336], v0[333], v0[334]);
  }

  v12 = v0[355];
  v13 = v0[337];
  v14 = v0[336];
  v15 = v0[335];
  v16 = v0[334];
  Date.timeIntervalSince(_:)();
  v18 = v17;
  v19 = *(v15 + 8);
  v19(v14, v16);
  v19(v13, v16);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  v22 = os_log_type_enabled(v20, v21);
  if (v18 <= 5.0)
  {
    if (v22)
    {
      v27 = swift_slowAlloc();
      *v27 = 134349312;
      *(v27 + 4) = v18;
      *(v27 + 12) = 2050;
      *(v27 + 14) = 0x4014000000000000;
      _os_log_impl(&_mh_execute_header, v20, v21, "Time since last refreshClient : %{public}f. Threshold: %{public}f. Not sending.", v27, 0x16u);
    }

    v28 = v0[365];
    v29 = v0[364];
    v30 = v0[363];
    v31 = v0[361];
    v32 = v0[358];
    v33 = v0[352];
    v34 = v0[348];
    v35 = v0[343];
    v36 = v0[341];

    sub_10001A794(v29, v28);
    sub_10020A58C(v36, type metadata accessor for InitEndpoint);
    v32(v34, v35);
    v37 = v0[348];
    v38 = v0[347];
    v39 = v0[346];
    v40 = v0[345];
    v41 = v0[342];
    v42 = v0[341];
    v43 = v0[339];
    v44 = v0[337];
    v45 = v0[336];
    v46 = v0[333];
    v48 = v0[332];
    v49 = v0[329];

    v47 = v0[1];

    return v47();
  }

  else
  {
    if (v22)
    {
      v23 = swift_slowAlloc();
      *v23 = 134349056;
      *(v23 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v20, v21, "Send refreshClient during InitClient: %{public}f for future friends data", v23, 0xCu);
    }

    v24 = swift_task_alloc();
    v0[369] = v24;
    *v24 = v0;
    v24[1] = sub_1001F286C;
    v25 = v0[327];

    return sub_1001E17C0((v0 + 2));
  }
}

uint64_t sub_1001F286C()
{
  v1 = *v0;
  v2 = *(*v0 + 2952);
  v4 = *v0;

  sub_100002CE0(v1 + 16, &qword_1005B02C0, &unk_1004D5E90);

  return _swift_task_switch(sub_1001F2980, 0, 0);
}

uint64_t sub_1001F2980()
{
  v1 = v0[365];
  v2 = v0[364];
  v3 = v0[363];
  v4 = v0[361];
  v5 = v0[358];
  v6 = v0[352];
  v7 = v0[348];
  v8 = v0[343];
  v9 = v0[341];

  sub_10001A794(v2, v1);
  sub_10020A58C(v9, type metadata accessor for InitEndpoint);
  v5(v7, v8);
  v10 = v0[348];
  v11 = v0[347];
  v12 = v0[346];
  v13 = v0[345];
  v14 = v0[342];
  v15 = v0[341];
  v16 = v0[339];
  v17 = v0[337];
  v18 = v0[336];
  v19 = v0[333];
  v22 = v0[332];
  v23 = v0[329];

  v20 = v0[1];

  return v20();
}

uint64_t sub_1001F2AF0()
{
  v1 = *(v0 + 2712);
  v2 = *(v0 + 2616);
  sub_100241560(v1);
  sub_10020A58C(v1, type metadata accessor for DataManager.State);

  return _swift_task_switch(sub_1001F2B7C, 0, 0);
}

uint64_t sub_1001F2B7C()
{
  v1 = *(v0 + 2840);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Daemon has already initialized, no need to InitClient", v4, 2u);
  }

  v5 = *(v0 + 2864);
  v6 = *(v0 + 2816);
  v7 = *(v0 + 2784);
  v8 = *(v0 + 2752);
  v9 = *(v0 + 2744);
  v10 = *(v0 + 2632);
  v26 = *(v0 + 2616);

  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = v26;

  sub_1001D7F30(0, 0, v10, &unk_1004D1928, v12);

  v5(v7, v9);
  v13 = *(v0 + 2784);
  v14 = *(v0 + 2776);
  v15 = *(v0 + 2768);
  v16 = *(v0 + 2760);
  v17 = *(v0 + 2736);
  v18 = *(v0 + 2728);
  v19 = *(v0 + 2712);
  v20 = *(v0 + 2696);
  v21 = *(v0 + 2688);
  v22 = *(v0 + 2664);
  v25 = *(v0 + 2656);
  *&v26 = *(v0 + 2632);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1001F2DDC()
{
  v1 = v0[350];

  v2 = v0[348];
  v3 = v0[347];
  v4 = v0[346];
  v5 = v0[345];
  v6 = v0[342];
  v7 = v0[341];
  v8 = v0[339];
  v9 = v0[337];
  v10 = v0[336];
  v11 = v0[333];
  v14 = v0[332];
  v15 = v0[329];
  v16 = v0[353];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1001F2EF8()
{
  v1 = v0[358];
  v2 = v0[352];
  v3 = v0[348];
  v4 = v0[344];
  v5 = v0[343];

  v1(v3, v5);
  v6 = v0[348];
  v7 = v0[347];
  v8 = v0[346];
  v9 = v0[345];
  v10 = v0[342];
  v11 = v0[341];
  v12 = v0[339];
  v13 = v0[337];
  v14 = v0[336];
  v15 = v0[333];
  v18 = v0[332];
  v19 = v0[329];
  v20 = v0[360];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1001F303C()
{
  v1 = v0[365];
  v2 = v0[364];
  v3 = v0[363];
  v4 = v0[361];
  v5 = v0[358];
  v6 = v0[352];
  v7 = v0[348];
  v8 = v0[343];
  v9 = v0[341];

  sub_10001A794(v2, v1);
  sub_10020A58C(v9, type metadata accessor for InitEndpoint);
  v5(v7, v8);
  sub_100004984(v0 + 307);
  sub_100004984(v0 + 302);
  v10 = v0[348];
  v11 = v0[347];
  v12 = v0[346];
  v13 = v0[345];
  v14 = v0[342];
  v15 = v0[341];
  v16 = v0[339];
  v17 = v0[337];
  v18 = v0[336];
  v19 = v0[333];
  v22 = v0[332];
  v23 = v0[329];
  v24 = v0[368];

  v20 = v0[1];

  return v20();
}

uint64_t sub_1001F31E4()
{
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFF18);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "check if settings From Storage is nil", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_1001F3330;
  v6 = *(v0 + 16);

  return sub_1001E31FC();
}

uint64_t sub_1001F3330()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1001F3444()
{
  v10 = v0;
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFF18);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0x65696C4374696E69, 0xEC0000002928746ELL, &v9);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s Checking if settings from DB is nil", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_10020C1A0;
  v7 = *(v0 + 16);

  return sub_1001E31FC();
}

uint64_t sub_1001F35F4(uint64_t a1, char a2)
{
  *(v3 + 8840) = v2;
  *(v3 + 9192) = a2;
  *(v3 + 8792) = a1;
  v4 = type metadata accessor for Device();
  *(v3 + 8888) = v4;
  v5 = *(v4 - 8);
  *(v3 + 8936) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 8984) = swift_task_alloc();
  v7 = type metadata accessor for DataManager.State(0);
  *(v3 + 9032) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v3 + 9080) = swift_task_alloc();
  v9 = type metadata accessor for Response();
  *(v3 + 9088) = v9;
  v10 = *(v9 - 8);
  *(v3 + 9096) = v10;
  v11 = *(v10 + 64) + 15;
  *(v3 + 9104) = swift_task_alloc();

  return _swift_task_switch(sub_1001F374C, v2, 0);
}

uint64_t sub_1001F374C()
{
  v161 = v0;
  v1 = v0;
  if (qword_1005A7F88 != -1)
  {
    swift_once();
  }

  v2 = v0[1138];
  v3 = v0[1137];
  v4 = v0[1136];
  v5 = v1[1099];
  v149 = type metadata accessor for Logger();
  sub_10000A6F0(v149, qword_1005DFC28);
  (*(v3 + 16))(v2, v5, v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[1138];
  v10 = v1[1137];
  v11 = v1[1136];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v160[0] = v13;
    *v12 = 136315138;
    sub_1001E6D00(&qword_1005A9F08, &type metadata accessor for Response);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_10000D01C(v14, v16, v160);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "response dict: %s", v12, 0xCu);
    sub_100004984(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v1[1099];
  v19 = type metadata accessor for JSONDecoder();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  v22 = Response.body.getter();
  v24 = v23;
  sub_1001FD71C();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v148 = (v1 + 1017);
  sub_1000049D0(v22, v24);

  v147 = (v1 + 327);
  memcpy(v1 + 327, v1 + 427, 0x320uLL);
  v25 = v1[339];
  if (*(v25 + 16))
  {
    v26 = v1[1135];
    v27 = v1[1129];
    v28 = v1[1105];
    swift_storeEnumTagMultiPayload();
    sub_100241560(v26);
    sub_10020A58C(v26, type metadata accessor for DataManager.State);
  }

  v145 = v1 + 867;
  v146 = v1 + 963;
  v29 = v1 + 1063;
  v1[1139] = sub_100171168();
  v30 = *(v1 + 331);
  v31 = *(v1 + 333);
  v32 = (v1 + 1017);
  *(v1 + 1021) = v30;
  *(v1 + 1023) = v31;
  v33 = *(v1 + 335);
  v34 = *(v1 + 337);
  *(v1 + 1025) = v33;
  *(v1 + 1027) = v34;
  v35 = *v147;
  v36 = *(v1 + 329);
  *v148 = *v147;
  *(v1 + 1019) = v36;
  *(v1 + 1029) = v35;
  *(v1 + 1031) = v36;
  *(v1 + 1033) = v30;
  *(v1 + 1035) = v31;
  *(v1 + 1037) = v33;
  *(v1 + 1039) = v34;
  v37 = *(v25 + 16);
  if (v37)
  {
    v144 = v1 + 1063;
    v38 = v1[1117];
    sub_100032B38(v148, (v1 + 1005));
    v160[0] = _swiftEmptyArrayStorage;
    sub_1002395B4(0, v37, 0);
    v39 = v160[0];
    v40 = v1[1028];
    v150 = v1[1019];
    v151 = v1[1027];
    v41 = v1[1020];
    v42 = v1[1017];
    v153 = v42;
    v43 = v1;
    v44 = v25 + 80;
    v156 = v43;
    v45 = v43[1018];
    v154 = v41;
    v155 = v40;
    v152 = v45;
    while (1)
    {
      v157 = *(v44 - 48);
      v46 = *(v44 - 40);
      v47 = *(v44 - 32);
      v48 = *(v44 - 16);
      v49 = *(v44 - 8);
      v158 = *(v44 - 24);
      if (v40)
      {
        if (v46 == v151 && v40 == v47)
        {
          v159 = v39;
          if (!v41)
          {
LABEL_25:
            if (v45)
            {
              goto LABEL_26;
            }

            goto LABEL_32;
          }
        }

        else
        {
          _stringCompareWithSmolCheck(_:_:expecting:)();
          v159 = v39;
          if (!v41)
          {
            goto LABEL_25;
          }
        }
      }

      else
      {
        v159 = v39;
        if (!v41)
        {
          goto LABEL_25;
        }
      }

      if (v46 == v150 && v41 == v47)
      {
        if (v45)
        {
LABEL_26:
          if (v46 != v42 || v45 != v47)
          {
            _stringCompareWithSmolCheck(_:_:expecting:)();
          }
        }
      }

      else
      {
        _stringCompareWithSmolCheck(_:_:expecting:)();
        if (v45)
        {
          goto LABEL_26;
        }
      }

LABEL_32:
      v53 = v156[1123];

      Device.init(identifier:deviceName:idsDeviceId:isActive:isThisDevice:isCompanion:isAutoMeCapable:)();
      v39 = v159;
      v160[0] = v159;
      v55 = *(v159 + 16);
      v54 = *(v159 + 24);
      if (v55 >= v54 >> 1)
      {
        sub_1002395B4(v54 > 1, v55 + 1, 1);
        v39 = v160[0];
      }

      v56 = v156[1123];
      v57 = v156[1111];
      v39[2] = v55 + 1;
      (*(v38 + 32))(v39 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v55, v56, v57);
      v44 += 56;
      --v37;
      v41 = v154;
      v40 = v155;
      v42 = v153;
      v45 = v152;
      if (!v37)
      {
        v1 = v156;
        v29 = v144;
        v32 = v148;
        goto LABEL_37;
      }
    }
  }

  sub_100032B38(v148, (v1 + 981));
  v39 = _swiftEmptyArrayStorage;
LABEL_37:
  v1[1140] = v39;

  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = v1[1111];
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v160[0] = v62;
    *v61 = 136315138;
    v63 = Array.description.getter();
    v65 = v39;
    v66 = sub_10000D01C(v63, v64, v160);

    *(v61 + 4) = v66;
    _os_log_impl(&_mh_execute_header, v58, v59, "Devices: %s", v61, 0xCu);
    sub_100004984(v62);
    v32 = v148;
  }

  else
  {

    v65 = v39;
  }

  v67 = v145;
  v68 = v1[1105];
  v69 = *(v1 + 9192);
  v70 = swift_task_alloc();
  v1[1141] = v70;
  *(v70 + 16) = v68;
  *(v70 + 24) = v147;
  swift_asyncLet_begin();
  v71 = swift_task_alloc();
  v1[1142] = v71;
  *(v71 + 16) = v68;
  *(v71 + 24) = v65;
  swift_asyncLet_begin();
  v72 = swift_task_alloc();
  v1[1143] = v72;
  *(v72 + 16) = v68;
  *(v72 + 24) = v147;
  *(v72 + 32) = v69;
  sub_10004B564(&qword_1005B0060, &qword_1004D15E8);
  swift_asyncLet_begin();
  v73 = *(v1 + 377);
  v145[6] = *(v1 + 375);
  v145[7] = v73;
  v74 = *(v1 + 381);
  v145[8] = *(v1 + 379);
  v145[9] = v74;
  v75 = *(v1 + 369);
  v145[2] = *(v1 + 367);
  v145[3] = v75;
  v76 = *(v1 + 373);
  v145[4] = *(v1 + 371);
  v145[5] = v76;
  v77 = *(v1 + 365);
  *v145 = *(v1 + 363);
  v145[1] = v77;
  v78 = *(v1 + 397);
  v146[6] = *(v1 + 395);
  v146[7] = v78;
  v146[8] = *(v1 + 399);
  v79 = *(v1 + 389);
  v146[2] = *(v1 + 387);
  v146[3] = v79;
  v80 = *(v1 + 393);
  v146[4] = *(v1 + 391);
  v146[5] = v80;
  v81 = *(v1 + 385);
  *v146 = *(v1 + 383);
  v146[1] = v81;
  v82 = *(v1 + 171);
  v83 = *(v1 + 173);
  v29[2] = *(v1 + 172);
  v29[3] = v83;
  v29[4] = *(v1 + 174);
  *v29 = *(v1 + 170);
  v29[1] = v82;
  sub_100032B38(v32, (v1 + 993));
  sub_100005F04(v145, (v1 + 907), &qword_1005A9328, &unk_1004C7F20);
  sub_100005F04(v29, (v1 + 1083), &qword_1005AD7A8, &qword_1004CA280);
  v84 = Logger.logObject.getter();
  v85 = static os_log_type_t.default.getter();
  sub_100032B08(v32);
  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v160[0] = v87;
    *v86 = 136315138;
    v88 = sub_100032B38(v32, (v1 + 1041));
    v89 = sub_100032B70(v88);
    v91 = v90;
    sub_100032B08(v32);
    v92 = sub_10000D01C(v89, v91, v160);
    v67 = v145;

    *(v86 + 4) = v92;
    _os_log_impl(&_mh_execute_header, v84, v85, "myInfo: %s", v86, 0xCu);
    sub_100004984(v87);
  }

  sub_100005F04(v67, (v1 + 887), &qword_1005A9328, &unk_1004C7F20);
  v93 = Logger.logObject.getter();
  v94 = static os_log_type_t.default.getter();
  sub_100002CE0(v67, &qword_1005A9328, &unk_1004C7F20);
  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v160[0] = v96;
    *v95 = 136315138;
    v97 = v67[7];
    *(v1 + 839) = v67[6];
    *(v1 + 841) = v97;
    v98 = v67[9];
    *(v1 + 843) = v67[8];
    *(v1 + 845) = v98;
    v99 = v67[3];
    *(v1 + 831) = v67[2];
    *(v1 + 833) = v99;
    v100 = v67[5];
    *(v1 + 835) = v67[4];
    *(v1 + 837) = v100;
    v101 = v67[1];
    *(v1 + 827) = *v67;
    *(v1 + 829) = v101;
    v102 = sub_10002D650((v1 + 827));
    if (v102 == 1)
    {
      v103 = 0;
      v104 = 0xE000000000000000;
    }

    else
    {
      v105 = *(v1 + 841);
      *(v1 + 859) = *(v1 + 839);
      *(v1 + 861) = v105;
      v106 = *(v1 + 845);
      *(v1 + 863) = *(v1 + 843);
      *(v1 + 865) = v106;
      v107 = *(v1 + 833);
      *(v1 + 851) = *(v1 + 831);
      *(v1 + 853) = v107;
      v108 = *(v1 + 837);
      *(v1 + 855) = *(v1 + 835);
      *(v1 + 857) = v108;
      v109 = *(v1 + 829);
      *(v1 + 847) = *(v1 + 827);
      *(v1 + 849) = v109;
      v103 = sub_10017F8CC(v102);
      v104 = v110;
    }

    v111 = sub_10000D01C(v103, v104, v160);

    *(v95 + 4) = v111;
    _os_log_impl(&_mh_execute_header, v93, v94, "serverContext: %s", v95, 0xCu);
    sub_100004984(v96);
  }

  v112 = Logger.logObject.getter();
  v113 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v112, v113))
  {
    v114 = swift_slowAlloc();
    v115 = swift_slowAlloc();
    v160[0] = v115;
    *v114 = 136315138;
    v116 = v146[7];
    *(v1 + 957) = v146[6];
    *(v1 + 959) = v116;
    *(v1 + 961) = v146[8];
    v117 = v146[3];
    *(v1 + 949) = v146[2];
    *(v1 + 951) = v117;
    v118 = v146[5];
    *(v1 + 953) = v146[4];
    *(v1 + 955) = v118;
    v119 = v146[1];
    *(v1 + 945) = *v146;
    *(v1 + 947) = v119;
    v120 = sub_10005A3B0((v1 + 945));
    if (v120 == 1)
    {
      v121 = 0;
      v122 = 0xE000000000000000;
    }

    else
    {
      v123 = *(v1 + 959);
      *(v1 + 939) = *(v1 + 957);
      *(v1 + 941) = v123;
      *(v1 + 943) = *(v1 + 961);
      v124 = *(v1 + 951);
      *(v1 + 931) = *(v1 + 949);
      *(v1 + 933) = v124;
      v125 = *(v1 + 955);
      *(v1 + 935) = *(v1 + 953);
      *(v1 + 937) = v125;
      v126 = *(v1 + 947);
      *(v1 + 927) = *(v1 + 945);
      *(v1 + 929) = v126;
      v121 = sub_100033CAC(v120);
      v122 = v127;
    }

    v128 = sub_10000D01C(v121, v122, v160);

    *(v114 + 4) = v128;
    _os_log_impl(&_mh_execute_header, v112, v113, "serverConfig: %s", v114, 0xCu);
    sub_100004984(v115);
  }

  v129 = v149;
  if (qword_1005A80B8 != -1)
  {
    swift_once();
    v129 = v149;
  }

  v1[1144] = sub_10000A6F0(v129, qword_1005DFF18);
  sub_100005F04(v29, (v1 + 1053), &qword_1005AD7A8, &qword_1004CA280);
  v130 = Logger.logObject.getter();
  v131 = static os_log_type_t.default.getter();
  sub_100002CE0(v29, &qword_1005AD7A8, &qword_1004CA280);
  if (os_log_type_enabled(v130, v131))
  {
    v132 = swift_slowAlloc();
    v133 = swift_slowAlloc();
    v160[0] = v133;
    *v132 = 136315138;
    v134 = v1[1068];
    if (v134)
    {
      v135 = v29[1];
      *(v1 + 1073) = *v29;
      *(v1 + 1075) = v135;
      v1[1077] = *(v29 + 4);
      v1[1078] = v134;
      v136 = *(v1 + 1071);
      *(v1 + 1079) = *(v1 + 1069);
      *(v1 + 1081) = v136;
      v137 = sub_100172CC0();
      v139 = v138;
    }

    else
    {
      v137 = 0;
      v139 = 0xE000000000000000;
    }

    v140 = sub_10000D01C(v137, v139, v160);

    *(v132 + 4) = v140;
    _os_log_impl(&_mh_execute_header, v130, v131, "serverPreferences: %s", v132, 0xCu);
    sub_100004984(v133);
  }

  v141 = swift_task_alloc();
  v1[1145] = v141;
  *v141 = v1;
  v141[1] = sub_1001F460C;
  v142 = v1[1105];

  return sub_100245BB8((v1 + 587));
}

uint64_t sub_1001F460C()
{
  v1 = *(*v0 + 9160);
  v2 = *(*v0 + 8840);
  v4 = *v0;

  return _swift_task_switch(sub_1001F471C, v2, 0);
}

uint64_t sub_1001F471C()
{
  v34 = v0;
  v32 = (v0 + 4216);
  v1 = *(v0 + 9152);
  sub_100005F04(v0 + 4696, v0 + 6136, &qword_1005A90D8, &unk_1004C6AB0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  sub_100002CE0(v0 + 4696, &qword_1005A90D8, &unk_1004C6AB0);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v4 = 136446723;
    *(v4 + 4) = sub_10000D01C(0xD000000000000025, 0x80000001004E5220, &v33);
    *(v4 + 12) = 2160;
    *(v4 + 14) = 1752392040;
    *(v4 + 22) = 2081;
    memcpy((v0 + 5176), (v0 + 4696), 0x1E0uLL);
    sub_10004B564(&qword_1005A90D8, &unk_1004C6AB0);
    v5 = String.init<A>(describing:)();
    v7 = sub_10000D01C(v5, v6, &v33);

    *(v4 + 24) = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s, cached settings: %{private,mask.hash}s", v4, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100002CE0(v0 + 4696, &qword_1005A90D8, &unk_1004C6AB0);
  }

  v8 = *(v0 + 9112);
  v9 = *(v0 + 8840);
  v10 = *(v0 + 8184);
  *(v0 + 5688) = *(v0 + 8168);
  *(v0 + 5704) = v10;
  v11 = *(v0 + 8216);
  *(v0 + 5720) = *(v0 + 8200);
  *(v0 + 5736) = v11;
  v12 = *(v0 + 8152);
  *(v0 + 5656) = *(v0 + 8136);
  *(v0 + 5672) = v12;
  v13 = *(v0 + 6952);
  *(v0 + 5752) = *(v0 + 6936);
  *(v0 + 5768) = v13;
  v14 = *(v0 + 6968);
  v15 = *(v0 + 6984);
  v16 = *(v0 + 7016);
  *(v0 + 5816) = *(v0 + 7000);
  *(v0 + 5832) = v16;
  *(v0 + 5784) = v14;
  *(v0 + 5800) = v15;
  v17 = *(v0 + 7032);
  v18 = *(v0 + 7048);
  v19 = *(v0 + 7080);
  *(v0 + 5880) = *(v0 + 7064);
  *(v0 + 5896) = v19;
  *(v0 + 5848) = v17;
  *(v0 + 5864) = v18;
  v20 = *(v0 + 7816);
  *(v0 + 6008) = *(v0 + 7800);
  *(v0 + 6024) = v20;
  *(v0 + 6040) = *(v0 + 7832);
  v21 = *(v0 + 7752);
  *(v0 + 5944) = *(v0 + 7736);
  *(v0 + 5960) = v21;
  v22 = *(v0 + 7784);
  *(v0 + 5976) = *(v0 + 7768);
  *(v0 + 5992) = v22;
  v23 = *(v0 + 7720);
  *(v0 + 5912) = *(v0 + 7704);
  *(v0 + 5928) = v23;
  v24 = *(v0 + 8552);
  *(v0 + 6088) = *(v0 + 8536);
  *(v0 + 6104) = v24;
  *(v0 + 6120) = *(v0 + 8568);
  v25 = *(v0 + 8520);
  *(v0 + 6056) = *(v0 + 8504);
  *(v0 + 6072) = v25;
  memcpy(v32, (v0 + 5656), 0x1E0uLL);
  v26 = swift_task_alloc();
  *(v0 + 9168) = v26;
  *(v26 + 16) = v9;
  *(v26 + 24) = v32;
  swift_asyncLet_begin();
  if (v8)
  {
    v28 = *(v0 + 9112);
    v29 = swift_task_alloc();
    *(v0 + 9176) = v29;
    *v29 = v0;
    v29[1] = sub_1001F4AFC;
    v30 = *(v0 + 8840);

    return sub_100211D04(v28);
  }

  else
  {

    return _swift_asyncLet_get(v0 + 1296, v27, sub_1001F4C14, v0 + 2576);
  }
}

uint64_t sub_1001F4AFC()
{
  v1 = *v0;
  v2 = *(*v0 + 9176);
  v3 = *(*v0 + 9112);
  v6 = *v0;

  return _swift_asyncLet_get(v1 + 1296, v4, sub_1001F4C14, v1 + 2576);
}

uint64_t sub_1001F4C3C()
{
  *(v0 + 9184) = *(v0 + 8744);

  return _swift_asyncLet_get(v0 + 16, v1, sub_1001F4CAC, v0 + 8800);
}

uint64_t sub_1001F4D08()
{
  v1 = *(v0 + 9168);
  sub_1001B5478(v0 + 5656);

  return _swift_asyncLet_finish(v0 + 1936, v0 + 8744, sub_1001F4D94, v0 + 8944);
}

uint64_t sub_1001F4DEC()
{
  v1 = *(v0 + 9120);

  return _swift_asyncLet_finish(v0 + 656, v2, sub_1001F4E58, v0 + 9040);
}

uint64_t sub_1001F4E74()
{
  v1 = v0[1143];
  v2 = v0[1142];
  v3 = v0[1141];
  v4 = v0[1138];
  v5 = v0[1135];
  v6 = v0[1123];
  sub_10005D06C((v0 + 327));

  v7 = v0[1];
  v8 = v0[1148];

  return v7(v8);
}

uint64_t sub_1001F4F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return _swift_task_switch(sub_1001F4F54, 0, 0);
}

uint64_t sub_1001F4F54()
{
  v1 = *(v0[3] + 272);
  v0[4] = v1;
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = _swiftEmptyArrayStorage;
  }

  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_1001F5014;
  v4 = v0[2];

  return sub_1001F5138(v2);
}

uint64_t sub_1001F5014()
{
  v1 = *(*v0 + 40);
  *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1001F5138(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = *(*(sub_10004B564(&qword_1005AC640, &qword_1004C6EE0) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v4 = *(*(sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v2[15] = v5;
  v6 = *(v5 - 8);
  v2[16] = v6;
  v7 = *(v6 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v8 = *(*(sub_10004B564(&qword_1005A92D0, &qword_1004C2890) - 8) + 64) + 15;
  v2[21] = swift_task_alloc();
  v9 = type metadata accessor for Location();
  v2[22] = v9;
  v10 = *(v9 - 8);
  v2[23] = v10;
  v11 = *(v10 + 64) + 15;
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v12 = type metadata accessor for Handle();
  v2[30] = v12;
  v13 = *(v12 - 8);
  v2[31] = v13;
  v14 = *(v13 + 64) + 15;
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v15 = type metadata accessor for ServerLocation(0);
  v2[35] = v15;
  v16 = *(v15 - 8);
  v2[36] = v16;
  v17 = *(v16 + 64) + 15;
  v2[37] = swift_task_alloc();
  v18 = type metadata accessor for Friend();
  v2[38] = v18;
  v19 = *(v18 - 8);
  v2[39] = v19;
  v20 = *(v19 + 64) + 15;
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();

  return _swift_task_switch(sub_1001F54D0, v1, 0);
}

uint64_t sub_1001F54D0()
{
  v48 = v0;
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = type metadata accessor for Logger();
  v0[47] = sub_10000A6F0(v2, qword_1005DFF18);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[11];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v47 = v8;
    *v7 = 141558531;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    *(v7 + 14) = sub_10000D01C(0xD00000000000001DLL, 0x80000001004E5250, &v47);
    *(v7 + 22) = 2048;
    *(v7 + 24) = *(v6 + 16);

    _os_log_impl(&_mh_execute_header, v3, v4, "%{private,mask.hash}s legacy locations count: %ld.", v7, 0x20u);
    sub_100004984(v8);
  }

  else
  {
    v9 = v0[11];
  }

  v10 = *(v0[11] + 16);
  v0[48] = v10;
  if (v10)
  {
    sub_10004B564(&qword_1005A92A8, &qword_1004C4330);
    v11 = type metadata accessor for HandleType();
    v12 = *(v11 - 8);
    v13 = *(v12 + 72);
    v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v15 = swift_allocObject();
    v0[49] = v15;
    *(v15 + 16) = xmmword_1004C1900;
    (*(v12 + 104))(v15 + v14, enum case for HandleType.following(_:), v11);
    v16 = swift_task_alloc();
    v0[50] = v16;
    *v16 = v0;
    v16[1] = sub_1001F596C;
    v17 = v0[12];

    return sub_10001C61C(v15, 0);
  }

  else
  {
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "No legacy location return from server, should not process.", v21, 2u);
    }

    v23 = v0[45];
    v22 = v0[46];
    v25 = v0[43];
    v24 = v0[44];
    v27 = v0[41];
    v26 = v0[42];
    v28 = v0[40];
    v29 = v0[37];
    v31 = v0[33];
    v30 = v0[34];
    v33 = v0[32];
    v34 = v0[29];
    v35 = v0[28];
    v36 = v0[27];
    v37 = v0[26];
    v38 = v0[25];
    v39 = v0[24];
    v40 = v0[21];
    v41 = v0[20];
    v42 = v0[19];
    v43 = v0[18];
    v44 = v0[17];
    v45 = v0[14];
    v46 = v0[13];

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_1001F596C(uint64_t a1)
{
  v2 = *(*v1 + 400);
  v3 = *(*v1 + 392);
  v4 = *(*v1 + 96);
  v6 = *v1;
  *(*v1 + 408) = a1;

  return _swift_task_switch(sub_1001F5AA0, v4, 0);
}

void sub_1001F5AA0()
{
  v211 = v0;
  v1 = v0[51];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v0[39];
    v206 = (v4 + 32);
    v5 = _swiftEmptyArrayStorage;
    v204 = *(v1 + 16);
    do
    {
      if (v3 >= *(v1 + 16))
      {
        __break(1u);
        return;
      }

      v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v7 = *(v4 + 72);
      (*(v4 + 16))(v0[46], v0[51] + v6 + v7 * v3, v0[38]);
      v8 = Friend.isLegacyLocationCapable.getter();
      v9 = v0[46];
      if (v8)
      {
        v10 = v1;
        v11 = *v206;
        (*v206)(v0[45], v0[46], v0[38]);
        v210[0] = v5;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100239354(0, v5[2] + 1, 1);
          v5 = v210[0];
        }

        v13 = v5[2];
        v12 = v5[3];
        v14 = v5;
        if (v13 >= v12 >> 1)
        {
          sub_100239354(v12 > 1, v13 + 1, 1);
          v14 = v210[0];
        }

        v15 = v0[45];
        v16 = v0[38];
        *(v14 + 16) = v13 + 1;
        v11(v14 + v6 + v13 * v7, v15, v16);
        v5 = v14;
        v1 = v10;
        v2 = v204;
      }

      else
      {
        (*(v4 + 8))(v0[46], v0[38]);
      }

      ++v3;
    }

    while (v2 != v3);
    v200 = v5;
    v17 = v0[51];
  }

  else
  {
    v200 = _swiftEmptyArrayStorage;
  }

  v18 = v0[39];
  v19 = v0[36];
  v202 = v0[37];
  v196 = v0[35];
  v20 = v0[31];
  v21 = v0[23];
  v22 = v0[16];
  v23 = v0[11];
  v24 = v0[12];

  v199 = v23 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
  v193 = OBJC_IVAR____TtC13findmylocated11DataManager_legacyLocationsForHandles;
  v194 = v24;
  swift_beginAccess();
  v25 = 0;
  v197 = v18;
  v198 = *(v19 + 72);
  v205 = (v20 + 8);
  v203 = (v18 + 8);
  v195 = (v18 + 32);
  v190 = (v21 + 16);
  v191 = (v21 + 32);
  v192 = (v21 + 8);
  v188 = (v22 + 48);
  v189 = (v22 + 8);
  v177 = v21;
  v178 = (v22 + 32);
  v172 = (v22 + 16);
  v187 = (v21 + 56);
  while (2)
  {
    v201 = v25;
    sub_10020AABC(v199 + v25 * v198, v0[37], type metadata accessor for ServerLocation);
    v28 = v200[2];
    if (!v28)
    {
      goto LABEL_16;
    }

    v29 = v200 + ((*(v197 + 80) + 32) & ~*(v197 + 80));
    v30 = *(v197 + 72);
    v207 = *(v197 + 16);
    while (1)
    {
      v31 = v0[37];
      v32 = v0[34];
      v33 = v0[30];
      v207(v0[42], v29, v0[38]);
      Friend.handle.getter();
      v34 = Handle.serverID.getter();
      v36 = v35;
      v37 = *v205;
      (*v205)(v32, v33);
      if (!v36)
      {
        goto LABEL_19;
      }

      if (v34 == *v31 && v36 == *(v202 + 8))
      {
        break;
      }

      v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v39)
      {
        goto LABEL_28;
      }

LABEL_19:
      (*v203)(v0[42], v0[38]);
      v29 += v30;
      if (!--v28)
      {
        goto LABEL_16;
      }
    }

LABEL_28:
    v41 = v0[43];
    v40 = v0[44];
    v42 = v0[37];
    v43 = v0[38];
    v44 = v0[21];
    v45 = *v195;
    (*v195)(v41, v0[42], v43);
    v45(v40, v41, v43);
    sub_100005F04(v42 + *(v196 + 20), v44, &qword_1005A92D0, &qword_1004C2890);
    v46 = type metadata accessor for LegacyLocation(0);
    v47 = (*(*(v46 - 8) + 48))(v44, 1, v46);
    v48 = v0[44];
    if (v47 == 1)
    {
      v26 = v0[21];
      (*v203)(v0[44], v0[38]);
      sub_100002CE0(v26, &qword_1005A92D0, &qword_1004C2890);
      goto LABEL_16;
    }

    v49 = v0[33];
    v51 = v0[28];
    v50 = v0[29];
    v52 = v0[21];
    v53 = v0[22];
    sub_10016DAF0(v51);
    sub_10020A58C(v52, type metadata accessor for LegacyLocation);
    (*v191)(v50, v51, v53);
    Friend.handle.getter();
    v54 = *(v194 + v193);
    if (!*(v54 + 16))
    {
      goto LABEL_35;
    }

    v55 = v0[33];
    v56 = *(v194 + v193);

    v57 = sub_1001FD93C(v55);
    if ((v58 & 1) == 0)
    {

LABEL_35:
      v37(v0[33], v0[30]);
LABEL_36:
      v90 = v0[44];
      v92 = v0[14];
      v91 = v0[15];
      Friend.createdAt.getter();
      if ((*v188)(v92, 1, v91) == 1)
      {
        sub_100002CE0(v0[14], &unk_1005AE5B0, &qword_1004C32F0);
      }

      else
      {
        v93 = v0[29];
        v95 = v0[19];
        v94 = v0[20];
        v96 = v0[15];
        (*v178)(v0[18], v0[14], v96);
        Location.date.getter();
        Date.addingTimeInterval(_:)();
        v97 = *v189;
        (*v189)(v95, v96);
        LOBYTE(v93) = static Date.< infix(_:_:)();
        v97(v94, v96);
        if (v93)
        {
          v186 = v97;
          v98 = v0[47];
          v181 = v0[29];
          v99 = v0[24];
          v100 = v0[22];
          v101 = v0[17];
          v102 = v0[18];
          v103 = v0[15];
          v207(v0[40], v0[44], v0[38]);
          (*v172)(v101, v102, v103);
          (*v190)(v99, v181, v100);
          v104 = Logger.logObject.getter();
          v105 = static os_log_type_t.error.getter();
          v106 = os_log_type_enabled(v104, v105);
          v182 = v0[44];
          v107 = v0[40];
          v209 = v0[38];
          if (v106)
          {
            v108 = v0[32];
            v109 = v0[30];
            v175 = v0[29];
            *typea = v0[22];
            v160 = v0[20];
            v162 = v0[24];
            v170 = v0[18];
            v158 = v0[17];
            v166 = v105;
            v110 = v0[15];
            v111 = swift_slowAlloc();
            v210[0] = swift_slowAlloc();
            *v111 = 141559299;
            *(v111 + 4) = 1752392040;
            *(v111 + 12) = 2081;
            v163 = v104;
            Friend.handle.getter();
            v112 = Handle.identifier.getter();
            v114 = v113;
            v37(v108, v109);
            v168 = *v203;
            (*v203)(v107, v209);
            v115 = sub_10000D01C(v112, v114, v210);

            *(v111 + 14) = v115;
            *(v111 + 22) = 2160;
            *(v111 + 24) = 1752392040;
            *(v111 + 32) = 2081;
            v116 = Date.localISO8601.getter();
            v118 = v117;
            v186(v158, v110);
            v119 = sub_10000D01C(v116, v118, v210);

            *(v111 + 34) = v119;
            *(v111 + 42) = 2160;
            *(v111 + 44) = 1752392040;
            *(v111 + 52) = 2081;
            Location.date.getter();
            v120 = Date.localISO8601.getter();
            v122 = v121;
            v123 = v110;
            v186(v160, v110);
            v124 = *v192;
            (*v192)(v162, *typea);
            v125 = sub_10000D01C(v120, v122, v210);

            *(v111 + 54) = v125;
            _os_log_impl(&_mh_execute_header, v163, v166, "Drop older legacy location for handle: %{private,mask.hash}s\ncreateAt: %{private,mask.hash}s\nlocation timestamp: %{private,mask.hash}s", v111, 0x3Eu);
            swift_arrayDestroy();

            v186(v170, v123);
            v124(v175, *typea);
            v88 = v182;
            v89 = v209;
LABEL_41:
            v168(v88, v89);
          }

          else
          {
            v176 = v0[29];
            v132 = v0[24];
            v133 = v0[22];
            v134 = v0[17];
            v171 = v0[18];
            v135 = v0[15];

            v136 = *v192;
            (*v192)(v132, v133);
            v186(v134, v135);
            v137 = *v203;
            (*v203)(v107, v209);
            v186(v171, v135);
            v136(v176, v133);
            v137(v182, v209);
          }

          goto LABEL_16;
        }

        v97(v0[18], v0[15]);
      }

      v126 = v0[44];
      v127 = v0[38];
      v128 = v0[32];
      v129 = v0[29];
      v130 = v0[22];
      v131 = v0[13];
      Friend.handle.getter();
      (*v190)(v131, v129, v130);
      (*v187)(v131, 0, 1, v130);
      swift_beginAccess();
      sub_100145824(v131, v128);
      swift_endAccess();
      (*v192)(v129, v130);
      (*v203)(v126, v127);
      goto LABEL_16;
    }

    v59 = v0[33];
    v179 = v0[30];
    v183 = v0[29];
    v60 = v0[19];
    v61 = v0[20];
    v62 = v0[15];
    v173 = *(v177 + 16);
    v173(v0[27], *(v54 + 56) + *(v177 + 72) * v57, v0[22]);
    v37(v59, v179);

    Location.date.getter();
    Location.date.getter();
    LOBYTE(v59) = static Date.< infix(_:_:)();
    v63 = *v189;
    (*v189)(v60, v62);
    v63(v61, v62);
    if ((v59 & 1) == 0)
    {
      (*v192)(v0[27], v0[22]);
      goto LABEL_36;
    }

    v180 = v63;
    v184 = v0[47];
    v64 = v0[29];
    v66 = v0[26];
    v65 = v0[27];
    v67 = v0[25];
    v68 = v0[22];
    v207(v0[41], v0[44], v0[38]);
    v173(v66, v64, v68);
    v173(v67, v65, v68);
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();
    v71 = os_log_type_enabled(v69, v70);
    v208 = v0[44];
    v72 = v0[41];
    v73 = v0[38];
    if (v71)
    {
      v74 = v0[32];
      v174 = v0[29];
      v167 = v0[30];
      v169 = v0[27];
      v161 = v0[25];
      v157 = v0[26];
      v159 = v0[22];
      v156 = v0[20];
      v185 = v0[15];
      v75 = swift_slowAlloc();
      v210[0] = swift_slowAlloc();
      *v75 = 141559299;
      *(v75 + 4) = 1752392040;
      *(v75 + 12) = 2081;
      type = v70;
      Friend.handle.getter();
      v76 = Handle.identifier.getter();
      v78 = v77;
      v37(v74, v167);
      v168 = *v203;
      (*v203)(v72, v73);
      v79 = sub_10000D01C(v76, v78, v210);

      *(v75 + 14) = v79;
      *(v75 + 22) = 2160;
      *(v75 + 24) = 1752392040;
      *(v75 + 32) = 2081;
      Location.date.getter();
      v80 = Date.localISO8601.getter();
      v82 = v81;
      v180(v156, v185);
      v155 = *v192;
      (*v192)(v157, v159);
      v83 = sub_10000D01C(v80, v82, v210);

      *(v75 + 34) = v83;
      *(v75 + 42) = 2160;
      *(v75 + 44) = 1752392040;
      *(v75 + 52) = 2081;
      Location.date.getter();
      v84 = Date.localISO8601.getter();
      v86 = v85;
      v180(v156, v185);
      v155(v161, v159);
      v87 = sub_10000D01C(v84, v86, v210);

      *(v75 + 54) = v87;
      _os_log_impl(&_mh_execute_header, v69, type, "Not update cached legacy location for handle: %{private,mask.hash}s\nsince new location location date: %{private,mask.hash}s\nis older cached date: %{private,mask.hash}s.", v75, 0x3Eu);
      swift_arrayDestroy();

      v155(v169, v159);
      v155(v174, v159);
      v88 = v208;
      v89 = v73;
      goto LABEL_41;
    }

    v138 = v0[29];
    v140 = v0[26];
    v139 = v0[27];
    v141 = v0[25];
    v142 = v0[22];

    v143 = *v192;
    (*v192)(v141, v142);
    v143(v140, v142);
    v144 = *v203;
    (*v203)(v72, v73);
    v143(v139, v142);
    v143(v138, v142);
    v144(v208, v73);
LABEL_16:
    v25 = v201 + 1;
    v27 = v0[48];
    sub_10020A58C(v0[37], type metadata accessor for ServerLocation);
    if (v201 + 1 != v27)
    {
      continue;
    }

    break;
  }

  v145 = v0[47];
  v146 = v0[12];

  v147 = Logger.logObject.getter();
  v148 = static os_log_type_t.default.getter();
  v149 = os_log_type_enabled(v147, v148);
  v150 = v0[12];
  if (v149)
  {
    v151 = swift_slowAlloc();
    *v151 = 134217984;
    swift_beginAccess();
    *(v151 + 4) = *(*(v194 + v193) + 16);

    _os_log_impl(&_mh_execute_header, v147, v148, "After process, current legacyLocations count: %ld.", v151, 0xCu);
  }

  else
  {
    v152 = v0[12];
  }

  v153 = swift_task_alloc();
  v0[52] = v153;
  *v153 = v0;
  v153[1] = sub_1001F6BCC;
  v154 = v0[12];

  sub_1001F819C();
}

uint64_t sub_1001F6BCC()
{
  v1 = *v0;
  v2 = *(*v0 + 416);
  v29 = *v0;

  v3 = v1[46];
  v4 = v1[45];
  v5 = v1[44];
  v6 = v1[43];
  v7 = v1[42];
  v8 = v1[41];
  v9 = v1[40];
  v10 = v1[37];
  v11 = v1[34];
  v15 = v1[33];
  v16 = v1[32];
  v17 = v1[29];
  v18 = v1[28];
  v19 = v1[27];
  v20 = v1[26];
  v21 = v1[25];
  v22 = v1[24];
  v23 = v1[21];
  v24 = v1[20];
  v25 = v1[19];
  v26 = v1[18];
  v27 = v1[17];
  v28 = v1[14];
  v12 = v1[13];

  v13 = *(v29 + 8);

  return v13();
}

uint64_t sub_1001F6FB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_100003784;

  return sub_10024639C(a3);
}

uint64_t sub_1001F7054(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 16) = a1;
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  *v7 = v4;
  v7[1] = sub_1001F7104;

  return sub_10021E954(a3, a4);
}

uint64_t sub_1001F7104(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return _swift_task_switch(sub_1001F7204, 0, 0);
}

uint64_t sub_1001F7228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_100003784;

  return sub_100246DCC(a3);
}

uint64_t sub_1001F72C4(uint64_t a1, char a2, char a3)
{
  *(v4 + 169) = a3;
  *(v4 + 168) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  v5 = type metadata accessor for DataManager.State(0);
  *(v4 + 32) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v4 + 40) = swift_task_alloc();
  v7 = type metadata accessor for Device();
  *(v4 + 48) = v7;
  v8 = *(v7 - 8);
  *(v4 + 56) = v8;
  v9 = *(v8 + 64) + 15;
  *(v4 + 64) = swift_task_alloc();
  v10 = *(*(sub_10004B564(&qword_1005AA718, &qword_1004C4370) - 8) + 64) + 15;
  *(v4 + 72) = swift_task_alloc();
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_1001F7468;

  return sub_100245198();
}

uint64_t sub_1001F7468(uint64_t a1)
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 136) = a1;

  return _swift_task_switch(sub_1001F7580, v3, 0);
}

uint64_t sub_1001F7580()
{
  v1 = v0[17];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v0[7];
    while (v3 < *(v1 + 16))
    {
      (*(v4 + 16))(v0[8], v0[17] + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v3, v0[6]);
      if (Device.isActive.getter())
      {
        v7 = v0[17];
        v8 = v0[15];
        v10 = v0[7];
        v9 = v0[8];
        v11 = v0[6];

        (*(v10 + 32))(v8, v9, v11);
        v6 = 0;
        goto LABEL_9;
      }

      ++v3;
      (*(v4 + 8))(v0[8], v0[6]);
      if (v2 == v3)
      {
        v5 = v0[17];
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_47;
  }

LABEL_7:

  v6 = 1;
LABEL_9:
  (*(v0[7] + 56))(v0[15], v6, 1, v0[6]);
  if (qword_1005A80B8 != -1)
  {
LABEL_47:
    swift_once();
  }

  v13 = v0[14];
  v12 = v0[15];
  v14 = type metadata accessor for Logger();
  v0[18] = sub_10000A6F0(v14, qword_1005DFF18);
  sub_100005F04(v12, v13, &qword_1005AA718, &qword_1004C4370);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = os_log_type_enabled(v15, v16);
  v18 = v0[14];
  if (!v17)
  {
    sub_100002CE0(v0[14], &qword_1005AA718, &qword_1004C4370);
    goto LABEL_18;
  }

  v19 = v0[13];
  v20 = v0[6];
  v21 = v0[7];
  v22 = swift_slowAlloc();
  *v22 = 67109120;
  sub_100005F04(v18, v19, &qword_1005AA718, &qword_1004C4370);
  v23 = (*(v21 + 48))(v19, 1, v20);
  v24 = v0[13];
  if (v23 == 1)
  {
    sub_100002CE0(v0[13], &qword_1005AA718, &qword_1004C4370);
LABEL_16:
    v28 = 0;
    goto LABEL_17;
  }

  v25 = v0[6];
  v26 = v0[7];
  v27 = Device.isThisDevice.getter();
  (*(v26 + 8))(v24, v25);
  if ((v27 & 1) == 0)
  {
    goto LABEL_16;
  }

  v28 = 1;
LABEL_17:
  sub_100002CE0(v0[14], &qword_1005AA718, &qword_1004C4370);
  *(v22 + 4) = v28;
  _os_log_impl(&_mh_execute_header, v15, v16, "Current Device meDevice? %{BOOL}d", v22, 8u);

LABEL_18:
  v29 = v0[15];
  v30 = v0[12];

  sub_100005F04(v29, v30, &qword_1005AA718, &qword_1004C4370);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  v33 = os_log_type_enabled(v31, v32);
  v34 = v0[12];
  if (!v33)
  {
    sub_100002CE0(v0[12], &qword_1005AA718, &qword_1004C4370);
    goto LABEL_26;
  }

  v35 = v0[11];
  v36 = v0[6];
  v37 = v0[7];
  v38 = swift_slowAlloc();
  *v38 = 67109120;
  sub_100005F04(v34, v35, &qword_1005AA718, &qword_1004C4370);
  v39 = (*(v37 + 48))(v35, 1, v36);
  v40 = v0[11];
  if (v39 == 1)
  {
    sub_100002CE0(v0[11], &qword_1005AA718, &qword_1004C4370);
LABEL_24:
    v44 = 0;
    goto LABEL_25;
  }

  v41 = v0[6];
  v42 = v0[7];
  v43 = Device.isActive.getter();
  (*(v42 + 8))(v40, v41);
  if ((v43 & 1) == 0)
  {
    goto LABEL_24;
  }

  v44 = 1;
LABEL_25:
  sub_100002CE0(v0[12], &qword_1005AA718, &qword_1004C4370);
  *(v38 + 4) = v44;
  _os_log_impl(&_mh_execute_header, v31, v32, "Current MeDevice isActive? %{BOOL}d", v38, 8u);

LABEL_26:
  v45 = v0[10];
  v46 = v0[6];
  v47 = v0[7];
  v48 = v0[2];

  sub_100005F04(v48, v45, &qword_1005AA718, &qword_1004C4370);
  v49 = *(v47 + 48);
  v50 = v49(v45, 1, v46);
  v51 = v0[10];
  if (v50 == 1)
  {
    sub_100002CE0(v0[10], &qword_1005AA718, &qword_1004C4370);
    v52 = 0;
    v53 = 0;
  }

  else
  {
    v54 = v0[6];
    v55 = v0[7];
    v52 = Device.identifier.getter();
    v53 = v56;
    (*(v55 + 8))(v51, v54);
  }

  v57 = v0[9];
  v58 = v0[6];
  sub_100005F04(v0[15], v57, &qword_1005AA718, &qword_1004C4370);
  v59 = v49(v57, 1, v58);
  v60 = v0[9];
  if (v59 == 1)
  {
    sub_100002CE0(v0[9], &qword_1005AA718, &qword_1004C4370);
    if (!v53)
    {
      goto LABEL_41;
    }

    goto LABEL_39;
  }

  v61 = v0[6];
  v62 = v0[7];
  v63 = v0[9];
  v64 = Device.identifier.getter();
  v66 = v65;
  (*(v62 + 8))(v60, v61);
  if (!v53)
  {
    if (!v66)
    {
      goto LABEL_41;
    }

    goto LABEL_39;
  }

  if (!v66)
  {
LABEL_39:

LABEL_40:
    v67 = v0[5];
    v68 = v0[3];
    sub_100005F04(v0[15], v67, &qword_1005AA718, &qword_1004C4370);
    swift_storeEnumTagMultiPayload();
    sub_100241560(v67);
    sub_10020A58C(v67, type metadata accessor for DataManager.State);
    goto LABEL_41;
  }

  if (v52 == v64 && v53 == v66)
  {

    goto LABEL_41;
  }

  v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v72 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_41:
  v69 = swift_task_alloc();
  v0[19] = v69;
  *v69 = v0;
  v69[1] = sub_1001F7C48;
  v70 = v0[3];

  return sub_1001DBB70();
}

uint64_t sub_1001F7C48(char a1)
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 170) = a1;

  return _swift_task_switch(sub_1001F7D60, v3, 0);
}

uint64_t sub_1001F7D60()
{
  v1 = *(v0 + 144);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 170);
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Current Device locationEnabled? %{BOOL,public}d", v5, 8u);
  }

  v6 = *(v0 + 170);
  v7 = *(v0 + 168);

  if (v6 != v7)
  {
    v8 = *(v0 + 32);
    v9 = *(v0 + 40);
    v10 = *(v0 + 24);
    *v9 = *(v0 + 170);
    swift_storeEnumTagMultiPayload();
    sub_100241560(v9);
    sub_10020A58C(v9, type metadata accessor for DataManager.State);
  }

  v11 = swift_task_alloc();
  *(v0 + 160) = v11;
  *v11 = v0;
  v11[1] = sub_1001F7EC8;
  v12 = *(v0 + 24);

  return sub_1001DBE84();
}

uint64_t sub_1001F7EC8(char a1)
{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 171) = a1;

  return _swift_task_switch(sub_1001F7FE0, v3, 0);
}

uint64_t sub_1001F7FE0()
{
  v1 = *(v0 + 144);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 171);
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Current Device newFriendshipRequestsAllowed? %{BOOL,public}d", v5, 8u);
  }

  v6 = *(v0 + 171);
  v7 = *(v0 + 169);

  if (v6 != v7)
  {
    v8 = *(v0 + 32);
    v9 = *(v0 + 40);
    v10 = *(v0 + 24);
    *v9 = *(v0 + 171);
    swift_storeEnumTagMultiPayload();
    sub_100241560(v9);
    sub_10020A58C(v9, type metadata accessor for DataManager.State);
  }

  v11 = *(v0 + 112);
  v13 = *(v0 + 96);
  v12 = *(v0 + 104);
  v15 = *(v0 + 80);
  v14 = *(v0 + 88);
  v17 = *(v0 + 64);
  v16 = *(v0 + 72);
  v18 = *(v0 + 40);
  sub_100002CE0(*(v0 + 120), &qword_1005AA718, &qword_1004C4370);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1001F81BC()
{
  if (static SystemInfo.underTest.getter())
  {
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = async function pointer to daemon.getter[1];
    v4 = swift_task_alloc();
    *(v0 + 56) = v4;
    *v4 = v0;
    v4[1] = sub_1001F8284;

    return daemon.getter();
  }
}

uint64_t sub_1001F8284(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 56);
  v12 = *v1;
  *(v3 + 64) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 72) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for LocationService();
  v9 = sub_1001E6D00(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_1001E6D00(&qword_1005A9308, type metadata accessor for LocationService);
  *v6 = v12;
  v6[1] = sub_1001F8460;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1001F8460(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v7 = v4[6];
    v8 = sub_1001F871C;
  }

  else
  {
    v9 = v4[8];
    v10 = v4[6];

    v4[11] = a1;
    v8 = sub_1001F85A0;
    v7 = v10;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1001F85A0()
{
  v1 = v0[11];
  v2 = v0[6];
  v3 = OBJC_IVAR____TtC13findmylocated11DataManager_legacyLocationsForHandles;
  swift_beginAccess();
  v0[12] = *(v2 + v3);

  return _swift_task_switch(sub_1001F863C, v1, 0);
}

uint64_t sub_1001F863C()
{
  v1 = v0[11];
  v2 = v0[6];
  sub_1003718C0(v0[12]);

  return _swift_task_switch(sub_1001F86BC, v2, 0);
}

uint64_t sub_1001F86BC()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001F871C()
{
  v15 = v0;
  v1 = v0[8];

  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v2 = v0[10];
  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005DFF18);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[10];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v8 = 136446466;
    *(v8 + 4) = sub_10000D01C(0xD000000000000021, 0x80000001004E5270, &v14);
    *(v8 + 12) = 2082;
    v0[5] = v7;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v9 = String.init<A>(describing:)();
    v11 = sub_10000D01C(v9, v10, &v14);

    *(v8 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s error %{public}s", v8, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1001F8930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 80) = a6;
  *(v7 + 88) = a7;
  *(v7 + 368) = a5;
  *(v7 + 64) = a3;
  *(v7 + 72) = a4;
  *(v7 + 56) = a2;
  v8 = *(*(sub_10004B564(&qword_1005A9690, &qword_1004C2A00) - 8) + 64) + 15;
  *(v7 + 96) = swift_task_alloc();
  v9 = type metadata accessor for Handle();
  *(v7 + 104) = v9;
  v10 = *(v9 - 8);
  *(v7 + 112) = v10;
  v11 = *(v10 + 64) + 15;
  *(v7 + 120) = swift_task_alloc();
  v12 = type metadata accessor for HandleType();
  *(v7 + 128) = v12;
  v13 = *(v12 - 8);
  *(v7 + 136) = v13;
  v14 = *(v13 + 64) + 15;
  *(v7 + 144) = swift_task_alloc();
  *(v7 + 152) = swift_task_alloc();
  v15 = type metadata accessor for FriendshipAction();
  *(v7 + 160) = v15;
  v16 = *(v15 - 8);
  *(v7 + 168) = v16;
  v17 = *(v16 + 64) + 15;
  *(v7 + 176) = swift_task_alloc();
  *(v7 + 184) = swift_task_alloc();
  v18 = type metadata accessor for Friend();
  *(v7 + 192) = v18;
  v19 = *(v18 - 8);
  *(v7 + 200) = v19;
  v20 = *(v19 + 64) + 15;
  *(v7 + 208) = swift_task_alloc();
  v21 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
  *(v7 + 216) = v21;
  v22 = *(*(v21 - 8) + 64) + 15;
  *(v7 + 224) = swift_task_alloc();
  *(v7 + 232) = swift_task_alloc();
  v23 = *(*(sub_10004B564(&qword_1005AA718, &qword_1004C4370) - 8) + 64) + 15;
  *(v7 + 240) = swift_task_alloc();

  return _swift_task_switch(sub_1001F8BE0, 0, 0);
}

uint64_t sub_1001F8BE0()
{
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[31] = sub_10000A6F0(v1, qword_1005DFF18);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[7];
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "DataManager: start updateData. Counter: %ld", v5, 0xCu);
  }

  v6 = swift_task_alloc();
  v0[32] = v6;
  *v6 = v0;
  v6[1] = sub_1001F8D48;
  v7 = v0[30];
  v8 = v0[8];

  return sub_1001DB14C(v7);
}

uint64_t sub_1001F8D48()
{
  v1 = *v0;
  v2 = *(*v0 + 256);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 264) = v4;
  *v4 = v3;
  v4[1] = sub_1001F8E88;
  v5 = *(v1 + 64);

  return sub_1001DBB70();
}

uint64_t sub_1001F8E88(char a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 264);
  v8 = *v1;
  *(v3 + 369) = a1;

  v5 = swift_task_alloc();
  *(v3 + 272) = v5;
  *v5 = v8;
  v5[1] = sub_1001F8FD4;
  v6 = *(v2 + 64);

  return sub_1001DBE84();
}

uint64_t sub_1001F8FD4(char a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 272);
  v10 = *v1;
  *(v3 + 370) = a1;

  v5 = swift_task_alloc();
  *(v3 + 280) = v5;
  *v5 = v10;
  v5[1] = sub_1001F913C;
  v6 = *(v3 + 368);
  v7 = *(v2 + 72);
  v8 = *(v2 + 64);

  return sub_1001F35F4(v7, v6);
}

uint64_t sub_1001F913C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 280);
  v6 = *v2;
  *(*v2 + 288) = v1;

  if (v1)
  {
    v7 = sub_1001FA34C;
  }

  else
  {
    *(v4 + 296) = a1;
    v7 = sub_1001F9264;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1001F9264()
{
  *(v0 + 304) = *(v0 + 296);
  v1 = *(v0 + 248);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 56);
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "DataManager: finish updateData. Counter: %ld", v5, 0xCu);
  }

  v6 = swift_task_alloc();
  *(v0 + 312) = v6;
  *v6 = v0;
  v6[1] = sub_1001F9398;
  v7 = *(v0 + 370);
  v8 = *(v0 + 369);
  v9 = *(v0 + 240);
  v10 = *(v0 + 64);

  return sub_1001F72C4(v9, v8, v7);
}

uint64_t sub_1001F9398()
{
  v1 = *(*v0 + 312);
  v3 = *v0;

  return _swift_task_switch(sub_1001F9494, 0, 0);
}

uint64_t sub_1001F9494()
{
  v1 = v0[38];
  v2 = v0[31];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[38];
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = *(v6 + 16) == 0;

    _os_log_impl(&_mh_execute_header, v3, v4, "DataManager updatedFriends isEmpty: %{BOOL}d ", v7, 8u);
  }

  else
  {
    v8 = v0[38];
  }

  v9 = *(v0[38] + 16);

  if (v9)
  {
    v10 = async function pointer to daemon.getter[1];
    v11 = swift_task_alloc();
    v0[40] = v11;
    *v11 = v0;
    v11[1] = sub_1001F96CC;

    return daemon.getter();
  }

  else
  {
    v12 = v0[38];
    sub_100002CE0(v0[30], &qword_1005AA718, &qword_1004C4370);

    v14 = v0[29];
    v13 = v0[30];
    v15 = v0[28];
    v16 = v0[26];
    v18 = v0[22];
    v17 = v0[23];
    v20 = v0[18];
    v19 = v0[19];
    v21 = v0[15];
    v22 = v0[12];

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_1001F96CC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 320);
  v12 = *v1;
  *(v3 + 328) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 336) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for LocationService();
  v9 = sub_1001E6D00(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_1001E6D00(&qword_1005A9308, type metadata accessor for LocationService);
  *v6 = v12;
  v6[1] = sub_1001F98A8;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1001F98A8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 336);
  v5 = *(*v2 + 328);
  v9 = *v2;
  v3[43] = a1;
  v3[44] = v1;

  if (v1)
  {
    v6 = v3[38];

    v7 = sub_1001FA5B4;
  }

  else
  {
    v7 = sub_1001F99EC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1001F99EC()
{
  v1 = v0[38];
  v75 = v0[27];
  v2 = v0[17];
  v3 = v0[14];
  v4 = v1 + 64;
  v5 = -1;
  v6 = -1 << *(v1 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v1 + 64);
  v8 = (63 - v6) >> 6;
  v70 = enum case for FriendshipAction.remove(_:);
  v73 = v0[21];
  v83 = (v73 + 8);
  v68 = enum case for HandleType.following(_:);
  v66 = (v2 + 8);
  v67 = (v2 + 104);
  v74 = v0[25];
  v69 = (v74 + 8);
  v65 = v0[14];
  v76 = v0[38];

  v12 = 0;
  v13 = _swiftEmptyArrayStorage;
  v71 = v8;
  v72 = v4;
LABEL_4:
  for (i = v13; ; v13 = i)
  {
    v0[45] = v13;
    if (!v7)
    {
      break;
    }

LABEL_11:
    v19 = v0[28];
    v18 = v0[29];
    v20 = v0[24];
    v79 = v20;
    v80 = v0[26];
    v81 = v0[23];
    v82 = v0[22];
    v21 = v0[20];
    v22 = __clz(__rbit64(v7)) | (v12 << 6);
    (*(v74 + 16))(v18, *(v76 + 48) + *(v74 + 72) * v22);
    (*(v73 + 16))(v18 + *(v75 + 48), *(v76 + 56) + *(v73 + 72) * v22, v21);
    sub_100005F04(v18, v19, &qword_1005AFFE0, &qword_1004D6060);
    v23 = *(v75 + 48);
    (*(v74 + 32))(v80, v19, v79);
    (*(v73 + 32))(v81, v19 + v23, v21);
    (*(v73 + 104))(v82, v70, v21);
    sub_1001E6D00(&qword_1005AFFE8, &type metadata accessor for FriendshipAction);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v0[2] == v0[4] && v0[3] == v0[5])
    {
      v24 = 1;
    }

    else
    {
      v25 = v0[3];
      v26 = v0[5];
      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v7 &= v7 - 1;
    v27 = *v83;
    (*v83)(v0[22], v0[20]);

    if (v24)
    {
      v28 = v0[26];
      v30 = v0[18];
      v29 = v0[19];
      v31 = v0[16];
      Friend.type.getter();
      (*v67)(v30, v68, v31);
      LOBYTE(v28) = static HandleType.== infix(_:_:)();
      v32 = *v66;
      (*v66)(v30, v31);
      v32(v29, v31);
      if (v28)
      {
        v33 = v0[26];
        v34 = v0[15];
        Friend.handle.getter();
        v35 = i;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_10000DFC0(0, i[2] + 1, 1, i, &qword_1005B0048, &qword_1004D15A0, &type metadata accessor for Handle);
        }

        v37 = v35[2];
        v36 = v35[3];
        if (v37 >= v36 >> 1)
        {
          v78 = sub_10000DFC0(v36 > 1, v37 + 1, 1, v35, &qword_1005B0048, &qword_1004D15A0, &type metadata accessor for Handle);
        }

        else
        {
          v78 = v35;
        }

        v38 = v0[29];
        v39 = v0[26];
        v40 = v0[24];
        v41 = v0[15];
        v42 = v0[13];
        v27(v0[23], v0[20]);
        (*v69)(v39, v40);
        sub_100002CE0(v38, &qword_1005AFFE0, &qword_1004D6060);
        v13 = v78;
        *(v78 + 16) = v37 + 1;
        v9 = (*(v65 + 32))(v78 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v37, v41, v42);
        v8 = v71;
        v4 = v72;
        goto LABEL_4;
      }
    }

    v14 = v0[29];
    v15 = v0[26];
    v16 = v0[24];
    v27(v0[23], v0[20]);
    (*v69)(v15, v16);
    v9 = sub_100002CE0(v14, &qword_1005AFFE0, &qword_1004D6060);
    v8 = v71;
    v4 = v72;
  }

  while (1)
  {
    v17 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      return _swift_task_switch(v9, v10, v11);
    }

    if (v17 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v17);
    ++v12;
    if (v7)
    {
      v12 = v17;
      goto LABEL_11;
    }
  }

  v43 = v0[38];

  if (v13[2])
  {
    v10 = v0[43];
    v9 = sub_1001FA118;
    v11 = 0;

    return _swift_task_switch(v9, v10, v11);
  }

  v44 = v0[43];
  v45 = v0[38];
  v46 = v0[30];
  v48 = v0[11];
  v47 = v0[12];
  v49 = v0[10];
  v50 = v0[8];
  v51 = type metadata accessor for TaskPriority();
  (*(*(v51 - 8) + 56))(v47, 1, 1, v51);
  v52 = swift_allocObject();
  v52[2] = 0;
  v52[3] = 0;
  v52[4] = v50;
  v52[5] = v49;
  v52[6] = v45;
  v52[7] = v48;

  sub_1001D7F30(0, 0, v47, &unk_1004D1508, v52);

  sub_100002CE0(v46, &qword_1005AA718, &qword_1004C4370);
  v54 = v0[29];
  v53 = v0[30];
  v55 = v0[28];
  v56 = v0[26];
  v58 = v0[22];
  v57 = v0[23];
  v60 = v0[18];
  v59 = v0[19];
  v61 = v0[15];
  v62 = v0[12];

  v63 = v0[1];

  return v63();
}

uint64_t sub_1001FA118()
{
  v1 = *(v0 + 344);
  sub_100374828(*(v0 + 360));

  return _swift_task_switch(sub_1001FA190, 0, 0);
}

uint64_t sub_1001FA190()
{
  v1 = v0[43];
  v2 = v0[38];
  v3 = v0[30];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[10];
  v7 = v0[8];
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v7;
  v9[5] = v6;
  v9[6] = v2;
  v9[7] = v5;

  sub_1001D7F30(0, 0, v4, &unk_1004D1508, v9);

  sub_100002CE0(v3, &qword_1005AA718, &qword_1004C4370);
  v11 = v0[29];
  v10 = v0[30];
  v12 = v0[28];
  v13 = v0[26];
  v15 = v0[22];
  v14 = v0[23];
  v17 = v0[18];
  v16 = v0[19];
  v18 = v0[15];
  v19 = v0[12];

  v20 = v0[1];

  return v20();
}

uint64_t sub_1001FA34C()
{
  v25 = v0;
  v1 = *(v0 + 288);
  v2 = *(v0 + 248);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 288);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24 = v7;
    *v6 = 136446210;
    *(v0 + 48) = v5;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v8 = String.init<A>(describing:)();
    v10 = sub_10000D01C(v8, v9, &v24);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Process response error: %{public}s", v6, 0xCu);
    sub_100004984(v7);
  }

  v11 = *(v0 + 288);
  v12 = sub_100209928(_swiftEmptyArrayStorage);

  *(v0 + 304) = v12;
  v13 = *(v0 + 248);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = *(v0 + 56);
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    *(v17 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v14, v15, "DataManager: finish updateData. Counter: %ld", v17, 0xCu);
  }

  v18 = swift_task_alloc();
  *(v0 + 312) = v18;
  *v18 = v0;
  v18[1] = sub_1001F9398;
  v19 = *(v0 + 370);
  v20 = *(v0 + 369);
  v21 = *(v0 + 240);
  v22 = *(v0 + 64);

  return sub_1001F72C4(v21, v20, v19);
}

uint64_t sub_1001FA5B4()
{
  v1 = v0[29];
  v2 = v0[28];
  v3 = v0[26];
  v5 = v0[22];
  v4 = v0[23];
  v7 = v0[18];
  v6 = v0[19];
  v8 = v0[15];
  v12 = v0[12];
  sub_100002CE0(v0[30], &qword_1005AA718, &qword_1004C4370);

  v9 = v0[1];
  v10 = v0[44];

  return v9();
}

uint64_t sub_1001FA6B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[347] = a6;
  v6[341] = a5;
  v6[335] = a4;
  v7 = sub_10004B564(&qword_1005AFFF0, &qword_1004D1520);
  v6[353] = v7;
  v8 = *(v7 - 8);
  v6[359] = v8;
  v9 = *(v8 + 64) + 15;
  v6[365] = swift_task_alloc();

  return _swift_task_switch(sub_1001FA78C, 0, 0);
}

uint64_t sub_1001FA78C()
{
  v1 = *(v0 + 2776);
  v2 = *(v0 + 2728);
  v3 = *(v0 + 2680);
  v4 = swift_task_alloc();
  *(v0 + 2968) = v4;
  v4[2] = v3;
  v4[3] = v2;
  v4[4] = v1;
  swift_asyncLet_begin();
  v5 = swift_task_alloc();
  *(v0 + 3016) = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v1;
  swift_asyncLet_begin();
  v6 = swift_task_alloc();
  *(v0 + 3064) = v6;
  *(v6 + 16) = v3;
  *(v6 + 24) = v1;
  swift_asyncLet_begin();
  if (qword_1005A80D8 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 2920);
  v8 = *(v0 + 2872);
  v9 = *(v0 + 2824);
  v10 = sub_10000A6F0(v9, qword_1005AFAA8);
  swift_beginAccess();
  (*(v8 + 16))(v7, v10, v9);
  ManagedDefault.wrappedValue.getter();
  (*(v8 + 8))(v7, v9);
  v11 = *(v0 + 3080);
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v12 = *(v0 + 2776);
  v13 = type metadata accessor for Logger();
  sub_10000A6F0(v13, qword_1005DFF18);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 2776);
  if (v16)
  {
    v18 = swift_slowAlloc();
    *v18 = 141558531;
    *(v18 + 4) = 1752392040;
    *(v18 + 12) = 1025;
    *(v18 + 14) = v11 & 1;
    *(v18 + 18) = 2048;
    *(v18 + 20) = *(v17 + 16);

    _os_log_impl(&_mh_execute_header, v14, v15, "DataManager shouldUpdateFriends to clients:\n%{BOOL,private,mask.hash}d\nupdated friends count: %ld", v18, 0x1Cu);

    if ((v11 & 1) == 0)
    {
LABEL_7:
      v20 = sub_1001FABB0;
      v21 = v0 + 656;
      v22 = v0 + 2576;
      goto LABEL_10;
    }
  }

  else
  {
    v23 = *(v0 + 2776);

    if ((v11 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v24 = *(v0 + 2776);
  v25 = *(v0 + 2680);
  v26 = swift_task_alloc();
  *(v0 + 3072) = v26;
  *(v26 + 16) = v25;
  *(v26 + 24) = v24;
  swift_asyncLet_begin();
  v20 = sub_1001FAAD8;
  v21 = v0 + 656;
  v22 = v0 + 2880;
LABEL_10:

  return _swift_asyncLet_get(v21, v19, v20, v22);
}

uint64_t sub_1001FAB48()
{
  v1 = *(v0 + 3072);

  return _swift_asyncLet_get(v0 + 16, v2, sub_1001FABE8, v0 + 2688);
}

uint64_t sub_1001FAC20()
{
  v1 = *(v0 + 3064);

  return _swift_asyncLet_finish(v0 + 656, v2, sub_1001FAC88, v0 + 2784);
}

uint64_t sub_1001FACA4()
{
  v1 = *(v0 + 3016);

  return _swift_asyncLet_finish(v0 + 16, v2, sub_1001FAD0C, v0 + 2832);
}

uint64_t sub_1001FAD28()
{
  v1 = v0[371];
  v2 = v0[365];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1001FAD94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_100003784;

  return sub_100221EF8(a3, a4);
}

uint64_t sub_1001FAE40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_100003788;

  return sub_100224C80(a3);
}

uint64_t sub_1001FAEDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_100003784;

  return sub_1001FAF78(a3);
}

uint64_t sub_1001FAF78(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for Handle();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = *(*(sub_10004B564(&qword_1005AC640, &qword_1004C6EE0) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v7 = type metadata accessor for HandleType();
  v2[11] = v7;
  v8 = *(v7 - 8);
  v2[12] = v8;
  v9 = *(v8 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v10 = type metadata accessor for DataManager.State(0);
  v2[15] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v12 = type metadata accessor for FriendshipAction();
  v2[17] = v12;
  v13 = *(v12 - 8);
  v2[18] = v13;
  v14 = *(v13 + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v15 = type metadata accessor for Friend();
  v2[23] = v15;
  v16 = *(v15 - 8);
  v2[24] = v16;
  v17 = *(v16 + 64) + 15;
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v18 = *(*(sub_10004B564(&qword_1005AFFF8, &unk_1004D2ED0) - 8) + 64) + 15;
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();

  return _swift_task_switch(sub_1001FB270, v1, 0);
}

uint64_t sub_1001FB270()
{
  v200 = v0;
  v1 = v0;
  if (qword_1005A80B8 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v2 = v1[5];
    v3 = type metadata accessor for Logger();
    sub_10000A6F0(v3, qword_1005DFF18);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = v1[23];
      v7 = v1[17];
      v8 = v1[5];
      v9 = swift_slowAlloc();
      v199[0] = swift_slowAlloc();
      *v9 = 136446723;
      *(v9 + 4) = sub_10000D01C(0xD000000000000018, 0x80000001004E51A0, v199);
      *(v9 + 12) = 2160;
      *(v9 + 14) = 1752392040;
      *(v9 + 22) = 2081;
      sub_1001E6D00(&qword_1005AE9B0, &type metadata accessor for Friend);
      v10 = Dictionary.description.getter();
      v12 = sub_10000D01C(v10, v11, v199);

      *(v9 + 24) = v12;
      _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s %{private,mask.hash}s", v9, 0x20u);
      swift_arrayDestroy();
    }

    v13 = v1[24];
    v14 = v1[18];
    v15 = v1[12];
    v16 = v1[5];
    v153 = v1[6];
    v17 = v16 + 64;
    v18 = -1;
    v19 = -1 << *(v16 + 32);
    if (-v19 < 64)
    {
      v18 = ~(-1 << -v19);
    }

    v20 = v18 & *(v16 + 64);
    v166 = (63 - v19) >> 6;
    v195 = (v14 + 16);
    v197 = (v13 + 16);
    v189 = (v14 + 32);
    v191 = (v13 + 32);
    v181 = (v14 + 88);
    v180 = enum case for FriendshipAction.add(_:);
    v168 = enum case for FriendshipAction.remove(_:);
    v171 = v1[18];
    v172 = v1[24];
    v185 = (v13 + 8);
    v187 = (v14 + 8);
    v155 = (v15 + 8);
    v165 = (v15 + 88);
    v164 = enum case for HandleType.follower(_:);
    v154 = enum case for HandleType.following(_:);
    v152 = enum case for HandleType.futureFollower(_:);
    v150 = enum case for HandleType.futureFollowing(_:);
    v149 = enum case for HandleType.pendingOffer(_:);
    v151 = (v1[8] + 8);
    v169 = v1[5];

    v21 = 0;
    v182 = v17;
    v170 = v1;
    if (v20)
    {
      break;
    }

LABEL_12:
    if (v166 <= v21 + 1)
    {
      v30 = v21 + 1;
    }

    else
    {
      v30 = v166;
    }

    v31 = v30 - 1;
    while (1)
    {
      v29 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v29 >= v166)
      {
        v93 = v1[32];
        v94 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
        (*(*(v94 - 8) + 56))(v93, 1, 1, v94);
        v193 = 0;
        v21 = v31;
        goto LABEL_21;
      }

      v20 = *(v17 + 8 * v29);
      ++v21;
      if (v20)
      {
        v21 = v29;
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  while (1)
  {
    v29 = v21;
LABEL_20:
    v32 = v1[31];
    v33 = v1[32];
    v35 = v1[22];
    v34 = v1[23];
    v36 = v1[17];
    v193 = (v20 - 1) & v20;
    v37 = __clz(__rbit64(v20)) | (v29 << 6);
    (*(v172 + 16))(v32, *(v169 + 48) + *(v172 + 72) * v37, v34);
    (*(v171 + 16))(v35, *(v169 + 56) + *(v171 + 72) * v37, v36);
    v38 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
    v39 = *(v38 + 48);
    v1 = v170;
    (*(v172 + 32))(v33, v32, v34);
    (*(v171 + 32))(v33 + v39, v35, v36);
    (*(*(v38 - 8) + 56))(v33, 0, 1, v38);
LABEL_21:
    v40 = v1[33];
    sub_1000176A8(v1[32], v40, &qword_1005AFFF8, &unk_1004D2ED0);
    v41 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
    v42 = (*(*(v41 - 8) + 48))(v40, 1, v41);
    v43 = v1[33];
    if (v42 == 1)
    {
      break;
    }

    v45 = v1[20];
    v44 = v1[21];
    v46 = v1[17];
    v47 = *(v41 + 48);
    (*v191)(v1[30], v1[33], v1[23]);
    (*v189)(v44, v43 + v47, v46);
    v48 = *v195;
    (*v195)(v45, v44, v46);
    v49 = (*v181)(v45, v46);
    v50 = v1[23];
    if (v49 == v180)
    {
      v175 = *v197;
      (*v197)(v1[29], v1[30], v50);
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.default.getter();
      v53 = os_log_type_enabled(v51, v52);
      v54 = v1[29];
      v55 = v1[23];
      if (v53)
      {
        v56 = swift_slowAlloc();
        v167 = swift_slowAlloc();
        v199[0] = v167;
        *v56 = 141558275;
        *(v56 + 4) = 1752392040;
        *(v56 + 12) = 2081;
        sub_1001E6D00(&qword_1005AA720, &type metadata accessor for Friend);
        v57 = dispatch thunk of CustomStringConvertible.description.getter();
        v59 = v58;
        v173 = *v185;
        (*v185)(v54, v55);
        v60 = sub_10000D01C(v57, v59, v199);

        *(v56 + 14) = v60;
        _os_log_impl(&_mh_execute_header, v51, v52, "Added a friend: %{private,mask.hash}s", v56, 0x16u);
        sub_100004984(v167);
      }

      else
      {

        v173 = *v185;
        (*v185)(v54, v55);
      }

      v22 = v1[30];
      v23 = v1[23];
      v24 = v1[21];
      v26 = v1[16];
      v25 = v1[17];
      v27 = v1[15];
      v28 = v1[6];
      v175(v26, v22, v23);
      swift_storeEnumTagMultiPayload();
      sub_100241560(v26);
      sub_10020A58C(v26, type metadata accessor for DataManager.State);
      (*v187)(v24, v25);
      v173(v22, v23);
LABEL_10:
      v20 = v193;
      v17 = v182;
      if (!v193)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v61 = v1[30];
      if (v49 == v168)
      {
        v176 = *v197;
        (*v197)(v1[28], v1[30], v50);
        v62 = Logger.logObject.getter();
        v63 = static os_log_type_t.default.getter();
        v64 = os_log_type_enabled(v62, v63);
        v65 = v1[28];
        v66 = v1[23];
        if (v64)
        {
          v67 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          v199[0] = v68;
          *v67 = 141558275;
          *(v67 + 4) = 1752392040;
          *(v67 + 12) = 2081;
          sub_1001E6D00(&qword_1005AA720, &type metadata accessor for Friend);
          v69 = dispatch thunk of CustomStringConvertible.description.getter();
          v71 = v70;
          v178 = *v185;
          (*v185)(v65, v66);
          v72 = sub_10000D01C(v69, v71, v199);

          *(v67 + 14) = v72;
          _os_log_impl(&_mh_execute_header, v62, v63, "Removed a friend: %{private,mask.hash}s", v67, 0x16u);
          sub_100004984(v68);
        }

        else
        {

          v178 = *v185;
          (*v185)(v65, v66);
        }

        v95 = v1[30];
        v96 = v1[14];
        v97 = v1[11];
        Friend.type.getter();
        v98 = (*v165)(v96, v97);
        if (v98 != v164)
        {
          if (v98 == v154)
          {
            v176(v1[27], v1[30], v1[23]);
            v99 = Logger.logObject.getter();
            v100 = static os_log_type_t.default.getter();
            v101 = os_log_type_enabled(v99, v100);
            v102 = v1[27];
            v103 = v1[23];
            if (v101)
            {
              v104 = swift_slowAlloc();
              v105 = swift_slowAlloc();
              v199[0] = v105;
              *v104 = 141558275;
              *(v104 + 4) = 1752392040;
              *(v104 + 12) = 2081;
              sub_1001E6D00(&qword_1005AA720, &type metadata accessor for Friend);
              v106 = dispatch thunk of CustomStringConvertible.description.getter();
              v108 = v107;
              v178(v102, v103);
              v109 = sub_10000D01C(v106, v108, v199);

              *(v104 + 14) = v109;
              _os_log_impl(&_mh_execute_header, v99, v100, "Clear legacy location for removed following: %{private,mask.hash}s if any", v104, 0x16u);
              sub_100004984(v105);
            }

            else
            {

              v178(v102, v103);
            }

            v125 = v1[30];
            v127 = v1[9];
            v126 = v1[10];
            v128 = v1[7];
            Friend.handle.getter();
            swift_beginAccess();
            sub_1001FED70(v127, v126);
            (*v151)(v127, v128);
            sub_100002CE0(v126, &qword_1005AC640, &qword_1004C6EE0);
            swift_endAccess();
          }

          else if (v98 != v152 && v98 != v150 && v98 != v149)
          {
            v176(v1[26], v1[30], v1[23]);
            v111 = Logger.logObject.getter();
            v112 = static os_log_type_t.error.getter();
            v113 = os_log_type_enabled(v111, v112);
            v114 = v1[26];
            v115 = v1[23];
            if (v113)
            {
              v116 = v1[13];
              v117 = v1[11];
              v174 = v112;
              v118 = swift_slowAlloc();
              v161 = v115;
              v199[0] = swift_slowAlloc();
              *v118 = 136446466;
              *(v118 + 4) = sub_10000D01C(0xD000000000000018, 0x80000001004E51A0, v199);
              *(v118 + 12) = 2080;
              v163 = v111;
              Friend.type.getter();
              sub_1001E6D00(&qword_1005A9198, &type metadata accessor for HandleType);
              v119 = v117;
              v120 = dispatch thunk of CustomStringConvertible.description.getter();
              v122 = v121;
              v123 = *v155;
              (*v155)(v116, v119);
              v178(v114, v161);
              v124 = sub_10000D01C(v120, v122, v199);

              *(v118 + 14) = v124;
              _os_log_impl(&_mh_execute_header, v163, v174, "%{public}s Unknown friend.type %s!", v118, 0x16u);
              swift_arrayDestroy();

              v123(v1[14], v1[11]);
            }

            else
            {

              v178(v114, v115);
              (*v155)(v1[14], v1[11]);
            }
          }
        }

        v129 = v1[30];
        v130 = v1[23];
        v131 = v1[21];
        v133 = v1[16];
        v132 = v1[17];
        v134 = v1[15];
        v135 = v1[6];
        v176(v133, v129, v130);
        swift_storeEnumTagMultiPayload();
        sub_100241560(v133);
        sub_10020A58C(v133, type metadata accessor for DataManager.State);
        (*v187)(v131, v132);
        v178(v129, v130);
        goto LABEL_10;
      }

      v73 = v1[25];
      v74 = v1[23];
      v48(v1[19], v1[21], v1[17]);
      (*v197)(v73, v61, v74);
      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.info.getter();
      v77 = os_log_type_enabled(v75, v76);
      v78 = v1[30];
      v79 = v1[23];
      v177 = v1[25];
      v179 = v1[21];
      v80 = v1[19];
      v81 = v1[17];
      if (v77)
      {
        v156 = v1[13];
        v159 = v1[11];
        v160 = v1[23];
        v82 = swift_slowAlloc();
        v199[0] = swift_slowAlloc();
        *v82 = 136446722;
        *(v82 + 4) = sub_10000D01C(0xD000000000000018, 0x80000001004E51A0, v199);
        *(v82 + 12) = 2082;
        sub_1001E6D00(&qword_1005B0000, &type metadata accessor for FriendshipAction);
        v162 = v78;
        v83 = dispatch thunk of CustomStringConvertible.description.getter();
        log = v75;
        v85 = v84;
        v157 = v76;
        v86 = *v187;
        (*v187)(v80, v81);
        v87 = sub_10000D01C(v83, v85, v199);

        *(v82 + 14) = v87;
        *(v82 + 22) = 2082;
        Friend.type.getter();
        sub_1001E6D00(&qword_1005A9198, &type metadata accessor for HandleType);
        v88 = dispatch thunk of CustomStringConvertible.description.getter();
        v90 = v89;
        (*v155)(v156, v159);
        v91 = *v185;
        (*v185)(v177, v160);
        v92 = sub_10000D01C(v88, v90, v199);

        *(v82 + 24) = v92;
        _os_log_impl(&_mh_execute_header, log, v157, "%{public}s ignoring %{public}s %{public}s", v82, 0x20u);
        swift_arrayDestroy();

        v86(v179, v81);
        v91(v162, v160);
      }

      else
      {

        v110 = *v185;
        (*v185)(v177, v79);
        v86 = *v187;
        (*v187)(v80, v81);
        v86(v179, v81);
        v110(v78, v79);
      }

      v20 = v193;
      v17 = v182;
      v86(v1[20], v1[17]);
      if (!v193)
      {
        goto LABEL_12;
      }
    }
  }

  v136 = v1;
  v139 = v1 + 31;
  v138 = v1[31];
  v137 = v139[1];
  v140 = v136[29];
  v141 = v136[30];
  v143 = v136[27];
  v142 = v136[28];
  v145 = v136[25];
  v144 = v136[26];
  v183 = v136[22];
  v184 = v136[21];
  v186 = v136[20];
  v188 = v136[19];
  v190 = v136[16];
  v192 = v136[14];
  v194 = v136[13];
  v196 = v136[10];
  v198 = v136[9];
  v146 = v136[5];

  v147 = v136[1];

  return v147();
}

uint64_t sub_1001FC634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_100003784;

  return sub_100226A40(a3);
}

uint64_t sub_1001FC6D0@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = __DataStorage._length.getter();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = __DataStorage._length.getter();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

char *sub_1001FC900(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1001FCA34(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10004B564(&qword_1005B00E0, &qword_1004D1680);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 584);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[584 * v8])
    {
      memmove(v12, v13, 584 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1001FCBA8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10004B564(&qword_1005B0100, &qword_1004D1690);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10004B564(&qword_1005B0108, &qword_1004D1698);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1001FCD18(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10004B564(&qword_1005B0020, &qword_1004D1588);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1001FCE6C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10004B564(&qword_1005B01D8, &qword_1004D1760);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1001FCF88(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10004B564(&qword_1005AB020, &qword_1004D7D90);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1001FD094(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10004B564(&qword_1005B0280, &qword_1004D1828);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1001FD1C8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10004B564(&qword_1005B01B0, &qword_1004D1738);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1001FD330(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_10004B564(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10004B564(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

size_t sub_1001FD52C(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10004B564(&qword_1005B0240, &qword_1004D17D0);
  v10 = *(sub_10004B564(&qword_1005AFA48, &unk_1004D1178) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_10004B564(&qword_1005AFA48, &unk_1004D1178) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_1001FD71C()
{
  result = qword_1005AFFC8;
  if (!qword_1005AFFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AFFC8);
  }

  return result;
}

unint64_t sub_1001FD770(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = static Hasher._hash(seed:_:)();

  return sub_1001FE078(a1, v4);
}

unint64_t sub_1001FD7B4(char a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();

  v5 = Hasher._finalize()();

  return sub_1001FE0E4(a1 & 1, v5);
}

unint64_t sub_1001FD868(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for UUID();
  sub_1001E6D00(&qword_1005AECC0, &type metadata accessor for UUID);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1001FEA14(a1, v5, &type metadata accessor for UUID, &qword_1005A9FC8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
}

unint64_t sub_1001FD93C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for Handle();
  sub_1001E6D00(&qword_1005A91B0, &type metadata accessor for Handle);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1001FEA14(a1, v5, &type metadata accessor for Handle, &qword_1005A91B8, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
}

unint64_t sub_1001FDA10(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  v4 = sub_1001D7944();

  return sub_1001FE23C(a1, v4);
}

unint64_t sub_1001FDA80(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for Destination();
  sub_1001E6D00(&qword_1005AADF8, &type metadata accessor for Destination);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1001FEA14(a1, v5, &type metadata accessor for Destination, &qword_1005AAE20, &type metadata accessor for Destination, &protocol conformance descriptor for Destination);
}

unint64_t sub_1001FDB54(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for ClientID();
  sub_1001E6D00(&qword_1005AE9D0, &type metadata accessor for ClientID);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1001FEA14(a1, v5, &type metadata accessor for ClientID, &qword_1005AE9D8, &type metadata accessor for ClientID, &protocol conformance descriptor for ClientID);
}

unint64_t sub_1001FDC28(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for Friend();
  sub_1001E6D00(&qword_1005AE9B0, &type metadata accessor for Friend);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1001FEA14(a1, v5, &type metadata accessor for Friend, &qword_1005AE9B8, &type metadata accessor for Friend, &protocol conformance descriptor for Friend);
}

unint64_t sub_1001FDCFC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for AppNotificationEvent.EventType();
  sub_1001E6D00(&qword_1005B0030, &type metadata accessor for AppNotificationEvent.EventType);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1001FEA14(a1, v5, &type metadata accessor for AppNotificationEvent.EventType, &qword_1005B0038, &type metadata accessor for AppNotificationEvent.EventType, &protocol conformance descriptor for AppNotificationEvent.EventType);
}

unint64_t sub_1001FDDD0(char a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();

  v4 = Hasher._finalize()();

  return sub_1001FE8A4(a1, v4);
}

unint64_t sub_1001FDE8C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for GroupID();
  sub_1001E6D00(&qword_1005AE908, &type metadata accessor for GroupID);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1001FEA14(a1, v5, &type metadata accessor for GroupID, &qword_1005B0190, &type metadata accessor for GroupID, &protocol conformance descriptor for GroupID);
}

unint64_t sub_1001FDF60(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for LocatePriority();
  sub_1001E6D00(&qword_1005B0208, &type metadata accessor for LocatePriority);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1001FEA14(a1, v5, &type metadata accessor for LocatePriority, &qword_1005B0210, &type metadata accessor for LocatePriority, &protocol conformance descriptor for LocatePriority);
}

unint64_t sub_1001FE034(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return sub_1001FEBB4(a1, v4);
}

unint64_t sub_1001FE078(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1001FE0E4(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x6567617373656DLL;
    }

    else
    {
      v6 = 0x7265646E65537369;
    }

    if (a1)
    {
      v7 = 0xE700000000000000;
    }

    else
    {
      v7 = 0xED000064696C6156;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x6567617373656DLL : 0x7265646E65537369;
      v9 = *(*(v2 + 48) + v4) ? 0xE700000000000000 : 0xED000064696C6156;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1001FE23C(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 <= 2)
      {
        if (*(*(v2 + 48) + v4))
        {
          if (v7 == 1)
          {
            v8 = 1684632949;
          }

          else
          {
            v8 = 0x444965636E6566;
          }

          if (v7 == 1)
          {
            v9 = 0xE400000000000000;
          }

          else
          {
            v9 = 0xE700000000000000;
          }
        }

        else
        {
          v8 = 0xD000000000000015;
          v9 = 0x80000001004DDC10;
        }
      }

      else if (*(*(v2 + 48) + v4) > 4u)
      {
        if (v7 == 5)
        {
          v9 = 0xE400000000000000;
          v8 = 1702125924;
        }

        else
        {
          v9 = 0xE800000000000000;
          v8 = 0x6E6F697461636F6CLL;
        }
      }

      else
      {
        if (v7 == 3)
        {
          v8 = 0x5372656767697274;
        }

        else
        {
          v8 = 118;
        }

        if (v7 == 3)
        {
          v9 = 0xED00007375746174;
        }

        else
        {
          v9 = 0xE100000000000000;
        }
      }

      v10 = 0x6E6F697461636F6CLL;
      if (v6 == 5)
      {
        v10 = 1702125924;
      }

      v11 = 0xE800000000000000;
      if (v6 == 5)
      {
        v11 = 0xE400000000000000;
      }

      v12 = 0x5372656767697274;
      if (v6 != 3)
      {
        v12 = 118;
      }

      v13 = 0xED00007375746174;
      if (v6 != 3)
      {
        v13 = 0xE100000000000000;
      }

      if (v6 <= 4)
      {
        v10 = v12;
        v11 = v13;
      }

      v14 = 0x444965636E6566;
      if (v6 == 1)
      {
        v14 = 1684632949;
      }

      v15 = 0xE700000000000000;
      if (v6 == 1)
      {
        v15 = 0xE400000000000000;
      }

      if (!v6)
      {
        v14 = 0xD000000000000015;
        v15 = 0x80000001004DDC10;
      }

      v16 = v6 <= 2 ? v14 : v10;
      v17 = v6 <= 2 ? v15 : v11;
      if (v8 == v16 && v9 == v17)
      {
        break;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v18 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1001FE4A4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = v3;
    v8 = a2;
    v9 = a1;
    v10 = ~v5;
    if (a1)
    {
      v11 = 0;
    }

    else
    {
      v11 = a2 == 0xC000000000000000;
    }

    v12 = !v11;
    v43 = v12;
    v13 = a2 >> 62;
    v14 = __OFSUB__(HIDWORD(a1), a1);
    v40 = v14;
    v39 = HIDWORD(a1) - a1;
    v41 = v10;
    v42 = BYTE6(a2);
    v36 = v4;
    while (1)
    {
      v15 = (*(v7 + 48) + 16 * v6);
      v17 = *v15;
      v16 = v15[1];
      v18 = v16 >> 62;
      if (v16 >> 62 == 3)
      {
        break;
      }

      if (v18 > 1)
      {
        if (v18 != 2)
        {
          goto LABEL_36;
        }

        v24 = *(v17 + 16);
        v23 = *(v17 + 24);
        v25 = __OFSUB__(v23, v24);
        v22 = v23 - v24;
        if (v25)
        {
          goto LABEL_64;
        }

        if (v13 <= 1)
        {
          goto LABEL_33;
        }
      }

      else if (v18)
      {
        LODWORD(v22) = HIDWORD(v17) - v17;
        if (__OFSUB__(HIDWORD(v17), v17))
        {
          goto LABEL_65;
        }

        v22 = v22;
        if (v13 <= 1)
        {
LABEL_33:
          v26 = v42;
          if (v13)
          {
            v26 = v39;
            if (v40)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_39;
        }
      }

      else
      {
        v22 = BYTE6(v16);
        if (v13 <= 1)
        {
          goto LABEL_33;
        }
      }

LABEL_37:
      if (v13 != 2)
      {
        if (!v22)
        {
          return v6;
        }

        goto LABEL_13;
      }

      v28 = *(v9 + 16);
      v27 = *(v9 + 24);
      v25 = __OFSUB__(v27, v28);
      v26 = v27 - v28;
      if (v25)
      {
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
      }

LABEL_39:
      if (v22 != v26)
      {
        goto LABEL_13;
      }

      if (v22 < 1)
      {
        return v6;
      }

      if (v18 <= 1)
      {
        if (!v18)
        {
          v45[0] = v17;
          LOWORD(v45[1]) = v16;
          BYTE2(v45[1]) = BYTE2(v16);
          BYTE3(v45[1]) = BYTE3(v16);
          BYTE4(v45[1]) = BYTE4(v16);
          BYTE5(v45[1]) = BYTE5(v16);
          sub_100005F6C(v17, v16);
          sub_1001FC6D0(v45, v9, v8, &v44);
          sub_1000049D0(v17, v16);
          if (v44)
          {
            return v6;
          }

          v10 = v41;
          goto LABEL_13;
        }

        if (v17 >> 32 < v17)
        {
          goto LABEL_66;
        }

        sub_100005F6C(v17, v16);
        v31 = __DataStorage._bytes.getter();
        if (v31)
        {
          v33 = __DataStorage._offset.getter();
          if (__OFSUB__(v17, v33))
          {
            goto LABEL_69;
          }

          v31 += v17 - v33;
        }

        goto LABEL_58;
      }

      if (v18 == 2)
      {
        v30 = *(v17 + 16);
        v29 = *(v17 + 24);
        sub_100005F6C(v17, v16);
        v31 = __DataStorage._bytes.getter();
        if (v31)
        {
          v32 = __DataStorage._offset.getter();
          if (__OFSUB__(v30, v32))
          {
            goto LABEL_68;
          }

          v31 += v30 - v32;
        }

        if (__OFSUB__(v29, v30))
        {
          goto LABEL_67;
        }

LABEL_58:
        __DataStorage._length.getter();
        v34 = v31;
        v9 = a1;
        v8 = a2;
        sub_1001FC6D0(v34, a1, a2, v45);
        sub_1000049D0(v17, v16);
        if (v45[0])
        {
          return v6;
        }

        v4 = v36;
        v10 = v41;
        goto LABEL_13;
      }

      memset(v45, 0, 14);
      sub_100005F6C(v17, v16);
      sub_1001FC6D0(v45, v9, v8, &v44);
      sub_1000049D0(v17, v16);
      if (v44)
      {
        return v6;
      }

LABEL_13:
      v6 = (v6 + 1) & v10;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        return v6;
      }
    }

    if (v17)
    {
      v19 = 0;
    }

    else
    {
      v19 = v16 == 0xC000000000000000;
    }

    v21 = !v19 || v13 < 3;
    if (((v21 | v43) & 1) == 0)
    {
      return v6;
    }

LABEL_36:
    v22 = 0;
    if (v13 <= 1)
    {
      goto LABEL_33;
    }

    goto LABEL_37;
  }

  return v6;
}

unint64_t sub_1001FE8A4(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v14 = ~v3;
    while (1)
    {
      v5 = *(*(v2 + 48) + v4);
      v6 = 0xD000000000000031;
      v7 = v5 == 1 ? 0xD00000000000002FLL : 0xD00000000000002ELL;
      v8 = v5 == 1 ? "enceScheduleTimer" : ".findmylocated.FenceInviteTimer";
      v9 = *(*(v2 + 48) + v4) ? v7 : 0xD000000000000031;
      v10 = *(*(v2 + 48) + v4) ? v8 : "com.apple.mobileme.fmf3";
      if (a1)
      {
        v6 = a1 == 1 ? 0xD00000000000002FLL : 0xD00000000000002ELL;
        v11 = a1 == 1 ? "enceScheduleTimer" : ".findmylocated.FenceInviteTimer";
      }

      else
      {
        v11 = "com.apple.mobileme.fmf3";
      }

      if (v9 == v6 && (v10 | 0x8000000000000000) == (v11 | 0x8000000000000000))
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v14;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1001FEA14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      sub_1001E6D00(v24, v25);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_1001FEBB4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1000545A4(0, &qword_1005B3440, NSObject_ptr);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

double sub_1001FEC88@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_100011104(a1, a2, &String.hash(into:), sub_10001145C);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v17 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100202528();
      v12 = v17;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = (*(v12 + 56) + 48 * v9);
    v15 = v14[1];
    *a3 = *v14;
    *(a3 + 16) = v15;
    *(a3 + 25) = *(v14 + 25);
    sub_1001FFA2C(v9, v12);
    *v4 = v12;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 40) = -1;
  }

  return result;
}

uint64_t sub_1001FED70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1001FD93C(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100205610(&type metadata accessor for Location, &type metadata accessor for Handle, &qword_1005B0008, &qword_1004D1570);
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = type metadata accessor for Handle();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = type metadata accessor for Location();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a2, v14 + *(v22 + 72) * v8, v15);
    sub_1001FFF5C(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for Location();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_1001FEF48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_100011104(a1, a2, &Data.hash(into:), sub_1001FE4A4);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v22 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100203F50();
      v12 = v22;
    }

    sub_1000049D0(*(*(v12 + 48) + 16 * v9), *(*(v12 + 48) + 16 * v9 + 8));
    v13 = *(v12 + 56);
    v14 = sub_10004B564(&qword_1005AAC60, &qword_1004C46E8);
    v21 = *(v14 - 8);
    sub_1000176A8(v13 + *(v21 + 72) * v9, a3, &qword_1005AAC60, &qword_1004C46E8);
    sub_10020060C(v9, v12);
    *v4 = v12;
    v15 = *(v21 + 56);
    v16 = a3;
    v17 = 0;
    v18 = v14;
  }

  else
  {
    v19 = sub_10004B564(&qword_1005AAC60, &qword_1004C46E8);
    v15 = *(*(v19 - 8) + 56);
    v18 = v19;
    v16 = a3;
    v17 = 1;
  }

  return v15(v16, v17, 1, v18);
}

uint64_t sub_1001FF13C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1001FDC28(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100205610(&type metadata accessor for FriendshipAction, &type metadata accessor for Friend, &qword_1005B0058, &qword_1004D15B0);
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = type metadata accessor for Friend();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = type metadata accessor for FriendshipAction();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a2, v14 + *(v22 + 72) * v8, v15);
    sub_100200B34(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for FriendshipAction();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_1001FF358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, void (*a6)(void)@<X5>, uint64_t a7@<X8>)
{
  v12 = v7;
  v14 = *v7;
  v15 = sub_100011104(a1, a2, &String.hash(into:), sub_10001145C);
  if (v16)
  {
    v17 = v15;
    v18 = *v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v12;
    v31 = *v12;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a6();
      v20 = v31;
    }

    v21 = *(*(v20 + 48) + 16 * v17 + 8);

    v22 = *(v20 + 56);
    v23 = a3(0);
    v30 = *(v23 - 8);
    sub_10020AE30(v22 + *(v30 + 72) * v17, a7, a4);
    sub_100200E78(v17, v20, a5);
    *v12 = v20;
    v24 = *(v30 + 56);
    v25 = a7;
    v26 = 0;
    v27 = v23;
  }

  else
  {
    v28 = a3(0);
    v24 = *(*(v28 - 8) + 56);
    v27 = v28;
    v25 = a7;
    v26 = 1;
  }

  return v24(v25, v26, 1, v27);
}

double sub_1001FF528@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1001FD868(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v15 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100204E04();
      v11 = v15;
    }

    v12 = *(v11 + 48);
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    sub_100010BD4((*(v11 + 56) + 40 * v8), a2);
    sub_10020106C(v8, v11);
    *v3 = v11;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1001FF60C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1001FDB54(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100205610(&type metadata accessor for Date, &type metadata accessor for ClientID, &qword_1005B02A8, &qword_1004D1850);
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = type metadata accessor for ClientID();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = type metadata accessor for Date();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a2, v14 + *(v22 + 72) * v8, v15);
    sub_1002019D4(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for Date();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_1001FF808@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v11 = v6;
  v13 = *v6;
  v14 = sub_1001FD868(a1);
  if (v15)
  {
    v16 = v14;
    v17 = *v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v11;
    v32 = *v11;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100206414(a2, a3, a4, a5);
      v19 = v32;
    }

    v20 = *(v19 + 48);
    v21 = type metadata accessor for UUID();
    v22 = v16;
    (*(*(v21 - 8) + 8))(v20 + *(*(v21 - 8) + 72) * v16, v21);
    v23 = *(v19 + 56);
    v24 = sub_10004B564(a2, a3);
    v31 = *(v24 - 8);
    (*(v31 + 32))(a6, v23 + *(v31 + 72) * v22, v24);
    sub_10020203C(v22, v19, a2, a3);
    *v11 = v19;
    v25 = *(v31 + 56);
    v26 = a6;
    v27 = 0;
    v28 = v24;
  }

  else
  {
    v29 = sub_10004B564(a2, a3);
    v25 = *(*(v29 - 8) + 56);
    v28 = v29;
    v26 = a6;
    v27 = 1;
  }

  return v25(v26, v27, 1, v28);
}

uint64_t sub_1001FFA2C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v15 = Hasher._finalize()();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = (v20 + 48 * v3);
        v22 = (v20 + 48 * v6);
        if (48 * v3 < (48 * v6) || v21 >= v22 + 3 || v3 != v6)
        {
          v9 = *v22;
          v10 = v22[2];
          v21[1] = v22[1];
          v21[2] = v10;
          *v21 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1001FFBFC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1001FFDAC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1001FFF5C(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Handle();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = __chkstk_darwin(v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v43 = a2;
    v13 = ~v11;
    v14 = _HashTable.previousHole(before:)();
    v15 = v13;
    a2 = v43;
    v42 = (v14 + 1) & v15;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v40 = v10;
    v41 = v17;
    v18 = *(v16 + 56);
    v39 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v41(v9, *(a2 + 48) + v18 * v12, v4);
      v23 = *(a2 + 40);
      sub_1001E6D00(&qword_1005A91B0, &type metadata accessor for Handle);
      v24 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v39)(v9, v4);
      v15 = v21;
      v25 = v24 & v21;
      if (a1 >= v42)
      {
        if (v25 >= v42 && a1 >= v25)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v43 + 48) + v19 * a1 >= (*(v43 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v43;
          v28 = *(v43 + 56);
          v29 = *(*(type metadata accessor for Location() - 8) + 72);
          v30 = v29 * a1;
          result = v28 + v29 * a1;
          v31 = v29 * v12;
          v32 = v28 + v29 * v12 + v29;
          if (v30 < v31 || result >= v32)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v40;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v34 = v30 == v31;
            v10 = v40;
            v15 = v21;
            if (!v34)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v42 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v40;
      a2 = v43;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1002002A0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 2 * v3);
        v20 = (v18 + 2 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_100200450(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v14 = Hasher._finalize()();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = v19 + 24 * v3;
        v21 = (v19 + 24 * v6);
        if (v3 != v6 || v20 >= v21 + 24)
        {
          v9 = *v21;
          *(v20 + 16) = *(v21 + 2);
          *v20 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_10020060C(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();
      sub_100005F6C(v11, v12);
      Data.hash(into:)();
      v13 = Hasher._finalize()();
      result = sub_1000049D0(v11, v12);
      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(sub_10004B564(&qword_1005AAC60, &qword_1004C46E8) - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100200814(int64_t a1, uint64_t a2)
{
  v43 = type metadata accessor for Destination();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = _HashTable.previousHole(before:)();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_1001E6D00(&qword_1005AADF8, &type metadata accessor for Destination);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}