uint64_t sub_1000033A4(uint64_t a1, void *a2)
{
  v4 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 1);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = (&v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *&v4[OBJC_IVAR____TtC7remindd26RDClientConnectionListener_listenerQueue];
  *v10 = v11;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v10, v6);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_42;
  }

  v13 = *&v4[OBJC_IVAR____TtC7remindd26RDClientConnectionListener_xpcDaemon];
  v14 = *&v4[OBJC_IVAR____TtC7remindd26RDClientConnectionListener_xpcDaemon + 8];
  sub_100003C4C();
  v15 = *&v4[OBJC_IVAR____TtC7remindd26RDClientConnectionListener_xpcListenerUserInteractive];
  swift_unknownObjectRetain();
  v16 = static NSObject.== infix(_:_:)();
  v17 = objc_allocWithZone(type metadata accessor for RDClientConnection());
  v18 = a2;
  v3 = sub_100003C98(v18, v13, v14, v12, v16 & 1);
  v19 = *&v3[OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity + 44] >> 14;
  if (v19 < 2)
  {
    LOWORD(v20) = -129;
    goto LABEL_12;
  }

  if (v19 != 2)
  {
    LOWORD(v20) = -1;
    goto LABEL_12;
  }

  v20 = *&v3[OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity + 40];
  if (v20)
  {
    if ((v20 & 5) == 0)
    {
      if (qword_100935AF0 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_100006654(v21, qword_10093A260);
      v22 = v3;
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v66 = v24;
        v26 = v25;
        v27 = swift_slowAlloc();
        v65 = v23;
        v28 = v27;
        *v26 = 138543362;
        *(v26 + 4) = v22;
        *v27 = v22;
        v29 = v22;
        v30 = v65;
        _os_log_impl(&_mh_execute_header, v65, v66, "clientConnection.accessLevel has no read/write access {clientConnection: %{public}@}", v26, 0xCu);
        sub_100039860(v28);
      }

      else
      {
      }
    }

LABEL_12:
    if (static NSObject.== infix(_:_:)())
    {
      if ((v20 & 0x100) != 0)
      {
        v38 = sub_100007CF0([v18 processIdentifier]);
        goto LABEL_23;
      }

      if (qword_100935AF0 != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      sub_100006654(v31, qword_10093A260);
      v32 = v18;
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        *v35 = 138412290;
        *(v35 + 4) = v32;
        *v36 = v32;
        v37 = v32;
        _os_log_impl(&_mh_execute_header, v33, v34, "Connection requested as UserInteractive but is missing the entitlement. Using xpc Queue {connection: %@}", v35, 0xCu);
        sub_100039860(v36);
      }
    }

    if (qword_100935D18 != -1)
    {
      swift_once();
    }

    v38 = qword_100974CB0;
LABEL_23:
    v6 = v38;
    [v18 _setQueue:v6];
    if (qword_100935AF0 == -1)
    {
LABEL_24:
      v39 = type metadata accessor for Logger();
      sub_100006654(v39, qword_10093A260);
      v40 = v3;
      v41 = v6;
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *v44 = 138543618;
        *(v44 + 4) = v40;
        *(v44 + 12) = 2114;
        *(v44 + 14) = v41;
        *v45 = v40;
        v45[1] = v41;
        v46 = v40;
        _os_log_impl(&_mh_execute_header, v42, v43, "New client connection {connection: %{public}@, queue: %{public}@}", v44, 0x16u);
        sub_1000F5104(&unk_100938E70, &unk_100797230);
        swift_arrayDestroy();
      }

      else
      {
      }

      *&v40[OBJC_IVAR____TtC7remindd18RDClientConnection_delegate + 8] = &off_1008E7F50;
      swift_unknownObjectWeakAssign();
      v47 = OBJC_IVAR____TtC7remindd26RDClientConnectionListener_clientConnections;
      swift_beginAccess();
      v48 = v40;
      sub_10000854C(&v67, v48);
      v49 = v67;
      swift_endAccess();

      v50 = v4;
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 134217984;
        v54 = *&v4[v47];
        if ((v54 & 0xC000000000000001) != 0)
        {

          v55 = __CocoaSet.count.getter();
        }

        else
        {
          v55 = *(v54 + 16);
        }

        *(v53 + 4) = v55;

        _os_log_impl(&_mh_execute_header, v51, v52, "Connection count: %ld", v53, 0xCu);
      }

      else
      {

        v51 = v50;
      }

      v56 = swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_100008950(v48, sub_100007AA8, v56);

      v57 = 1;
      goto LABEL_34;
    }

LABEL_42:
    swift_once();
    goto LABEL_24;
  }

  if (qword_100935AF0 != -1)
  {
    swift_once();
  }

  v59 = type metadata accessor for Logger();
  sub_100006654(v59, qword_10093A260);
  v60 = v3;
  v41 = Logger.logObject.getter();
  v61 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v41, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *v62 = 138543362;
    *(v62 + 4) = v60;
    *v63 = v60;
    v64 = v60;
    _os_log_impl(&_mh_execute_header, v41, v61, "clientConnection.accessLevel == .none. Rejecting connection {clientConnection: %{public}@}", v62, 0xCu);
    sub_100039860(v63);
  }

  v57 = 0;
LABEL_34:

  return v57;
}

uint64_t sub_100003C14()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100003C4C()
{
  result = qword_100945FC0;
  if (!qword_100945FC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100945FC0);
  }

  return result;
}

char *sub_100003C98(void *a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  *&v5[OBJC_IVAR____TtC7remindd18RDClientConnection_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC7remindd18RDClientConnection_keepAliveTransaction] = 0;
  *&v5[OBJC_IVAR____TtC7remindd18RDClientConnection_cancellables] = &_swiftEmptySetSingleton;
  *&v5[OBJC_IVAR____TtC7remindd18RDClientConnection_xpcConnection] = a1;
  *&v5[OBJC_IVAR____TtC7remindd18RDClientConnection_notificationSubscriptionQueue] = a4;
  v5[OBJC_IVAR____TtC7remindd18RDClientConnection_isUserInteractive] = a5;
  v10 = a1;
  v46 = a4;
  v11 = [v10 processIdentifier];
  v12 = v10;
  v13 = sub_10000410C(v12);
  v15 = v14;
  v17 = v16;

  v18 = 0xFFFF800000000000;
  if (a5)
  {
    v18 = 0xFFFF810000000000;
  }

  v19 = &v5[OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity];
  *v19 = v11;
  *(v19 + 1) = v15;
  *(v19 + 3) = 0;
  *(v19 + 4) = 0;
  *(v19 + 2) = v17;
  *(v19 + 22) = (v18 & 0xFFFFFFFE00000000 | v13 & 0x1FFFFFFFFLL) >> 32;
  *(v19 + 10) = v13;
  v20 = &v5[OBJC_IVAR____TtC7remindd18RDClientConnection_xpcDaemon];
  *v20 = a2;
  v20[1] = a3;
  v54.receiver = v5;
  v54.super_class = type metadata accessor for RDClientConnection();
  swift_unknownObjectRetain();
  v21 = objc_msgSendSuper2(&v54, "init");
  v22 = v21;
  v23 = *&v21[OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity + 44] >> 14;
  if (v23 <= 1 || v23 == 2 && (*&v21[OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity + 40] & 0x80) == 0)
  {
    v24 = v21;
  }

  else
  {
    v25 = v21;
    sub_100006110();
    sub_100006758();
  }

  v26 = OBJC_IVAR____TtC7remindd18RDClientConnection_xpcConnection;
  v27 = *&v22[OBJC_IVAR____TtC7remindd18RDClientConnection_xpcConnection];
  v28 = v22;
  [v27 setExportedObject:v28];
  v29 = *&v22[v26];
  v30 = objc_opt_self();
  v31 = v29;
  v32 = [v30 interface];
  [v31 setExportedInterface:v32];

  v33 = *&v22[v26];
  v34 = objc_opt_self();
  v35 = v33;
  v36 = [v34 interface];
  [v35 setRemoteObjectInterface:v36];

  v37 = *&v22[v26];
  v38 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v52 = sub_1004BECB4;
  v53 = v38;
  aBlock = _NSConcreteStackBlock;
  v49 = 1107296256;
  v50 = sub_100019200;
  v51 = &unk_1008F4550;
  v39 = _Block_copy(&aBlock);
  v40 = v37;

  [v40 setInterruptionHandler:v39];
  _Block_release(v39);

  v41 = *&v22[v26];
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v43 = v41;

  v52 = sub_100052674;
  v53 = v42;
  aBlock = _NSConcreteStackBlock;
  v49 = 1107296256;
  v50 = sub_100019200;
  v51 = &unk_1008F4578;
  v44 = _Block_copy(&aBlock);

  [v43 setInvalidationHandler:v44];
  _Block_release(v44);

  swift_unknownObjectRelease();
  return v28;
}

uint64_t sub_1000040B0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000410C(void *a1)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = sub_100004F64(v2, v3);

  if (v4)
  {
    if ([objc_opt_self() isInternalInstall])
    {
      v5 = sub_100005104(0, 1, 1, &_swiftEmptyArrayStorage);
      v7 = *(v5 + 2);
      v6 = *(v5 + 3);
      if (v7 >= v6 >> 1)
      {
        v5 = sub_100005104((v6 > 1), v7 + 1, 1, v5);
      }

      *(v5 + 2) = v7 + 1;
      *&v5[4 * v7 + 32] = 0x7FFFFFFF;
      goto LABEL_12;
    }

    if (qword_1009367A0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100006654(v8, qword_100950D98);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Device is running a non-internal Install. Not providing remindtool access level", v11, 2u);
    }
  }

  v5 = &_swiftEmptyArrayStorage;
LABEL_12:
  if (sub_100004F64(0xD00000000000001ELL, 0x80000001007FA3B0))
  {
    goto LABEL_21;
  }

  v12 = String._bridgeToObjectiveC()();
  v13 = [a1 valueForEntitlement:v12];

  if (v13)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v83 = 0u;
    v84 = 0u;
  }

  v85 = v83;
  v86 = v84;
  sub_1000050A4(&v85, &qword_100939ED0, &qword_100791B10);
  if (*(&v84 + 1))
  {
    goto LABEL_21;
  }

  v14 = String._bridgeToObjectiveC()();
  v15 = [a1 valueForEntitlement:v14];

  if (v15)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v83 = 0u;
    v84 = 0u;
  }

  v85 = v83;
  v86 = v84;
  sub_1000050A4(&v85, &qword_100939ED0, &qword_100791B10);
  if (*(&v84 + 1))
  {
LABEL_21:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_100005104(0, *(v5 + 2) + 1, 1, v5);
    }

    v17 = *(v5 + 2);
    v16 = *(v5 + 3);
    v18 = v16 >> 1;
    v19 = v17 + 1;
    if (v16 >> 1 <= v17)
    {
      v5 = sub_100005104((v16 > 1), v17 + 1, 1, v5);
      v16 = *(v5 + 3);
      v18 = v16 >> 1;
    }

    *(v5 + 2) = v19;
    *&v5[4 * v17 + 32] = 1;
    v20 = v17 + 2;
    if (v18 < (v17 + 2))
    {
      v5 = sub_100005104((v16 > 1), v17 + 2, 1, v5);
    }

    *(v5 + 2) = v20;
    *&v5[4 * v19 + 32] = 4;
    v21 = *(v5 + 3);
    if ((v17 + 3) > (v21 >> 1))
    {
      v5 = sub_100005104((v21 > 1), v17 + 3, 1, v5);
    }

    *(v5 + 2) = v17 + 3;
    *&v5[4 * v20 + 32] = 8;
  }

  if (sub_100004F64(0xD000000000000012, 0x80000001007FA430) & 1) != 0 || (sub_100004F64(0xD000000000000026, 0x80000001007FA450))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_100005104(0, *(v5 + 2) + 1, 1, v5);
    }

    v23 = *(v5 + 2);
    v22 = *(v5 + 3);
    if (v23 >= v22 >> 1)
    {
      v5 = sub_100005104((v22 > 1), v23 + 1, 1, v5);
    }

    *(v5 + 2) = v23 + 1;
    *&v5[4 * v23 + 32] = 2;
  }

  v24 = String._bridgeToObjectiveC()();
  v25 = [a1 valueForEntitlement:v24];

  if (v25)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v83 = 0u;
    v84 = 0u;
  }

  v85 = v83;
  v86 = v84;
  sub_1000050A4(&v85, &qword_100939ED0, &qword_100791B10);
  if (*(&v84 + 1) || (sub_100004F64(0xD000000000000024, 0x80000001007FA4B0) & 1) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_100005104(0, *(v5 + 2) + 1, 1, v5);
    }

    v27 = *(v5 + 2);
    v26 = *(v5 + 3);
    v28 = v26 >> 1;
    v29 = v27 + 1;
    if (v26 >> 1 <= v27)
    {
      v5 = sub_100005104((v26 > 1), v27 + 1, 1, v5);
      v26 = *(v5 + 3);
      v28 = v26 >> 1;
    }

    *(v5 + 2) = v29;
    *&v5[4 * v27 + 32] = 8;
    v30 = v27 + 2;
    if (v28 < (v27 + 2))
    {
      v5 = sub_100005104((v26 > 1), v27 + 2, 1, v5);
    }

    *(v5 + 2) = v30;
    *&v5[4 * v29 + 32] = 16;
    v31 = *(v5 + 3);
    v32 = v27 + 3;
    if ((v27 + 3) > (v31 >> 1))
    {
      v5 = sub_100005104((v31 > 1), v27 + 3, 1, v5);
    }

    *(v5 + 2) = v32;
    *&v5[4 * v30 + 32] = 4;
    v33 = *(v5 + 3);
    if ((v27 + 4) > (v33 >> 1))
    {
      v5 = sub_100005104((v33 > 1), v27 + 4, 1, v5);
    }

    *(v5 + 2) = v27 + 4;
    *&v5[4 * v32 + 32] = 32;
  }

  if (sub_10000520C(15))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_100005104(0, *(v5 + 2) + 1, 1, v5);
    }

    v35 = *(v5 + 2);
    v34 = *(v5 + 3);
    if (v35 >= v34 >> 1)
    {
      v5 = sub_100005104((v34 > 1), v35 + 1, 1, v5);
    }

    *(v5 + 2) = v35 + 1;
    *&v5[4 * v35 + 32] = 1;
  }

  v36 = String._bridgeToObjectiveC()();
  v37 = [a1 valueForEntitlement:v36];

  if (v37)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v83 = 0u;
    v84 = 0u;
  }

  v85 = v83;
  v86 = v84;
  sub_1000050A4(&v85, &qword_100939ED0, &qword_100791B10);
  if (*(&v84 + 1) || (result = sub_1004BEAB0(1u), (result & 1) != 0))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_100005104(0, *(v5 + 2) + 1, 1, v5);
    }

    v40 = *(v5 + 2);
    v39 = *(v5 + 3);
    v41 = v39 >> 1;
    v42 = v40 + 1;
    if (v39 >> 1 <= v40)
    {
      v5 = sub_100005104((v39 > 1), v40 + 1, 1, v5);
      v39 = *(v5 + 3);
      v41 = v39 >> 1;
    }

    *(v5 + 2) = v42;
    *&v5[4 * v40 + 32] = 1;
    v43 = v40 + 2;
    if (v41 < v43)
    {
      v5 = sub_100005104((v39 > 1), v43, 1, v5);
    }

    *(v5 + 2) = v43;
    *&v5[4 * v42 + 32] = 4;
    if (sub_1000055D8(0))
    {
      v45 = *(v5 + 2);
      v44 = *(v5 + 3);
      if (v45 >= v44 >> 1)
      {
        v5 = sub_100005104((v44 > 1), v45 + 1, 1, v5);
      }

      *(v5 + 2) = v45 + 1;
      *&v5[4 * v45 + 32] = 1;
    }

    if (sub_1000055D8(1u))
    {
      v47 = *(v5 + 2);
      v46 = *(v5 + 3);
      if (v47 >= v46 >> 1)
      {
        v5 = sub_100005104((v46 > 1), v47 + 1, 1, v5);
      }

      *(v5 + 2) = v47 + 1;
      *&v5[4 * v47 + 32] = 2;
    }

    if (sub_1000055D8(2u))
    {
      v49 = *(v5 + 2);
      v48 = *(v5 + 3);
      v50 = v48 >> 1;
      v51 = v49 + 1;
      if (v48 >> 1 <= v49)
      {
        v5 = sub_100005104((v48 > 1), v49 + 1, 1, v5);
        v48 = *(v5 + 3);
        v50 = v48 >> 1;
      }

      *(v5 + 2) = v51;
      *&v5[4 * v49 + 32] = 8;
      v52 = v49 + 2;
      if (v50 < (v49 + 2))
      {
        v5 = sub_100005104((v48 > 1), v49 + 2, 1, v5);
      }

      *(v5 + 2) = v52;
      *&v5[4 * v51 + 32] = 4;
      v53 = *(v5 + 3);
      if ((v49 + 3) > (v53 >> 1))
      {
        v5 = sub_100005104((v53 > 1), v49 + 3, 1, v5);
      }

      *(v5 + 2) = v49 + 3;
      *&v5[4 * v52 + 32] = 16;
    }

    if (sub_1000055D8(3u))
    {
      v55 = *(v5 + 2);
      v54 = *(v5 + 3);
      if (v55 >= v54 >> 1)
      {
        v5 = sub_100005104((v54 > 1), v55 + 1, 1, v5);
      }

      *(v5 + 2) = v55 + 1;
      *&v5[4 * v55 + 32] = 32;
    }

    if (sub_1000055D8(4u))
    {
      v57 = *(v5 + 2);
      v56 = *(v5 + 3);
      if (v57 >= v56 >> 1)
      {
        v5 = sub_100005104((v56 > 1), v57 + 1, 1, v5);
      }

      *(v5 + 2) = v57 + 1;
      *&v5[4 * v57 + 32] = 1024;
    }

    if (sub_1000055D8(5u))
    {
      v59 = *(v5 + 2);
      v58 = *(v5 + 3);
      if (v59 >= v58 >> 1)
      {
        v5 = sub_100005104((v58 > 1), v59 + 1, 1, v5);
      }

      *(v5 + 2) = v59 + 1;
      *&v5[4 * v59 + 32] = 64;
    }

    if (sub_1000055D8(6u))
    {
      v61 = *(v5 + 2);
      v60 = *(v5 + 3);
      if (v61 >= v60 >> 1)
      {
        v5 = sub_100005104((v60 > 1), v61 + 1, 1, v5);
      }

      *(v5 + 2) = v61 + 1;
      *&v5[4 * v61 + 32] = 256;
    }

    result = sub_1000055D8(7u);
    if (result)
    {
      v63 = *(v5 + 2);
      v62 = *(v5 + 3);
      if (v63 >= v62 >> 1)
      {
        result = sub_100005104((v62 > 1), v63 + 1, 1, v5);
        v5 = result;
      }

      *(v5 + 2) = v63 + 1;
      *&v5[4 * v63 + 32] = 128;
    }
  }

  v64 = 0;
  v65 = *(v5 + 2);
  while (v65 != v64)
  {
    v66 = &v5[4 * v64++];
    if (*(v66 + 8) == 1)
    {
      v67 = 0;
      goto LABEL_118;
    }
  }

  if (!kTCCServiceReminders)
  {
    __break(1u);
    return result;
  }

  v68 = kTCCServiceReminders;
  [a1 auditToken];
  v69 = TCCAccessCheckAuditToken();

  if (v69)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_100005104(0, *(v5 + 2) + 1, 1, v5);
    }

    v71 = *(v5 + 2);
    v70 = *(v5 + 3);
    v65 = v71 + 1;
    if (v71 >= v70 >> 1)
    {
      v5 = sub_100005104((v70 > 1), v71 + 1, 1, v5);
    }

    *(v5 + 2) = v65;
    *&v5[4 * v71 + 32] = 1;
    v67 = &_mh_execute_header;
  }

  else
  {
    v67 = 0;
    v65 = *(v5 + 2);
  }

