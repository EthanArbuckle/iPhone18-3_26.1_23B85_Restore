void sub_1000E8D04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v67 = a2;
  v68 = a1;
  v4 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v63 = &v60 - v6;
  v7 = sub_10004B564(&unk_1005AE620, &qword_1004C4588);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v64 = &v60 - v9;
  v10 = type metadata accessor for PrivateKey();
  v65 = *(v10 - 8);
  v66 = v10;
  v11 = *(v65 + 64);
  v12 = __chkstk_darwin(v10);
  v60 = v13;
  v61 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v62 = &v60 - v14;
  v15 = sub_10004B564(&qword_1005AB4D0, &unk_1004C45D0);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v60 - v20;
  v22 = type metadata accessor for SecureLocationsCachedSharingKey(0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = &v60 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DispatchPredicate();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v31 = (&v60 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = *(v3 + 48);
  *v31 = v32;
  (*(v28 + 104))(v31, enum case for DispatchPredicate.onQueue(_:), v27);
  v33 = v32;
  LOBYTE(v32) = _dispatchPreconditionTest(_:)();
  (*(v28 + 8))(v31, v27);
  if ((v32 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    swift_once();
    goto LABEL_6;
  }

  sub_1000F4690();
  if (v34)
  {
    v35 = String.utf8Data.getter();
    v37 = v36;

    v69 = v35;
    v70 = v37;
    sub_1000CA210();
    DataProtocol.stableUUID.getter();
    sub_1000049D0(v35, v37);
    v38 = *(v22 + 20);
    v39 = type metadata accessor for DiversifiedRootKeys();
    (*(*(v39 - 8) + 16))(&v26[v38], v68, v39);
    *&v26[*(v22 + 24)] = v67;
    sub_10000CF54(v26, v21, type metadata accessor for SecureLocationsCachedSharingKey);
    (*(v23 + 56))(v21, 0, 1, v22);
    v40 = OBJC_IVAR____TtC13findmylocated25SecureLocationsKeyManager_cachedSharingKey;
    swift_beginAccess();
    sub_100005F04(v3 + v40, v19, &qword_1005AB4D0, &unk_1004C45D0);
    swift_beginAccess();
    sub_1000F8980(v21, v3 + v40, &qword_1005AB4D0, &unk_1004C45D0);
    swift_endAccess();
    sub_1000DFF08(v19);
    sub_100002CE0(v19, &qword_1005AB4D0, &unk_1004C45D0);
    sub_100002CE0(v21, &qword_1005AB4D0, &unk_1004C45D0);
    v41 = type metadata accessor for Transaction();
    __chkstk_darwin(v41);
    *(&v60 - 2) = v3;
    *(&v60 - 1) = v26;
    static Transaction.named<A>(_:with:)();
    v42 = v64;
    DiversifiedRootKeys.privateKey.getter();
    v44 = v65;
    v43 = v66;
    if ((*(v65 + 48))(v42, 1, v66) == 1)
    {
      sub_100002CE0(v42, &unk_1005AE620, &qword_1004C4588);
    }

    else
    {
      v49 = *(v44 + 32);
      v50 = v62;
      v49(v62, v42, v43);
      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v51 = type metadata accessor for Logger();
      sub_10000A6F0(v51, qword_1005DFB98);
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&_mh_execute_header, v52, v53, "Dual-writing sharing key back to BA", v54, 2u);
      }

      v55 = type metadata accessor for TaskPriority();
      v56 = v63;
      (*(*(v55 - 8) + 56))(v63, 1, 1, v55);
      v57 = v61;
      (*(v44 + 16))(v61, v50, v43);
      v58 = (*(v44 + 80) + 40) & ~*(v44 + 80);
      v59 = swift_allocObject();
      *(v59 + 2) = 0;
      *(v59 + 3) = 0;
      *(v59 + 4) = v67;
      v49(&v59[v58], v57, v43);
      sub_10020D620(0, 0, v56, &unk_1004C4730, v59);

      (*(v44 + 8))(v50, v43);
    }

    sub_10000CFBC(v26, type metadata accessor for SecureLocationsCachedSharingKey);
    return;
  }

  if (qword_1005A7EE8 != -1)
  {
    goto LABEL_16;
  }

LABEL_6:
  v45 = type metadata accessor for Logger();
  sub_10000A6F0(v45, qword_1005DFB98);
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&_mh_execute_header, v46, v47, "shareKey: Unable to get myPersonID to update cachedSharingKeys", v48, 2u);
  }
}

uint64_t sub_1000E9538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);

  sub_1004B28FC(a3, sub_1000F8BB0, a1);
}

void sub_1000E95B0(uint64_t a1)
{
  v2 = sub_10004B564(&qword_1005AACB8, &qword_1004DD6F0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = (&v19 - v4);
  sub_100005F04(a1, &v19 - v4, &qword_1005AACB8, &qword_1004DD6F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = *v5;
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000A6F0(v7, qword_1005DFB98);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v6;
      v20 = v11;
      *v10 = 136315138;
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v12 = String.init<A>(describing:)();
      v14 = sub_10000D01C(v12, v13, &v20);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "shareKey: Error saving sharing keys locally %s", v10, 0xCu);
      sub_100004984(v11);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000A6F0(v15, qword_1005DFB98);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "shareKey: Successfully saved sharing keys locally", v18, 2u);
    }

    sub_100002CE0(v5, &qword_1005AACB8, &qword_1004DD6F0);
  }

  Transaction.capture()();
}

uint64_t sub_1000E98A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = async function pointer to daemon.getter[1];
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_1000E993C;

  return daemon.getter();
}

uint64_t sub_1000E993C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 32);
  v12 = *v1;
  *(v3 + 40) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 48) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for LocationService();
  v9 = sub_1000F11F8(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_1000F11F8(&qword_1005A9308, type metadata accessor for LocationService);
  *v6 = v12;
  v6[1] = sub_1000E9B18;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1000E9B18(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  v4[7] = a1;
  v4[8] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1000E9F80, 0, 0);
  }

  else
  {
    v7 = v4[5];

    v8 = swift_task_alloc();
    v4[9] = v8;
    *v8 = v6;
    v8[1] = sub_1000E9CA0;

    return sub_10001CC28();
  }
}

uint64_t sub_1000E9CA0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 72);
  v5 = *v1;
  v3[10] = a1;

  v6 = swift_task_alloc();
  v3[11] = v6;
  *v6 = v5;
  v6[1] = sub_1000E9E00;
  v7 = v3[3];
  v8 = v3[2];

  return sub_100471104(v8, v7);
}

uint64_t sub_1000E9E00()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_1000E9FE4;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_1000E9F1C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000E9F1C()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000E9F80()
{
  v1 = v0[8];
  v2 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000E9FE4()
{
  v1 = v0[7];

  v2 = v0[12];
  v3 = v0[10];

  v4 = v0[1];

  return v4();
}

void sub_1000EA050()
{
  v1 = v0;
  v2 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v32[-v4];
  v6 = sub_10004B564(&qword_1005AB4D0, &unk_1004C45D0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v32[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v32[-v11];
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v32[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = *(v1 + 48);
  *v17 = v18;
  (*(v14 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v13);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v17, v13);
  if (v18)
  {
    v20 = type metadata accessor for SecureLocationsCachedSharingKey(0);
    (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
    v21 = OBJC_IVAR____TtC13findmylocated25SecureLocationsKeyManager_cachedSharingKey;
    swift_beginAccess();
    sub_100005F04(v1 + v21, v10, &qword_1005AB4D0, &unk_1004C45D0);
    swift_beginAccess();
    sub_1000F8980(v12, v1 + v21, &qword_1005AB4D0, &unk_1004C45D0);
    swift_endAccess();
    sub_1000DFF08(v10);
    sub_100002CE0(v10, &qword_1005AB4D0, &unk_1004C45D0);
    sub_100002CE0(v12, &qword_1005AB4D0, &unk_1004C45D0);
    if (qword_1005A7EE8 == -1)
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
  v22 = type metadata accessor for Logger();
  sub_10000A6F0(v22, qword_1005DFB98);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "shareKey: Invalidated memory cached key", v25, 2u);
  }

  sub_1000F4690();
  if (v26)
  {

    v27 = type metadata accessor for TaskPriority();
    (*(*(v27 - 8) + 56))(v5, 1, 1, v27);
    v28 = swift_allocObject();
    v28[2] = 0;
    v28[3] = 0;
    v28[4] = v1;

    sub_1001D7F30(0, 0, v5, &unk_1004C4710, v28);
  }

  else
  {
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "shareKey: unable to get myPersonID to invalidate localstorage cached keys", v31, 2u);
    }
  }
}

uint64_t sub_1000EA4C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  v5 = async function pointer to unsafeBlocking<A>(_:)[1];
  v6 = swift_task_alloc();
  *(v4 + 48) = v6;
  v7 = sub_10004B564(&qword_1005AACA0, &qword_1004C4718);
  *v6 = v4;
  v6[1] = sub_1000EA594;

  return unsafeBlocking<A>(_:)(v4 + 16, sub_1000EA8AC, 0, v7);
}

uint64_t sub_1000EA594()
{
  v1 = *(*v0 + 48);
  v3 = *v0;

  return _swift_task_switch(sub_1000EA690, 0, 0);
}

uint64_t sub_1000EA690()
{
  v16 = v0;
  v1 = *(v0 + 16);
  if (*(v0 + 24))
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000A6F0(v2, qword_1005DFB98);
    swift_errorRetain();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v15 = v6;
      *v5 = 136315138;
      *(v0 + 32) = v1;
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v7 = String.init<A>(describing:)();
      v9 = sub_10000D01C(v7, v8, &v15);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "Unable to get follower handles %s", v5, 0xCu);
      sub_100004984(v6);
    }

    else
    {

      sub_1000C8450(v1, 1);
    }

    sub_1000C8450(v1, 1);
  }

  else
  {
    v10 = *(v0 + 40);
    v11 = sub_1000DD878(*(v0 + 16));
    v12 = *(v10 + OBJC_IVAR____TtC13findmylocated25SecureLocationsKeyManager_keySharingThrottle);

    KeyedThrottle.clearThrottleForKeysExcept(keys:)(v11);
    sub_1000C8450(v1, 0);
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1000EA8AC@<X0>(uint64_t a1@<X8>)
{
  sub_10004B564(&qword_1005A9E30, &unk_1004C3370);
  unsafeFromAsyncTask<A>(_:)();
  v2 = qword_1005A7F20;

  if (v2 != -1)
  {
    v3 = swift_once();
  }

  __chkstk_darwin(v3);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  result = sub_1000C8450(v5, 0);
  *a1 = v5;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_1000EA9E8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for DispatchTime();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = dispatch_group_create();
  dispatch_group_enter(v10);
  sub_10004B564(&qword_1005AABB0, &unk_1004C45F0);
  v11 = swift_allocBox();
  v13 = v12;
  v14 = type metadata accessor for DiversifiedRootKeys();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  *(v15 + 16) = v11;
  *(v15 + 24) = v10;

  v16 = v10;
  sub_1000E69C8();

  static DispatchTime.now()();
  + infix(_:_:)();
  v17 = *(v3 + 8);
  v17(v7, v2);
  OS_dispatch_group.wait(timeout:)();
  v17(v9, v2);
  if (static DispatchTimeoutResult.== infix(_:_:)())
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000A6F0(v18, qword_1005DFB98);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "keysForFriends: sync - timed out waiting for keys", v21, 2u);
    }
  }

  swift_beginAccess();
  sub_100005F04(v13, a1, &qword_1005AABB0, &unk_1004C45F0);
}

void sub_1000EACDC(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v6 = swift_projectBox();
  swift_beginAccess();
  sub_1000F8980(a1, v6, &qword_1005AABB0, &unk_1004C45F0);
  dispatch_group_leave(a4);
}

uint64_t sub_1000EAD50(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t), uint64_t a9)
{
  v69 = a6;
  v70 = a7;
  v68 = a5;
  v76 = a2;
  v77 = a4;
  v75 = a3;
  v78 = a9;
  v79 = a8;
  v10 = type metadata accessor for HashedAdvertisement();
  v73 = *(v10 - 8);
  v74 = v10;
  v11 = *(v73 + 64);
  __chkstk_darwin(v10);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Advertisement();
  v71 = *(v14 - 8);
  v72 = v14;
  v15 = *(v71 + 64);
  __chkstk_darwin(v14);
  v17 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PublicKey();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10004B564(&qword_1005AABB0, &unk_1004C45F0);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = &v68 - v25;
  v27 = type metadata accessor for DiversifiedRootKeys();
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27);
  v30 = &v68 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a1;
  v33 = v32;
  v35 = v34;
  sub_100005F04(v31, v26, &qword_1005AABB0, &unk_1004C45F0);
  if ((*(v33 + 48))(v26, 1, v35) == 1)
  {
    sub_100002CE0(v26, &qword_1005AABB0, &unk_1004C45F0);
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_10000A6F0(v36, qword_1005DFB98);
    v37 = v76;
    swift_errorRetain();
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v40 = 136315394;
      *(v40 + 4) = sub_10000D01C(0xD000000000000042, 0x80000001004E0960, aBlock);
      *(v40 + 12) = 2080;
      aBlock[6] = v37;
      swift_errorRetain();
      sub_10004B564(&qword_1005A9E10, &qword_1004D6790);
      v41 = String.init<A>(describing:)();
      v43 = sub_10000D01C(v41, v42, aBlock);

      *(v40 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v38, v39, "shareKey: Error getting key for %s, %s", v40, 0x16u);
      swift_arrayDestroy();
    }

    return v79(v37);
  }

  else
  {
    v76 = v33;
    (*(v33 + 32))(v30, v26, v35);
    DiversifiedRootKeys.publicKey.getter();
    PublicKey.advertisement.getter();
    (*(v19 + 8))(v22, v18);
    Advertisement.hashed.getter();
    (*(v71 + 8))(v17, v72);
    v45 = HashedAdvertisement.data.getter();
    v47 = v46;
    (*(v73 + 8))(v13, v74);
    v48 = Data.base64EncodedString(options:)(0);
    sub_1000049D0(v45, v47);
    v49 = v75;
    v50 = v77;
    if (v48._countAndFlagsBits == v75 && v48._object == v77 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v51 = type metadata accessor for Logger();
      sub_10000A6F0(v51, qword_1005DFB98);
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&_mh_execute_header, v52, v53, "shareKey: all good - subscribedId is same as currentLocationId.", v54, 2u);
      }

      v79(0);
    }

    else
    {
      v74 = v30;
      v55 = v35;
      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v56 = type metadata accessor for Logger();
      sub_10000A6F0(v56, qword_1005DFB98);

      v57 = v69;

      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        aBlock[0] = swift_slowAlloc();
        *v60 = 136315650;
        *(v60 + 4) = sub_10000D01C(v49, v50, aBlock);
        *(v60 + 12) = 2080;
        v61 = sub_10000D01C(v48._countAndFlagsBits, v48._object, aBlock);

        *(v60 + 14) = v61;
        *(v60 + 22) = 2080;
        v62 = v68;
        *(v60 + 24) = sub_10000D01C(v68, v57, aBlock);
        _os_log_impl(&_mh_execute_header, v58, v59, "shareKey: locationId mismatch. subscribedId %s current %s Sending current keys to %s", v60, 0x20u);
        swift_arrayDestroy();
      }

      else
      {

        v62 = v68;
      }

      sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
      v63 = swift_allocObject();
      *(v63 + 16) = xmmword_1004C1900;
      *(v63 + 32) = v62;
      *(v63 + 40) = v57;

      sub_1000EB6B4(v63, _swiftEmptyDictionarySingleton, 0, v79, v78);

      v35 = v55;
      if (qword_1005A7EE0 != -1)
      {
        swift_once();
      }

      v64 = static SystemInfo.underTest.getter();
      v30 = v74;
      if ((v64 & 1) == 0)
      {
        v65 = String._bridgeToObjectiveC()();
        v66 = swift_allocObject();
        *(v66 + 16) = 2;
        aBlock[4] = sub_1000F92A8;
        aBlock[5] = v66;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000119E4;
        aBlock[3] = &unk_10058F298;
        v67 = _Block_copy(aBlock);

        AnalyticsSendEventLazy();
        _Block_release(v67);
      }
    }

    return (*(v76 + 8))(v30, v35);
  }
}

void sub_1000EB6B4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000A6F0(v12, qword_1005DFB98);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v27 = v6;
    v15 = a5;
    v16 = a1;
    v17 = a2;
    v18 = a4;
    v19 = a3;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v28 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_10000D01C(0xD000000000000051, 0x80000001004E0BC0, &v28);
    _os_log_impl(&_mh_execute_header, v13, v14, "%s", v20, 0xCu);
    sub_100004984(v21);

    a3 = v19;
    a4 = v18;
    a2 = v17;
    a1 = v16;
    a5 = v15;
    v6 = v27;
  }

  if (qword_1005A7F60 != -1)
  {
    swift_once();
  }

  v22 = *(*(qword_1005DFBF8 + 24) + 16);
  swift_unownedRetainStrong();

  CurrentValueSubject.value.getter();

  if (v29 == 1)
  {
    v23 = swift_allocObject();
    *(v23 + 16) = v6;
    *(v23 + 24) = a4;
    *(v23 + 32) = a5;
    *(v23 + 40) = a1;
    *(v23 + 48) = a2;
    *(v23 + 56) = a3 & 1;

    sub_1000E69C8();
  }

  else
  {
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "shareKey: Not sending keys since its not meDevice.", v26, 2u);
    }
  }
}

uint64_t sub_1000EB9AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v36 = a8;
  v34 = a2;
  v35 = a7;
  v33 = a6;
  v31 = a4;
  v40 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v40 - 8);
  v11 = *(v42 + 64);
  __chkstk_darwin(v40);
  v38 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for DispatchQoS();
  v39 = *(v41 - 8);
  v13 = *(v39 + 64);
  __chkstk_darwin(v41);
  v32 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10004B564(&qword_1005AABB0, &unk_1004C45F0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15 - 8);
  v19 = &v31 - v18;
  v37 = *(a3 + OBJC_IVAR____TtC13findmylocated25SecureLocationsKeyManager_keySharingQueue);
  sub_100005F04(a1, &v31 - v18, &qword_1005AABB0, &unk_1004C45F0);
  v20 = (*(v16 + 80) + 40) & ~*(v16 + 80);
  v21 = (v17 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v23 = v31;
  v22[2] = a3;
  v22[3] = v23;
  v22[4] = a5;
  sub_1000176A8(v19, v22 + v20, &qword_1005AABB0, &unk_1004C45F0);
  v24 = v34;
  *(v22 + v21) = v33;
  v25 = v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v25 = v35;
  v25[8] = v36;
  *(v22 + ((v21 + 31) & 0xFFFFFFFFFFFFFFF8)) = v24;
  aBlock[4] = sub_1000F879C;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_10058F680;
  v26 = _Block_copy(aBlock);

  swift_errorRetain();
  v27 = v32;
  static DispatchQoS.unspecified.getter();
  v43 = _swiftEmptyArrayStorage;
  sub_1000F11F8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
  v28 = v38;
  v29 = v40;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v26);
  (*(v42 + 8))(v28, v29);
  (*(v39 + 8))(v27, v41);
}

void sub_1000EBDD8(uint64_t a1, void ***p_aBlock, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v114 = a7;
  v132 = a6;
  v112 = a5;
  v128 = a4;
  v131 = a3;
  v133 = a1;
  v10 = type metadata accessor for UUID();
  v113 = *(v10 - 8);
  v11 = *(v113 + 64);
  __chkstk_darwin(v10);
  v13 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for DispatchWorkItemFlags();
  v127 = *(v129 - 8);
  v14 = *(v127 + 64);
  __chkstk_darwin(v129);
  v124 = &v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for DispatchQoS();
  v125 = *(v126 - 8);
  v16 = *(v125 + 64);
  __chkstk_darwin(v126);
  v123 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for DispatchQoS.QoSClass();
  v121 = *(v122 - 8);
  v18 = *(v121 + 64);
  __chkstk_darwin(v122);
  v120 = &v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10004B564(&qword_1005AB4D0, &unk_1004C45D0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v107 - v22;
  v24 = sub_10004B564(&unk_1005AE620, &qword_1004C4588);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v27 = &v107 - v26;
  v119 = type metadata accessor for PrivateKey();
  v118 = *(v119 - 8);
  v28 = *(v118 + 64);
  __chkstk_darwin(v119);
  v30 = &v107 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10004B564(&qword_1005AABB0, &unk_1004C45F0);
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31 - 8);
  v34 = &v107 - v33;
  v35 = type metadata accessor for DiversifiedRootKeys();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  __chkstk_darwin(v35);
  v135 = &v107 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1000F4690();
  if (!v40)
  {
    if (qword_1005A7EE8 == -1)
    {
LABEL_5:
      v41 = type metadata accessor for Logger();
      sub_10000A6F0(v41, qword_1005DFB98);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&_mh_execute_header, v42, v43, "shareKey: Unable to get my own person ID. Not sending keys", v44, 2u);
      }

      if (qword_1005A7EE0 != -1)
      {
        swift_once();
      }

      v45 = qword_1005DFB60;
      v46 = *(qword_1005DFB60 + 16);
      v47 = swift_allocObject();
      *(v47 + 16) = v45;
      strcpy((v47 + 24), "No MyPersonID");
      *(v47 + 38) = -4864;
      v48 = swift_allocObject();
      *(v48 + 16) = sub_1000C7A6C;
      *(v48 + 24) = v47;
      v142 = sub_1000CAA0C;
      v143 = v48;
      aBlock = _NSConcreteStackBlock;
      v139 = 1107296256;
      v140 = sub_10013EC94;
      v141 = &unk_10058F6F8;
      v49 = _Block_copy(&aBlock);
      swift_retain_n();

      dispatch_sync(v46, v49);
      _Block_release(v49);
      LOBYTE(v46) = swift_isEscapingClosureAtFileLocation();

      if (v46)
      {
        __break(1u);
      }

      else
      {
        type metadata accessor for SecureLocationsError(0);
        v136 = 3;
        sub_1000BC07C(_swiftEmptyArrayStorage);
        sub_1000F11F8(&qword_1005A88C0, type metadata accessor for SecureLocationsError);
        _BridgedStoredNSError.init(_:userInfo:)();
        v50 = aBlock;
        (p_aBlock)(aBlock);
      }

      return;
    }

LABEL_29:
    swift_once();
    goto LABEL_5;
  }

  v130 = v39;
  v134 = v40;
  sub_100005F04(v128, v34, &qword_1005AABB0, &unk_1004C45F0);
  if ((*(v36 + 48))(v34, 1, v35) == 1)
  {

    sub_100002CE0(v34, &qword_1005AABB0, &unk_1004C45F0);
LABEL_16:
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v59 = type metadata accessor for Logger();
    sub_10000A6F0(v59, qword_1005DFB98);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&_mh_execute_header, v60, v61, "shareKey: Unable to get keys to send to followers", v62, 2u);
    }

    v63 = v129;
    v64 = p_aBlock;

    if (qword_1005A7EE0 != -1)
    {
      swift_once();
    }

    v65 = qword_1005DFB60;
    v66 = *(qword_1005DFB60 + 16);
    v67 = swift_allocObject();
    v67[2] = v65;
    v67[3] = 0xD000000000000010;
    v67[4] = 0x80000001004E0C20;
    v68 = swift_allocObject();
    *(v68 + 16) = sub_1000CAB60;
    *(v68 + 24) = v67;
    v142 = sub_1000CAA0C;
    v143 = v68;
    p_aBlock = &aBlock;
    aBlock = _NSConcreteStackBlock;
    v139 = 1107296256;
    v140 = sub_10013EC94;
    v141 = &unk_10058F770;
    v69 = _Block_copy(&aBlock);
    swift_retain_n();

    dispatch_sync(v66, v69);
    _Block_release(v69);
    LOBYTE(v66) = swift_isEscapingClosureAtFileLocation();

    if ((v66 & 1) == 0)
    {
      sub_10004B518();
      v70 = v121;
      v71 = v120;
      v72 = v122;
      (*(v121 + 104))(v120, enum case for DispatchQoS.QoSClass.default(_:), v122);
      v73 = static OS_dispatch_queue.global(qos:)();
      (*(v70 + 8))(v71, v72);
      v74 = swift_allocObject();
      v75 = v131;
      *(v74 + 16) = v64;
      *(v74 + 24) = v75;
      v142 = sub_1000F885C;
      v143 = v74;
      aBlock = _NSConcreteStackBlock;
      v139 = 1107296256;
      v140 = sub_100020828;
      v141 = &unk_10058F7C0;
      v76 = _Block_copy(&aBlock);

      v77 = v123;
      static DispatchQoS.unspecified.getter();
      v137 = _swiftEmptyArrayStorage;
      sub_1000F11F8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
      sub_10004B564(&unk_1005A9700, &qword_1004C3820);
      sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
      v78 = v124;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v76);

      (*(v127 + 8))(v78, v63);
      (*(v125 + 8))(v77, v126);

      return;
    }

    __break(1u);
    goto LABEL_29;
  }

  v128 = a8;
  v111 = p_aBlock;
  v51 = v135;
  (*(v36 + 32))(v135, v34, v35);
  DiversifiedRootKeys.privateKey.getter();
  v52 = v118;
  v53 = v119;
  if ((*(v118 + 48))(v27, 1, v119) == 1)
  {

    sub_100002CE0(v27, &unk_1005AE620, &qword_1004C4588);
    (*(v36 + 8))(v51, v35);
LABEL_15:
    p_aBlock = v111;
    goto LABEL_16;
  }

  v117 = v10;
  v109 = v36;
  v110 = v35;
  v54 = v30;
  (*(v52 + 32))(v30, v27, v53);
  v55 = OBJC_IVAR____TtC13findmylocated25SecureLocationsKeyManager_cachedSharingKey;
  v56 = v133;
  swift_beginAccess();
  sub_100005F04(v56 + v55, v23, &qword_1005AB4D0, &unk_1004C45D0);
  v57 = v53;
  v58 = type metadata accessor for SecureLocationsCachedSharingKey(0);
  if ((*(*(v58 - 8) + 48))(v23, 1, v58))
  {

    sub_100002CE0(v23, &qword_1005AB4D0, &unk_1004C45D0);
    (*(v52 + 8))(v54, v57);
    (*(v109 + 8))(v135, v110);
    goto LABEL_15;
  }

  v79 = *&v23[*(v58 + 24)];
  sub_100002CE0(v23, &qword_1005AB4D0, &unk_1004C45D0);
  v80 = swift_allocObject();
  v108 = v80;
  *(v80 + 16) = 0;
  v81 = v80 + 16;
  v82 = *(v112 + 16);
  v116 = v54;
  if (v82)
  {
    v115 = OBJC_IVAR____TtC13findmylocated25SecureLocationsKeyManager_keySharingThrottle;
    v114 &= 1u;
    v113 += 8;
    v83 = (v112 + 40);
    do
    {
      v84 = v81;
      v85 = v79;
      v86 = *(v83 - 1);
      v87 = *v83;

      v88 = String.utf8Data.getter();
      v90 = v89;
      aBlock = v88;
      v139 = v89;
      sub_1000CA210();
      DataProtocol.stableUUID.getter();
      v91 = sub_1000049D0(v88, v90);
      v92 = *(v133 + v115);
      __chkstk_darwin(v91);
      *(&v107 - 14) = v132;
      *(&v107 - 13) = v86;
      v79 = v85;
      v81 = v84;
      v93 = v134;
      *(&v107 - 12) = v87;
      *(&v107 - 11) = v94;
      *(&v107 - 10) = v81;
      *(&v107 - 9) = v13;
      *(&v107 - 8) = v130;
      *(&v107 - 7) = v93;
      v95 = v116;
      *(&v107 - 6) = v79;
      *(&v107 - 5) = v95;
      *(&v107 - 4) = v135;
      *(&v107 - 24) = v114;
      *(&v107 - 2) = v128;

      v96 = v117;
      KeyedThrottle.throttle(key:block:)();

      (*v113)(v13, v96);
      v83 += 2;
      --v82;
    }

    while (v82);
  }

  sub_10004B518();
  v97 = v121;
  v98 = v120;
  v99 = v122;
  (*(v121 + 104))(v120, enum case for DispatchQoS.QoSClass.default(_:), v122);
  v100 = static OS_dispatch_queue.global(qos:)();
  (*(v97 + 8))(v98, v99);
  v101 = swift_allocObject();
  v102 = v131;
  v101[2] = v111;
  v101[3] = v102;
  v101[4] = v108;
  v142 = sub_1000F88F8;
  v143 = v101;
  aBlock = _NSConcreteStackBlock;
  v139 = 1107296256;
  v140 = sub_100020828;
  v141 = &unk_10058F838;
  v103 = _Block_copy(&aBlock);

  v104 = v123;
  static DispatchQoS.unspecified.getter();
  v137 = _swiftEmptyArrayStorage;
  sub_1000F11F8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
  v105 = v124;
  v106 = v129;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v103);

  (*(v127 + 8))(v105, v106);
  (*(v125 + 8))(v104, v126);

  (*(v118 + 8))(v116, v119);
  (*(v109 + 8))(v135, v110);
}

void sub_1000ED024(void (*a1)())
{
  type metadata accessor for SecureLocationsError(0);
  sub_1000BC07C(_swiftEmptyArrayStorage);
  sub_1000F11F8(&qword_1005A88C0, type metadata accessor for SecureLocationsError);
  _BridgedStoredNSError.init(_:userInfo:)();
  a1();
}

BOOL sub_1000ED0E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13)
{
  v191 = a8;
  v189 = a7;
  v188 = a6;
  v194 = a5;
  v192 = a4;
  v201 = a2;
  v190 = type metadata accessor for HashedAdvertisement();
  v187 = *(v190 - 8);
  v15 = *(v187 + 64);
  __chkstk_darwin(v190);
  v186 = &v177 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = type metadata accessor for Advertisement();
  v184 = *(v185 - 8);
  v17 = *(v184 + 64);
  __chkstk_darwin(v185);
  v183 = &v177 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = type metadata accessor for PublicKey();
  v19 = *(v182 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v182);
  v180 = &v177 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Destination();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v22);
  v195 = &v177 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v204 = &v177 - v28;
  __chkstk_darwin(v27);
  v203 = &v177 - v29;
  v30 = type metadata accessor for String.Encoding();
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v202 = &v177 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_10004B564(&qword_1005A9280, &qword_1004C27F8);
  v34 = *(*(v33 - 8) + 64);
  v35 = __chkstk_darwin(v33 - 8);
  v193 = &v177 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v35);
  v197 = (&v177 - v38);
  v39 = __chkstk_darwin(v37);
  v41 = &v177 - v40;
  v42 = __chkstk_darwin(v39);
  v177 = &v177 - v43;
  v44 = __chkstk_darwin(v42);
  v46 = &v177 - v45;
  __chkstk_darwin(v44);
  v48 = (&v177 - v47);
  v49 = *(v23 + 56);
  v205 = v22;
  v179 = v23 + 56;
  v178 = v49;
  v49(&v177 - v47, 1, 1, v22);
  v50 = *(a1 + 16);
  v51 = &off_1005A7000;
  v52 = v48;
  v198 = v48;
  v199 = a3;
  v200 = v23;
  v181 = v19;
  if (v50)
  {
    v53 = sub_1000110D8(v201, a3);
    if (v54)
    {
      v55 = *(a1 + 56);
      v56 = *(v55 + 8 * v53);
      v57 = *(v56 + 16);
      if (v57)
      {
        v58 = qword_1005A7EE8;
        v59 = *(v55 + 8 * v53);

        if (v58 != -1)
        {
          swift_once();
        }

        v60 = type metadata accessor for Logger();
        v61 = sub_10000A6F0(v60, qword_1005DFB98);

        v204 = v61;
        v62 = Logger.logObject.getter();
        v63 = v56;
        v64 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v62, v64))
        {
          v65 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          aBlock = v51;
          *v65 = 136380675;
          v66 = Array.description.getter();
          v19 = v67;
          v68 = sub_10000D01C(v66, v67, &aBlock);

          *(v65 + 4) = v68;
          _os_log_impl(&_mh_execute_header, v62, v64, "shareKey: Valid handles: %{private}s", v65, 0xCu);
          sub_100004984(v51);
        }

        if (*(v63 + 16))
        {
          v51 = v63;
          v63 = 0;
          v196 = (v200 + 8);
          v197 = (v200 + 32);
          v52 = (v51 + 5);
          v206 = (v200 + 48);
          v207 = v57 - 1;
          do
          {
            v19 = *(v52 - 1);
            v64 = *v52;
            v69 = qword_1005A7EF8;

            if (v69 != -1)
            {
              swift_once();
            }

            v70 = Data.init(base64Encoded:options:)();
            if (v71 >> 60 == 15)
            {
              v72 = Logger.logObject.getter();
              v73 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v72, v73))
              {
                v74 = swift_slowAlloc();
                *v74 = 0;
                _os_log_impl(&_mh_execute_header, v72, v73, "failed to decode server provided push identifier", v74, 2u);
              }
            }

            else
            {
              v75 = v70;
              v76 = v71;
              static String.Encoding.utf8.getter();
              v77 = String.init(data:encoding:)();
              v79 = v78;
              sub_10001A794(v75, v76);
              if (v79)
              {

                v19 = v77;
                v64 = v79;
              }
            }

            Destination.init(string:)();
            v80 = v205;
            v57 = *v206;
            if ((*v206)(v46, 1, v205) == 1)
            {
              sub_100002CE0(v46, &qword_1005A9280, &qword_1004C27F8);
            }

            else
            {
              v81 = *v197;
              v82 = v203;
              (*v197)(v203, v46, v80);
              if (sub_10012BC08(v82))
              {
                v207 = v19;

                v124 = v199;

                v125 = Logger.logObject.getter();
                v126 = static os_log_type_t.default.getter();

                if (os_log_type_enabled(v125, v126))
                {
                  v127 = swift_slowAlloc();
                  aBlock = swift_slowAlloc();
                  *v127 = 141558787;
                  *(v127 + 4) = 1752392040;
                  *(v127 + 12) = 2081;
                  *(v127 + 14) = sub_10000D01C(v201, v124, &aBlock);
                  *(v127 + 22) = 2160;
                  *(v127 + 24) = 1752392040;
                  *(v127 + 32) = 2081;
                  *(v127 + 34) = sub_10000D01C(v207, v64, &aBlock);
                  _os_log_impl(&_mh_execute_header, v125, v126, "shareKey: Received handle from server with valid messaging destination %{private,mask.hash}s %{private,mask.hash}s", v127, 0x2Au);
                  swift_arrayDestroy();
                }

                v116 = v198;
                sub_100002CE0(v198, &qword_1005A9280, &qword_1004C27F8);
                v46 = v205;
                v128 = v178;
                v117 = v177;
                v81(v116, v203, v205);
                v128(v116, 0, 1, v46);
                v63 = v199;
                v19 = v207;
LABEL_59:
                sub_100005F04(v116, v117, &qword_1005A9280, &qword_1004C27F8);
                v129 = v57(v117, 1, v46);
                sub_100002CE0(v117, &qword_1005A9280, &qword_1004C27F8);
                if (v129 == 1)
                {
                  v104 = Logger.logObject.getter();
                  v130 = static os_log_type_t.default.getter();
                  v131 = os_log_type_enabled(v104, v130);
                  v51 = &off_1005A7000;
                  v57 = v200;
                  if (v131)
                  {
                    v132 = swift_slowAlloc();
                    *v132 = 0;
                    _os_log_impl(&_mh_execute_header, v104, v130, "shareKey: No valid handles found from server. Cannot send keys", v132, 2u);
                    v52 = v198;
LABEL_62:
                  }

                  else
                  {
                    v52 = v198;
                  }

LABEL_63:
                }

                else
                {
                  v52 = v198;
                  v51 = &off_1005A7000;
                  v57 = v200;
                }

                goto LABEL_64;
              }

              (*v196)(v82, v80);
            }

            if (v207 == v63)
            {

              v116 = v198;
              v63 = v199;
              v46 = v205;
              v117 = v177;
              goto LABEL_59;
            }

            ++v63;

            v52 += 2;
          }

          while (v63 < v51[2]);
        }

        __break(1u);
LABEL_90:
        swift_once();
        goto LABEL_65;
      }
    }
  }

  sub_10004B564(&qword_1005A9E30, &unk_1004C3370);
  unsafeFromAsyncTask<A>(_:)();
  v83 = &off_1005A7000;
  v84 = &qword_1005AB000;
  v85 = aBlock;
  v86 = qword_1005A7F20;

  if (v86 != -1)
  {
LABEL_92:
    v87 = swift_once();
  }

  v88 = v84[369];
  __chkstk_darwin(v87);
  *(&v177 - 2) = v85;
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  sub_1000C8450(v85, 0);
  v89 = sub_1000C8450(v85, 0);
  v63 = v199;
  if (v83[484] != -1)
  {
    v89 = swift_once();
  }

  v90 = v84[369];
  __chkstk_darwin(v89);
  *(&v177 - 2) = v201;
  *(&v177 - 1) = v63;
  sub_10004B564(&qword_1005A9630, &qword_1004C5680);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v91 = aBlock;
  v92 = aBlock[2];
  if (!v92)
  {

    v46 = v205;
    v57 = v200;
    if (v51[477] != -1)
    {
      swift_once();
    }

    v103 = type metadata accessor for Logger();
    sub_10000A6F0(v103, qword_1005DFB98);
    v104 = Logger.logObject.getter();
    v105 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      *v106 = 0;
      _os_log_impl(&_mh_execute_header, v104, v105, "shareKey: No handle found in fmf. Cannot send keys", v106, 2u);
      v19 = 0;
      v64 = 0;
      goto LABEL_62;
    }

    v19 = 0;
    v64 = 0;
    goto LABEL_63;
  }

  v93 = 0;
  v94 = (v200 + 48);
  v202 = (v200 + 32);
  v203 = (v200 + 48);
  v95 = (v200 + 8);
  v96 = aBlock + 5;
  v97 = v92 - 1;
  v46 = v205;
  while (1)
  {
    v98 = *(v96 - 1);
    v64 = *v96;
    swift_bridgeObjectRetain_n();
    v207 = v98;
    Destination.init(string:)();
    v206 = *v94;
    if ((v206)(v41, 1, v46) != 1)
    {
      break;
    }

    sub_100002CE0(v41, &qword_1005A9280, &qword_1004C27F8);
    if (v97 == v93)
    {
      goto LABEL_37;
    }

LABEL_35:
    ++v93;

    v96 += 2;
    if (v93 >= *(v91 + 16))
    {
      __break(1u);
LABEL_37:

      v102 = v198;
      v57 = v200;
      v51 = &off_1005A7000;
      v19 = v207;
      goto LABEL_50;
    }
  }

  v99 = v64;
  v100 = *v202;
  v101 = v204;
  (*v202)(v204, v41, v46);
  if ((sub_10012BC08(v101) & 1) == 0)
  {
    (*v95)(v101, v46);
    v64 = v99;
    v94 = v203;
    if (v97 == v93)
    {
      goto LABEL_37;
    }

    goto LABEL_35;
  }

  v51 = &off_1005A7000;
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v107 = type metadata accessor for Logger();
  sub_10000A6F0(v107, qword_1005DFB98);
  v108 = v199;

  v64 = v99;

  v109 = Logger.logObject.getter();
  v110 = static os_log_type_t.default.getter();

  v111 = os_log_type_enabled(v109, v110);
  v112 = v178;
  v113 = v204;
  if (v111)
  {
    v114 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v114 = 141558787;
    *(v114 + 4) = 1752392040;
    *(v114 + 12) = 2081;
    *(v114 + 14) = sub_10000D01C(v201, v108, &aBlock);
    *(v114 + 22) = 2160;
    *(v114 + 24) = 1752392040;
    *(v114 + 32) = 2081;
    v19 = v207;
    *(v114 + 34) = sub_10000D01C(v207, v99, &aBlock);
    _os_log_impl(&_mh_execute_header, v109, v110, "shareKey: Got valid messaging destination from fmf with %{private,mask.hash}s %{private,mask.hash}s", v114, 0x2Au);
    swift_arrayDestroy();

    v51 = &off_1005A7000;

    v102 = v198;
    sub_100002CE0(v198, &qword_1005A9280, &qword_1004C27F8);
    v115 = v200;
  }

  else
  {

    v102 = v198;
    sub_100002CE0(v198, &qword_1005A9280, &qword_1004C27F8);
    v115 = v200;
    v19 = v207;
  }

  v118 = v113;
  v46 = v205;
  v100(v102, v118, v205);
  v112(v102, 0, 1, v46);
  v57 = v115;
LABEL_50:
  v52 = v102;
  v119 = v197;
  sub_100005F04(v102, v197, &qword_1005A9280, &qword_1004C27F8);
  v120 = (v206)(v119, 1, v46);
  sub_100002CE0(v119, &qword_1005A9280, &qword_1004C27F8);
  if (v120 == 1)
  {
    v63 = v199;
    if (v51[477] != -1)
    {
      swift_once();
    }

    v121 = type metadata accessor for Logger();
    sub_10000A6F0(v121, qword_1005DFB98);
    v104 = Logger.logObject.getter();
    v122 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v104, v122))
    {
      v123 = swift_slowAlloc();
      *v123 = 0;
      _os_log_impl(&_mh_execute_header, v104, v122, "shareKey: No valid handles found in fmf. Cannot send keys", v123, 2u);
      goto LABEL_62;
    }

    goto LABEL_63;
  }

  v63 = v199;
LABEL_64:
  if (v51[477] != -1)
  {
    goto LABEL_90;
  }

LABEL_65:
  v133 = type metadata accessor for Logger();
  sub_10000A6F0(v133, qword_1005DFB98);

  v134 = Logger.logObject.getter();
  v135 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v134, v135))
  {
    v136 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v214 = v51;
    *v136 = 141558787;
    *(v136 + 4) = 1752392040;
    *(v136 + 12) = 2081;
    *(v136 + 14) = sub_10000D01C(v201, v199, &v214);
    *(v136 + 22) = 2160;
    *(v136 + 24) = 1752392040;
    *(v136 + 32) = 2081;
    v63 = v199;
    aBlock = v19;
    v209 = v64;
    sub_10004B564(&qword_1005A96A8, &qword_1004C3320);
    v137 = String.init<A>(describing:)();
    v139 = sub_10000D01C(v137, v138, &v214);

    *(v136 + 34) = v139;
    v57 = v200;
    _os_log_impl(&_mh_execute_header, v134, v135, "shareKey: Sending to %{private,mask.hash}s handle %{private,mask.hash}s", v136, 0x2Au);
    swift_arrayDestroy();
    v52 = v198;

    v46 = v205;
  }

  else
  {
  }

  v140 = v193;
  sub_100005F04(v52, v193, &qword_1005A9280, &qword_1004C27F8);
  if ((*(v57 + 6))(v140, 1, v46) == 1)
  {
    sub_100002CE0(v140, &qword_1005A9280, &qword_1004C27F8);

    v141 = Logger.logObject.getter();
    v142 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v141, v142))
    {
      v143 = swift_slowAlloc();
      v144 = swift_slowAlloc();
      aBlock = v144;
      *v143 = 141558275;
      *(v143 + 4) = 1752392040;
      *(v143 + 12) = 2081;
      *(v143 + 14) = sub_10000D01C(v201, v63, &aBlock);
      _os_log_impl(&_mh_execute_header, v141, v142, "shareKey: Cannot send keys to %{private,mask.hash}s. No handleIdentifier or destination to send key", v143, 0x16u);
      sub_100004984(v144);
    }

    v145 = v194;
    type metadata accessor for SecureLocationsError(0);
    v214 = 9;
    sub_1000BC07C(_swiftEmptyArrayStorage);
    sub_1000F11F8(&qword_1005A88C0, type metadata accessor for SecureLocationsError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v146 = *v145;
    *v145 = aBlock;

    if (qword_1005A7EE0 != -1)
    {
      swift_once();
    }

    v83 = qword_1005DFB60;
    v147 = *(qword_1005DFB60 + 16);
    v85 = swift_allocObject();
    v148 = v201;
    *(v85 + 2) = v83;
    *(v85 + 3) = v148;
    *(v85 + 4) = v63;
    *(v85 + 5) = 0xD000000000000019;
    *(v85 + 6) = 0x80000001004E0C40;
    v41 = swift_allocObject();
    *(v41 + 2) = sub_1000F9260;
    *(v41 + 3) = v85;
    v212 = sub_1000CAA0C;
    v213 = v41;
    aBlock = _NSConcreteStackBlock;
    v209 = 1107296256;
    v210 = sub_10013EC94;
    v211 = &unk_10058F8B0;
    v84 = _Block_copy(&aBlock);
    swift_retain_n();

    dispatch_sync(v147, v84);
    _Block_release(v84);
    LOBYTE(v147) = swift_isEscapingClosureAtFileLocation();

    if (v147)
    {
      __break(1u);
      goto LABEL_92;
    }

    sub_100002CE0(v52, &qword_1005A9280, &qword_1004C27F8);
    return 0;
  }

  else
  {
    v150 = *(v57 + 4);
    v151 = v195;
    v150(v195, v140, v46);
    v152 = v180;
    DiversifiedRootKeys.publicKey.getter();
    v153 = v183;
    PublicKey.advertisement.getter();
    (*(v181 + 8))(v152, v182);
    v154 = v186;
    Advertisement.hashed.getter();
    (*(v184 + 8))(v153, v185);
    v155 = v151;
    v156 = v192;
    v157 = sub_1000EF194(v188, v189, v191, v155, a9, a10, v154);
    v158 = v154;
    v159 = v194;
    (*(v187 + 8))(v158, v190);
    v160 = *v159;
    *v159 = v157;

    if (*v159)
    {
      swift_errorRetain();
      v161 = Logger.logObject.getter();
      v162 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v161, v162))
      {
        v163 = swift_slowAlloc();
        v164 = swift_slowAlloc();
        aBlock = v164;
        *v163 = 136446210;
        v214 = a13;
        swift_errorRetain();
        sub_10004B564(&qword_1005A9E10, &qword_1004D6790);
        v165 = String.init<A>(describing:)();
        v167 = sub_10000D01C(v165, v166, &aBlock);
        v168 = v200;
        v169 = v167;

        *(v163 + 4) = v169;
        _os_log_impl(&_mh_execute_header, v161, v162, "shareKey: sent failed, error: %{public}s", v163, 0xCu);
        sub_100004984(v164);

        (*(v168 + 8))(v195, v205);
      }

      else
      {

        (*(v200 + 8))(v195, v205);
      }

      v176 = v198;
    }

    else
    {
      v170 = Logger.logObject.getter();
      v171 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v170, v171))
      {
        v172 = swift_slowAlloc();
        *v172 = 67109120;
        *(v172 + 4) = a12 & 1;
        _os_log_impl(&_mh_execute_header, v170, v171, "shareKey: sent successfully, should force publish proactive location with new key: %{BOOL}d", v172, 8u);
      }

      v173 = v198;
      if (a12)
      {
        v174 = *(v156 + 16);
        if (v174)
        {
          v175 = *(v156 + 24);

          v174(v201, v63);
          sub_1000CA9C0(v174);
        }
      }

      (*(v200 + 8))(v195, v46);
      v176 = v173;
    }

    sub_100002CE0(v176, &qword_1005A9280, &qword_1004C27F8);
    return *v159 == 0;
  }
}

uint64_t sub_1000EEAF0(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 16);
  swift_errorRetain();
  a1(v5);
}

uint64_t sub_1000EEB5C()
{
  if (qword_1005A7EE8 != -1)
  {
LABEL_31:
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000A6F0(v0, qword_1005DFB98);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v44 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_10000D01C(0xD000000000000025, 0x80000001004E0930, &v44);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s", v3, 0xCu);
    sub_100004984(v4);
  }

  sub_10004B564(&qword_1005A9E30, &unk_1004C3370);
  unsafeFromAsyncTask<A>(_:)();
  v5 = v44;
  v6 = qword_1005A7F20;

  if (v6 != -1)
  {
LABEL_33:
    v7 = swift_once();
  }

  __chkstk_darwin(v7);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  sub_1000C8450(v5, 0);
  v8 = v5 + 56;
  v9 = 1 << *(v5 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v5 + 56);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  v14 = _swiftEmptyDictionarySingleton;
  v15 = _swiftEmptyArrayStorage;
  v40 = v5 + 56;
  v41 = v5;
  while (1)
  {
    if (!v11)
    {
      while (1)
      {
        v18 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v18 >= v12)
        {

          sub_1000EB6B4(v15, v14, 0, DarwinNotification.init(name:value:), 0);
          sub_1000C8450(v5, 0);
        }

        v11 = *(v8 + 8 * v18);
        ++v13;
        if (v11)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v18 = v13;
LABEL_15:
    v19 = (*(v5 + 48) + 40 * (__clz(__rbit64(v11)) | (v18 << 6)));
    v21 = *v19;
    v20 = v19[1];
    v22 = v19[4];
    v43 = v19[3];
    swift_bridgeObjectRetain_n();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1001FC900(0, *(v15 + 2) + 1, 1, v15);
    }

    v24 = *(v15 + 2);
    v23 = *(v15 + 3);
    if (v24 >= v23 >> 1)
    {
      v15 = sub_1001FC900((v23 > 1), v24 + 1, 1, v15);
    }

    *(v15 + 2) = v24 + 1;
    v42 = v15;
    v25 = &v15[16 * v24];
    *(v25 + 4) = v43;
    *(v25 + 5) = v22;
    sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1004C1900;
    *(v26 + 32) = v21;
    *(v26 + 40) = v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = v14;
    v29 = sub_1000110D8(v43, v22);
    v30 = v14[2];
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      goto LABEL_30;
    }

    v5 = v28;
    if (v14[3] < v32)
    {
      break;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100203F3C();
    }

LABEL_25:
    v11 &= v11 - 1;
    if (v5)
    {

      v14 = v44;
      v16 = v44[7];
      v17 = *(v16 + 8 * v29);
      *(v16 + 8 * v29) = v26;
    }

    else
    {
      v14 = v44;
      v44[(v29 >> 6) + 8] |= 1 << v29;
      v35 = (v14[6] + 16 * v29);
      *v35 = v43;
      v35[1] = v22;
      *(v14[7] + 8 * v29) = v26;
      v36 = v14[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        __break(1u);
        goto LABEL_33;
      }

      v14[2] = v38;
    }

    v13 = v18;
    v8 = v40;
    v5 = v41;
    v15 = v42;
  }

  sub_10022EC88(v32, isUniquelyReferenced_nonNull_native);
  v33 = sub_1000110D8(v43, v22);
  if ((v5 & 1) == (v34 & 1))
  {
    v29 = v33;
    goto LABEL_25;
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

int *sub_1000EF194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v117 = a6;
  v118 = a7;
  v115 = a1;
  v116 = a5;
  v113 = a4;
  v123 = a3;
  v121 = type metadata accessor for HashedAdvertisement();
  v9 = *(v121 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v121);
  v109 = v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PrivateKey();
  v119 = *(v12 - 8);
  v120 = v12;
  v13 = *(v119 + 64);
  __chkstk_darwin(v12);
  v108 = v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for Destination();
  v114 = *(v110 - 8);
  v15 = *(v114 + 64);
  v16 = __chkstk_darwin(v110);
  v111 = v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = v17;
  __chkstk_darwin(v16);
  v106 = v98 - v18;
  v112 = sub_10004B564(&qword_1005AAC70, &qword_1004D96D0);
  v107 = *(v112 - 8);
  v19 = *(v107 + 64);
  v20 = __chkstk_darwin(v112);
  v104 = v98 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v122 = v98 - v21;
  updated = type metadata accessor for SecureLocationsKeyUpdateEnvelope(0);
  v23 = *(*(updated - 1) + 64);
  v24 = __chkstk_darwin(updated);
  v26 = v98 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = v98 - v27;
  v29 = type metadata accessor for DispatchPredicate();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  v33 = (v98 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = *(v7 + OBJC_IVAR____TtC13findmylocated25SecureLocationsKeyManager_keySharingQueue);
  *v33 = v34;
  (*(v30 + 104))(v33, enum case for DispatchPredicate.onQueue(_:), v29);
  v35 = v34;
  LOBYTE(v34) = _dispatchPreconditionTest(_:)();
  (*(v30 + 8))(v33, v29);
  if (v34)
  {
    v102 = v19;
    v36 = type metadata accessor for UUID();
    (*(*(v36 - 8) + 16))(v28, v115, v36);
    isEscapingClosureAtFileLocation = v119 + 16;
    v38 = &v28[updated[7]];
    v101 = *(v119 + 16);
    v101(v38, v117, v120);
    v39 = updated[8];
    v103 = v9;
    v42 = *(v9 + 16);
    v41 = (v9 + 16);
    v40 = v42;
    v42(&v28[v39], v118, v121);
    v43 = &v28[updated[5]];
    v115 = a2;
    *v43 = a2;
    *(v43 + 1) = v123;
    *&v28[updated[6]] = v116;
    LOBYTE(aBlock[0]) = 0;
    sub_10000CF54(v28, v26, type metadata accessor for SecureLocationsKeyUpdateEnvelope);
    sub_1000F85A8();
    sub_1000F11F8(&qword_1005AAC80, type metadata accessor for SecureLocationsKeyUpdateEnvelope);
    sub_1000F11F8(&qword_1005AAC88, type metadata accessor for SecureLocationsKeyUpdateEnvelope);

    Message.init<A>(type:version:payload:)();
LABEL_9:
    v99 = v40;
    v100 = v41;
    v116 = isEscapingClosureAtFileLocation;
    v55 = v107;
    v56 = v104;
    (*(v107 + 16))(v104, v122, v112);
    v57 = v114;
    v58 = *(v114 + 16);
    v59 = v106;
    v60 = v110;
    v98[1] = v114 + 16;
    v98[0] = v58;
    v58(v106, v113, v110);
    v61 = (*(v55 + 80) + 16) & ~*(v55 + 80);
    v62 = (v102 + *(v57 + 80) + v61) & ~*(v57 + 80);
    v63 = (v105 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
    v64 = swift_allocObject();
    v65 = v64 + v61;
    v66 = v56;
    v67 = v60;
    v68 = v112;
    (*(v55 + 32))(v65, v66, v112);
    (*(v57 + 32))(v64 + v62, v59, v60);
    v69 = (v64 + v63);
    v70 = v123;
    *v69 = v115;
    v69[1] = v70;

    unsafeFromAsyncTask<A>(_:)();

    (*(v55 + 8))(v122, v68);
    sub_10000CFBC(v28, type metadata accessor for SecureLocationsKeyUpdateEnvelope);
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v71 = type metadata accessor for Logger();
    sub_10000A6F0(v71, qword_1005DFB98);
    v72 = v108;
    v73 = v120;
    v101(v108, v117, v120);
    v74 = v109;
    v75 = v121;
    v99(v109, v118, v121);
    v76 = v111;
    (v98[0])(v111, v113, v67);
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.default.getter();
    v79 = v67;
    if (os_log_type_enabled(v77, v78))
    {
      v80 = v74;
      v81 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      aBlock[0] = v123;
      *v81 = 141559299;
      *(v81 + 4) = 1752392040;
      *(v81 + 12) = 2081;
      sub_1000F11F8(&qword_1005AAC90, &type metadata accessor for PrivateKey);
      v82 = RawRepresentable<>.base64EncodedString(options:)();
      v83 = v73;
      v84 = v79;
      v86 = v85;
      (*(v119 + 8))(v72, v83);
      v87 = sub_10000D01C(v82, v86, aBlock);

      *(v81 + 14) = v87;
      *(v81 + 22) = 2160;
      *(v81 + 24) = 1752392040;
      *(v81 + 32) = 2081;
      sub_1000F11F8(&qword_1005AAC98, &type metadata accessor for HashedAdvertisement);
      v88 = RawRepresentable<>.base64EncodedString(options:)();
      v90 = v89;
      (*(v103 + 8))(v80, v75);
      v91 = sub_10000D01C(v88, v90, aBlock);

      *(v81 + 34) = v91;
      *(v81 + 42) = 2160;
      *(v81 + 44) = 1752392040;
      *(v81 + 52) = 2081;
      sub_1000F11F8(&qword_1005A9260, &type metadata accessor for Destination);
      v92 = v111;
      v93 = dispatch thunk of CustomStringConvertible.description.getter();
      v95 = v94;
      (*(v114 + 8))(v92, v84);
      v96 = sub_10000D01C(v93, v95, aBlock);

      *(v81 + 54) = v96;
      _os_log_impl(&_mh_execute_header, v77, v78, "shareKey: Sent key %{private,mask.hash}s with locationId %{private,mask.hash}s to follower %{private,mask.hash}s", v81, 0x3Eu);
      swift_arrayDestroy();
    }

    else
    {

      (*(v114 + 8))(v76, v67);
      (*(v103 + 8))(v74, v75);
      (*(v119 + 8))(v72, v73);
    }

    return 0;
  }

  __break(1u);
  swift_once();
  v44 = type metadata accessor for Logger();
  sub_10000A6F0(v44, qword_1005DFB98);
  swift_errorRetain();
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v124 = updated;
    aBlock[0] = v48;
    *v47 = 136315138;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v49 = String.init<A>(describing:)();
    v51 = sub_10000D01C(v49, v50, aBlock);

    *(v47 + 4) = v51;
    _os_log_impl(&_mh_execute_header, v45, v46, "shareKey: Error sending IDS message: %s", v47, 0xCu);
    sub_100004984(v48);
  }

  if (qword_1005A7EE0 != -1)
  {
    swift_once();
  }

  v52 = qword_1005DFB60;
  v53 = *(qword_1005DFB60 + 16);
  v54 = swift_allocObject();
  v54[2] = v52;
  v54[3] = v33;
  v54[4] = v29;
  v54[5] = 0xD000000000000015;
  v54[6] = 0x80000001004E0BA0;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_1000F85FC;
  *(v40 + 24) = v54;
  aBlock[4] = sub_1000C7A78;
  aBlock[5] = v40;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013EC94;
  aBlock[3] = &unk_10058F5E0;
  v41 = _Block_copy(aBlock);
  swift_retain_n();

  dispatch_sync(v53, v41);
  _Block_release(v41);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_9;
  }

  return updated;
}