LABEL_118:
  v72 = 0;
  while (v65 != v72)
  {
    v73 = &v5[4 * v72++];
    if (*(v73 + 8) == 1)
    {
      v74 = String._bridgeToObjectiveC()();
      v75 = [a1 valueForEntitlement:v74];

      if (v75)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v83 = 0u;
        v84 = 0u;
      }

      v85 = v83;
      v86 = v84;
      sub_1000050A4(&v85, &qword_100939ED0, &qword_100791B10);
      if (*(&v84 + 1))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_100005104(0, *(v5 + 2) + 1, 1, v5);
        }

        v77 = *(v5 + 2);
        v76 = *(v5 + 3);
        v65 = v77 + 1;
        if (v77 >= v76 >> 1)
        {
          v5 = sub_100005104((v76 > 1), v77 + 1, 1, v5);
        }

        *(v5 + 2) = v65;
        *&v5[4 * v77 + 32] = 512;
        goto LABEL_132;
      }

      v65 = *(v5 + 2);
      break;
    }
  }

  if (!v65)
  {

    v78 = 0;
    goto LABEL_138;
  }

LABEL_132:
  LODWORD(v78) = 0;
  v79 = 32;
  do
  {
    v80 = *&v5[v79];
    if ((v80 & ~v78) == 0)
    {
      v80 = 0;
    }

    v78 = v80 | v78;
    v79 += 4;
    --v65;
  }

  while (v65);

LABEL_138:
  v81 = String._bridgeToObjectiveC()();
  v82 = [a1 valueForEntitlement:v81];

  if (v82)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v83 = 0u;
    v84 = 0u;
  }

  v85 = v83;
  v86 = v84;
  if (*(&v84 + 1))
  {
    swift_dynamicCast();
  }

  else
  {
    sub_1000050A4(&v85, &qword_100939ED0, &qword_100791B10);
  }

  return v78 | v67;
}

uint64_t sub_100004F64(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = String._bridgeToObjectiveC()();
  v7 = [v3 valueForEntitlement:v6];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (!*(&v11 + 1))
  {
    sub_1000050A4(v12, &qword_100939ED0, &qword_100791B10);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v8 = 0;
    return v8 & 1;
  }

  if (v10 == __PAIR128__(a2, a1))
  {

    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_1000050A4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000F5104(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

char *sub_100005104(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000F5104(&qword_100943C80, &qword_1007A4498);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

uint64_t sub_10000520C(char a1)
{
  sub_100005394(a1);
  v2 = String._bridgeToObjectiveC()();

  v3 = [v1 valueForEntitlement:v2];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v7[0] = v8;
  v7[1] = v9;
  if (*(&v9 + 1))
  {
    sub_100005EE0(v7, &v8);
    sub_100005EF0(&v8, v7);
    sub_1000060C8(0, &unk_10093F610, NSString_ptr);
    if (swift_dynamicCast() & 1) != 0 || (sub_100005EF0(&v8, v7), sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr), (swift_dynamicCast()))
    {
      v4 = [v6 BOOLValue];

      sub_10000607C(&v8);
      return v4;
    }

    else
    {
      sub_10000607C(&v8);
      return 1;
    }
  }

  else
  {
    sub_1000050A4(v7, &qword_100939ED0, &qword_100791B10);
    return 0;
  }
}

unint64_t sub_100005394(char a1)
{
  result = 0xD000000000000020;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0xD00000000000003ELL;
      break;
    case 3:
      result = 0xD000000000000034;
      break;
    case 4:
      result = 0xD00000000000001BLL;
      break;
    case 5:
      result = 0xD000000000000027;
      break;
    case 6:
      result = 0xD000000000000032;
      break;
    case 7:
      result = 0xD000000000000024;
      break;
    case 8:
    case 17:
      result = 0xD000000000000026;
      break;
    case 9:
      result = 0xD00000000000002ELL;
      break;
    case 10:
      result = 0xD000000000000025;
      break;
    case 11:
      result = 0xD000000000000043;
      break;
    case 12:
      result = 0xD000000000000039;
      break;
    case 13:
      result = 0xD000000000000042;
      break;
    case 14:
      result = 0xD000000000000038;
      break;
    case 15:
      result = 0xD00000000000001DLL;
      break;
    case 16:
      result = 0xD00000000000004CLL;
      break;
    case 19:
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000055D8(unsigned __int8 a1)
{
  v3 = 0xD000000000000011;
  v4 = String._bridgeToObjectiveC()();
  v5 = [v1 valueForEntitlement:v4];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v52 = 0u;
    v53 = 0u;
  }

  v51[0] = v52;
  v51[1] = v53;
  if (!*(&v53 + 1))
  {
    sub_1000050A4(v51, &qword_100939ED0, &qword_100791B10);
LABEL_52:
    v18 = 0;
    return v18 & 1;
  }

  sub_100005EE0(v51, &v52);
  sub_100005EF0(&v52, v51);
  sub_1000F5104(&unk_10093B300, &unk_100797780);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_100005EF0(&v52, v51);
    sub_1000F5104(&unk_100938CB0, &unk_100796A70);
    if (swift_dynamicCast())
    {
      if (a1 > 3u)
      {
        if (a1 > 5u)
        {
          if (a1 == 6)
          {
            v8 = 0x65746E4972657375;
            v7 = 0xEF65766974636172;
          }

          else
          {
            v8 = 0x76696C417065656BLL;
            v7 = 0xE900000000000065;
          }
        }

        else if (a1 == 4)
        {
          v7 = 0x80000001007F35B0;
          v8 = 0xD000000000000011;
        }

        else
        {
          v7 = 0xE800000000000000;
          v8 = 0x676E697865646E69;
        }
      }

      else if (a1 > 1u)
      {
        if (a1 == 2)
        {
          v7 = 0xE400000000000000;
          v8 = 1668184435;
        }

        else
        {
          v7 = 0xE500000000000000;
          v8 = 0x6775626564;
        }
      }

      else if (a1)
      {
        v8 = 0x6E756F4669726973;
        v7 = 0xEF737070416E4964;
      }

      else
      {
        v7 = 0xE500000000000000;
        v8 = 0x65726F7473;
      }

      if (*(v50[0] + 16))
      {
        v19 = sub_100005F4C(v8, v7);
        v21 = v20;

        if (v21)
        {
          sub_100005EF0(*(v50[0] + 56) + 32 * v19, v51);

          sub_100005EF0(v51, v50);
          sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
          if (swift_dynamicCast())
          {
            v18 = [v49[0] BOOLValue];

            sub_10000607C(v51);
            sub_10000607C(&v52);
            return v18 & 1;
          }

          if (qword_1009367A0 != -1)
          {
            swift_once();
          }

          v23 = type metadata accessor for Logger();
          sub_100006654(v23, qword_100950D98);
          sub_100005EF0(v51, v50);
          sub_100005EF0(v51, v49);
          v24 = Logger.logObject.getter();
          v25 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v24, v25))
          {
            v26 = swift_slowAlloc();
            v48 = swift_slowAlloc();
            *v26 = 136446722;
            v27 = 0xE500000000000000;
            v28 = 0x65746E4972657375;
            v29 = 0xEF65766974636172;
            if (a1 != 6)
            {
              v28 = 0x76696C417065656BLL;
              v29 = 0xE900000000000065;
            }

            v30 = 0x80000001007F35B0;
            v31 = 0x676E697865646E69;
            if (a1 == 4)
            {
              v31 = 0xD000000000000011;
            }

            else
            {
              v30 = 0xE800000000000000;
            }

            if (a1 <= 5u)
            {
              v28 = v31;
              v29 = v30;
            }

            v32 = 0xE400000000000000;
            v33 = 1668184435;
            if (a1 != 2)
            {
              v33 = 0x6775626564;
              v32 = 0xE500000000000000;
            }

            v34 = 0x6E756F4669726973;
            if (a1)
            {
              v27 = 0xEF737070416E4964;
            }

            else
            {
              v34 = 0x65726F7473;
            }

            if (a1 > 1u)
            {
              v27 = v32;
            }

            else
            {
              v33 = v34;
            }

            if (a1 <= 3u)
            {
              v35 = v33;
            }

            else
            {
              v35 = v28;
            }

            if (a1 <= 3u)
            {
              v36 = v27;
            }

            else
            {
              v36 = v29;
            }

            v37 = sub_10000668C(v35, v36, &v48);

            *(v26 + 4) = v37;
            *(v26 + 12) = 2082;
            sub_100005EF0(v50, v47);
            v38 = String.init<A>(describing:)();
            v40 = v39;
            sub_10000607C(v50);
            v41 = sub_10000668C(v38, v40, &v48);

            *(v26 + 14) = v41;
            *(v26 + 22) = 2082;
            sub_10000F61C(v49, v49[3]);
            v47[0] = swift_getDynamicType();
            sub_1000F5104(&qword_100949DB8, &qword_1007AE138);
            v42 = String.init<A>(describing:)();
            v44 = v43;
            sub_10000607C(v49);
            v45 = sub_10000668C(v42, v44, &v48);

            *(v26 + 24) = v45;
            _os_log_impl(&_mh_execute_header, v24, v25, "Unexpected type for remindd entitlement {entitlement: %{public}s, value: %{public}s, type: %{public}s}", v26, 0x20u);
            swift_arrayDestroy();
          }

          else
          {

            sub_10000607C(v49);
            sub_10000607C(v50);
          }

          goto LABEL_31;
        }
      }

      else
      {
      }

      goto LABEL_51;
    }

    if (qword_1009367A0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100006654(v9, qword_100950D98);
    sub_100005EF0(&v52, v51);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v49[0] = v13;
      *v12 = 136446210;
      sub_100005EF0(v51, v50);
      v14 = String.init<A>(describing:)();
      v16 = v15;
      sub_10000607C(v51);
      v17 = sub_10000668C(v14, v16, v49);

      *(v12 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v10, v11, "Unexpected privateRemindd entitlement format {reminddEntitlements: %{public}s}", v12, 0xCu);
      sub_10000607C(v13);

LABEL_51:
      sub_10000607C(&v52);
      goto LABEL_52;
    }

LABEL_31:
    sub_10000607C(v51);
    goto LABEL_51;
  }

  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      if (a1 == 6)
      {
        v3 = 0x65746E4972657375;
        v6 = 0xEF65766974636172;
      }

      else
      {
        v3 = 0x76696C417065656BLL;
        v6 = 0xE900000000000065;
      }
    }

    else if (a1 == 4)
    {
      v6 = 0x80000001007F35B0;
    }

    else
    {
      v6 = 0xE800000000000000;
      v3 = 0x676E697865646E69;
    }
  }

  else if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v6 = 0xE400000000000000;
      v3 = 1668184435;
    }

    else
    {
      v6 = 0xE500000000000000;
      v3 = 0x6775626564;
    }
  }

  else if (a1)
  {
    v3 = 0x6E756F4669726973;
    v6 = 0xEF737070416E4964;
  }

  else
  {
    v3 = 0x65726F7473;
    v6 = 0xE500000000000000;
  }

  *&v51[0] = v3;
  *(&v51[0] + 1) = v6;
  __chkstk_darwin();
  v46[2] = v51;
  v18 = sub_100040A74(sub_100040B20, v46, v50[0]);

  sub_10000607C(&v52);

  return v18 & 1;
}

_OWORD *sub_100005EE0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100005EF0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100005F4C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_100005FC4(a1, a2, v6);
}