uint64_t sub_1000EFF84()
{
  type metadata accessor for Transaction();

  static Transaction.named<A>(_:with:)();
}

uint64_t sub_1000F0038(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{

  sub_1000F7314(v7, a3, a4, a2);
}

uint64_t sub_1000F00A0(char a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000A6F0(v22, qword_1005DFB98);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_15;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = "performKeyRoll: secureLocations not setup. Not proceeding with KeyRoll";
    goto LABEL_14;
  }

  v29 = v9;
  if (qword_1005A7EF8 != -1)
  {
    swift_once();
  }

  v18 = sub_100021BB4();

  if (v18)
  {
    v28[1] = *(a4 + 48);
    v19 = swift_allocObject();
    v19[2] = a4;
    v19[3] = a2;
    v19[4] = a3;
    aBlock[4] = sub_1000F7834;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100020828;
    aBlock[3] = &unk_10058F1A8;
    v20 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v30 = _swiftEmptyArrayStorage;
    sub_1000F11F8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10004B564(&unk_1005A9700, &qword_1004C3820);
    sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v20);
    (*(v29 + 8))(v12, v8);
    (*(v14 + 8))(v17, v13);
  }

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_10000A6F0(v27, qword_1005DFB98);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = "performKeyRoll: Not a me device. Not initiating keyRoll";
LABEL_14:
    _os_log_impl(&_mh_execute_header, v23, v24, v26, v25, 2u);
  }

LABEL_15:

  return a2(0);
}

uint64_t sub_1000F0540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v56 = a3;
  v55 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v63 = *(v4 - 8);
  v64 = v4;
  v5 = *(v63 + 64);
  __chkstk_darwin(v4);
  v61 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for DispatchQoS();
  v59 = *(v62 - 8);
  v7 = *(v59 + 64);
  __chkstk_darwin(v62);
  v57 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for DispatchQoS.QoSClass();
  v9 = *(v54 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v54);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10004B564(&unk_1005AE620, &qword_1004C4588);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v53 - v15;
  v17 = type metadata accessor for PublicKey();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v19 = sub_10004B564(&qword_1005AABA8, &unk_1004C45E0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v53 - v21;
  v60 = type metadata accessor for DiversifiedRootKeys();
  v58 = *(v60 - 8);
  v23 = *(v58 + 64);
  __chkstk_darwin(v60);
  v67 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for PrivateKey();
  v66 = *(v68 - 8);
  v25 = *(v66 + 64);
  __chkstk_darwin(v68);
  v65 = &v53 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_10000A6F0(v27, qword_1005DFB98);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "performKeyRoll: Starting ", v30, 2u);
  }

  v31 = v65;
  static PrivateKey.random()();
  v32 = type metadata accessor for IntermediateKey();
  (*(*(v32 - 8) + 56))(v22, 1, 1, v32);
  PrivateKey.publicKey.getter();
  v33 = v66;
  v34 = v31;
  v35 = v68;
  (*(v66 + 16))(v16, v34, v68);
  (*(v33 + 56))(v16, 0, 1, v35);
  v36 = v67;
  DiversifiedRootKeys.init(intermediateKey:publicKey:privateKey:)();
  sub_1000E8D04(v36, 1);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&_mh_execute_header, v37, v38, "performKeyRoll: Modified keyIndex.", v39, 2u);
  }

  sub_1000EA050();
  sub_1000EEB5C();
  v40 = *(a1 + 64);
  LOBYTE(aBlock) = 1;
  CurrentValueSubject.send(_:)();
  sub_10004B518();
  v41 = v54;
  (*(v9 + 104))(v12, enum case for DispatchQoS.QoSClass.default(_:), v54);
  v42 = static OS_dispatch_queue.global(qos:)();
  (*(v9 + 8))(v12, v41);
  v43 = swift_allocObject();
  v44 = v56;
  *(v43 + 16) = v55;
  *(v43 + 24) = v44;
  v74 = sub_1000C795C;
  v75 = v43;
  aBlock = _NSConcreteStackBlock;
  v71 = 1107296256;
  v72 = sub_100020828;
  v73 = &unk_10058F1F8;
  v45 = _Block_copy(&aBlock);

  v46 = v57;
  static DispatchQoS.unspecified.getter();
  v69 = _swiftEmptyArrayStorage;
  sub_1000F11F8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
  v47 = v61;
  v48 = v64;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v45);

  (*(v63 + 8))(v47, v48);
  (*(v59 + 8))(v46, v62);

  if (qword_1005A7EE0 != -1)
  {
    swift_once();
    if (static SystemInfo.underTest.getter())
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if ((static SystemInfo.underTest.getter() & 1) == 0)
  {
LABEL_9:
    v49 = String._bridgeToObjectiveC()();
    v50 = swift_allocObject();
    *(v50 + 16) = 0;
    v74 = sub_1000C7E4C;
    v75 = v50;
    aBlock = _NSConcreteStackBlock;
    v71 = 1107296256;
    v72 = sub_1000119E4;
    v73 = &unk_10058F248;
    v51 = _Block_copy(&aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v51);
  }

LABEL_10:
  (*(v58 + 8))(v67, v60);
  return (*(v66 + 8))(v65, v68);
}

uint64_t sub_1000F0E38()
{
  v1 = *(v0 + 24);
  sub_1000CA9C0(*(v0 + 16));
  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 56);

  v5 = *(v0 + 64);

  v6 = *(v0 + 72);

  v7 = *(v0 + 80);

  v8 = *(v0 + 88);

  v9 = *(v0 + 96);

  v10 = *(v0 + 104);

  sub_100002CE0(v0 + OBJC_IVAR____TtC13findmylocated25SecureLocationsKeyManager_cachedSharingKey, &qword_1005AB4D0, &unk_1004C45D0);
  v11 = *(v0 + OBJC_IVAR____TtC13findmylocated25SecureLocationsKeyManager_cacheInvalidationMeDeviceSubscription);

  v12 = *(v0 + OBJC_IVAR____TtC13findmylocated25SecureLocationsKeyManager_cacheInvalidationAutoMeChangedSubscription);

  v13 = *(v0 + OBJC_IVAR____TtC13findmylocated25SecureLocationsKeyManager_cachedDecryptionKeys);

  v14 = *(v0 + OBJC_IVAR____TtC13findmylocated25SecureLocationsKeyManager_keySharingThrottle);

  return v0;
}

uint64_t sub_1000F0F28()
{
  sub_1000F0E38();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1000F0FA8()
{
  sub_1000F8F08(319, &unk_1005AA7C0, type metadata accessor for SecureLocationsCachedSharingKey);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1000F10F8()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DiversifiedRootKeys();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1000F11A4()
{
  result = qword_1005AAB28;
  if (!qword_1005AAB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AAB28);
  }

  return result;
}

uint64_t sub_1000F11F8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000F1240()
{
  result = qword_1005AAB50;
  if (!qword_1005AAB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AAB50);
  }

  return result;
}

unint64_t sub_1000F1294()
{
  result = qword_1005AAB80;
  if (!qword_1005AAB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AAB80);
  }

  return result;
}

uint64_t sub_1000F12E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char *a4@<X8>)
{
  v109 = a4;
  v7 = sub_10004B564(&qword_1005AAC58, &qword_1004C46E0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v105 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v102 = &v94 - v12;
  __chkstk_darwin(v11);
  v103 = &v94 - v13;
  v14 = sub_10004B564(&qword_1005AAB18, &qword_1004C4580);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v94 - v16;
  v18 = type metadata accessor for SecureLocationsCachedSharedKey(0);
  v19 = *(v18 - 8);
  v115 = v18;
  v116 = v19;
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v117 = &v94 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10004B564(&qword_1005AAC60, &qword_1004C46E8);
  v107 = *(v22 - 8);
  v108 = v22;
  v23 = *(v107 + 64);
  v24 = __chkstk_darwin(v22);
  v26 = &v94 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v24);
  v29 = &v94 - v28;
  __chkstk_darwin(v27);
  v31 = &v94 - v30;
  v32 = OBJC_IVAR____TtC13findmylocated25SecureLocationsKeyManager_cachedDecryptionKeys;
  swift_beginAccess();
  v104 = a1;
  v101 = v32;
  v33 = *(a1 + v32);
  if (*(v33 + 16))
  {

    v34 = sub_1001FDA54(a2, a3);
    if (v35)
    {
      sub_100005F04(*(v33 + 56) + *(v107 + 72) * v34, v29, &qword_1005AAC60, &qword_1004C46E8);

      sub_1000176A8(v29, v31, &qword_1005AAC60, &qword_1004C46E8);
      sub_1000176A8(v31, v26, &qword_1005AAC60, &qword_1004C46E8);
      v36 = *v26;
      v37 = *(v26 + 1);
      v38 = *(v108 + 48);
      v39 = sub_10004B564(&qword_1005AAC68, &unk_1004C46F0);
      v40 = *(v39 + 48);
      v41 = v109;
      *v109 = v36;
      *(v41 + 1) = v37;
      v42 = type metadata accessor for PrivateKey();
      (*(*(v42 - 8) + 32))(&v41[v40], &v26[v38], v42);
      return (*(*(v39 - 8) + 56))(v41, 0, 1, v39);
    }
  }

  v44 = sub_1004B7328();
  if (!*(v44 + 16) && (sub_1000F4A14() & 1) != 0)
  {

    v44 = sub_1004B7328();
  }

  v114 = *(v44 + 16);
  if (!v114)
  {
LABEL_81:

    v78 = sub_10004B564(&qword_1005AAC68, &unk_1004C46F0);
    return (*(*(v78 - 8) + 56))(v109, 1, 1, v78);
  }

  v45 = 0;
  v113 = v44 + ((*(v116 + 80) + 32) & ~*(v116 + 80));
  if (a2)
  {
    v46 = 0;
  }

  else
  {
    v46 = a3 == 0xC000000000000000;
  }

  v47 = !v46;
  v100 = v47;
  v48 = __OFSUB__(HIDWORD(a2), a2);
  v98 = v48;
  v97 = HIDWORD(a2) - a2;
  v99 = BYTE6(a3);
  v111 = v44;
  v112 = a3 >> 60;
  v106 = a3 >> 62;
  while (1)
  {
    if (v45 >= *(v44 + 16))
    {
      __break(1u);
LABEL_91:
      __break(1u);
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
    }

    v49 = a2;
    v50 = a3;
    v51 = v117;
    sub_10000CF54(v113 + *(v116 + 72) * v45, v117, type metadata accessor for SecureLocationsCachedSharedKey);
    sub_100005F04(v51 + *(v115 + 28), v17, &qword_1005AAB18, &qword_1004C4580);
    v52 = type metadata accessor for HashedAdvertisement();
    v53 = *(v52 - 8);
    if ((*(v53 + 48))(v17, 1, v52) == 1)
    {
      sub_100002CE0(v17, &qword_1005AAB18, &qword_1004C4580);
      v54 = 0;
      v55 = 0xF000000000000000;
LABEL_23:
      a3 = v50;
      a2 = v49;
      v44 = v111;
      if (v112 > 0xE)
      {
        sub_100005F6C(a2, v50);

        v79 = sub_10001A794(v54, v55);
        goto LABEL_83;
      }

LABEL_24:
      sub_100005F6C(a2, a3);
      sub_10001A794(v54, v55);
      sub_10001A794(a2, a3);
      goto LABEL_25;
    }

    v54 = HashedAdvertisement.data.getter();
    v55 = v56;
    (*(v53 + 8))(v17, v52);
    if (v55 >> 60 == 15)
    {
      goto LABEL_23;
    }

    a3 = v50;
    a2 = v49;
    if (v112 > 0xE)
    {
      v44 = v111;
      goto LABEL_24;
    }

    v57 = v55 >> 62;
    if (v55 >> 62 == 3)
    {
      if (v54)
      {
        v58 = 0;
      }

      else
      {
        v58 = v55 == 0xC000000000000000;
      }

      v60 = !v58 || v106 < 3;
      if (((v60 | v100) & 1) == 0)
      {
        sub_100005F6C(0, 0xC000000000000000);
        sub_10001A794(0, 0xC000000000000000);
        v54 = 0;
        goto LABEL_88;
      }

LABEL_51:
      v61 = 0;
      if (v106 > 1)
      {
        goto LABEL_52;
      }

      goto LABEL_48;
    }

    if (v57 <= 1)
    {
      break;
    }

    if (v57 != 2)
    {
      goto LABEL_51;
    }

    v63 = *(v54 + 16);
    v62 = *(v54 + 24);
    v64 = __OFSUB__(v62, v63);
    v61 = v62 - v63;
    if (v64)
    {
      goto LABEL_94;
    }

    if (v106 > 1)
    {
      goto LABEL_52;
    }

LABEL_48:
    v65 = v99;
    if (v106)
    {
      v65 = v97;
      if (v98)
      {
        goto LABEL_91;
      }
    }

LABEL_54:
    if (v61 != v65)
    {
      goto LABEL_60;
    }

    if (v61 < 1)
    {
      goto LABEL_87;
    }

    if (v57 > 1)
    {
      if (v57 != 2)
      {
        memset(v119, 0, 14);
        sub_100005F6C(v49, v50);
        sub_10002CF44(v54, v55);
        goto LABEL_74;
      }

      v68 = *(v54 + 24);
      v96 = *(v54 + 16);
      v95 = v68;
      sub_100005F6C(v49, v50);
      sub_10002CF44(v54, v55);
      v69 = __DataStorage._bytes.getter();
      if (v69)
      {
        v70 = __DataStorage._offset.getter();
        v71 = v96;
        if (__OFSUB__(v96, v70))
        {
          goto LABEL_97;
        }

        v69 += v96 - v70;
      }

      else
      {
        v71 = v96;
      }

      if (__OFSUB__(v95, v71))
      {
        goto LABEL_96;
      }

      __DataStorage._length.getter();
      v74 = v69;
      a2 = v49;
    }

    else
    {
      if (!v57)
      {
        v119[0] = v54;
        LOWORD(v119[1]) = v55;
        BYTE2(v119[1]) = BYTE2(v55);
        BYTE3(v119[1]) = BYTE3(v55);
        BYTE4(v119[1]) = BYTE4(v55);
        BYTE5(v119[1]) = BYTE5(v55);
        sub_100005F6C(v49, v50);
        sub_10002CF44(v54, v55);
LABEL_74:
        v75 = v110;
        sub_1001FC6D0(v119, v49, v50, &v118);
        v110 = v75;
        sub_10001A794(v54, v55);
        sub_10001A794(v49, v50);
        v76 = v118;
        goto LABEL_79;
      }

      v96 = (v54 >> 32) - v54;
      if (v54 >> 32 < v54)
      {
        goto LABEL_95;
      }

      sub_100005F6C(v49, v50);
      sub_10002CF44(v54, v55);
      v72 = __DataStorage._bytes.getter();
      if (v72)
      {
        v73 = __DataStorage._offset.getter();
        if (__OFSUB__(v54, v73))
        {
          goto LABEL_98;
        }

        v72 += v54 - v73;
      }

      a2 = v49;
      __DataStorage._length.getter();
      v74 = v72;
    }

    a3 = v50;
    v77 = v110;
    sub_1001FC6D0(v74, v49, v50, v119);
    v110 = v77;
    sub_10001A794(v54, v55);
    sub_10001A794(v49, v50);
    v76 = v119[0];
LABEL_79:
    sub_10001A794(v54, v55);
    v44 = v111;
    if (v76)
    {
      goto LABEL_89;
    }

LABEL_25:
    ++v45;
    sub_10000CFBC(v117, type metadata accessor for SecureLocationsCachedSharedKey);
    if (v114 == v45)
    {
      goto LABEL_81;
    }
  }

  if (!v57)
  {
    v61 = BYTE6(v55);
    if (v106 > 1)
    {
      goto LABEL_52;
    }

    goto LABEL_48;
  }

  LODWORD(v61) = HIDWORD(v54) - v54;
  if (__OFSUB__(HIDWORD(v54), v54))
  {
    goto LABEL_93;
  }

  v61 = v61;
  if (v106 <= 1)
  {
    goto LABEL_48;
  }

LABEL_52:
  if (v106 == 2)
  {
    v67 = *(v49 + 16);
    v66 = *(v49 + 24);
    v64 = __OFSUB__(v66, v67);
    v65 = v66 - v67;
    if (v64)
    {
      goto LABEL_92;
    }

    goto LABEL_54;
  }

  if (v61)
  {
LABEL_60:
    sub_100005F6C(v49, v50);
    sub_10001A794(v49, v50);
    sub_10001A794(v54, v55);
    v44 = v111;
    goto LABEL_25;
  }

LABEL_87:
  sub_100005F6C(v49, v50);
  sub_10001A794(v49, v50);
LABEL_88:
  sub_10001A794(v54, v55);
LABEL_89:

LABEL_83:
  v80 = v105;
  v81 = *(v115 + 24);
  __chkstk_darwin(v79);
  *(&v94 - 2) = v117;
  v82 = v103;
  v83 = v110;
  sub_10019F09C(sub_1000F8588, (&v94 - 4), v103);
  v110 = v83;
  v84 = v102;
  sub_100005F04(v82, v102, &qword_1005AAC58, &qword_1004C46E0);
  swift_beginAccess();
  sub_100005F6C(a2, a3);
  sub_100145A50(v84, a2, a3);
  swift_endAccess();
  sub_1000176A8(v82, v80, &qword_1005AAC58, &qword_1004C46E0);
  v85 = v108;
  if ((*(v107 + 48))(v80, 1, v108) == 1)
  {
    sub_100002CE0(v80, &qword_1005AAC58, &qword_1004C46E0);
    v86 = sub_10004B564(&qword_1005AAC68, &unk_1004C46F0);
    (*(*(v86 - 8) + 56))(v109, 1, 1, v86);
  }

  else
  {
    v87 = *v80;
    v88 = *(v80 + 1);
    v89 = *(v85 + 48);
    v90 = sub_10004B564(&qword_1005AAC68, &unk_1004C46F0);
    v91 = *(v90 + 48);
    v92 = v109;
    *v109 = v87;
    *(v92 + 1) = v88;
    v93 = type metadata accessor for PrivateKey();
    (*(*(v93 - 8) + 32))(&v92[v91], &v80[v89], v93);
    (*(*(v90 - 8) + 56))(v92, 0, 1, v90);
  }

  return sub_10000CFBC(v117, type metadata accessor for SecureLocationsCachedSharedKey);
}

uint64_t sub_1000F2008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(sub_10004B564(&qword_1005AAC60, &qword_1004C46E8) + 48);
  v7 = (a2 + *(type metadata accessor for SecureLocationsCachedSharedKey(0) + 20));
  v8 = v7[1];
  *a3 = *v7;
  *(a3 + 1) = v8;
  v9 = type metadata accessor for PrivateKey();
  (*(*(v9 - 8) + 16))(&a3[v6], a1, v9);
}

uint64_t sub_1000F20BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = type metadata accessor for Destination();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v3[8] = *(v5 + 64);
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_1000F2188, 0, 0);
}

uint64_t sub_1000F2188()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[5];
  v6 = *(v0[4] + 40);
  v0[10] = v6;

  (*(v4 + 16))(v1, v5, v3);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  v0[11] = v8;
  (*(v4 + 32))(v8 + v7, v1, v3);
  *(v8 + ((v2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8)) = v6;
  v9 = async function pointer to withTimeout<A>(_:block:)[1];

  v10 = swift_task_alloc();
  v0[12] = v10;
  v11 = sub_10004B564(&qword_1005AAC08, &unk_1004C4650);
  *v10 = v0;
  v10[1] = sub_1000F2314;

  return withTimeout<A>(_:block:)(v0 + 2, 0xE5B8FA8FE2AC0000, 1, &unk_1004C4680, v8, v11);
}

uint64_t sub_1000F2314()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_1000F24A8;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_1000F2430;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000F2430()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[3];

  *v3 = v0[2];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000F24A8()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];

  v4 = v0[1];
  v5 = v0[13];

  return v4();
}

uint64_t sub_1000F2520(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v42 = &v36 - v8;
  v9 = type metadata accessor for Destination();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v40 = v13;
  v41 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v36 - v14;
  if (qword_1005A8608 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_10000A6F0(v16, qword_1005E0DE0);
  v39 = *(v10 + 16);
  v39(v15, a2, v9);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v38 = a2;
    v20 = v19;
    v36 = swift_slowAlloc();
    v43 = v36;
    *v20 = 141558275;
    *(v20 + 4) = 1752392040;
    *(v20 + 12) = 2081;
    sub_1000F11F8(&qword_1005A9260, &type metadata accessor for Destination);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = a1;
    v22 = v3;
    v24 = v23;
    (*(v10 + 8))(v15, v9);
    v25 = sub_10000D01C(v21, v24, &v43);
    v3 = v22;
    a1 = v37;

    *(v20 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v17, v18, "Setting up messaging session to %{private,mask.hash}s", v20, 0x16u);
    sub_100004984(v36);

    a2 = v38;

    if (!*(v3 + 80))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  (*(v10 + 8))(v15, v9);
  if (*(v2 + 80))
  {
LABEL_7:

    Task.cancel()();
  }

LABEL_8:
  v26 = type metadata accessor for TaskPriority();
  v27 = v42;
  (*(*(v26 - 8) + 56))(v42, 1, 1, v26);
  v28 = swift_allocObject();
  swift_weakInit();
  v29 = v41;
  v39(v41, a2, v9);
  v30 = v9;
  v31 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v32 = swift_allocObject();
  *(v32 + 2) = 0;
  *(v32 + 3) = 0;
  *(v32 + 4) = a1;
  *(v32 + 5) = v28;
  (*(v10 + 32))(&v32[v31], v29, v30);

  v33 = sub_1001D7F30(0, 0, v27, &unk_1004C4668, v32);
  v34 = *(v3 + 80);
  *(v3 + 80) = v33;
}

uint64_t sub_1000F299C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[48] = a5;
  v6[49] = a6;
  v6[47] = a4;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v6[50] = v7;
  v8 = *(v7 - 8);
  v6[51] = v8;
  v9 = *(v8 + 64) + 15;
  v6[52] = swift_task_alloc();
  v10 = type metadata accessor for DispatchQoS();
  v6[53] = v10;
  v11 = *(v10 - 8);
  v6[54] = v11;
  v12 = *(v11 + 64) + 15;
  v6[55] = swift_task_alloc();
  v13 = type metadata accessor for Destination();
  v6[56] = v13;
  v14 = *(v13 - 8);
  v6[57] = v14;
  v15 = *(v14 + 64) + 15;
  v6[58] = swift_task_alloc();
  v16 = sub_10004B564(&qword_1005AAC10, &unk_1004C4670);
  v6[59] = v16;
  v17 = *(v16 - 8);
  v6[60] = v17;
  v18 = *(v17 + 64) + 15;
  v6[61] = swift_task_alloc();
  v19 = *(*(sub_10004B564(&qword_1005AAC18, &unk_1004C57D0) - 8) + 64) + 15;
  v6[62] = swift_task_alloc();
  sub_10004B564(&qword_1005AAC08, &unk_1004C4650);
  sub_10001DF0C(&qword_1005AAC20, &qword_1005AAC08, &unk_1004C4650);
  v21 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000F2C20, v21, v20);
}

uint64_t sub_1000F2C20()
{
  v1 = *(v0 + 376);
  dispatch thunk of SessionMessaging.messagesReceived.getter();

  return _swift_task_switch(sub_1000F2C8C, 0, 0);
}

uint64_t sub_1000F2C8C()
{
  v1 = v0[48];
  v2 = v0[31];
  v3 = sub_100011AEC(v0 + 28, v2);
  v4 = *(v2 - 8);
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  (*(v4 + 16))(v6, v3, v2);
  v0[36] = swift_getAssociatedTypeWitness();
  v0[37] = swift_getAssociatedConformanceWitness();
  sub_10000331C(v0 + 33);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();

  swift_beginAccess();
  v7 = v0[37];
  sub_1000BAF2C((v0 + 33), v0[36]);
  v8 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v9 = swift_task_alloc();
  v0[63] = v9;
  *v9 = v0;
  v9[1] = sub_1000F2E5C;
  v10 = v0[62];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v10, 0, 0);
}

uint64_t sub_1000F2E5C()
{
  v2 = *(*v1 + 504);
  v4 = *v1;
  *(*v1 + 512) = v0;

  if (!v0)
  {

    return _swift_task_switch(sub_1000F2F70, 0, 0);
  }

  return result;
}

uint64_t sub_1000F2F70()
{
  v84 = v0;
  v1 = *(v0 + 496);
  v2 = *(v0 + 472);
  v3 = *(v0 + 480);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 384);
    sub_100004984((v0 + 264));
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v6 = *(v0 + 376);
      v7 = *(Strong + 40);

      sub_100123668(v6);
    }

    goto LABEL_16;
  }

  v8 = *(v0 + 384);
  (*(v3 + 32))(*(v0 + 488), v1, v2);
  v9 = swift_weakLoadStrong();
  if (!v9)
  {
    (*(*(v0 + 480) + 8))(*(v0 + 488), *(v0 + 472));
    sub_100004984((v0 + 264));
LABEL_16:
    v33 = *(v0 + 488);
    v34 = *(v0 + 496);
    v35 = *(v0 + 464);
    v36 = *(v0 + 440);
    v37 = *(v0 + 416);
    sub_100004984((v0 + 224));

    v38 = *(v0 + 8);

    return v38();
  }

  v10 = v9;
  v11 = *(v0 + 512);
  v12 = *(v0 + 488);
  v13 = *(v0 + 472);
  sub_1000F7CFC();
  sub_1000F7D50();
  SessionMessage.extract<A>()();
  if (v11)
  {
    if (qword_1005A8608 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000A6F0(v14, qword_1005E0DE0);
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v83[0] = swift_slowAlloc();
      *v17 = 136446466;
      *(v17 + 4) = sub_10000D01C(0xD000000000000015, 0x80000001004E0A30, v83);
      *(v17 + 12) = 2082;
      *(v0 + 360) = v11;
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v18 = String.init<A>(describing:)();
      v20 = sub_10000D01C(v18, v19, v83);

      *(v17 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v15, v16, "%{public}s: %{public}s", v17, 0x16u);
      swift_arrayDestroy();
    }

    if (qword_1005A7EE0 != -1)
    {
      swift_once();
    }

    v21 = qword_1005DFB60;

    if ((static SystemInfo.underTest.getter() & 1) == 0)
    {
      v22 = String._bridgeToObjectiveC()();
      v23 = swift_allocObject();
      *(v23 + 16) = 768;
      *(v0 + 160) = sub_1000CFB48;
      *(v0 + 168) = v23;
      *(v0 + 128) = _NSConcreteStackBlock;
      *(v0 + 136) = 1107296256;
      *(v0 + 144) = sub_1000119E4;
      *(v0 + 152) = &unk_10058F428;
      v24 = _Block_copy((v0 + 128));
      v25 = *(v0 + 168);

      AnalyticsSendEventLazy();
      _Block_release(v24);
    }

    v77 = *(v0 + 472);
    v79 = *(v0 + 488);
    v26 = *(v0 + 440);
    v72 = *(v0 + 432);
    v27 = *(v0 + 416);
    v74 = *(v0 + 424);
    v75 = *(v0 + 480);
    v28 = *(v0 + 400);
    v29 = *(v0 + 408);
    v70 = *(v21 + 16);
    v30 = swift_allocObject();
    v30[2] = v21;
    v30[3] = 0xD000000000000015;
    v30[4] = 0x80000001004E0A30;
    *(v0 + 208) = sub_1000CFB2C;
    *(v0 + 216) = v30;
    *(v0 + 176) = _NSConcreteStackBlock;
    *(v0 + 184) = 1107296256;
    *(v0 + 192) = sub_100020828;
    *(v0 + 200) = &unk_10058F478;
    v31 = _Block_copy((v0 + 176));

    static DispatchQoS.unspecified.getter();
    *(v0 + 352) = _swiftEmptyArrayStorage;
    sub_1000F11F8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10004B564(&unk_1005A9700, &qword_1004C3820);
    sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v31);

    (*(v29 + 8))(v27, v28);
    (*(v72 + 8))(v26, v74);
    (*(v75 + 8))(v79, v77);

    v32 = *(v0 + 216);
  }

  else
  {
    v40 = *(v0 + 16);
    v81 = *(v0 + 24);
    v78 = *(v0 + 40);
    v41 = *(v0 + 56);
    v76 = *(v0 + 48);
    v42 = *(v0 + 64);
    if (qword_1005A8608 != -1)
    {
      swift_once();
    }

    v44 = *(v0 + 456);
    v43 = *(v0 + 464);
    v45 = *(v0 + 448);
    v46 = *(v0 + 392);
    v47 = type metadata accessor for Logger();
    sub_10000A6F0(v47, qword_1005E0DE0);
    (*(v44 + 16))(v43, v46, v45);
    sub_100005F6C(v40, v81);

    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();
    sub_1000049D0(v40, v81);

    v80 = v40;
    if (os_log_type_enabled(v48, v49))
    {
      v82 = v10;
      v50 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *(v0 + 368) = v71;
      *v50 = 134218499;
      v73 = v41;
      if (*(v42 + 16))
      {
        v51 = *(v42 + 48);
      }

      else
      {
        v51 = -1.0;
      }

      v56 = *(v0 + 456);
      v55 = *(v0 + 464);
      v57 = *(v0 + 448);
      *(v50 + 4) = v51;
      *(v50 + 12) = 2160;
      *(v50 + 14) = 1752392040;
      *(v50 + 22) = 2081;
      sub_1000F11F8(&qword_1005A9260, &type metadata accessor for Destination);
      v58 = dispatch thunk of CustomStringConvertible.description.getter();
      v60 = v59;
      (*(v56 + 8))(v55, v57);
      v61 = sub_10000D01C(v58, v60, (v0 + 368));

      *(v50 + 24) = v61;
      _os_log_impl(&_mh_execute_header, v48, v49, "Received Payload with timestamp: %f from %{private,mask.hash}s", v50, 0x20u);
      sub_100004984(v71);

      v10 = v82;
      v41 = v73;
    }

    else
    {
      v53 = *(v0 + 456);
      v52 = *(v0 + 464);
      v54 = *(v0 + 448);

      (*(v53 + 8))(v52, v54);
    }

    v63 = *(v0 + 480);
    v62 = *(v0 + 488);
    v64 = *(v0 + 472);
    v65 = *(v10 + 88);
    *(v0 + 72) = v80;
    *(v0 + 80) = v81;
    *(v0 + 96) = v78;
    *(v0 + 104) = v76;
    *(v0 + 112) = v41;
    *(v0 + 120) = v42;

    PassthroughSubject.send(_:)();

    (*(v63 + 8))(v62, v64);
    sub_1000049D0(v80, v81);
  }

  v66 = *(v0 + 296);
  sub_1000BAF2C(v0 + 264, *(v0 + 288));
  v67 = *(&_sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu + 1);
  v68 = swift_task_alloc();
  *(v0 + 504) = v68;
  *v68 = v0;
  v68[1] = sub_1000F2E5C;
  v69 = *(v0 + 496);

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v69, 0, 0);
}