unint64_t sub_100005FC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_10000607C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1000060C8(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_100006110()
{
  v1 = OBJC_IVAR____TtC7remindd18RDClientConnection_keepAliveTransaction;
  if (!*(v0 + OBJC_IVAR____TtC7remindd18RDClientConnection_keepAliveTransaction))
  {
    v2 = v0;
    *&v24 = 0;
    *(&v24 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(31);

    v3 = 0xD000000000000011;
    v22 = 0xD00000000000001CLL;
    v23 = 0x80000001007FA310;
    v4 = *(v2 + OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity + 16);
    v24 = *(v2 + OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity);
    *v25 = v4;
    *&v25[14] = *(v2 + OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity + 30);
    sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
    v5 = swift_allocObject();
    v6 = v5;
    *(v5 + 16) = xmmword_100791340;
    if (((*&v25[28] << 32) & 0xC10000000000) == 0x810000000000)
    {
      v7 = 0x80000001007EECE0;
    }

    else
    {
      v3 = 0;
      v7 = 0xE000000000000000;
    }

    *(v5 + 56) = &type metadata for String;
    v8 = sub_100006600();
    v6[8] = v8;
    v6[4] = v3;
    v6[5] = v7;
    v9 = sub_1000063E8();
    v6[12] = &type metadata for String;
    v6[13] = v8;
    v6[9] = v9;
    v6[10] = v10;
    v11._countAndFlagsBits = String.init(format:_:)();
    String.append(_:)(v11);

    v12._countAndFlagsBits = 93;
    v12._object = 0xE100000000000000;
    String.append(_:)(v12);
    v14 = v22;
    v13 = v23;
    if (qword_1009362C0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100006654(v15, qword_100949BB0);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v22 = v19;
      *v18 = 136446210;
      *(v18 + 4) = sub_10000668C(v14, v13, &v22);
      _os_log_impl(&_mh_execute_header, v16, v17, "os_transaction INIT {name: %{public}s}", v18, 0xCu);
      sub_10000607C(v19);
    }

    String.utf8CString.getter();

    v20 = os_transaction_create();

    v21 = *(v2 + v1);
    *(v2 + v1) = v20;

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1000063E8()
{
  if (((*(v0 + 22) << 32) & 0xC00000000000) == 0x400000000000)
  {
    v3 = v0;
    v2 = *v0;
    v1 = v3[1];

    return v2;
  }

  else
  {
    v5 = sub_100008E70();
    if (v6)
    {
      v7 = v5;
      v8 = v6;
    }

    else if (((*(v0 + 22) << 32) & 0xC00000000000) == 0x800000000000)
    {
      v8 = v0[4];
      if (v8)
      {
        v7 = v0[3];
        v9 = v0[4];
      }

      else
      {
        v8 = 0xEF4449656C646E75;
        v7 = 0x426E776F6E6B6E55;
      }
    }

    else
    {
      v10 = [objc_opt_self() processInfo];
      v11 = [v10 processName];

      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v12;
    }

    sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100791320;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_100006600();
    *(v13 + 32) = v7;
    *(v13 + 40) = v8;
    v14 = *(v0 + 10) | (*(v0 + 22) << 32);
    if ((v14 & 0xC00000000000) == 0x800000000000)
    {
      v15 = *v0;
    }

    else
    {
      v16 = [objc_opt_self() processInfo];
      v15 = [v16 processIdentifier];
    }

    *(v13 + 96) = &type metadata for Int32;
    *(v13 + 104) = &protocol witness table for Int32;
    *(v13 + 72) = v15;
    *(v13 + 136) = &type metadata for Bool;
    *(v13 + 144) = &protocol witness table for Bool;
    *(v13 + 112) = (v14 & 0xC00000000100) != 0x800000000000;
    return String.init(format:_:)();
  }
}

unint64_t sub_100006600()
{
  result = qword_1009388A0;
  if (!qword_1009388A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009388A0);
  }

  return result;
}

uint64_t sub_100006654(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000668C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100008F38(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100005EF0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000607C(v11);
  return v7;
}

uint64_t sub_100006758()
{
  v1 = (*(*(sub_1000F5104(&qword_100939980, &unk_10079ADA0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v3 = &v27 - v2;
  v4 = type metadata accessor for NSNotificationCenter.Publisher();
  v41 = *(v4 - 8);
  v5 = *(v41 + 64);
  __chkstk_darwin();
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F5104(&unk_100936ED0, &unk_100791AF0);
  v33 = *(v8 - 8);
  v9 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = &v27 - v10;
  v12 = [objc_opt_self() defaultCenter];
  if (qword_1009362C8 != -1)
  {
    swift_once();
  }

  NSNotificationCenter.publisher(for:object:)();
  v42 = *(v0 + OBJC_IVAR____TtC7remindd18RDClientConnection_notificationSubscriptionQueue);
  v13 = v42;
  v14 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v40 = v12;
  v15 = *(v14 - 8);
  v38 = *(v15 + 56);
  v39 = v14;
  v37 = v15 + 56;
  v38(v3, 1, 1);
  v16 = sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
  v17 = sub_100006C4C();
  v18 = sub_100006CA4();
  v35 = v13;
  v36 = v16;
  v34 = v17;
  v32 = v18;
  Publisher.receive<A>(on:options:)();
  sub_1000050A4(v3, &qword_100939980, &unk_10079ADA0);
  v19 = *(v41 + 8);
  v41 += 8;
  v30 = v19;
  v19(v7, v4);
  v20 = type metadata accessor for RDClientConnection();
  v21 = sub_100006D0C();
  v31 = v20;
  v29 = v21;
  Publisher.sink<A>(weakTarget:receiveValue:receiveCompletion:)();
  v28 = v4;
  v33 = *(v33 + 8);
  (v33)(v11, v8);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  if (qword_1009362D0 != -1)
  {
    swift_once();
  }

  v22 = v40;
  NSNotificationCenter.publisher(for:object:)();
  v23 = v35;
  v42 = v35;
  (v38)(v3, 1, 1, v39);
  v24 = v7;
  v25 = v28;
  Publisher.receive<A>(on:options:)();
  sub_1000050A4(v3, &qword_100939980, &unk_10079ADA0);

  v30(v24, v25);
  Publisher.sink<A>(weakTarget:receiveValue:receiveCompletion:)();
  (v33)(v11, v8);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

unint64_t sub_100006C4C()
{
  result = qword_100936F00;
  if (!qword_100936F00)
  {
    type metadata accessor for NSNotificationCenter.Publisher();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100936F00);
  }

  return result;
}

unint64_t sub_100006CA4()
{
  result = qword_10093CD40;
  if (!qword_10093CD40)
  {
    sub_1000060C8(255, &qword_10093E6E0, OS_dispatch_queue_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093CD40);
  }

  return result;
}

unint64_t sub_100006D0C()
{
  result = qword_100936F10;
  if (!qword_100936F10)
  {
    sub_1000F514C(&unk_100936ED0, &unk_100791AF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100936F10);
  }

  return result;
}

uint64_t sub_100006D70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006D80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006D90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006DA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006DB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006DC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006DD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006DE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006DF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006E00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006E10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006E20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006E30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006E40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006E50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006E60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006E70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006E80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006E90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006EA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006EB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006EC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006ED0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006EE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006EF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006F00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006F10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006F20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006F30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006F40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006F50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006F60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006F70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006F80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006F90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006FA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006FB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006FC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006FD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006FE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006FF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007000(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007020(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007030(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007040(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007050(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007060(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007070(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007080(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007090(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000070A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000070B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000070C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000070D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000070E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000070F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007100(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007110(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007120(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007130(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007140(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007150(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007160(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007170(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007180(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007190(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000071A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000071B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000071C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000071D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000071E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000071F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007200(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007210(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007220(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007230(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007240(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007250(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007260(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007270(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007290(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000072A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000072B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000072C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000072E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t a1, uint64_t a2, void *a3), void *a6, uint64_t a7, unint64_t a8, char a9, uint64_t a10, uint64_t a11)
{
  v16 = objc_opt_self();
  v17 = String._bridgeToObjectiveC()();
  v30 = [v16 applicationWithBundleIdentifier:v17];

  if (qword_100936840 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100006654(v18, qword_1009519C0);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v21 = 136446466;
    *(v21 + 4) = sub_10000668C(a7, a8, &aBlock);
    *(v21 + 12) = 2082;
    if (a9)
    {
      v22 = 4408148;
    }

    else
    {
      v22 = 0xD000000000000013;
    }

    if (a9)
    {
      v23 = 0xE300000000000000;
    }

    else
    {
      v23 = 0x80000001008007B0;
    }

    v24 = sub_10000668C(v22, v23, &aBlock);

    *(v21 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v19, v20, "RDSystemAppProtectionGuard: initiate auth {processDescription: %{public}s, accessGrantReason: %{public}s}", v21, 0x16u);
    swift_arrayDestroy();
  }

  if (a9)
  {
    v25 = 1;
  }

  else
  {
    v25 = 2;
  }

  v29 = v25;
  v26 = [objc_opt_self() sharedGuard];
  v27 = swift_allocObject();
  *(v27 + 16) = a10;
  *(v27 + 24) = a11;
  v36 = sub_100007A00;
  v37 = v27;
  aBlock = _NSConcreteStackBlock;
  v33 = 1107296256;
  v34 = sub_100007688;
  v35 = &unk_1008FE3E0;
  v28 = _Block_copy(&aBlock);

  aBlock = a3;
  v33 = a4;
  v34 = a5;
  v35 = a6;
  [v26 initiateAuthenticationWithShieldingForSubject:v30 onBehalfOfProcessWithAuditToken:&aBlock accessGrantReason:v29 completion:v28];

  _Block_release(v28);
}

uint64_t sub_100007640()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100007688(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_100007700(char a1, uint64_t a2, uint64_t (*a3)(void, uint64_t))
{
  if (a2)
  {
    swift_getErrorValue();
    v6 = Error.rem_errorDescription.getter();
    v8 = v7;
    goto LABEL_9;
  }

  v6 = 7104878;
  if ((a1 & 1) == 0)
  {
    v8 = 0xE300000000000000;
LABEL_9:
    if (qword_100936840 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100006654(v15, qword_1009519C0);

    v10 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v21 = v18;
      *v17 = 67240450;
      *(v17 + 4) = a1 & 1;
      *(v17 + 8) = 2082;
      v19 = sub_10000668C(v6, v8, &v21);

      *(v17 + 10) = v19;
      _os_log_impl(&_mh_execute_header, v10, v16, "RDSystemAppProtectionGuard: initiate auth finished {success: %{BOOL,public}d, error: %{public}s}", v17, 0x12u);
      sub_10000607C(v18);

      goto LABEL_13;
    }

LABEL_14:

    goto LABEL_15;
  }

  if (qword_100936840 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100006654(v9, qword_1009519C0);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v10, v11))
  {
    goto LABEL_14;
  }

  v12 = swift_slowAlloc();
  v13 = swift_slowAlloc();
  v21 = v13;
  *v12 = 67240450;
  *(v12 + 4) = 1;
  *(v12 + 8) = 2082;
  v14 = sub_10000668C(7104878, 0xE300000000000000, &v21);

  *(v12 + 10) = v14;
  _os_log_impl(&_mh_execute_header, v10, v11, "RDSystemAppProtectionGuard: initiate auth finished {success: %{BOOL,public}d, error: %{public}s}", v12, 0x12u);
  sub_10000607C(v13);

LABEL_13:

LABEL_15:

  return a3(a1 & 1, a2);
}

char *sub_100007A08(uint64_t a1, unint64_t a2)
{
  v4 = sub_100009664(a1, a2);
  sub_100008C44(&off_1008DC8A8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

void sub_100007A54()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100007AB0();
  }
}

id sub_100007AB0()
{
  if (qword_1009362C0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_100949BB0);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v5 = 136446210;
    v7 = *&v2[OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity + 16];
    v21 = *&v2[OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity];
    *v22 = v7;
    *&v22[14] = *&v2[OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity + 30];
    sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
    v8 = swift_allocObject();
    v9 = v8;
    *(v8 + 16) = xmmword_100791340;
    if (((*&v22[28] << 32) & 0xC10000000000) == 0x810000000000)
    {
      v10 = 0xD000000000000011;
    }

    else
    {
      v10 = 0;
    }

    if (((*&v22[28] << 32) & 0xC10000000000) == 0x810000000000)
    {
      v11 = 0x80000001007EECE0;
    }

    else
    {
      v11 = 0xE000000000000000;
    }

    *(v8 + 56) = &type metadata for String;
    v12 = sub_100006600();
    v9[8] = v12;
    v9[4] = v10;
    v9[5] = v11;
    v13 = sub_1000063E8();
    v9[12] = &type metadata for String;
    v9[13] = v12;
    v9[9] = v13;
    v9[10] = v14;
    v15 = String.init(format:_:)();
    v17 = sub_10000668C(v15, v16, &v20);

    *(v5 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v3, v4, "RDClientConnection: resuming XPC connection {clientIdentity: %{public}s}", v5, 0xCu);
    sub_10000607C(v6);
  }

  v18 = *&v2[OBJC_IVAR____TtC7remindd18RDClientConnection_xpcConnection];

  return [v18 resume];
}

uint64_t sub_100007CF0(int a1)
{
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(type metadata accessor for OS_dispatch_queue.Attributes() - 8) + 64);
  __chkstk_darwin();
  v8 = *(*(type metadata accessor for DispatchQoS() - 8) + 64);
  __chkstk_darwin();
  v11 = sub_100007F54();
  v13 = 0;
  v14 = 0xE000000000000000;
  _StringGuts.grow(_:)(27);

  v13 = 0xD000000000000019;
  v14 = 0x80000001007F22E0;
  v12 = a1;
  v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v9);

  static DispatchQoS.unspecified.getter();
  v13 = &_swiftEmptyArrayStorage;
  sub_100008D58();
  sub_1000F5104(&unk_10093FEE0, &qword_100791B00);
  sub_100007FA0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v3 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v2);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

unint64_t sub_100007F54()
{
  result = qword_10093E6E0;
  if (!qword_10093E6E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10093E6E0);
  }

  return result;
}

unint64_t sub_100007FA0()
{
  result = qword_100936EF0;
  if (!qword_100936EF0)
  {
    sub_1000F514C(&unk_10093FEE0, &qword_100791B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100936EF0);
  }

  return result;
}

uint64_t sub_1000081D8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v7 = *(result + 8);
  v8 = *(result + 44) >> 14;
  if (v8 >= 2)
  {
    if (v8 != 2)
    {
      return result;
    }

    v10 = *(result + 16);
    if (!v10)
    {
      v10 = *(result + 32);
      if (!v10)
      {
        v10 = 0xE90000000000003ELL;
        v7 = 0x4E574F4E4B4E553CLL;
        goto LABEL_8;
      }

      v7 = *(result + 24);
    }
  }

  else
  {
    v9._countAndFlagsBits = *result;
    v17[0] = 0x2E64646E696D6572;
    v17[1] = 0xE800000000000000;
    v9._object = v7;
    String.append(_:)(v9);
    v7 = 0x2E64646E696D6572;
    v10 = 0xE800000000000000;
  }

LABEL_8:
  if (qword_100935FC0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100006654(v11, qword_100944F80);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v17[0] = swift_slowAlloc();
    *v14 = 136446466;
    *(v14 + 4) = sub_10000668C(v7, v10, v17);
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_10000668C(a2, a3, v17);
    _os_log_impl(&_mh_execute_header, v12, v13, "LAUNCH EVENT {client: %{public}s, reason: %{public}s}", v14, 0x16u);
    swift_arrayDestroy();
  }

  v17[0] = *(v4 + 16);
  type metadata accessor for UnfairLock();

  Lock.sync<A>(_:)();

  if ((v18 & 1) == 0)
  {
    type metadata accessor for Analytics();
    sub_1000F5104(&unk_100939240, &unk_100798990);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100791340;
    *(inited + 32) = 0x6E6F73616572;
    *(inited + 40) = 0xE600000000000000;
    *(inited + 48) = String._bridgeToObjectiveC()();
    *(inited + 56) = 0x746E65696C63;
    *(inited + 64) = 0xE600000000000000;
    v16 = String._bridgeToObjectiveC()();

    *(inited + 72) = v16;
    sub_10038D880(inited);
    swift_setDeallocating();
    sub_1000F5104(&unk_100939250, &unk_100795D30);
    swift_arrayDestroy();
    static Analytics.postEvent(_:payload:duration:)();
  }
}

uint64_t sub_10000854C(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for RDClientConnection();
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v20 = sub_10037F9C8(v7, result + 1, &qword_10093A810, &unk_100797D70, type metadata accessor for RDClientConnection);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      sub_10001B868(v21 + 1, &qword_10093A810, &unk_100797D70);
    }

    v19 = v8;
    sub_100382EB4(v19, v20);

    *v3 = v20;
    goto LABEL_16;
  }

  type metadata accessor for RDClientConnection();
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v19 = a2;
    sub_1000087D0(v19, v13, isUniquelyReferenced_nonNull_native, &qword_10093A810, &unk_100797D70, type metadata accessor for RDClientConnection, sub_10019AA00);
    *v3 = v25;
LABEL_16:
    *a1 = v19;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v22 = *(*(v6 + 48) + 8 * v13);
  *a1 = v22;
  v23 = v22;
  return 0;
}

void sub_1000087D0(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, void (*a6)(void), void (*a7)(void))
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a6;
    sub_10001B868(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      a7();
      goto LABEL_12;
    }

    v12 = a6;
    sub_10001B37C(v10 + 1, a4, a5);
  }

  v13 = *v7;
  v14 = NSObject._rawHashValue(seed:)(*(*v7 + 40));
  v15 = -1 << *(v13 + 32);
  a2 = v14 & ~v15;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v12(0);
    do
    {
      v17 = *(*(v13 + 48) + 8 * a2);
      v18 = static NSObject.== infix(_:_:)();

      if (v18)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v19 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = a1;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_100008950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity);
  v6 = *(a1 + OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity + 40) | (*(a1 + OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity + 44) << 32);
  if ((v6 & 0xC00000000800) == 0x800000000000)
  {
    v7 = HIDWORD(v6) & 1;
    type metadata accessor for RDSystemAppProtectionGuard();
    v8 = &off_1008FE398;
  }

  else
  {
    type metadata accessor for RDNoOpAppProtectionGuard();
    LODWORD(v7) = 2;
    v8 = &off_1008FE3A8;
  }

  swift_allocObject();
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  [*(a1 + OBJC_IVAR____TtC7remindd18RDClientConnection_xpcConnection) auditToken];
  v27 = v33;
  v28 = v31;
  v25 = v36;
  v26 = v34;
  v32 = *v5;
  v35 = v5[1];
  v37 = *(v5 + 30);
  sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
  v11 = swift_allocObject();
  v12 = v11;
  *(v11 + 16) = xmmword_100791340;
  if (((HIWORD(v37) << 32) & 0xC10000000000) == 0x810000000000)
  {
    v13 = 0xD000000000000011;
  }

  else
  {
    v13 = 0;
  }

  if (((HIWORD(v37) << 32) & 0xC10000000000) == 0x810000000000)
  {
    v14 = 0x80000001007EECE0;
  }

  else
  {
    v14 = 0xE000000000000000;
  }

  *(v11 + 56) = &type metadata for String;
  v15 = sub_100006600();
  v12[8] = v15;
  v12[4] = v13;
  v12[5] = v14;
  v16 = sub_1000063E8();
  v12[12] = &type metadata for String;
  v12[13] = v15;
  v12[9] = v16;
  v12[10] = v17;
  v18 = String.init(format:_:)();
  v20 = v19;
  v21 = (v7 == 2) | v7;
  swift_getObjectType();
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = a3;
  v23 = v8[1];

  v23(v29, v10, v28, v27, v26, v25, v18, v20, v21 & 1, sub_100008D30, v22);
  swift_unknownObjectRelease();
}

uint64_t sub_100008BCC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100008C44(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_100128F20(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100008D30()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_100008D58()
{
  result = qword_100936EE0;
  if (!qword_100936EE0)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100936EE0);
  }

  return result;
}

uint64_t sub_100008DB0(void *a1, int a2, int a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = _Block_copy(aBlock);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  v15 = a1;
  a7(v11, v13, a6, v14);
}

unint64_t sub_100008E70()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 44) >> 14;
  if (v2 >= 2)
  {
    if (v2 == 2)
    {
      v5 = *(v0 + 16);
    }

    else
    {
      return 0xD000000000000010;
    }
  }

  else
  {
    v3 = *v0;
    _StringGuts.grow(_:)(20);

    v4._countAndFlagsBits = v3;
    v4._object = v1;
    String.append(_:)(v4);
    return 0xD000000000000012;
  }

  return v1;
}

unint64_t sub_100008F38(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100007A08(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100009664(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100009794(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100009794(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void *sub_100009794(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_1000F5104(&unk_1009388C0, &unk_1007A1760);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_100009808@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = &a1[OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity];
  v6 = *&a1[OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity + 44] >> 14;
  if (v6 >= 2)
  {
    if (v6 == 2)
    {
      v7 = *(v5 + 10);
    }

    else
    {
      v7 = 0x7FFFFFFF;
    }
  }

  else
  {
    v7 = 2147483519;
  }

  result = sub_100009A40(8, v7);
  if (!v2)
  {
    if (qword_1009362C0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100006654(v9, qword_100949BB0);
    v10 = a1;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v24 = a2;
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v27 = v14;
      *v13 = 136315138;
      v15 = [v10 description];
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v19 = sub_10000668C(v16, v18, &v27);

      *(v13 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v11, v12, "RDClientConnection: returning sync interface performer from %s", v13, 0xCu);
      sub_10000607C(v14);

      a2 = v24;
    }

    v20 = *&v10[OBJC_IVAR____TtC7remindd18RDClientConnection_xpcDaemon];
    v21 = *&v10[OBJC_IVAR____TtC7remindd18RDClientConnection_xpcDaemon + 8];
    ObjectType = swift_getObjectType();
    v23 = *(v5 + 1);
    v25 = *v5;
    v26[0] = v23;
    *(v26 + 14) = *(v5 + 30);
    result = (*(v21 + 32))(&v25, v10, ObjectType, v21);
    *a2 = result;
  }

  return result;
}

uint64_t sub_100009A40(uint64_t result, int a2)
{
  if ((result & ~a2) != 0)
  {
    v2 = a2;
    v3 = result;
    if (qword_1009367A0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100006654(v4, qword_100950D98);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v7 = 136446466;
      v8 = sub_100729CB0(v3);
      v10 = sub_10000668C(v8, v9, &v18);

      *(v7 + 4) = v10;
      *(v7 + 12) = 2082;
      v11 = sub_100729CB0(v2);
      v13 = sub_10000668C(v11, v12, &v18);

      *(v7 + 14) = v13;
      _os_log_impl(&_mh_execute_header, v5, v6, "Operation denied {requestedAccessLevel: %{public}s, currentAccesslevel: %{public}s}", v7, 0x16u);
      swift_arrayDestroy();
    }

    v14 = objc_opt_self();
    if ((v3 & 0x200) != 0)
    {
      v17 = String._bridgeToObjectiveC()();
      [v14 unauthorizedErrorWithMissingEntitlement:v17];
    }

    else
    {
      v15 = String._bridgeToObjectiveC()();
      sub_100729CB0(v3);
      v16 = String._bridgeToObjectiveC()();

      sub_100729CB0(v2);
      v17 = String._bridgeToObjectiveC()();

      [v14 unauthorizedErrorWithMissingEntitlement:v15 requestedAccessLevel:v16 currentAccesslevel:v17];
    }

    return swift_willThrow();
  }

  return result;
}

id sub_100009CCC(_OWORD *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC7remindd11RDXPCDaemon_syncInterfacePerformerFactory);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = a1[1];
  *(v5 + 24) = *a1;
  *(v5 + 40) = v6;
  *(v5 + 54) = *(a1 + 30);
  sub_100009DAC(a1, &v9);
  v7 = sub_100009E08(sub_10000F13C, v5, a1);

  return v7;
}

id sub_100009E08(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v7 = v3[2];
  v6 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v11 = v3[6];
  v10 = v3[7];
  v21 = type metadata accessor for RDXPCSyncInterfacePerformer();
  v12 = objc_allocWithZone(v21);
  swift_unknownObjectWeakInit();
  *&v12[OBJC_IVAR____TtC7remindd27RDXPCSyncInterfacePerformer_queue] = v7;
  *&v12[OBJC_IVAR____TtC7remindd27RDXPCSyncInterfacePerformer_storeController] = v6;
  *&v12[OBJC_IVAR____TtC7remindd27RDXPCSyncInterfacePerformer_cloudKitThrottler] = v9;
  *&v12[OBJC_IVAR____TtC7remindd27RDXPCSyncInterfacePerformer_discretionaryCloudKitThrottler] = v8;
  *&v12[OBJC_IVAR____TtC7remindd27RDXPCSyncInterfacePerformer_dataAccessThrottler] = v11;
  *&v12[OBJC_IVAR____TtC7remindd27RDXPCSyncInterfacePerformer_dataAccessRequestsWriter] = v10;
  v13 = &v12[OBJC_IVAR____TtC7remindd27RDXPCSyncInterfacePerformer_storeProvider];
  *v13 = a1;
  *(v13 + 1) = a2;
  v14 = &v12[OBJC_IVAR____TtC7remindd27RDXPCSyncInterfacePerformer_clientIdentity];
  v15 = *(a3 + 30);
  v16 = a3[1];
  *v14 = *a3;
  *(v14 + 1) = v16;
  *(v14 + 30) = v15;
  swift_unknownObjectWeakAssign();
  v17 = v7;
  v18 = v6;

  sub_100009DAC(a3, v23);
  v22.receiver = v12;
  v22.super_class = v21;
  return objc_msgSendSuper2(&v22, "init");
}

id sub_100009F5C(_OWORD *a1, void *a2)
{
  v5 = type metadata accessor for UnfairLock.Options();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v55 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v8 = *(v2 + OBJC_IVAR____TtC7remindd11RDXPCDaemon_debugPerformer);
    v9 = a2;
    v10 = sub_1003E470C(v9, v2, v8);
  }

  else
  {
    v10 = *(v2 + OBJC_IVAR____TtC7remindd11RDXPCDaemon_storeController);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v56 = v10;
  if (!Strong)
  {
    v15 = v10;
    goto LABEL_8;
  }

  v12 = *(Strong + OBJC_IVAR____TtC7remindd8RDDaemon_templateOperationQueue);
  v13 = Strong;

  v14 = v10;

  if (!v12)
  {
LABEL_8:
    v67 = 0;
    memset(v66, 0, sizeof(v66));
    goto LABEL_9;
  }

  sub_10000A87C(v12 + 16, v66);

LABEL_9:
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v18 = a1[1];
  *(v17 + 24) = *a1;
  *(v17 + 16) = v16;
  *(v17 + 40) = v18;
  *(v17 + 54) = *(a1 + 30);
  v19 = *(v2 + OBJC_IVAR____TtC7remindd11RDXPCDaemon_contactInteractionWriter);
  v52 = *(v2 + OBJC_IVAR____TtC7remindd11RDXPCDaemon_dataAccessRequestsWriter);
  v53 = v19;
  sub_10000A87C(v2 + OBJC_IVAR____TtC7remindd11RDXPCDaemon_coreSuggestionsHandler, v64);
  sub_10000C948(v66, v63);
  v20 = v65;
  v21 = sub_10000C9DC(v64, v65);
  v54 = &v49;
  v22 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v21);
  v24 = (&v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24);
  v26 = *v24;
  v27 = type metadata accessor for RDCoreSuggestionsController();
  v61 = v27;
  v62 = &off_1008F0550;
  v60[0] = v26;
  v50 = type metadata accessor for RDXPCStorePerformer();
  v28 = objc_allocWithZone(v50);
  v29 = v61;
  v30 = sub_10000C9DC(v60, v61);
  v51 = &v49;
  v31 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v30);
  v33 = (&v49 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v34 + 16))(v33);
  v35 = *v33;
  v59[3] = v27;
  v59[4] = &off_1008F0550;
  v59[0] = v35;
  *&v28[OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_sharingObserverForAccountID] = &_swiftEmptyDictionarySingleton;
  v36 = OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_shareRecordIDToRootRecordID;
  sub_100009DAC(a1, v58);
  *&v28[v36] = sub_10000A8E0(_swiftEmptyArrayStorage);
  v37 = OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_shareRecordIDToRootRecordIDLock;
  v58[0] = _swiftEmptyArrayStorage;
  sub_10000D458(&qword_100936E60, &type metadata accessor for UnfairLock.Options);
  sub_1000F5104(&qword_100936E68, &unk_100791AB0);
  sub_10000CB90(&qword_100936E70, &qword_100936E68, &unk_100791AB0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v38 = type metadata accessor for UnfairLock();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  *&v28[v37] = UnfairLock.init(options:)();
  v41 = v56;
  *&v28[OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_storeController] = v56;
  v42 = &v28[OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity];
  v43 = *(a1 + 30);
  v44 = a1[1];
  *v42 = *a1;
  *(v42 + 1) = v44;
  *(v42 + 30) = v43;
  v45 = &v28[OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_storeProvider];
  *v45 = sub_100018000;
  v45[1] = v17;
  v46 = v53;
  *&v28[OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_dataAccessRequestsWriter] = v52;
  *&v28[OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_contactInteractionWriter] = v46;
  sub_10000A87C(v59, &v28[OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_coreSuggestionsHandler]);
  sub_10000C948(v63, &v28[OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_publicCloudDatabaseController]);
  sub_100009DAC(a1, v58);
  v57.receiver = v28;
  v57.super_class = v50;

  v47 = objc_msgSendSuper2(&v57, "init");

  sub_10000CBE4(v63);
  sub_10000CBE4(v66);
  sub_10000607C(v59);
  sub_10000607C(v60);
  sub_10000607C(v64);
  return v47;
}

uint64_t sub_10000A4DC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t initializeWithCopy for RDClientIdentity(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 44);
  v9 = *(a2 + 40);
  sub_10000C71C(*a2, v4, v5, v6, v7, v9 | (v8 << 32));
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 44) = v8;
  *(a1 + 40) = v9;
  return a1;
}

uint64_t sub_10000A83C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000A87C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000AA28()
{
  v1 = *(v0 + OBJC_IVAR____TtC7remindd18RDClientConnection_xpcConnection);
  aBlock[4] = sub_1004BE8A8;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10056A480;
  aBlock[3] = &unk_1008F4438;
  v2 = _Block_copy(aBlock);
  v3 = [v1 remoteObjectProxyWithErrorHandler:v2];
  _Block_release(v2);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_1000F5104(&qword_100949CF0, qword_1007AE108);
  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_10000AB38()
{
  result = qword_100936E90;
  if (!qword_100936E90)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100936E90);
  }

  return result;
}

unint64_t sub_10000AB90()
{
  result = qword_100936EA0;
  if (!qword_100936EA0)
  {
    sub_1000F514C(&unk_100939E50, &unk_100791AD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100936EA0);
  }

  return result;
}

void sub_10000ABF4(void *a1@<X1>, uint64_t a2@<X2>, char *a3@<X3>, void *a4@<X4>, uint64_t a5@<X8>)
{
  v187 = a4;
  v179 = a2;
  v160 = a5;
  v162 = type metadata accessor for REMAccountsListDataView.Diff();
  v161 = *(v162 - 8);
  v7 = *(v161 + 64);
  v8 = __chkstk_darwin(v162);
  v159 = &v153 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v169 = &v153 - v10;
  v168 = type metadata accessor for REMAccountsListDataView.Model();
  v167 = *(v168 - 8);
  v11 = *(v167 + 64);
  v12 = __chkstk_darwin(v168);
  v166 = &v153 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v170 = &v153 - v14;
  v164 = type metadata accessor for REMHashtagLabelDataView.HashtagLabelsReferencedByCustomSmartListFiltersInvocation.Result();
  v163 = *(v164 - 8);
  v15 = *(v163 + 64);
  __chkstk_darwin(v164);
  v171 = &v153 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  Style = type metadata accessor for REMHashtagLabelDataView.HashtagLabelInFilterFetchStyle();
  v173 = *(Style - 8);
  v17 = *(v173 + 64);
  __chkstk_darwin(Style);
  v172 = &v153 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000F5104(&qword_100948B80, &qword_1007ACB90);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v183 = &v153 - v21;
  v22 = type metadata accessor for REMAccountsListDataView.ReminderCounts();
  v180 = *(v22 - 8);
  v181 = v22;
  v23 = *(v180 + 64);
  v24 = __chkstk_darwin(v22);
  v165 = &v153 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v178 = &v153 - v27;
  __chkstk_darwin(v26);
  v175 = &v153 - v28;
  v29 = type metadata accessor for REMAccountsListDataView.CachablePropertyFetchStyle();
  v30 = *(v29 - 8);
  v184 = v29;
  v185 = v30;
  v31 = *(v30 + 64);
  v32 = __chkstk_darwin(v29);
  v176 = &v153 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v182 = &v153 - v34;
  v35 = sub_1000F5104(&qword_100948B88, &unk_1007ACB98);
  v36 = *(*(v35 - 8) + 64);
  v37 = __chkstk_darwin(v35 - 8);
  v39 = &v153 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v37);
  v42 = &v153 - v41;
  __chkstk_darwin(v40);
  v44 = &v153 - v43;
  v45 = type metadata accessor for REMAccountsListDataView.Model.Account();
  v46 = *(v45 - 8);
  v47 = v46[8];
  __chkstk_darwin(v45);
  v49 = &v153 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v191;
  v51 = sub_10000EAF8(a1, a3);
  if (!v50)
  {
    v190 = v46;
    v156 = v42;
    v154 = v39;
    v155 = a3;
    v191 = a1;
    v158 = v44;
    v177 = 0;
    v193 = v51;
    v52 = v51;
    v53 = REMAccountsListDataView.FetchOptions.fetchAccounts.getter();
    v157 = v52;
    if (v53)
    {
      v192 = _swiftEmptyArrayStorage;
      v54 = v52[2];
      if (v54)
      {
        v56 = v190 + 2;
        v55 = v190[2];
        v57 = v52 + ((*(v190 + 80) + 32) & ~*(v190 + 80));
        v189 = v190[9];
        v190 = v55;
        v58 = (v56 - 1);
        v188 = _swiftEmptyArrayStorage;
        do
        {
          v59 = v56;
          (v190)(v49, v57, v45);
          v60 = REMAccountsListDataView.Model.Account.account.getter();
          v61 = [v60 objectID];

          v62 = [v191 persistentStoreOfAccountWithAccountID:v61];
          (*v58)(v49, v45);
          if (v62)
          {
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v192 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v192 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v63 = *((v192 & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v188 = v192;
          }

          v57 += v189;
          --v54;
          v56 = v59;
        }

        while (v54);
      }

      else
      {
        v188 = _swiftEmptyArrayStorage;
      }

      v67 = [objc_opt_self() localInternalAccountID];
      v65 = v191;
      v68 = [v191 persistentStoreOfAccountWithAccountID:v67];

      v66 = v185;
      if (v68)
      {
        sub_1000F5104(&unk_100939D60, &unk_1007959E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1007953F0;
        *(inited + 32) = v68;
        v192 = v188;

        sub_100012884(inited);
        v64 = v192;
      }

      else
      {
        v64 = v188;
      }
    }

    else
    {
      v64 = 0;
      v188 = 0;
      v65 = v191;
      v66 = v185;
    }

    v70 = v182;
    v71 = v183;
    v189 = objc_opt_self();
    v72 = [v189 daemonUserDefaults];
    REMAccountsListDataView.FetchOptions.fetchReminderCounts.getter();
    v73 = *(v66 + 88);
    v185 = v66 + 88;
    v190 = v73;
    v74 = (v73)(v70, v184);
    v75 = enum case for REMAccountsListDataView.CachablePropertyFetchStyle.doNotFetch(_:);
    if (v74 == enum case for REMAccountsListDataView.CachablePropertyFetchStyle.doNotFetch(_:))
    {

      v76 = v156;
      (*(v180 + 56))(v156, 1, 1, v181);
      LODWORD(v77) = 0;
      goto LABEL_25;
    }

    if (v74 == enum case for REMAccountsListDataView.CachablePropertyFetchStyle.cachedOrStore(_:))
    {
      sub_1000312B8(&off_1008F37F8, v71);
      v78 = sub_1000F5104(&qword_100948BB0, &qword_1007ACBC0);
      if ((*(*(v78 - 8) + 48))(v71, 1, v78) != 1)
      {

        v84 = *(v71 + *(v78 + 48));
        v86 = v180;
        v85 = v181;
        v87 = v175;
        (*(v180 + 32))(v175, v71, v181);
        v77 = v156;
        (*(v86 + 16))(v156, v87, v85);
        (*(v86 + 56))(v77, 0, 1, v85);
        sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
        v88 = static NSObject.== infix(_:_:)();

        v65 = v191;
        v89 = v85;
        v76 = v77;
        LODWORD(v77) = v88;
        (*(v86 + 8))(v87, v89);
        goto LABEL_25;
      }

      sub_1000050A4(v71, &qword_100948B80, &qword_1007ACB90);
    }

    else if (v74 != enum case for REMAccountsListDataView.CachablePropertyFetchStyle.store(_:))
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      goto LABEL_87;
    }

    v80 = v178;
    v79 = v179;
    v81 = v177;
    sub_10049A7D8(v65, v179, v155, v64, v178);
    v177 = v81;
    if (v81)
    {

      return;
    }

    sub_1004A507C(v79, v72, v80);

    v83 = v180;
    v82 = v181;
    v76 = v156;
    (*(v180 + 32))(v156, v80, v181);
    LODWORD(v77) = 1;
    (*(v83 + 56))(v76, 0, 1, v82);
LABEL_25:
    v90 = v158;
    sub_100031B58(v76, v158, &qword_100948B88, &unk_1007ACB98);
    v91 = v177;
    v92 = sub_100031BC0(v65, 2, 0, v188);
    if (v91)
    {
      sub_1000050A4(v90, &qword_100948B88, &unk_1007ACB98);

      return;
    }

    v93 = v92;

    if (v93 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_30:
        if ((v93 & 0xC000000000000001) != 0)
        {
          v94 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_77;
          }

          v94 = *(v93 + 32);
        }

        v95 = v94;

        sub_1000F5104(&unk_100939D60, &unk_1007959E0);
        v96 = swift_allocObject();
        *(v96 + 16) = xmmword_1007953F0;
        *(v96 + 32) = v95;
        v93 = v95;
        v90 = sub_1000271D0(v96, v155);

        if (!(v90 >> 62))
        {
          if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_35:
            if ((v90 & 0xC000000000000001) != 0)
            {
              v97 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (!*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                goto LABEL_81;
              }

              v97 = *(v90 + 32);
            }

            v98 = v97;

            goto LABEL_41;
          }

          goto LABEL_78;
        }

LABEL_77:
        if (_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_35;
        }

LABEL_78:
      }
    }

    else if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_30;
    }

    v98 = 0;
LABEL_41:
    v99 = REMAccountsListDataView.FetchOptions.fetchHashtagLabels.getter();
    v100 = v176;
    if (v99)
    {
      sub_100012D90();
      v102 = v101;
    }

    else
    {
      v102 = _swiftEmptyArrayStorage;
    }

    REMAccountsListDataView.FetchOptions.fetchSmartListHashtagLabels.getter();
    v103 = (v190)(v100, v184);
    v104 = v154;
    if (v103 == v75)
    {
      v105 = 0;
      v106 = v155;
      goto LABEL_51;
    }

    v190 = v102;
    LODWORD(v183) = v77;
    if (v103 == enum case for REMAccountsListDataView.CachablePropertyFetchStyle.cachedOrStore(_:))
    {
      v107 = &enum case for REMHashtagLabelDataView.HashtagLabelInFilterFetchStyle.cachedOrStore(_:);
      v108 = v179;
      v109 = Style;
      v110 = v173;
LABEL_50:
      v77 = v172;
      (*(v110 + 104))(v172, *v107, v109);
      type metadata accessor for REMHashtagLabelDataView.HashtagLabelsReferencedByCustomSmartListFiltersInvocation();
      v111 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v112 = [v189 daemonUserDefaults];
      v113 = v171;
      sub_100035608(v191, v112, &off_1008F7C98, v108, v77, v171);

      REMHashtagLabelDataView.HashtagLabelsReferencedByCustomSmartListFiltersInvocation.Result.labels.getter();
      v114 = REMHashtagLabelDataView.HashtagLabelsReferencedByCustomSmartListFiltersInvocation.Result.isUpToDate.getter();

      (*(v163 + 8))(v113, v164);
      (*(v110 + 8))(v77, v109);
      v105 = v114;
      v106 = v155;
      v104 = v154;
      LOBYTE(v77) = v183;
      v102 = v190;
LABEL_51:
      v115 = sub_100036A44(v191, v106, v187, &v193);
      v177 = 0;
      v189 = v115;
      if ((REMAccountsListDataView.FetchOptions.fetchUserDefinedVisibilityOfPredefinedSmartLists.getter() & 1) != 0 && (v116 = sub_10003A1B8()) != 0)
      {
        v117 = v116;
        v118 = v177;
        sub_10003A680(v191, v116);
        v177 = v118;
        if (v118)
        {
          sub_1000050A4(v158, &qword_100948B88, &unk_1007ACB98);

          return;
        }

        v190 = v102;
        LODWORD(v188) = v105;
      }

      else
      {
        v190 = v102;
        LODWORD(v188) = v105;
        sub_10003AFEC(_swiftEmptyArrayStorage);
      }

      sub_10003B0D8(v158, v104);
      v119 = v104;
      v120 = v180;
      v121 = *(v180 + 48);
      v122 = v104;
      v123 = v181;
      if (v121(v122, 1, v181) == 1)
      {
        static REMAccountsListDataView.ReminderCounts.zero.getter();
        v124 = v121(v119, 1, v123);
        v125 = v166;
        if (v124 != 1)
        {
          sub_1000050A4(v119, &qword_100948B88, &unk_1007ACB98);
        }
      }

      else
      {
        (*(v120 + 32))(v165, v119, v123);
        v125 = v166;
      }

      v93 = v98;
      REMAccountsListDataView.Model.init(accounts:defaultList:reminderCounts:hashtagLabels:smartListHashtagLabels:userDefinedVisibilityOfPredefinedSmartLists:orderedPinnedLists:)();
      v126 = [v186 fetchResultTokenToDiffAgainst];
      if (v126)
      {
        v127 = v126;
        v128 = v177;
        sub_10003CAE0(v126);
        v177 = v128;
        v129 = v168;
        v130 = v167;
        v131 = v169;
        if (v128)
        {

          (*(v130 + 8))(v170, v129);
LABEL_73:
          sub_1000050A4(v158, &qword_100948B88, &unk_1007ACB98);
          return;
        }

LABEL_66:
        REMAccountsListDataView.Diff.init(updatedAccountObjectIDs:updatedListObjectIDs:)();
        sub_1000F5104(&qword_100948B90, &qword_1007ACBA8);
        v132 = *(sub_1000F5104(&qword_100948B98, &qword_1007ACBB0) - 8);
        v133 = *(v132 + 72);
        v134 = (*(v132 + 80) + 32) & ~*(v132 + 80);
        v135 = swift_allocObject();
        *(v135 + 16) = xmmword_100791340;
        v136 = v135 + v134;
        v187 = v93;
        if (v77)
        {
          v137 = type metadata accessor for REMAccountsListDataView.CachableProperty();
          (*(*(v137 - 8) + 56))(v136, 1, 1, v137);
        }

        else
        {
          v138 = enum case for REMAccountsListDataView.CachableProperty.reminderCounts(_:);
          v139 = type metadata accessor for REMAccountsListDataView.CachableProperty();
          v140 = *(v139 - 8);
          (*(v140 + 104))(v136, v138, v139);
          (*(v140 + 56))(v136, 0, 1, v139);
          v131 = v169;
        }

        v141 = v131;
        if (v188)
        {
          v142 = type metadata accessor for REMAccountsListDataView.CachableProperty();
          (*(*(v142 - 8) + 56))(v136 + v133, 1, 1, v142);
        }

        else
        {
          v143 = enum case for REMAccountsListDataView.CachableProperty.smartListHashtagLabels(_:);
          v144 = type metadata accessor for REMAccountsListDataView.CachableProperty();
          v145 = *(v144 - 8);
          (*(v145 + 104))(v136 + v133, v143, v144);
          (*(v145 + 56))(v136 + v133, 0, 1, v144);
        }

        v192 = v135;
        sub_1000F5104(&qword_100948BA0, &qword_1007ACBB8);
        type metadata accessor for REMAccountsListDataView.CachableProperty();
        sub_10000CB48(&qword_100948BA8, &qword_100948BA0, &qword_1007ACBB8);
        v146 = Sequence.removingNils<A>()();

        sub_10003B148(v146);

        v147 = v167;
        v148 = v125;
        v149 = v170;
        v150 = v168;
        (*(v167 + 16))(v148, v170, v168);
        v151 = v161;
        v152 = v162;
        (*(v161 + 16))(v159, v141, v162);
        REMAccountsListDataView.Invocation.Result.init(model:outdatedProperties:diff:)();

        (*(v151 + 8))(v141, v152);
        (*(v147 + 8))(v149, v150);
        goto LABEL_73;
      }

      v131 = v169;
      if (!(_swiftEmptyArrayStorage >> 62))
      {
        goto LABEL_66;
      }

LABEL_81:
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        sub_1003915C4(_swiftEmptyArrayStorage);
      }

      if (_CocoaArrayWrapper.endIndex.getter())
      {
        sub_1003915C4(_swiftEmptyArrayStorage);
      }

      v131 = v169;
      v125 = v166;
      goto LABEL_66;
    }

    v108 = v179;
    v109 = Style;
    v110 = v173;
    if (v103 == enum case for REMAccountsListDataView.CachablePropertyFetchStyle.store(_:))
    {
      v107 = &enum case for REMHashtagLabelDataView.HashtagLabelInFilterFetchStyle.store(_:);
      goto LABEL_50;
    }

LABEL_87:
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }
}

void sub_10000C2B8(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 24);
  *(v1 + 24) = 1;
  *a1 = v2;
}

uint64_t sub_10000C2CC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v7 = a5;
  v8 = &a1[OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity];
  v9 = *&a1[OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity];
  v10 = *&a1[OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity + 8];
  v11 = *&a1[OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity + 24];
  v67 = *&a1[OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity + 16];
  v12 = *&a1[OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity + 32];
  v13 = *(v8 + 10) | (*(v8 + 22) << 32);
  if (*&a1[OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity + 44] >> 14 > 1u)
  {
    if (*&a1[OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity + 44] >> 14 == 2)
    {
      v15 = *&a1[OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity + 32];
      v16 = v9;
      v17 = v9;
      v12 = a3;
      v48 = a4;
      sub_10000C71C(v16, v10, v67, v11, v15, v13);

      LODWORD(v53[0]) = v17;
      v53[1] = v10;
      v53[2] = v67;
      v53[3] = a2;
      v53[4] = v12;
      v54 = v13;
      LOBYTE(v55) = BYTE4(v13) & 1;
      HIBYTE(v55) = BYTE5(v13) & 1;
      v19 = v53[0];
      v42 = (v13 | (v55 << 32)) & 0x101FFFFFFFFLL | 0xFFFF800000000000;
      LODWORD(v56) = v17;
      v7 = a5;
      v57 = v10;
      v58 = v67;
      v59 = a2;
      v60 = v12;
      v61 = v13;
      v62 = BYTE4(v13) & 1;
      v63 = BYTE5(v13) & 1;
      sub_10000C774(v53, v52);
      sub_10000C8D4(&v56);
      a4 = v48;
      v11 = a2;
      v9 = v19;
      v13 = v42;
    }
  }

  else
  {
    v14 = a4;

    a4 = v14;
  }

  v64[0] = v9;
  v64[1] = v10;
  v64[2] = v67;
  v64[3] = v11;
  v20 = v12;
  v64[4] = v12;
  v65 = v13;
  v66 = WORD2(v13);
  if (qword_100935FC8 != -1)
  {
    v41 = a4;
    swift_once();
    a4 = v41;
  }

  v56 = 0x2E65726F7473;
  v57 = 0xE600000000000000;
  v21._countAndFlagsBits = a4;
  v21._object = v7;
  String.append(_:)(v21);
  sub_1000081D8(v64, v56, v57);

  v22 = *(v8 + 22) >> 14;
  if (v22 >= 2)
  {
    v24 = v20;
    if (v22 == 3)
    {
      v23 = 0x7FFFFFFF;
    }

    else
    {
      v23 = *(v8 + 10);
    }
  }

  else
  {
    v23 = 2147483519;
    v24 = v20;
  }

  sub_100009A40(1, v23);
  if (v49)
  {
    return sub_10000CC4C(v9, v10, v67, v11, v24, v13);
  }

  if (qword_1009362C0 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_100006654(v26, qword_100949BB0);
  v27 = a1;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();

  v50 = v29;
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v56 = v43;
    *v30 = 136315138;
    v45 = v27;
    v31 = [v27 description];
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    v35 = v32;
    v24 = v20;
    v36 = sub_10000668C(v35, v34, &v56);

    *(v30 + 4) = v36;
    v27 = v45;
    _os_log_impl(&_mh_execute_header, v28, v50, "RDClientConnection: returning storePerformer from %s", v30, 0xCu);
    sub_10000607C(v43);
  }

  v38 = *&v27[OBJC_IVAR____TtC7remindd18RDClientConnection_xpcDaemon];
  v37 = *&v27[OBJC_IVAR____TtC7remindd18RDClientConnection_xpcDaemon + 8];
  ObjectType = swift_getObjectType();
  v40 = (*(v37 + 24))(v64, a6, ObjectType, v37);
  result = sub_10000CC4C(v9, v10, v67, v11, v24, v13);
  *a7 = v40;
  return result;
}

uint64_t sub_10000C71C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = (a6 >> 46) & 3;
  if (v7 >= 2)
  {
    if (v7 == 3)
    {
      return result;
    }
  }
}

uint64_t initializeWithCopy for RDClientIdentity.XPCClientIdentity(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;
  v4 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v4;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);

  return a1;
}

uint64_t destroy for RDSavedHashtag(uint64_t a1)
{
  v2 = *(a1 + 16);

  v3 = *(a1 + 32);
}

void sub_10000C864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_10000C948(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_100945EF8, &qword_1007B1F70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000C9DC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t sub_10000CA50(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(id))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_1000F5104(a2, a3);
    v7 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *i;
      v10 = *(i - 1);
      v11 = v9;
      result = a4(v10);
      if (v13)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v10;
      *(v7[7] + 8 * result) = v11;
      v14 = v7[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v7[2] = v16;
      if (!--v4)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10000CB48(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000F514C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000CB90(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000F514C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000CBE4(uint64_t a1)
{
  v2 = sub_1000F5104(&qword_100945EF8, &qword_1007B1F70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000CC4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = (a6 >> 46) & 3;
  if (v7 >= 2)
  {
    if (v7 == 3)
    {
      return result;
    }
  }
}

uint64_t sub_10000CCAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(uint64_t, id))
{
  sub_10000C2CC(v6, a1, a2, a4, a5, a3, &v13);
  if (v13)
  {
    v9 = swift_unknownObjectRetain();
    a6(v9, 0);
    return swift_unknownObjectRelease_n();
  }

  else
  {
    v10 = objc_opt_self();
    v11 = String._bridgeToObjectiveC()();
    v12 = [v10 xpcPerformerUnavailableErrorWithDescription:v11];

    swift_willThrow();
    swift_errorRetain();
    a6(0, v12);
  }
}

uint64_t sub_10000CDE4(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000060C8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000CE28(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000060C8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000CE78(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v39 = a5;
  *&v41[8] = sub_1000060C8(0, &qword_10094C9D0, REMStoreSwiftInvocation_ptr);
  *&v40 = a1;
  sub_1000F5104(&qword_10094C9D8, &qword_1007B1FA8);
  v15 = a1;
  throwingCast<A>(_:as:failureMessage:)();
  v16 = sub_10000607C(&v40);
  v17 = *(a6 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_storeProvider + 8);
  v18 = (*(a6 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_storeProvider))(v16);
  v33 = &v33;
  v37 = 0;
  v19 = *(a6 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_storeController);
  v20 = *(a6 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 16);
  v40 = *(a6 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity);
  *v41 = v20;
  *&v41[14] = *(a6 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 30);
  v32[2] = &v37;
  v32[3] = v38;
  v32[4] = &v39;
  v32[5] = __chkstk_darwin(v18);
  v32[6] = a2;
  v32[7] = a3;
  v32[8] = a4;
  sub_10001803C(&v40, a8, v32, &v34);
  v21 = v34;
  v22 = v35;
  v23 = v36;
  sub_100029344(v34, v35);
  sub_10003B59C(v23);

  v24 = v37;
  v25 = objc_allocWithZone(REMStoreSwiftInvocationResult);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v27 = Dictionary._bridgeToObjectiveC()().super.isa;

  v28 = [v25 initWithResultData:isa storages:v27 latestFetchResultToken:v24];

  sub_10001BBA0(v21, v22);
  v29 = *(a7 + 16);
  v30 = v28;
  v29(a7, v30, 0);

  sub_10001BBA0(v21, v22);
  return sub_10000607C(v38);
}

uint64_t sub_10000D338(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000D380(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000D3C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000D410(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000D458(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000D4A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000D528(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for CodingUserInfoKey();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_1000F5104(&qword_100943D48, &qword_1007A4520);
  v43 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v11 + 16))
  {
    v46 = v10;
    v47 = v6;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    v42 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v45 = *(v7 + 72);
      v28 = v27 + v45 * v26;
      if (v43)
      {
        (*v44)(v46, v28, v47);
        sub_100005EE0((*(v11 + 56) + 32 * v26), v48);
      }

      else
      {
        (*v40)(v46, v28, v47);
        sub_100005EF0(*(v11 + 56) + 32 * v26, v48);
      }

      v29 = *(v14 + 40);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v7 = v41;
        v11 = v42;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v7 = v41;
      v11 = v42;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v44)((*(v14 + 48) + v45 * v22), v46, v47);
      result = sub_100005EE0(v48, (*(v14 + 56) + 32 * v22));
      ++*(v14 + 16);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_10000D980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(void))
{
  v12 = *v10;
  result = a10();
  if (v11)
  {
    return v14;
  }

  return result;
}

NSObject *sub_10000D9BC(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v68 = a6;
  v67 = a5;
  v62 = a3;
  v61 = a2;
  v64 = a1;
  v60 = type metadata accessor for REMAccountsListDataView.Invocation.Result();
  v59 = *(v60 - 8);
  v10 = *(v59 + 64);
  __chkstk_darwin(v60);
  v63 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Options = type metadata accessor for REMAccountsListDataView.FetchOptions();
  v12 = *(Options - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(Options);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v65 = &v58 - v17;
  v18 = type metadata accessor for CodingUserInfoKey();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for PropertyListDecoder();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v72 = PropertyListDecoder.init()();
  v66 = v7;
  if (!a7)
  {
    sub_10003B2E4(_swiftEmptyArrayStorage);
  }

  v25 = type metadata accessor for REMStoreObjectsContainer();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();

  v28 = a4;
  v29 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v76 = v25;
  v75[0] = v29;
  v70 = v29;

  v30 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(v75, v21);
  v30(v74, 0);
  sub_10000F85C(&qword_100950840, &type metadata accessor for REMAccountsListDataView.FetchOptions);
  v31 = Options;
  v32 = v69;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v32)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100006654(v33, qword_100950598);
    swift_errorRetain();
    v34 = v66;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v75[0] = swift_slowAlloc();
      *v37 = 136315394;
      swift_getErrorValue();
      v38 = Error.rem_errorDescription.getter();
      v40 = sub_10000668C(v38, v39, v75);

      *(v37 + 4) = v40;
      *(v37 + 12) = 2080;
      v74[0] = swift_getObjectType();
      sub_1000F5104(&qword_100950848, &qword_1007B67F0);
      v41 = String.init<A>(describing:)();
      v43 = sub_10000668C(v41, v42, v75);

      *(v37 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v35, v36, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v37, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    v44 = v12;
    v45 = *(v12 + 32);
    v46 = v65;
    v45(v65, v16, v31);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    v48 = v73;
    sub_10000ABF4(v61, v62, v28, v46, v63);
    v69 = v48;
    v49 = type metadata accessor for PropertyListEncoder();
    v50 = *(v49 + 48);
    v51 = *(v49 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(_swiftEmptyArrayStorage);
    v52 = *(v25 + 48);
    v53 = *(v25 + 52);
    swift_allocObject();
    v54 = v28;
    v55 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v76 = v25;
    v75[0] = v55;

    v56 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(v75, v21);
    v56(v74, 0);
    sub_10000F85C(&qword_100950850, &type metadata accessor for REMAccountsListDataView.Invocation.Result);
    v57 = v60;
    v35 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v59 + 8))(v63, v57);
    (*(v44 + 8))(v65, v31);
  }

  return v35;
}

uint64_t sub_10000E350(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_100005EE0(a1, v10);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    sub_10000E46C(v10, a2, isUniquelyReferenced_nonNull_native);
    v6 = type metadata accessor for CodingUserInfoKey();
    result = (*(*(v6 - 8) + 8))(a2, v6);
    *v2 = v9;
  }

  else
  {
    sub_1000050A4(a1, &qword_100942148, &qword_1007A25C8);
    sub_100369004(a2, v10);
    v8 = type metadata accessor for CodingUserInfoKey();
    (*(*(v8 - 8) + 8))(a2, v8);
    return sub_1000050A4(v10, &qword_100942148, &qword_1007A25C8);
  }

  return result;
}

_OWORD *sub_10000E46C(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for CodingUserInfoKey();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_10000F660(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_100373FC4();
      goto LABEL_7;
    }

    sub_10000D528(v18, a3 & 1);
    v24 = *v4;
    v25 = sub_10000F660(a2);
    if ((v19 & 1) == (v26 & 1))
    {
      v15 = v25;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_10000E644(v15, v12, a1, v21);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = (v21[7] + 32 * v15);
  sub_10000607C(v22);

  return sub_100005EE0(a1, v22);
}

_OWORD *sub_10000E644(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for CodingUserInfoKey();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_100005EE0(a3, (a4[7] + 32 * a1));
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_10000E72C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100791300;

  v8 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v9)
  {
    v10 = v8;
    v11 = v9;

    *(v7 + 56) = &type metadata for String;
    *(v7 + 32) = v10;
    *(v7 + 40) = v11;
    v12 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v14 = [objc_opt_self() predicateWithFormat:v12 argumentArray:isa];

    return v14;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v16._object = 0x80000001007EC120;
    v16._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v16);
    sub_1000F5104(a4, a5);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10000E8EC(uint64_t a1, uint64_t a2)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100791340;

  v4 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v5)
  {
    v6 = v4;
    v7 = v5;

    *(v3 + 56) = &type metadata for String;
    *(v3 + 32) = v6;
    *(v3 + 40) = v7;
    *(v3 + 88) = sub_1000F5104(&unk_100939D90, "8\n\r");
    v8 = sub_1000103CC((v3 + 64));
    sub_100010364(a2, v8, &unk_100939D90, "8\n\r");
    v9 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v11 = [objc_opt_self() predicateWithFormat:v9 argumentArray:isa];

    sub_1000050A4(a2, &unk_100939D90, "8\n\r");
    return v11;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v13._object = 0x80000001007EC120;
    v13._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v13);
    sub_1000F5104(&qword_10093F530, &qword_10079B220);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void *sub_10000EAF8(uint64_t a1, unint64_t a2)
{
  v4 = v3;
  v7 = _swiftEmptyArrayStorage;
  if (REMAccountsListDataView.FetchOptions.fetchAccounts.getter())
  {
    v28 = v2;
    v29 = a1;
    v8 = sub_10000F8A4(6uLL, 0, 7u);
    if (qword_1009360A0 != -1)
    {
      goto LABEL_22;
    }

    while (1)
    {
      sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
      v9 = [objc_allocWithZone(NSFetchRequest) init];
      v10 = [swift_getObjCClassFromMetadata() entity];
      [v9 setEntity:v10];

      [v9 setAffectedStores:0];
      [v9 setPredicate:v8];
      v30 = &_swiftEmptySetSingleton;

      sub_100010864(v11);

      sub_1002137C0(v30);

      isa = Array._bridgeToObjectiveC()().super.isa;

      [v9 setPropertiesToFetch:isa];

      NSManagedObjectContext.fetch<A>(_:)();
      if (v4)
      {
        break;
      }

      v30 = sub_10000EEFC(v13);
      sub_100011170(&v30);

      v8 = v30;
      v14 = sub_100019514(v30, a2);
      v4 = 0;
      v30 = v7;
      v25 = v14;
      v26 = a2;
      if (v8 < 0 || (v8 & 0x4000000000000000) != 0)
      {
        v14 = _CocoaArrayWrapper.endIndex.getter();
        v7 = v14;
      }

      else
      {
        v7 = *(v8 + 16);
      }

      v15 = 0;
      a2 = v8 & 0xC000000000000001;
      v27 = _swiftEmptyArrayStorage;
      while (1)
      {
        if (v7 == v15)
        {
          __chkstk_darwin(v14);
          v24[2] = v28;
          v24[3] = v29;
          v24[4] = v26;
          v24[5] = v27;
          sub_10001BC4C(v8, v25, sub_10001E2A8, v24);
          v7 = v22;

          return v7;
        }

        if (a2)
        {
          v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v15 >= *(v8 + 16))
          {
            goto LABEL_21;
          }

          v16 = *(v8 + 8 * v15 + 32);
        }

        v17 = v16;
        v18 = (v15 + 1);
        if (__OFADD__(v15, 1))
        {
          break;
        }

        v19 = [v16 objectID];
        v20 = [v19 persistentStore];

        ++v15;
        if (v20)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v21 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          v14 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v27 = v30;
          v15 = v18;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      swift_once();
    }
  }

  return v7;
}

void *sub_10000EF34(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

NSString sub_10000EFBC(uint64_t a1, _OWORD *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = type metadata accessor for RDDaemonController();
    v6 = objc_allocWithZone(v5);
    v7 = &v6[OBJC_IVAR____TtC7remindd18RDDaemonController_xpcDaemon];
    *v7 = v4;
    *(v7 + 1) = &off_1008F03B0;
    v8 = &v6[OBJC_IVAR____TtC7remindd18RDDaemonController_clientIdentity];
    v9 = *(a2 + 30);
    v10 = a2[1];
    *v8 = *a2;
    *(v8 + 1) = v10;
    *(v8 + 30) = v9;
    *&v6[OBJC_IVAR____TtC7remindd18RDDaemonController_storeContainerToken] = 0;
    v11 = v4;
    sub_100009DAC(a2, v17);
    v16.receiver = v6;
    v16.super_class = v5;
    v12 = objc_msgSendSuper2(&v16, "init");
    v13 = [objc_allocWithZone(REMStore) initWithDaemonController:v12];
  }

  else
  {
    v14 = objc_opt_self();
    v13 = String._bridgeToObjectiveC()();
    [v14 internalErrorWithDebugDescription:v13];

    swift_willThrow();
  }

  return v13;
}

uint64_t sub_10000F18C@<X0>(void *a1@<X0>, void **a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t (*a11)(uint64_t))
{
  v40[0] = 0;
  v18 = [a1 latestFetchResultTokenWithError:v40];
  v19 = v40[0];
  if (v18)
  {
    v20 = v18;
    v35 = a9;
    v36 = a8;
    v21 = *a2;
    *a2 = v18;
    v22 = v19;
    v23 = v20;

    v24 = a3[3];
    v25 = a3[4];
    sub_10000F61C(a3, v24);
    v40[3] = a11(a10);
    v40[0] = a4;
    v26 = *(v25 + 8);
    v27 = a4;
    v28 = v26(v40, a1, v23, a5, a6, a7, v36, v24, v25);
    v30 = v29;
    v32 = v31;

    result = sub_10000607C(v40);
    if (!v11)
    {
      *v35 = v28;
      v35[1] = v30;
      v35[2] = v32;
    }
  }

  else
  {
    v34 = v40[0];
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }

  return result;
}

void sub_10000F4E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000F500(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) l_accountStoreMap];
  v3 = [v2 objectEnumerator];

  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(*(a1 + 40) + 8) + 40) addObject:*(*(&v8 + 1) + 8 * v7)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

void *sub_10000F61C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_10000F660(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for CodingUserInfoKey();
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_10000F6C4(a1, v5);
}

unint64_t sub_10000F6C4(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v4 = type metadata accessor for CodingUserInfoKey();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v21 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v6 + 16);
    v12 = v6 + 16;
    v13 = v14;
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    do
    {
      v17 = v12;
      v13(v8, *(v23 + 48) + v15 * v10, v4);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v16)(v8, v4);
      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      v12 = v17;
    }

    while (((*(v21 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_10000F85C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000F8A4(unint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v6 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6 - 8);
  v11 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v70 - v13;
  __chkstk_darwin(v12);
  v16 = &v70 - v15;
  v73 = _swiftEmptyArrayStorage;
  if (a3 <= 3u)
  {
    if (a3 <= 1u)
    {
      if (!a3)
      {
        KeyPath = swift_getKeyPath();
        sub_1003FC4C0(a1, a2, 0);
        sub_10039132C(KeyPath, a1, a2);

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (v73[2] >= v73[3] >> 1)
        {
          v68 = v73[2];
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        LODWORD(v7) = 0;
        goto LABEL_50;
      }

      v30 = swift_getKeyPath();
      if (a1 >> 62)
      {
        v31 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v31 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v32 = _swiftEmptyArrayStorage;
      if (!v31)
      {
        goto LABEL_51;
      }

      v70 = v30;
      v71 = v11;
      v72 = _swiftEmptyArrayStorage;
      sub_100253218(0, v31 & ~(v31 >> 63), 0);
      if ((v31 & 0x8000000000000000) == 0)
      {
        v33 = 0;
        v32 = v72;
        do
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v34 = *(a1 + 8 * v33 + 32);
          }

          v35 = v34;
          v36 = [v34 uuid];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v37 = type metadata accessor for UUID();
          (*(*(v37 - 8) + 56))(v16, 0, 1, v37);
          v72 = v32;
          v39 = v32[2];
          v38 = v32[3];
          if (v39 >= v38 >> 1)
          {
            sub_100253218(v38 > 1, v39 + 1, 1);
            v32 = v72;
          }

          ++v33;
          v32[2] = v39 + 1;
          sub_100100FB4(v16, v32 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v39);
        }

        while (v31 != v33);
        v30 = v70;
        v11 = v71;
LABEL_51:
        sub_1003EB804(v30, v32);
        goto LABEL_52;
      }

      goto LABEL_78;
    }

    if (a3 == 2)
    {
      v18 = swift_getKeyPath();
      v19 = sub_100270804(a1);
      sub_1003EB828(v18, v19);
LABEL_52:

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v73[2] >= v73[3] >> 1)
      {
        v67 = v73[2];
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_55:
      LODWORD(v7) = 0;
LABEL_56:
      v49 = 0;
      goto LABEL_57;
    }

    goto LABEL_38;
  }

  if (a3 <= 5u)
  {
    if (a3 != 4)
    {
      sub_1000F5104(&qword_1009463A8, qword_1007A7BC8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100791340;
      v41 = swift_getKeyPath();
      v42 = REMAccountType.asInt16.getter();
      v43 = sub_100391340(v41, v42);

      *(inited + 32) = v43;
      v44 = swift_getKeyPath();
      v45 = REMAccountType.asInt16.getter();
      v46 = sub_100391340(v44, v45);

      *(inited + 40) = v46;
      sub_100025060(inited);
LABEL_39:
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v73[2] >= v73[3] >> 1)
      {
        v66 = v73[2];
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      LODWORD(v7) = 0;
      v49 = a1;
      goto LABEL_57;
    }

LABEL_38:
    v47 = swift_getKeyPath();
    v48 = REMAccountType.asInt16.getter();
    sub_100391340(v47, v48);

    goto LABEL_39;
  }

  if (a3 == 6)
  {
    v20 = swift_getKeyPath();
    if (a1 >> 62)
    {
      v21 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v22 = _swiftEmptyArrayStorage;
    if (v21)
    {
      v70 = v20;
      v71 = v11;
      v72 = _swiftEmptyArrayStorage;
      sub_100253218(0, v21 & ~(v21 >> 63), 0);
      if (v21 < 0)
      {
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_46:
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_50:
        v49 = 1;
        goto LABEL_57;
      }

      v23 = 0;
      v22 = v72;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v24 = *(a1 + 8 * v23 + 32);
        }

        v25 = v24;
        v26 = [v24 uuid];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v27 = type metadata accessor for UUID();
        (*(*(v27 - 8) + 56))(v14, 0, 1, v27);
        v72 = v22;
        v29 = v22[2];
        v28 = v22[3];
        if (v29 >= v28 >> 1)
        {
          sub_100253218(v28 > 1, v29 + 1, 1);
          v22 = v72;
        }

        ++v23;
        v22[2] = v29 + 1;
        sub_100100FB4(v14, v22 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v29);
      }

      while (v21 != v23);
      v20 = v70;
      v11 = v71;
    }

    sub_1003EB804(v20, v22);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (v73[2] >= v73[3] >> 1)
    {
      v69 = v73[2];
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    LODWORD(v7) = 1;
    goto LABEL_50;
  }

  LODWORD(v7) = 1;
  if (a1 > 3)
  {
    v49 = 1;
    if (__PAIR128__((a1 >= 6) + a2 - 1, a1 - 6) >= 2)
    {
      if (!(a1 ^ 4 | a2))
      {
        goto LABEL_56;
      }

      goto LABEL_55;
    }
  }

  else
  {
    if (a1 <= 1)
    {
      v49 = 1;
      if (!(a1 | a2))
      {
        goto LABEL_57;
      }

      v50 = swift_getKeyPath();
      v51 = REMAccountType.asInt16.getter();
      sub_100391340(v50, v51);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v73[2] < v73[3] >> 1)
      {
        goto LABEL_46;
      }

      goto LABEL_79;
    }

    v49 = 1;
    if (!(a1 ^ 2 | a2))
    {
      v60 = swift_getKeyPath();
      _auto_REMAccountTypeForPrimaryCloudKit();
      v61 = REMAccountType.asInt16.getter();
      sub_100391340(v60, v61);
      goto LABEL_52;
    }
  }

LABEL_57:
  sub_10001035C(0);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (v73[2] >= v73[3] >> 1)
  {
    v62 = v73[2];
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  if (v49)
  {
    v52 = swift_getKeyPath();
    sub_10000E704(v52);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (v73[2] >= v73[3] >> 1)
    {
      v64 = v73[2];
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  if (v7)
  {
    v53 = swift_getKeyPath();
    v54 = [objc_opt_self() localInternalAccountID];
    v55 = [v54 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = type metadata accessor for UUID();
    (*(*(v56 - 8) + 56))(v11, 0, 1, v56);
    sub_10000E8EC(v53, v11);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (v73[2] >= v73[3] >> 1)
    {
      v65 = v73[2];
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v57 = swift_getKeyPath();
  v58 = REMAccountType.asInt16.getter();
  sub_10001060C(v57, v58);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (v73[2] >= v73[3] >> 1)
  {
    v63 = v73[2];
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return sub_10000C2B0(v73);
}

uint64_t sub_100010364(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000F5104(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t *sub_1000103CC(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100010430(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100791340;

  v10 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v11)
  {
    v12 = v10;
    v13 = v11;

    *(v9 + 56) = &type metadata for String;
    *(v9 + 32) = v12;
    *(v9 + 40) = v13;
    *(v9 + 88) = &type metadata for Int16;
    *(v9 + 64) = a2;
    v14 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v16 = [objc_opt_self() predicateWithFormat:v14 argumentArray:isa];

    return v16;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v18._object = 0x80000001007EC120;
    v18._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v18);
    sub_1000F5104(a5, a6);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100010634(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = *(result + 16);
  while (1)
  {
    if (v3 == v2)
    {

      sub_1000060C8(0, &unk_100938890, NSPredicate_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v8 = [objc_opt_self() andPredicateWithSubpredicates:isa];

      return v8;
    }

    if (v2 >= *(v1 + 16))
    {
      break;
    }

    v4 = *(v1 + 8 * v2++ + 32);
    if (v4)
    {
      v5 = v4;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v6 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100010770(unint64_t result, void (*a2)(uint64_t *, uint64_t))
{
  v3 = result;
  if (result >> 62)
  {
    goto LABEL_13;
  }

  v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      while ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_11;
        }

LABEL_7:
        a2(&v8, v6);

        ++v5;
        if (v7 == v4)
        {
          return result;
        }
      }

      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v6 = *(v3 + 8 * v5 + 32);

      v7 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_11:
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      result = _CocoaArrayWrapper.endIndex.getter();
      v4 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_10001087C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v6 = v5;
  v7 = *v5;
  if (*(*v5 + 24) > a1)
  {
    v8 = *(*v5 + 24);
  }

  sub_1000F5104(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v30 = v6;
    v11 = 0;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v16 = result + 56;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_17:
      v21 = *(*(v7 + 48) + 8 * (v18 | (v11 << 6)));
      v22 = *(v10 + 40);

      sub_1000F5104(a4, a5);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v23 = -1 << *(v10 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v16 + 8 * v25);
          if (v29 != -1)
          {
            v17 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v10 + 48) + 8 * v17) = v21;
      ++*(v10 + 16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v15)
      {

        v6 = v30;
        goto LABEL_28;
      }

      v20 = *(v7 + 56 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v6 = v10;
  }

  return result;
}

uint64_t sub_100010AAC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v6 = v5;
  v7 = *v5;
  if (*(*v5 + 24) > a1)
  {
    v8 = *(*v5 + 24);
  }

  sub_1000F5104(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v32 = v6;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(*(v7 + 48) + 8 * (v19 | (v11 << 6)));
      v23 = *(v10 + 40);
      sub_1000F5104(a4, a5);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v24 = -1 << *(v10 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v17 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v17 + 8 * v26);
          if (v30 != -1)
          {
            v18 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v25) & ~*(v17 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v22;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v31 = 1 << *(v7 + 32);
    if (v31 >= 64)
    {
      bzero((v7 + 56), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v31;
    }

    v6 = v32;
    *(v7 + 16) = 0;
  }

  *v6 = v10;
  return result;
}

char *sub_100010D04(char *a1, int64_t a2, char a3)
{
  result = sub_100010D24(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100010D24(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000F5104(&unk_100938E80, &unk_1007959D0);
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

uint64_t sub_100010E34(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_100010E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (qword_100936738 != -1)
  {
    v13 = v9;
    swift_once();
    v9 = v13;
  }

  sub_10001895C(v9, v11, a4, a5, a6);
}

uint64_t sub_100010EF0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100011110(&unk_10093F510, &qword_10094F630, qword_1007A3430);
          for (i = 0; i != v6; ++i)
          {
            sub_1000F5104(&qword_10094F630, qword_1007A3430);
            v9 = sub_100011090(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_100011090(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return j__s7remindd24RDSavedDueDateDeltaAlertVwxx;
  }

  __break(1u);
  return result;
}

uint64_t sub_100011110(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000F514C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100011170(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_10043653C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1000111EC(v6);
  return specialized ContiguousArray._endMutation()();
}

void sub_1000111EC(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1007524CC(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_100011300(0, v2, 1, a1);
  }
}

void sub_100011300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = v4;
  if (a3 != a2)
  {
    v6 = *a4;
    v7 = *a4 + 8 * a3 - 8;
    v8 = a1 - a3;
    v39 = *a4;
LABEL_6:
    v37 = v7;
    v38 = a3;
    v9 = *(v6 + 8 * a3);
    v36 = v8;
    while (1)
    {
      v10 = *v7;
      v11 = v9;
      v12 = v10;
      v13 = [v11 accountTypeHost];
      REMAccountTypeHost.switchByAccountType<A>(primaryCloudKitBlock:nonPrimaryCloudKitBlock:calDavBlock:exchangeBlock:localBlock:localInternalBlock:anyCloudKitBlock:anyCloudAccountBlock:)();
      v40 = v11;
      if (v5)
      {

        if (qword_100936098 != -1)
        {
          swift_once();
        }

        v14 = type metadata accessor for Logger();
        sub_100006654(v14, qword_100946390);
        v15 = Logger.logObject.getter();
        v16 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          *v17 = 0;
          _os_log_impl(&_mh_execute_header, v15, v16, "Unknown or undefined account type in AccountsListDataView", v17, 2u);
        }

        v5 = 0;
      }

      else
      {

        v18 = v42;
        if (v42 != 4)
        {
          goto LABEL_15;
        }
      }

      v18 = 3;
LABEL_15:
      v19 = v12;
      v20 = [v19 accountTypeHost];
      REMAccountTypeHost.switchByAccountType<A>(primaryCloudKitBlock:nonPrimaryCloudKitBlock:calDavBlock:exchangeBlock:localBlock:localInternalBlock:anyCloudKitBlock:anyCloudAccountBlock:)();

      if (v41 == 4)
      {
        if (v18 < 3)
        {
          goto LABEL_17;
        }

        v21 = v40;
        if (v18 != 3)
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v18 < v41)
        {
LABEL_17:

          goto LABEL_32;
        }

        if (v41 < v18)
        {
LABEL_19:

LABEL_5:
          a3 = v38 + 1;
          v7 = v37 + 8;
          v8 = v36 - 1;
          if (v38 + 1 == a2)
          {
            return;
          }

          goto LABEL_6;
        }

        v21 = v40;
      }

      v22 = [v21 name];
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

      v27 = [v19 name];
      if (v27)
      {
        v28 = v27;
        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v30;

        if (v24 == v29)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v31 = 0xE000000000000000;
        if (!v24)
        {
LABEL_30:
          if (v26 == v31)
          {

            v6 = v39;
            goto LABEL_5;
          }
        }
      }

      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v6 = v39;
      if ((v32 & 1) == 0)
      {
        goto LABEL_5;
      }

LABEL_32:
      if (!v6)
      {
        __break(1u);
        return;
      }

      v33 = *v7;
      v9 = *(v7 + 8);
      *v7 = v9;
      *(v7 + 8) = v33;
      v7 -= 8;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_5;
      }
    }
  }
}

uint64_t sub_10001184C(unint64_t a1, void *a2)
{
  type metadata accessor for REMListStorageCDIngestor();
  swift_initStackObject();
  if (qword_100936518 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  v5 = sub_100006654(v4, qword_10094C3E8);
  v28 = a1;
  __chkstk_darwin(v5);
  sub_1000F5104(&qword_10093F6F0, qword_10079A300);
  sub_1000060C8(0, &unk_10094F0C0, REMListStorage_ptr);
  sub_10000CB48(&qword_100945210, &qword_10093F6F0, qword_10079A300);
  v6 = Sequence.map<A>(skippingError:_:)();
  if (v2)
  {

    v7 = _swiftEmptyArrayStorage;
  }

  else
  {
    v7 = v6;
  }

  v28 = &_swiftEmptyDictionarySingleton;
  v8 = sub_100011D74(_swiftEmptyArrayStorage, a1, &v28);
  v27 = &_swiftEmptyDictionarySingleton;
  v25 = sub_10002BE2C(_swiftEmptyArrayStorage, a1, &v27);

  v28 = v7;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000F5104(&qword_10093F640, &qword_100796D50);
  sub_10000CB48(&qword_100939BE8, &qword_10093F640, &qword_100796D50);
  sub_10000CE28(&qword_1009391F0, &qword_1009391E0, REMObjectID_ptr);
  v9 = Sequence.indexBy<A, B>(key:value:)();

  v10 = sub_10002CAF8(v9);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = &_swiftEmptyDictionarySingleton;
  sub_100011DA0(v10, sub_10002CCBC, 0, isUniquelyReferenced_nonNull_native, &v28);

  v12 = v28;
  v28 = v8;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000F5104(&qword_10094F660, &unk_1007B1570);
  sub_10000CB48(&qword_1009460B8, &qword_10094F660, &unk_1007B1570);
  v13 = Sequence.indexBy<A, B>(key:value:)();

  v14 = sub_10002CF88(v13);

  v15 = swift_isUniquelyReferenced_nonNull_native();
  v28 = v12;
  sub_100011DA0(v14, sub_10002CCBC, 0, v15, &v28);

  v16 = v28;
  v28 = v25;
  swift_getKeyPath();
  swift_getKeyPath();
  v17 = Sequence.indexBy<A, B>(key:value:)();

  v18 = sub_10002CAF8(v17);

  v19 = swift_isUniquelyReferenced_nonNull_native();
  v28 = v16;
  sub_100011DA0(v18, sub_10002CCBC, 0, v19, &v28);

  v20 = type metadata accessor for REMStoreObjectsContainer();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v23 = a2;
  return REMStoreObjectsContainer.init(store:storages:)();
}

unint64_t sub_100011DA0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v47 = a1;
  v48 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v49 = v8;
  v50 = 0;
  v51 = v11 & v9;
  v52 = a2;
  v53 = a3;

  sub_10002CB0C(&v45);
  v12 = v45;
  if (!v45)
  {
    goto LABEL_25;
  }

  sub_100005EE0(v46, v44);
  v13 = *a5;
  result = sub_10002B924(v12);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v15;
  if (*(v13 + 24) < v19)
  {
    sub_10002CD0C(v19, a4 & 1);
    v21 = *a5;
    result = sub_10002B924(v12);
    if ((v20 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_100373210();
    result = v26;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (v20)
  {
LABEL_11:
    v23 = *a5;
    v24 = 32 * result;
    sub_100005EF0(*(*a5 + 56) + 32 * result, v43);
    sub_10000607C(v44);

    v25 = *(v23 + 56);
    sub_10000607C((v25 + v24));
    sub_100005EE0(v43, (v25 + v24));
    goto LABEL_15;
  }

LABEL_13:
  v27 = *a5;
  *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
  *(v27[6] + 8 * result) = v12;
  result = sub_100005EE0(v44, (v27[7] + 32 * result));
  v28 = v27[2];
  v18 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v18)
  {
    v27[2] = v29;
LABEL_15:
    sub_10002CB0C(&v45);
    v12 = v45;
    if (v45)
    {
      v20 = 1;
      do
      {
        sub_100005EE0(v46, v44);
        v33 = *a5;
        result = sub_10002B924(v12);
        v35 = *(v33 + 16);
        v36 = (v34 & 1) == 0;
        v18 = __OFADD__(v35, v36);
        v37 = v35 + v36;
        if (v18)
        {
          goto LABEL_26;
        }

        a4 = v34;
        if (*(v33 + 24) < v37)
        {
          sub_10002CD0C(v37, 1);
          v38 = *a5;
          result = sub_10002B924(v12);
          if ((a4 & 1) != (v39 & 1))
          {
            goto LABEL_8;
          }
        }

        if (a4)
        {
          v30 = *a5;
          v31 = 32 * result;
          sub_100005EF0(*(*a5 + 56) + 32 * result, v43);
          sub_10000607C(v44);

          v32 = *(v30 + 56);
          sub_10000607C((v32 + v31));
          sub_100005EE0(v43, (v32 + v31));
        }

        else
        {
          v40 = *a5;
          *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
          *(v40[6] + 8 * result) = v12;
          result = sub_100005EE0(v44, (v40[7] + 32 * result));
          v41 = v40[2];
          v18 = __OFADD__(v41, 1);
          v42 = v41 + 1;
          if (v18)
          {
            goto LABEL_27;
          }

          v40[2] = v42;
        }

        sub_10002CB0C(&v45);
        v12 = v45;
      }

      while (v45);
    }

LABEL_25:
    sub_10002CF84();
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1000120D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100791340;

  v10 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v11)
  {
    v12 = v10;
    v13 = v11;

    *(v9 + 56) = &type metadata for String;
    *(v9 + 32) = v12;
    *(v9 + 40) = v13;
    *(v9 + 88) = sub_1000F5104(&unk_100939E40, &qword_100791BD0);
    *(v9 + 64) = a2;
    *(v9 + 72) = a3;
    v14 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v16 = [objc_opt_self() predicateWithFormat:v14 argumentArray:isa];

    return v16;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v18._object = 0x80000001007EC120;
    v18._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v18);
    sub_1000F5104(a4, a5);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000122D0(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

unint64_t sub_100012370(void *a1, id a2)
{
  v5 = sub_100012718(a1);
  v20 = a1;
  v6 = [a2 persistentStoreOfAccountWithAccountID:a1];
  if (v6)
  {
    v7 = v6;
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1007953F0;
    *(v8 + 32) = v7;
  }

  else
  {
    v8 = 0;
  }

  if (qword_100935DD0 != -1)
  {
    swift_once();
  }

  if (qword_100974D10 >> 62)
  {

    sub_1000F5104(&qword_100943980, &unk_10079EF10);
    _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  }

  type metadata accessor for REMCDAccountListData();
  v9 = [objc_allocWithZone(NSFetchRequest) init];
  v10 = [swift_getObjCClassFromMetadata() entity];
  [v9 setEntity:v10];

  if (v8)
  {
    sub_100293C88();
    v11.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v11.super.isa = 0;
  }

  [v9 setAffectedStores:v11.super.isa];

  [v9 setPredicate:v5];

  sub_100030F74(v12);

  sub_100293638(&_swiftEmptySetSingleton);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v9 setPropertiesToFetch:isa];

  result = NSManagedObjectContext.fetch<A>(_:)();
  if (v2)
  {
    goto LABEL_12;
  }

  if (!(result >> 62))
  {
    v15 = v5;
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_15;
    }

LABEL_22:

    [objc_opt_self() noSuchObjectErrorWithObjectID:v20];
    swift_willThrow();
    v5 = v15;
LABEL_12:

    return a2;
  }

  v18 = result;
  v19 = _CocoaArrayWrapper.endIndex.getter();
  result = v18;
  v15 = v5;
  if (!v19)
  {
    goto LABEL_22;
  }

LABEL_15:
  if ((result & 0xC000000000000001) != 0)
  {
    v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_18;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(result + 32);
LABEL_18:
    v17 = v16;

    a2 = [v17 orderedIdentifierMap];

    return a2;
  }

  __break(1u);
  return result;
}

uint64_t sub_100012718(void *a1)
{
  v2 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v11 - v4;
  v12 = _swiftEmptyArrayStorage;
  KeyPath = swift_getKeyPath();
  v7 = [a1 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
  sub_100030F2C(KeyPath, v5);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (v12[2] >= v12[3] >> 1)
  {
    v10 = v12[2];
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return sub_10000C2B0(v12);
}

uint64_t sub_10001289C()
{
  if (*v0)
  {
    result = 0x6E656B6F74;
  }

  else
  {
    result = 0x7265646E696D6572;
  }

  *v0;
  return result;
}

uint64_t sub_1000128E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = sub_1000F5104(&qword_100948B88, &unk_1007ACB98);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v37 = &v32 - v6;
  v7 = type metadata accessor for REMAccountsListDataView.ReminderCounts();
  v39 = *(v7 - 8);
  v8 = *(v39 + 64);
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000F5104(&qword_100948CD0, &qword_1007ACCD0);
  v38 = *(v11 - 8);
  v12 = *(v38 + 64);
  __chkstk_darwin(v11);
  v14 = &v32 - v13;
  v15 = a1[4];
  sub_10000F61C(a1, a1[3]);
  sub_1000318A0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v34 = v10;
    v35 = a1;
    LOBYTE(v40) = 0;
    sub_100030E90(&qword_100948CE0, &type metadata accessor for REMAccountsListDataView.ReminderCounts);
    v16 = v37;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v17 = v11;
    v18 = v39;
    (*(v39 + 56))(v16, 0, 1, v7);
    v19 = v16;
    v20 = *(v18 + 32);
    v20(v34, v19, v7);
    v42 = 1;
    sub_1000318F4();
    v37 = v14;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v21 = v35;
    v33 = v20;
    v23 = v40;
    v22 = v41;
    sub_1000060C8(0, &qword_100948CE8, REMFetchResultToken_ptr);
    v29 = sub_100031948();
    sub_10001BBA0(v23, v22);
    v30 = v38;
    if (v29)
    {
      (*(v38 + 8))(v37, v17);
      v31 = v36;
      v33(v36, v34, v7);
      *(v31 + *(_s5CacheVMa() + 20)) = v29;
      v27 = v21;
      return sub_10000607C(v27);
    }

    (*(v39 + 8))(v34, v7);
    v24 = v37;
    v25 = objc_opt_self();
    v26 = String._bridgeToObjectiveC()();
    [v25 internalErrorWithDebugDescription:v26];

    swift_willThrow();
    (*(v30 + 8))(v24, v17);
    a1 = v35;
  }

  v27 = a1;
  return sub_10000607C(v27);
}

void sub_100012D90()
{
  v1 = type metadata accessor for REMHashtagLabelDataView.AllHashtagLabelsInvocation.SortingStyle();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F5104(&qword_100941B98, qword_1007ACBD0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v29 - v11;
  v13 = type metadata accessor for REMHashtagLabelDataView.AllHashtagLabelsInvocation.Parameters();
  v32 = *(v13 - 8);
  v14 = *(v32 + 64);
  __chkstk_darwin(v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for REMHashtagLabelDataView.AllHashtagLabelsInvocation();
  v31 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  (*(v2 + 56))(v12, 1, 1, v1);
  REMHashtagLabelDataView.AllHashtagLabelsInvocation.Parameters.init(sortingStyle:)();
  REMHashtagLabelDataView.AllHashtagLabelsInvocation.Parameters.sortingStyle.getter();
  if ((*(v2 + 48))(v10, 1, v1) == 1)
  {
    sub_1000050A4(v10, &qword_100941B98, qword_1007ACBD0);
    v17 = 0;
  }

  else
  {
    (*(v2 + 16))(v5, v10, v1);
    v18 = (*(v2 + 88))(v5, v1);
    v17 = v18 != enum case for REMHashtagLabelDataView.AllHashtagLabelsInvocation.SortingStyle.alphabetical(_:);
    if (v18 != enum case for REMHashtagLabelDataView.AllHashtagLabelsInvocation.SortingStyle.alphabetical(_:) && v18 != enum case for REMHashtagLabelDataView.AllHashtagLabelsInvocation.SortingStyle.recencyDate(_:))
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return;
    }

    (*(v2 + 8))(v10, v1);
  }

  sub_1000131E0(0, 2, v17);
  if (v0)
  {
    (*(v32 + 8))(v16, v13);
  }

  else
  {
    v20 = v19;
    v21 = *(v19 + 16);
    if (v21)
    {
      v30 = v13;
      v33 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v22 = type metadata accessor for REMHashtagLabel_Codable();
      v29 = v20;
      v23 = (v20 + 40);
      do
      {
        v24 = *(v23 - 1);
        v25 = *v23;
        v26 = objc_allocWithZone(v22);

        v27 = String._bridgeToObjectiveC()();

        [v26 initWithName:{v27, v29}];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v28 = v33[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v23 += 2;
        --v21;
      }

      while (v21);

      (*(v32 + 8))(v16, v30);
    }

    else
    {

      (*(v32 + 8))(v16, v13);
    }
  }
}

void sub_1000131E0(uint64_t a1, char a2, char a3)
{
  sub_10003450C(&off_1008DD310);
  sub_100034610(&unk_1008DD330);
  v7 = sub_100034664(a1, a2);
  sub_1000060C8(0, &qword_10093B2C0, off_1008D4198);
  v8 = [objc_allocWithZone(NSFetchRequest) init];
  v9 = [swift_getObjCClassFromMetadata() entity];
  [v8 setEntity:v9];

  [v8 setAffectedStores:0];
  [v8 setPredicate:v7];
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v8 setPropertiesToFetch:isa];

  v11 = Array._bridgeToObjectiveC()().super.isa;
  [v8 setRelationshipKeyPathsForPrefetching:v11];

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  if (a3)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100796900;
    if (qword_100936118 != -1)
    {
      swift_once();
    }

    v13 = qword_100974E70;
    *(v12 + 32) = qword_100974E70;
    v14 = (v12 + 40);
    v15 = qword_100936110;
    v16 = v13;
    if (v15 != -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1007953F0;
    v14 = (v17 + 32);
    if (qword_100936110 != -1)
    {
LABEL_5:
      swift_once();
    }
  }

  v18 = qword_100974E68;
  *v14 = qword_100974E68;
  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  v19 = v18;
  v20 = Array._bridgeToObjectiveC()().super.isa;

  [v8 setSortDescriptors:v20];

  v21 = NSManagedObjectContext.fetch<A>(_:)();

  if (!v3)
  {
    sub_100034C08(v21);
  }
}

uint64_t sub_1000134D0()
{
  if (*v0)
  {
    result = 0x6E656B6F74;
  }

  else
  {
    result = 0x736C6562616CLL;
  }

  *v0;
  return result;
}

uint64_t sub_100013530(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  v10 = *v3;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v11 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  v12 = *(result - 8);
  if (v11 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = *(v12 + 72);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v15 = *(v5 + 16);
  v16 = __OFADD__(v15, v4);
  v17 = v15 + v4;
  if (!v16)
  {
    *(v5 + 16) = v17;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

id sub_100013674(uint64_t a1)
{
  v2 = v1;
  v170 = sub_1000F5104(&qword_1009442A8, &unk_1007A4C80);
  v4 = *(v170 - 1);
  v5 = v4[8];
  __chkstk_darwin(v170);
  v7 = &v150 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v150 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v150 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v150 - v18;
  v20 = __chkstk_darwin(v17);
  v166 = &v150 - v21;
  __chkstk_darwin(v20);
  v23 = &v150 - v22;
  Date.init()();
  v24 = [v2 storeController];
  if (v24)
  {
    v169 = v24;
    v25 = [v24 inMemoryPrimaryActiveCKAccountREMObjectID];
    if (v25)
    {
      v161 = v19;
      v165 = v2;
      v167 = v9;
      v168 = v23;
      v26 = v16;
      v27 = v25;
      v28 = swift_allocObject();
      *(v28 + 16) = 0;
      v29 = v4[13];
      v30 = v170;
      v156 = v4 + 13;
      v155 = v29;
      v29(v7, enum case for REMCache.ExecutionMode.synchronously<A, B>(_:), v170);
      v31 = swift_allocObject();
      *(v31 + 16) = v28;
      *(v31 + 24) = v27;
      v162 = v28;

      v159 = v27;
      v32 = v27;
      v33 = v26;
      v163 = v32;
      v158 = a1;
      dispatch thunk of REMCache.performReadOnly(_:operations:)();

      v34 = v4[1];
      v157 = v7;
      v154 = v4 + 1;
      v34(v7, v30);
      swift_beginAccess();
      v35 = *(v28 + 16);
      v164 = v8;
      if (v35)
      {
        v171 = 0;
        v36 = v35;
        v37 = [v165 existingObjectWithID:v36 error:&v171];
        v38 = v171;
        if (v37)
        {
          v39 = v37;
          v152 = v33;
          objc_opt_self();
          v40 = swift_dynamicCastObjCClass();
          if (v40)
          {
            v41 = v40;
            v42 = v163;
            v43 = v38;
            v44 = [v41 remObjectID];
            if (v44)
            {
              v45 = v44;
              v160 = v41;
              sub_10003980C();
              v46 = static NSObject.== infix(_:_:)();

              if (v46)
              {
                v47 = qword_100935F40;
                v48 = v39;
                v49 = v164;
                if (v47 != -1)
                {
                  swift_once();
                }

                v50 = type metadata accessor for Logger();
                sub_100006654(v50, qword_100944290);
                v51 = v166;
                v52 = v167;
                (*(v167 + 16))(v166, v168, v49);
                static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();
                static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();
                v53 = v36;
                v54 = Logger.logObject.getter();
                v55 = static os_log_type_t.info.getter();

                if (os_log_type_enabled(v54, v55))
                {
                  v56 = swift_slowAlloc();
                  v165 = v42;
                  v57 = v56;
                  v58 = swift_slowAlloc();
                  v170 = v48;
                  v59 = v58;
                  *v57 = 68158210;
                  *(v57 + 4) = 4;
                  *(v57 + 8) = 2048;
                  Date.rem_elapsedInMilliseconds.getter();
                  v61 = v60;
                  v62 = *(v52 + 8);
                  v62(v51, v49);
                  *(v57 + 10) = v61;
                  *(v57 + 18) = 2112;
                  *(v57 + 20) = v53;
                  *v59 = v35;
                  v63 = v53;
                  _os_log_impl(&_mh_execute_header, v54, v55, "primaryActiveCloudKitAccountOptimized: RDPrimaryActiveCloudKitAccountManagedObjectIDCache hit {elapsed: %.*f ms, mid: %@}", v57, 0x1Cu);
                  sub_100039860(v59);

                  v62(v168, v49);
                }

                else
                {

                  v149 = *(v52 + 8);
                  v149(v51, v49);
                  v149(v168, v49);
                }

                goto LABEL_56;
              }
            }

            else
            {
            }

            v8 = v164;
          }

          else
          {
            v83 = v38;
          }

          v33 = v152;
        }

        else
        {
          v82 = v171;
          _convertNSErrorToError(_:)();

          swift_willThrow();
        }
      }

      v84 = [objc_opt_self() _groundTruth_primaryActiveCloudKitAccountInContext:v165];
      v85 = qword_100935F40;
      v160 = v84;
      v86 = v84;
      if (v85 != -1)
      {
        swift_once();
      }

      v87 = type metadata accessor for Logger();
      sub_100006654(v87, qword_100944290);
      v88 = v167;
      v89 = v161;
      v165 = *(v167 + 16);
      v166 = (v167 + 16);
      (v165)(v161, v168, v8);
      static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();
      static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();
      v90 = Logger.logObject.getter();
      v91 = static os_log_type_t.info.getter();
      v92 = os_log_type_enabled(v90, v91);
      v153 = v34;
      if (v92)
      {
        v93 = v33;
        v94 = v8;
        v95 = swift_slowAlloc();
        *v95 = 68157952;
        *(v95 + 4) = 4;
        *(v95 + 8) = 2048;
        Date.rem_elapsedInMilliseconds.getter();
        v97 = v96;
        v98 = *(v88 + 8);
        v99 = v94;
        v33 = v93;
        v98(v89, v99);
        *(v95 + 10) = v97;
        _os_log_impl(&_mh_execute_header, v90, v91, "primaryActiveCloudKitAccountOptimized: RDPrimaryActiveCloudKitAccountManagedObjectIDCache miss (before cache-write) {elapsed: %.*f ms}", v95, 0x12u);

        if (v86)
        {
          goto LABEL_32;
        }
      }

      else
      {

        v98 = *(v88 + 8);
        v98(v89, v8);
        if (v86)
        {
LABEL_32:
          v161 = v98;
          v100 = v163;
          v101 = v86;
          v102 = [v101 remObjectID];
          if (v102)
          {
            v103 = v102;
            sub_10003980C();
            v104 = static NSObject.== infix(_:_:)();

            if (v104)
            {
LABEL_47:
              v123 = [v101 objectID];
              if ([v123 isTemporaryID])
              {
                v124 = v100;
                v125 = Logger.logObject.getter();
                v126 = static os_log_type_t.fault.getter();

                if (os_log_type_enabled(v125, v126))
                {
                  v127 = swift_slowAlloc();
                  v128 = swift_slowAlloc();
                  *v127 = 138543362;
                  *(v127 + 4) = v124;
                  *v128 = v159;
                  v129 = v124;
                  _os_log_impl(&_mh_execute_header, v125, v126, "primaryActiveCloudKitAccountOptimized: Unexpectedly primary CK REMCDAccount's objectID() isTemporary, should have saved the CD account before trying to access it via this API {remObjectID: %{public}@}", v127, 0xCu);
                  sub_100039860(v128);
                }

                else
                {
                }

                v161(v168, v164);
              }

              else
              {
                v163 = v101;
                v130 = v157;
                v131 = v170;
                v155(v157, enum case for REMCache.ExecutionMode.asynchronously<A, B>(_:), v170);
                v132 = swift_allocObject();
                *(v132 + 16) = v123;
                *(v132 + 24) = v100;
                v133 = v100;
                v134 = v123;
                dispatch thunk of REMCache.performReadAndWrite(_:operations:)();

                v153(v130, v131);
                v135 = v33;
                v136 = v33;
                v137 = v168;
                v138 = v164;
                (v165)(v135, v168, v164);
                static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();
                static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();
                v139 = Logger.logObject.getter();
                v140 = static os_log_type_t.default.getter();
                if (os_log_type_enabled(v139, v140))
                {
                  v141 = swift_slowAlloc();
                  *v141 = 68157952;
                  *(v141 + 4) = 4;
                  *(v141 + 8) = 2048;
                  Date.rem_elapsedInMilliseconds.getter();
                  v143 = v142;
                  v144 = v136;
                  v145 = v161;
                  v161(v144, v138);
                  *(v141 + 10) = v143;
                  _os_log_impl(&_mh_execute_header, v139, v140, "primaryActiveCloudKitAccountOptimized: RDPrimaryActiveCloudKitAccountManagedObjectIDCache miss + write (after cache-write) {elapsed: %.*f ms (from start)}", v141, 0x12u);

                  v146 = v163;
                  v145(v137, v138);
                }

                else
                {

                  v147 = v163;
                  v148 = v161;
                  v161(v136, v138);
                  v148(v137, v138);
                }
              }

LABEL_56:

              return v160;
            }
          }

          else
          {
          }

          v109 = v100;
          v110 = v101;
          v111 = Logger.logObject.getter();
          v112 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v111, v112))
          {
            v163 = v101;
            v152 = v33;
            v113 = swift_slowAlloc();
            v114 = swift_slowAlloc();
            v151 = swift_slowAlloc();
            v171 = v151;
            *v113 = 136446466;
            v115 = [v110 remObjectID];
            if (v115)
            {
              v116 = v115;
              v117 = [v115 description];

              v118 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v120 = v119;
            }

            else
            {
              v120 = 0xE300000000000000;
              v118 = 7104878;
            }

            v121 = sub_10000668C(v118, v120, &v171);

            *(v113 + 4) = v121;
            *(v113 + 12) = 2114;
            *(v113 + 14) = v109;
            *v114 = v159;
            v122 = v109;
            _os_log_impl(&_mh_execute_header, v111, v112, "primaryActiveCloudKitAccountOptimized: Mismatching cdAccount.remObjectID with inMemoryPrimaryActiveCKAccountREMObjectID {cdAccount.remObjectID: %{public}s, in-memory: %{public}@}", v113, 0x16u);
            sub_100039860(v114);

            sub_10000607C(v151);

            v33 = v152;
            v101 = v163;
          }

          else
          {
          }

          goto LABEL_47;
        }
      }

      v105 = Logger.logObject.getter();
      v106 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v105, v106))
      {
        v107 = swift_slowAlloc();
        *v107 = 0;
        _os_log_impl(&_mh_execute_header, v105, v106, "primaryActiveCloudKitAccountOptimized: Unexpectedly fetched no active CK account from persistence. Should have returned early for nil inMemoryPrimaryActiveCKAccountREMObjectID if no active CK account is signed in. Indicates there is a bug.", v107, 2u);

        v108 = v169;
      }

      else
      {

        v108 = v163;
      }

      v98(v168, v164);

      return 0;
    }

    else
    {
      if (qword_100935F40 != -1)
      {
        swift_once();
      }

      v70 = type metadata accessor for Logger();
      sub_100006654(v70, qword_100944290);
      (*(v9 + 16))(v13, v23, v8);
      static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();
      static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();
      v71 = v9;
      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = v23;
        v75 = v8;
        v76 = swift_slowAlloc();
        *v76 = 68157952;
        *(v76 + 4) = 4;
        *(v76 + 8) = 2048;
        Date.rem_elapsedInMilliseconds.getter();
        v78 = v77;
        v79 = *(v71 + 8);
        v79(v13, v75);
        *(v76 + 10) = v78;
        _os_log_impl(&_mh_execute_header, v72, v73, "primaryActiveCloudKitAccountOptimized: Returning nil because inMemoryPrimaryActiveCKAccountREMObjectID is nil {elapsed: %.*f ms}", v76, 0x12u);

        v80 = v74;
        v81 = v75;
      }

      else
      {

        v79 = *(v71 + 8);
        v79(v13, v8);
        v80 = v23;
        v81 = v8;
      }

      v79(v80, v81);
      return 0;
    }
  }

  else
  {
    if (qword_100935F40 != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    sub_100006654(v64, qword_100944290);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&_mh_execute_header, v65, v66, "primaryActiveCloudKitAccountOptimized: Cannot get the RDStoreController from RDStoreControllerManagedObjectContext. Fallback to call REMCDAccount._groundTruth_primaryActiveCloudKitAccountInContext(in:).", v67, 2u);
    }

    v68 = [objc_opt_self() _groundTruth_primaryActiveCloudKitAccountInContext:v2];
    (*(v9 + 8))(v23, v8);
    return v68;
  }
}

uint64_t sub_100014724()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100014764()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001479C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100014A64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = 1;
  v45 = 0;
  sub_1000063E8();
  v13 = String._bridgeToObjectiveC()();

  v41 = [v4 newBackgroundContextWithAuthor:v13];

  if (((*(a1 + 40) | (*(a1 + 44) << 32)) & 0xC00000000002) == 0x800000000000)
  {
    v14 = [objc_opt_self() localInternalAccountID];
    v15 = [v14 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    UUID.uuidString.getter();
    (*(v9 + 8))(v12, v8);
    v16 = String._bridgeToObjectiveC()();

    v17 = [v4 storeForAccountIdentifier:v16];

    if (v17)
    {
      v40 = a2;
      v18 = [v4 persistentStoreCoordinator];
      v19 = [v18 persistentStores];

      v20 = sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      aBlock[0] = &_swiftEmptyArrayStorage;
      if (v21 >> 62)
      {
        goto LABEL_18;
      }

      for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v39 = a3;
        v22 = 0;
        v43 = v21 & 0xC000000000000001;
        v23 = v21 & 0xFFFFFFFFFFFFFF8;
        a3 = i;
        while (1)
        {
          if (v43)
          {
            v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v22 >= *(v23 + 16))
            {
              goto LABEL_17;
            }

            v28 = *(v21 + 8 * v22 + 32);
          }

          v29 = v28;
          v30 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            break;
          }

          if (static NSObject.== infix(_:_:)())
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v24 = v21;
            v25 = v20;
            v26 = v17;
            v27 = *(aBlock[0] + 16);
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            v17 = v26;
            v20 = v25;
            v21 = v24;
            a3 = i;
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          ++v22;
          if (v30 == a3)
          {
            a3 = v39;
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        ;
      }

LABEL_19:

      isa = Array._bridgeToObjectiveC()().super.isa;

      [v41 set__unsafe_doesNotWorkUniversally_affectedStores:isa];

      a2 = v40;
    }
  }

  v32 = swift_allocObject();
  v32[2] = &v46;
  v32[3] = a2;
  v33 = v41;
  v32[4] = a3;
  v32[5] = v33;
  v32[6] = &v45;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_1004128EC;
  *(v34 + 24) = v32;
  aBlock[4] = sub_10000F188;
  aBlock[5] = v34;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F160;
  aBlock[3] = &unk_1008F0A28;
  v35 = _Block_copy(aBlock);
  v36 = v33;

  [v36 performBlockAndWait:v35];
  _Block_release(v35);
  LOBYTE(v35) = swift_isEscapingClosureAtFileLocation();

  if (v35)
  {
    __break(1u);
LABEL_27:
    __break(1u);
    return result;
  }

  if (v45)
  {
    swift_willThrow();
    swift_errorRetain();
  }

  if (v46)
  {
    goto LABEL_27;
  }
}

uint64_t sub_100014F98()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100014FE8()
{
  v1 = *(v0 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_storeController);
  v2 = *(v0 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 16);
  v4 = *(v0 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity);
  v5[0] = v2;
  *(v5 + 14) = *(v0 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 30);
  return sub_100014A64(&v4, sub_1000151EC, 0);
}

void sub_1000151EC(void *a1)
{
  v3 = sub_100015484(a1);
  if (!v1)
  {
    v4 = v3;
    if (v3)
    {
      sub_1000F5104(&unk_100939E10, &qword_1007970D0);

      v16 = 0;
      if ([a1 save:&v16])
      {
        v5 = qword_100936558;
        v6 = v16;
        if (v5 != -1)
        {
          swift_once();
        }

        v7 = type metadata accessor for Logger();
        sub_100006654(v7, qword_10094C8C0);
        v8 = Logger.logObject.getter();
        v9 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          *v10 = 0;
          _os_log_impl(&_mh_execute_header, v8, v9, "Inserted grocery operation queue item for downloading grocery model assets from Trial", v10, 2u);
        }
      }

      else
      {
        v15 = v16;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }
    }

    else
    {
      if (qword_100936558 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_100006654(v11, qword_10094C8C0);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "Skipped inserting grocery operation queue item for downloading grocery model assets from Trial because there are no active CloudKit accounts.", v14, 2u);
      }
    }
  }
}

id sub_100015484(unint64_t a1)
{
  if (qword_1009367D8 != -1)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v2 = sub_100013674(qword_1009752E8);
    if (v2)
    {
      return v2;
    }

    v3 = [objc_opt_self() allCloudKitAccountsInContext:a1];
    sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
    a1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (a1 >> 62)
    {
      v4 = _CocoaArrayWrapper.endIndex.getter();
      if (!v4)
      {
LABEL_19:

        return 0;
      }
    }

    else
    {
      v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v4)
      {
        goto LABEL_19;
      }
    }

    v5 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(a1 + 8 * v5 + 32);
      }

      v2 = v6;
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (([v6 inactive] & 1) == 0)
      {

        return v2;
      }

      ++v5;
      if (v7 == v4)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    swift_once();
  }
}

void *sub_100015620(objc_class *a1, unint64_t ObjCClassFromMetadata, int a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v152 = a5;
  v147 = a4;
  v150 = a1;
  v9 = type metadata accessor for Date();
  v148 = *(v9 - 8);
  v10 = *(v148 + 64);
  __chkstk_darwin(v9);
  v146 = &v135 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v145 = &v135 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16);
  v143 = __chkstk_darwin(v18);
  v144 = v12;
  v141 = v20;
  v149 = v9;
  if (!(a3 >> 6))
  {
    v139 = a3;
    v137 = &v135 - v19;
    v151 = v5;
    v153 = _swiftEmptyArrayStorage;
    v6 = ObjCClassFromMetadata & 0xFFFFFFFFFFFFFF8;
    if (ObjCClassFromMetadata >> 62)
    {
      goto LABEL_34;
    }

    v26 = *((ObjCClassFromMetadata & 0xFFFFFFFFFFFFFF8) + 0x10);
    v140 = v13;
    if (v26)
    {
      goto LABEL_6;
    }

    goto LABEL_35;
  }

  if (a3 >> 6 == 1)
  {
    v151 = v5;
    type metadata accessor for REMCDOperationQueueItem();
    v21 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v22 = [v21 initWithContext:v152];
    [v22 setOperationTypeRawValue:3];
    v23 = [(objc_class *)v150 uuid];
    v24 = v145;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v13 + 8))(v24, v12);
    [v22 setEntityIdentifier:isa];

LABEL_75:
    [v22 setAccount:v147];
    v112 = v22;
    v113 = v146;
    Date.init()();
    v114 = Date._bridgeToObjectiveC()().super.isa;
    (*(v148 + 8))(v113, v149);
    [v112 setCreationDate:v114];

    if (qword_1009367D0 != -1)
    {
      swift_once();
    }

    v115 = type metadata accessor for Logger();
    sub_100006654(v115, qword_100951480);
    v39 = v112;
    v116 = Logger.logObject.getter();
    v117 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v116, v117))
    {
      v118 = swift_slowAlloc();
      v155 = swift_slowAlloc();
      *v118 = 136446722;
      v153 = v142;
      swift_getMetatypeMetadata();
      v119 = String.init<A>(describing:)();
      v121 = sub_10000668C(v119, v120, &v155);

      *(v118 + 4) = v121;
      *(v118 + 12) = 2082;
      LOBYTE(v153) = sub_1000175DC();
      sub_1000F5104(&qword_10093A528, &unk_1007976E0);
      v122 = Optional.descriptionOrNil.getter();
      v124 = sub_10000668C(v122, v123, &v155);

      *(v118 + 14) = v124;
      *(v118 + 22) = 2082;
      v125 = [v39 entityIdentifier];
      if (v125)
      {
        v126 = v141;
        v127 = v125;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v128 = 0;
      }

      else
      {
        v128 = 1;
        v126 = v141;
      }

      (*(v13 + 56))(v126, v128, 1, v144);
      v129 = v126;
      v130 = Optional.descriptionOrNil.getter();
      v132 = v131;

      sub_1000050A4(v129, &unk_100939D90, "8\n\r");
      v133 = sub_10000668C(v130, v132, &v155);

      *(v118 + 24) = v133;
      _os_log_impl(&_mh_execute_header, v116, v117, "%{public}s: Inserted grocery operation queue item {operationType: %{public}s, entityIdentifier: %{public}s}", v118, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }

    return v39;
  }

  v140 = v13;
  v31 = sub_100016788(&off_1008DDFA8, 0, 1);
  type metadata accessor for REMCDOperationQueueItem();
  v39 = [objc_allocWithZone(NSFetchRequest) init];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v32 = [ObjCClassFromMetadata entity];
  [v39 setEntity:v32];

  [v39 setAffectedStores:0];
  [v39 setPredicate:v31];

  if (qword_100935F10 != -1)
  {
LABEL_67:
    swift_once();
  }

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  v33 = Array._bridgeToObjectiveC()().super.isa;
  [v39 setSortDescriptors:v33];

  [v39 setReturnsObjectsAsFaults:0];
  v34 = NSManagedObjectContext.fetch<A>(_:)();

  if (!v6)
  {
    v150 = ObjCClassFromMetadata;
    v151 = 0;
    if (v34 >> 62)
    {
      v35 = _CocoaArrayWrapper.endIndex.getter();
      if (v35)
      {
LABEL_20:
        v36 = 0;
        v13 = v34 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if ((v34 & 0xC000000000000001) != 0)
          {
            v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v36 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_33;
            }

            v37 = *(v34 + 8 * v36 + 32);
          }

          v39 = v37;
          v6 = v36 + 1;
          if (__OFADD__(v36, 1))
          {
            break;
          }

          ObjCClassFromMetadata = [v37 objectID];
          v38 = [ObjCClassFromMetadata isTemporaryID];

          if (v38)
          {

            return v39;
          }

          ++v36;
          if (v6 == v35)
          {
            goto LABEL_69;
          }
        }

        while (1)
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          v26 = _CocoaArrayWrapper.endIndex.getter();
          v140 = v13;
          if (!v26)
          {
            break;
          }

LABEL_6:
          v27 = 0;
          while (1)
          {
            if ((ObjCClassFromMetadata & 0xC000000000000001) != 0)
            {
              v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v27 >= *(v6 + 16))
              {
                goto LABEL_31;
              }

              v28 = *(ObjCClassFromMetadata + 8 * v27 + 32);
            }

            v29 = v28;
            v30 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              break;
            }

            REMObjectID.codable.getter();

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            v13 = *((v153 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v13 >= *((v153 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            ++v27;
            if (v30 == v26)
            {
              v39 = v153;
              goto LABEL_36;
            }
          }

          __break(1u);
LABEL_31:
          __break(1u);
        }

LABEL_35:
        v39 = _swiftEmptyArrayStorage;
LABEL_36:
        sub_1000F5104(&unk_100939D60, &unk_1007959E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1007953F0;
        v41 = v150;
        *(inited + 32) = v150;
        v150 = v41;
        v42 = sub_100016788(&off_1008DDF80, inited, 1);
        swift_setDeallocating();
        v43 = *(inited + 16);
        swift_arrayDestroy();
        type metadata accessor for REMCDOperationQueueItem();
        ObjCClassFromMetadata = [objc_allocWithZone(NSFetchRequest) init];
        v138 = swift_getObjCClassFromMetadata();
        v44 = [(objc_class *)v138 entity];
        [ObjCClassFromMetadata setEntity:v44];

        [ObjCClassFromMetadata setAffectedStores:0];
        [ObjCClassFromMetadata setPredicate:v42];

        v45 = v151;
        if (qword_100935F10 != -1)
        {
          swift_once();
        }

        sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
        v46 = Array._bridgeToObjectiveC()().super.isa;
        [ObjCClassFromMetadata setSortDescriptors:v46];

        [ObjCClassFromMetadata setReturnsObjectsAsFaults:0];
        v47 = NSManagedObjectContext.fetch<A>(_:)();
        if (v45)
        {

          return v39;
        }

        v48 = v47;

        v151 = 0;
        v136 = v39;
        if (v48 >> 62)
        {
          v49 = _CocoaArrayWrapper.endIndex.getter();
          if (v49)
          {
LABEL_43:
            v50 = 0;
            v6 = v48 & 0xC000000000000001;
            v39 = (v48 & 0xFFFFFFFFFFFFFF8);
            while (1)
            {
              if (v6)
              {
                v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v50 >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_66;
                }

                v51 = *(v48 + 8 * v50 + 32);
              }

              v52 = v51;
              v53 = v50 + 1;
              if (__OFADD__(v50, 1))
              {
                __break(1u);
LABEL_66:
                __break(1u);
                goto LABEL_67;
              }

              ObjCClassFromMetadata = [v51 objectID];
              v54 = [ObjCClassFromMetadata isTemporaryID];

              if (v54)
              {
                break;
              }

              ++v50;
              if (v53 == v49)
              {
                goto LABEL_71;
              }
            }

            v55 = [v52 configurationData];
            v56 = v139;
            v39 = v136;
            if (!v55)
            {

              goto LABEL_72;
            }

            v57 = v55;
            v58 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v60 = v59;

            v61 = objc_autoreleasePoolPush();
            v62 = type metadata accessor for JSONDecoder();
            v63 = *(v62 + 48);
            v64 = *(v62 + 52);
            swift_allocObject();
            JSONDecoder.init()();
            sub_100742DB8();
            v65 = v151;
            dispatch thunk of JSONDecoder.decode<A>(_:from:)();
            if (v65)
            {

              objc_autoreleasePoolPop(v61);
              sub_10001BBA0(v58, v60);
            }

            else
            {

              objc_autoreleasePoolPop(v61);
              v66 = v154;
              sub_100272024(v39);
              v67 = v153;
              v68 = objc_autoreleasePoolPush();
              v69 = type metadata accessor for JSONEncoder();
              v70 = *(v69 + 48);
              v71 = *(v69 + 52);
              swift_allocObject();
              JSONEncoder.init()();
              v153 = v67;
              v154 = v66;
              sub_100742D64();
              v72 = dispatch thunk of JSONEncoder.encode<A>(_:)();
              v74 = v73;

              objc_autoreleasePoolPop(v68);
              v75 = Data._bridgeToObjectiveC()().super.isa;
              [v52 setConfigurationData:v75];

              if (qword_1009367D0 != -1)
              {
                swift_once();
              }

              v76 = type metadata accessor for Logger();
              sub_100006654(v76, qword_100951480);
              v39 = v52;
              v77 = Logger.logObject.getter();
              v78 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v77, v78))
              {
                LODWORD(v150) = v78;
                v151 = v77;
                v79 = swift_slowAlloc();
                v149 = swift_slowAlloc();
                v153 = v149;
                *v79 = 136446722;
                v80 = sub_1001424F8();
                v82 = sub_10000668C(v80, v81, &v153);

                *(v79 + 4) = v82;
                *(v79 + 12) = 2080;
                LOBYTE(v155) = sub_1000175DC();
                sub_1000F5104(&qword_10093A528, &unk_1007976E0);
                v83 = Optional.descriptionOrNil.getter();
                v85 = sub_10000668C(v83, v84, &v153);

                *(v79 + 14) = v85;
                *(v79 + 22) = 2080;
                v86 = [v39 entityIdentifier];
                v152 = v74;
                if (v86)
                {
                  v87 = v137;
                  v88 = v86;
                  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                  v89 = 0;
                }

                else
                {
                  v89 = 1;
                  v87 = v137;
                }

                (*(v140 + 56))(v87, v89, 1, v144);
                v92 = Optional.descriptionOrNil.getter();
                v94 = v93;
                sub_1000050A4(v87, &unk_100939D90, "8\n\r");
                v95 = sub_10000668C(v92, v94, &v153);

                *(v79 + 24) = v95;
                v77 = v151;
                _os_log_impl(&_mh_execute_header, v151, v150, "%{public}s: Updated unsaved grocery operation queue item {operationType: %s, entityIdentifier: %s}", v79, 0x20u);
                swift_arrayDestroy();

                sub_10001BBA0(v58, v60);
                v90 = v72;
                v91 = v152;
              }

              else
              {
                sub_10001BBA0(v58, v60);
                v90 = v72;
                v91 = v74;
              }

              sub_10001BBA0(v90, v91);
            }

            return v39;
          }
        }

        else
        {
          v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v49)
          {
            goto LABEL_43;
          }
        }

LABEL_71:

        v56 = v139;
        v39 = v136;
LABEL_72:
        v97 = v56 & 1;
        v98 = objc_autoreleasePoolPush();
        v99 = type metadata accessor for JSONEncoder();
        v100 = *(v99 + 48);
        v101 = *(v99 + 52);
        swift_allocObject();
        JSONEncoder.init()();
        v153 = v39;
        v154 = v97;
        sub_100742D64();
        v102 = v151;
        v103 = dispatch thunk of JSONEncoder.encode<A>(_:)();
        v39 = v144;
        v13 = v140;
        if (v102)
        {

          objc_autoreleasePoolPop(v98);
          return v39;
        }

        v151 = 0;
        v105 = v103;
        v106 = v104;

        objc_autoreleasePoolPop(v98);
        v107 = objc_allocWithZone(v138);
        v22 = [v107 initWithContext:v152];
        [v22 setOperationTypeRawValue:1];
        [v22 setPriorityRawValue:20];
        v108 = [(objc_class *)v150 uuid];
        v109 = v145;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v110 = UUID._bridgeToObjectiveC()().super.isa;
        (*(v13 + 8))(v109, v39);
        [v22 setEntityIdentifier:v110];

        v111 = Data._bridgeToObjectiveC()().super.isa;
        [v22 setConfigurationData:v111];

        sub_10001BBA0(v105, v106);
        goto LABEL_75;
      }
    }

    else
    {
      v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v35)
      {
        goto LABEL_20;
      }
    }

LABEL_69:

    v96 = objc_allocWithZone(v150);
    v22 = [v96 initWithContext:v152];
    [v22 setOperationTypeRawValue:2];
    [v22 setPriorityRawValue:30];
    [v22 setEntityIdentifier:0];
    [v22 setConfigurationData:0];
    v13 = v140;
    goto LABEL_75;
  }

  return v39;
}

size_t sub_100016788(uint64_t a1, unint64_t a2, char a3)
{
  v6 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v10 = &v46 - v9;
  v49 = _swiftEmptyArrayStorage;
  if (a3 < 0)
  {
    KeyPath = swift_getKeyPath();
    v33 = *(a2 + 16);
    v34 = _swiftEmptyArrayStorage;
    if (v33)
    {
      v48 = _swiftEmptyArrayStorage;
      sub_100016ED8(0, v33, 0);
      v34 = v48;
      v35 = (a2 + 32);
      v36 = v48[2];
      do
      {
        v38 = *v35++;
        v37 = v38;
        v48 = v34;
        v39 = v34[3];
        if (v36 >= v39 >> 1)
        {
          sub_100016ED8((v39 > 1), v36 + 1, 1);
        }

        v34 = v48;
        v48[2] = v36 + 1;
        *(v34 + v36++ + 16) = 0x65000300020001uLL >> (16 * v37);
        --v33;
      }

      while (v33);
    }

    sub_1000170E4(KeyPath, v34);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (v49[2] >= v49[3] >> 1)
    {
      v44 = v49[2];
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v40 = swift_getKeyPath();
    if (a1)
    {
      sub_1003EF7C4(v40);
    }

    else
    {
      sub_100016DB4(v40);
    }

    goto LABEL_38;
  }

  if (a3)
  {
    v11 = swift_getKeyPath();
    sub_100016DB4(v11);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (v49[2] >= v49[3] >> 1)
    {
      v45 = v49[2];
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v12 = swift_getKeyPath();
  v13 = v12;
  v14 = *(a1 + 16);
  v15 = _swiftEmptyArrayStorage;
  if (v14)
  {
    v47 = v12;
    v48 = _swiftEmptyArrayStorage;
    sub_100016ED8(0, v14, 0);
    v15 = v48;
    v16 = (a1 + 32);
    v17 = v48[2];
    do
    {
      v19 = *v16++;
      v18 = v19;
      v48 = v15;
      v20 = v15[3];
      if (v17 >= v20 >> 1)
      {
        sub_100016ED8((v20 > 1), v17 + 1, 1);
      }

      v15 = v48;
      v48[2] = v17 + 1;
      *(v15 + v17++ + 16) = 0x65000300020001uLL >> (16 * v18);
      --v14;
    }

    while (v14);
    v13 = v47;
  }

  sub_1000170E4(v13, v15);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (v49[2] >= v49[3] >> 1)
  {
    v42 = v49[2];
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  if (!a2)
  {
    return sub_10000C2B0(v49);
  }

  v21 = swift_getKeyPath();
  if (a2 >> 62)
  {
    v43 = v21;
    v22 = _CocoaArrayWrapper.endIndex.getter();
    v21 = v43;
  }

  else
  {
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v23 = _swiftEmptyArrayStorage;
  if (!v22)
  {
LABEL_36:
    sub_1003EF710(v21, v23);
LABEL_38:

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (v49[2] >= v49[3] >> 1)
    {
      v41 = v49[2];
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    return sub_10000C2B0(v49);
  }

  v47 = v21;
  v48 = _swiftEmptyArrayStorage;
  result = sub_100253218(0, v22 & ~(v22 >> 63), 0);
  if ((v22 & 0x8000000000000000) == 0)
  {
    v25 = 0;
    v23 = v48;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v26 = *(a2 + 8 * v25 + 32);
      }

      v27 = v26;
      v28 = [v26 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v29 = type metadata accessor for UUID();
      (*(*(v29 - 8) + 56))(v10, 0, 1, v29);
      v48 = v23;
      v31 = v23[2];
      v30 = v23[3];
      if (v31 >= v30 >> 1)
      {
        sub_100253218(v30 > 1, v31 + 1, 1);
        v23 = v48;
      }

      ++v25;
      v23[2] = v31 + 1;
      sub_100100FB4(v10, v23 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v31);
    }

    while (v22 != v25);
    v21 = v47;
    goto LABEL_36;
  }

  __break(1u);
  return result;
}

id sub_100016CD8@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 operationTypeRawValue];
  *a2 = result;
  return result;
}

id sub_100016D20@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isCompleted];
  *a2 = result;
  return result;
}

char *sub_100016DDC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000F5104(&qword_10093ECA0, &qword_10079D3C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_100016ED8(char *a1, int64_t a2, char a3)
{
  result = sub_100016DDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_100016EF8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100791340;

  v12 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v13)
  {
    v14 = v12;
    v15 = v13;

    *(v11 + 56) = &type metadata for String;
    *(v11 + 32) = v14;
    *(v11 + 40) = v15;
    *(v11 + 88) = sub_1000F5104(a3, a4);
    *(v11 + 64) = a2;
    v16 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v18 = [objc_opt_self() predicateWithFormat:v16 argumentArray:isa];

    return v18;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v20._object = 0x80000001007EC120;
    v20._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v20);
    sub_1000F5104(a5, a6);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100017188(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    while (String.subscript.getter() != 58 || v3 != 0xE100000000000000)
    {
      v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v4 & 1) != 0 || 4 * v2 == String.index(after:)() >> 14)
      {
        goto LABEL_12;
      }
    }
  }

LABEL_12:
  String.subscript.getter();

  v5 = static String._fromSubstring(_:)();

  return v5;
}

uint64_t sub_1000172CC()
{
  v1 = type metadata accessor for REMSuggestedAttributesHarvester.CachedSuggestionType();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for REMSuggestedAttributeOutput.Pipeline();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 16) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v12 = *(v0 + v5 + 8);

  (*(v7 + 8))(v0 + v9, v6);
  v13 = *(v0 + v11 + 8);

  return _swift_deallocObject(v0, v11 + 16, v10 | 7);
}

uint64_t sub_10001744C()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001748C()
{
  v1 = type metadata accessor for REMNotificationIdentifier();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for RDUserNotificationAction();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_1000175DC()
{
  v1 = [v0 operationTypeRawValue];
  if (v1 > 2)
  {
    if (v1 != 3)
    {
      if (v1 == 101)
      {
        return 3;
      }

      return 4;
    }

    return 2;
  }

  else
  {
    if (v1 != 1)
    {
      if (v1 == 2)
      {
        return 1;
      }

      return 4;
    }

    return 0;
  }
}

uint64_t getEnumTagSinglePayload for RDSavedAlarmTriggers.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}