BOOL sub_1000F3970(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v111 = *(v4 - 8);
  v5 = *(v111 + 64);
  __chkstk_darwin(v4);
  v7 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v108 = &v104 - v10;
  v109 = sub_10004B564(&qword_1005AAE00, &qword_1004C4A18);
  v11 = *(*(v109 - 8) + 64);
  __chkstk_darwin(v109);
  v110 = &v104 - v12;
  v115 = type metadata accessor for Destination();
  v117 = *(v115 - 8);
  v13 = *(v117 + 64);
  __chkstk_darwin(v115);
  v112 = &v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10004B564(&qword_1005A9280, &qword_1004C27F8);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v123 = &v104 - v17;
  v114 = sub_10004B564(&qword_1005AAE08, &qword_1004C4A20);
  v18 = *(*(v114 - 8) + 64);
  __chkstk_darwin(v114);
  v124 = &v104 - v19;
  v20 = type metadata accessor for HashedAdvertisement();
  v121 = *(v20 - 8);
  v122 = v20;
  v21 = *(v121 + 64);
  __chkstk_darwin(v20);
  v113 = &v104 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10004B564(&qword_1005AAB18, &qword_1004C4580);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v116 = &v104 - v25;
  v119 = sub_10004B564(&qword_1005AAE10, &qword_1004C4A28);
  v26 = *(*(v119 - 8) + 64);
  __chkstk_darwin(v119);
  v120 = &v104 - v27;
  v28 = type metadata accessor for PrivateKey();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v32 = &v104 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_10004B564(&unk_1005AE620, &qword_1004C4588);
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33 - 8);
  v36 = &v104 - v35;
  v37 = sub_10004B564(&qword_1005AAE18, &qword_1004C4A30);
  v38 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37);
  v40 = &v104 - v39;
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v41 = type metadata accessor for SecureLocationsCachedSharedKey(0);
  v42 = *(v41 + 20);
  v118 = a1;
  v43 = *(a1 + v42);
  v44 = *(a1 + v42 + 8);
  v45 = a2;
  v46 = (a2 + v42);
  if (v43 != *v46 || v44 != v46[1])
  {
    v47 = v41;
    v48 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v41 = v47;
    if ((v48 & 1) == 0)
    {
      return 0;
    }
  }

  v105 = v7;
  v106 = v4;
  v107 = v41;
  v49 = *(v41 + 24);
  v50 = *(v37 + 48);
  sub_100005F04(v118 + v49, v40, &unk_1005AE620, &qword_1004C4588);
  v51 = v45 + v49;
  v52 = v45;
  sub_100005F04(v51, &v40[v50], &unk_1005AE620, &qword_1004C4588);
  v53 = *(v29 + 48);
  if (v53(v40, 1, v28) == 1)
  {
    if (v53(&v40[v50], 1, v28) == 1)
    {
      sub_100002CE0(v40, &unk_1005AE620, &qword_1004C4588);
      goto LABEL_12;
    }

LABEL_10:
    v54 = &qword_1005AAE18;
    v55 = &qword_1004C4A30;
    v56 = v40;
LABEL_25:
    sub_100002CE0(v56, v54, v55);
    return 0;
  }

  sub_100005F04(v40, v36, &unk_1005AE620, &qword_1004C4588);
  if (v53(&v40[v50], 1, v28) == 1)
  {
    (*(v29 + 8))(v36, v28);
    goto LABEL_10;
  }

  (*(v29 + 32))(v32, &v40[v50], v28);
  sub_1000F11F8(&qword_1005AAE30, &type metadata accessor for PrivateKey);
  v57 = dispatch thunk of static Equatable.== infix(_:_:)();
  v58 = *(v29 + 8);
  v58(v32, v28);
  v58(v36, v28);
  sub_100002CE0(v40, &unk_1005AE620, &qword_1004C4588);
  if ((v57 & 1) == 0)
  {
    return 0;
  }

LABEL_12:
  v59 = v107[7];
  v60 = *(v119 + 48);
  v61 = v120;
  sub_100005F04(v118 + v59, v120, &qword_1005AAB18, &qword_1004C4580);
  sub_100005F04(v52 + v59, v61 + v60, &qword_1005AAB18, &qword_1004C4580);
  v63 = v121;
  v62 = v122;
  v64 = *(v121 + 48);
  if (v64(v61, 1, v122) == 1)
  {
    v65 = v64(v61 + v60, 1, v62);
    v66 = v123;
    v67 = v124;
    if (v65 == 1)
    {
      sub_100002CE0(v61, &qword_1005AAB18, &qword_1004C4580);
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v68 = v116;
  sub_100005F04(v61, v116, &qword_1005AAB18, &qword_1004C4580);
  v69 = v64(v61 + v60, 1, v62);
  v66 = v123;
  v67 = v124;
  if (v69 == 1)
  {
    (*(v63 + 8))(v68, v62);
LABEL_17:
    v54 = &qword_1005AAE10;
    v55 = &qword_1004C4A28;
    v56 = v61;
    goto LABEL_25;
  }

  v70 = v61 + v60;
  v71 = v113;
  (*(v63 + 32))(v113, v70, v62);
  sub_1000F11F8(&qword_1005AAE28, &type metadata accessor for HashedAdvertisement);
  v72 = dispatch thunk of static Equatable.== infix(_:_:)();
  v73 = *(v63 + 8);
  v73(v71, v62);
  v73(v68, v62);
  sub_100002CE0(v61, &qword_1005AAB18, &qword_1004C4580);
  if ((v72 & 1) == 0)
  {
    return 0;
  }

LABEL_19:
  v74 = v107[8];
  v75 = *(v114 + 48);
  sub_100005F04(v118 + v74, v67, &qword_1005A9280, &qword_1004C27F8);
  sub_100005F04(v52 + v74, v67 + v75, &qword_1005A9280, &qword_1004C27F8);
  v76 = *(v117 + 48);
  v77 = v115;
  if (v76(v67, 1, v115) != 1)
  {
    sub_100005F04(v67, v66, &qword_1005A9280, &qword_1004C27F8);
    if (v76(v67 + v75, 1, v77) != 1)
    {
      v79 = v66;
      v80 = v117;
      v81 = v67 + v75;
      v82 = v112;
      (*(v117 + 32))(v112, v81, v77);
      sub_1000F11F8(&qword_1005AAE20, &type metadata accessor for Destination);
      v83 = dispatch thunk of static Equatable.== infix(_:_:)();
      v84 = *(v80 + 8);
      v84(v82, v77);
      v84(v79, v77);
      sub_100002CE0(v67, &qword_1005A9280, &qword_1004C27F8);
      if ((v83 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_29;
    }

    (*(v117 + 8))(v66, v77);
    goto LABEL_24;
  }

  if (v76(v67 + v75, 1, v77) != 1)
  {
LABEL_24:
    v54 = &qword_1005AAE08;
    v55 = &qword_1004C4A20;
    v56 = v67;
    goto LABEL_25;
  }

  sub_100002CE0(v67, &qword_1005A9280, &qword_1004C27F8);
LABEL_29:
  v85 = v107;
  v86 = v107[9];
  v87 = v118;
  v88 = (v118 + v86);
  v89 = *(v118 + v86 + 8);
  v90 = (v52 + v86);
  v91 = v90[1];
  if (v89)
  {
    if (!v91)
    {
      return 0;
    }

    if (*v88 != *v90 || v89 != v91)
    {
      v92 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v85 = v107;
      if ((v92 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v91)
  {
    return 0;
  }

  if (*(v87 + v85[10]) != *(v52 + v85[10]))
  {
    return 0;
  }

  v93 = v85[11];
  v94 = v110;
  v95 = *(v109 + 48);
  sub_100005F04(v87 + v93, v110, &unk_1005AE5B0, &qword_1004C32F0);
  sub_100005F04(v52 + v93, v94 + v95, &unk_1005AE5B0, &qword_1004C32F0);
  v96 = *(v111 + 48);
  v97 = v106;
  if (v96(v94, 1, v106) == 1)
  {
    if (v96(v94 + v95, 1, v97) == 1)
    {
      sub_100002CE0(v94, &unk_1005AE5B0, &qword_1004C32F0);
      return 1;
    }

    goto LABEL_42;
  }

  v98 = v108;
  sub_100005F04(v94, v108, &unk_1005AE5B0, &qword_1004C32F0);
  if (v96(v94 + v95, 1, v97) == 1)
  {
    (*(v111 + 8))(v98, v97);
LABEL_42:
    v54 = &qword_1005AAE00;
    v55 = &qword_1004C4A18;
    v56 = v94;
    goto LABEL_25;
  }

  v99 = v111;
  v100 = v94 + v95;
  v101 = v105;
  (*(v111 + 32))(v105, v100, v97);
  sub_1000F11F8(&qword_1005AE5D0, &type metadata accessor for Date);
  v102 = dispatch thunk of static Equatable.== infix(_:_:)();
  v103 = *(v99 + 8);
  v103(v101, v97);
  v103(v98, v97);
  sub_100002CE0(v94, &unk_1005AE5B0, &qword_1004C32F0);
  return (v102 & 1) != 0;
}

uint64_t sub_1000F4690()
{
  v0 = sub_10004B564(&qword_1005A9DA8, &unk_1004D1130);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = (v25 - v2);
  if (qword_1005A8098 != -1)
  {
    swift_once();
  }

  v4 = sub_10004B564(&qword_1005A9DB0, &qword_1004C3270);
  v5 = sub_10000A6F0(v4, qword_1005AF7C0);
  os_unfair_lock_lock(v5);
  sub_100005F04(v5 + *(v4 + 28), v3, &qword_1005A9DA8, &unk_1004D1130);
  os_unfair_lock_unlock(v5);
  v6 = type metadata accessor for Credentials(0);
  if ((*(*(v6 - 8) + 48))(v3, 1, v6) == 1)
  {
    sub_100002CE0(v3, &qword_1005A9DA8, &unk_1004D1130);
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v9 = *v3;
    v10 = v3[1];

    sub_10000CFBC(v3, type metadata accessor for Credentials);
    v11 = String.utf8Data.getter();
    v13 = v12;
    v14 = Data.base64EncodedString(options:)(0);
    sub_1000049D0(v11, v13);
    v26 = v14;
    v25[2] = 61;
    v25[3] = 0xE100000000000000;
    v25[0] = 126;
    v25[1] = 0xE100000000000000;
    sub_1000246F4();
    v7 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v8 = v15;
  }

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_10000A6F0(v16, qword_1005DFB98);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v26._countAndFlagsBits = v20;
    *v19 = 136315138;
    if (v8)
    {
      v21 = v7;
    }

    else
    {
      v21 = 7104878;
    }

    if (v8)
    {
      v22 = v8;
    }

    else
    {
      v22 = 0xE300000000000000;
    }

    v23 = sub_10000D01C(v21, v22, &v26._countAndFlagsBits);

    *(v19 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v17, v18, "MyPersonID %s", v19, 0xCu);
    sub_100004984(v20);
  }

  return v7;
}

uint64_t sub_1000F4BB8(uint64_t a1)
{
  v4 = *(type metadata accessor for SecureLocationsCachedSharedKey(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000368C;

  return sub_100315D34(a1, v6, v1 + v5);
}

uint64_t sub_1000F4CA8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000368C;

  return sub_100312AF0(a1, v4, v5);
}

unint64_t sub_1000F4D64()
{
  result = qword_1005AABA0;
  if (!qword_1005AABA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AABA0);
  }

  return result;
}

void sub_1000F4DB8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_1000049D0(a3, a4);
  }
}

uint64_t sub_1000F4E04(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, char *a10, uint64_t a11)
{
  v150 = a5;
  v151 = a8;
  v148 = a7;
  v155 = a6;
  v145 = a4;
  v14 = type metadata accessor for String.Encoding();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v16 = sub_10004B564(&qword_1005A9280, &qword_1004C27F8);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v149 = v141 - v18;
  v153 = type metadata accessor for Destination();
  v19 = *(v153 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v153 - 8);
  v143 = v141 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = v22;
  __chkstk_darwin(v21);
  v24 = v141 - v23;
  v25 = [a3 pushIdentifiers];
  sub_10004B564(&qword_1005A9630, &qword_1004C5680);
  v26 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v27 = *(v26 + 16);
  v157._countAndFlagsBits = a1;
  v157._object = a2;
  v154 = v19;
  v146 = v24;
  if (!v27 || (v28 = sub_1000110D8(a1, a2), (v29 & 1) == 0) || (v30 = *(*(v26 + 56) + 8 * v28), , , !v30[2]))
  {

LABEL_10:
    if (qword_1005A7EF8 != -1)
    {
      v36 = swift_once();
    }

    v48 = qword_1005DFBC8;
    v49 = *(qword_1005DFBC8 + 128);
    __chkstk_darwin(v36);
    countAndFlagsBits = v157._countAndFlagsBits;
    object = v157._object;
    v141[-4] = v48;
    v141[-3] = countAndFlagsBits;
    v141[-2] = object;

    sub_10004B564(&qword_1005A96A8, &qword_1004C3320);
    OS_dispatch_queue.sync<A>(execute:)();
    v152 = 0;

    v38 = v160;
    v156 = v159;
    v39 = &qword_1005A8000;
    if (qword_1005A8608 != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    sub_10000A6F0(v52, qword_1005E0DE0);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v158 = v56;
      *v55 = 136315138;
      v159 = v156;
      v160 = v38;

      v57 = String.init<A>(describing:)();
      v59 = sub_10000D01C(v57, v58, &v158);

      *(v55 + 4) = v59;
      _os_log_impl(&_mh_execute_header, v53, v54, "liveLocations: no handle provided by server. Looking at fmf data %s", v55, 0xCu);
      sub_100004984(v56);
      countAndFlagsBits = v157._countAndFlagsBits;
    }

    v60 = v157._object;
    if (v38)
    {
      goto LABEL_34;
    }

    goto LABEL_17;
  }

  v31 = v30[4];
  v32 = v30[5];

  v33 = Data.init(base64Encoded:options:)();
  v35 = v34;

  if (v35 >> 60 == 15)
  {
    goto LABEL_10;
  }

  v152 = 0;
  static String.Encoding.utf8.getter();
  v156 = String.init(data:encoding:)();
  v38 = v37;
  v39 = &qword_1005A8000;
  if (qword_1005A8608 != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  sub_10000A6F0(v40, qword_1005E0DE0);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v147 = swift_slowAlloc();
    v158 = v147;
    *v43 = 136315138;
    v159 = v156;
    v160 = v38;

    sub_10004B564(&qword_1005A96A8, &qword_1004C3320);
    v44 = String.init<A>(describing:)();
    v142 = v33;
    v46 = sub_10000D01C(v44, v45, &v158);

    *(v43 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v41, v42, "liveLocations: handle provided from server %s", v43, 0xCu);
    sub_100004984(v147);

    v47 = v142;
  }

  else
  {
    v47 = v33;
  }

  sub_10001A794(v47, v35);

  countAndFlagsBits = v157._countAndFlagsBits;
  v60 = v157._object;
  if (v38)
  {
    goto LABEL_34;
  }

LABEL_17:
  if (qword_1005A8608 != -1)
  {
    swift_once();
  }

  v61 = type metadata accessor for Logger();
  sub_10000A6F0(v61, qword_1005E0DE0);
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.default.getter();
  v64 = os_log_type_enabled(v62, v63);
  v65 = v152;
  if (v64)
  {
    v66 = swift_slowAlloc();
    *v66 = 0;
    _os_log_impl(&_mh_execute_header, v62, v63, "liveLocations: no handle found in cache. Checking fmf directly", v66, 2u);
  }

  if (qword_1005A7EF8 != -1)
  {
    swift_once();
  }

  v67 = *(qword_1005DFBC8 + 128);

  sub_10004B564(&qword_1005A9FC0, &qword_1004C3520);
  OS_dispatch_queue.sync<A>(execute:)();
  v152 = v65;

  v68 = v159 + 8;
  v69 = v159[2] + 1;
  v39 = &qword_1005A8000;
  while (--v69)
  {
    v70 = *(v68 - 4);
    v38 = *(v68 - 3);
    if (*(v68 - 1) != countAndFlagsBits || *v68 != v60)
    {
      v68 += 5;
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        continue;
      }
    }

    v156 = v70;
    goto LABEL_34;
  }

  v38 = 0;
LABEL_34:
  if (v39[193] != -1)
  {
    swift_once();
  }

  v72 = type metadata accessor for Logger();
  v73 = sub_10000A6F0(v72, qword_1005E0DE0);
  swift_bridgeObjectRetain_n();

  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v159 = swift_slowAlloc();
    *v76 = 141558787;
    *(v76 + 4) = 1752392040;
    *(v76 + 12) = 2081;
    if (v38)
    {
      v77 = v156;
    }

    else
    {
      v77 = 7104878;
    }

    if (v38)
    {
      v78 = v38;
    }

    else
    {
      v78 = 0xE300000000000000;
    }

    v79 = sub_10000D01C(v77, v78, &v159);

    *(v76 + 14) = v79;
    *(v76 + 22) = 2160;
    *(v76 + 24) = 1752392040;
    *(v76 + 32) = 2081;
    v80 = v155;
    *(v76 + 34) = sub_10000D01C(v157._countAndFlagsBits, v60, &v159);
    _os_log_impl(&_mh_execute_header, v74, v75, "liveLocations: Handle identifier %{private,mask.hash}s for findMyId %{private,mask.hash}s", v76, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
    v80 = v155;
  }

  v82 = v153;
  v81 = v154;
  v83 = v149;
  v149 = a10;
  v147 = v38;
  if (!v38)
  {
    goto LABEL_48;
  }

  swift_bridgeObjectRetain_n();
  Destination.init(string:)();
  if ((*(v81 + 48))(v83, 1, v82) == 1)
  {

    sub_100002CE0(v83, &qword_1005A9280, &qword_1004C27F8);
LABEL_48:
    if (qword_1005A7EE0 != -1)
    {
      swift_once();
    }

    v159 = 0;
    v160 = 0xE000000000000000;

    _StringGuts.grow(_:)(46);

    v159 = 0xD00000000000002CLL;
    v160 = 0x80000001004E09B0;
    v85 = v157._countAndFlagsBits;
    v84 = v157._object;
    String.append(_:)(v157);
    sub_1000CC7D4(v159, v160);

    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v159 = v89;
      *v88 = 141558275;
      *(v88 + 4) = 1752392040;
      *(v88 + 12) = 2081;
      *(v88 + 14) = sub_10000D01C(v85, v84, &v159);
      _os_log_impl(&_mh_execute_header, v86, v87, "liveLocations: Unable to create a MessagingDestination for findMyId %{private,mask.hash}s", v88, 0x16u);
      sub_100004984(v89);
    }

    sub_1000F7A28();
    v90 = swift_allocError();
    *v91 = 14;
    v92 = v150;
    v93 = *(v150 + 16);
    v94 = swift_allocObject();
    v95 = v148;
    v94[2] = v80;
    v94[3] = v95;
    v94[4] = v90;
    v94[5] = v92;
    v96 = v151;
    v94[6] = v151;
    v94[7] = a9;
    v94[8] = v149;
    v94[9] = a11;

    v97 = v96;

    swift_errorRetain();
    sub_10010029C(v80, v95, sub_1000F7A7C, v94);
  }

  v141[1] = v73;
  v142 = a9;
  v141[0] = a11;
  v98 = *(v81 + 32);
  v99 = v146;
  v98(v146, v83, v82);
  v100 = v143;
  (*(v81 + 16))(v143, v99, v82);
  v101 = (*(v81 + 80) + 24) & ~*(v81 + 80);
  v102 = swift_allocObject();
  *(v102 + 16) = v145;
  v98((v102 + v101), v100, v82);

  sub_10004B564(&qword_1005AAC08, &unk_1004C4650);
  v103 = v152;
  unsafeFromAsyncTask<A>(_:)();
  if (v103)
  {

    swift_errorRetain();
    v104 = Logger.logObject.getter();
    v105 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      v159 = swift_slowAlloc();
      *v106 = 136446466;
      *(v106 + 4) = sub_10000D01C(0xD000000000000041, 0x80000001004E09E0, &v159);
      *(v106 + 12) = 2082;
      swift_getErrorValue();
      v107 = Error.localizedDescription.getter();
      v109 = sub_10000D01C(v107, v108, &v159);

      *(v106 + 14) = v109;
      v82 = v153;
      _os_log_impl(&_mh_execute_header, v104, v105, "%{public}s: %{public}s", v106, 0x16u);
      swift_arrayDestroy();
    }

    v119 = v155;
    if (qword_1005A7EE0 != -1)
    {
      swift_once();
    }

    sub_1000CC27C(0, 0, 0xD000000000000041, 0x80000001004E09E0);

    v120 = v150;
    v121 = *(v150 + 16);
    v122 = swift_allocObject();
    v124 = v148;
    v123 = v149;
    v122[2] = v119;
    v122[3] = v124;
    v122[4] = v103;
    v122[5] = v120;
    v125 = v151;
    v126 = v142;
    v122[6] = v151;
    v122[7] = v126;
    v127 = v141[0];
    v122[8] = v123;
    v122[9] = v127;
    swift_errorRetain();
    swift_errorRetain();

    v128 = v125;

    sub_10010029C(v119, v124, sub_1000F92F8, v122);

    v129 = v146;
  }

  else
  {

    v110 = v159;

    v111 = v157._object;

    v112 = Logger.logObject.getter();
    v113 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      v152 = swift_slowAlloc();
      v159 = v152;
      *v114 = 136316163;
      v158 = v110;

      v115 = String.init<A>(describing:)();
      v117 = sub_10000D01C(v115, v116, &v159);

      *(v114 + 4) = v117;
      *(v114 + 12) = 2160;
      *(v114 + 14) = 1752392040;
      *(v114 + 22) = 2081;
      v118 = sub_10000D01C(v156, v38, &v159);

      *(v114 + 24) = v118;
      *(v114 + 32) = 2160;
      *(v114 + 34) = 1752392040;
      *(v114 + 42) = 2081;
      v82 = v153;
      *(v114 + 44) = sub_10000D01C(v157._countAndFlagsBits, v111, &v159);
      _os_log_impl(&_mh_execute_header, v112, v113, "liveLocations: Received session %s for identifier %{private,mask.hash}s for findMyId %{private,mask.hash}s ", v114, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v130 = v155;
    v129 = v146;
    sub_1000F2520(v110, v146);
    v131 = v150;
    v132 = *(v150 + 16);
    v133 = swift_allocObject();
    v157._object = v110;
    v135 = v148;
    v134 = v149;
    v133[2] = v130;
    v133[3] = v135;
    v133[4] = 0;
    v133[5] = v131;
    v136 = v151;
    v137 = v142;
    v133[6] = v151;
    v133[7] = v137;
    v138 = v141[0];
    v133[8] = v134;
    v133[9] = v138;

    v139 = v136;

    sub_10010029C(v130, v135, sub_1000F92F8, v133);
  }

  (*(v154 + 8))(v129, v82);
}

uint64_t sub_1000F6038(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449794D646E6966 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001004E0DC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001004E0DE0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E614872656E776FLL && a2 == 0xEB00000000656C64 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001004E0E00 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001004E0E20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001004E0E40 == a2)
  {

    return 7;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1000F62DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4B676E6972616873 && a2 == 0xEB00000000737965 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E49646572616873 && a2 == 0xEB00000000786564)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

char *sub_1000F6404(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v63 = a1;
  v64 = a2;
  v4 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v65 = &v53 - v6;
  v7 = type metadata accessor for SecureLocationsConfig();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v62 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for OS_dispatch_queue.Attributes();
  v10 = *(*(v67 - 8) + 64);
  __chkstk_darwin(v67);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v57 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v13 = *(v57 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v57);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_10004B518();
  *(v2 + 2) = 0;
  *(v2 + 3) = 0;
  v56 = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v58 = *(v13 + 104);
  v59 = v13 + 104;
  v58(v16);
  static DispatchQoS.unspecified.getter();
  v71 = _swiftEmptyArrayStorage;
  v69 = sub_1000F11F8(&qword_1005A8670, &type metadata accessor for OS_dispatch_queue.Attributes);
  v68 = sub_10004B564(&unk_1005AB400, &unk_1004C0BF0);
  v70 = sub_10001DF0C(&qword_1005A8680, &unk_1005AB400, &unk_1004C0BF0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v2 + 6) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v2 + 7) = 0;
  LOBYTE(v71) = 0;
  v17 = sub_10004B564(&qword_1005AA6A8, &qword_1004C4690);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v61 = v17;
  swift_allocObject();
  *(v2 + 8) = CurrentValueSubject.init(_:)();
  *(v2 + 10) = 0;
  v20 = sub_10004B564(&qword_1005AAC38, &qword_1004C4698);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  v60 = v20;
  swift_allocObject();
  *(v2 + 11) = PassthroughSubject.init()();
  v23 = sub_10004B564(&qword_1005AAC40, &unk_1004C46A0);
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  *(v2 + 13) = AsyncStreamProvider.init()();
  v26 = OBJC_IVAR____TtC13findmylocated25SecureLocationsKeyManager_cachedSharingKey;
  v27 = type metadata accessor for SecureLocationsCachedSharingKey(0);
  (*(*(v27 - 8) + 56))(&v3[v26], 1, 1, v27);
  *&v3[OBJC_IVAR____TtC13findmylocated25SecureLocationsKeyManager_cacheInvalidationMeDeviceSubscription] = 0;
  *&v3[OBJC_IVAR____TtC13findmylocated25SecureLocationsKeyManager_cacheInvalidationAutoMeChangedSubscription] = 0;
  v54 = ".keyManager.queue";
  v55 = OBJC_IVAR____TtC13findmylocated25SecureLocationsKeyManager_decryptionKeyAccessQueue;
  v28 = v16;
  v29 = v16;
  v30 = v56;
  v32 = v57;
  v31 = v58;
  (v58)(v29, v56, v57);
  static DispatchQoS.unspecified.getter();
  v71 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *&v3[v55] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v3[OBJC_IVAR____TtC13findmylocated25SecureLocationsKeyManager_cachedDecryptionKeys] = _swiftEmptyDictionarySingleton;
  v54 = ".decryptionKey.queue";
  v55 = OBJC_IVAR____TtC13findmylocated25SecureLocationsKeyManager_keySharingQueue;
  v31(v28, v30, v32);
  static DispatchQoS.unspecified.getter();
  v71 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *&v3[v55] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v33 = OBJC_IVAR____TtC13findmylocated25SecureLocationsKeyManager_keySharingThrottle;
  if (qword_1005A7EF8 != -1)
  {
    swift_once();
  }

  v34 = (qword_1005DFBC8 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex);

  os_unfair_lock_lock(v34);
  v35 = sub_10004B564(&qword_1005A9DE0, &qword_1004C32C0);
  v36 = v62;
  sub_10000CF54(v34 + *(v35 + 28), v62, type metadata accessor for SecureLocationsConfig);
  os_unfair_lock_unlock(v34);

  v37 = *(v36 + 72);
  sub_10000CFBC(v36, type metadata accessor for SecureLocationsConfig);
  v38 = sub_10004B564(&qword_1005AAC48, &unk_1004C46B0);
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  *&v3[v33] = KeyedThrottle.init(throttleInterval:)();
  v71 = *(v3 + 11);
  sub_10001DF0C(&qword_1005AAC50, &qword_1005AAC38, &qword_1004C4698);
  *(v3 + 12) = Publisher.eraseToAnyPublisher()();
  v41 = v64;
  *(v3 + 4) = v63;
  *(v3 + 5) = v41;
  v42 = *(v3 + 8);
  swift_unownedRetainStrong();
  sub_10004B564(&qword_1005AA6C8, &qword_1004C4308);
  v43 = swift_allocObject();
  *(v43 + 16) = v42;
  swift_unownedRetainStrong();
  v71 = v42;

  swift_unownedRetain();
  swift_unownedRetain();
  sub_10001DF0C(&qword_1005AA6D0, &qword_1005AA6A8, &qword_1004C4690);
  v44 = Publisher.eraseToAnyPublisher()();
  swift_unownedRelease();

  *(v43 + 24) = v44;

  *(v3 + 9) = v43;
  v71 = *(qword_1005DFBC8 + 56);

  sub_10004B564(&qword_1005A9F68, &unk_1004C46C0);
  sub_10001DF0C(&qword_1005A9F70, &qword_1005A9F68, &unk_1004C46C0);
  v45 = Publisher<>.sink(receiveValue:)();

  v46 = *(v3 + 7);
  *(v3 + 7) = v45;

  if (qword_1005A7F60 != -1)
  {
    swift_once();
  }

  v71 = *(*(qword_1005DFBF8 + 24) + 24);

  sub_10004B564(&unk_1005AB520, &unk_1004C54A0);
  sub_10001DF0C(&qword_1005AA6F0, &unk_1005AB520, &unk_1004C54A0);
  v47 = Publisher<>.sink(receiveValue:)();

  v48 = *&v3[OBJC_IVAR____TtC13findmylocated25SecureLocationsKeyManager_cacheInvalidationMeDeviceSubscription];
  *&v3[OBJC_IVAR____TtC13findmylocated25SecureLocationsKeyManager_cacheInvalidationMeDeviceSubscription] = v47;

  v49 = type metadata accessor for TaskPriority();
  v50 = v65;
  (*(*(v49 - 8) + 56))(v65, 1, 1, v49);
  v51 = swift_allocObject();
  v51[2] = 0;
  v51[3] = 0;
  v51[4] = v3;

  sub_1001D7F30(0, 0, v50, &unk_1004C46D8, v51);

  return v3;
}

uint64_t sub_1000F6DC0(uint64_t a1, char *a2, char *a3, uint64_t a4, char *a5)
{
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v10 - 8);
  v39 = v10;
  v11 = *(v38 + 64);
  __chkstk_darwin(v10);
  v36 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for DispatchQoS();
  v35 = *(v37 - 8);
  v13 = *(v35 + 64);
  __chkstk_darwin(v37);
  v34 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10004B564(&qword_1005AB4D0, &unk_1004C45D0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v34 - v17;
  v19 = swift_allocObject();
  v19[2] = a2;
  v19[3] = a3;
  v19[4] = a4;
  v19[5] = a5;
  v20 = *(a1 + 32);

  sub_1004AE5D8(v18);

  v21 = type metadata accessor for SecureLocationsCachedSharingKey(0);
  LODWORD(v20) = (*(*(v21 - 8) + 48))(v18, 1, v21);
  sub_100002CE0(v18, &qword_1005AB4D0, &unk_1004C45D0);
  if (v20 == 1)
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000A6F0(v22, qword_1005DFB98);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Running setupSecureLocations", v25, 2u);
    }

    v26 = *(a1 + 48);
    v27 = swift_allocObject();
    v27[2] = a1;
    v27[3] = sub_1000F8C74;
    v27[4] = v19;
    aBlock[4] = sub_1000F92FC;
    aBlock[5] = v27;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100020828;
    aBlock[3] = &unk_10058FA40;
    v28 = _Block_copy(aBlock);

    v29 = v34;
    static DispatchQoS.unspecified.getter();
    v40 = _swiftEmptyArrayStorage;
    sub_1000F11F8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10004B564(&unk_1005A9700, &qword_1004C3820);
    sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
    v30 = v36;
    v31 = v39;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v28);
    (*(v38 + 8))(v30, v31);
    (*(v35 + 8))(v29, v37);
  }

  else
  {
    v32 = type metadata accessor for Transaction();
    __chkstk_darwin(v32);
    *(&v34 - 4) = a5;
    *(&v34 - 3) = a2;
    *(&v34 - 2) = a3;
    static Transaction.named<A>(_:with:)();
    Transaction.capture()();
  }
}

uint64_t sub_1000F7314(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v8 - 8);
  v35 = v8;
  v9 = *(v34 + 64);
  __chkstk_darwin(v8);
  v32 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for DispatchQoS();
  v31 = *(v33 - 8);
  v11 = *(v31 + 64);
  __chkstk_darwin(v33);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10004B564(&qword_1005AB4D0, &unk_1004C45D0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v31 - v16;
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = a4;
  v19 = *(a1 + 32);

  sub_1004AE5D8(v17);

  v20 = type metadata accessor for SecureLocationsCachedSharingKey(0);
  LODWORD(v19) = (*(*(v20 - 8) + 48))(v17, 1, v20);
  sub_100002CE0(v17, &qword_1005AB4D0, &unk_1004C45D0);
  if (v19 == 1)
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000A6F0(v21, qword_1005DFB98);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Running setupSecureLocations", v24, 2u);
    }

    v25 = *(a1 + 48);
    v26 = swift_allocObject();
    v26[2] = a1;
    v26[3] = sub_1000F77EC;
    v26[4] = v18;
    aBlock[4] = sub_1000F77F8;
    aBlock[5] = v26;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100020828;
    aBlock[3] = &unk_10058F108;
    v27 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v36 = _swiftEmptyArrayStorage;
    sub_1000F11F8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10004B564(&unk_1005A9700, &qword_1004C3820);
    sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
    v28 = v32;
    v29 = v35;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v27);
    (*(v34 + 8))(v28, v29);
    (*(v31 + 8))(v13, v33);
  }

  else
  {
    sub_1000F00A0(1, a2, a3, a4);
  }
}

uint64_t sub_1000F7840(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
  }
}

uint64_t sub_1000F784C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100003690;

  return sub_100312AF0(a1, v4, v5);
}

unint64_t sub_1000F78FC()
{
  result = qword_1005AABC0;
  if (!qword_1005AABC0)
  {
    sub_10004B610(&qword_1005AABB8, &qword_1004C4610);
    sub_1000F7980();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AABC0);
  }

  return result;
}

unint64_t sub_1000F7980()
{
  result = qword_1005AABC8;
  if (!qword_1005AABC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AABC8);
  }

  return result;
}

unint64_t sub_1000F79D4()
{
  result = qword_1005AABD8;
  if (!qword_1005AABD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AABD8);
  }

  return result;
}

unint64_t sub_1000F7A28()
{
  result = qword_1005AAC00;
  if (!qword_1005AAC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AAC00);
  }

  return result;
}

uint64_t sub_1000F7A80(uint64_t a1)
{
  v4 = *(type metadata accessor for Destination() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000368C;

  return sub_1000F20BC(a1, v6, v1 + v5);
}

uint64_t sub_1000F7B64()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 64);

  v5 = *(v0 + 72);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1000F7BF8(uint64_t a1)
{
  v4 = *(type metadata accessor for Destination() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000368C;

  return sub_1000F299C(a1, v6, v7, v8, v9, v1 + v5);
}

unint64_t sub_1000F7CFC()
{
  result = qword_1005AAC28;
  if (!qword_1005AAC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AAC28);
  }

  return result;
}

unint64_t sub_1000F7D50()
{
  result = qword_1005AAC30;
  if (!qword_1005AAC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AAC30);
  }

  return result;
}

uint64_t sub_1000F7DA4(uint64_t a1)
{
  v4 = *(type metadata accessor for Destination() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000368C;

  return sub_10012AA7C(a1, v1 + v5, v6);
}

uint64_t sub_1000F7EC0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000368C;

  return sub_1000E0AC4();
}

uint64_t sub_1000F7FB4(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v36 = *(v4 - 8);
  v5 = *(v36 + 64);
  __chkstk_darwin(v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v34 = *(v8 - 8);
  v35 = v8;
  v9 = *(v34 + 64);
  __chkstk_darwin(v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10004B564(&qword_1005AB4D0, &unk_1004C45D0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v34 - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  v17 = *(a1 + 32);
  v18 = a2;

  sub_1004AE5D8(v15);

  v19 = type metadata accessor for SecureLocationsCachedSharingKey(0);
  LODWORD(v17) = (*(*(v19 - 8) + 48))(v15, 1, v19);
  sub_100002CE0(v15, &qword_1005AB4D0, &unk_1004C45D0);
  if (v17 == 1)
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_10000A6F0(v20, qword_1005DFB98);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Running setupSecureLocations", v23, 2u);
    }

    v24 = *(a1 + 48);
    v25 = swift_allocObject();
    v25[2] = a1;
    v25[3] = sub_1000F8580;
    v25[4] = v16;
    aBlock[4] = sub_1000F92FC;
    aBlock[5] = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100020828;
    aBlock[3] = &unk_10058F568;
    v26 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v37 = _swiftEmptyArrayStorage;
    sub_1000F11F8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10004B564(&unk_1005A9700, &qword_1004C3820);
    sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v26);
    (*(v36 + 8))(v7, v4);
    (*(v34 + 8))(v11, v35);
  }

  else
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_10000A6F0(v27, qword_1005DFB98);
    v28 = v18;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      aBlock[0] = v32;
      *v31 = 136446210;
      *(v31 + 4) = sub_10000D01C(*&v28[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v28[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], aBlock);
      _os_log_impl(&_mh_execute_header, v29, v30, "%{public}s - secure locations is setup - requesting startMonitor", v31, 0xCu);
      sub_100004984(v32);
    }

    sub_10001D6F0(DarwinNotification.init(name:value:), 0);
  }
}

unint64_t sub_1000F85A8()
{
  result = qword_1005AAC78;
  if (!qword_1005AAC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AAC78);
  }

  return result;
}

uint64_t sub_1000F8600(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10004B564(&qword_1005AAC70, &qword_1004D96D0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for Destination() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100003690;

  return sub_100128E3C(a1, v1 + v6, v1 + v9, v11, v12);
}

void sub_1000F879C()
{
  v1 = *(sub_10004B564(&qword_1005AABB0, &unk_1004C45F0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 31) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = *(v0 + v3);
  v9 = v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = v9[8];
  v12 = *(v0 + v4);

  sub_1000EBDD8(v5, v6, v7, v0 + v2, v8, v10, v11, v12);
}

uint64_t sub_1000F88B8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000F8920()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000F8980(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10004B564(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000F89E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000368C;

  return sub_1000EA4C8(a1, v4, v5, v6);
}

uint64_t sub_1000F8AB8(uint64_t a1)
{
  v4 = *(type metadata accessor for PrivateKey() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000368C;

  return sub_1000E98A8(a1, v6, v7, v8, v1 + v5);
}

void sub_1000F8BE4()
{
  v1 = *(type metadata accessor for DiversifiedRootKeys() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1000E7AC4(v3, v4, v0 + v2);
}

uint64_t sub_1000F8CA0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000F8CF4(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return _swift_deallocObject(v2, 40, 7);
}

void sub_1000F8DA4()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_1000F8F08(319, &qword_1005AAD58, &type metadata accessor for PrivateKey);
    if (v1 <= 0x3F)
    {
      sub_1000F8F08(319, &qword_1005AAD60, &type metadata accessor for HashedAdvertisement);
      if (v2 <= 0x3F)
      {
        sub_1000F8F08(319, &unk_1005AAD68, &type metadata accessor for Destination);
        if (v3 <= 0x3F)
        {
          sub_1000F8F5C();
          if (v4 <= 0x3F)
          {
            sub_1000F8F08(319, &qword_1005AE6B0, &type metadata accessor for Date);
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

void sub_1000F8F08(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1000F8F5C()
{
  if (!qword_1005A9790)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1005A9790);
    }
  }
}

unint64_t sub_1000F8FF8()
{
  result = qword_1005AADB8;
  if (!qword_1005AADB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AADB8);
  }

  return result;
}

unint64_t sub_1000F9050()
{
  result = qword_1005AADC0;
  if (!qword_1005AADC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AADC0);
  }

  return result;
}

unint64_t sub_1000F90A8()
{
  result = qword_1005AADC8;
  if (!qword_1005AADC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AADC8);
  }

  return result;
}

unint64_t sub_1000F9100()
{
  result = qword_1005AADD0;
  if (!qword_1005AADD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AADD0);
  }

  return result;
}

unint64_t sub_1000F9158()
{
  result = qword_1005AADD8;
  if (!qword_1005AADD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AADD8);
  }

  return result;
}

unint64_t sub_1000F91B0()
{
  result = qword_1005AADE0;
  if (!qword_1005AADE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AADE0);
  }

  return result;
}

void *sub_1000F9300@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_1000F93D0(void *a1, uint64_t a2, unint64_t a3, int a4)
{
  v17 = a4;
  v8 = sub_10004B564(&qword_1005AB118, &qword_1004C4F98);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v16 - v11;
  v13 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_10010781C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = a2;
  v20 = a3;
  v18 = 0;
  sub_100005F6C(a2, a3);
  sub_10010670C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_1000049D0(v19, v20);
  if (!v4)
  {
    v14 = v17;
    LOBYTE(v19) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v19) = v14;
    v18 = 2;
    sub_1001078C4();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1000F95B8()
{
  v1 = 7630182;
  if (*v0 == 1)
  {
    v1 = 0x6E6F697461636F6CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F697461636F6CLL;
  }
}

uint64_t sub_1000F9600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100105E1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000F9628(uint64_t a1)
{
  v2 = sub_10010781C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F9664(uint64_t a1)
{
  v2 = sub_10010781C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1000F96A0(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = sub_100105F3C(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v7;
    *(a2 + 24) = v6;
  }
}

uint64_t sub_1000F96F8(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005AAFC8, &unk_1004C4BD8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17[-v8 - 8];
  v10 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_100106608();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = *v3;
  v19 = v18;
  v17[23] = 0;
  sub_1001066B0(&v19, v17);
  sub_10010670C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_1000049D0(v18, *(&v18 + 1));
  if (!v2)
  {
    v11 = *(v3 + 2);
    v12 = *(v3 + 24);
    LOBYTE(v18) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v13 = *(v3 + 4);
    v14 = *(v3 + 5);
    LOBYTE(v18) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    *&v18 = *(v3 + 6);
    v17[0] = 3;
    sub_10004B564(&qword_1005AAFB0, &qword_1004C4BD0);
    sub_100106760(&qword_1005AAFD8, sub_1001067D8);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000F993C()
{
  v1 = 25705;
  v2 = 1701080941;
  if (*v0 != 2)
  {
    v2 = 0x6E6F697461636F6CLL;
  }

  if (*v0)
  {
    v1 = 0x6570795479656BLL;
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

uint64_t sub_1000F99AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100106194(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000F99D4(uint64_t a1)
{
  v2 = sub_100106608();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F9A10(uint64_t a1)
{
  v2 = sub_100106608();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000F9A4C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1001062F4(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_1000F9AB4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[0] = a4;
  v6 = sub_10004B564(&qword_1005AB128, &unk_1004C4FA0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v13 - v9;
  v11 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_100107750();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v4)
  {
    v13[1] = v13[0];
    v14 = 1;
    sub_10004B564(&qword_1005AB0F0, &qword_1004CDC90);
    sub_1001077A4(&qword_1005AB130, sub_1000F7D50);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1000F9C88()
{
  if (*v0)
  {
    result = 0x6E6F697461636F6CLL;
  }

  else
  {
    result = 0x54646E6553706174;
  }

  *v0;
  return result;
}

uint64_t sub_1000F9CD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x54646E6553706174 && a2 == 0xE900000000000053;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEF64616F6C796150)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1000F9DC0(uint64_t a1)
{
  v2 = sub_100107750();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F9DFC(uint64_t a1)
{
  v2 = sub_100107750();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F9E38@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100106968(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

Swift::Int sub_1000F9E88(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_100107918(&qword_1005AECC0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v3 = v1 + *(a1 + 20);
  sub_10008C154();
  return Hasher._finalize()();
}

void sub_1000F9F2C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UUID();
  sub_100107918(&qword_1005AECC0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v4 = v2 + *(a2 + 20);
  sub_10008C154();
}

Swift::Int sub_1000F9FB8(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_100107918(&qword_1005AECC0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v4 = v2 + *(a2 + 20);
  sub_10008C154();
  return Hasher._finalize()();
}

BOOL sub_1000FA058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);

  return sub_10008D92C(a1 + v6, a2 + v6);
}

void *sub_1000FA0C0(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v20 = a2;
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10004B518();
  (*(v8 + 104))(v11, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v7);
  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_100107918(&qword_1005A8670, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10004B564(&unk_1005AB400, &unk_1004C0BF0);
  sub_10001DF0C(&qword_1005A8680, &unk_1005AB400, &unk_1004C0BF0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v2[2] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v12 = sub_10004B564(&qword_1005AAFE8, &qword_1004C4BE8);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = PassthroughSubject.init()();
  v2[5] = v15;
  v21 = v15;
  sub_10001DF0C(&qword_1005AAFF0, &qword_1005AAFE8, &qword_1004C4BE8);
  v2[6] = Publisher.eraseToAnyPublisher()();
  v16 = v20;
  v2[3] = v19;
  v2[4] = v16;
  return v2;
}

void sub_1000FA3AC(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  v182 = a4;
  v204 = a3;
  v207 = a5;
  v7 = type metadata accessor for HashedAdvertisement();
  v202 = *(v7 - 8);
  v203 = v7;
  v8 = *(v202 + 64);
  __chkstk_darwin(v7);
  v194 = &v176 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Advertisement();
  v191 = *(v10 - 8);
  v192 = v10;
  v11 = *(v191 + 64);
  __chkstk_darwin(v10);
  v190 = &v176 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = type metadata accessor for PublicKey();
  v188 = *(v189 - 8);
  v13 = *(v188 + 64);
  __chkstk_darwin(v189);
  v187 = &v176 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10004B564(&qword_1005AABB0, &unk_1004C45F0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v198 = &v176 - v17;
  v18 = type metadata accessor for DiversifiedRootKeys();
  v199 = *(v18 - 8);
  v200 = v18;
  v19 = *(v199 + 64);
  __chkstk_darwin(v18);
  v185 = &v176 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v193 = &v176 - v23;
  v24 = sub_10004B564(&qword_1005A9E40, &qword_1004C3390);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v181 = &v176 - v26;
  v27 = type metadata accessor for SecureLocation();
  v28 = *(*(v27 - 8) + 64);
  v29 = __chkstk_darwin(v27 - 8);
  v179 = &v176 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v178 = &v176 - v32;
  __chkstk_darwin(v31);
  v180 = &v176 - v33;
  v34 = sub_10004B564(&qword_1005AAB18, &qword_1004C4580);
  v35 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34 - 8);
  v183 = &v176 - v36;
  v37 = sub_10004B564(&qword_1005AB018, &unk_1004DD720);
  v38 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37 - 8);
  v195 = &v176 - v39;
  v40 = type metadata accessor for SecureLocationsCachedSharedKey(0);
  v41 = *(v40 - 8);
  v196 = v40;
  v197 = v41;
  v42 = *(v41 + 64);
  v43 = __chkstk_darwin(v40);
  v184 = &v176 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __chkstk_darwin(v43);
  v186 = &v176 - v45;
  __chkstk_darwin(v44);
  v201 = &v176 - v46;
  v47 = type metadata accessor for String.Encoding();
  v48 = *(v47 - 8);
  v49 = *(v48 + 64);
  __chkstk_darwin(v47);
  v51 = &v176 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for UUID();
  v53 = *(v52 - 8);
  v54 = *(v53 + 64);
  v55 = __chkstk_darwin(v52);
  v57 = &v176 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55);
  v59 = &v176 - v58;
  static String.Encoding.utf8.getter();
  v206 = a1;
  v208 = a2;
  v60 = String.data(using:allowLossyConversion:)();
  v62 = v61;
  (*(v48 + 8))(v51, v47);
  if (v62 >> 60 == 15)
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for Logger();
    sub_10000A6F0(v63, qword_1005DFB98);
    v64 = v208;

    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v209[0] = v68;
      *v67 = 136315138;
      *(v67 + 4) = sub_10000D01C(v206, v64, v209);
      _os_log_impl(&_mh_execute_header, v65, v66, "Unable to create stableUUID from findMyId %s", v67, 0xCu);
      sub_100004984(v68);
    }

    v69 = 0;
    v70 = 0;
    v71 = 0;
    v72 = 0;
    goto LABEL_25;
  }

  v209[0] = v60;
  v209[1] = v62;
  sub_1000CA210();
  DataProtocol.stableUUID.getter();
  sub_10001A794(v60, v62);
  (*(v53 + 32))(v59, v57, v52);
  v73 = v204;
  v74 = v52;
  if ([v204 subscriptionMode] == 4)
  {
    v75 = *(v205 + 32);
    v76 = v198;
    sub_1000EA9E8(v198);
    v78 = v199;
    v77 = v200;
    if ((*(v199 + 48))(v76, 1, v200) == 1)
    {
      sub_100002CE0(v76, &qword_1005AABB0, &unk_1004C45F0);
      (*(v53 + 8))(v59, v74);
      v70 = v208;

      v72 = 4;
      v71 = _swiftEmptyArrayStorage;
    }

    else
    {
      v102 = v185;
      (*(v78 + 32))(v185, v76, v77);
      sub_10004B564(&qword_1005AB020, &qword_1004D7D90);
      v103 = v74;
      v71 = swift_allocObject();
      *(v71 + 1) = xmmword_1004C1900;
      v104 = v187;
      DiversifiedRootKeys.publicKey.getter();
      v105 = v190;
      PublicKey.advertisement.getter();
      (*(v188 + 8))(v104, v189);
      v106 = v194;
      Advertisement.hashed.getter();
      (*(v191 + 8))(v105, v192);
      v107 = HashedAdvertisement.data.getter();
      v109 = v108;
      (*(v202 + 8))(v106, v203);
      v71[4] = v107;
      v71[5] = v109;
      (*(v78 + 8))(v102, v77);
      (*(v53 + 8))(v59, v103);
      v70 = v208;

      v72 = 4;
    }

    v69 = v206;
    goto LABEL_25;
  }

  v79 = v73;
  v199 = v53;
  v200 = v59;
  v69 = v206;
  v80 = *(v205 + 24);
  v81 = v195;
  v70 = v208;
  sub_1004AD358(v206, v208);
  v83 = v196;
  v82 = v197;
  if ((*(v197 + 48))(v81, 1, v196) == 1)
  {
    sub_100002CE0(v81, &qword_1005AB018, &unk_1004DD720);
    v84 = v199;
    v85 = v186;
    (*(v199 + 16))(v186, v200, v74);
    v177 = v74;
    v86 = v83[6];
    v87 = type metadata accessor for PrivateKey();
    (*(*(v87 - 8) + 56))(v85 + v86, 1, 1, v87);
    (*(v202 + 56))(v85 + v83[7], 1, 1, v203);
    v88 = v83[8];
    v89 = type metadata accessor for Destination();
    (*(*(v89 - 8) + 56))(v85 + v88, 1, 1, v89);
    v90 = v83[11];
    v91 = type metadata accessor for Date();
    (*(*(v91 - 8) + 56))(v85 + v90, 1, 1, v91);
    v92 = (v85 + v83[5]);
    *v92 = v69;
    v92[1] = v70;
    v93 = (v85 + v83[9]);
    *v93 = 0;
    v93[1] = 0;
    *(v85 + v83[10]) = 0;
    v94 = v82;
    v95 = swift_allocObject();
    *(v95 + 16) = v69;
    *(v95 + 24) = v70;
    v96 = type metadata accessor for TaskPriority();
    v97 = v193;
    (*(*(v96 - 8) + 56))(v193, 1, 1, v96);
    v98 = v184;
    sub_100106F1C(v85, v184, type metadata accessor for SecureLocationsCachedSharedKey);
    v99 = (*(v94 + 80) + 32) & ~*(v94 + 80);
    v100 = swift_allocObject();
    *(v100 + 16) = 0;
    *(v100 + 24) = 0;
    sub_100106DDC(v98, v100 + v99, type metadata accessor for SecureLocationsCachedSharedKey);
    v101 = (v100 + ((v42 + v99 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v101 = sub_1001070B4;
    v101[1] = v95;
    swift_bridgeObjectRetain_n();
    sub_1001D7F30(0, 0, v97, &unk_1004C4C28, v100);

    if (qword_1005A7EE0 != -1)
    {
      swift_once();
    }

    sub_1000CD178(v69, v70, 0);

    sub_100106E44(v85, type metadata accessor for SecureLocationsCachedSharedKey);
    (*(v84 + 8))(v200, v177);
LABEL_24:

    v72 = 0;
    v71 = _swiftEmptyArrayStorage;
    goto LABEL_25;
  }

  v110 = v201;
  sub_100106DDC(v81, v201, type metadata accessor for SecureLocationsCachedSharedKey);
  v111 = v110 + v83[7];
  v112 = v183;
  sub_100005F04(v111, v183, &qword_1005AAB18, &qword_1004C4580);
  v114 = v202;
  v113 = v203;
  if ((*(v202 + 48))(v112, 1, v203) == 1)
  {
    v115 = v74;
    sub_100002CE0(v112, &qword_1005AAB18, &qword_1004C4580);
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v116 = type metadata accessor for Logger();
    sub_10000A6F0(v116, qword_1005DFB98);
    v70 = v208;

    v117 = Logger.logObject.getter();
    v118 = static os_log_type_t.default.getter();

    v119 = os_log_type_enabled(v117, v118);
    v69 = v206;
    v120 = v199;
    if (v119)
    {
      v121 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      v209[0] = v122;
      *v121 = 136315138;
      *(v121 + 4) = sub_10000D01C(v69, v70, v209);
      _os_log_impl(&_mh_execute_header, v117, v118, "Found shared key record but no locationId for %s. Looks like we didn't receive keys", v121, 0xCu);
      sub_100004984(v122);
    }

    if (qword_1005A7EE0 != -1)
    {
      swift_once();
    }

    sub_1000CD178(v69, v70, 0);

    sub_100106E44(v201, type metadata accessor for SecureLocationsCachedSharedKey);
    (*(v120 + 8))(v200, v115);
    goto LABEL_24;
  }

  v198 = HashedAdvertisement.data.getter();
  v205 = v124;
  (*(v114 + 8))(v112, v113);
  v125 = v182;
  v177 = v74;
  if (v182)
  {
    v126 = 0;
    v70 = v208;
    v127 = v206;
LABEL_49:
    v130 = v199;
    goto LABEL_50;
  }

  v128 = v181;
  v127 = v206;
  sub_1004AC950(v206, v208, v181);
  v129 = type metadata accessor for SecureLocationsCachedPayload();
  if ((*(*(v129 - 8) + 48))(v128, 1, v129) != 1)
  {
    v136 = v128 + *(v129 + 20);
    v137 = v178;
    sub_100106F1C(v136, v178, type metadata accessor for SecureLocation);
    sub_100106E44(v128, type metadata accessor for SecureLocationsCachedPayload);
    v138 = v180;
    sub_100106DDC(v137, v180, type metadata accessor for SecureLocation);
    if (qword_1005A7EF8 != -1)
    {
      swift_once();
    }

    v139 = sub_1000DCB14(v138);

    v126 = (v139 & 1) != 0 && [v79 subscriptionMode] == 0;
    v70 = v208;
    v140 = v179;
    if (qword_1005A7EE0 != -1)
    {
      swift_once();
    }

    sub_1000CD500(v127, v70, 2);

    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v141 = type metadata accessor for Logger();
    sub_10000A6F0(v141, qword_1005DFB98);
    sub_100106F1C(v138, v140, type metadata accessor for SecureLocation);

    v142 = Logger.logObject.getter();
    v143 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v142, v143))
    {
      v144 = v140;
      v145 = swift_slowAlloc();
      v209[0] = swift_slowAlloc();
      *v145 = 136315650;
      v146 = sub_10000D01C(v206, v70, v209);
      *(v145 + 4) = v146;
      *(v145 + 12) = 2080;
      v147 = sub_10008BC88(v146);
      v149 = v148;
      sub_100106E44(v144, type metadata accessor for SecureLocation);
      v150 = sub_10000D01C(v147, v149, v209);

      *(v145 + 14) = v150;
      v125 = v182;
      *(v145 + 22) = 1024;
      *(v145 + 24) = v126;
      _os_log_impl(&_mh_execute_header, v142, v143, "subscribeAndFetch data %s got cached location %s isAging %{BOOL}d", v145, 0x1Cu);
      swift_arrayDestroy();
      v127 = v206;

      v151 = v180;
    }

    else
    {

      sub_100106E44(v140, type metadata accessor for SecureLocation);
      v151 = v138;
    }

    sub_100106E44(v151, type metadata accessor for SecureLocation);
    goto LABEL_49;
  }

  sub_100002CE0(v128, &qword_1005A9E40, &qword_1004C3390);
  if (qword_1005A7EE0 != -1)
  {
    swift_once();
  }

  v70 = v208;
  sub_1000CD500(v127, v208, 0);

  v130 = v199;
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v131 = type metadata accessor for Logger();
  sub_10000A6F0(v131, qword_1005DFB98);

  v132 = Logger.logObject.getter();
  v133 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v132, v133))
  {
    v134 = swift_slowAlloc();
    v135 = swift_slowAlloc();
    v209[0] = v135;
    *v134 = 136315138;
    *(v134 + 4) = sub_10000D01C(v127, v70, v209);
    _os_log_impl(&_mh_execute_header, v132, v133, "subscribeAndFetch data %s no cached location", v134, 0xCu);
    sub_100004984(v135);
  }

  v126 = 1;
LABEL_50:
  if (qword_1005A7EE0 != -1)
  {
    swift_once();
  }

  sub_1000CD178(v127, v70, 1);

  if (((v126 | v125) & 1) == 0)
  {
    goto LABEL_57;
  }

  v152 = [v79 clientApp];
  v153 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v155 = v154;

  if (v153 == 0xD000000000000017 && 0x80000001004DFCF0 == v155)
  {
    goto LABEL_55;
  }

  v156 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v156 & 1) == 0)
  {
    v164 = [v79 clientApp];
    v165 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v167 = v166;

    if (v165 == 0xD000000000000015 && 0x80000001004DF810 == v167)
    {
LABEL_55:

      goto LABEL_57;
    }

    v168 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v168 & 1) == 0)
    {
      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v169 = type metadata accessor for Logger();
      sub_10000A6F0(v169, qword_1005DFB98);

      v170 = Logger.logObject.getter();
      v171 = static os_log_type_t.default.getter();

      v172 = os_log_type_enabled(v170, v171);
      v69 = v206;
      if (v172)
      {
        v173 = swift_slowAlloc();
        v174 = swift_slowAlloc();
        v209[0] = v174;
        *v173 = 136315138;
        *(v173 + 4) = sub_10000D01C(v69, v70, v209);
        _os_log_impl(&_mh_execute_header, v170, v171, "We may have stale locationId. Requesting new keys for %s", v173, 0xCu);
        sub_100004984(v174);
      }

      sub_10004B564(&qword_1005AB020, &qword_1004D7D90);
      v71 = swift_allocObject();
      *(v71 + 1) = xmmword_1004C1900;
      v175 = v205;
      v71[4] = v198;
      v71[5] = v175;
      sub_100106E44(v201, type metadata accessor for SecureLocationsCachedSharedKey);
      (*(v130 + 8))(v200, v177);

      v72 = 1;
      goto LABEL_25;
    }
  }

LABEL_57:
  v157 = [v79 clientApp];
  v158 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v160 = v159;

  if (v158 == 0xD000000000000015 && 0x80000001004DF810 == v160)
  {

    v69 = v206;
  }

  else
  {
    v161 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v69 = v206;
    if ((v161 & 1) == 0)
    {
      sub_10004B564(&qword_1005AB020, &qword_1004D7D90);
      v71 = swift_allocObject();
      *(v71 + 1) = xmmword_1004C1900;
      v163 = v205;
      v71[4] = v198;
      v71[5] = v163;
      sub_100106E44(v201, type metadata accessor for SecureLocationsCachedSharedKey);
      (*(v130 + 8))(v200, v177);

      v72 = 2;
      goto LABEL_25;
    }
  }

  sub_10004B564(&qword_1005AB020, &qword_1004D7D90);
  v71 = swift_allocObject();
  *(v71 + 1) = xmmword_1004C1900;
  v162 = v205;
  v71[4] = v198;
  v71[5] = v162;
  sub_100106E44(v201, type metadata accessor for SecureLocationsCachedSharedKey);
  (*(v130 + 8))(v200, v177);

  v72 = 3;
LABEL_25:
  v123 = v207;
  *v207 = v69;
  v123[1] = v70;
  v123[2] = v71;
  v123[3] = 0;
  *(v123 + 32) = v72;
}

void sub_1000FBD78(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_10004B564(&qword_1005AB028, &qword_1004C4C20);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (&v24 - v8);
  sub_100005F04(a1, &v24 - v8, &qword_1005AB028, &qword_1004C4C20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *v9;
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000A6F0(v11, qword_1005DFB98);
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v24 = v10;
      v25 = v15;
      *v14 = 136315138;
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v16 = String.init<A>(describing:)();
      v18 = sub_10000D01C(v16, v17, &v25);

      *(v14 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "Failed to save new sharedKeyRecord %s", v14, 0xCu);
      sub_100004984(v15);
    }

    else
    {
    }
  }

  else
  {
    sub_100002CE0(v9, &qword_1005AB028, &qword_1004C4C20);
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000A6F0(v19, qword_1005DFB98);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v25 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_10000D01C(a2, a3, &v25);
      _os_log_impl(&_mh_execute_header, v20, v21, "Created new sharedKeyRecord awaiting keys for %s", v22, 0xCu);
      sub_100004984(v23);
    }
  }
}

uint64_t sub_1000FC0C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a3;
  v5 = sub_10004B564(&qword_1005AB018, &unk_1004DD720);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v36 - v7;
  v37 = type metadata accessor for SecureLocationsCachedSharedKey(0);
  v36[0] = *(v37 - 8);
  v9 = *(v36[0] + 64);
  __chkstk_darwin(v37);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for String.Encoding();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10004B564(&qword_1005A96E0, &qword_1004C2A80);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = v36 - v19;
  static String.Encoding.utf8.getter();
  v21 = String.data(using:allowLossyConversion:)();
  v23 = v22;
  (*(v13 + 8))(v16, v12);
  if (v23 >> 60 == 15)
  {
    v24 = type metadata accessor for UUID();
    (*(*(v24 - 8) + 56))(v20, 1, 1, v24);
    sub_100002CE0(v20, &qword_1005A96E0, &qword_1004C2A80);
    v25 = a2;
  }

  else
  {
    v39[0] = v21;
    v39[1] = v23;
    sub_1000CA210();
    DataProtocol.stableUUID.getter();
    sub_10001A794(v21, v23);
    v26 = type metadata accessor for UUID();
    (*(*(v26 - 8) + 56))(v20, 0, 1, v26);
    sub_100002CE0(v20, &qword_1005A96E0, &qword_1004C2A80);
    v27 = *(v36[1] + 24);
    sub_1004AD358(a1, a2);
    v28 = v37;
    if ((*(v36[0] + 48))(v8, 1, v37) != 1)
    {
      sub_100106DDC(v8, v11, type metadata accessor for SecureLocationsCachedSharedKey);
      sub_100005F04(&v11[*(v28 + 44)], v38, &unk_1005AE5B0, &qword_1004C32F0);
      return sub_100106E44(v11, type metadata accessor for SecureLocationsCachedSharedKey);
    }

    v25 = a2;
    sub_100002CE0(v8, &qword_1005AB018, &unk_1004DD720);
  }

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_10000A6F0(v29, qword_1005DFB98);

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v39[0] = v33;
    *v32 = 136315138;
    *(v32 + 4) = sub_10000D01C(a1, v25, v39);
    _os_log_impl(&_mh_execute_header, v30, v31, "Unable to get SecureLocationsCachedSharedKey for findMyId %s", v32, 0xCu);
    sub_100004984(v33);
  }

  v34 = type metadata accessor for Date();
  return (*(*(v34 - 8) + 56))(v38, 1, 1, v34);
}

void sub_1000FC5D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t a1))
{
  v86 = a3;
  v5 = type metadata accessor for DispatchTime();
  v95 = *(v5 - 8);
  v96 = v5;
  v6 = *(v95 + 64);
  v7 = __chkstk_darwin(v5);
  v93 = v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v94 = v83 - v9;
  v10 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v88 = v83 - v12;
  v13 = type metadata accessor for Date();
  v91 = *(v13 - 8);
  v92 = v13;
  v14 = *(v91 + 64);
  v15 = __chkstk_darwin(v13);
  v83[1] = v16;
  v84 = v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v99 = v83 - v17;
  v18 = sub_10004B564(&qword_1005AB018, &unk_1004DD720);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = v83 - v20;
  v22 = type metadata accessor for SecureLocationsCachedSharedKey(0);
  v23 = *(v22 - 8);
  v97 = v22;
  v98 = v23;
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v22);
  v85 = v83 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v25);
  v87 = v83 - v27;
  __chkstk_darwin(v26);
  v90 = v83 - v28;
  v29 = type metadata accessor for String.Encoding();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  v33 = v83 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10004B564(&qword_1005A96E0, &qword_1004C2A80);
  v35 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34 - 8);
  v37 = v83 - v36;
  static String.Encoding.utf8.getter();
  v38 = a1;
  v39 = a2;
  v40 = String.data(using:allowLossyConversion:)();
  v42 = v41;
  (*(v30 + 8))(v33, v29);
  if (v42 >> 60 == 15)
  {
    v43 = type metadata accessor for UUID();
    (*(*(v43 - 8) + 56))(v37, 1, 1, v43);
    sub_100002CE0(v37, &qword_1005A96E0, &qword_1004C2A80);
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_10000A6F0(v44, qword_1005DFB98);
    v45 = v39;

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = v38;
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v101[0] = v50;
      *v49 = 136315138;
      *(v49 + 4) = sub_10000D01C(v48, v45, v101);
      _os_log_impl(&_mh_execute_header, v46, v47, "Unable to create stableUUID from findMyId %s", v49, 0xCu);
      sub_100004984(v50);
    }
  }

  else
  {
    v101[0] = v40;
    v101[1] = v42;
    sub_1000CA210();
    DataProtocol.stableUUID.getter();
    sub_10001A794(v40, v42);
    v51 = type metadata accessor for UUID();
    (*(*(v51 - 8) + 56))(v37, 0, 1, v51);
    sub_100002CE0(v37, &qword_1005A96E0, &qword_1004C2A80);
    v100 = dispatch_group_create();
    dispatch_group_enter(v100);
    v52 = *(v89 + 3);
    sub_1004AD358(v38, v39);
    if ((*(v98 + 48))(v21, 1, v97) == 1)
    {
      sub_100002CE0(v21, &qword_1005AB018, &unk_1004DD720);
    }

    else
    {
      v89 = type metadata accessor for SecureLocationsCachedSharedKey;
      v53 = v39;
      v54 = v90;
      v83[0] = v38;
      sub_100106DDC(v21, v90, type metadata accessor for SecureLocationsCachedSharedKey);
      v56 = v91;
      v55 = v92;
      v57 = *(v91 + 16);
      v58 = v86;
      v57(v99, v86, v92);
      v59 = v84;
      v57(v84, v58, v55);
      v60 = (*(v56 + 80) + 40) & ~*(v56 + 80);
      v61 = swift_allocObject();
      v62 = v83[0];
      *(v61 + 2) = v100;
      *(v61 + 3) = v62;
      *(v61 + 4) = v53;
      (*(v56 + 32))(&v61[v60], v59, v55);
      v63 = v87;
      v86 = type metadata accessor for SecureLocationsCachedSharedKey;
      sub_100106F1C(v54, v87, type metadata accessor for SecureLocationsCachedSharedKey);
      v64 = *(v97 + 44);
      v65 = v100;

      sub_100002CE0(v63 + v64, &unk_1005AE5B0, &qword_1004C32F0);
      v66 = v55;
      v57((v63 + v64), v99, v55);
      v67 = v91;
      (*(v91 + 56))(v63 + v64, 0, 1, v66);
      v68 = type metadata accessor for TaskPriority();
      v69 = v88;
      (*(*(v68 - 8) + 56))(v88, 1, 1, v68);
      v70 = v85;
      sub_100106F1C(v63, v85, type metadata accessor for SecureLocationsCachedSharedKey);
      v71 = (*(v98 + 80) + 32) & ~*(v98 + 80);
      v72 = swift_allocObject();
      *(v72 + 16) = 0;
      *(v72 + 24) = 0;
      sub_100106DDC(v70, v72 + v71, v89);
      v73 = (v72 + ((v24 + v71 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v73 = sub_100106EA4;
      v73[1] = v61;

      sub_1001D7F30(0, 0, v69, &unk_1004C4C18, v72);

      (*(v67 + 8))(v99, v92);
      v74 = v86;
      sub_100106E44(v90, v86);
      sub_100106E44(v63, v74);
    }

    v75 = v93;
    static DispatchTime.now()();
    v76 = v94;
    + infix(_:_:)();
    v77 = v96;
    v78 = *(v95 + 8);
    v78(v75, v96);
    OS_dispatch_group.wait(timeout:)();
    v78(v76, v77);
    if (static DispatchTimeoutResult.== infix(_:_:)())
    {
      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v79 = type metadata accessor for Logger();
      sub_10000A6F0(v79, qword_1005DFB98);
      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        *v82 = 0;
        _os_log_impl(&_mh_execute_header, v80, v81, "Timed out trying to update last proactive subscribe time", v82, 2u);
      }
    }
  }
}

void sub_1000FCFF4(uint64_t a1, NSObject *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v32 = a3;
  v33 = a2;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10004B564(&qword_1005AB028, &qword_1004C4C20);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = (&v31 - v15);
  sub_100005F04(a1, &v31 - v15, &qword_1005AB028, &qword_1004C4C20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v16;
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000A6F0(v18, qword_1005DFB98);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v34 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_10000D01C(v32, a4, &v34);
      _os_log_impl(&_mh_execute_header, v19, v20, "Error updating lastProactiveSubmissionTime for %s", v21, 0xCu);
      sub_100004984(v22);
    }
  }

  else
  {
    sub_100002CE0(v16, &qword_1005AB028, &qword_1004C4C20);
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10000A6F0(v23, qword_1005DFB98);
    (*(v9 + 16))(v12, a5, v8);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v26 = 136315394;
      *(v26 + 4) = sub_10000D01C(v32, a4, &v34);
      *(v26 + 12) = 2080;
      sub_100107918(&qword_1005A9800, &type metadata accessor for Date);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v28;
      (*(v9 + 8))(v12, v8);
      v30 = sub_10000D01C(v27, v29, &v34);

      *(v26 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v24, v25, "Updated lastProactiveSubscriptionTime for %s to %s", v26, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v9 + 8))(v12, v8);
    }
  }

  dispatch_group_leave(v33);
}

uint64_t sub_1000FD46C(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for HashedAdvertisement();
  v101 = *(v4 - 8);
  v102 = v4;
  v5 = *(v101 + 64);
  __chkstk_darwin(v4);
  v96 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Advertisement();
  v94 = *(v7 - 8);
  v95 = v7;
  v8 = *(v94 + 64);
  __chkstk_darwin(v7);
  v93 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PublicKey();
  v91 = *(v10 - 8);
  v92 = v10;
  v11 = *(v91 + 64);
  __chkstk_darwin(v10);
  v90 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10004B564(&qword_1005AABB0, &unk_1004C45F0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v89 - v15;
  v17 = type metadata accessor for DiversifiedRootKeys();
  v99 = *(v17 - 8);
  v100 = v17;
  v18 = *(v99 + 64);
  __chkstk_darwin(v17);
  v89 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10004B564(&qword_1005AAB18, &qword_1004C4580);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v98 = &v89 - v22;
  v23 = sub_10004B564(&qword_1005AB018, &unk_1004DD720);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = &v89 - v25;
  v27 = type metadata accessor for SecureLocationsCachedSharedKey(0);
  v103 = *(v27 - 8);
  v28 = *(v103 + 64);
  __chkstk_darwin(v27);
  v97 = &v89 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for String.Encoding();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  v34 = &v89 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10004B564(&qword_1005A96E0, &qword_1004C2A80);
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35 - 8);
  v38 = &v89 - v37;
  static String.Encoding.utf8.getter();
  v105 = a1;
  v39 = a2;
  v40 = String.data(using:allowLossyConversion:)();
  v42 = v41;
  (*(v31 + 8))(v34, v30);
  if (v42 >> 60 != 15)
  {
    v106[0] = v40;
    v106[1] = v42;
    sub_1000CA210();
    DataProtocol.stableUUID.getter();
    sub_10001A794(v40, v42);
    v50 = type metadata accessor for UUID();
    (*(*(v50 - 8) + 56))(v38, 0, 1, v50);
    sub_100002CE0(v38, &qword_1005A96E0, &qword_1004C2A80);
    v51 = v104;
    v52 = *(v104 + 32);
    v53 = sub_1000F4690();
    v55 = v39;
    v49 = v105;
    if (v54)
    {
      if (v53 == v105 && v54 == v55)
      {

LABEL_12:
        sub_1000EA9E8(v16);
        v58 = v99;
        v57 = v100;
        if ((*(v99 + 48))(v16, 1, v100) == 1)
        {
          sub_100002CE0(v16, &qword_1005AABB0, &unk_1004C45F0);

          return v49;
        }

        v73 = v89;
        (*(v58 + 32))(v89, v16, v57);
        sub_10004B564(&qword_1005AB020, &qword_1004D7D90);
        v74 = swift_allocObject();
        *(v74 + 16) = xmmword_1004C1900;
        v75 = v90;
        DiversifiedRootKeys.publicKey.getter();
        v76 = v93;
        PublicKey.advertisement.getter();
        (*(v91 + 8))(v75, v92);
        v77 = v96;
        Advertisement.hashed.getter();
        (*(v94 + 8))(v76, v95);
        v78 = HashedAdvertisement.data.getter();
        v80 = v79;
        (*(v101 + 8))(v77, v102);
        *(v74 + 32) = v78;
        *(v74 + 40) = v80;
        (*(v58 + 8))(v73, v57);
        goto LABEL_29;
      }

      v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v56)
      {
        goto LABEL_12;
      }
    }

    v59 = *(v51 + 24);
    sub_1004AD358(v49, v55);
    if ((*(v103 + 48))(v26, 1, v27) == 1)
    {
      v60 = &qword_1005AB018;
      v61 = &unk_1004DD720;
      v62 = v26;
    }

    else
    {
      v63 = v26;
      v64 = v97;
      sub_100106DDC(v63, v97, type metadata accessor for SecureLocationsCachedSharedKey);
      v65 = v98;
      sub_100005F04(v64 + *(v27 + 28), v98, &qword_1005AAB18, &qword_1004C4580);
      v67 = v101;
      v66 = v102;
      if ((*(v101 + 48))(v65, 1, v102) != 1)
      {
        v81 = HashedAdvertisement.data.getter();
        v83 = v82;
        (*(v67 + 8))(v65, v66);
        v84 = sub_1001FCF88(0, 1, 1, _swiftEmptyArrayStorage);
        v86 = *(v84 + 2);
        v85 = *(v84 + 3);
        if (v86 >= v85 >> 1)
        {
          v84 = sub_1001FCF88((v85 > 1), v86 + 1, 1, v84);
        }

        sub_100106E44(v64, type metadata accessor for SecureLocationsCachedSharedKey);
        *(v84 + 2) = v86 + 1;
        v87 = &v84[16 * v86];
        *(v87 + 4) = v81;
        *(v87 + 5) = v83;
        goto LABEL_29;
      }

      sub_100106E44(v64, type metadata accessor for SecureLocationsCachedSharedKey);
      v60 = &qword_1005AAB18;
      v61 = &qword_1004C4580;
      v62 = v65;
    }

    sub_100002CE0(v62, v60, v61);
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v68 = type metadata accessor for Logger();
    sub_10000A6F0(v68, qword_1005DFB98);

    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v106[0] = v72;
      *v71 = 141558275;
      *(v71 + 4) = 1752392040;
      *(v71 + 12) = 2081;
      *(v71 + 14) = sub_10000D01C(v49, v55, v106);
      _os_log_impl(&_mh_execute_header, v69, v70, "Unsubscribe: Cannot find shared key record or locationId. Looks like we didn't receive keys for %{private,mask.hash}s", v71, 0x16u);
      sub_100004984(v72);
    }

    if (qword_1005A7EE0 != -1)
    {
      swift_once();
    }

    sub_1000CD178(v49, v55, 0);

LABEL_29:

    return v49;
  }

  v43 = type metadata accessor for UUID();
  (*(*(v43 - 8) + 56))(v38, 1, 1, v43);
  sub_100002CE0(v38, &qword_1005A96E0, &qword_1004C2A80);
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  sub_10000A6F0(v44, qword_1005DFB98);

  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v106[0] = v48;
    *v47 = 136315138;
    *(v47 + 4) = sub_10000D01C(v105, v39, v106);
    _os_log_impl(&_mh_execute_header, v45, v46, "Unable to create stableUUID from findMyId %s", v47, 0xCu);
    sub_100004984(v48);
  }

  return 0;
}

uint64_t sub_1000FE000(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v15 = *(v23 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v23);
  v18 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = *(v5 + 16);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = v5;
  *(v19 + 32) = a2;
  *(v19 + 40) = a3;
  *(v19 + 48) = a4;
  aBlock[4] = sub_100106BF0;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_10058FEB8;
  v20 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v24 = _swiftEmptyArrayStorage;
  sub_100107918(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v11 + 8))(v14, v10);
  (*(v15 + 8))(v18, v23);
}

uint64_t sub_1000FE2F8(uint64_t a1, uint64_t a2, int a3, void (*a4)(uint64_t), uint64_t a5)
{
  v193 = a5;
  v194 = a4;
  v226 = a2;
  v222 = type metadata accessor for DispatchTime();
  v7 = *(v222 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v222);
  v221 = v189 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v220 = v189 - v11;
  v12 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v219 = v189 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v230 = v189 - v16;
  v17 = type metadata accessor for SecureLocationsCachedPayload();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v218 = v189 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v20);
  v231 = v189 - v22;
  v23 = __chkstk_darwin(v21);
  v190 = v189 - v24;
  __chkstk_darwin(v23);
  v26 = v189 - v25;
  v27 = sub_10004B564(&qword_1005A9E40, &qword_1004C3390);
  v28 = *(*(v27 - 8) + 64);
  v29 = __chkstk_darwin(v27 - 8);
  v197 = v189 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v208 = v189 - v32;
  v33 = __chkstk_darwin(v31);
  v225 = v189 - v34;
  __chkstk_darwin(v33);
  v237 = v189 - v35;
  v205 = type metadata accessor for SecureLocation();
  v36 = *(v205 - 8);
  v37 = *(v36 + 64);
  v38 = __chkstk_darwin(v205);
  v235 = v189 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v38);
  v217 = v189 - v40;
  v41 = __chkstk_darwin(v39);
  v196 = v189 - v42;
  v43 = __chkstk_darwin(v41);
  v223 = v189 - v44;
  v45 = __chkstk_darwin(v43);
  v207 = v189 - v46;
  __chkstk_darwin(v45);
  v233 = (v189 - v47);
  v48 = swift_allocObject();
  v224 = v48;
  *(v48 + 16) = _swiftEmptyArrayStorage;
  v201 = (v48 + 16);
  v49 = swift_allocObject();
  v232 = v49;
  *(v49 + 16) = 0;
  v189[1] = v49 + 16;
  v51 = *(a1 + 16);
  v203 = a3;
  if (v51)
  {
    v191 = 0;
    v195 = 0;
    v52 = *(v36 + 80);
    v189[0] = (v52 + 32) & ~v52;
    v227 = v26;
    v53 = a1 + v189[0];
    v236 = *(v36 + 72);
    v215 = v18;
    v228 = (v18 + 48);
    v200 = "ationsPayloadManager.queue";
    v192 = a3 & 1;
    v214 = v52;
    v213 = (v52 + 24) & ~v52;
    v212 = (v37 + v213 + 7) & 0xFFFFFFFFFFFFFFF8;
    v211 = (v212 + 15) & 0xFFFFFFFFFFFFFFF8;
    v210 = v19 + 7;
    v209 = (v7 + 8);
    *&v50 = 136315650;
    v202 = v50;
    *&v50 = 136315138;
    v204 = v50;
    v54 = v235;
    v55 = v233;
    v56 = v51;
    v216 = v17;
    while (1)
    {
      sub_100106F1C(v53, v55, type metadata accessor for SecureLocation);
      if (qword_1005A7EF8 != -1)
      {
        swift_once();
      }

      v58 = sub_1000DC618(v55);

      if ((v58 & 1) == 0)
      {
        if (qword_1005A7EE8 != -1)
        {
          swift_once();
        }

        v64 = type metadata accessor for Logger();
        sub_10000A6F0(v64, qword_1005DFB98);
        sub_100106F1C(v55, v54, type metadata accessor for SecureLocation);
        v65 = Logger.logObject.getter();
        v66 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          v68 = v17;
          v69 = v53;
          v70 = v56;
          v71 = swift_slowAlloc();
          v243 = v71;
          *v67 = v204;
          v72 = (sub_10008BC88)();
          v74 = v73;
          sub_100106E44(v235, type metadata accessor for SecureLocation);
          v75 = sub_10000D01C(v72, v74, &v243);
          v55 = v233;

          *(v67 + 4) = v75;
          _os_log_impl(&_mh_execute_header, v65, v66, "saveLocation: not saving since location older than threshold %s", v67, 0xCu);
          sub_100004984(v71);
          v56 = v70;
          v53 = v69;
          v17 = v68;

          v57 = v55;
          v54 = v235;
        }

        else
        {

          sub_100106E44(v54, type metadata accessor for SecureLocation);
          v57 = v55;
        }

        sub_100106E44(v57, type metadata accessor for SecureLocation);
        goto LABEL_5;
      }

      v59 = *(v226 + 24);
      v60 = v237;
      sub_1004AC950(*v55, v55[1], v237);
      v61 = v225;
      sub_100005F04(v60, v225, &qword_1005A9E40, &qword_1004C3390);
      v62 = *v228;
      v63 = (*v228)(v61, 1, v17);
      v234 = v56;
      if (v63 == 1)
      {
        v229 = v53;
        sub_100002CE0(v61, &qword_1005A9E40, &qword_1004C3390);
LABEL_36:
        v102 = v223;
        sub_100106F1C(v55, v223, type metadata accessor for SecureLocation);
        v103 = v231;
        v104 = (v231 + *(v17 + 20));
        sub_100106F1C(v102, v104, type metadata accessor for SecureLocation);
        v105 = *v104;
        v106 = v104[1];
        v107 = String.utf8Data.getter();
        v109 = v108;
        v243 = v107;
        v244 = v108;
        sub_1000CA210();
        DataProtocol.stableUUID.getter();
        sub_100106E44(v102, type metadata accessor for SecureLocation);
        sub_1000049D0(v107, v109);
        v110 = dispatch_group_create();
        dispatch_group_enter(v110);
        v111 = v217;
        sub_100106F1C(v55, v217, type metadata accessor for SecureLocation);
        v112 = v211;
        v113 = swift_allocObject();
        *(v113 + 16) = v110;
        sub_100106DDC(v111, v113 + v213, type metadata accessor for SecureLocation);
        *(v113 + v212) = v224;
        *(v113 + v112) = v232;
        v114 = type metadata accessor for TaskPriority();
        v115 = *(v114 - 8);
        v116 = v230;
        (*(v115 + 56))(v230, 1, 1, v114);
        v117 = v218;
        sub_100106F1C(v103, v218, type metadata accessor for SecureLocationsCachedPayload);
        v118 = (*(v215 + 80) + 32) & ~*(v215 + 80);
        v119 = (v210 + v118) & 0xFFFFFFFFFFFFFFF8;
        v120 = swift_allocObject();
        *(v120 + 16) = 0;
        *(v120 + 24) = 0;
        sub_100106DDC(v117, v120 + v118, type metadata accessor for SecureLocationsCachedPayload);
        v121 = (v120 + v119);
        *v121 = sub_100106C00;
        v121[1] = v113;
        v122 = v219;
        sub_100005F04(v116, v219, &qword_1005A9690, &qword_1004C2A00);
        LODWORD(v113) = (*(v115 + 48))(v122, 1, v114);
        v123 = v110;

        if (v113 == 1)
        {
          sub_100002CE0(v122, &qword_1005A9690, &qword_1004C2A00);
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(v115 + 8))(v122, v114);
        }

        v125 = *(v120 + 16);
        v124 = *(v120 + 24);
        swift_unknownObjectRetain();

        v126 = v216;
        v53 = v229;
        if (v125)
        {
          swift_getObjectType();
          v127 = dispatch thunk of Actor.unownedExecutor.getter();
          v129 = v128;
          swift_unknownObjectRelease();
        }

        else
        {
          v127 = 0;
          v129 = 0;
        }

        v54 = v235;
        sub_100002CE0(v230, &qword_1005A9690, &qword_1004C2A00);
        v130 = swift_allocObject();
        *(v130 + 16) = &unk_1004C4C10;
        *(v130 + 24) = v120;
        if (v129 | v127)
        {
          v238 = 0;
          v239 = 0;
          v240 = v127;
          v241 = v129;
        }

        v55 = v233;
        swift_task_create();

        v131 = v221;
        static DispatchTime.now()();
        v132 = v220;
        + infix(_:_:)();
        v133 = *v209;
        v134 = v222;
        (*v209)(v131, v222);
        OS_dispatch_group.wait(timeout:)();
        v133(v132, v134);
        if (static DispatchTimeoutResult.== infix(_:_:)())
        {
          v17 = v126;
          if (qword_1005A7EE8 != -1)
          {
            swift_once();
          }

          v135 = type metadata accessor for Logger();
          sub_10000A6F0(v135, qword_1005DFB98);
          v136 = Logger.logObject.getter();
          v137 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v136, v137))
          {
            v138 = swift_slowAlloc();
            *v138 = 0;
            _os_log_impl(&_mh_execute_header, v136, v137, "saveLocation: timed out waiting to save securelocation record", v138, 2u);
          }

          else
          {
          }

          sub_100002CE0(v237, &qword_1005A9E40, &qword_1004C3390);
          sub_100106E44(v55, type metadata accessor for SecureLocation);
          v139 = type metadata accessor for SecureLocationsCachedPayload;
          v140 = v231;
          goto LABEL_66;
        }

        sub_100002CE0(v237, &qword_1005A9E40, &qword_1004C3390);

        sub_100106E44(v55, type metadata accessor for SecureLocation);
        sub_100106E44(v231, type metadata accessor for SecureLocationsCachedPayload);
        v56 = v234;
        v17 = v126;
        goto LABEL_5;
      }

      v76 = v227;
      sub_100106DDC(v61, v227, type metadata accessor for SecureLocationsCachedPayload);
      v77 = v205;
      v78 = *(v205 + 52);
      v79 = (v76 + *(v17 + 20));
      v80 = static Date.< infix(_:_:)();
      v81 = static Date.== infix(_:_:)();
      v82 = *(v77 + 64);
      v83 = (v55 + v82);
      v84 = *(v55 + v82 + 8);
      v206 = v79;
      v85 = (v79 + v82);
      v86 = v85[1];
      if (v84)
      {
        if (!v86)
        {
          goto LABEL_22;
        }

        if (*v83 != *v85 || v84 != v86)
        {
          v87 = v81;
          v88 = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((v80 | v87))
          {
            LOBYTE(v80) = v80 | v88;
            goto LABEL_27;
          }

          goto LABEL_26;
        }
      }

      else if (v86)
      {
LABEL_22:
        if ((v80 | v81))
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }

      if ((v80 | v81))
      {
        LOBYTE(v80) = 1;
        goto LABEL_27;
      }

LABEL_26:
      LOBYTE(v80) = 0;
LABEL_27:
      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v89 = type metadata accessor for Logger();
      v229 = sub_10000A6F0(v89, qword_1005DFB98);
      v90 = Logger.logObject.getter();
      v91 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v243 = v93;
        *v92 = v202;
        *(v92 + 4) = sub_10000D01C(0xD000000000000037, v200 | 0x8000000000000000, &v243);
        *(v92 + 12) = 1024;
        *(v92 + 14) = v80 & 1;
        *(v92 + 18) = 1024;
        *(v92 + 20) = 0;
        _os_log_impl(&_mh_execute_header, v90, v91, "%s: skipUpdate %{BOOL}d, forceSave %{BOOL}d", v92, 0x18u);
        sub_100004984(v93);
        v55 = v233;
      }

      v94 = v208;
      v95 = v207;
      if ((v80 & 1) == 0)
      {
        v229 = v53;
        sub_100106E44(v227, type metadata accessor for SecureLocationsCachedPayload);
        goto LABEL_36;
      }

      sub_100005F04(v237, v208, &qword_1005A9E40, &qword_1004C3390);
      sub_100106F1C(v55, v95, type metadata accessor for SecureLocation);
      v96 = Logger.logObject.getter();
      v97 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v96, v97))
      {
        v199 = v97;
        v98 = swift_slowAlloc();
        v198 = swift_slowAlloc();
        v242 = v198;
        *v98 = v202;
        v99 = v197;
        sub_100005F04(v94, v197, &qword_1005A9E40, &qword_1004C3390);
        if (v62(v99, 1, v17) == 1)
        {
          sub_100002CE0(v99, &qword_1005A9E40, &qword_1004C3390);
          v100 = 0;
          v101 = 0;
        }

        else
        {
          v141 = v223;
          sub_100106F1C(v99 + *(v17 + 20), v223, type metadata accessor for SecureLocation);
          v142 = sub_100106E44(v99, type metadata accessor for SecureLocationsCachedPayload);
          v100 = sub_10008BC88(v142);
          v101 = v143;
          sub_100106E44(v141, type metadata accessor for SecureLocation);
        }

        v243 = v100;
        v244 = v101;
        sub_10004B564(&qword_1005A96A8, &qword_1004C3320);
        v144 = String.init<A>(describing:)();
        v146 = v145;
        sub_100002CE0(v208, &qword_1005A9E40, &qword_1004C3390);
        v147 = sub_10000D01C(v144, v146, &v242);

        *(v98 + 4) = v147;
        *(v98 + 12) = 2080;
        v149 = v207;
        v150 = sub_10008BC88(v148);
        v152 = v151;
        sub_100106E44(v149, type metadata accessor for SecureLocation);
        v153 = sub_10000D01C(v150, v152, &v242);

        *(v98 + 14) = v153;
        *(v98 + 22) = 1024;
        *(v98 + 24) = v192;
        _os_log_impl(&_mh_execute_header, v96, v199, "saveLocation: Not updating since existing location %s is same or newer than updated location %s returnOnlyPersisted %{BOOL}d", v98, 0x1Cu);
        swift_arrayDestroy();

        v54 = v235;
      }

      else
      {

        sub_100106E44(v95, type metadata accessor for SecureLocation);
        sub_100002CE0(v94, &qword_1005A9E40, &qword_1004C3390);
      }

      v55 = v233;
      if ((v203 & 1) != 0 || (, v154 = sub_1000DC618(v206), , (v154 & 1) == 0))
      {
        sub_100002CE0(v237, &qword_1005A9E40, &qword_1004C3390);
        sub_100106E44(v227, type metadata accessor for SecureLocationsCachedPayload);
        v139 = type metadata accessor for SecureLocation;
        v140 = v55;
LABEL_66:
        sub_100106E44(v140, v139);
        v56 = v234;
        goto LABEL_5;
      }

      sub_100106F1C(v206, v196, type metadata accessor for SecureLocation);
      v155 = v201;
      swift_beginAccess();
      v156 = *v155;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v155 = v156;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v156 = sub_1001FCE44(0, v156[2] + 1, 1, v156);
        *v201 = v156;
      }

      v159 = v156[2];
      v158 = v156[3];
      v160 = v191;
      if (v159 >= v158 >> 1)
      {
        v156 = sub_1001FCE44(v158 > 1, v159 + 1, 1, v156);
      }

      v156[2] = v159 + 1;
      sub_100106DDC(v196, v156 + v189[0] + v159 * v236, type metadata accessor for SecureLocation);
      *v201 = v156;
      result = swift_endAccess();
      v162 = __OFADD__(v160, 1);
      v163 = v160 + 1;
      if (v162)
      {
        __break(1u);
        return result;
      }

      v164 = v190;
      sub_100106F1C(v227, v190, type metadata accessor for SecureLocationsCachedPayload);
      v165 = Logger.logObject.getter();
      v166 = static os_log_type_t.debug.getter();
      v167 = os_log_type_enabled(v165, v166);
      v191 = v163;
      if (v167)
      {
        v168 = swift_slowAlloc();
        v229 = v53;
        v169 = v163;
        v170 = v168;
        v171 = swift_slowAlloc();
        v243 = v171;
        *v170 = v204;
        v172 = *(v17 + 20);
        v206 = type metadata accessor for SecureLocation;
        sub_100106F1C(v164 + v172, v223, type metadata accessor for SecureLocation);
        v173 = String.init<A>(describing:)();
        v174 = v164;
        v175 = v173;
        v177 = v176;
        sub_100106E44(v174, type metadata accessor for SecureLocationsCachedPayload);
        v178 = sub_10000D01C(v175, v177, &v243);

        *(v170 + 4) = v178;
        _os_log_impl(&_mh_execute_header, v165, v166, "saveLocation: returnLatest cache has newer %s", v170, 0xCu);
        sub_100004984(v171);
        v55 = v233;

        sub_100002CE0(v237, &qword_1005A9E40, &qword_1004C3390);
        v54 = v235;
        sub_100106E44(v227, type metadata accessor for SecureLocationsCachedPayload);
        sub_100106E44(v55, v206);
        v195 = v169;
        v53 = v229;
      }

      else
      {

        sub_100106E44(v164, type metadata accessor for SecureLocationsCachedPayload);
        sub_100002CE0(v237, &qword_1005A9E40, &qword_1004C3390);
        sub_100106E44(v227, type metadata accessor for SecureLocationsCachedPayload);
        sub_100106E44(v55, type metadata accessor for SecureLocation);
        v195 = v163;
      }

      v56 = v234;
LABEL_5:
      v53 += v236;
      if (!--v56)
      {
        goto LABEL_69;
      }
    }
  }

  v195 = 0;
LABEL_69:
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v179 = type metadata accessor for Logger();
  sub_10000A6F0(v179, qword_1005DFB98);
  v180 = v232;

  v181 = Logger.logObject.getter();
  v182 = static os_log_type_t.default.getter();
  v183 = os_log_type_enabled(v181, v182);
  v184 = v203;
  if (v183)
  {
    v185 = swift_slowAlloc();
    *v185 = 67109632;
    *(v185 + 4) = v184 & 1;
    *(v185 + 8) = 2048;
    swift_beginAccess();
    *(v185 + 10) = *(v180 + 16);

    *(v185 + 18) = 2048;
    *(v185 + 20) = v195;
    _os_log_impl(&_mh_execute_header, v181, v182, "saveLocation: returnOnlyPersisted %{BOOL}d updated count %ld returnedFromCache %ld", v185, 0x1Cu);
  }

  else
  {
  }

  v186 = v194;
  swift_beginAccess();
  v187 = *(v224 + 16);

  v186(v188);
}

void sub_1000FFBE8(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v57 = a4;
  v58 = a5;
  v59 = a2;
  v7 = type metadata accessor for SecureLocation();
  v56 = *(v7 - 8);
  v8 = *(v56 + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = (&v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __chkstk_darwin(v9);
  v55 = &v54 - v13;
  __chkstk_darwin(v12);
  v15 = &v54 - v14;
  v16 = type metadata accessor for SecureLocationsCachedPayload();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10004B564(&qword_1005AB010, &qword_1004DD760);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = (&v54 - v22);
  sub_100005F04(a1, &v54 - v22, &qword_1005AB010, &qword_1004DD760);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v23;
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_10000A6F0(v25, qword_1005DFB98);
    sub_100106F1C(a3, v11, type metadata accessor for SecureLocation);
    swift_errorRetain();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v60[0] = swift_slowAlloc();
      *v28 = 136315394;
      v29 = *v11;
      v30 = v11[1];

      sub_100106E44(v11, type metadata accessor for SecureLocation);
      v31 = sub_10000D01C(v29, v30, v60);

      *(v28 + 4) = v31;
      *(v28 + 12) = 2080;
      v60[3] = v24;
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v32 = String.init<A>(describing:)();
      v34 = sub_10000D01C(v32, v33, v60);

      *(v28 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v26, v27, "saveLocation: Failed to update locations record for findMyId %s error %s", v28, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100106E44(v11, type metadata accessor for SecureLocation);
    }

    goto LABEL_18;
  }

  sub_100106DDC(v23, v19, type metadata accessor for SecureLocationsCachedPayload);
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_10000A6F0(v35, qword_1005DFB98);
  sub_100106F1C(a3, v15, type metadata accessor for SecureLocation);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v60[0] = v39;
    *v38 = 136315138;
    v40 = sub_10008BC88();
    v42 = v41;
    sub_100106E44(v15, type metadata accessor for SecureLocation);
    v43 = sub_10000D01C(v40, v42, v60);

    *(v38 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v36, v37, "saveLocation: Updated location to %s", v38, 0xCu);
    sub_100004984(v39);
  }

  else
  {

    sub_100106E44(v15, type metadata accessor for SecureLocation);
  }

  v44 = v57;
  v45 = v55;
  sub_100106F1C(&v19[*(v16 + 20)], v55, type metadata accessor for SecureLocation);
  swift_beginAccess();
  v46 = *(v44 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v44 + 16) = v46;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v46 = sub_1001FCE44(0, v46[2] + 1, 1, v46);
    *(v44 + 16) = v46;
  }

  v49 = v46[2];
  v48 = v46[3];
  if (v49 >= v48 >> 1)
  {
    v46 = sub_1001FCE44(v48 > 1, v49 + 1, 1, v46);
  }

  v46[2] = v49 + 1;
  sub_100106DDC(v45, v46 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v49, type metadata accessor for SecureLocation);
  *(v44 + 16) = v46;
  swift_endAccess();
  sub_100106E44(v19, type metadata accessor for SecureLocationsCachedPayload);
  v50 = v58;
  swift_beginAccess();
  v51 = *(v50 + 16);
  v52 = __OFADD__(v51, 1);
  v53 = v51 + 1;
  if (!v52)
  {
    *(v50 + 16) = v53;
LABEL_18:
    dispatch_group_leave(v59);
    return;
  }

  __break(1u);
}

uint64_t sub_1001002C4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  v38 = a5;
  v39 = a4;
  v34 = a3;
  v7 = sub_10004B564(&unk_1005AB3F0, &qword_1004C4BF0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v32 - v9;
  v11 = sub_10004B564(&qword_1005A9E40, &qword_1004C3390);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v32 - v13;
  v15 = type metadata accessor for SecureLocationsCachedPayload();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v33 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for UUID();
  v36 = *(v19 - 8);
  v37 = v19;
  v20 = *(v36 + 64);
  __chkstk_darwin(v19);
  v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = String.utf8Data.getter();
  v25 = v24;
  v40 = v23;
  v41 = v24;
  sub_1000CA210();
  v35 = v22;
  DataProtocol.stableUUID.getter();
  sub_1000049D0(v23, v25);
  v26 = *(v34 + 24);
  sub_1004AC950(a1, a2, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_100002CE0(v14, &qword_1005A9E40, &qword_1004C3390);
    v27 = type metadata accessor for SecureLocation();
    (*(*(v27 - 8) + 56))(v10, 1, 1, v27);
    v39(v10);
    sub_100002CE0(v10, &unk_1005AB3F0, &qword_1004C4BF0);
  }

  else
  {
    v28 = v14;
    v29 = v33;
    sub_100106DDC(v28, v33, type metadata accessor for SecureLocationsCachedPayload);
    sub_100106F1C(v29 + *(v15 + 20), v10, type metadata accessor for SecureLocation);
    v30 = type metadata accessor for SecureLocation();
    (*(*(v30 - 8) + 56))(v10, 0, 1, v30);
    v39(v10);
    sub_100002CE0(v10, &unk_1005AB3F0, &qword_1004C4BF0);
    sub_100106E44(v29, type metadata accessor for SecureLocationsCachedPayload);
  }

  return (*(v36 + 8))(v35, v37);
}

uint64_t sub_1001006B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a6;
  v25 = a7;
  v8 = v7;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v13 - 8);
  v14 = *(v28 + 64);
  __chkstk_darwin(v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DispatchQoS();
  v17 = *(v27 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v27);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v8 + 16);
  v21 = swift_allocObject();
  v21[2] = a1;
  v21[3] = a2;
  v21[4] = v8;
  v21[5] = a3;
  v21[6] = a4;
  aBlock[4] = v24;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = v25;
  v22 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_100107918(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v28 + 8))(v16, v13);
  (*(v17 + 8))(v20, v27);
}

uint64_t sub_1001009A0(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v33 = a5;
  v34 = a4;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = __chkstk_darwin(v7);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v29 - v13;
  v17 = String.utf8Data.getter();
  v16 = v15;
  v35[0] = v17;
  v35[1] = v15;
  sub_1000CA210();
  DataProtocol.stableUUID.getter();
  sub_1000049D0(v17, v16);
  LODWORD(v17) = sub_1004B7FD8(a1, a2);
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_10000A6F0(v18, qword_1005DFB98);
  v19 = v8[2];
  v32 = v14;
  v19(v12, v14, v7);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v31 = v17;
    v17 = v22;
    v30 = swift_slowAlloc();
    v35[0] = v30;
    *v17 = 136315650;
    *(v17 + 4) = sub_10000D01C(a1, a2, v35);
    *(v17 + 12) = 2080;
    sub_100107918(&qword_1005A92C0, &type metadata accessor for UUID);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    v26 = v8[1];
    v26(v12, v7);
    v27 = sub_10000D01C(v23, v25, v35);

    *(v17 + 14) = v27;
    *(v17 + 22) = 1024;
    *(v17 + 24) = v31 & 1;
    _os_log_impl(&_mh_execute_header, v20, v21, "Removed cached location payload (if present) for %s %s Result %{BOOL}d", v17, 0x1Cu);
    swift_arrayDestroy();

    LOBYTE(v17) = v31;
  }

  else
  {

    v26 = v8[1];
    v26(v12, v7);
  }

  v34(v17 & 1);
  return (v26)(v32, v7);
}

uint64_t sub_100100D10(uint64_t a1)
{
  v3 = type metadata accessor for DispatchTime();
  v39 = *(v3 - 8);
  v40 = v3;
  v4 = *(v39 + 64);
  v5 = __chkstk_darwin(v3);
  v37 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v38 = &v34 - v7;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v36 = *(v8 - 8);
  v9 = *(v36 + 64);
  __chkstk_darwin(v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for DispatchQoS();
  v12 = *(v35 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v35);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = _swiftEmptyArrayStorage;
  v41 = v16 + 16;
  v17 = dispatch_group_create();
  dispatch_group_enter(v17);
  v34 = *(v1 + 16);
  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = v1;
  v18[4] = v16;
  v18[5] = v17;
  aBlock[4] = sub_100106944;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_10058FDC8;
  v19 = _Block_copy(aBlock);

  v42 = v16;

  v20 = v17;
  static DispatchQoS.unspecified.getter();
  v43 = _swiftEmptyArrayStorage;
  sub_100107918(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v36 + 8))(v11, v8);
  v21 = v15;
  v22 = v20;
  (*(v12 + 8))(v21, v35);

  v23 = v37;
  static DispatchTime.now()();
  v24 = v38;
  + infix(_:_:)();
  v25 = *(v39 + 8);
  v26 = v23;
  v27 = v40;
  v25(v26, v40);
  OS_dispatch_group.wait(timeout:)();
  v25(v24, v27);
  if (static DispatchTimeoutResult.== infix(_:_:)())
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_10000A6F0(v28, qword_1005DFB98);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "getCachedLocations - timed out reading locations", v31, 2u);
    }
  }

  swift_beginAccess();
  v32 = *(v42 + 16);

  return v32;
}

void sub_10010123C(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{

  sub_100105630(a1, a2, (a3 + 16));

  dispatch_group_leave(a4);
}

uint64_t sub_1001012B0(uint64_t *a1, uint64_t a2, void **a3)
{
  v53 = a3;
  v56 = a2;
  v4 = type metadata accessor for SecureLocation();
  v54 = *(v4 - 8);
  v5 = *(v54 + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v55 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v52 = &v51 - v8;
  v9 = sub_10004B564(&qword_1005A9E40, &qword_1004C3390);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v51 - v11;
  v13 = type metadata accessor for SecureLocationsCachedPayload();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v51 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for UUID();
  v58 = *(v17 - 8);
  v59 = v17;
  v18 = *(v58 + 64);
  __chkstk_darwin(v17);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a1;
  v21 = a1[1];
  v23 = String.utf8Data.getter();
  v25 = v24;
  v60[0] = v23;
  v60[1] = v24;
  sub_1000CA210();
  v57 = v20;
  DataProtocol.stableUUID.getter();
  sub_1000049D0(v23, v25);
  v26 = *(v56 + 24);
  sub_1004AC950(v22, v21, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100002CE0(v12, &qword_1005A9E40, &qword_1004C3390);
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_10000A6F0(v27, qword_1005DFB98);

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v60[0] = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_10000D01C(v22, v21, v60);
      _os_log_impl(&_mh_execute_header, v28, v29, "getCachedLocations - no location found for %s", v30, 0xCu);
      sub_100004984(v31);
    }
  }

  else
  {
    v32 = v51;
    sub_100106DDC(v12, v51, type metadata accessor for SecureLocationsCachedPayload);
    v33 = *(v13 + 20);
    v34 = v52;
    sub_100106F1C(v32 + v33, v52, type metadata accessor for SecureLocation);
    v35 = v53;
    swift_beginAccess();
    v36 = *v35;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v35 = v36;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v36 = sub_1001FCE44(0, v36[2] + 1, 1, v36);
      *v35 = v36;
    }

    v38 = v55;
    v40 = v36[2];
    v39 = v36[3];
    if (v40 >= v39 >> 1)
    {
      v36 = sub_1001FCE44(v39 > 1, v40 + 1, 1, v36);
      *v35 = v36;
    }

    v36[2] = v40 + 1;
    sub_100106DDC(v34, v36 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v40, type metadata accessor for SecureLocation);
    swift_endAccess();
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_10000A6F0(v41, qword_1005DFB98);
    sub_100106F1C(v32 + v33, v38, type metadata accessor for SecureLocation);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v60[0] = v45;
      *v44 = 136315138;
      v46 = sub_10008BC88(v45);
      v48 = v47;
      sub_100106E44(v38, type metadata accessor for SecureLocation);
      v49 = sub_10000D01C(v46, v48, v60);

      *(v44 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v42, v43, "getCachedLocations - %s", v44, 0xCu);
      sub_100004984(v45);
    }

    else
    {

      sub_100106E44(v38, type metadata accessor for SecureLocation);
    }

    sub_100106E44(v32, type metadata accessor for SecureLocationsCachedPayload);
  }

  return (*(v58 + 8))(v57, v59);
}

uint64_t sub_100101950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for SecureLocation();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000A6F0(v11, qword_1005DFB98);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "createEncodedLocationInfo", v14, 2u);
  }

  v15 = *(v4 + 32);
  sub_100106F1C(a1, &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SecureLocation);
  v16 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = v4;
  sub_100106DDC(&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for SecureLocation);

  sub_1000E69C8();
}

uint64_t sub_100101B68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v102 = a6;
  v106 = a4;
  v107 = a3;
  v8 = type metadata accessor for HashedAdvertisement();
  v98 = *(v8 - 8);
  v99 = v8;
  v9 = *(v98 + 64);
  __chkstk_darwin(v8);
  v97 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Advertisement();
  v95 = *(v11 - 8);
  v96 = v11;
  v12 = *(v95 + 64);
  __chkstk_darwin(v11);
  v94 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PublicKey();
  v100 = *(v14 - 8);
  v101 = v14;
  v15 = *(v100 + 64);
  v16 = __chkstk_darwin(v14);
  v93 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v88 - v18;
  v20 = type metadata accessor for SecureLocation();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = &v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Date();
  v103 = *(v24 - 8);
  v104 = v24;
  v25 = *(v103 + 64);
  __chkstk_darwin(v24);
  v105 = &v88 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10004B564(&qword_1005AABB0, &unk_1004C45F0);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v30 = &v88 - v29;
  v31 = type metadata accessor for DiversifiedRootKeys();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  v35 = &v88 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v36;
  sub_100005F04(a1, v30, &qword_1005AABB0, &unk_1004C45F0);
  if ((*(v32 + 48))(v30, 1, v37) == 1)
  {
    sub_100002CE0(v30, &qword_1005AABB0, &unk_1004C45F0);
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_10000A6F0(v38, qword_1005DFB98);
    swift_errorRetain();
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v108[0] = v42;
      *v41 = 136315138;
      v109 = a2;
      swift_errorRetain();
      sub_10004B564(&qword_1005A9E10, &qword_1004D6790);
      v43 = String.init<A>(describing:)();
      v45 = sub_10000D01C(v43, v44, v108);

      *(v41 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v39, v40, "No keys available for sharing location to followers. Error %s", v41, 0xCu);
      sub_100004984(v42);
    }

    return v107(_swiftEmptyArrayStorage);
  }

  else
  {
    (*(v32 + 32))(v35, v30, v37);
    v47 = sub_1000F4690();
    if (v48)
    {
      v49 = v48;
      v91 = v47;
      v50 = type metadata accessor for JSONEncoder();
      v51 = *(v50 + 48);
      v52 = *(v50 + 52);
      swift_allocObject();
      v92 = JSONEncoder.init()();
      static ReferenceClock.now.getter();
      sub_100106F1C(v102, v23, type metadata accessor for SecureLocation);
      v53 = *(v20 + 52);
      if (static Date.> infix(_:_:)())
      {
        Date.timeIntervalSince(_:)();
        v55 = v54;
        if (qword_1005A7EE8 != -1)
        {
          swift_once();
        }

        v56 = type metadata accessor for Logger();
        sub_10000A6F0(v56, qword_1005DFB98);
        v57 = Logger.logObject.getter();
        v58 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          v89 = v37;
          *v59 = 134349056;
          *(v59 + 4) = v55;
          _os_log_impl(&_mh_execute_header, v57, v58, "SecureLocation: timestamp payload adjusted by %{public}f", v59, 0xCu);
          v37 = v89;
        }

        (*(v103 + 24))(&v23[v53], v105, v104);
      }

      v60 = *(v23 + 1);

      *v23 = v91;
      *(v23 + 1) = v49;
      sub_100107918(&qword_1005AB008, type metadata accessor for SecureLocation);
      v61 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v90 = v35;
      v67 = v66;
      v68 = v61;
      DiversifiedRootKeys.publicKey.getter();
      v69 = PublicKey.data.getter();
      v71 = v70;
      v91 = objc_autoreleasePoolPush();
      sub_1004B60F0(&v109, v108);
      v88 = v68;
      v89 = v67;
      objc_autoreleasePoolPop(v91);
      sub_1000049D0(v69, v71);
      v91 = *(v100 + 8);
      (v91)(v19, v101);
      v72 = v108[0];
      v100 = v108[1];
      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v73 = type metadata accessor for Logger();
      sub_10000A6F0(v73, qword_1005DFB98);
      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        *v76 = 0;
        _os_log_impl(&_mh_execute_header, v74, v75, "Successfully Encrypted locationData", v76, 2u);
      }

      v77 = *(v20 + 52);
      v78 = v100;
      sub_100005F6C(v72, v100);
      v79 = Date.epoch.getter();
      v80 = v93;
      DiversifiedRootKeys.publicKey.getter();
      v81 = v94;
      PublicKey.advertisement.getter();
      (v91)(v80, v101);
      v82 = v97;
      Advertisement.hashed.getter();
      (*(v95 + 8))(v81, v96);
      v83 = HashedAdvertisement.data.getter();
      v85 = v84;
      (*(v98 + 8))(v82, v99);
      sub_10004B564(&qword_1005A9F38, &unk_1004C34C0);
      v86 = swift_allocObject();
      v102 = xmmword_1004C1900;
      *(v86 + 16) = xmmword_1004C1900;
      *(v86 + 32) = v72;
      *(v86 + 40) = v78;
      *(v86 + 48) = v79;
      *(v86 + 56) = 0;
      sub_10004B564(&qword_1005A9F40, &unk_1004C4C00);
      v87 = swift_allocObject();
      *(v87 + 16) = v102;
      *(v87 + 32) = v83;
      *(v87 + 40) = v85;
      *(v87 + 48) = 0;
      *(v87 + 56) = 1;
      *(v87 + 64) = 0;
      *(v87 + 72) = 0;
      *(v87 + 80) = v86;
      sub_100005F6C(v72, v78);
      sub_100005F6C(v83, v85);

      v107(v87);
      sub_1000049D0(v88, v89);

      sub_1000049D0(v83, v85);

      sub_1000049D0(v72, v78);
      sub_1000049D0(v72, v78);
      (*(v103 + 8))(v105, v104);
      (*(v32 + 8))(v90, v37);
      return sub_100106E44(v23, type metadata accessor for SecureLocation);
    }

    else
    {
      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v62 = type metadata accessor for Logger();
      sub_10000A6F0(v62, qword_1005DFB98);
      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        *v65 = 0;
        _os_log_impl(&_mh_execute_header, v63, v64, "Unable to get my personID. Can't encode location", v65, 2u);
      }

      v107(_swiftEmptyArrayStorage);
      return (*(v32 + 8))(v35, v37);
    }
  }
}

void *sub_1001028AC(uint64_t a1)
{
  v2 = sub_10004B564(&unk_1005AB3F0, &qword_1004C4BF0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v176 = &v163 - v4;
  v183 = type metadata accessor for SecureLocation();
  v5 = *(v183 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v183);
  v9 = &v163 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v163 - v11;
  v13 = __chkstk_darwin(v10);
  v180 = &v163 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v163 - v16;
  v18 = __chkstk_darwin(v15);
  v178 = &v163 - v19;
  v20 = __chkstk_darwin(v18);
  v185 = (&v163 - v21);
  v22 = __chkstk_darwin(v20);
  v24 = &v163 - v23;
  __chkstk_darwin(v22);
  v175 = &v163 - v25;
  v174 = type metadata accessor for Date();
  v26 = *(v174 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v174);
  v179 = &v163 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = sub_10004B564(&qword_1005AAFF8, &qword_1004C4BF8);
  v29 = *(*(v193 - 8) + 64);
  __chkstk_darwin(v193);
  v31 = &v163 - v30;
  v195 = sub_10004B564(&qword_1005AAC68, &unk_1004C46F0);
  v32 = *(*(v195 - 8) + 64);
  v33 = __chkstk_darwin(v195);
  v34 = __chkstk_darwin(v33);
  __chkstk_darwin(v34);
  v40 = (&v163 - v36);
  v41 = *(a1 + 16);
  if (!v41)
  {
    return _swiftEmptyArrayStorage;
  }

  v165 = v38;
  v164 = v37;
  v169 = v24;
  v170 = v17;
  v171 = v12;
  v166 = v9;
  v198 = 0;
  v192 = (v35 + 48);
  v173 = v5;
  v168 = (v5 + 48);
  v172 = enum case for Feature.FindMy.fmNiftyCurve(_:);
  v167 = (v26 + 8);
  v42 = (a1 + 80);
  *&v39 = 136315138;
  v189 = v39;
  *&v39 = 136315650;
  v163 = v39;
  v184 = _swiftEmptyArrayStorage;
  v190 = v31;
  v191 = (&v163 - v36);
  while (1)
  {
    v197 = v41;
    v50 = *(v42 - 5);
    v52 = *(v42 - 1);
    v51 = *v42;
    v53 = *(*(v194 + 32) + OBJC_IVAR____TtC13findmylocated25SecureLocationsKeyManager_decryptionKeyAccessQueue);
    v54 = __chkstk_darwin(*(v42 - 6));
    *(&v163 - 4) = v55;
    *(&v163 - 3) = v54;
    *(&v163 - 2) = v56;
    v199 = v54;
    v196 = v56;
    sub_100005F6C(v54, v56);
    v200 = v52;

    v57 = v198;
    OS_dispatch_queue.sync<A>(execute:)();
    if ((*v192)(v31, 1, v195) == 1)
    {
      v198 = v57;
      sub_100002CE0(v31, &qword_1005AAFF8, &qword_1004C4BF8);
      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v58 = type metadata accessor for Logger();
      sub_10000A6F0(v58, qword_1005DFB98);
      v59 = v199;
      v60 = v196;
      sub_100005F6C(v199, v196);

      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.default.getter();
      sub_1000049D0(v59, v60);

      if (os_log_type_enabled(v61, v62))
      {
        v43 = swift_slowAlloc();
        v44 = v60;
        v45 = swift_slowAlloc();
        v201 = v45;
        *v43 = v189;
        sub_100005F6C(v59, v60);
        v46 = Data.description.getter();
        v48 = v47;
        sub_1000049D0(v59, v44);
        v49 = sub_10000D01C(v46, v48, &v201);
        v40 = v191;

        *(v43 + 4) = v49;
        _os_log_impl(&_mh_execute_header, v61, v62, "No decryption key found for locationId %s. Not proceeding with decoding", v43, 0xCu);
        sub_100004984(v45);

        v31 = v190;

        sub_1000049D0(v59, v44);
      }

      else
      {

        sub_1000049D0(v59, v60);
      }

      goto LABEL_5;
    }

    sub_10010684C(v31, v40);
    if (!*(v51 + 16))
    {
      v198 = v57;
      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v71 = type metadata accessor for Logger();
      sub_10000A6F0(v71, qword_1005DFB98);
      v72 = v199;
      v73 = v196;
      sub_100005F6C(v199, v196);

      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.default.getter();
      sub_1000049D0(v72, v73);

      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v201 = v77;
        *v76 = v189;
        v78 = Data.base64EncodedString(options:)(0);
        v79 = sub_10000D01C(v78._countAndFlagsBits, v78._object, &v201);

        *(v76 + 4) = v79;
        _os_log_impl(&_mh_execute_header, v74, v75, "Empty location data for locationId %s", v76, 0xCu);
        sub_100004984(v77);
        v40 = v191;

        v31 = v190;
      }

      v80 = *(v194 + 40);
      v81 = v40[1];
      v201 = *v40;
      v202 = v81;
      PassthroughSubject.send(_:)();
      sub_1000049D0(v72, v73);

      goto LABEL_38;
    }

    v201 = v51;

    sub_100104D30(&v201);
    if (v57)
    {
      goto LABEL_68;
    }

    v63 = v201;
    if (!*(v201 + 2))
    {
      break;
    }

    v65 = *(v201 + 4);
    v64 = *(v201 + 5);
    v66 = *(v195 + 48);
    sub_100005F6C(v65, v64);
    v67 = PrivateKey.data.getter();
    v69 = v68;
    v70 = objc_autoreleasePoolPush();
    sub_1004B679C(&v205, &v201);
    v186 = v65;
    v187 = v64;
    objc_autoreleasePoolPop(v70);
    sub_1000049D0(v67, v69);
    v82 = v201;
    v188 = v202;
    v83 = v63[56];
    v84 = v199;
    if (v83 == 2 || (v83 & 1) == 0)
    {

      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v94 = type metadata accessor for Logger();
      v181 = sub_10000A6F0(v94, qword_1005DFB98);
      v95 = Logger.logObject.getter();
      v96 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        *v97 = 0;
        _os_log_impl(&_mh_execute_header, v95, v96, "Got decrypted JSON data now trying to decode JSON", v97, 2u);
      }

      v98 = type metadata accessor for JSONDecoder();
      v99 = *(v98 + 48);
      v100 = *(v98 + 52);
      swift_allocObject();
      v101 = JSONDecoder.init()();
      sub_100107918(&qword_1005AB000, type metadata accessor for SecureLocation);
      v102 = v185;
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      v103 = v82;
      v40 = v191;
      v182 = v103;
      v110 = v102[1];
      v111 = v191[1];
      v112 = *v102 == *v191;
      v113 = v178;
      v177 = v101;
      if (v112 && v110 == v111 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100106F1C(v185, v113, type metadata accessor for SecureLocation);
        v114 = Logger.logObject.getter();
        v115 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v114, v115))
        {
          v116 = swift_slowAlloc();
          LODWORD(v181) = v115;
          v117 = v116;
          v118 = swift_slowAlloc();
          v201 = v118;
          *v117 = v189;
          v119 = v113;
          sub_100106F1C(v113, v170, type metadata accessor for SecureLocation);
          v120 = String.init<A>(describing:)();
          v122 = v121;
          v40 = v191;
          sub_100106E44(v119, type metadata accessor for SecureLocation);
          v123 = sub_10000D01C(v120, v122, &v201);

          *(v117 + 4) = v123;
          _os_log_impl(&_mh_execute_header, v114, v181, "Got decoded location %s", v117, 0xCu);
          sub_100004984(v118);
        }

        else
        {

          sub_100106E44(v113, type metadata accessor for SecureLocation);
        }

        v31 = v190;
        v129 = v186;
        sub_100106F1C(v185, v180, type metadata accessor for SecureLocation);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v184 = sub_1001FCE44(0, v184[2] + 1, 1, v184);
        }

        v131 = v184[2];
        v130 = v184[3];
        v198 = 0;
        if (v131 >= v130 >> 1)
        {
          v184 = sub_1001FCE44(v130 > 1, v131 + 1, 1, v184);
        }

        sub_1000049D0(v129, v187);
        sub_1000049D0(v182, v188);

        sub_1000049D0(v199, v196);

        v132 = v184;
        v184[2] = v131 + 1;
        sub_100106DDC(v180, v132 + ((*(v173 + 80) + 32) & ~*(v173 + 80)) + *(v173 + 72) * v131, type metadata accessor for SecureLocation);
        sub_100106E44(v185, type metadata accessor for SecureLocation);
        goto LABEL_38;
      }

      v133 = v165;
      sub_100005F04(v40, v165, &qword_1005AAC68, &unk_1004C46F0);
      v134 = v185;
      sub_100106F1C(v185, v171, type metadata accessor for SecureLocation);
      v135 = v166;
      sub_100106F1C(v134, v166, type metadata accessor for SecureLocation);
      v136 = Logger.logObject.getter();
      v137 = static os_log_type_t.error.getter();
      v198 = v136;
      if (os_log_type_enabled(v136, v137))
      {
        v138 = swift_slowAlloc();
        v201 = swift_slowAlloc();
        *v138 = v163;
        v139 = v164;
        sub_10010684C(v133, v164);
        v140 = *v139;
        v141 = v139[1];
        v142 = *(v195 + 48);
        v143 = type metadata accessor for PrivateKey();
        (*(*(v143 - 8) + 8))(v139 + v142, v143);
        v144 = sub_10000D01C(v140, v141, &v201);

        *(v138 + 4) = v144;
        *(v138 + 12) = 2080;
        v145 = v171;
        v146 = *v171;
        v147 = v171[1];

        sub_100106E44(v145, type metadata accessor for SecureLocation);
        v148 = sub_10000D01C(v146, v147, &v201);

        *(v138 + 14) = v148;
        *(v138 + 22) = 2080;
        v149 = v166;
        sub_100106F1C(v166, v170, type metadata accessor for SecureLocation);
        v150 = String.init<A>(describing:)();
        v152 = v151;
        sub_100106E44(v149, type metadata accessor for SecureLocation);
        v153 = sub_10000D01C(v150, v152, &v201);

        *(v138 + 24) = v153;
        v154 = v198;
        _os_log_impl(&_mh_execute_header, v198, v137, "FindMyID of envelope (%s) and encrypted location (%s) doesn't match. Dropping location: %s", v138, 0x20u);
        swift_arrayDestroy();
      }

      else
      {

        sub_100106E44(v135, type metadata accessor for SecureLocation);
        sub_100106E44(v171, type metadata accessor for SecureLocation);
        sub_100002CE0(v133, &qword_1005AAC68, &unk_1004C46F0);
      }

      v161 = v187;
      type metadata accessor for SecureLocationsError(0);
      v205 = 11;
      sub_1000BC07C(_swiftEmptyArrayStorage);
      sub_100107918(&qword_1005A88C0, type metadata accessor for SecureLocationsError);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();

      sub_1000049D0(v182, v188);
      sub_1000049D0(v186, v161);
      sub_100106E44(v185, type metadata accessor for SecureLocation);
      v40 = v191;
      v104 = v199;
      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v198 = 0;
      v105 = type metadata accessor for Logger();
      sub_10000A6F0(v105, qword_1005DFB98);
      v106 = Logger.logObject.getter();
      v107 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v106, v107))
      {
        v108 = swift_slowAlloc();
        *v108 = 0;
        _os_log_impl(&_mh_execute_header, v106, v107, "Failed to decode json data into SecureLocation", v108, 2u);

        sub_1000049D0(v104, v196);

LABEL_36:

        goto LABEL_37;
      }

      v109 = v104;
LABEL_35:
      sub_1000049D0(v109, v196);

      goto LABEL_36;
    }

    v182 = v201;
    My = type metadata accessor for Feature.FindMy();
    v203 = My;
    v204 = sub_100107918(&qword_1005A9EE8, &type metadata accessor for Feature.FindMy);
    v86 = sub_10000331C(&v201);
    (*(*(My - 8) + 104))(v86, v172, My);
    LOBYTE(My) = isFeatureEnabled(_:)();
    sub_100004984(&v201);
    v87 = v179;
    v198 = 0;
    if ((My & 1) == 0)
    {

      v40 = v191;
      v124 = v186;
      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v125 = type metadata accessor for Logger();
      sub_10000A6F0(v125, qword_1005DFB98);
      v126 = Logger.logObject.getter();
      v127 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v126, v127))
      {
        v128 = swift_slowAlloc();
        *v128 = 0;
        _os_log_impl(&_mh_execute_header, v126, v127, "lloc feature is disabled", v128, 2u);
      }

      sub_1000049D0(v182, v188);
      sub_1000049D0(v124, v187);

      v109 = v84;
      goto LABEL_35;
    }

    v88 = *(v63 + 6);

    Date.init(timeIntervalSince1970:)();
    v40 = v191;
    v89 = v176;
    v90 = v182;
    v91 = v188;
    sub_10008D4B8(*v191, v191[1], v87, v176);
    v92 = (*v168)(v89, 1, v183);
    v93 = v186;
    if (v92 != 1)
    {
      v155 = v89;
      v156 = v175;
      sub_100106DDC(v155, v175, type metadata accessor for SecureLocation);
      sub_100106F1C(v156, v169, type metadata accessor for SecureLocation);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = v190;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v184 = sub_1001FCE44(0, v184[2] + 1, 1, v184);
      }

      v159 = v184[2];
      v158 = v184[3];
      if (v159 >= v158 >> 1)
      {
        v184 = sub_1001FCE44(v158 > 1, v159 + 1, 1, v184);
      }

      sub_1000049D0(v93, v187);
      sub_1000049D0(v182, v188);
      sub_1000049D0(v84, v196);

      sub_100106E44(v175, type metadata accessor for SecureLocation);
      (*v167)(v179, v174);
      v160 = v184;
      v184[2] = v159 + 1;
      sub_100106DDC(v169, v160 + ((*(v173 + 80) + 32) & ~*(v173 + 80)) + *(v173 + 72) * v159, type metadata accessor for SecureLocation);
      goto LABEL_38;
    }

    (*v167)(v87, v174);
    sub_1000049D0(v90, v91);
    sub_1000049D0(v93, v187);
    sub_1000049D0(v84, v196);

    sub_100002CE0(v89, &unk_1005AB3F0, &qword_1004C4BF0);
LABEL_37:
    v31 = v190;
LABEL_38:
    sub_100002CE0(v40, &qword_1005AAC68, &unk_1004C46F0);
LABEL_5:
    v42 += 7;
    v41 = v197 - 1;
    if (v197 == 1)
    {
      return v184;
    }
  }

  __break(1u);
LABEL_68:

  __break(1u);
  return result;
}

uint64_t sub_100104094(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, unint64_t, uint64_t *), uint64_t a4)
{
  v59 = a4;
  v60 = a3;
  v6 = type metadata accessor for PublicKey();
  v57 = *(v6 - 8);
  v58 = v6;
  v7 = *(v57 + 64);
  __chkstk_darwin(v6);
  v9 = v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10004B564(&qword_1005AABB0, &unk_1004C45F0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v56 - v12;
  v14 = type metadata accessor for DiversifiedRootKeys();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005F04(a1, v13, &qword_1005AABB0, &unk_1004C45F0);
  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    (*(v15 + 32))(v18, v13, v14);
    v28 = sub_10008D28C();
    v30 = v29;
    if (v29 >> 60 == 15)
    {
      type metadata accessor for SecureLocationsError(0);
      v63 = 10;
      sub_1000BC07C(_swiftEmptyArrayStorage);
      sub_100107918(&qword_1005A88C0, type metadata accessor for SecureLocationsError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v31 = v61;
      v60(v28, v30, v61);

      return (*(v15 + 8))(v18, v14);
    }

    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    v33 = sub_10000A6F0(v32, qword_1005DFB98);
    sub_100005F6C(v28, v30);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    v36 = os_log_type_enabled(v34, v35);
    v56[1] = v33;
    if (!v36)
    {
      sub_10001A794(v28, v30);
LABEL_24:

      DiversifiedRootKeys.publicKey.getter();
      v43 = PublicKey.data.getter();
      v45 = v44;
      v46 = objc_autoreleasePoolPush();
      sub_1004B60F0(&v63, &v61);
      objc_autoreleasePoolPop(v46);
      sub_1000049D0(v43, v45);
      (*(v57 + 8))(v9, v58);
      v47 = v61;
      v48 = v62;
      sub_100005F6C(v61, v62);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v49, v50))
      {
        sub_1000049D0(v47, v48);
LABEL_37:

        sub_100005F6C(v47, v48);
        v60(v47, v48, 0);
        sub_1000049D0(v47, v48);
        sub_1000049D0(v47, v48);
        sub_10001A794(v28, v30);
        return (*(v15 + 8))(v18, v14);
      }

      result = swift_slowAlloc();
      *result = 134217984;
      v51 = v48 >> 62;
      if ((v48 >> 62) > 1)
      {
        if (v51 != 2)
        {
          v52 = 0;
          goto LABEL_36;
        }

        v54 = *(v47 + 16);
        v53 = *(v47 + 24);
        v42 = __OFSUB__(v53, v54);
        v52 = v53 - v54;
        if (!v42)
        {
          goto LABEL_36;
        }

        __break(1u);
      }

      else if (!v51)
      {
        v52 = BYTE6(v48);
LABEL_36:
        *(result + 4) = v52;
        v55 = result;
        sub_1000049D0(v47, v48);
        _os_log_impl(&_mh_execute_header, v49, v50, "Successfully Encrypted liteLocationData. Final size %ld", v55, 0xCu);

        goto LABEL_37;
      }

      LODWORD(v52) = HIDWORD(v47) - v47;
      if (!__OFSUB__(HIDWORD(v47), v47))
      {
        v52 = v52;
        goto LABEL_36;
      }

LABEL_40:
      __break(1u);
      return result;
    }

    result = swift_slowAlloc();
    v37 = result;
    *result = 134217984;
    v38 = v30 >> 62;
    if ((v30 >> 62) > 1)
    {
      if (v38 != 2)
      {
        v39 = 0;
        goto LABEL_23;
      }

      v41 = *(v28 + 16);
      v40 = *(v28 + 24);
      v42 = __OFSUB__(v40, v41);
      v39 = v40 - v41;
      if (!v42)
      {
        goto LABEL_23;
      }

      __break(1u);
    }

    else if (!v38)
    {
      v39 = BYTE6(v30);
LABEL_23:
      *(result + 4) = v39;
      sub_10001A794(v28, v30);
      _os_log_impl(&_mh_execute_header, v34, v35, "Encrypting litelocation data of size %ld", v37, 0xCu);

      goto LABEL_24;
    }

    LODWORD(v39) = HIDWORD(v28) - v28;
    if (__OFSUB__(HIDWORD(v28), v28))
    {
      __break(1u);
      goto LABEL_40;
    }

    v39 = v39;
    goto LABEL_23;
  }

  sub_100002CE0(v13, &qword_1005AABB0, &unk_1004C45F0);
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_10000A6F0(v19, qword_1005DFB98);
  swift_errorRetain();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v61 = v23;
    *v22 = 136315138;
    v63 = a2;
    swift_errorRetain();
    sub_10004B564(&qword_1005A9E10, &qword_1004D6790);
    v24 = String.init<A>(describing:)();
    v26 = sub_10000D01C(v24, v25, &v61);

    *(v22 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v20, v21, "No keys available for sharing location to followers. Error %s", v22, 0xCu);
    sub_100004984(v23);
  }

  return (v60)(0, 0xF000000000000000, a2);
}

void sub_100104908(uint64_t a1)
{
  v2 = sub_10004B564(&qword_1005AAF90, &unk_1004C4BA0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = (&v19 - v4);
  sub_100005F04(a1, &v19 - v4, &qword_1005AAF90, &unk_1004C4BA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = *v5;
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000A6F0(v7, qword_1005DFB98);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v6;
      v20 = v11;
      *v10 = 136315138;
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v12 = String.init<A>(describing:)();
      v14 = sub_10000D01C(v12, v13, &v20);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "Error saving config %s", v10, 0xCu);
      sub_100004984(v11);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000A6F0(v15, qword_1005DFB98);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Successfully saved config", v18, 2u);
    }

    sub_100002CE0(v5, &qword_1005AAF90, &unk_1004C4BA0);
  }
}

uint64_t sub_100104BF4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  return swift_deallocClassInstance();
}

__n128 sub_100104C70(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100104C8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100104CD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Int sub_100104D30(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10023C9DC(v2);
  }

  v3 = *(v2 + 2);
  v20[0] = (v2 + 32);
  v20[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 48;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = *(v12 + 4);
          if (*v12 >= v13)
          {
            break;
          }

          v14 = v12[40];
          v15 = *(v12 + 1);
          v16 = *v12;
          *(v12 + 1) = *(v12 - 1);
          *(v12 + 2) = v16;
          *(v12 - 1) = v15;
          *v12 = v13;
          v12[8] = v14;
          v12 -= 32;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 32;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v18[0] = v7 + 4;
    v18[1] = v6;
    sub_100104E84(v18, v19, v20, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_100104E84(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v92 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_91:
    v5 = *v92;
    if (!*v92)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_125:
      result = sub_10023C584(v8);
      v8 = result;
    }

    v84 = v8 + 2;
    v85 = v8[2];
    if (v85 >= 2)
    {
      while (*a3)
      {
        v86 = &v8[2 * v85];
        v87 = *v86;
        v88 = &v84[2 * v85];
        v89 = v88[1];
        sub_100105434((*a3 + 32 * *v86), (*a3 + 32 * *v88), (*a3 + 32 * v89), v5);
        if (v4)
        {
        }

        if (v89 < v87)
        {
          goto LABEL_117;
        }

        if (v85 - 2 >= *v84)
        {
          goto LABEL_118;
        }

        *v86 = v87;
        v86[1] = v89;
        v90 = *v84 - v85;
        if (*v84 < v85)
        {
          goto LABEL_119;
        }

        v85 = *v84 - 1;
        result = memmove(v88, v88 + 2, 16 * v90);
        *v84 = v85;
        if (v85 <= 1)
        {
        }
      }

      goto LABEL_129;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v91 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 32 * v7 + 16);
      v11 = 32 * v9;
      v12 = *a3 + 32 * v9;
      v13 = *(v12 + 16);
      v14 = v9 + 2;
      v15 = (v12 + 80);
      while (v6 != v14)
      {
        v16 = *(v15 - 4) >= *v15;
        ++v14;
        v15 += 4;
        if ((((v13 < v10) ^ v16) & 1) == 0)
        {
          v7 = v14 - 1;
          if (v13 >= v10)
          {
            goto LABEL_23;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v13 >= v10)
      {
        goto LABEL_23;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_122;
      }

      if (v9 < v7)
      {
        v17 = 32 * v7 - 32;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v22 = *a3;
            if (!*a3)
            {
              goto LABEL_128;
            }

            v23 = (v22 + v11);
            v24 = (v22 + v17);
            v25 = *(v22 + v11);
            v26 = *(v22 + v11 + 16);
            v27 = *(v22 + v11 + 24);
            if (v11 != v17 || v23 >= v24 + 2)
            {
              v20 = v24[1];
              *v23 = *v24;
              v23[1] = v20;
            }

            v21 = v22 + v17;
            *v21 = v25;
            *(v21 + 16) = v26;
            *(v21 + 24) = v27;
          }

          ++v19;
          v17 -= 32;
          v11 += 32;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_23:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_121;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_123;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_40:
    if (v7 < v9)
    {
      goto LABEL_120;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1001FCD18(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v38 = v8[3];
    v39 = v5 + 1;
    if (v5 >= v38 >> 1)
    {
      result = sub_1001FCD18((v38 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v39;
    v40 = v8 + 4;
    v41 = &v8[2 * v5 + 4];
    *v41 = v9;
    v41[1] = v7;
    v93 = *v92;
    if (!*v92)
    {
      goto LABEL_130;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v42 = v8[4];
          v43 = v8[5];
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_60:
          if (v45)
          {
            goto LABEL_107;
          }

          v58 = &v8[2 * v39];
          v60 = *v58;
          v59 = v58[1];
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_109;
          }

          v64 = &v40[2 * v5];
          v66 = *v64;
          v65 = v64[1];
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_114;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v5 = v39 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        if (v39 < 2)
        {
          goto LABEL_115;
        }

        v68 = &v8[2 * v39];
        v70 = *v68;
        v69 = v68[1];
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_75:
        if (v63)
        {
          goto LABEL_111;
        }

        v71 = &v40[2 * v5];
        v73 = *v71;
        v72 = v71[1];
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_113;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_82:
        if (v5 - 1 >= v39)
        {
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

        if (!*a3)
        {
          goto LABEL_127;
        }

        v79 = &v40[2 * v5 - 2];
        v80 = *v79;
        v81 = &v40[2 * v5];
        v82 = v81[1];
        sub_100105434((*a3 + 32 * *v79), (*a3 + 32 * *v81), (*a3 + 32 * v82), v93);
        if (v4)
        {
        }

        if (v82 < v80)
        {
          goto LABEL_102;
        }

        if (v5 > v8[2])
        {
          goto LABEL_103;
        }

        *v79 = v80;
        v79[1] = v82;
        v83 = v8[2];
        if (v5 >= v83)
        {
          goto LABEL_104;
        }

        v39 = v83 - 1;
        result = memmove(&v40[2 * v5], v81 + 2, 16 * (v83 - 1 - v5));
        v8[2] = v83 - 1;
        if (v83 <= 2)
        {
          goto LABEL_3;
        }
      }

      v46 = &v40[2 * v39];
      v47 = *(v46 - 8);
      v48 = *(v46 - 7);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_105;
      }

      v51 = *(v46 - 6);
      v50 = *(v46 - 5);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_106;
      }

      v53 = &v8[2 * v39];
      v55 = *v53;
      v54 = v53[1];
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_108;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_110;
      }

      if (v57 >= v49)
      {
        v75 = &v40[2 * v5];
        v77 = *v75;
        v76 = v75[1];
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_116;
        }

        if (v44 < v78)
        {
          v5 = v39 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_60;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v91;
    if (v7 >= v6)
    {
      goto LABEL_91;
    }
  }

  v28 = *a3;
  v29 = v9 - v7;
  v30 = *a3 + 32 * v7;
LABEL_33:
  v31 = v30;
  v32 = v29;
  while (1)
  {
    v33 = *(v31 + 16);
    if (*(v31 - 16) >= v33)
    {
LABEL_32:
      ++v7;
      --v29;
      v30 += 32;
      if (v7 != v6)
      {
        goto LABEL_33;
      }

      v7 = v6;
      goto LABEL_40;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v31 + 24);
    v35 = *v31;
    v36 = *(v31 - 16);
    *v31 = *(v31 - 32);
    *(v31 + 16) = v36;
    *(v31 - 16) = v33;
    *(v31 - 8) = v34;
    *(v31 - 32) = v35;
    v31 -= 32;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
  return result;
}