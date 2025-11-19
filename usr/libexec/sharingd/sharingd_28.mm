void sub_100450010()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    if (!v2)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  if (v1 < 0)
  {
    v5 = *v0;
  }

  else
  {
    v5 = *v0 & 0xFFFFFFFFFFFFFF8;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_20;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    __break(1u);
    goto LABEL_13;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    goto LABEL_14;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(v1 + 32);

    if (!v2)
    {
LABEL_6:
      v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_16;
    }

LABEL_15:
    v4 = _CocoaArrayWrapper.endIndex.getter();
LABEL_16:
    if (v4)
    {
      sub_10057E738(0, 1);
      return;
    }

    goto LABEL_19;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

id sub_1004500E8()
{
  result = [objc_allocWithZone(type metadata accessor for HUDManager()) init];
  qword_1009A0B90 = result;
  return result;
}

uint64_t sub_100450174()
{
  v1 = *(v0 + OBJC_IVAR___SDHUDManager_activeConnection);
  if (v1)
  {
    v10 = sub_100454A8C;
    v11 = 0;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v9 = sub_1004502D4;
    *(&v9 + 1) = &unk_1008E21F0;
    v2 = _Block_copy(&aBlock);
    v3 = v1;
    v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v2];
    _Block_release(v2);

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    aBlock = 0u;
    v9 = 0u;
  }

  v7[0] = aBlock;
  v7[1] = v9;
  if (*(&v9 + 1))
  {
    sub_10028088C(&qword_10097ECB8, &qword_100804418);
    if (swift_dynamicCast())
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_100005508(v7, &unk_1009746F0, &qword_1007F90B0);
    return 0;
  }
}

void sub_1004502D4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

char *sub_10045033C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v17 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v17 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v17);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  *&v0[OBJC_IVAR___SDHUDManager_serviceConnection] = 0;
  *&v0[OBJC_IVAR___SDHUDManager_activeConnection] = 0;
  *&v0[OBJC_IVAR___SDHUDManager_requests] = _swiftEmptyArrayStorage;
  v0[OBJC_IVAR___SDHUDManager_bannerDismissalRequested] = 0;
  v10 = sub_1002DDC10();
  v16[1] = "/CONTINUITY_SPEC/Oneness";
  v16[2] = v10;
  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_100014404(&qword_100973C60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10028088C(&unk_10097A630, &unk_1007F5680);
  sub_10044EDD8(&qword_100973C70, &unk_10097A630, &unk_1007F5680);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v17);
  *&v0[OBJC_IVAR___SDHUDManager_dispatchQueue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v11 = objc_allocWithZone(NSXPCListener);
  v12 = String._bridgeToObjectiveC()();
  v13 = [v11 initWithMachServiceName:v12];

  *&v1[OBJC_IVAR___SDHUDManager_xpcListener] = v13;
  v19.receiver = v1;
  v19.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v19, "init");
  [*&v14[OBJC_IVAR___SDHUDManager_xpcListener] setDelegate:v14];
  return v14;
}

id sub_100450688(uint64_t a1)
{
  if (qword_100973750 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_1009A0A38);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Starting HUD manager", v5, 2u);
  }

  v6 = *(a1 + OBJC_IVAR___SDHUDManager_xpcListener);

  return [v6 resume];
}

uint64_t sub_1004507F8(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v9 - 8);
  v10 = *(v25 + 64);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v13 = *(v24 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v24);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *&v4[OBJC_IVAR___SDHUDManager_dispatchQueue];
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  *(v18 + 32) = a3;
  *(v18 + 33) = a4;
  *(v18 + 40) = v4;
  aBlock[4] = sub_100454A2C;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008E2588;
  v19 = _Block_copy(aBlock);
  v20 = v17;

  v21 = v4;
  static DispatchQoS.unspecified.getter();
  v26 = _swiftEmptyArrayStorage;
  sub_100014404(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_10044EDD8(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v25 + 8))(v12, v9);
  (*(v13 + 8))(v16, v24);
}

void sub_100450AE4(uint64_t a1, unint64_t a2, char a3, char a4, uint64_t a5)
{
  if (qword_100973750 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000C4AC(v10, qword_1009A0A38);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_10000C4E4(a1, a2, &v21);
    _os_log_impl(&_mh_execute_header, v11, v12, "Paired Unlock: Posting pill as Unlocking for %s", v13, 0xCu);
    sub_10000C60C(v14);
  }

  v15 = objc_opt_self();
  v16 = String._bridgeToObjectiveC()();
  v17 = [v15 pairedUnlockModelWithWatchName:v16 needsLockButton:a3 & 1 needsUpdate:a4 & 1];

  v18 = OBJC_IVAR___SDHUDManager_requests;
  swift_beginAccess();
  v19 = v17;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a5 + v18) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a5 + v18) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v20 = *((*(a5 + v18) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  sub_100450D1C();
}

void sub_100450D1C()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v56[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v0 + OBJC_IVAR___SDHUDManager_dispatchQueue);
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    if (_CocoaArrayWrapper.endIndex.getter() >= 2)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

  v1 = OBJC_IVAR___SDHUDManager_bannerDismissalRequested;
  if (*(v0 + OBJC_IVAR___SDHUDManager_bannerDismissalRequested) != 1)
  {
    goto LABEL_12;
  }

  v8 = OBJC_IVAR___SDHUDManager_requests;
  swift_beginAccess();
  v9 = *(v0 + v8);
  if (v9 >> 62)
  {
    goto LABEL_11;
  }

  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2)
  {
LABEL_5:
    if (qword_100973750 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000C4AC(v10, qword_1009A0A38);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Requesting new banner while previous banner dismissal was requested but not completed. Cleaning up previous banner", v13, 2u);
    }

    sub_100452654();
    return;
  }

LABEL_12:
  *(v0 + v1) = 0;
  v14 = OBJC_IVAR___SDHUDManager_serviceConnection;
  if (*(v0 + OBJC_IVAR___SDHUDManager_serviceConnection))
  {
    if (*(v0 + OBJC_IVAR___SDHUDManager_activeConnection))
    {
      v15 = OBJC_IVAR___SDHUDManager_requests;
      swift_beginAccess();
      v16 = *(v0 + v15);
      if (v16 >> 62)
      {
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          return;
        }
      }

      else if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        return;
      }

      if ((v16 & 0xC000000000000001) != 0)
      {

        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_19:
        if ([v17 type] != 2)
        {
          v18 = sub_100450174();
          if (v18)
          {
            v19 = v18;
            if (qword_100973750 != -1)
            {
              swift_once();
            }

            v20 = type metadata accessor for Logger();
            sub_10000C4AC(v20, qword_1009A0A38);
            v21 = v17;
            v22 = Logger.logObject.getter();
            v23 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v22, v23))
            {
              v24 = swift_slowAlloc();
              v25 = swift_slowAlloc();
              v58[0] = v25;
              *v24 = 136315138;
              v26 = [objc_opt_self() descriptionForType:{objc_msgSend(v21, "type")}];
              v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v29 = v28;

              v30 = sub_10000C4E4(v27, v29, v58);

              *(v24 + 4) = v30;
              _os_log_impl(&_mh_execute_header, v22, v23, "Requesting banner of type %s", v24, 0xCu);
              sub_10000C60C(v25);
            }

            [v19 showBanner:v21];
            swift_unknownObjectRelease();
            return;
          }

          if (qword_100973750 != -1)
          {
            swift_once();
          }

          v52 = type metadata accessor for Logger();
          sub_10000C4AC(v52, qword_1009A0A38);
          v53 = Logger.logObject.getter();
          v54 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v53, v54))
          {
            v55 = swift_slowAlloc();
            *v55 = 0;
            _os_log_impl(&_mh_execute_header, v53, v54, "No remote object found", v55, 2u);
          }
        }

        return;
      }

      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v17 = *(v16 + 32);
        goto LABEL_19;
      }

      __break(1u);
    }

    else if (qword_100973750 == -1)
    {
LABEL_33:
      v48 = type metadata accessor for Logger();
      sub_10000C4AC(v48, qword_1009A0A38);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&_mh_execute_header, v49, v50, "Active HUD service exists but no active connection. Cannot display banner", v51, 2u);
      }

      v40 = [objc_opt_self() defaultCenter];
      [v40 postNotificationName:@"SDUnlockBannerCouldNotBeDisplayed" object:0];
      goto LABEL_37;
    }

    swift_once();
    goto LABEL_33;
  }

  v31 = objc_allocWithZone(NSXPCConnection);
  v32 = String._bridgeToObjectiveC()();
  v33 = [v31 initWithServiceName:v32];

  v34 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___SSUSB332UIProtocol];
  [v33 setRemoteObjectInterface:v34];

  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v63 = sub_100453F64;
  v64 = v35;
  aBlock = _NSConcreteStackBlock;
  v60 = 1107296256;
  v61 = sub_100011678;
  v62 = &unk_1008E2150;
  v36 = _Block_copy(&aBlock);

  [v33 setInvalidationHandler:v36];
  _Block_release(v36);
  v37 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v63 = sub_100453F88;
  v64 = v37;
  aBlock = _NSConcreteStackBlock;
  v60 = 1107296256;
  v61 = sub_100011678;
  v62 = &unk_1008E2178;
  v38 = _Block_copy(&aBlock);

  [v33 setInterruptionHandler:v38];
  _Block_release(v38);
  [v33 resume];
  v39 = *(v0 + v14);
  *(v0 + v14) = v33;
  v40 = v33;

  v63 = sub_100454A8C;
  v64 = 0;
  aBlock = _NSConcreteStackBlock;
  v60 = 1107296256;
  v61 = sub_1004502D4;
  v62 = &unk_1008E21A0;
  v41 = _Block_copy(&aBlock);
  v42 = [v40 synchronousRemoteObjectProxyWithErrorHandler:v41];
  _Block_release(v41);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10000C5B0(v58, &aBlock);
  sub_10028088C(&unk_10097EC40, qword_1008043F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_10000C60C(v58);
LABEL_37:

    return;
  }

  v43 = v57;
  if (qword_100973750 != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  sub_10000C4AC(v44, qword_1009A0A38);
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&_mh_execute_header, v45, v46, "Displaying HUD", v47, 2u);
  }

  [v43 start];
  swift_unknownObjectRelease();
  sub_10000C60C(v58);
}

uint64_t sub_1004517C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v6 - 8);
  v7 = *(v22 + 64);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v10 = *(v21 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v21);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *&v3[OBJC_IVAR___SDHUDManager_dispatchQueue];
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = a3;
  v16 = _Block_copy(aBlock);
  v17 = v14;
  v18 = v3;
  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_100014404(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_10044EDD8(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v22 + 8))(v9, v6);
  (*(v10 + 8))(v13, v21);
}

void sub_100451A7C(uint64_t a1)
{
  if (qword_100973750 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_1009A0A38);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Paired Unlock: Updating pill to Unlocked", v5, 2u);
  }

  v6 = OBJC_IVAR___SDHUDManager_requests;
  swift_beginAccess();
  v7 = *(a1 + v6);
  if (v7 >> 62)
  {
    if (v7 < 0)
    {
      v23 = *(a1 + v6);
    }

    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_21;
    }
  }

  else if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_21;
  }

  if ((v7 & 0xC000000000000001) != 0)
  {

    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_33;
    }

    v8 = *(v7 + 32);
  }

  if (![v8 type])
  {
    if ([v8 needsUpdate])
    {
      v9 = [v8 watchName];
      if (v9)
      {
        v10 = v9;
        v11 = [objc_opt_self() pairedUnlockModelWithWatchName:v9 needsLockButton:objc_msgSend(v8 needsUpdate:{"needsLockButton"), 0}];

        swift_beginAccess();
        v12 = *(a1 + v6);
        v13 = v11;
        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        *(a1 + v6) = v12;
        if (!isUniquelyReferenced_nonNull_bridgeObject || v12 < 0 || (v12 & 0x4000000000000000) != 0)
        {
          v12 = sub_1002D8B8C(v12);
          *(a1 + v6) = v12;
        }

        if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x20);
          *((v12 & 0xFFFFFFFFFFFFFF8) + 0x20) = v13;
          *(a1 + v6) = v12;
          swift_endAccess();

          v16 = sub_100450174();
          if (v16)
          {
            [v16 updatePairedUnlockBannerToUnlocked];

            swift_unknownObjectRelease();
          }

          else
          {
            v20 = Logger.logObject.getter();
            v21 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v20, v21))
            {
              v22 = swift_slowAlloc();
              *v22 = 0;
              _os_log_impl(&_mh_execute_header, v20, v21, "No remote object found", v22, 2u);
            }
          }

          return;
        }

LABEL_33:
        __break(1u);
        return;
      }
    }
  }

LABEL_21:
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Not currently showing paired unlock banner which needs update", v19, 2u);
  }
}

void sub_100451E9C(uint64_t a1)
{
  if (qword_100973750 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_1009A0A38);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Asked to dismiss paired unlock banner", v5, 2u);
  }

  v6 = OBJC_IVAR___SDHUDManager_requests;
  swift_beginAccess();
  v7 = *(a1 + v6);
  if (v7 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_12;
    }
  }

  else if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_12:
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Not currently showing paired unlock banner", v11, 2u);
    }

    return;
  }

  if ((v7 & 0xC000000000000001) != 0)
  {

    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v8 = *(v7 + 32);
  }

  if ([v8 type])
  {

    goto LABEL_12;
  }

  *(a1 + OBJC_IVAR___SDHUDManager_bannerDismissalRequested) = 1;
  v12 = sub_100450174();
  if (v12)
  {
    [v12 dismissBanner];

    swift_unknownObjectRelease();
  }

  else
  {
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "No remote object found, marking banner for dismissal", v15, 2u);
    }
  }
}

void sub_10045221C(uint64_t a1, const char *a2, SEL *a3)
{
  if (qword_100973750 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000C4AC(v6, qword_1009A0A38);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, a2, v9, 2u);
  }

  v10 = [objc_opt_self() *a3];
  v11 = OBJC_IVAR___SDHUDManager_requests;
  swift_beginAccess();
  v12 = v10;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a1 + v11) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + v11) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v13 = *((*(a1 + v11) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  sub_100450D1C();
}

void sub_1004523DC(uint64_t a1)
{
  if (qword_100973750 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_1009A0A38);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Asked to dismiss pencil pairing HUD", v5, 2u);
  }

  v6 = OBJC_IVAR___SDHUDManager_requests;
  swift_beginAccess();
  v7 = *(a1 + v6);
  if (v7 >> 62)
  {
    if (v7 < 0)
    {
      v14 = *(a1 + v6);
    }

    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_17;
    }
  }

  else if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_17;
  }

  if ((v7 & 0xC000000000000001) != 0)
  {

    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_26;
    }

    v3 = *(v7 + 32);
  }

  if ([v3 type]== 2)
  {
    sub_100452654();
    v8 = *(a1 + v6);
    if (!(v8 >> 62))
    {
      if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      goto LABEL_13;
    }

LABEL_26:
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_19;
    }

LABEL_13:
    v9 = OBJC_IVAR___SDHUDManager_serviceConnection;
    v10 = *(a1 + OBJC_IVAR___SDHUDManager_serviceConnection);
    if (v10)
    {
      v11 = v10;
      [v11 invalidate];
    }

    v3 = *(a1 + v9);
    *(a1 + v9) = 0;
    goto LABEL_19;
  }

LABEL_17:
  v3 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v3, v12, "Not currently showing pencil pairing UI", v13, 2u);
  }

LABEL_19:
}

uint64_t sub_100452654()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR___SDHUDManager_dispatchQueue);
  *v6 = v7;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_8:
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }

    goto LABEL_4;
  }

  v6 = OBJC_IVAR___SDHUDManager_requests;
  swift_beginAccess();
  v9 = *(v6 + v1);
  if (v9 >> 62)
  {
    goto LABEL_8;
  }

  result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    return result;
  }

LABEL_4:
  swift_beginAccess();
  sub_10044FF38();
  v12 = v11;
  swift_endAccess();

  *(v1 + OBJC_IVAR___SDHUDManager_bannerDismissalRequested) = 0;
  v13 = *(v6 + v1);
  if (v13 >> 62)
  {
    if (v13 < 0)
    {
      v14 = *(v6 + v1);
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
      return sub_100450D1C();
    }
  }

  else if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return sub_100450D1C();
  }

  v15 = *(v1 + OBJC_IVAR___SDHUDManager_serviceConnection);
  if (v15)
  {
    v23 = sub_100454A8C;
    v24 = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1004502D4;
    v22 = &unk_1008E21C8;
    v16 = _Block_copy(aBlock);
    v17 = v15;
    v18 = [v17 synchronousRemoteObjectProxyWithErrorHandler:v16];
    _Block_release(v16);

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v25, 0, sizeof(v25));
  }

  sub_100453FAC(v25, aBlock);
  if (v22)
  {
    sub_10028088C(&qword_10097ECB0, &unk_100804408);
    if (swift_dynamicCast())
    {
      [v20[1] releaseHUDTransaction];
      swift_unknownObjectRelease();
    }

    v19 = v25;
  }

  else
  {
    sub_100005508(v25, &unk_1009746F0, &qword_1007F90B0);
    v19 = aBlock;
  }

  return sub_100005508(v19, &unk_1009746F0, &qword_1007F90B0);
}

void sub_10045299C(uint64_t a1, const char *a2)
{
  if (qword_100973750 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000C4AC(v3, qword_1009A0A38);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, a2, v6, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_1004517C4(&unk_1008E2228, sub_10045401C, &unk_1008E2240);
  }
}

void sub_100452AD8()
{
  if (qword_100973750 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000C4AC(v0, qword_1009A0A38);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Could not create HUD service", v2, 2u);
  }
}

void sub_100452C60(void *a1)
{
  if (qword_100973750 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_1009A0A38);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "Connection invalidated from %@", v6, 0xCu);
    sub_100005508(v7, &qword_100975400, &qword_1007F65D0);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_1004517C4(&unk_1008E2480, sub_100454A04, &unk_1008E2498);
  }
}

void sub_100452DFC(void *a1)
{
  if (qword_100973750 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_1009A0A38);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v3;
    *v6 = v3;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, oslog, v4, "Connection interrupted from %@", v5, 0xCu);
    sub_100005508(v6, &qword_100975400, &qword_1007F65D0);
  }
}

uint64_t sub_100452FA8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v5 - 8);
  v6 = *(v21 + 64);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v9 = *(v20 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v20);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *&v2[OBJC_IVAR___SDHUDManager_dispatchQueue];
  v14 = swift_allocObject();
  v14[2] = v2;
  v14[3] = a1;
  v14[4] = a2;
  aBlock[4] = sub_1004549E8;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008E23A8;
  v15 = _Block_copy(aBlock);
  v16 = v13;
  v17 = v2;

  static DispatchQoS.unspecified.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_100014404(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_10044EDD8(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v21 + 8))(v8, v5);
  (*(v9 + 8))(v12, v20);
}

void sub_100453284(uint64_t a1, void (*a2)(void))
{
  v5 = OBJC_IVAR___SDHUDManager_requests;
  swift_beginAccess();
  v6 = *(a1 + v5);
  if (v6 >> 62)
  {
    if (v6 < 0)
    {
      v27 = *(a1 + v5);
    }

    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  p_opt_class_meths = &OBJC_PROTOCOL___BLSBacklightStateObserving.opt_class_meths;
  if (v7)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {

      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_46:
        swift_once();
LABEL_20:
        v16 = type metadata accessor for Logger();
        sub_10000C4AC(v16, qword_1009A0A38);
        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v17, v18))
        {
          goto LABEL_33;
        }

        v19 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v40 = v39;
        *v19 = 136315138;
        v20 = [objc_opt_self() descriptionForType:v2];
        v21 = a2;
        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = v23;

        v25 = v22;
        a2 = v21;
        v26 = sub_10000C4E4(v25, v24, &v40);
        p_opt_class_meths = (&OBJC_PROTOCOL___BLSBacklightStateObserving + 48);

        *(v19 + 4) = v26;
        _os_log_impl(&_mh_execute_header, v17, v18, "Requesting banner of type %s", v19, 0xCu);
        sub_10000C60C(v39);

        goto LABEL_32;
      }

      v9 = *(v6 + 32);
    }

    if ([v9 type])
    {
      if (qword_100973750 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_10000C4AC(v10, qword_1009A0A38);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, v12, "No paired unlock watch name", v13, 2u);
      }
    }
  }

  v14 = *(a1 + v5);
  if (v14 >> 62)
  {
    if (v14 < 0)
    {
      v28 = *(a1 + v5);
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_16:
      if ((v14 & 0xC000000000000001) != 0)
      {

        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_48;
        }

        v15 = *(v14 + 32);
      }

      v2 = [v15 type];

      if (qword_100973750 == -1)
      {
        goto LABEL_20;
      }

      goto LABEL_46;
    }
  }

  else if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_16;
  }

  if (qword_100973750 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_10000C4AC(v29, qword_1009A0A38);
  v17 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v17, v30, "No current banner to request", v31, 2u);
LABEL_32:
  }

LABEL_33:

  if (*(a1 + OBJC_IVAR___SDHUDManager_bannerDismissalRequested) != 1)
  {
    v36 = *(a1 + v5);
    if (v36 >> 62)
    {
      if (v36 < 0)
      {
        v38 = *(a1 + v5);
      }

      if (_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_40:
        if ((v36 & 0xC000000000000001) != 0)
        {

          v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v37 = *(v36 + 32);
        }

LABEL_53:
        a2(v37);

        return;
      }
    }

    else if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

    v37 = 0;
    goto LABEL_53;
  }

  if (p_opt_class_meths[234] != -1)
  {
LABEL_48:
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_10000C4AC(v32, qword_1009A0A38);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&_mh_execute_header, v33, v34, "Not displaying banner because dismissal requested before presentation", v35, 2u);
  }

  a2(0);
  sub_100452654();
}

uint64_t sub_1004538B8(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v3 - 8);
  v4 = *(v19 + 64);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v7 = *(v18 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v18);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&v1[OBJC_IVAR___SDHUDManager_dispatchQueue];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v1;
  aBlock[4] = sub_1004549E0;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008E2330;
  v13 = _Block_copy(aBlock);
  v14 = v11;
  v15 = v1;
  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_100014404(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_10044EDD8(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v19 + 8))(v6, v3);
  (*(v7 + 8))(v10, v18);
}

uint64_t sub_100453B84(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    goto LABEL_16;
  }

  if (qword_100973750 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_1009A0A38);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Clearing paired unlock watch name", v7, 2u);
  }

  v8 = OBJC_IVAR___SDHUDManager_requests;
  swift_beginAccess();
  v9 = *(a2 + v8);
  if (v9 >> 62)
  {
    if (v9 < 0)
    {
      v23 = *(a2 + v8);
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      goto LABEL_16;
    }
  }

  else
  {
    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_16;
    }
  }

  if ((v9 & 0xC000000000000001) != 0)
  {

    v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v11 = *(v9 + 32);
  }

  if (![v11 type] && objc_msgSend(v11, "needsUpdate") && (*(a2 + OBJC_IVAR___SDHUDManager_bannerDismissalRequested) & 1) == 0)
  {
    v12 = [objc_opt_self() defaultCenter];
    [v12 postNotificationName:@"SDUnlockBannerDismissed" object:0];

    v11 = v12;
  }

LABEL_16:
  if (qword_100973750 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000C4AC(v13, qword_1009A0A38);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v24 = v17;
    *v16 = 136315138;
    v18 = [objc_opt_self() descriptionForType:a1];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = sub_10000C4E4(v19, v21, &v24);

    *(v16 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v14, v15, "Banner of type %s did dismiss", v16, 0xCu);
    sub_10000C60C(v17);
  }

  return sub_100452654();
}

uint64_t sub_100453FAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&unk_1009746F0, &qword_1007F90B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_10045401C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR___SDHUDManager_serviceConnection);
  *(v1 + OBJC_IVAR___SDHUDManager_serviceConnection) = 0;
}

uint64_t sub_100454068(void *a1)
{
  v2 = v1;
  if (qword_100973750 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_1009A0A38);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Received new connection", v7, 2u);
  }

  [a1 setExportedObject:v2];
  v8 = objc_opt_self();
  v9 = [v8 interfaceWithProtocol:&OBJC_PROTOCOL___SUIHUDHostProtocol];
  [a1 setExportedInterface:v9];

  v10 = [v8 interfaceWithProtocol:&OBJC_PROTOCOL___SUIHUDClientProtocol];
  [a1 setRemoteObjectInterface:v10];

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  v24 = sub_1004549F4;
  v25 = v12;
  v20 = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_100011678;
  v23 = &unk_1008E23F8;
  v13 = _Block_copy(&v20);
  v14 = a1;

  [v14 setInvalidationHandler:v13];
  _Block_release(v13);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v24 = sub_1004549FC;
  v25 = v15;
  v20 = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_100011678;
  v23 = &unk_1008E2448;
  v16 = _Block_copy(&v20);
  v17 = v14;

  [v17 setInterruptionHandler:v16];
  _Block_release(v16);
  v18 = *(v2 + OBJC_IVAR___SDHUDManager_activeConnection);
  *(v2 + OBJC_IVAR___SDHUDManager_activeConnection) = v17;

  [v17 resume];
  return 1;
}

void sub_10045438C(uint64_t a1)
{
  v2 = sub_10028088C(&unk_100974E00, &qword_1007F8940);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v42 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v42 - v12;
  if (a1 == 1)
  {
    if (qword_100973750 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000C4AC(v19, qword_1009A0A38);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Oneness unlocked banner Settings button tapped", v22, 2u);
    }

    URL.init(string:)();
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_100005508(v5, &unk_100974E00, &qword_1007F8940);
    }

    else
    {
      (*(v7 + 32))(v13, v5, v6);
      sub_10028088C(&unk_100987070, &unk_10080DA00);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1007F8A70;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 40) = v24;
      *(inited + 72) = &type metadata for Bool;
      *(inited + 48) = 1;
      *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 88) = v25;
      *(inited + 120) = &type metadata for Bool;
      *(inited + 96) = 1;
      sub_100011040(inited);
      swift_setDeallocating();
      sub_10028088C(&qword_1009744D0, &qword_1007F8A20);
      swift_arrayDestroy();
      v26 = [objc_opt_self() defaultWorkspace];
      if (v26)
      {
        v28 = v26;
        URL._bridgeToObjectiveC()(v27);
        v30 = v29;
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v32 = [v28 openSensitiveURL:v30 withOptions:isa];

        if (v32)
        {
          (*(v7 + 8))(v13, v6);
        }

        else
        {
          (*(v7 + 16))(v11, v13, v6);
          v33 = Logger.logObject.getter();
          v34 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v33, v34))
          {
            v35 = swift_slowAlloc();
            v36 = swift_slowAlloc();
            v43 = v36;
            *v35 = 136315138;
            v42 = URL.absoluteString.getter();
            v38 = v37;
            v39 = *(v7 + 8);
            v39(v11, v6);
            v40 = sub_10000C4E4(v42, v38, &v43);

            *(v35 + 4) = v40;
            _os_log_impl(&_mh_execute_header, v33, v34, "Failed to open URL: %s", v35, 0xCu);
            sub_10000C60C(v36);

            v39(v13, v6);
          }

          else
          {

            v41 = *(v7 + 8);
            v41(v11, v6);
            v41(v13, v6);
          }
        }
      }

      else
      {
        __break(1u);
      }
    }
  }

  else if (!a1)
  {
    if (qword_100973750 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000C4AC(v14, qword_1009A0A38);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Paired unlock banner tapped", v17, 2u);
    }

    v42 = [objc_opt_self() defaultCenter];
    [v42 postNotificationName:@"SDUnlockBannerButtonTapped" object:0];
    v18 = v42;
  }
}

void sub_100454A04()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR___SDHUDManager_activeConnection);
  *(v1 + OBJC_IVAR___SDHUDManager_activeConnection) = 0;
}

uint64_t sub_100454AD4()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097ECC0);
  v1 = sub_10000C4AC(v0, qword_10097ECC0);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100454B9C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for SFAirDropReceive.AskRequest();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = type metadata accessor for SFAirDropReceive.AskRequest.ItemInfo();
  v2[10] = v9;
  v10 = *(v9 - 8);
  v2[11] = v10;
  v11 = *(v10 + 64) + 15;
  v2[12] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v12 = static AirDropActor.shared;

  return _swift_task_switch(sub_100454D4C, v12, 0);
}

uint64_t sub_100454D4C()
{
  v52 = v0;
  v1 = v0[2];
  v2 = *(SFAirDropReceive.AskRequest.files.getter() + 16);

  if (v2)
  {
    v3 = v0[2];
    v4 = *(SFAirDropReceive.AskRequest.urlItems.getter() + 16);

    if (v4 || !SFPlaygroundsAppAvailable())
    {
LABEL_15:
      v2 = 0;
    }

    else
    {
      v5 = v0[2];
      v6 = SFAirDropReceive.AskRequest.files.getter();
      v7 = v6;
      v8 = *(v6 + 16);
      if (v8)
      {
        v9 = 0;
        v10 = v0[11];
        v49 = v6 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
        while (v9 < *(v7 + 16))
        {
          v11 = v0[12];
          v12 = v0[10];
          (*(v10 + 16))(v11, v49 + *(v10 + 72) * v9, v12);
          SFAirDropReceive.AskRequest.ItemInfo.fileName.getter();
          (*(v10 + 8))(v11, v12);
          v13 = String._bridgeToObjectiveC()();

          v14 = [v13 pathExtension];

          if (!v14)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v14 = String._bridgeToObjectiveC()();
          }

          v15 = SFIsPlaygroundItem();

          if ((v15 & 1) == 0)
          {

            goto LABEL_15;
          }

          if (v8 == ++v9)
          {
            goto LABEL_11;
          }
        }

        __break(1u);
        swift_once();
        v19 = v0[8];
        v18 = v0[9];
        v20 = v0[7];
        v21 = v0[2];
        v22 = type metadata accessor for Logger();
        sub_10000C4AC(v22, qword_10097ECC0);
        (*(v19 + 16))(v18, v21, v20);
        swift_errorRetain();
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.error.getter();

        v25 = os_log_type_enabled(v23, v24);
        v26 = v0[8];
        v27 = v0[9];
        v28 = v0[7];
        if (v25)
        {
          v30 = v0[5];
          v29 = v0[6];
          v31 = v0[4];
          v48 = v24;
          v32 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v51 = v50;
          *v32 = 136315394;
          v46 = v23;
          SFAirDropReceive.AskRequest.id.getter();
          sub_1002891F4();
          v45 = dispatch thunk of CustomStringConvertible.description.getter();
          v33 = v28;
          v35 = v34;
          (*(v30 + 8))(v29, v31);
          (*(v26 + 8))(v27, v33);
          v36 = sub_10000C4E4(v45, v35, &v51);

          *(v32 + 4) = v36;
          *(v32 + 12) = 2112;
          swift_errorRetain();
          v37 = _swift_stdlib_bridgeErrorToNSError();
          *(v32 + 14) = v37;
          *v47 = v37;
          _os_log_impl(&_mh_execute_header, v46, v48, "Failed to get Playground app for ask request %s: %@", v32, 0x16u);
          sub_100005508(v47, &qword_100975400, &qword_1007F65D0);

          sub_10000C60C(v50);
        }

        else
        {

          (*(v26 + 8))(v27, v28);
        }
      }

      else
      {
LABEL_11:

        v16 = objc_allocWithZone(LSApplicationRecord);
        v17 = sub_10066F3F8(0xD000000000000015, 0x80000001007914F0, 1);
        v43 = v0[3];
        v44 = *(v43 + 16);
        *(v43 + 16) = v17;
      }

      v2 = *(v0[3] + 16) != 0;
    }
  }

  v38 = v0[12];
  v39 = v0[9];
  v40 = v0[6];

  v41 = v0[1];

  return v41(v2);
}

uint64_t sub_1004551E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v25 = a1;
  v26 = a3;
  v4 = sub_10028088C(&unk_100974E00, &qword_1007F8940);
  v24 = *(v4 - 8);
  v5 = *(v24 + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v7 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v24 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, a2, v15);
  if ((*(v16 + 88))(v19, v15) == enum case for SFAirDropReceive.ItemDestination.customURL(_:))
  {
    (*(v16 + 96))(v19, v15);
    (*(v11 + 32))(v14, v19, v10);
    (*(v11 + 16))(v9, v14, v10);
    (*(v11 + 56))(v9, 0, 1, v10);
    v27 = 0;
    sub_100333278(v9, v7);
    v20 = (*(v24 + 80) + 16) & ~*(v24 + 80);
    v21 = swift_allocObject();
    sub_1003332E8(v7, v21 + v20);
    *(v21 + ((v5 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = v25;

    sub_10028088C(&qword_100975610, &qword_1007F89B0);
    SFProgressTask.init(_:initialProgress:operation:file:line:)();
    sub_100005508(v9, &unk_100974E00, &qword_1007F8940);
    return (*(v11 + 8))(v14, v10);
  }

  else
  {
    v27 = 0;
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = 0;

    sub_10028088C(&qword_100975610, &qword_1007F89B0);
    SFProgressTask.init(_:initialProgress:operation:file:line:)();
    return (*(v16 + 8))(v19, v15);
  }
}

uint64_t sub_10045565C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v33 - v10;
  v12 = *(a1 + 16);
  v36 = *(v2 + 16);
  v13 = v36;
  v34 = a1;
  v35 = v12;
  if (v12)
  {
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v39 = (*(v14 + 64) + 32) & ~*(v14 + 64);
    v16 = a1 + v39;
    v17 = *(v14 + 56);
    v42 = (v14 + 16);
    v43 = v15;
    v38 = (v14 - 8);
    v18 = _swiftEmptyArrayStorage;
    v40 = v9;
    v41 = v14;
    v15(v11, a1 + v39, v4);
    while (1)
    {
      if (URL.isFileURL.getter())
      {
        (*v38)(v11, v4);
      }

      else
      {
        v19 = *v42;
        (*v42)(v9, v11, v4);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v44 = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10028FAB4(0, v18[2] + 1, 1);
          v18 = v44;
        }

        v22 = v18[2];
        v21 = v18[3];
        if (v22 >= v21 >> 1)
        {
          sub_10028FAB4(v21 > 1, v22 + 1, 1);
          v18 = v44;
        }

        v18[2] = v22 + 1;
        v23 = v18 + v39 + v22 * v17;
        v9 = v40;
        v19(v23, v40, v4);
      }

      v16 += v17;
      if (!--v12)
      {
        break;
      }

      v43(v11, v16, v4);
    }
  }

  else
  {
    v18 = _swiftEmptyArrayStorage;
  }

  v24 = v18[2];
  if (v24)
  {
    if (v24 != v35)
    {
      if (qword_1009737B0 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_10000C4AC(v25, qword_10097B528);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "Asked to view mixed files and links, only viewing links", v28, 2u);
      }
    }

    v44 = 0;
    v29 = swift_allocObject();
    v30 = v36;
    *(v29 + 16) = v18;
    *(v29 + 24) = v30;
  }

  else
  {

    v44 = 0;
    v31 = swift_allocObject();
    *(v31 + 16) = v36;
    *(v31 + 24) = 1;
    *(v31 + 32) = v34;
  }

  return SFProgressTask.init(_:initialProgress:operation:file:line:)();
}

uint64_t sub_100455AC8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SDAirDropContentHandlerPlaygroundItems();
  result = swift_allocObject();
  *(result + 16) = 0;
  *a1 = result;
  return result;
}

uint64_t sub_100455B00(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100289000;

  return sub_100454B9C(a1);
}

void sub_100455BD8(uint64_t a1, char a2)
{
  v3 = *(SFAirDropReceive.AskRequest.files.getter() + 16);

  sub_10028088C(&qword_1009775E0, &unk_1007FAD10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007F5670;
  *(inited + 32) = 0x554F524759414C50;
  v5 = inited + 32;
  *(inited + 40) = 0xEA0000000000444ELL;
  *(inited + 48) = v3;
  sub_1003D8D18(inited, a2);
  swift_setDeallocating();
  sub_100005508(v5, &qword_100981D40, &unk_1007FA6C0);
  v6 = String._bridgeToObjectiveC()();
  v7 = SFLocalizedStringForKey();

  if (v7)
  {

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1007F5670;
    *(v8 + 56) = &type metadata for Int;
    *(v8 + 64) = &protocol witness table for Int;
    *(v8 + 32) = v3;
    static String.localizedStringWithFormat(_:_:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100455E3C()
{
  if (*v0)
  {
    result = 0x6E496E6F73726570;
  }

  else
  {
    result = 0x746E756F636361;
  }

  *v0;
  return result;
}

uint64_t sub_100455E7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E756F636361 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E496E6F73726570 && a2 == 0xEA00000000006F66)
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

uint64_t sub_100455F60(uint64_t a1)
{
  v2 = sub_100456AF4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100455F9C(uint64_t a1)
{
  v2 = sub_100456AF4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100455FD8(void *a1)
{
  v3 = v1;
  v5 = sub_10028088C(&qword_10097EE40, &qword_100804558);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v32 - v8;
  v10 = a1[4];
  sub_10002CDC0(a1, a1[3]);
  sub_100456AF4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAppleIDAccountInfo_account);
  if (v11)
  {
    v12 = objc_opt_self();
    v33 = 0;
    v13 = v11;
    v14 = [v12 archivedDataWithRootObject:v13 requiringSecureCoding:1 error:&v33];
    v15 = v33;
    if (!v14)
    {
      v21 = v15;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      return (*(v6 + 8))(v9, v5);
    }

    v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v33 = v16;
    v34 = v18;
    HIBYTE(v32) = 0;
    sub_1002F3198();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v2)
    {
      (*(v6 + 8))(v9, v5);

      v19 = v16;
      v20 = v18;
      return sub_100026AC0(v19, v20);
    }

    sub_100026AC0(v16, v18);
  }

  v22 = objc_opt_self();
  v23 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAppleIDAccountInfo_personInfo);
  sub_1000276B4(0, &qword_10097EE28, SFAppleIDPersonInfo_ptr);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v33 = 0;
  v25 = [v22 archivedDataWithRootObject:isa requiringSecureCoding:1 error:&v33];

  v26 = v33;
  if (v25)
  {
    v27 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    v33 = v27;
    v34 = v29;
    HIBYTE(v32) = 1;
    sub_1002F3198();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    v19 = v27;
    v20 = v29;
    return sub_100026AC0(v19, v20);
  }

  v31 = v26;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  return (*(v6 + 8))(v9, v5);
}

char *sub_100456348(uint64_t *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10028088C(&qword_10097EE18, &qword_100804538);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v32 - v8;
  v10 = OBJC_IVAR____TtC16DaemoniOSLibrary20SDAppleIDAccountInfo_account;
  *&v3[OBJC_IVAR____TtC16DaemoniOSLibrary20SDAppleIDAccountInfo_account] = 0;
  v11 = a1[3];
  v12 = a1[4];
  v36 = a1;
  sub_10002CDC0(a1, v11);
  sub_100456AF4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v13 = v10;
  }

  else
  {
    v35 = v6;
    LOBYTE(v42) = 0;
    sub_1002F309C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v33 = v9;
    v34 = v5;
    v15 = v39;
    v14 = v40;
    sub_1000276B4(0, &qword_100977280, NSKeyedUnarchiver_ptr);
    sub_1000276B4(0, &qword_10097EE38, SFAppleIDAccount_ptr);
    v16 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    v13 = v10;
    if (v16)
    {
      v22 = v16;
      sub_100026AC0(v15, v14);
      v23 = *&v3[v10];
      *&v3[v10] = v22;

      v24 = v33;
      v25 = v34;
      LOBYTE(v42) = 1;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v17 = v24;
      v19 = v39;
      v18 = v40;
      sub_1000276B4(0, &qword_100977280, NSKeyedUnarchiver_ptr);
      sub_10028088C(&qword_100976A80, &unk_100804540);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1007F8830;
      *(v20 + 32) = sub_1000276B4(0, &qword_100974E28, NSString_ptr);
      *(v20 + 40) = sub_1000276B4(0, &qword_100974E20, NSDictionary_ptr);
      *(v20 + 48) = sub_1000276B4(0, &qword_10097EE28, SFAppleIDPersonInfo_ptr);
      static NSKeyedUnarchiver.unarchivedObject(ofClasses:from:)();

      if (v41)
      {
        sub_10028088C(&qword_10097EE30, &qword_100804550);
        v26 = swift_dynamicCast();
        v27 = v35;
        if (v26)
        {
          (*(v35 + 8))(v17, v25);
          sub_100026AC0(v19, v18);
          *&v3[OBJC_IVAR____TtC16DaemoniOSLibrary20SDAppleIDAccountInfo_personInfo] = v42;
          v38.receiver = v3;
          v38.super_class = ObjectType;
          v3 = objc_msgSendSuper2(&v38, "init");
          sub_10000C60C(v36);
          return v3;
        }
      }

      else
      {
        sub_100456B48(&v39);
        v27 = v35;
      }

      v30 = type metadata accessor for SFError();
      sub_10044FED8();
      swift_allocError();
      *v31 = 0xD000000000000021;
      v31[1] = 0x8000000100791600;
      v31[2] = 0xD000000000000059;
      v31[3] = 0x8000000100791630;
      v31[4] = 51;
      (*(*(v30 - 8) + 104))(v31, enum case for SFError.unexpected(_:), v30);
      swift_willThrow();
      sub_100026AC0(v19, v18);
      (*(v27 + 8))(v17, v25);
    }

    else
    {
      v28 = type metadata accessor for SFError();
      sub_10044FED8();
      swift_allocError();
      *v29 = 0xD00000000000001ELL;
      v29[1] = 0x8000000100791690;
      v29[2] = 0xD000000000000059;
      v29[3] = 0x8000000100791630;
      v29[4] = 44;
      (*(*(v28 - 8) + 104))(v29, enum case for SFError.unexpected(_:), v28);
      swift_willThrow();
      sub_100026AC0(v15, v14);
      (*(v35 + 8))(v33, v34);
    }
  }

  sub_10000C60C(v36);

  swift_deallocPartialClassInstance();
  return v3;
}

char *sub_1004569E0@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = sub_100456348(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

id sub_100456A9C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SDAppleIDAccountInfoStoreFactory();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100456AF4()
{
  result = qword_10097EE20;
  if (!qword_10097EE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097EE20);
  }

  return result;
}

uint64_t sub_100456B48(uint64_t a1)
{
  v2 = sub_10028088C(&unk_1009746F0, &qword_1007F90B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100456BC4()
{
  result = qword_10097EE48;
  if (!qword_10097EE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097EE48);
  }

  return result;
}

unint64_t sub_100456C1C()
{
  result = qword_10097EE50;
  if (!qword_10097EE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097EE50);
  }

  return result;
}

unint64_t sub_100456C74()
{
  result = qword_10097EE58;
  if (!qword_10097EE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097EE58);
  }

  return result;
}

uint64_t sub_100456CC8()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097EE60);
  v1 = sub_10000C4AC(v0, qword_10097EE60);
  if (qword_100973758 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100456D90()
{
  v1 = v0;
  v2 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v45 = &v41 - v4;
  v5 = type metadata accessor for AuthenticationSecurityRequest(0);
  v42 = *(v5 - 8);
  v6 = *(v42 + 64);
  v7 = __chkstk_darwin(v5);
  v8 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = (&v41 - v9);
  v11 = type metadata accessor for Date();
  v43 = *(v11 - 8);
  v44 = v11;
  v12 = *(v43 + 64);
  __chkstk_darwin(v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = (&v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue];
  *v19 = v20;
  (*(v16 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v15);
  v21 = v20;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  (*(v16 + 8))(v19, v15);
  if ((v20 & 1) == 0)
  {
    __break(1u);
LABEL_24:
    swift_once();
    goto LABEL_10;
  }

  v19 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type;
  v22 = *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type];
  if (v22 <= 4)
  {
    if ((v22 - 1) >= 3)
    {
      v33 = v45;
      if (v22)
      {
        if (v22 != 4)
        {
          goto LABEL_19;
        }

        v22 = 3584;
      }

LABEL_22:
      Date.init()();
      v34 = *(v5 + 20);
      v36 = v43;
      v35 = v44;
      (*(v43 + 16))(v10 + v34, v14, v44);
      *v10 = v22;
      v37 = type metadata accessor for TaskPriority();
      (*(*(v37 - 8) + 56))(v33, 1, 1, v37);
      sub_100356068(v10, v8);
      v38 = (*(v42 + 80) + 40) & ~*(v42 + 80);
      v39 = swift_allocObject();
      v39[2] = 0;
      v39[3] = 0;
      v39[4] = v1;
      sub_100464F60(v8, v39 + v38);
      v40 = v1;
      sub_1002B3098(0, 0, v33, &unk_100804788, v39);

      sub_1003560CC(v10);
      (*(v36 + 8))(v14, v35);
      return;
    }
  }

  else
  {
    if (v22 > 0x16)
    {
      goto LABEL_16;
    }

    if (((1 << v22) & 0x7E6580) == 0)
    {
      if (v22 == 9 || v22 == 11)
      {
        v22 = 34818;
LABEL_21:
        v33 = v45;
        goto LABEL_22;
      }

LABEL_16:
      if (v22 == 5)
      {
        v22 = 34816;
        goto LABEL_21;
      }

      v33 = v45;
      if (v22 == 6)
      {
        v22 = 2;
        goto LABEL_22;
      }

LABEL_19:
      v22 = 786431;
      goto LABEL_22;
    }
  }

  if (qword_1009738B0 != -1)
  {
    goto LABEL_24;
  }

LABEL_10:
  v23 = type metadata accessor for Logger();
  sub_10000C4AC(v23, qword_10097EE60);
  v24 = v1;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v46 = v28;
    *v27 = 136315138;
    v29 = *(v19 + v1);
    v30 = sub_100027340();
    v32 = sub_10000C4E4(v30, v31, &v46);

    *(v27 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v25, v26, "Authentication type %s does not support this method", v27, 0xCu);
    sub_10000C60C(v28);
  }
}

uint64_t sub_1004572E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[32] = a4;
  v5[33] = a5;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v5[34] = v6;
  v7 = *(v6 - 8);
  v5[35] = v7;
  v8 = *(v7 + 64) + 15;
  v5[36] = swift_task_alloc();
  v9 = type metadata accessor for DispatchQoS();
  v5[37] = v9;
  v10 = *(v9 - 8);
  v5[38] = v10;
  v11 = *(v10 + 64) + 15;
  v5[39] = swift_task_alloc();

  return _swift_task_switch(sub_1004573FC, 0, 0);
}

uint64_t sub_1004573FC()
{
  v1 = v0[32];
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
  swift_beginAccess();
  sub_10000FF90(v1 + v2, (v0 + 14), &qword_10097A9C8, &unk_1007FDD40);
  if (v0[17])
  {
    sub_1002A9938((v0 + 14), (v0 + 19));
    sub_100005508((v0 + 14), &qword_10097A9C8, &unk_1007FDD40);
    v3 = (*sub_10002CDC0(v0 + 19, v0[22]) + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_securityManager);
    swift_beginAccess();
    v4 = *sub_10002CDC0(v3, v3[3]);
    v5 = swift_task_alloc();
    v0[40] = v5;
    *v5 = v0;
    v5[1] = sub_100457750;
    v6 = v0[33];

    return sub_100351944(v6);
  }

  else
  {
    sub_100005508((v0 + 14), &qword_10097A9C8, &unk_1007FDD40);
    v9 = v0[38];
    v8 = v0[39];
    v10 = v0[36];
    v20 = v0[37];
    v11 = v0[34];
    v12 = v0[35];
    v13 = v0[32];
    v19 = *&v13[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue];
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    v0[6] = sub_1004652A8;
    v0[7] = v14;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100011678;
    v0[5] = &unk_1008E2AC0;
    v15 = _Block_copy(v0 + 2);
    v16 = v13;
    static DispatchQoS.unspecified.getter();
    v0[30] = _swiftEmptyArrayStorage;
    sub_10001444C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
    sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
    sub_100013EB8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v15);
    (*(v12 + 8))(v10, v11);
    (*(v9 + 8))(v8, v20);
    v17 = v0[7];

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_100457750()
{
  v2 = *(*v1 + 320);
  v5 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v3 = sub_100457A80;
  }

  else
  {
    v3 = sub_100457864;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100457864()
{
  sub_10000C60C(v0 + 19);
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[36];
  v14 = v0[37];
  v4 = v0[34];
  v5 = v0[35];
  v6 = v0[32];
  v13 = *&v6[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v0[6] = sub_1004652A8;
  v0[7] = v7;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100011678;
  v0[5] = &unk_1008E2AC0;
  v8 = _Block_copy(v0 + 2);
  v9 = v6;
  static DispatchQoS.unspecified.getter();
  v0[30] = _swiftEmptyArrayStorage;
  sub_10001444C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100013EB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);
  (*(v5 + 8))(v3, v4);
  (*(v2 + 8))(v1, v14);
  v10 = v0[7];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100457A80()
{
  v1 = v0[41];
  v2 = v0[39];
  v26 = v0[38];
  v3 = v0[36];
  v27 = v0[37];
  v4 = v0[34];
  v5 = v0[35];
  v6 = v0[32];
  sub_10000C60C(v0 + 19);
  v25 = *&v6[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue];
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  *(v7 + 24) = v6;
  v0[12] = sub_1004652F0;
  v0[13] = v7;
  v0[8] = _NSConcreteStackBlock;
  v0[9] = 1107296256;
  v0[10] = sub_100011678;
  v0[11] = &unk_1008E2B10;
  v8 = _Block_copy(v0 + 8);
  swift_errorRetain();
  v9 = v6;
  static DispatchQoS.unspecified.getter();
  v0[31] = _swiftEmptyArrayStorage;
  sub_10001444C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100013EB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);

  (*(v5 + 8))(v3, v4);
  (*(v26 + 8))(v2, v27);
  v10 = v0[13];

  v12 = v0[38];
  v11 = v0[39];
  v13 = v0[36];
  v14 = v0[37];
  v15 = v0[34];
  v16 = v0[35];
  v17 = v0[32];
  v18 = *&v17[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue];
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  v0[6] = sub_1004652A8;
  v0[7] = v19;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100011678;
  v0[5] = &unk_1008E2AC0;
  v20 = _Block_copy(v0 + 2);
  v21 = v17;
  static DispatchQoS.unspecified.getter();
  v0[30] = _swiftEmptyArrayStorage;
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v16 + 8))(v13, v15);
  (*(v12 + 8))(v11, v14);
  v22 = v0[7];

  v23 = v0[1];

  return v23();
}

uint64_t sub_100457DFC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = (&v18[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue);
  *v9 = v10;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v9, v5);
  if (v10)
  {
    v13 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
    swift_beginAccess();
    sub_10000FF90(v2 + v13, v19, &qword_10097A9C8, &unk_1007FDD40);
    if (v20)
    {
      sub_1002A9938(v19, v18);
      sub_100005508(v19, &qword_10097A9C8, &unk_1007FDD40);
      v14 = sub_10002CDC0(v18, v18[3]);
      v15 = sub_1000116BC(a1, a2);
      sub_10045F620(v2, a1, v15, v16, *v14);

      return sub_10000C60C(v18);
    }

    else
    {
      return sub_100005508(v19, &qword_10097A9C8, &unk_1007FDD40);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100457FF0(char *a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_peerDevice;
  swift_beginAccess();
  sub_10000FF90(&a1[v12], &v100, &qword_100982080, &unk_1007FDD30);
  sub_10000FF90(&v100, &v98, &qword_100982080, &unk_1007FDD30);
  if (!v99)
  {
    sub_100005508(&v98, &qword_100982080, &unk_1007FDD30);
    v44 = sub_100010F88(10, 0x2072656570206F4ELL, 0xEE00656369766564);
    v46 = v45;
    sub_1000115C8();
    v47 = swift_allocError();
    *v48 = v44;
    *(v48 + 8) = v46;
    swift_willThrow();
    sub_100005508(&v100, &qword_100982080, &unk_1007FDD30);
LABEL_19:
    *&v100 = v47;
    swift_errorRetain();
    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    if (swift_dynamicCast())
    {
      v59 = LODWORD(v102[0]);
      v60 = v102[1];
    }

    else
    {
      v59 = sub_100010F88(10, 0, 0xE000000000000000);
    }

    sub_100457DFC(v59, v60);
  }

  sub_100005508(&v100, &qword_100982080, &unk_1007FDD30);
  sub_1000121F8(&v98, v102);
  sub_1002A9938(v102, &v100);
  v13 = *(v8 + 16);
  v96 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_sessionID;
  v13(v11, &a1[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_sessionID], v7);
  v14 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type;
  v15 = *&a1[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type];
  v16 = type metadata accessor for SDAuthenticationAKSAuthSession();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = swift_allocObject();
  *(v19 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_aksSession) = 0;
  result = [objc_opt_self() sharedManager];
  if (!result)
  {
    __break(1u);
    return result;
  }

  *(v19 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_aksManager) = result;
  *(v19 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_role) = 1;
  sub_1000121F8(&v100, v19 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_peerDevice);
  (*(v8 + 32))(v19 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_sessionID, v11, v7);
  *(v19 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_type) = v15;
  v21 = *&a1[OBJC_IVAR____TtC16DaemoniOSLibrary26SDAuthenticationKeySession_aksAuthSession];
  *&a1[OBJC_IVAR____TtC16DaemoniOSLibrary26SDAuthenticationKeySession_aksAuthSession] = v19;

  v22 = [objc_allocWithZone(SDAuthenticationRequest) init];
  if (!v22)
  {
    v49 = sub_100010F88(10, 0xD000000000000030, 0x8000000100791910);
    v51 = v50;
    sub_1000115C8();
    v47 = swift_allocError();
    *v52 = v49;
    *(v52 + 8) = v51;
    swift_willThrow();

LABEL_18:
    sub_10000C60C(v102);
    goto LABEL_19;
  }

  v23 = v22;
  v24 = *&a1[v14];
  if ((v24 - 1) < 4 || v24 == 19)
  {
    v25 = *&a1[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationAuthSession_rangingSession];
    if (!v25)
    {
      v53 = "request protobuf";
      v54 = 0xD00000000000001ELL;
LABEL_17:
      v55 = sub_100010F88(10, v54, v53 | 0x8000000000000000);
      v57 = v56;
      sub_1000115C8();
      v47 = swift_allocError();
      *v58 = v55;
      *(v58 + 8) = v57;
      swift_willThrow();

      goto LABEL_18;
    }

    v95 = a1;
    v26 = v2;
    v27 = v22;
    v28 = *(v25 + 16);
    v29 = *(v25 + 24);

    sub_100294008(v28, v29);
    v30 = v14;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v32 = v29;
    v23 = v27;
    v2 = v26;
    a1 = v95;
    sub_100026AC0(v28, v32);
    [v23 setAwdlInfo:isa];

    v14 = v30;
  }

  [v23 setVersion:1];
  UUID.uuidString.getter();
  v33 = String._bridgeToObjectiveC()();

  [v23 setSessionID:v33];

  v34 = OBJC_IVAR____TtC16DaemoniOSLibrary26SDAuthenticationKeySession_lastUnlockDate;
  swift_beginAccess();
  v35 = (*(v3 + 48))(&a1[v34], 1, v2);
  v36 = 0.0;
  if (!v35)
  {
    (*(v3 + 16))(v6, &a1[v34], v2, 0.0);
    Date.timeIntervalSince1970.getter();
    v38 = v37;
    (*(v3 + 8))(v6, v2);
    v36 = v38;
  }

  [v23 setUnlockDate:v36];
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v40 = v39;
  v42 = *(v3 + 8);
  v41 = v3 + 8;
  v42(v6, v2);
  [v23 setSessionStartDate:v40];
  if (HIDWORD(*&a1[v14]))
  {
    __break(1u);
    goto LABEL_51;
  }

  [v23 setType:?];
  v43 = *&a1[v14];
  if (v43 <= 0x17 && ((1 << v43) & 0xFE7FF8) != 0)
  {
    sub_100669814(0, 0xF000000000000000);
    sub_100669484(0, 0xF000000000000000);
    v62 = v61;
    v63 = Data.init(referencing:)();
    v65 = v64;
    v66 = Data._bridgeToObjectiveC()().super.isa;
    sub_100026AC0(v63, v65);
    [v23 setAksToken:v66];
  }

  v67 = [v23 data];
  if (!v67)
  {
    v53 = "stination defined";
    v54 = 0xD000000000000020;
    goto LABEL_17;
  }

  v96 = v23;
  v68 = v67;
  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v69;

  if (qword_1009738B0 != -1)
  {
LABEL_51:
    swift_once();
  }

  v70 = type metadata accessor for Logger();
  sub_10000C4AC(v70, qword_10097EE60);
  v71 = a1;
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v95 = v41;
    v75 = v14;
    v76 = v74;
    v77 = v6;
    v78 = swift_slowAlloc();
    *v76 = 138412290;
    v79 = *&v71[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue];
    *(v76 + 4) = v79;
    *v78 = v79;
    v80 = v79;
    _os_log_impl(&_mh_execute_header, v72, v73, "Sending authentication request on queue %@", v76, 0xCu);
    sub_100005508(v78, &qword_100975400, &qword_1007F65D0);
    v6 = v77;

    v14 = v75;
    v41 = v95;
  }

  v81 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
  swift_beginAccess();
  sub_10000FF90(&v71[v81], &v100, &qword_10097A9C8, &unk_1007FDD40);
  if (v101)
  {
    sub_1002A9938(&v100, &v98);
    sub_100005508(&v100, &qword_10097A9C8, &unk_1007FDD40);
    v82 = *sub_10002CDC0(&v98, v99);
    v83 = sub_1004FE08C(*&a1[v14]);
    if (qword_100973C48 != -1)
    {
      swift_once();
    }

    sub_10000C4AC(v70, qword_1009895D8);
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v84, v85))
    {
      v95 = v41;
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v97 = v87;
      *v86 = 136315138;
      v94 = v82;
      if (v83 <= 2u)
      {
        v89 = 0xEB0000000074656ELL;
        v88 = v6;
        if (v83)
        {
          if (v83 == 1)
          {
            v89 = 0xE800000000000000;
            v90 = 0x6C61636F4C736469;
          }

          else
          {
            v90 = 0x7265746E49736469;
          }
        }

        else
        {
          v89 = 0xEB00000000746E65;
          v90 = 0x674179627261656ELL;
        }
      }

      else
      {
        v88 = v6;
        if (v83 > 4u)
        {
          if (v83 == 5)
          {
            v90 = 0xD000000000000010;
            v89 = 0x80000001007888E0;
          }

          else
          {
            v89 = 0xED000068746F6F74;
            v90 = 0x65756C4265726F63;
          }
        }

        else if (v83 == 3)
        {
          v89 = 0xE900000000000054;
          v90 = 0x4274726F70706172;
        }

        else
        {
          v89 = 0xEB000000004C4457;
          v90 = 0x4174726F70706172;
        }
      }

      v91 = sub_10000C4E4(v90, v89, &v97);

      *(v86 + 4) = v91;
      _os_log_impl(&_mh_execute_header, v84, v85, "Using transport type %s", v86, 0xCu);
      sub_10000C60C(v87);

      v6 = v88;
      v41 = v95;
      v82 = v94;
    }

    else
    {
    }

    v92 = *(v82 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_transportManager);
    sub_1005CCC7C(v6, v41, v102, 0, v83);
    sub_10000C60C(&v98);
  }

  else
  {
    sub_100005508(&v100, &qword_10097A9C8, &unk_1007FDD40);
  }

  v93 = v96;
  sub_1004FD4B0(0, 1);
  sub_100026AC0(v6, v41);

  return sub_10000C60C(v102);
}

void sub_100458C74(void *a1)
{
  v2 = v1;
  v4 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v112 - v6;
  v8 = type metadata accessor for AuthenticationSecurityRequest(0);
  v9 = *(v8 - 8);
  v119 = v8;
  v120 = v9;
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v121 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = (&v112 - v12);
  v14 = type metadata accessor for Date();
  v122 = *(v14 - 8);
  v15 = *(v122 + 64);
  __chkstk_darwin(v14);
  v124 = &v112 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = (&v112 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue];
  *v21 = v22;
  (*(v18 + 104))(v21, enum case for DispatchPredicate.onQueue(_:), v17);
  v23 = v22;
  LOBYTE(v22) = _dispatchPreconditionTest(_:)();
  (*(v18 + 8))(v21, v17);
  if (v22)
  {
    v123 = v14;
    if (qword_1009738B0 == -1)
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
  v24 = type metadata accessor for Logger();
  sub_10000C4AC(v24, qword_10097EE60);
  v25 = a1;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138412290;
    *(v28 + 4) = v25;
    *v29 = v25;
    v30 = v25;
    _os_log_impl(&_mh_execute_header, v26, v27, "Received authentication request: %@", v28, 0xCu);
    sub_100005508(v29, &qword_100975400, &qword_1007F65D0);
  }

  v31 = *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationAuthSession_AWDLInfo];
  v32 = *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationAuthSession_AWDLInfo + 8];
  v33 = v32 >> 62;
  if ((v32 >> 62) > 1)
  {
    if (v33 != 2)
    {
      goto LABEL_19;
    }

    v36 = v31 + 16;
    v34 = *(v31 + 16);
    v35 = *(v36 + 8);
    v37 = __OFSUB__(v35, v34);
    v38 = v35 - v34;
    if (!v37)
    {
      if (v38 >= 1)
      {
        goto LABEL_12;
      }

LABEL_19:
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v46, v47))
      {
LABEL_22:

        LOBYTE(v125) = 0;
        v44 = 10;
LABEL_23:
        sub_1004598E8(v44);
        return;
      }

      v48 = swift_slowAlloc();
      *v48 = 0;
      v49 = "Missing local AWDL info";
LABEL_21:
      _os_log_impl(&_mh_execute_header, v46, v47, v49, v48, 2u);

      goto LABEL_22;
    }

    __break(1u);
LABEL_59:
    __break(1u);
    return;
  }

  if (v33)
  {
    v37 = __OFSUB__(HIDWORD(v31), v31);
    v45 = HIDWORD(v31) - v31;
    if (!v37)
    {
      if (v45 >= 1)
      {
        goto LABEL_12;
      }

      goto LABEL_19;
    }

    goto LABEL_59;
  }

  if (!BYTE6(v32))
  {
    goto LABEL_19;
  }

LABEL_12:
  if (![v25 hasType] || (v39 = sub_1004FF754(objc_msgSend(v25, "type")), (v40 & 1) != 0))
  {
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "Message does not have an authentication type", v43, 2u);
    }

    LOBYTE(v125) = 0;
    v44 = 1;
    goto LABEL_23;
  }

  v50 = v39;
  v51 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type;
  *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type] = v39;
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.default.getter();
  v54 = os_log_type_enabled(v52, v53);
  v118 = v51;
  if (v54)
  {
    v55 = swift_slowAlloc();
    v115 = v55;
    v116 = swift_slowAlloc();
    v125 = v116;
    *v55 = 136315138;
    v56 = sub_100027340();
    v117 = v13;
    v58 = v50;
    v59 = v7;
    v60 = sub_10000C4E4(v56, v57, &v125);
    v13 = v117;

    v61 = v115;
    *(v115 + 1) = v60;
    v7 = v59;
    v50 = v58;
    _os_log_impl(&_mh_execute_header, v52, v53, "Authentication Session type: %s", v61, 0xCu);
    sub_10000C60C(v116);
  }

  if (v50 <= 0x16)
  {
    if (((1 << v50) & 0x766580) != 0)
    {
      goto LABEL_30;
    }

    if (((1 << v50) & 0x8000E) != 0)
    {
      v62 = type metadata accessor for SDAuthenticationRangingSession(0);
      v63 = *(v62 + 48);
      v64 = *(v62 + 52);
      swift_allocObject();
      v65 = sub_10042CCA0();
      v66 = *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationAuthSession_rangingSession];
      *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationAuthSession_rangingSession] = v65;

LABEL_30:
      v67 = *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationAuthSession_rangingSession];
      if (!v67)
      {
        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v46, v47))
        {
          goto LABEL_22;
        }

        v48 = swift_slowAlloc();
        *v48 = 0;
        v49 = "Missing ranging session";
        goto LABEL_21;
      }

      v68 = *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationAuthSession_rangingSession];

      v69 = [v25 rangingToken];
      if (!v69)
      {
        v82 = Logger.logObject.getter();
        v83 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v82, v83))
        {
          v84 = swift_slowAlloc();
          *v84 = 0;
          _os_log_impl(&_mh_execute_header, v82, v83, "Message does not have a ranging token", v84, 2u);
        }

        LOBYTE(v125) = 0;
        sub_1004598E8(1);
        goto LABEL_50;
      }

      v115 = v50;
      v70 = v69;
      v71 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v118 = v72;

      v73 = [v25 awdlInfo];
      if (v73)
      {
        v116 = v71;
        v117 = v67;
        v74 = v73;
        v75 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v77 = v76;

        isa = Data._bridgeToObjectiveC()().super.isa;
        v79 = sub_1001114F4(isa);

        if (v79)
        {
          v113 = v75;
          v114 = v77;
          v80 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          if ([v25 hasUnlockDate])
          {
            [v25 unlockDate];
            Date.init(timeIntervalSince1970:)();
            v112 = v80;
            if (v115 - 1 > 0x14)
            {
              v81 = 786431;
            }

            else
            {
              v81 = qword_1008047A0[v115 - 1];
            }

            v101 = v122;
            (*(v122 + 16))(v13 + *(v119 + 20), v124, v123);
            *v13 = v81;
            v102 = type metadata accessor for TaskPriority();
            (*(*(v102 - 8) + 56))(v7, 1, 1, v102);
            v103 = v121;
            sub_100356068(v13, v121);
            v104 = (*(v120 + 80) + 40) & ~*(v120 + 80);
            v105 = (v10 + v104 + 7) & 0xFFFFFFFFFFFFFFF8;
            v106 = (v105 + 15) & 0xFFFFFFFFFFFFFFF8;
            v107 = swift_allocObject();
            v107[2] = 0;
            v107[3] = 0;
            v107[4] = v2;
            sub_100464F60(v103, v107 + v104);
            v108 = v118;
            *(v107 + v105) = v117;
            *(v107 + v106) = v112;
            v109 = (v107 + ((v106 + 15) & 0xFFFFFFFFFFFFFFF8));
            v110 = v116;
            *v109 = v116;
            v109[1] = v108;
            v111 = v2;

            sub_100294008(v110, v108);
            sub_1002B3098(0, 0, v7, &unk_100804778, v107);
            sub_100026AC0(v113, v114);

            sub_100026AC0(v110, v108);

            sub_1003560CC(v13);
            (*(v101 + 8))(v124, v123);
            return;
          }

          v89 = Logger.logObject.getter();
          v90 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v89, v90))
          {
            v91 = swift_slowAlloc();
            *v91 = 0;
            _os_log_impl(&_mh_execute_header, v89, v90, "Message does not have last unlock date", v91, 2u);
          }

          LOBYTE(v125) = 0;
          sub_1004598E8(11);
          sub_100026AC0(v113, v114);
          v88 = v116;
          goto LABEL_49;
        }

        sub_100026AC0(v75, v77);
        v71 = v116;
      }

      v85 = Logger.logObject.getter();
      v86 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        *v87 = 0;
        _os_log_impl(&_mh_execute_header, v85, v86, "Message does not have AWDL info", v87, 2u);
      }

      LOBYTE(v125) = 0;
      sub_1004598E8(1);
      v88 = v71;
LABEL_49:
      sub_100026AC0(v88, v118);
LABEL_50:

      return;
    }
  }

  v92 = v2;
  v93 = Logger.logObject.getter();
  v94 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v125 = v96;
    *v95 = 136315138;
    v97 = *&v2[v118];
    v98 = sub_100027340();
    v100 = sub_10000C4E4(v98, v99, &v125);

    *(v95 + 4) = v100;
    _os_log_impl(&_mh_execute_header, v93, v94, "Authentication type %s does not support handling this message", v95, 0xCu);
    sub_10000C60C(v96);
  }
}

uint64_t sub_1004598E8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v44[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue);
  *v8 = v9;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  v11 = [objc_allocWithZone(SDAuthenticationResponse) init];
  v8 = v11;
  if (v11)
  {
    v12 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationAuthSession_AWDLInfo);
    v13 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationAuthSession_AWDLInfo + 8);
    v14 = v11;
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v14 setAwdlInfo:isa];

    [v14 setVersion:1];
    v16 = v14;
    UUID.uuidString.getter();
    v17 = String._bridgeToObjectiveC()();

    [v16 setSessionID:v17];
  }

  if ((a1 & 0x100000000) == 0)
  {
    [v8 setErrorCode:a1];
  }

  if (!v8 || (v18 = [v8 data]) == 0)
  {
    if (qword_1009738B0 == -1)
    {
LABEL_17:
      v33 = type metadata accessor for Logger();
      sub_10000C4AC(v33, qword_10097EE60);
      v34 = v8;
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        *v37 = 138412290;
        *(v37 + 4) = v34;
        *v38 = v8;
        v39 = v34;
        _os_log_impl(&_mh_execute_header, v35, v36, "Could not convert response to data: %@", v37, 0xCu);
        sub_100005508(v38, &qword_100975400, &qword_1007F65D0);
      }

      v40 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
      swift_beginAccess();
      sub_10000FF90(v2 + v40, v46, &qword_10097A9C8, &unk_1007FDD40);
      if (v47)
      {
        sub_1002A9938(v46, v44);
        sub_100005508(v46, &qword_10097A9C8, &unk_1007FDD40);
        v41 = sub_10002CDC0(v44, v45);
        sub_10045F620(v2, 10, 0, 0xE000000000000000, *v41);

        return sub_10000C60C(v44);
      }

      return sub_100005508(v46, &qword_10097A9C8, &unk_1007FDD40);
    }

LABEL_28:
    swift_once();
    goto LABEL_17;
  }

  v19 = v18;
  v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  if (qword_1009738B0 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_10000C4AC(v23, qword_10097EE60);
  v24 = v8;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    *(v27 + 4) = v24;
    *v28 = v8;
    v29 = v24;
    _os_log_impl(&_mh_execute_header, v25, v26, "Sending authentication response: %@", v27, 0xCu);
    sub_100005508(v28, &qword_100975400, &qword_1007F65D0);
  }

  v30 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
  swift_beginAccess();
  sub_10000FF90(v2 + v30, v46, &qword_10097A9C8, &unk_1007FDD40);
  if (!v47)
  {
    sub_100005508(v46, &qword_10097A9C8, &unk_1007FDD40);
    if ((a1 & 0x100000000) == 0)
    {
      goto LABEL_14;
    }

LABEL_24:
    sub_1004FD4B0(0, 1);

    return sub_100026AC0(v20, v22);
  }

  sub_1002A9938(v46, v44);
  sub_100005508(v46, &qword_10097A9C8, &unk_1007FDD40);
  v31 = *sub_10002CDC0(v44, v45);
  sub_1006D3874(v20, v22, 1u, *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type));
  sub_10000C60C(v44);
  if ((a1 & 0x100000000) != 0)
  {
    goto LABEL_24;
  }

LABEL_14:
  sub_10000FF90(v2 + v30, v46, &qword_10097A9C8, &unk_1007FDD40);
  if (v47)
  {
    sub_1002A9938(v46, v44);
    sub_100005508(v46, &qword_10097A9C8, &unk_1007FDD40);
    v32 = sub_10002CDC0(v44, v45);
    sub_10045F620(v2, a1, 0, 0xE000000000000000, *v32);

    sub_100026AC0(v20, v22);
    return sub_10000C60C(v44);
  }

  sub_100026AC0(v20, v22);
  return sub_100005508(v46, &qword_10097A9C8, &unk_1007FDD40);
}

uint64_t sub_100459F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[46] = a8;
  v8[47] = v17;
  v8[44] = a6;
  v8[45] = a7;
  v8[42] = a4;
  v8[43] = a5;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v8[48] = v9;
  v10 = *(v9 - 8);
  v8[49] = v10;
  v11 = *(v10 + 64) + 15;
  v8[50] = swift_task_alloc();
  v12 = type metadata accessor for DispatchQoS();
  v8[51] = v12;
  v13 = *(v12 - 8);
  v8[52] = v13;
  v14 = *(v13 + 64) + 15;
  v8[53] = swift_task_alloc();

  return _swift_task_switch(sub_10045A0A0, 0, 0);
}

uint64_t sub_10045A0A0()
{
  v1 = v0[42];
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
  swift_beginAccess();
  sub_10000FF90(v1 + v2, (v0 + 20), &qword_10097A9C8, &unk_1007FDD40);
  if (v0[23])
  {
    sub_1002A9938((v0 + 20), (v0 + 25));
    sub_100005508((v0 + 20), &qword_10097A9C8, &unk_1007FDD40);
    v3 = (*sub_10002CDC0(v0 + 25, v0[28]) + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_securityManager);
    swift_beginAccess();
    v4 = *sub_10002CDC0(v3, v3[3]);
    v5 = swift_task_alloc();
    v0[54] = v5;
    *v5 = v0;
    v5[1] = sub_10045A32C;
    v6 = v0[43];

    return sub_100351944(v6);
  }

  else
  {
    sub_100005508((v0 + 20), &qword_10097A9C8, &unk_1007FDD40);
    if (qword_1009738B0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    v0[56] = sub_10000C4AC(v8, qword_10097EE60);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Starting ranging", v11, 2u);
    }

    v12 = swift_task_alloc();
    v0[57] = v12;
    *v12 = v0;
    v12[1] = sub_10045A8A4;
    v13 = v0[46];
    v14 = v0[47];
    v16 = v0[44];
    v15 = v0[45];

    return sub_10042EF1C(v15, v13, v14);
  }
}

uint64_t sub_10045A32C()
{
  v2 = *(*v1 + 432);
  v5 = *v1;
  *(*v1 + 440) = v0;

  if (v0)
  {
    v3 = sub_10045A5A0;
  }

  else
  {
    v3 = sub_10045A440;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10045A440()
{
  sub_10000C60C(v0 + 25);
  if (qword_1009738B0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[56] = sub_10000C4AC(v1, qword_10097EE60);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting ranging", v4, 2u);
  }

  v5 = swift_task_alloc();
  v0[57] = v5;
  *v5 = v0;
  v5[1] = sub_10045A8A4;
  v6 = v0[46];
  v7 = v0[47];
  v9 = v0[44];
  v8 = v0[45];

  return sub_10042EF1C(v8, v6, v7);
}

uint64_t sub_10045A5A0()
{
  sub_10000C60C((v0 + 200));
  *(v0 + 304) = *(v0 + 440);
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  v1 = swift_dynamicCast();
  v2 = *(v0 + 424);
  v4 = *(v0 + 400);
  v3 = *(v0 + 408);
  v30 = v3;
  v31 = *(v0 + 416);
  v6 = *(v0 + 384);
  v5 = *(v0 + 392);
  v7 = *(v0 + 336);
  if (v1)
  {
    v8 = (v0 + 320);
    v9 = (v0 + 64);
    v10 = *(v0 + 288);
    v11 = *(v0 + 296);
    v28 = *&v7[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue];
    v12 = swift_allocObject();
    *(v12 + 16) = v7;
    v13 = &unk_1008E29F8;
    *(v12 + 24) = v10;
    *(v12 + 32) = v11;
    v14 = sub_100465134;
    v15 = 88;
    v16 = 80;
    v17 = 76;
    v18 = 72;
    v19 = 104;
    v20 = 96;
  }

  else
  {
    v9 = (v0 + 16);
    v8 = (v0 + 312);
    v29 = *&v7[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue];
    v18 = 24;
    v12 = swift_allocObject();
    *(v12 + 16) = v7;
    v13 = &unk_1008E29A8;
    v14 = sub_10046512C;
    v15 = 40;
    v16 = 32;
    v17 = 28;
    v19 = 56;
    v20 = 48;
  }

  *(v0 + v20) = v14;
  *(v0 + v19) = v12;
  *v9 = _NSConcreteStackBlock;
  *(v0 + v18) = 1107296256;
  *(v0 + v17) = 0;
  *(v0 + v16) = sub_100011678;
  *(v0 + v15) = v13;
  v21 = _Block_copy(v9);
  v22 = v7;
  static DispatchQoS.unspecified.getter();
  *v8 = _swiftEmptyArrayStorage;
  sub_10001444C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100013EB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);

  (*(v5 + 8))(v4, v6);
  (*(v31 + 8))(v2, v30);
  v23 = *(v0 + v19);

  v24 = *(v0 + 424);
  v25 = *(v0 + 400);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_10045A8A4()
{
  v2 = *(*v1 + 456);
  v5 = *v1;
  *(*v1 + 464) = v0;

  if (v0)
  {
    v3 = sub_10045AC38;
  }

  else
  {
    v3 = sub_10045A9B8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10045A9B8()
{
  v1 = v0[56];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Ranging started", v4, 2u);
  }

  v6 = v0[52];
  v5 = v0[53];
  v7 = v0[50];
  v20 = v0[51];
  v9 = v0[48];
  v8 = v0[49];
  v10 = v0[42];

  v11 = *&v10[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue];
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  v0[18] = sub_100465174;
  v0[19] = v12;
  v0[14] = _NSConcreteStackBlock;
  v0[15] = 1107296256;
  v0[16] = sub_100011678;
  v0[17] = &unk_1008E2A48;
  v13 = _Block_copy(v0 + 14);
  v14 = v10;
  static DispatchQoS.unspecified.getter();
  v0[41] = _swiftEmptyArrayStorage;
  sub_10001444C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100013EB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v5, v20);
  v15 = v0[19];

  v16 = v0[53];
  v17 = v0[50];

  v18 = v0[1];

  return v18();
}

uint64_t sub_10045AC38()
{
  *(v0 + 304) = *(v0 + 464);
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  v1 = swift_dynamicCast();
  v2 = *(v0 + 424);
  v4 = *(v0 + 400);
  v3 = *(v0 + 408);
  v30 = v3;
  v31 = *(v0 + 416);
  v6 = *(v0 + 384);
  v5 = *(v0 + 392);
  v7 = *(v0 + 336);
  if (v1)
  {
    v8 = (v0 + 320);
    v9 = (v0 + 64);
    v10 = *(v0 + 288);
    v11 = *(v0 + 296);
    v28 = *&v7[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue];
    v12 = swift_allocObject();
    *(v12 + 16) = v7;
    v13 = &unk_1008E29F8;
    *(v12 + 24) = v10;
    *(v12 + 32) = v11;
    v14 = sub_100465134;
    v15 = 88;
    v16 = 80;
    v17 = 76;
    v18 = 72;
    v19 = 104;
    v20 = 96;
  }

  else
  {
    v9 = (v0 + 16);
    v8 = (v0 + 312);
    v29 = *&v7[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue];
    v18 = 24;
    v12 = swift_allocObject();
    *(v12 + 16) = v7;
    v13 = &unk_1008E29A8;
    v14 = sub_10046512C;
    v15 = 40;
    v16 = 32;
    v17 = 28;
    v19 = 56;
    v20 = 48;
  }

  *(v0 + v20) = v14;
  *(v0 + v19) = v12;
  *v9 = _NSConcreteStackBlock;
  *(v0 + v18) = 1107296256;
  *(v0 + v17) = 0;
  *(v0 + v16) = sub_100011678;
  *(v0 + v15) = v13;
  v21 = _Block_copy(v9);
  v22 = v7;
  static DispatchQoS.unspecified.getter();
  *v8 = _swiftEmptyArrayStorage;
  sub_10001444C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100013EB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);

  (*(v5 + 8))(v4, v6);
  (*(v31 + 8))(v2, v30);
  v23 = *(v0 + v19);

  v24 = *(v0 + 424);
  v25 = *(v0 + 400);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_10045AF34()
{
  v0 = sub_100010F88(10, 0, 0xE000000000000000);
  sub_100457DFC(v0, v1);
}

void sub_10045AF80(void *a1)
{
  v2 = v1;
  v4 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v78 - v6;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = (&v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue];
  *v12 = v13;
  (*(v9 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v8);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v12, v8);
  if (v13)
  {
    if (qword_1009738B0 == -1)
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
  v15 = type metadata accessor for Logger();
  sub_10000C4AC(v15, qword_10097EE60);
  v16 = a1;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    *(v19 + 4) = v16;
    *v20 = v16;
    v21 = v16;
    _os_log_impl(&_mh_execute_header, v17, v18, "Received authentication response: %@", v19, 0xCu);
    sub_100005508(v20, &qword_100975400, &qword_1007F65D0);
  }

  v22 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type;
  v23 = *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type];
  v24 = v23 > 0x16;
  v25 = (1 << v23) & 0x7E658E;
  if (!v24 && v25 != 0)
  {
    v27 = v2;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v82[0] = v31;
      *v30 = 136315138;
      v32 = *&v2[v22];
      v33 = sub_100027340();
      v35 = sub_10000C4E4(v33, v34, v82);

      *(v30 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v28, v29, "Authentication type %s does not support handling this message", v30, 0xCu);
      sub_10000C60C(v31);
    }

    return;
  }

  sub_1004FDD9C();
  if ([v16 hasErrorCode])
  {
    v36 = [v16 errorCode];
    v37 = 0xD00000000000001CLL;
    v38 = 0x8000000100791870;
LABEL_18:
    v46 = sub_100010F88(v36, v37, v38);
    v48 = v47;
    sub_1000115C8();
    v49 = swift_allocError();
    *v50 = v46;
    *(v50 + 8) = v48;
    swift_willThrow();
LABEL_20:
    v82[2] = v49;
    swift_errorRetain();
    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    if (swift_dynamicCast())
    {
      v55 = LODWORD(v82[0]);
      v56 = v82[1];
    }

    else
    {
      v55 = sub_100010F88(10, 0, 0xE000000000000000);
    }

    sub_100457DFC(v55, v56);

    return;
  }

  v39 = *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary26SDAuthenticationKeySession_aksAuthSession];
  if (!v39)
  {
    v38 = 0x8000000100791830;
    v36 = 10;
    v37 = 0xD000000000000013;
    goto LABEL_18;
  }

  v40 = *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary26SDAuthenticationKeySession_aksAuthSession];

  v41 = [v16 aksToken];
  if (!v41)
  {
    v51 = sub_100010F88(10, 0xD00000000000001FLL, 0x8000000100791850);
    v53 = v52;
    sub_1000115C8();
    v49 = swift_allocError();
    *v54 = v51;
    *(v54 + 8) = v53;
    swift_willThrow();

    goto LABEL_20;
  }

  v42 = v41;
  v43 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v45 = v44;

  sub_100294008(v43, v45);
  v81 = v39;
  sub_100669484(v43, v45);
  v58 = v57;
  v79 = v43;
  v80 = v45;
  sub_100026AC0(v43, v45);
  v59 = v58;
  v60 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v62 = v61;

  v63 = &v2[OBJC_IVAR____TtC16DaemoniOSLibrary26SDAuthenticationKeySession_authToken];
  v64 = *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary26SDAuthenticationKeySession_authToken];
  v65 = *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary26SDAuthenticationKeySession_authToken + 8];
  *v63 = v60;
  v63[1] = v62;
  sub_10028BCC0(v64, v65);
  v66 = [objc_opt_self() standardUserDefaults];
  v67 = String._bridgeToObjectiveC()();
  v68 = [v66 BOOLForKey:v67];

  if ((v68 & 1) != 0 || (v72 = *&v2[v22], (v72 - 1) >= 4) && v72 != 19)
  {
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&_mh_execute_header, v69, v70, "Skipping ranging", v71, 2u);
    }

    LOBYTE(v82[0]) = 1;
    sub_10045B764(0x100000000);

    sub_100026AC0(v79, v80);
  }

  else
  {
    v73 = type metadata accessor for TaskPriority();
    (*(*(v73 - 8) + 56))(v7, 1, 1, v73);
    v74 = swift_allocObject();
    v74[2] = 0;
    v74[3] = 0;
    v75 = v81;
    v74[4] = v16;
    v74[5] = v75;
    v74[6] = v2;
    v76 = v16;
    v77 = v2;

    sub_1002B3098(0, 0, v7, &unk_100804730, v74);
    sub_100026AC0(v79, v80);
  }
}

uint64_t sub_10045B764(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v27 = *(v8 - 8);
  v28 = v8;
  v9 = *(v27 + 64);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(SDAuthenticationToken) init];
  v13 = v12;
  if (v12)
  {
    [v12 setVersion:1];
    v14 = v13;
    UUID.uuidString.getter();
    v15 = String._bridgeToObjectiveC()();

    [v14 setSessionID:v15];

    v16 = *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary26SDAuthenticationKeySession_authToken + 8];
    if (v16 >> 60 == 15)
    {
      v17 = v14;
      isa = 0;
    }

    else
    {
      v19 = *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary26SDAuthenticationKeySession_authToken];
      v20 = v14;
      sub_1002A9924(v19, v16);
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_10028BCC0(v19, v16);
    }

    [v14 setAksToken:isa];
  }

  if ((a1 & 0x100000000) == 0)
  {
    [v13 setErrorCode:a1];
  }

  v21 = *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue];
  v22 = swift_allocObject();
  *(v22 + 16) = v13;
  *(v22 + 24) = v2;
  *(v22 + 32) = a1;
  *(v22 + 36) = BYTE4(a1) & 1;
  aBlock[4] = sub_100464DD0;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008E28B8;
  v23 = _Block_copy(aBlock);
  v24 = v13;
  v25 = v2;
  static DispatchQoS.unspecified.getter();
  v30 = _swiftEmptyArrayStorage;
  sub_10001444C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100013EB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);

  (*(v29 + 8))(v7, v4);
  (*(v27 + 8))(v11, v28);
}

uint64_t sub_10045BB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v6[12] = v7;
  v8 = *(v7 - 8);
  v6[13] = v8;
  v9 = *(v8 + 64) + 15;
  v6[14] = swift_task_alloc();
  v10 = type metadata accessor for DispatchQoS();
  v6[15] = v10;
  v11 = *(v10 - 8);
  v6[16] = v11;
  v12 = *(v11 + 64) + 15;
  v6[17] = swift_task_alloc();

  return _swift_task_switch(sub_10045BC54, 0, 0);
}

uint64_t sub_10045BC54()
{
  v1 = [v0[9] awdlInfo];
  if (!v1)
  {
    goto LABEL_5;
  }

  v2 = v1;
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v0[18] = v3;
  v0[19] = v5;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v7 = sub_1001114F4(isa);

  if (!v7)
  {
    sub_100026AC0(v3, v5);
LABEL_5:
    v12 = sub_100010F88(1, 0xD00000000000001FLL, 0x8000000100791890);
    v14 = v13;
    sub_1000115C8();
    v15 = swift_allocError();
    *v16 = v12;
    *(v16 + 8) = v14;
    swift_willThrow();
    goto LABEL_6;
  }

  v8 = v0[10];
  v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v0[20] = v9;

  v10 = sub_1006696B8();
  v0[21] = v10;
  v0[22] = v11;
  v30 = v10;
  v31 = v11;
  v32 = v0[11];
  sub_10045B764(0x100000000);
  v33 = *(v32 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationAuthSession_rangingSession);
  v0[23] = v33;
  if (v33)
  {

    v34 = swift_task_alloc();
    v0[24] = v34;
    *v34 = v0;
    v34[1] = sub_10045C0E4;

    return sub_10042EF1C(v9, v30, v31);
  }

  v35 = sub_100010F88(10, 0xD000000000000012, 0x80000001007918C0);
  v37 = v36;
  sub_1000115C8();
  v15 = swift_allocError();
  *v38 = v35;
  *(v38 + 8) = v37;
  swift_willThrow();
  sub_100026AC0(v3, v5);
  sub_100026AC0(v30, v31);
LABEL_6:
  v17 = v0[17];
  v18 = v0[14];
  v40 = v0[16];
  v41 = v0[15];
  v19 = v0[12];
  v20 = v0[13];
  v21 = v0[11];
  v39 = *&v21[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue];
  v22 = swift_allocObject();
  *(v22 + 16) = v15;
  *(v22 + 24) = v21;
  v0[6] = sub_100465434;
  v0[7] = v22;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100011678;
  v0[5] = &unk_1008E2868;
  v23 = _Block_copy(v0 + 2);
  swift_errorRetain();
  v24 = v21;
  static DispatchQoS.unspecified.getter();
  v0[8] = _swiftEmptyArrayStorage;
  sub_10001444C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100013EB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);

  (*(v20 + 8))(v18, v19);
  (*(v40 + 8))(v17, v41);
  v25 = v0[7];

  v26 = v0[17];
  v27 = v0[14];

  v28 = v0[1];

  return v28();
}

uint64_t sub_10045C0E4()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = v0;

  v5 = *(v2 + 160);

  if (v0)
  {
    v6 = sub_10045C2B4;
  }

  else
  {
    v6 = sub_10045C218;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10045C218()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v5 = v0[18];
  v4 = v0[19];

  sub_100026AC0(v3, v2);
  sub_100026AC0(v5, v4);
  v6 = v0[17];
  v7 = v0[14];

  v8 = v0[1];

  return v8();
}

uint64_t sub_10045C2B4()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v5 = v0[18];
  v4 = v0[19];

  sub_100026AC0(v3, v2);
  sub_100026AC0(v5, v4);
  v6 = v0[25];
  v7 = v0[17];
  v8 = v0[14];
  v21 = v0[16];
  v22 = v0[15];
  v9 = v0[12];
  v10 = v0[13];
  v11 = v0[11];
  v20 = *&v11[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue];
  v12 = swift_allocObject();
  *(v12 + 16) = v6;
  *(v12 + 24) = v11;
  v0[6] = sub_100465434;
  v0[7] = v12;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100011678;
  v0[5] = &unk_1008E2868;
  v13 = _Block_copy(v0 + 2);
  swift_errorRetain();
  v14 = v11;
  static DispatchQoS.unspecified.getter();
  v0[8] = _swiftEmptyArrayStorage;
  sub_10001444C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100013EB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v10 + 8))(v8, v9);
  (*(v21 + 8))(v7, v22);
  v15 = v0[7];

  v16 = v0[17];
  v17 = v0[14];

  v18 = v0[1];

  return v18();
}

uint64_t sub_10045C508()
{
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  if (swift_dynamicCast())
  {
    v0 = v3;
    v1 = v4;
  }

  else
  {
    v0 = sub_100010F88(10, 0, 0xE000000000000000);
  }

  sub_100457DFC(v0, v1);
}

uint64_t sub_10045C59C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v25[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue);
  *v8 = v9;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    if (qword_1009738B0 == -1)
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
  v11 = type metadata accessor for Logger();
  sub_10000C4AC(v11, qword_10097EE60);
  v12 = a1;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    *(v15 + 4) = v12;
    *v16 = v12;
    v17 = v12;
    _os_log_impl(&_mh_execute_header, v13, v14, "Received confirmation: %@", v15, 0xCu);
    sub_100005508(v16, &qword_100975400, &qword_1007F65D0);
  }

  sub_1004FDD9C();
  if ([v12 success])
  {
    v18 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
    swift_beginAccess();
    sub_10000FF90(v2 + v18, v27, &qword_10097A9C8, &unk_1007FDD40);
    if (v28)
    {
      sub_1002A9938(v27, v25);
      sub_100005508(v27, &qword_10097A9C8, &unk_1007FDD40);
      v19 = sub_10002CDC0(v25, v26);
      sub_1004DE8AC(v2, *v19);
      return sub_10000C60C(v25);
    }
  }

  else
  {
    if ([v12 hasErrorCode])
    {
      v20 = [v12 errorCode];
    }

    else
    {
      v20 = 10;
    }

    v21 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
    swift_beginAccess();
    sub_10000FF90(v2 + v21, v27, &qword_10097A9C8, &unk_1007FDD40);
    if (v28)
    {
      sub_1002A9938(v27, v25);
      sub_100005508(v27, &qword_10097A9C8, &unk_1007FDD40);
      v22 = sub_10002CDC0(v25, v26);
      sub_10045F620(v2, v20, 0xD00000000000001CLL, 0x8000000100791970, *v22);
      return sub_10000C60C(v25);
    }
  }

  return sub_100005508(v27, &qword_10097A9C8, &unk_1007FDD40);
}

uint64_t sub_10045C95C()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (&v21[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue];
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    if (qword_1009738B0 == -1)
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
  v8 = type metadata accessor for Logger();
  sub_10000C4AC(v8, qword_10097EE60);
  v9 = v0;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22[0] = v13;
    *v12 = 136315138;
    type metadata accessor for UUID();
    sub_10001444C(&qword_100978CE0, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = sub_10000C4E4(v14, v15, v22);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "Response timer fired for %s", v12, 0xCu);
    sub_10000C60C(v13);
  }

  v17 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
  swift_beginAccess();
  sub_10000FF90(&v9[v17], v22, &qword_10097A9C8, &unk_1007FDD40);
  if (!v22[3])
  {
    return sub_100005508(v22, &qword_10097A9C8, &unk_1007FDD40);
  }

  sub_1002A9938(v22, v21);
  sub_100005508(v22, &qword_10097A9C8, &unk_1007FDD40);
  v18 = sub_10002CDC0(v21, v21[3]);
  sub_10045F620(v9, 12, 0, 0xE000000000000000, *v18);
  return sub_10000C60C(v21);
}

uint64_t sub_10045CC9C(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v6 = [a1 data];
    if (v6)
    {
      v7 = v6;
      v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      if (qword_1009738B0 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_10000C4AC(v11, qword_10097EE60);
      v12 = a1;
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v13, v14))
      {
        v42 = v11;
        v15 = swift_slowAlloc();
        v16 = a3;
        v17 = v10;
        v18 = v8;
        v19 = swift_slowAlloc();
        *v15 = 138412290;
        *(v15 + 4) = v12;
        *v19 = a1;
        v20 = v12;
        _os_log_impl(&_mh_execute_header, v13, v14, "Sending token: %@", v15, 0xCu);
        sub_100005508(v19, &qword_100975400, &qword_1007F65D0);
        v8 = v18;
        v10 = v17;
        a3 = v16;

        v11 = v42;
      }

      v21 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_peerDevice;
      swift_beginAccess();
      sub_10000FF90(a2 + v21, &v46, &qword_100982080, &unk_1007FDD30);
      if (v47)
      {
        sub_1000121F8(&v46, v48);
        v22 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
        swift_beginAccess();
        sub_10000FF90(a2 + v22, &v46, &qword_10097A9C8, &unk_1007FDD40);
        if (v47)
        {
          sub_1002A9938(&v46, v45);
          sub_100005508(&v46, &qword_10097A9C8, &unk_1007FDD40);
          v23 = *sub_10002CDC0(v45, v45[3]);
          v24 = sub_1004FE08C(*(a2 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type));
          if (qword_100973C48 != -1)
          {
            swift_once();
          }

          sub_10000C4AC(v11, qword_1009895D8);
          v25 = Logger.logObject.getter();
          v26 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v25, v26))
          {
            v43 = v23;
            v27 = swift_slowAlloc();
            v28 = swift_slowAlloc();
            v44 = v28;
            *v27 = 136315138;
            v41 = v8;
            if (v24 <= 2u)
            {
              v29 = 0xEB0000000074656ELL;
              if (v24)
              {
                if (v24 == 1)
                {
                  v29 = 0xE800000000000000;
                  v30 = 0x6C61636F4C736469;
                }

                else
                {
                  v30 = 0x7265746E49736469;
                }
              }

              else
              {
                v29 = 0xEB00000000746E65;
                v30 = 0x674179627261656ELL;
              }
            }

            else if (v24 > 4u)
            {
              if (v24 == 5)
              {
                v30 = 0xD000000000000010;
                v29 = 0x80000001007888E0;
              }

              else
              {
                v29 = 0xED000068746F6F74;
                v30 = 0x65756C4265726F63;
              }
            }

            else if (v24 == 3)
            {
              v29 = 0xE900000000000054;
              v30 = 0x4274726F70706172;
            }

            else
            {
              v29 = 0xEB000000004C4457;
              v30 = 0x4174726F70706172;
            }

            v37 = sub_10000C4E4(v30, v29, &v44);

            *(v27 + 4) = v37;
            _os_log_impl(&_mh_execute_header, v25, v26, "Using transport type %s", v27, 0xCu);
            sub_10000C60C(v28);

            v8 = v41;
            v23 = v43;
          }

          else
          {
          }

          v38 = *(v23 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_transportManager);
          sub_1005CCC7C(v8, v10, v48, 7u, v24);
          sub_10000C60C(v48);
          v36 = v45;
          goto LABEL_35;
        }

        sub_10000C60C(v48);
        sub_100005508(&v46, &qword_10097A9C8, &unk_1007FDD40);
      }

      else
      {
        sub_100005508(&v46, &qword_100982080, &unk_1007FDD30);
        v34 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
        swift_beginAccess();
        sub_10000FF90(a2 + v34, v48, &qword_10097A9C8, &unk_1007FDD40);
        if (v48[3])
        {
          sub_1002A9938(v48, &v46);
          sub_100005508(v48, &qword_10097A9C8, &unk_1007FDD40);
          v35 = *sub_10002CDC0(&v46, v47);
          sub_1006D3874(v8, v10, 7u, *(a2 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type));
          v36 = &v46;
LABEL_35:
          sub_10000C60C(v36);
          goto LABEL_36;
        }

        sub_100005508(v48, &qword_10097A9C8, &unk_1007FDD40);
      }

LABEL_36:
      *(a2 + OBJC_IVAR____TtC16DaemoniOSLibrary26SDAuthenticationKeySession_isConfirmationSent) = 1;
      if ((a3 & 0x100000000) == 0)
      {
        v39 = sub_100010F88(a3, 0, 0xE000000000000000);
        sub_100457DFC(v39, v40);
      }

      sub_1004FD4B0(0, 1);
      return sub_100026AC0(v8, v10);
    }
  }

  v31 = sub_100010F88(10, 0xD000000000000025, 0x80000001007918E0);
  sub_100457DFC(v31, v32);
}

uint64_t sub_10045D320()
{
  sub_100005508(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary26SDAuthenticationKeySession_lastUnlockDate, &qword_10097A7F0, &unk_1007FB600);
  v1 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary26SDAuthenticationKeySession_aksAuthSession);

  v2 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary26SDAuthenticationKeySession_authToken);
  v3 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary26SDAuthenticationKeySession_authToken + 8);

  return sub_10028BCC0(v2, v3);
}

uint64_t type metadata accessor for SDAuthenticationKeySession()
{
  result = qword_10097EEB8;
  if (!qword_10097EEB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10045D448()
{
  sub_1002A6BEC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10045D4F4(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16DaemoniOSLibrary26SDAuthenticationKeySession_lastUnlockDate;
  swift_beginAccess();
  sub_10000C788(a1, v3 + v4, &qword_10097A7F0, &unk_1007FB600);
  return swift_endAccess();
}

uint64_t sub_10045D67C(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t (*a3)(uint64_t (*)(void), uint64_t, uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t *, uint64_t))
{
  v10 = a2;
  v12 = *v5;
  result = a3(a1, a2, *v5);
  if (v6)
  {
    return v7;
  }

  if (v14)
  {
    return *(v12 + 16);
  }

  v7 = result;
  v27 = a1;
  v23 = a4;
  v24 = a5;
  v15 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v17 = (v12 + 16);
    v16 = *(v12 + 16);
    if (v15 == v16)
    {
      return v7;
    }

    v18 = 40 * result + 72;
    while (v15 < v16)
    {
      sub_1002A9938(v12 + v18, v26);
      v19 = v10;
      v20 = v27(v26);
      result = sub_10000C60C(v26);
      if (v20)
      {
        v10 = v19;
      }

      else
      {
        if (v15 == v7)
        {
          v10 = v19;
        }

        else
        {
          if ((v7 & 0x8000000000000000) != 0)
          {
            goto LABEL_23;
          }

          v21 = *v17;
          if (v7 >= v21)
          {
            goto LABEL_24;
          }

          result = sub_1002A9938(v12 + 32 + 40 * v7, v26);
          if (v15 >= v21)
          {
            goto LABEL_25;
          }

          sub_1002A9938(v12 + v18, v25);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v12 = v23(v12);
          }

          v10 = v19;
          v22 = v12 + 40 * v7;
          sub_10000C60C((v22 + 32));
          result = v24(v25, v22 + 32);
          if (v15 >= *(v12 + 16))
          {
            goto LABEL_26;
          }

          sub_10000C60C((v12 + v18));
          result = v24(v26, v12 + v18);
          *v5 = v12;
        }

        ++v7;
      }

      ++v15;
      v17 = (v12 + 16);
      v16 = *(v12 + 16);
      v18 += 40;
      if (v15 == v16)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10045D928(uint64_t a1, uint64_t a2, uint64_t *a3, void (*a4)(void, void), uint64_t a5)
{
  v228 = a3;
  v9 = sub_10028088C(&unk_100976320, &qword_100810410);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v214 = &v213 - v11;
  v12 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v216 = &v213 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v217 = &v213 - v16;
  v17 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v220 = &v213 - v19;
  v232 = type metadata accessor for UUID();
  v227 = *(v232 - 8);
  v20 = *(v227 + 64);
  v21 = __chkstk_darwin(v232);
  v23 = &v213 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v218 = &v213 - v25;
  v26 = __chkstk_darwin(v24);
  v28 = &v213 - v27;
  __chkstk_darwin(v26);
  v231 = &v213 - v29;
  v30 = type metadata accessor for DispatchPredicate();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  v34 = (&v213 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v238 = type metadata accessor for SDAuthenticationPairingLockSession();
  v239 = &off_1008E5AB0;
  v237 = a1;
  v35 = *(a5 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_queue);
  *v34 = v35;
  (*(v31 + 104))(v34, enum case for DispatchPredicate.onQueue(_:), v30);
  v36 = a1;
  v37 = v35;
  LOBYTE(a1) = _dispatchPreconditionTest(_:)();
  (*(v31 + 8))(v34, v30);
  if ((a1 & 1) == 0)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v229 = a5;

  v224 = a2;
  v225 = sub_100010F88(a2, v228, a4);
  a5 = v38;
  if (qword_100973C48 != -1)
  {
LABEL_70:
    swift_once();
  }

  v215 = v23;
  v39 = type metadata accessor for Logger();
  v40 = sub_10000C4AC(v39, qword_1009895D8);
  sub_1002A9938(&v237, &v234);

  v223 = v40;
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.error.getter();

  v43 = os_log_type_enabled(v41, v42);
  v44 = v232;
  v226 = a5;
  v219 = a4;
  if (v43)
  {
    v45 = swift_slowAlloc();
    v222 = swift_slowAlloc();
    v230 = swift_slowAlloc();
    v233[0] = v230;
    *v45 = 136315394;
    v46 = v235;
    v47 = v236;
    sub_10002CDC0(&v234, v235);
    v48 = v231;
    (*(v47 + 32))(v46, v47);
    sub_10001444C(&qword_100978CE0, &type metadata accessor for UUID);
    v49 = dispatch thunk of CustomStringConvertible.description.getter();
    a4 = v50;
    v51 = v227;
    (*(v227 + 8))(v48, v44);
    sub_10000C60C(&v234);
    v52 = sub_10000C4E4(v49, a4, v233);

    *(v45 + 4) = v52;
    *(v45 + 12) = 2112;
    sub_1000115C8();
    swift_allocError();
    *v53 = v225;
    *(v53 + 8) = a5;

    v54 = _swift_stdlib_bridgeErrorToNSError();
    *(v45 + 14) = v54;
    v55 = v222;
    *v222 = v54;
    _os_log_impl(&_mh_execute_header, v41, v42, "Session %s failed with error: %@", v45, 0x16u);
    sub_100005508(v55, &qword_100975400, &qword_1007F65D0);

    sub_10000C60C(v230);
  }

  else
  {

    sub_10000C60C(&v234);
    v51 = v227;
  }

  v56 = v238;
  v57 = v239;
  sub_10002CDC0(&v237, v238);
  v222 = (v57[5])(v56, v57);
  v58 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_lockSessions;
  v59 = v229;
  swift_beginAccess();
  v221 = v58;
  v60 = *&v59[v58];
  v61 = *(v60 + 16);
  v230 = (v51 + 8);

  v62 = v60 + 32;
  v63 = -v61;
  a5 = -1;
  v23 = v231;
  while (v63 + a5 != -1)
  {
    if (++a5 >= *(v60 + 16))
    {
      __break(1u);
      goto LABEL_69;
    }

    v64 = v62 + 40;
    sub_1002A9938(v62, &v234);
    v66 = v235;
    v65 = v236;
    sub_10002CDC0(&v234, v235);
    (*(*(*(v65 + 8) + 8) + 32))(v66);
    v67 = v238;
    v68 = v239;
    sub_10002CDC0(&v237, v238);
    (v68[4])(v67, v68);
    LOBYTE(v65) = static UUID.== infix(_:_:)();
    a4 = *v230;
    v69 = v232;
    (*v230)(v28, v232);
    a4(v23, v69);
    sub_10000C60C(&v234);
    v62 = v64;
    if (v65)
    {
      break;
    }
  }

  __chkstk_darwin(v70);
  *(&v213 - 2) = &v237;
  v71 = v229;
  v72 = v221;
  swift_beginAccess();
  v73 = sub_10045D67C(sub_100465418, (&v213 - 4), sub_1002D8B74, sub_1002D6520, sub_1002AF998);
  v74 = *(*&v71[v72] + 16);
  v75 = v226;
  v76 = v224;
  v77 = v222;
  if (v74 < v73)
  {
    __break(1u);
    goto LABEL_72;
  }

  sub_10057ED58(v73, v74);
  v78 = swift_endAccess();
  __chkstk_darwin(v78);
  *(&v213 - 2) = &v237;
  v79 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_keySessions;
  swift_beginAccess();
  v80 = sub_10045D67C(sub_100465418, (&v213 - 4), sub_1002D8B74, sub_1002D650C, sub_1002AF998);
  v81 = *(*&v71[v79] + 16);
  if (v81 < v80)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  sub_10057EE68(v80, v81);
  v82 = swift_endAccess();
  __chkstk_darwin(v82);
  *(&v213 - 2) = &v237;
  v83 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_pairingKeySessions;
  swift_beginAccess();
  v84 = sub_10045D67C(sub_100465418, (&v213 - 4), sub_1002D8B74, sub_1002D64F8, sub_1002AF998);
  v85 = *(*&v71[v83] + 16);
  if (v85 < v84)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  sub_10057EE90(v84, v85);
  v86 = swift_endAccess();
  __chkstk_darwin(v86);
  *(&v213 - 2) = &v237;
  v87 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_pairingLockSessions;
  swift_beginAccess();
  v88 = sub_10045D67C(sub_100465418, (&v213 - 4), sub_1002D8B74, sub_1002D64E4, sub_1002AF998);
  v89 = *(*&v71[v87] + 16);
  if (v89 >= v88)
  {
    sub_10057EF98(v88, v89);
    swift_endAccess();
    v90 = v238;
    v91 = v239;
    sub_10002CDC0(&v237, v238);
    (v91[11])(v90, v91);
    v92 = v232;
    if (v76 == 5 || v76 == 33)
    {
      v93 = v238;
      v94 = v239;
      sub_10002CDC0(&v237, v238);
      (v94[8])(&v234, v93, v94);
      v95 = v235;
      if (v235)
      {
        v96 = v236;
        sub_10002CDC0(&v234, v235);
        v97 = (*(v96 + 8))(v95, v96);
        v99 = v98;
        sub_10000C60C(&v234);
        if (v99)
        {
          v100 = sub_1004FE068(v77);
          v101 = v231;
          UUID.init()();
          sub_1006A87C8(v100, v97, v99, v101, 0);

          (*v230)(v101, v92);
          goto LABEL_23;
        }
      }

      else
      {
        sub_100005508(&v234, &qword_100982080, &unk_1007FDD30);
      }

      v102 = Logger.logObject.getter();
      v103 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v102, v103))
      {
        v104 = swift_slowAlloc();
        *v104 = 0;
        _os_log_impl(&_mh_execute_header, v102, v103, "Got notEnabled error but coudln't determine who to disable pairing with", v104, 2u);
      }
    }

LABEL_23:
    v105 = type metadata accessor for TaskPriority();
    v106 = v220;
    (*(*(v105 - 8) + 56))(v220, 1, 1, v105);
    sub_1002A9938(&v237, &v234);
    v107 = swift_allocObject();
    *(v107 + 16) = 0;
    *(v107 + 24) = 0;
    *(v107 + 32) = v71;
    sub_1000121F8(&v234, v107 + 40);
    *(v107 + 80) = v76;
    v108 = v219;
    *(v107 + 88) = v228;
    *(v107 + 96) = v108;

    v109 = v71;
    sub_1002B3098(0, 0, v106, &unk_100804760, v107);

    if (v77 == 5)
    {
      if (v76 == 10)
      {
        v133 = v238;
        v134 = v239;
        sub_10002CDC0(&v237, v238);
        (v134[8])(&v234, v133, v134);
        v135 = v235;
        if (v235)
        {
          v136 = v236;
          sub_10002CDC0(&v234, v235);
          v137 = (*(v136 + 8))(v135, v136);
          v139 = v138;
          sub_10000C60C(&v234);
          if (v139)
          {
            swift_beginAccess();
            v140 = v214;
            sub_1002D37FC(v137, v139, v214);
            swift_endAccess();

            sub_100005508(v140, &unk_100976320, &qword_100810410);
            goto LABEL_57;
          }
        }

        else
        {
          sub_100005508(&v234, &qword_100982080, &unk_1007FDD30);
        }

        sub_1002A9938(&v237, &v234);
        v173 = Logger.logObject.getter();
        v174 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v173, v174))
        {
          v175 = swift_slowAlloc();
          v228 = swift_slowAlloc();
          v233[0] = v228;
          *v175 = 136315138;
          v229 = v109;
          v177 = v235;
          v176 = v236;
          sub_10002CDC0(&v234, v235);
          v178 = v231;
          (*(v176 + 32))(v177, v176);
          sub_10001444C(&qword_100978CE0, &type metadata accessor for UUID);
          v179 = dispatch thunk of CustomStringConvertible.description.getter();
          v181 = v180;
          (*v230)(v178, v92);
          sub_10000C60C(&v234);
          v182 = sub_10000C4E4(v179, v181, v233);
          v109 = v229;

          *(v175 + 4) = v182;
          _os_log_impl(&_mh_execute_header, v173, v174, "Could not find peer device for %s", v175, 0xCu);
          sub_10000C60C(v228);
        }

        else
        {

          sub_10000C60C(&v234);
        }
      }

LABEL_57:
      sub_1002A9938(&v237, &v234);
      sub_10028088C(&unk_10097F090, &unk_100804740);
      sub_10028088C(&qword_100974FA0, &unk_100804C70);
      if (swift_dynamicCast() || (sub_1002A9938(&v237, &v234), sub_10028088C(&qword_10097C6B0, &unk_100804750), (swift_dynamicCast() & 1) != 0))
      {
        sub_10000C60C(v233);
        v186 = v238;
        v187 = v239;
        sub_10002CDC0(&v237, v238);
        v188 = v231;
        (v187[4])(v186, v187);
        sub_100695FD8(v188, v225, v75);

        (*v230)(v188, v92);
      }

      else
      {
      }

      v189 = v238;
      v190 = v239;
      sub_10002CDC0(&v237, v238);
      v191 = (v190[5])(v189, v190);
      v192 = SFDeviceClassCodeGet();
      v193 = sub_100027628(v191);
      v194 = sub_10000EF9C(8u, v193);

      if (v194)
      {
        if (!SFDeviceIsRealityDevice())
        {
          return sub_10000C60C(&v237);
        }
      }

      else
      {
        v195 = sub_100027628(v191);
        v196 = sub_10000EF9C(v192, v195);

        if (!v196)
        {
          return sub_10000C60C(&v237);
        }
      }

      v197 = *&v109[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_transportManager];
      v198 = v238;
      v199 = v239;
      sub_10002CDC0(&v237, v238);
      v200 = (v199[5])(v198, v199);
      LOBYTE(v198) = sub_1004FE08C(v200);
      v201 = v238;
      v202 = v239;
      sub_10002CDC0(&v237, v238);
      (v202[8])(&v234, v201, v202);
      v203 = sub_1005CCA8C(v198, &v234);
      v205 = v204;
      ObjectType = swift_getObjectType();
      v207 = (*(v205 + 56))(ObjectType, v205);
      v208 = *(v197 + OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_transportLock);
      v209 = __chkstk_darwin(v207);
      *(&v213 - 4) = v203;
      *(&v213 - 3) = v205;
      *(&v213 - 2) = &v234;
      *(&v213 - 1) = v197;
      __chkstk_darwin(v209);
      *(&v213 - 2) = sub_100465400;
      *(&v213 - 1) = v210;
      os_unfair_lock_lock(v208 + 4);
      sub_1003206A8(v211);
      os_unfair_lock_unlock(v208 + 4);
      swift_unknownObjectRelease();
      sub_100005508(&v234, &qword_100982080, &unk_1007FDD30);
      return sub_10000C60C(&v237);
    }

    if (v77 != 8)
    {
      goto LABEL_57;
    }

    v110 = v238;
    v111 = v239;
    sub_10002CDC0(&v237, v238);
    (v111[8])(&v234, v110, v111);
    v112 = v235;
    v221 = 0;
    if (v235)
    {
      v113 = v236;
      sub_10002CDC0(&v234, v235);
      v114 = (*(v113 + 8))(v112, v113);
      v116 = v115;
      sub_10000C60C(&v234);
      if (v116)
      {
        v117 = Logger.logObject.getter();
        v118 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v117, v118))
        {
          v119 = swift_slowAlloc();
          *v119 = 0;
          _os_log_impl(&_mh_execute_header, v117, v118, "Registration failed, clearing registration date", v119, 2u);
        }

        swift_beginAccess();
        v120 = v109;
        v121 = sub_10056CE1C(&v234, v114, v116);
        v123 = v122;
        v124 = type metadata accessor for RegistrationState(0);
        v125 = *(*(v124 - 8) + 48);
        if (!v125(v123, 1, v124))
        {
          *(v123 + *(v124 + 20)) = 0;
        }

        (v121)(&v234, 0);
        swift_endAccess();
        swift_beginAccess();
        v126 = sub_10056CE1C(&v234, v114, v116);
        v128 = v127;
        if (!v125(v127, 1, v124))
        {
          sub_100005508(v128, &qword_10097A7F0, &unk_1007FB600);
          v129 = type metadata accessor for Date();
          (*(*(v129 - 8) + 56))(v128, 1, 1, v129);
        }

        (v126)(&v234, 0);
        swift_endAccess();

        v92 = v232;
        v130 = v218;
        v131 = v227;
        v132 = v217;
        v109 = v120;
        goto LABEL_43;
      }
    }

    else
    {
      sub_100005508(&v234, &qword_100982080, &unk_1007FDD30);
    }

    sub_1002A9938(&v237, &v234);
    v141 = Logger.logObject.getter();
    v142 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v141, v142))
    {
      v143 = swift_slowAlloc();
      v144 = v109;
      v145 = swift_slowAlloc();
      v233[0] = v145;
      *v143 = 136315138;
      v146 = v235;
      v147 = v236;
      sub_10002CDC0(&v234, v235);
      v148 = v231;
      (*(v147 + 32))(v146, v147);
      sub_10001444C(&qword_100978CE0, &type metadata accessor for UUID);
      v149 = dispatch thunk of CustomStringConvertible.description.getter();
      v151 = v150;
      (*v230)(v148, v92);
      sub_10000C60C(&v234);
      v152 = sub_10000C4E4(v149, v151, v233);

      *(v143 + 4) = v152;
      _os_log_impl(&_mh_execute_header, v141, v142, "Could not find peer device for %s", v143, 0xCu);
      sub_10000C60C(v145);
      v109 = v144;
    }

    else
    {

      sub_10000C60C(&v234);
    }

    v130 = v218;
    v131 = v227;
    v132 = v217;
LABEL_43:
    v153 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_macUnlockPhoneSessionIDThatNeedsArmingUI;
    swift_beginAccess();
    sub_10000FF90(&v109[v153], v132, &unk_100976120, &qword_1007F9260);
    if ((*(v131 + 48))(v132, 1, v92) == 1)
    {
      sub_100005508(v132, &unk_100976120, &qword_1007F9260);
LABEL_56:
      v75 = v226;
      goto LABEL_57;
    }

    (*(v131 + 32))(v130, v132, v92);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v232 = Strong;
      v229 = v109;
      v155 = v215;
      (*(v131 + 16))(v215, v130, v92);
      v156 = Logger.logObject.getter();
      v157 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v156, v157))
      {
        v158 = swift_slowAlloc();
        v159 = swift_slowAlloc();
        v222 = v159;
        v228 = swift_slowAlloc();
        *&v234 = v228;
        *v158 = 138412546;
        type metadata accessor for SFAuthenticationErrorCode(0);
        LODWORD(v223) = v157;
        sub_10001444C(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode);
        swift_allocError();
        v160 = v224;
        *v161 = v224;
        v162 = _swift_stdlib_bridgeErrorToNSError();
        *(v158 + 4) = v162;
        *v159 = v162;
        *(v158 + 12) = 2080;
        sub_10001444C(&qword_100978CE0, &type metadata accessor for UUID);
        v163 = dispatch thunk of CustomStringConvertible.description.getter();
        v165 = v164;
        v166 = *v230;
        (*v230)(v155, v92);
        v167 = sub_10000C4E4(v163, v165, &v234);
        v131 = v227;

        *(v158 + 14) = v167;
        _os_log_impl(&_mh_execute_header, v156, v223, "Calling back to delegate with registration error %@ for sessionID %s", v158, 0x16u);
        sub_100005508(v222, &qword_100975400, &qword_1007F65D0);

        sub_10000C60C(v228);

        v130 = v218;

        v168 = v216;
      }

      else
      {

        v166 = *v230;
        (*v230)(v155, v92);
        v168 = v216;
        v160 = v224;
      }

      v183 = sub_100010F88(v160, 0, 0xE000000000000000);
      v184 = v229;
      sub_100695FD8(v130, v183, v185);
      swift_unknownObjectRelease();

      v166(v130, v92);
      v109 = v184;
      (*(v131 + 56))(v168, 1, 1, v92);
      swift_beginAccess();
      sub_10000C788(v168, &v184[v153], &unk_100976120, &qword_1007F9260);
      swift_endAccess();
      goto LABEL_56;
    }

    v169 = Logger.logObject.getter();
    v170 = static os_log_type_t.error.getter();
    v171 = os_log_type_enabled(v169, v170);
    v75 = v226;
    if (v171)
    {
      v172 = swift_slowAlloc();
      *v172 = 0;
      _os_log_impl(&_mh_execute_header, v169, v170, "Have session that is waiting but no delegate to report it to. This is bad.", v172, 2u);
    }

    (*v230)(v130, v92);
    goto LABEL_57;
  }

LABEL_74:
  __break(1u);
  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t sub_10045F620(uint64_t a1, uint64_t a2, uint64_t *a3, void (*a4)(void, void), uint64_t a5)
{
  v228 = a3;
  v9 = sub_10028088C(&unk_100976320, &qword_100810410);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v214 = &v213 - v11;
  v12 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v216 = &v213 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v217 = &v213 - v16;
  v17 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v220 = &v213 - v19;
  v232 = type metadata accessor for UUID();
  v227 = *(v232 - 8);
  v20 = *(v227 + 64);
  v21 = __chkstk_darwin(v232);
  v23 = &v213 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v218 = &v213 - v25;
  v26 = __chkstk_darwin(v24);
  v28 = &v213 - v27;
  __chkstk_darwin(v26);
  v231 = &v213 - v29;
  v30 = type metadata accessor for DispatchPredicate();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  v34 = (&v213 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v238 = type metadata accessor for SDAuthenticationKeySession();
  v239 = &off_1008E5AB0;
  v237 = a1;
  v35 = *(a5 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_queue);
  *v34 = v35;
  (*(v31 + 104))(v34, enum case for DispatchPredicate.onQueue(_:), v30);
  v36 = a1;
  v37 = v35;
  LOBYTE(a1) = _dispatchPreconditionTest(_:)();
  (*(v31 + 8))(v34, v30);
  if ((a1 & 1) == 0)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v229 = a5;

  v224 = a2;
  v225 = sub_100010F88(a2, v228, a4);
  a5 = v38;
  if (qword_100973C48 != -1)
  {
LABEL_70:
    swift_once();
  }

  v215 = v23;
  v39 = type metadata accessor for Logger();
  v40 = sub_10000C4AC(v39, qword_1009895D8);
  sub_1002A9938(&v237, &v234);

  v223 = v40;
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.error.getter();

  v43 = os_log_type_enabled(v41, v42);
  v44 = v232;
  v226 = a5;
  v219 = a4;
  if (v43)
  {
    v45 = swift_slowAlloc();
    v222 = swift_slowAlloc();
    v230 = swift_slowAlloc();
    v233[0] = v230;
    *v45 = 136315394;
    v46 = v235;
    v47 = v236;
    sub_10002CDC0(&v234, v235);
    v48 = v231;
    (*(v47 + 32))(v46, v47);
    sub_10001444C(&qword_100978CE0, &type metadata accessor for UUID);
    v49 = dispatch thunk of CustomStringConvertible.description.getter();
    a4 = v50;
    v51 = v227;
    (*(v227 + 8))(v48, v44);
    sub_10000C60C(&v234);
    v52 = sub_10000C4E4(v49, a4, v233);

    *(v45 + 4) = v52;
    *(v45 + 12) = 2112;
    sub_1000115C8();
    swift_allocError();
    *v53 = v225;
    *(v53 + 8) = a5;

    v54 = _swift_stdlib_bridgeErrorToNSError();
    *(v45 + 14) = v54;
    v55 = v222;
    *v222 = v54;
    _os_log_impl(&_mh_execute_header, v41, v42, "Session %s failed with error: %@", v45, 0x16u);
    sub_100005508(v55, &qword_100975400, &qword_1007F65D0);

    sub_10000C60C(v230);
  }

  else
  {

    sub_10000C60C(&v234);
    v51 = v227;
  }

  v56 = v238;
  v57 = v239;
  sub_10002CDC0(&v237, v238);
  v222 = (v57[5])(v56, v57);
  v58 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_lockSessions;
  v59 = v229;
  swift_beginAccess();
  v221 = v58;
  v60 = *&v59[v58];
  v61 = *(v60 + 16);
  v230 = (v51 + 8);

  v62 = v60 + 32;
  v63 = -v61;
  a5 = -1;
  v23 = v231;
  while (v63 + a5 != -1)
  {
    if (++a5 >= *(v60 + 16))
    {
      __break(1u);
      goto LABEL_69;
    }

    v64 = v62 + 40;
    sub_1002A9938(v62, &v234);
    v66 = v235;
    v65 = v236;
    sub_10002CDC0(&v234, v235);
    (*(*(*(v65 + 8) + 8) + 32))(v66);
    v67 = v238;
    v68 = v239;
    sub_10002CDC0(&v237, v238);
    (v68[4])(v67, v68);
    LOBYTE(v65) = static UUID.== infix(_:_:)();
    a4 = *v230;
    v69 = v232;
    (*v230)(v28, v232);
    a4(v23, v69);
    sub_10000C60C(&v234);
    v62 = v64;
    if (v65)
    {
      break;
    }
  }

  __chkstk_darwin(v70);
  *(&v213 - 2) = &v237;
  v71 = v229;
  v72 = v221;
  swift_beginAccess();
  v73 = sub_10045D67C(sub_100464DF4, (&v213 - 4), sub_1002D8B74, sub_1002D6520, sub_1002AF998);
  v74 = *(*&v71[v72] + 16);
  v75 = v226;
  v76 = v224;
  v77 = v222;
  if (v74 < v73)
  {
    __break(1u);
    goto LABEL_72;
  }

  sub_10057ED58(v73, v74);
  v78 = swift_endAccess();
  __chkstk_darwin(v78);
  *(&v213 - 2) = &v237;
  v79 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_keySessions;
  swift_beginAccess();
  v80 = sub_10045D67C(sub_100464DF4, (&v213 - 4), sub_1002D8B74, sub_1002D650C, sub_1002AF998);
  v81 = *(*&v71[v79] + 16);
  if (v81 < v80)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  sub_10057EE68(v80, v81);
  v82 = swift_endAccess();
  __chkstk_darwin(v82);
  *(&v213 - 2) = &v237;
  v83 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_pairingKeySessions;
  swift_beginAccess();
  v84 = sub_10045D67C(sub_100464DF4, (&v213 - 4), sub_1002D8B74, sub_1002D64F8, sub_1002AF998);
  v85 = *(*&v71[v83] + 16);
  if (v85 < v84)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  sub_10057EE90(v84, v85);
  v86 = swift_endAccess();
  __chkstk_darwin(v86);
  *(&v213 - 2) = &v237;
  v87 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_pairingLockSessions;
  swift_beginAccess();
  v88 = sub_10045D67C(sub_100464DF4, (&v213 - 4), sub_1002D8B74, sub_1002D64E4, sub_1002AF998);
  v89 = *(*&v71[v87] + 16);
  if (v89 >= v88)
  {
    sub_10057EF98(v88, v89);
    swift_endAccess();
    v90 = v238;
    v91 = v239;
    sub_10002CDC0(&v237, v238);
    (v91[11])(v90, v91);
    v92 = v232;
    if (v76 == 5 || v76 == 33)
    {
      v93 = v238;
      v94 = v239;
      sub_10002CDC0(&v237, v238);
      (v94[8])(&v234, v93, v94);
      v95 = v235;
      if (v235)
      {
        v96 = v236;
        sub_10002CDC0(&v234, v235);
        v97 = (*(v96 + 8))(v95, v96);
        v99 = v98;
        sub_10000C60C(&v234);
        if (v99)
        {
          v100 = sub_1004FE068(v77);
          v101 = v231;
          UUID.init()();
          sub_1006A87C8(v100, v97, v99, v101, 0);

          (*v230)(v101, v92);
          goto LABEL_23;
        }
      }

      else
      {
        sub_100005508(&v234, &qword_100982080, &unk_1007FDD30);
      }

      v102 = Logger.logObject.getter();
      v103 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v102, v103))
      {
        v104 = swift_slowAlloc();
        *v104 = 0;
        _os_log_impl(&_mh_execute_header, v102, v103, "Got notEnabled error but coudln't determine who to disable pairing with", v104, 2u);
      }
    }

LABEL_23:
    v105 = type metadata accessor for TaskPriority();
    v106 = v220;
    (*(*(v105 - 8) + 56))(v220, 1, 1, v105);
    sub_1002A9938(&v237, &v234);
    v107 = swift_allocObject();
    *(v107 + 16) = 0;
    *(v107 + 24) = 0;
    *(v107 + 32) = v71;
    sub_1000121F8(&v234, v107 + 40);
    *(v107 + 80) = v76;
    v108 = v219;
    *(v107 + 88) = v228;
    *(v107 + 96) = v108;

    v109 = v71;
    sub_1002B3098(0, 0, v106, &unk_1008104D0, v107);

    if (v77 == 5)
    {
      if (v76 == 10)
      {
        v133 = v238;
        v134 = v239;
        sub_10002CDC0(&v237, v238);
        (v134[8])(&v234, v133, v134);
        v135 = v235;
        if (v235)
        {
          v136 = v236;
          sub_10002CDC0(&v234, v235);
          v137 = (*(v136 + 8))(v135, v136);
          v139 = v138;
          sub_10000C60C(&v234);
          if (v139)
          {
            swift_beginAccess();
            v140 = v214;
            sub_1002D37FC(v137, v139, v214);
            swift_endAccess();

            sub_100005508(v140, &unk_100976320, &qword_100810410);
            goto LABEL_57;
          }
        }

        else
        {
          sub_100005508(&v234, &qword_100982080, &unk_1007FDD30);
        }

        sub_1002A9938(&v237, &v234);
        v173 = Logger.logObject.getter();
        v174 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v173, v174))
        {
          v175 = swift_slowAlloc();
          v228 = swift_slowAlloc();
          v233[0] = v228;
          *v175 = 136315138;
          v229 = v109;
          v177 = v235;
          v176 = v236;
          sub_10002CDC0(&v234, v235);
          v178 = v231;
          (*(v176 + 32))(v177, v176);
          sub_10001444C(&qword_100978CE0, &type metadata accessor for UUID);
          v179 = dispatch thunk of CustomStringConvertible.description.getter();
          v181 = v180;
          (*v230)(v178, v92);
          sub_10000C60C(&v234);
          v182 = sub_10000C4E4(v179, v181, v233);
          v109 = v229;

          *(v175 + 4) = v182;
          _os_log_impl(&_mh_execute_header, v173, v174, "Could not find peer device for %s", v175, 0xCu);
          sub_10000C60C(v228);
        }

        else
        {

          sub_10000C60C(&v234);
        }
      }

LABEL_57:
      sub_1002A9938(&v237, &v234);
      sub_10028088C(&unk_10097F090, &unk_100804740);
      sub_10028088C(&qword_100974FA0, &unk_100804C70);
      if (swift_dynamicCast() || (sub_1002A9938(&v237, &v234), sub_10028088C(&qword_10097C6B0, &unk_100804750), (swift_dynamicCast() & 1) != 0))
      {
        sub_10000C60C(v233);
        v186 = v238;
        v187 = v239;
        sub_10002CDC0(&v237, v238);
        v188 = v231;
        (v187[4])(v186, v187);
        sub_100695FD8(v188, v225, v75);

        (*v230)(v188, v92);
      }

      else
      {
      }

      v189 = v238;
      v190 = v239;
      sub_10002CDC0(&v237, v238);
      v191 = (v190[5])(v189, v190);
      v192 = SFDeviceClassCodeGet();
      v193 = sub_100027628(v191);
      v194 = sub_10000EF9C(8u, v193);

      if (v194)
      {
        if (!SFDeviceIsRealityDevice())
        {
          return sub_10000C60C(&v237);
        }
      }

      else
      {
        v195 = sub_100027628(v191);
        v196 = sub_10000EF9C(v192, v195);

        if (!v196)
        {
          return sub_10000C60C(&v237);
        }
      }

      v197 = *&v109[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_transportManager];
      v198 = v238;
      v199 = v239;
      sub_10002CDC0(&v237, v238);
      v200 = (v199[5])(v198, v199);
      LOBYTE(v198) = sub_1004FE08C(v200);
      v201 = v238;
      v202 = v239;
      sub_10002CDC0(&v237, v238);
      (v202[8])(&v234, v201, v202);
      v203 = sub_1005CCA8C(v198, &v234);
      v205 = v204;
      ObjectType = swift_getObjectType();
      v207 = (*(v205 + 56))(ObjectType, v205);
      v208 = *(v197 + OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_transportLock);
      v209 = __chkstk_darwin(v207);
      *(&v213 - 4) = v203;
      *(&v213 - 3) = v205;
      *(&v213 - 2) = &v234;
      *(&v213 - 1) = v197;
      __chkstk_darwin(v209);
      *(&v213 - 2) = sub_100464E14;
      *(&v213 - 1) = v210;
      os_unfair_lock_lock(v208 + 4);
      sub_1002F5418(v211);
      os_unfair_lock_unlock(v208 + 4);
      swift_unknownObjectRelease();
      sub_100005508(&v234, &qword_100982080, &unk_1007FDD30);
      return sub_10000C60C(&v237);
    }

    if (v77 != 8)
    {
      goto LABEL_57;
    }

    v110 = v238;
    v111 = v239;
    sub_10002CDC0(&v237, v238);
    (v111[8])(&v234, v110, v111);
    v112 = v235;
    v221 = 0;
    if (v235)
    {
      v113 = v236;
      sub_10002CDC0(&v234, v235);
      v114 = (*(v113 + 8))(v112, v113);
      v116 = v115;
      sub_10000C60C(&v234);
      if (v116)
      {
        v117 = Logger.logObject.getter();
        v118 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v117, v118))
        {
          v119 = swift_slowAlloc();
          *v119 = 0;
          _os_log_impl(&_mh_execute_header, v117, v118, "Registration failed, clearing registration date", v119, 2u);
        }

        swift_beginAccess();
        v120 = v109;
        v121 = sub_10056CE1C(&v234, v114, v116);
        v123 = v122;
        v124 = type metadata accessor for RegistrationState(0);
        v125 = *(*(v124 - 8) + 48);
        if (!v125(v123, 1, v124))
        {
          *(v123 + *(v124 + 20)) = 0;
        }

        (v121)(&v234, 0);
        swift_endAccess();
        swift_beginAccess();
        v126 = sub_10056CE1C(&v234, v114, v116);
        v128 = v127;
        if (!v125(v127, 1, v124))
        {
          sub_100005508(v128, &qword_10097A7F0, &unk_1007FB600);
          v129 = type metadata accessor for Date();
          (*(*(v129 - 8) + 56))(v128, 1, 1, v129);
        }

        (v126)(&v234, 0);
        swift_endAccess();

        v92 = v232;
        v130 = v218;
        v131 = v227;
        v132 = v217;
        v109 = v120;
        goto LABEL_43;
      }
    }

    else
    {
      sub_100005508(&v234, &qword_100982080, &unk_1007FDD30);
    }

    sub_1002A9938(&v237, &v234);
    v141 = Logger.logObject.getter();
    v142 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v141, v142))
    {
      v143 = swift_slowAlloc();
      v144 = v109;
      v145 = swift_slowAlloc();
      v233[0] = v145;
      *v143 = 136315138;
      v146 = v235;
      v147 = v236;
      sub_10002CDC0(&v234, v235);
      v148 = v231;
      (*(v147 + 32))(v146, v147);
      sub_10001444C(&qword_100978CE0, &type metadata accessor for UUID);
      v149 = dispatch thunk of CustomStringConvertible.description.getter();
      v151 = v150;
      (*v230)(v148, v92);
      sub_10000C60C(&v234);
      v152 = sub_10000C4E4(v149, v151, v233);

      *(v143 + 4) = v152;
      _os_log_impl(&_mh_execute_header, v141, v142, "Could not find peer device for %s", v143, 0xCu);
      sub_10000C60C(v145);
      v109 = v144;
    }

    else
    {

      sub_10000C60C(&v234);
    }

    v130 = v218;
    v131 = v227;
    v132 = v217;
LABEL_43:
    v153 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_macUnlockPhoneSessionIDThatNeedsArmingUI;
    swift_beginAccess();
    sub_10000FF90(&v109[v153], v132, &unk_100976120, &qword_1007F9260);
    if ((*(v131 + 48))(v132, 1, v92) == 1)
    {
      sub_100005508(v132, &unk_100976120, &qword_1007F9260);
LABEL_56:
      v75 = v226;
      goto LABEL_57;
    }

    (*(v131 + 32))(v130, v132, v92);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v232 = Strong;
      v229 = v109;
      v155 = v215;
      (*(v131 + 16))(v215, v130, v92);
      v156 = Logger.logObject.getter();
      v157 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v156, v157))
      {
        v158 = swift_slowAlloc();
        v159 = swift_slowAlloc();
        v222 = v159;
        v228 = swift_slowAlloc();
        *&v234 = v228;
        *v158 = 138412546;
        type metadata accessor for SFAuthenticationErrorCode(0);
        LODWORD(v223) = v157;
        sub_10001444C(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode);
        swift_allocError();
        v160 = v224;
        *v161 = v224;
        v162 = _swift_stdlib_bridgeErrorToNSError();
        *(v158 + 4) = v162;
        *v159 = v162;
        *(v158 + 12) = 2080;
        sub_10001444C(&qword_100978CE0, &type metadata accessor for UUID);
        v163 = dispatch thunk of CustomStringConvertible.description.getter();
        v165 = v164;
        v166 = *v230;
        (*v230)(v155, v92);
        v167 = sub_10000C4E4(v163, v165, &v234);
        v131 = v227;

        *(v158 + 14) = v167;
        _os_log_impl(&_mh_execute_header, v156, v223, "Calling back to delegate with registration error %@ for sessionID %s", v158, 0x16u);
        sub_100005508(v222, &qword_100975400, &qword_1007F65D0);

        sub_10000C60C(v228);

        v130 = v218;

        v168 = v216;
      }

      else
      {

        v166 = *v230;
        (*v230)(v155, v92);
        v168 = v216;
        v160 = v224;
      }

      v183 = sub_100010F88(v160, 0, 0xE000000000000000);
      v184 = v229;
      sub_100695FD8(v130, v183, v185);
      swift_unknownObjectRelease();

      v166(v130, v92);
      v109 = v184;
      (*(v131 + 56))(v168, 1, 1, v92);
      swift_beginAccess();
      sub_10000C788(v168, &v184[v153], &unk_100976120, &qword_1007F9260);
      swift_endAccess();
      goto LABEL_56;
    }

    v169 = Logger.logObject.getter();
    v170 = static os_log_type_t.error.getter();
    v171 = os_log_type_enabled(v169, v170);
    v75 = v226;
    if (v171)
    {
      v172 = swift_slowAlloc();
      *v172 = 0;
      _os_log_impl(&_mh_execute_header, v169, v170, "Have session that is waiting but no delegate to report it to. This is bad.", v172, 2u);
    }

    (*v230)(v130, v92);
    goto LABEL_57;
  }

LABEL_74:
  __break(1u);
  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t sub_100461318(uint64_t a1, uint64_t a2, uint64_t *a3, void (*a4)(void, void), uint64_t a5)
{
  v228 = a3;
  v9 = sub_10028088C(&unk_100976320, &qword_100810410);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v214 = &v213 - v11;
  v12 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v216 = &v213 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v217 = &v213 - v16;
  v17 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v220 = &v213 - v19;
  v232 = type metadata accessor for UUID();
  v227 = *(v232 - 8);
  v20 = *(v227 + 64);
  v21 = __chkstk_darwin(v232);
  v23 = &v213 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v218 = &v213 - v25;
  v26 = __chkstk_darwin(v24);
  v28 = &v213 - v27;
  __chkstk_darwin(v26);
  v231 = &v213 - v29;
  v30 = type metadata accessor for DispatchPredicate();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  v34 = (&v213 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v238 = type metadata accessor for SDAuthenticationLockSession(0);
  v239 = &off_1008E5AB0;
  v237 = a1;
  v35 = *(a5 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_queue);
  *v34 = v35;
  (*(v31 + 104))(v34, enum case for DispatchPredicate.onQueue(_:), v30);
  v36 = a1;
  v37 = v35;
  LOBYTE(a1) = _dispatchPreconditionTest(_:)();
  (*(v31 + 8))(v34, v30);
  if ((a1 & 1) == 0)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v229 = a5;

  v224 = a2;
  v225 = sub_100010F88(a2, v228, a4);
  a5 = v38;
  if (qword_100973C48 != -1)
  {
LABEL_70:
    swift_once();
  }

  v215 = v23;
  v39 = type metadata accessor for Logger();
  v40 = sub_10000C4AC(v39, qword_1009895D8);
  sub_1002A9938(&v237, &v234);

  v223 = v40;
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.error.getter();

  v43 = os_log_type_enabled(v41, v42);
  v44 = v232;
  v226 = a5;
  v219 = a4;
  if (v43)
  {
    v45 = swift_slowAlloc();
    v222 = swift_slowAlloc();
    v230 = swift_slowAlloc();
    v233[0] = v230;
    *v45 = 136315394;
    v46 = v235;
    v47 = v236;
    sub_10002CDC0(&v234, v235);
    v48 = v231;
    (*(v47 + 32))(v46, v47);
    sub_10001444C(&qword_100978CE0, &type metadata accessor for UUID);
    v49 = dispatch thunk of CustomStringConvertible.description.getter();
    a4 = v50;
    v51 = v227;
    (*(v227 + 8))(v48, v44);
    sub_10000C60C(&v234);
    v52 = sub_10000C4E4(v49, a4, v233);

    *(v45 + 4) = v52;
    *(v45 + 12) = 2112;
    sub_1000115C8();
    swift_allocError();
    *v53 = v225;
    *(v53 + 8) = a5;

    v54 = _swift_stdlib_bridgeErrorToNSError();
    *(v45 + 14) = v54;
    v55 = v222;
    *v222 = v54;
    _os_log_impl(&_mh_execute_header, v41, v42, "Session %s failed with error: %@", v45, 0x16u);
    sub_100005508(v55, &qword_100975400, &qword_1007F65D0);

    sub_10000C60C(v230);
  }

  else
  {

    sub_10000C60C(&v234);
    v51 = v227;
  }

  v56 = v238;
  v57 = v239;
  sub_10002CDC0(&v237, v238);
  v222 = (v57[5])(v56, v57);
  v58 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_lockSessions;
  v59 = v229;
  swift_beginAccess();
  v221 = v58;
  v60 = *&v59[v58];
  v61 = *(v60 + 16);
  v230 = (v51 + 8);

  v62 = v60 + 32;
  v63 = -v61;
  a5 = -1;
  v23 = v231;
  while (v63 + a5 != -1)
  {
    if (++a5 >= *(v60 + 16))
    {
      __break(1u);
      goto LABEL_69;
    }

    v64 = v62 + 40;
    sub_1002A9938(v62, &v234);
    v66 = v235;
    v65 = v236;
    sub_10002CDC0(&v234, v235);
    (*(*(*(v65 + 8) + 8) + 32))(v66);
    v67 = v238;
    v68 = v239;
    sub_10002CDC0(&v237, v238);
    (v68[4])(v67, v68);
    LOBYTE(v65) = static UUID.== infix(_:_:)();
    a4 = *v230;
    v69 = v232;
    (*v230)(v28, v232);
    a4(v23, v69);
    sub_10000C60C(&v234);
    v62 = v64;
    if (v65)
    {
      break;
    }
  }

  __chkstk_darwin(v70);
  *(&v213 - 2) = &v237;
  v71 = v229;
  v72 = v221;
  swift_beginAccess();
  v73 = sub_10045D67C(sub_100465418, (&v213 - 4), sub_1002D8B74, sub_1002D6520, sub_1002AF998);
  v74 = *(*&v71[v72] + 16);
  v75 = v226;
  v76 = v224;
  v77 = v222;
  if (v74 < v73)
  {
    __break(1u);
    goto LABEL_72;
  }

  sub_10057ED58(v73, v74);
  v78 = swift_endAccess();
  __chkstk_darwin(v78);
  *(&v213 - 2) = &v237;
  v79 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_keySessions;
  swift_beginAccess();
  v80 = sub_10045D67C(sub_100465418, (&v213 - 4), sub_1002D8B74, sub_1002D650C, sub_1002AF998);
  v81 = *(*&v71[v79] + 16);
  if (v81 < v80)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  sub_10057EE68(v80, v81);
  v82 = swift_endAccess();
  __chkstk_darwin(v82);
  *(&v213 - 2) = &v237;
  v83 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_pairingKeySessions;
  swift_beginAccess();
  v84 = sub_10045D67C(sub_100465418, (&v213 - 4), sub_1002D8B74, sub_1002D64F8, sub_1002AF998);
  v85 = *(*&v71[v83] + 16);
  if (v85 < v84)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  sub_10057EE90(v84, v85);
  v86 = swift_endAccess();
  __chkstk_darwin(v86);
  *(&v213 - 2) = &v237;
  v87 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_pairingLockSessions;
  swift_beginAccess();
  v88 = sub_10045D67C(sub_100465418, (&v213 - 4), sub_1002D8B74, sub_1002D64E4, sub_1002AF998);
  v89 = *(*&v71[v87] + 16);
  if (v89 >= v88)
  {
    sub_10057EF98(v88, v89);
    swift_endAccess();
    v90 = v238;
    v91 = v239;
    sub_10002CDC0(&v237, v238);
    (v91[11])(v90, v91);
    v92 = v232;
    if (v76 == 5 || v76 == 33)
    {
      v93 = v238;
      v94 = v239;
      sub_10002CDC0(&v237, v238);
      (v94[8])(&v234, v93, v94);
      v95 = v235;
      if (v235)
      {
        v96 = v236;
        sub_10002CDC0(&v234, v235);
        v97 = (*(v96 + 8))(v95, v96);
        v99 = v98;
        sub_10000C60C(&v234);
        if (v99)
        {
          v100 = sub_1004FE068(v77);
          v101 = v231;
          UUID.init()();
          sub_1006A87C8(v100, v97, v99, v101, 0);

          (*v230)(v101, v92);
          goto LABEL_23;
        }
      }

      else
      {
        sub_100005508(&v234, &qword_100982080, &unk_1007FDD30);
      }

      v102 = Logger.logObject.getter();
      v103 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v102, v103))
      {
        v104 = swift_slowAlloc();
        *v104 = 0;
        _os_log_impl(&_mh_execute_header, v102, v103, "Got notEnabled error but coudln't determine who to disable pairing with", v104, 2u);
      }
    }

LABEL_23:
    v105 = type metadata accessor for TaskPriority();
    v106 = v220;
    (*(*(v105 - 8) + 56))(v220, 1, 1, v105);
    sub_1002A9938(&v237, &v234);
    v107 = swift_allocObject();
    *(v107 + 16) = 0;
    *(v107 + 24) = 0;
    *(v107 + 32) = v71;
    sub_1000121F8(&v234, v107 + 40);
    *(v107 + 80) = v76;
    v108 = v219;
    *(v107 + 88) = v228;
    *(v107 + 96) = v108;

    v109 = v71;
    sub_1002B3098(0, 0, v106, &unk_100804790, v107);

    if (v77 == 5)
    {
      if (v76 == 10)
      {
        v133 = v238;
        v134 = v239;
        sub_10002CDC0(&v237, v238);
        (v134[8])(&v234, v133, v134);
        v135 = v235;
        if (v235)
        {
          v136 = v236;
          sub_10002CDC0(&v234, v235);
          v137 = (*(v136 + 8))(v135, v136);
          v139 = v138;
          sub_10000C60C(&v234);
          if (v139)
          {
            swift_beginAccess();
            v140 = v214;
            sub_1002D37FC(v137, v139, v214);
            swift_endAccess();

            sub_100005508(v140, &unk_100976320, &qword_100810410);
            goto LABEL_57;
          }
        }

        else
        {
          sub_100005508(&v234, &qword_100982080, &unk_1007FDD30);
        }

        sub_1002A9938(&v237, &v234);
        v173 = Logger.logObject.getter();
        v174 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v173, v174))
        {
          v175 = swift_slowAlloc();
          v228 = swift_slowAlloc();
          v233[0] = v228;
          *v175 = 136315138;
          v229 = v109;
          v177 = v235;
          v176 = v236;
          sub_10002CDC0(&v234, v235);
          v178 = v231;
          (*(v176 + 32))(v177, v176);
          sub_10001444C(&qword_100978CE0, &type metadata accessor for UUID);
          v179 = dispatch thunk of CustomStringConvertible.description.getter();
          v181 = v180;
          (*v230)(v178, v92);
          sub_10000C60C(&v234);
          v182 = sub_10000C4E4(v179, v181, v233);
          v109 = v229;

          *(v175 + 4) = v182;
          _os_log_impl(&_mh_execute_header, v173, v174, "Could not find peer device for %s", v175, 0xCu);
          sub_10000C60C(v228);
        }

        else
        {

          sub_10000C60C(&v234);
        }
      }

LABEL_57:
      sub_1002A9938(&v237, &v234);
      sub_10028088C(&unk_10097F090, &unk_100804740);
      sub_10028088C(&qword_100974FA0, &unk_100804C70);
      if (swift_dynamicCast() || (sub_1002A9938(&v237, &v234), sub_10028088C(&qword_10097C6B0, &unk_100804750), (swift_dynamicCast() & 1) != 0))
      {
        sub_10000C60C(v233);
        v186 = v238;
        v187 = v239;
        sub_10002CDC0(&v237, v238);
        v188 = v231;
        (v187[4])(v186, v187);
        sub_100695FD8(v188, v225, v75);

        (*v230)(v188, v92);
      }

      else
      {
      }

      v189 = v238;
      v190 = v239;
      sub_10002CDC0(&v237, v238);
      v191 = (v190[5])(v189, v190);
      v192 = SFDeviceClassCodeGet();
      v193 = sub_100027628(v191);
      v194 = sub_10000EF9C(8u, v193);

      if (v194)
      {
        if (!SFDeviceIsRealityDevice())
        {
          return sub_10000C60C(&v237);
        }
      }

      else
      {
        v195 = sub_100027628(v191);
        v196 = sub_10000EF9C(v192, v195);

        if (!v196)
        {
          return sub_10000C60C(&v237);
        }
      }

      v197 = *&v109[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_transportManager];
      v198 = v238;
      v199 = v239;
      sub_10002CDC0(&v237, v238);
      v200 = (v199[5])(v198, v199);
      LOBYTE(v198) = sub_1004FE08C(v200);
      v201 = v238;
      v202 = v239;
      sub_10002CDC0(&v237, v238);
      (v202[8])(&v234, v201, v202);
      v203 = sub_1005CCA8C(v198, &v234);
      v205 = v204;
      ObjectType = swift_getObjectType();
      v207 = (*(v205 + 56))(ObjectType, v205);
      v208 = *(v197 + OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_transportLock);
      v209 = __chkstk_darwin(v207);
      *(&v213 - 4) = v203;
      *(&v213 - 3) = v205;
      *(&v213 - 2) = &v234;
      *(&v213 - 1) = v197;
      __chkstk_darwin(v209);
      *(&v213 - 2) = sub_100465400;
      *(&v213 - 1) = v210;
      os_unfair_lock_lock(v208 + 4);
      sub_1003206A8(v211);
      os_unfair_lock_unlock(v208 + 4);
      swift_unknownObjectRelease();
      sub_100005508(&v234, &qword_100982080, &unk_1007FDD30);
      return sub_10000C60C(&v237);
    }

    if (v77 != 8)
    {
      goto LABEL_57;
    }

    v110 = v238;
    v111 = v239;
    sub_10002CDC0(&v237, v238);
    (v111[8])(&v234, v110, v111);
    v112 = v235;
    v221 = 0;
    if (v235)
    {
      v113 = v236;
      sub_10002CDC0(&v234, v235);
      v114 = (*(v113 + 8))(v112, v113);
      v116 = v115;
      sub_10000C60C(&v234);
      if (v116)
      {
        v117 = Logger.logObject.getter();
        v118 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v117, v118))
        {
          v119 = swift_slowAlloc();
          *v119 = 0;
          _os_log_impl(&_mh_execute_header, v117, v118, "Registration failed, clearing registration date", v119, 2u);
        }

        swift_beginAccess();
        v120 = v109;
        v121 = sub_10056CE1C(&v234, v114, v116);
        v123 = v122;
        v124 = type metadata accessor for RegistrationState(0);
        v125 = *(*(v124 - 8) + 48);
        if (!v125(v123, 1, v124))
        {
          *(v123 + *(v124 + 20)) = 0;
        }

        (v121)(&v234, 0);
        swift_endAccess();
        swift_beginAccess();
        v126 = sub_10056CE1C(&v234, v114, v116);
        v128 = v127;
        if (!v125(v127, 1, v124))
        {
          sub_100005508(v128, &qword_10097A7F0, &unk_1007FB600);
          v129 = type metadata accessor for Date();
          (*(*(v129 - 8) + 56))(v128, 1, 1, v129);
        }

        (v126)(&v234, 0);
        swift_endAccess();

        v92 = v232;
        v130 = v218;
        v131 = v227;
        v132 = v217;
        v109 = v120;
        goto LABEL_43;
      }
    }

    else
    {
      sub_100005508(&v234, &qword_100982080, &unk_1007FDD30);
    }

    sub_1002A9938(&v237, &v234);
    v141 = Logger.logObject.getter();
    v142 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v141, v142))
    {
      v143 = swift_slowAlloc();
      v144 = v109;
      v145 = swift_slowAlloc();
      v233[0] = v145;
      *v143 = 136315138;
      v146 = v235;
      v147 = v236;
      sub_10002CDC0(&v234, v235);
      v148 = v231;
      (*(v147 + 32))(v146, v147);
      sub_10001444C(&qword_100978CE0, &type metadata accessor for UUID);
      v149 = dispatch thunk of CustomStringConvertible.description.getter();
      v151 = v150;
      (*v230)(v148, v92);
      sub_10000C60C(&v234);
      v152 = sub_10000C4E4(v149, v151, v233);

      *(v143 + 4) = v152;
      _os_log_impl(&_mh_execute_header, v141, v142, "Could not find peer device for %s", v143, 0xCu);
      sub_10000C60C(v145);
      v109 = v144;
    }

    else
    {

      sub_10000C60C(&v234);
    }

    v130 = v218;
    v131 = v227;
    v132 = v217;
LABEL_43:
    v153 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_macUnlockPhoneSessionIDThatNeedsArmingUI;
    swift_beginAccess();
    sub_10000FF90(&v109[v153], v132, &unk_100976120, &qword_1007F9260);
    if ((*(v131 + 48))(v132, 1, v92) == 1)
    {
      sub_100005508(v132, &unk_100976120, &qword_1007F9260);
LABEL_56:
      v75 = v226;
      goto LABEL_57;
    }

    (*(v131 + 32))(v130, v132, v92);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v232 = Strong;
      v229 = v109;
      v155 = v215;
      (*(v131 + 16))(v215, v130, v92);
      v156 = Logger.logObject.getter();
      v157 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v156, v157))
      {
        v158 = swift_slowAlloc();
        v159 = swift_slowAlloc();
        v222 = v159;
        v228 = swift_slowAlloc();
        *&v234 = v228;
        *v158 = 138412546;
        type metadata accessor for SFAuthenticationErrorCode(0);
        LODWORD(v223) = v157;
        sub_10001444C(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode);
        swift_allocError();
        v160 = v224;
        *v161 = v224;
        v162 = _swift_stdlib_bridgeErrorToNSError();
        *(v158 + 4) = v162;
        *v159 = v162;
        *(v158 + 12) = 2080;
        sub_10001444C(&qword_100978CE0, &type metadata accessor for UUID);
        v163 = dispatch thunk of CustomStringConvertible.description.getter();
        v165 = v164;
        v166 = *v230;
        (*v230)(v155, v92);
        v167 = sub_10000C4E4(v163, v165, &v234);
        v131 = v227;

        *(v158 + 14) = v167;
        _os_log_impl(&_mh_execute_header, v156, v223, "Calling back to delegate with registration error %@ for sessionID %s", v158, 0x16u);
        sub_100005508(v222, &qword_100975400, &qword_1007F65D0);

        sub_10000C60C(v228);

        v130 = v218;

        v168 = v216;
      }

      else
      {

        v166 = *v230;
        (*v230)(v155, v92);
        v168 = v216;
        v160 = v224;
      }

      v183 = sub_100010F88(v160, 0, 0xE000000000000000);
      v184 = v229;
      sub_100695FD8(v130, v183, v185);
      swift_unknownObjectRelease();

      v166(v130, v92);
      v109 = v184;
      (*(v131 + 56))(v168, 1, 1, v92);
      swift_beginAccess();
      sub_10000C788(v168, &v184[v153], &unk_100976120, &qword_1007F9260);
      swift_endAccess();
      goto LABEL_56;
    }

    v169 = Logger.logObject.getter();
    v170 = static os_log_type_t.error.getter();
    v171 = os_log_type_enabled(v169, v170);
    v75 = v226;
    if (v171)
    {
      v172 = swift_slowAlloc();
      *v172 = 0;
      _os_log_impl(&_mh_execute_header, v169, v170, "Have session that is waiting but no delegate to report it to. This is bad.", v172, 2u);
    }

    (*v230)(v130, v92);
    goto LABEL_57;
  }

LABEL_74:
  __break(1u);
  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t sub_100463010(uint64_t a1, uint64_t a2, uint64_t *a3, void (*a4)(void, void), uint64_t a5)
{
  v228 = a3;
  v9 = sub_10028088C(&unk_100976320, &qword_100810410);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v214 = &v213 - v11;
  v12 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v216 = &v213 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v217 = &v213 - v16;
  v17 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v220 = &v213 - v19;
  v232 = type metadata accessor for UUID();
  v227 = *(v232 - 8);
  v20 = *(v227 + 64);
  v21 = __chkstk_darwin(v232);
  v23 = &v213 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v218 = &v213 - v25;
  v26 = __chkstk_darwin(v24);
  v28 = &v213 - v27;
  __chkstk_darwin(v26);
  v231 = &v213 - v29;
  v30 = type metadata accessor for DispatchPredicate();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  v34 = (&v213 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v238 = type metadata accessor for SDAuthenticationPairingKeySession();
  v239 = &off_1008E5AB0;
  v237 = a1;
  v35 = *(a5 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_queue);
  *v34 = v35;
  (*(v31 + 104))(v34, enum case for DispatchPredicate.onQueue(_:), v30);
  v36 = a1;
  v37 = v35;
  LOBYTE(a1) = _dispatchPreconditionTest(_:)();
  (*(v31 + 8))(v34, v30);
  if ((a1 & 1) == 0)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v229 = a5;

  v224 = a2;
  v225 = sub_100010F88(a2, v228, a4);
  a5 = v38;
  if (qword_100973C48 != -1)
  {
LABEL_70:
    swift_once();
  }

  v215 = v23;
  v39 = type metadata accessor for Logger();
  v40 = sub_10000C4AC(v39, qword_1009895D8);
  sub_1002A9938(&v237, &v234);

  v223 = v40;
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.error.getter();

  v43 = os_log_type_enabled(v41, v42);
  v44 = v232;
  v226 = a5;
  v219 = a4;
  if (v43)
  {
    v45 = swift_slowAlloc();
    v222 = swift_slowAlloc();
    v230 = swift_slowAlloc();
    v233[0] = v230;
    *v45 = 136315394;
    v46 = v235;
    v47 = v236;
    sub_10002CDC0(&v234, v235);
    v48 = v231;
    (*(v47 + 32))(v46, v47);
    sub_10001444C(&qword_100978CE0, &type metadata accessor for UUID);
    v49 = dispatch thunk of CustomStringConvertible.description.getter();
    a4 = v50;
    v51 = v227;
    (*(v227 + 8))(v48, v44);
    sub_10000C60C(&v234);
    v52 = sub_10000C4E4(v49, a4, v233);

    *(v45 + 4) = v52;
    *(v45 + 12) = 2112;
    sub_1000115C8();
    swift_allocError();
    *v53 = v225;
    *(v53 + 8) = a5;

    v54 = _swift_stdlib_bridgeErrorToNSError();
    *(v45 + 14) = v54;
    v55 = v222;
    *v222 = v54;
    _os_log_impl(&_mh_execute_header, v41, v42, "Session %s failed with error: %@", v45, 0x16u);
    sub_100005508(v55, &qword_100975400, &qword_1007F65D0);

    sub_10000C60C(v230);
  }

  else
  {

    sub_10000C60C(&v234);
    v51 = v227;
  }

  v56 = v238;
  v57 = v239;
  sub_10002CDC0(&v237, v238);
  v222 = (v57[5])(v56, v57);
  v58 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_lockSessions;
  v59 = v229;
  swift_beginAccess();
  v221 = v58;
  v60 = *&v59[v58];
  v61 = *(v60 + 16);
  v230 = (v51 + 8);

  v62 = v60 + 32;
  v63 = -v61;
  a5 = -1;
  v23 = v231;
  while (v63 + a5 != -1)
  {
    if (++a5 >= *(v60 + 16))
    {
      __break(1u);
      goto LABEL_69;
    }

    v64 = v62 + 40;
    sub_1002A9938(v62, &v234);
    v66 = v235;
    v65 = v236;
    sub_10002CDC0(&v234, v235);
    (*(*(*(v65 + 8) + 8) + 32))(v66);
    v67 = v238;
    v68 = v239;
    sub_10002CDC0(&v237, v238);
    (v68[4])(v67, v68);
    LOBYTE(v65) = static UUID.== infix(_:_:)();
    a4 = *v230;
    v69 = v232;
    (*v230)(v28, v232);
    a4(v23, v69);
    sub_10000C60C(&v234);
    v62 = v64;
    if (v65)
    {
      break;
    }
  }

  __chkstk_darwin(v70);
  *(&v213 - 2) = &v237;
  v71 = v229;
  v72 = v221;
  swift_beginAccess();
  v73 = sub_10045D67C(sub_100465418, (&v213 - 4), sub_1002D8B74, sub_1002D6520, sub_1002AF998);
  v74 = *(*&v71[v72] + 16);
  v75 = v226;
  v76 = v224;
  v77 = v222;
  if (v74 < v73)
  {
    __break(1u);
    goto LABEL_72;
  }

  sub_10057ED58(v73, v74);
  v78 = swift_endAccess();
  __chkstk_darwin(v78);
  *(&v213 - 2) = &v237;
  v79 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_keySessions;
  swift_beginAccess();
  v80 = sub_10045D67C(sub_100465418, (&v213 - 4), sub_1002D8B74, sub_1002D650C, sub_1002AF998);
  v81 = *(*&v71[v79] + 16);
  if (v81 < v80)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  sub_10057EE68(v80, v81);
  v82 = swift_endAccess();
  __chkstk_darwin(v82);
  *(&v213 - 2) = &v237;
  v83 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_pairingKeySessions;
  swift_beginAccess();
  v84 = sub_10045D67C(sub_100465418, (&v213 - 4), sub_1002D8B74, sub_1002D64F8, sub_1002AF998);
  v85 = *(*&v71[v83] + 16);
  if (v85 < v84)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  sub_10057EE90(v84, v85);
  v86 = swift_endAccess();
  __chkstk_darwin(v86);
  *(&v213 - 2) = &v237;
  v87 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_pairingLockSessions;
  swift_beginAccess();
  v88 = sub_10045D67C(sub_100465418, (&v213 - 4), sub_1002D8B74, sub_1002D64E4, sub_1002AF998);
  v89 = *(*&v71[v87] + 16);
  if (v89 >= v88)
  {
    sub_10057EF98(v88, v89);
    swift_endAccess();
    v90 = v238;
    v91 = v239;
    sub_10002CDC0(&v237, v238);
    (v91[11])(v90, v91);
    v92 = v232;
    if (v76 == 5 || v76 == 33)
    {
      v93 = v238;
      v94 = v239;
      sub_10002CDC0(&v237, v238);
      (v94[8])(&v234, v93, v94);
      v95 = v235;
      if (v235)
      {
        v96 = v236;
        sub_10002CDC0(&v234, v235);
        v97 = (*(v96 + 8))(v95, v96);
        v99 = v98;
        sub_10000C60C(&v234);
        if (v99)
        {
          v100 = sub_1004FE068(v77);
          v101 = v231;
          UUID.init()();
          sub_1006A87C8(v100, v97, v99, v101, 0);

          (*v230)(v101, v92);
          goto LABEL_23;
        }
      }

      else
      {
        sub_100005508(&v234, &qword_100982080, &unk_1007FDD30);
      }

      v102 = Logger.logObject.getter();
      v103 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v102, v103))
      {
        v104 = swift_slowAlloc();
        *v104 = 0;
        _os_log_impl(&_mh_execute_header, v102, v103, "Got notEnabled error but coudln't determine who to disable pairing with", v104, 2u);
      }
    }

LABEL_23:
    v105 = type metadata accessor for TaskPriority();
    v106 = v220;
    (*(*(v105 - 8) + 56))(v220, 1, 1, v105);
    sub_1002A9938(&v237, &v234);
    v107 = swift_allocObject();
    *(v107 + 16) = 0;
    *(v107 + 24) = 0;
    *(v107 + 32) = v71;
    sub_1000121F8(&v234, v107 + 40);
    *(v107 + 80) = v76;
    v108 = v219;
    *(v107 + 88) = v228;
    *(v107 + 96) = v108;

    v109 = v71;
    sub_1002B3098(0, 0, v106, &unk_100804768, v107);

    if (v77 == 5)
    {
      if (v76 == 10)
      {
        v133 = v238;
        v134 = v239;
        sub_10002CDC0(&v237, v238);
        (v134[8])(&v234, v133, v134);
        v135 = v235;
        if (v235)
        {
          v136 = v236;
          sub_10002CDC0(&v234, v235);
          v137 = (*(v136 + 8))(v135, v136);
          v139 = v138;
          sub_10000C60C(&v234);
          if (v139)
          {
            swift_beginAccess();
            v140 = v214;
            sub_1002D37FC(v137, v139, v214);
            swift_endAccess();

            sub_100005508(v140, &unk_100976320, &qword_100810410);
            goto LABEL_57;
          }
        }

        else
        {
          sub_100005508(&v234, &qword_100982080, &unk_1007FDD30);
        }

        sub_1002A9938(&v237, &v234);
        v173 = Logger.logObject.getter();
        v174 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v173, v174))
        {
          v175 = swift_slowAlloc();
          v228 = swift_slowAlloc();
          v233[0] = v228;
          *v175 = 136315138;
          v229 = v109;
          v177 = v235;
          v176 = v236;
          sub_10002CDC0(&v234, v235);
          v178 = v231;
          (*(v176 + 32))(v177, v176);
          sub_10001444C(&qword_100978CE0, &type metadata accessor for UUID);
          v179 = dispatch thunk of CustomStringConvertible.description.getter();
          v181 = v180;
          (*v230)(v178, v92);
          sub_10000C60C(&v234);
          v182 = sub_10000C4E4(v179, v181, v233);
          v109 = v229;

          *(v175 + 4) = v182;
          _os_log_impl(&_mh_execute_header, v173, v174, "Could not find peer device for %s", v175, 0xCu);
          sub_10000C60C(v228);
        }

        else
        {

          sub_10000C60C(&v234);
        }
      }

LABEL_57:
      sub_1002A9938(&v237, &v234);
      sub_10028088C(&unk_10097F090, &unk_100804740);
      sub_10028088C(&qword_100974FA0, &unk_100804C70);
      if (swift_dynamicCast() || (sub_1002A9938(&v237, &v234), sub_10028088C(&qword_10097C6B0, &unk_100804750), (swift_dynamicCast() & 1) != 0))
      {
        sub_10000C60C(v233);
        v186 = v238;
        v187 = v239;
        sub_10002CDC0(&v237, v238);
        v188 = v231;
        (v187[4])(v186, v187);
        sub_100695FD8(v188, v225, v75);

        (*v230)(v188, v92);
      }

      else
      {
      }

      v189 = v238;
      v190 = v239;
      sub_10002CDC0(&v237, v238);
      v191 = (v190[5])(v189, v190);
      v192 = SFDeviceClassCodeGet();
      v193 = sub_100027628(v191);
      v194 = sub_10000EF9C(8u, v193);

      if (v194)
      {
        if (!SFDeviceIsRealityDevice())
        {
          return sub_10000C60C(&v237);
        }
      }

      else
      {
        v195 = sub_100027628(v191);
        v196 = sub_10000EF9C(v192, v195);

        if (!v196)
        {
          return sub_10000C60C(&v237);
        }
      }

      v197 = *&v109[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_transportManager];
      v198 = v238;
      v199 = v239;
      sub_10002CDC0(&v237, v238);
      v200 = (v199[5])(v198, v199);
      LOBYTE(v198) = sub_1004FE08C(v200);
      v201 = v238;
      v202 = v239;
      sub_10002CDC0(&v237, v238);
      (v202[8])(&v234, v201, v202);
      v203 = sub_1005CCA8C(v198, &v234);
      v205 = v204;
      ObjectType = swift_getObjectType();
      v207 = (*(v205 + 56))(ObjectType, v205);
      v208 = *(v197 + OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_transportLock);
      v209 = __chkstk_darwin(v207);
      *(&v213 - 4) = v203;
      *(&v213 - 3) = v205;
      *(&v213 - 2) = &v234;
      *(&v213 - 1) = v197;
      __chkstk_darwin(v209);
      *(&v213 - 2) = sub_100465400;
      *(&v213 - 1) = v210;
      os_unfair_lock_lock(v208 + 4);
      sub_1003206A8(v211);
      os_unfair_lock_unlock(v208 + 4);
      swift_unknownObjectRelease();
      sub_100005508(&v234, &qword_100982080, &unk_1007FDD30);
      return sub_10000C60C(&v237);
    }

    if (v77 != 8)
    {
      goto LABEL_57;
    }

    v110 = v238;
    v111 = v239;
    sub_10002CDC0(&v237, v238);
    (v111[8])(&v234, v110, v111);
    v112 = v235;
    v221 = 0;
    if (v235)
    {
      v113 = v236;
      sub_10002CDC0(&v234, v235);
      v114 = (*(v113 + 8))(v112, v113);
      v116 = v115;
      sub_10000C60C(&v234);
      if (v116)
      {
        v117 = Logger.logObject.getter();
        v118 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v117, v118))
        {
          v119 = swift_slowAlloc();
          *v119 = 0;
          _os_log_impl(&_mh_execute_header, v117, v118, "Registration failed, clearing registration date", v119, 2u);
        }

        swift_beginAccess();
        v120 = v109;
        v121 = sub_10056CE1C(&v234, v114, v116);
        v123 = v122;
        v124 = type metadata accessor for RegistrationState(0);
        v125 = *(*(v124 - 8) + 48);
        if (!v125(v123, 1, v124))
        {
          *(v123 + *(v124 + 20)) = 0;
        }

        (v121)(&v234, 0);
        swift_endAccess();
        swift_beginAccess();
        v126 = sub_10056CE1C(&v234, v114, v116);
        v128 = v127;
        if (!v125(v127, 1, v124))
        {
          sub_100005508(v128, &qword_10097A7F0, &unk_1007FB600);
          v129 = type metadata accessor for Date();
          (*(*(v129 - 8) + 56))(v128, 1, 1, v129);
        }

        (v126)(&v234, 0);
        swift_endAccess();

        v92 = v232;
        v130 = v218;
        v131 = v227;
        v132 = v217;
        v109 = v120;
        goto LABEL_43;
      }
    }

    else
    {
      sub_100005508(&v234, &qword_100982080, &unk_1007FDD30);
    }

    sub_1002A9938(&v237, &v234);
    v141 = Logger.logObject.getter();
    v142 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v141, v142))
    {
      v143 = swift_slowAlloc();
      v144 = v109;
      v145 = swift_slowAlloc();
      v233[0] = v145;
      *v143 = 136315138;
      v146 = v235;
      v147 = v236;
      sub_10002CDC0(&v234, v235);
      v148 = v231;
      (*(v147 + 32))(v146, v147);
      sub_10001444C(&qword_100978CE0, &type metadata accessor for UUID);
      v149 = dispatch thunk of CustomStringConvertible.description.getter();
      v151 = v150;
      (*v230)(v148, v92);
      sub_10000C60C(&v234);
      v152 = sub_10000C4E4(v149, v151, v233);

      *(v143 + 4) = v152;
      _os_log_impl(&_mh_execute_header, v141, v142, "Could not find peer device for %s", v143, 0xCu);
      sub_10000C60C(v145);
      v109 = v144;
    }

    else
    {

      sub_10000C60C(&v234);
    }

    v130 = v218;
    v131 = v227;
    v132 = v217;
LABEL_43:
    v153 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_macUnlockPhoneSessionIDThatNeedsArmingUI;
    swift_beginAccess();
    sub_10000FF90(&v109[v153], v132, &unk_100976120, &qword_1007F9260);
    if ((*(v131 + 48))(v132, 1, v92) == 1)
    {
      sub_100005508(v132, &unk_100976120, &qword_1007F9260);
LABEL_56:
      v75 = v226;
      goto LABEL_57;
    }

    (*(v131 + 32))(v130, v132, v92);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v232 = Strong;
      v229 = v109;
      v155 = v215;
      (*(v131 + 16))(v215, v130, v92);
      v156 = Logger.logObject.getter();
      v157 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v156, v157))
      {
        v158 = swift_slowAlloc();
        v159 = swift_slowAlloc();
        v222 = v159;
        v228 = swift_slowAlloc();
        *&v234 = v228;
        *v158 = 138412546;
        type metadata accessor for SFAuthenticationErrorCode(0);
        LODWORD(v223) = v157;
        sub_10001444C(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode);
        swift_allocError();
        v160 = v224;
        *v161 = v224;
        v162 = _swift_stdlib_bridgeErrorToNSError();
        *(v158 + 4) = v162;
        *v159 = v162;
        *(v158 + 12) = 2080;
        sub_10001444C(&qword_100978CE0, &type metadata accessor for UUID);
        v163 = dispatch thunk of CustomStringConvertible.description.getter();
        v165 = v164;
        v166 = *v230;
        (*v230)(v155, v92);
        v167 = sub_10000C4E4(v163, v165, &v234);
        v131 = v227;

        *(v158 + 14) = v167;
        _os_log_impl(&_mh_execute_header, v156, v223, "Calling back to delegate with registration error %@ for sessionID %s", v158, 0x16u);
        sub_100005508(v222, &qword_100975400, &qword_1007F65D0);

        sub_10000C60C(v228);

        v130 = v218;

        v168 = v216;
      }

      else
      {

        v166 = *v230;
        (*v230)(v155, v92);
        v168 = v216;
        v160 = v224;
      }

      v183 = sub_100010F88(v160, 0, 0xE000000000000000);
      v184 = v229;
      sub_100695FD8(v130, v183, v185);
      swift_unknownObjectRelease();

      v166(v130, v92);
      v109 = v184;
      (*(v131 + 56))(v168, 1, 1, v92);
      swift_beginAccess();
      sub_10000C788(v168, &v184[v153], &unk_100976120, &qword_1007F9260);
      swift_endAccess();
      goto LABEL_56;
    }

    v169 = Logger.logObject.getter();
    v170 = static os_log_type_t.error.getter();
    v171 = os_log_type_enabled(v169, v170);
    v75 = v226;
    if (v171)
    {
      v172 = swift_slowAlloc();
      *v172 = 0;
      _os_log_impl(&_mh_execute_header, v169, v170, "Have session that is waiting but no delegate to report it to. This is bad.", v172, 2u);
    }

    (*v230)(v130, v92);
    goto LABEL_57;
  }

LABEL_74:
  __break(1u);
  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t sub_100464D08(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005C00;

  return sub_10045BB34(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100464E34()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  sub_10000C60C((v0 + 40));
  v2 = *(v0 + 96);

  return _swift_deallocObject(v0, 104);
}

uint64_t sub_100464E84(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 80);
  v8 = *(v1 + 88);
  v9 = *(v1 + 96);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100005C00;

  return sub_1006DD6C4(a1, v4, v5, v6, v1 + 40, v7, v8, v9);
}

uint64_t sub_100464F60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AuthenticationSecurityRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100464FC4(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for AuthenticationSecurityRequest(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = *(v1 + v6);
  v12 = *(v1 + v7);
  v13 = v1[4];
  v15 = *(v1 + v8);
  v14 = *(v1 + v8 + 8);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_100005C00;

  return sub_100459F74(a1, v9, v10, v13, v1 + v5, v11, v12, v15);
}

uint64_t sub_100465134()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  return sub_1004598E8(v1);
}

uint64_t sub_1004651B0(uint64_t a1)
{
  v4 = *(type metadata accessor for AuthenticationSecurityRequest(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005C00;

  return sub_1004572E0(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1004652B0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1004652F0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_10045C508();
}

uint64_t sub_10046530C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 80);
  v8 = *(v1 + 88);
  v9 = *(v1 + 96);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100005C04;

  return sub_1006DD6C4(a1, v4, v5, v6, v1 + 40, v7, v8, v9);
}

void *sub_100465450(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = a2 >> 62;
  v28 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      v4 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v3 != 2)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v4 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_62;
    }

    v4 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v7 = _swiftEmptyArrayStorage;
  if (v4)
  {
    v44 = _swiftEmptyArrayStorage;
    v30 = a2 >> 62;
    sub_10028FE90(0, v4 & ~(v4 >> 63), 0);
    v9 = v30;
    v8 = a1;
    if (v30)
    {
      if (v30 == 2)
      {
        v10 = *(a1 + 16);
      }

      else
      {
        v10 = a1;
      }
    }

    else
    {
      v10 = 0;
    }

    if (v4 < 0)
    {
      goto LABEL_61;
    }

    v11 = 0;
    v7 = v44;
    v29 = BYTE6(v2);
    v12 = 0x1000000000000000;
    while (1)
    {
      if (v9 == 2)
      {
        if (v10 < *(v8 + 16))
        {
          goto LABEL_53;
        }

        v13 = *(v8 + 24);
      }

      else if (v9 == 1)
      {
        v13 = a1 >> 32;
        if (v10 < a1)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v13 = v29;
        if (v10 < 0)
        {
          goto LABEL_54;
        }
      }

      if (v10 >= v13)
      {
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
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
      }

      if (v9 == 2)
      {
        break;
      }

      if (v9 == 1)
      {
        if (v10 < a1 || v10 >= a1 >> 32)
        {
          goto LABEL_57;
        }

        v14 = v7;
        v15 = __DataStorage._bytes.getter();
        if (!v15)
        {
          goto LABEL_63;
        }

        v16 = v15;
        v17 = __DataStorage._offset.getter();
        v18 = v10 - v17;
        if (__OFSUB__(v10, v17))
        {
          goto LABEL_59;
        }

LABEL_39:
        v21 = *(v16 + v18);
        v9 = v30;
        v8 = a1;
        v7 = v14;
        if (!v12)
        {
          goto LABEL_51;
        }

        goto LABEL_43;
      }

      if (v10 >= v29)
      {
        goto LABEL_56;
      }

      v32 = v8;
      v33 = BYTE2(v8);
      v34 = BYTE3(v8);
      v35 = v28;
      v36 = BYTE5(v8);
      v37 = BYTE6(v8);
      v38 = HIBYTE(v8);
      v39 = v2;
      v40 = BYTE2(v2);
      v41 = BYTE3(v2);
      v42 = BYTE4(v2);
      v43 = BYTE5(v2);
      v21 = *(&v32 + v10);
      if (!v12)
      {
        goto LABEL_51;
      }

LABEL_43:
      v22 = v2;
      v23 = v21 << (v11 & 0x38);
      if (v11 >= 0x40)
      {
        v24 = 0;
      }

      else
      {
        v24 = v23;
      }

      v44 = v7;
      v26 = v7[2];
      v25 = v7[3];
      if (v26 >= v25 >> 1)
      {
        sub_10028FE90((v25 > 1), v26 + 1, 1);
        v9 = v30;
        v8 = a1;
        v7 = v44;
      }

      v7[2] = v26 + 1;
      v7[v26 + 4] = v24;
      ++v10;
      --v12;
      v11 += 8;
      --v4;
      v2 = v22;
      if (!v4)
      {
        return v7;
      }
    }

    if (v10 < *(v8 + 16))
    {
      goto LABEL_55;
    }

    if (v10 >= *(v8 + 24))
    {
      goto LABEL_58;
    }

    v14 = v7;
    v19 = __DataStorage._bytes.getter();
    if (!v19)
    {
      goto LABEL_64;
    }

    v16 = v19;
    v20 = __DataStorage._offset.getter();
    v18 = v10 - v20;
    if (__OFSUB__(v10, v20))
    {
      goto LABEL_60;
    }

    goto LABEL_39;
  }

  return v7;
}

uint64_t sub_1004657B8(uint64_t result, unint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      result = 0;
      goto LABEL_19;
    }

    v8 = *(result + 16);
    v7 = *(result + 24);
    v9 = __OFSUB__(v7, v8);
    v6 = v7 - v8;
    if (!v9)
    {
LABEL_10:
      if ((v6 - 0x1000000000000000) >> 61 != 7)
      {
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      if ((v6 & 7) != 0)
      {
        sub_10028088C(&qword_10097EEF8, &qword_100804AF8);
        sub_100467324();
        swift_allocError();
        swift_willThrow();
        return v3;
      }

      if (v5)
      {
        if (v5 == 2)
        {
          result = *(result + 16);
        }

        else
        {
          result = result;
        }
      }

      else
      {
        result = 0;
      }

LABEL_19:
      v44 = BYTE6(a2);
      v10 = _swiftEmptyArrayStorage;
      if (v5 > 1)
      {
        goto LABEL_24;
      }

LABEL_20:
      v11 = v44;
      if (v5)
      {
        v11 = v4 >> 32;
      }

      if (result >= v11)
      {
        goto LABEL_44;
      }

LABEL_26:
      v12 = result + a3;
      if (!__OFADD__(result, a3))
      {
        if (v5)
        {
          if (v5 == 1)
          {
            v14 = v4;
            v13 = v4 >> 32;
          }

          else
          {
            v14 = *(v4 + 16);
            v13 = *(v4 + 24);
          }
        }

        else
        {
          v14 = 0;
          v13 = v44;
        }

        while (v12 >= v14 && v13 >= v12)
        {
          if (v12 < result)
          {
            goto LABEL_76;
          }

          v15 = Data._Representation.subscript.getter();
          v17 = v16;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_10028EEAC(0, *(v10 + 2) + 1, 1, v10);
          }

          v19 = *(v10 + 2);
          v18 = *(v10 + 3);
          if (v19 >= v18 >> 1)
          {
            v10 = sub_10028EEAC((v18 > 1), v19 + 1, 1, v10);
          }

          *(v10 + 2) = v19 + 1;
          v20 = &v10[16 * v19];
          *(v20 + 4) = v15;
          *(v20 + 5) = v17;
          result = v12;
          if (v5 <= 1)
          {
            goto LABEL_20;
          }

LABEL_24:
          if (v5 == 2)
          {
            if (result < *(v4 + 24))
            {
              goto LABEL_26;
            }

LABEL_44:
            v21 = *(v10 + 2);
            if (!v21)
            {

              return _swiftEmptyArrayStorage;
            }

            result = sub_10028FE90(0, v21, 0);
            v22 = 0;
            v3 = _swiftEmptyArrayStorage;
            while (2)
            {
              if (v22 >= *(v10 + 2))
              {
                goto LABEL_79;
              }

              v23 = &v10[16 * v22 + 32];
              v24 = *v23;
              v25 = v23[1];
              v26 = v25 >> 62;
              if ((v25 >> 62) > 1)
              {
                if (v26 != 2)
                {
                  goto LABEL_73;
                }

                v29 = *(v24 + 16);
                v28 = *(v24 + 24);
                v27 = v28 - v29;
                if (__OFSUB__(v28, v29))
                {
                  goto LABEL_82;
                }
              }

              else
              {
                if (!v26)
                {
                  v27 = BYTE6(v25);
                  goto LABEL_57;
                }

                if (__OFSUB__(HIDWORD(v24), v24))
                {
                  goto LABEL_81;
                }

                v27 = HIDWORD(v24) - v24;
              }

              result = sub_100294008(v24, v25);
LABEL_57:
              if ((v27 - 0x1000000000000000) >> 61 != 7)
              {
                goto LABEL_78;
              }

              if ((v27 & 0x1FFFFFFFFFFFFFFFLL) != 8)
              {
LABEL_73:
                sub_10028088C(&qword_10097EEF8, &qword_100804AF8);
                sub_100467324();
                swift_allocError();
                swift_willThrow();

                sub_100026AC0(v24, v25);

                return v3;
              }

              v30 = sub_100465450(v24, v25);
              v31 = v30[1].u64[0];
              if (v31)
              {
                if (v31 < 4)
                {
                  v32 = 0;
                  v33 = 0;
                  goto LABEL_66;
                }

                v32 = v31 & 0x7FFFFFFFFFFFFFFCLL;
                v34 = v30 + 3;
                v35 = 0uLL;
                v36 = v31 & 0x7FFFFFFFFFFFFFFCLL;
                v37 = 0uLL;
                do
                {
                  v35 = vorrq_s8(v34[-1], v35);
                  v37 = vorrq_s8(*v34, v37);
                  v34 += 2;
                  v36 -= 4;
                }

                while (v36);
                v38 = vorrq_s8(v37, v35);
                v33 = vorr_s8(*v38.i8, *&vextq_s8(v38, v38, 8uLL));
                if (v31 != v32)
                {
LABEL_66:
                  v39 = v31 - v32;
                  v40 = &v30[2].i64[v32];
                  do
                  {
                    v41 = *v40++;
                    *&v33 |= v41;
                    --v39;
                  }

                  while (v39);
                }
              }

              else
              {
                v33 = 0;
              }

              result = sub_100026AC0(v24, v25);
              v43 = _swiftEmptyArrayStorage[2];
              v42 = _swiftEmptyArrayStorage[3];
              if (v43 >= v42 >> 1)
              {
                result = sub_10028FE90((v42 > 1), v43 + 1, 1);
              }

              ++v22;
              _swiftEmptyArrayStorage[2] = v43 + 1;
              _swiftEmptyArrayStorage[v43 + 4] = v33;
              if (v22 == v21)
              {

                return v3;
              }

              continue;
            }
          }

          if ((result & 0x8000000000000000) == 0)
          {
            goto LABEL_44;
          }

          v12 = result + a3;
          if (__OFADD__(result, a3))
          {
            goto LABEL_80;
          }

          v13 = 0;
          v14 = 0;
        }

        __break(1u);
LABEL_76:
        __break(1u);
      }

      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    __break(1u);
  }

  else if (!v5)
  {
    v6 = BYTE6(a2);
    goto LABEL_10;
  }

  LODWORD(v6) = HIDWORD(result) - result;
  if (!__OFSUB__(HIDWORD(result), result))
  {
    v6 = v6;
    goto LABEL_10;
  }

LABEL_84:
  __break(1u);
  return result;
}

uint64_t sub_100465C70(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2 || *(a1 + 16) == *(a1 + 24))
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (!v2)
    {
      if ((a2 & 0xFF000000000000) != 0)
      {
        v3 = BYTE6(a2);
        goto LABEL_12;
      }

LABEL_10:
      v4 = 0;
      v5 = 1;
      return v4 | (v5 << 8);
    }

    if (a1 == a1 >> 32)
    {
      goto LABEL_10;
    }
  }

  if (v2 == 2)
  {
    v3 = *(a1 + 24);
  }

  else
  {
    v3 = a1 >> 32;
  }

LABEL_12:
  result = v3 - 1;
  if (!__OFSUB__(v3, 1))
  {
    v4 = Data._Representation.subscript.getter();
    v5 = 0;
    return v4 | (v5 << 8);
  }

  __break(1u);
  return result;
}

uint64_t sub_100465D18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10028088C(&qword_100987400, &qword_10080DDD0);
  v7 = *(v6 - 8);
  v47 = v6 - 8;
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v10 = v44 - v9;
  v11 = type metadata accessor for SHA256();
  v46 = *(v11 - 8);
  v12 = *(v46 + 64);
  __chkstk_darwin(v11);
  v14 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for SHA256Digest();
  v48 = *(v45 - 8);
  v15 = *(v48 + 64);
  __chkstk_darwin(v45);
  v17 = v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for String.Encoding();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v44[0] = a1;
  v44[1] = a2;
  v23 = String.data(using:allowLossyConversion:)();
  v25 = v24;
  (*(v19 + 8))(v22, v18);
  v52 = v23;
  v53 = v25;
  sub_10028088C(&qword_100974E10, &qword_1007FC4C0);
  Optional.unwrap(_:file:line:)();
  sub_10028BCC0(v52, v53);
  v27 = v49[0];
  v26 = v49[1];
  sub_1004672DC(&unk_100983280, &type metadata accessor for SHA256);
  dispatch thunk of HashFunction.init()();
  sub_100294008(v27, v26);
  sub_100635718(v27, v26);
  sub_100026AC0(v27, v26);
  dispatch thunk of HashFunction.finalize()();
  (*(v46 + 8))(v14, v11);
  v28 = *(v48 + 16);
  v29 = v45;
  v28(v10, v17);
  *&v10[*(v47 + 44)] = 3;
  v30 = sub_100635BB8(v10);
  sub_100467220(v10);
  if (v30[2] == 3)
  {
    LODWORD(v47) = sub_100467288(v30);

    v50 = v29;
    v51 = sub_1004672DC(&unk_10097F060, &type metadata accessor for SHA256Digest);
    v31 = sub_10002F604(v49);
    (v28)(v31, v17, v29);
    v32 = v29;
    sub_10002CDC0(v49, v50);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    v33 = v52;
    v34 = v53;
    sub_10000C60C(v49);
    v35 = sub_100466420(v33, v34);
    v37 = v36;
    v39 = v38;
    v41 = v40;
    (*(v48 + 8))(v17, v32);
    sub_100026AC0(v27, v26);

    *a3 = v44[0];
    *(a3 + 8) = result;
    *(a3 + 16) = v35;
    *(a3 + 24) = v37;
    *(a3 + 32) = v39;
    *(a3 + 40) = v41;
    v43 = v47;
    *(a3 + 50) = BYTE2(v47);
    *(a3 + 48) = v43;
    *(a3 + 51) = 0;
  }

  else
  {
    __break(1u);
    swift_unexpectedError();
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_100466258(uint64_t result, unint64_t a2)
{
  v4 = result;
  v5 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v5)
    {
      v6 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v5 != 2)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (v9)
  {
    __break(1u);
LABEL_8:
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
      __break(1u);
      goto LABEL_36;
    }

    v6 = v6;
  }

LABEL_10:
  if (v6 != 3)
  {
    goto LABEL_39;
  }

  sub_100294008(result, a2);
  result = sub_10053AFB8(2, v4, a2, &v22);
  v10 = v22;
  v11 = v23;
  v12 = v23 >> 62;
  if ((v23 >> 62) <= 1)
  {
    if (!v12)
    {
      v13 = BYTE6(v23);
      goto LABEL_20;
    }

LABEL_18:
    LODWORD(v13) = HIDWORD(v10) - v10;
    if (!__OFSUB__(HIDWORD(v10), v10))
    {
      v13 = v13;
      goto LABEL_20;
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v12 != 2)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v15 = *(v22 + 16);
  v14 = *(v22 + 24);
  v9 = __OFSUB__(v14, v15);
  v13 = v14 - v15;
  if (v9)
  {
    __break(1u);
    goto LABEL_18;
  }

LABEL_20:
  if (v13 != 2)
  {
    goto LABEL_40;
  }

  if (v12 != 2)
  {
    if (v12 == 1)
    {
      LODWORD(v16) = HIDWORD(v10) - v10;
      if (!__OFSUB__(HIDWORD(v10), v10))
      {
        v16 = v16;
        goto LABEL_29;
      }

LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    goto LABEL_28;
  }

  v18 = *(v10 + 16);
  v17 = *(v10 + 24);
  v9 = __OFSUB__(v17, v18);
  v16 = v17 - v18;
  if (v9)
  {
    __break(1u);
LABEL_28:
    v16 = BYTE6(v11);
  }

LABEL_29:
  if (v16 != 2)
  {
LABEL_41:
    __break(1u);
    return result;
  }

  v19 = sub_1002F15B0(v10, v11);
  if (v2)
  {
    sub_100026AC0(v4, a2);
    return sub_100026AC0(v10, v11);
  }

  v20 = v19;
  result = sub_100465C70(v4, a2);
  if ((result & 0x100) != 0)
  {
    goto LABEL_38;
  }

  v21 = result;
  sub_100026AC0(v10, v11);
  sub_100026AC0(v4, a2);
  return v20 | (v21 << 16);
}

uint64_t sub_100466420(uint64_t result, unint64_t a2)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      v4 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v3 != 2)
  {
    goto LABEL_23;
  }

  v6 = *(result + 16);
  v5 = *(result + 24);
  v7 = __OFSUB__(v5, v6);
  v4 = v5 - v6;
  if (v7)
  {
    __break(1u);
LABEL_8:
    LODWORD(v4) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v4 = v4;
  }

LABEL_10:
  if (v4 == 32)
  {
    v8 = result;
    v10 = sub_1004657B8(result, a2, 8);
    result = sub_100026AC0(v8, a2);
    if (v2)
    {
      return v8;
    }

    v11 = v10[2];
    if (v11)
    {
      if (v11 != 1)
      {
        if (v11 >= 3)
        {
          if (v11 != 3)
          {
            v8 = v10[4];
            v12 = v10[5];
            v13 = v10[6];
            v14 = v10[7];

            return v8;
          }

          goto LABEL_21;
        }

LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_23:
  __break(1u);
  return result;
}

void *LongHash.init<A>(data:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  v7 = *(*(v6 + 8) + 8);
  result = dispatch thunk of Collection.count.getter();
  if (result != 32)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = sub_10046666C();
  v10 = sub_1004666C0();
  result = sub_1002EA0E8(a1, 8, &type metadata for UInt8, &type metadata for UInt64, a2, v9, v10, v6);
  if (v3)
  {
    (*(*(a2 - 8) + 8))(a1, a2);
    return v6;
  }

  v11 = result[2];
  if (!v11)
  {
    goto LABEL_11;
  }

  if (v11 == 1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v11 < 3)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v11 != 3)
  {
    v6 = result[4];
    v12 = result[5];
    v13 = result[6];
    v14 = result[7];

    (*(*(a2 - 8) + 8))(a1, a2);
    return v6;
  }

LABEL_14:
  __break(1u);
  return result;
}

unint64_t sub_10046666C()
{
  result = qword_10097EEC8;
  if (!qword_10097EEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097EEC8);
  }

  return result;
}

unint64_t sub_1004666C0()
{
  result = qword_10097EED0;
  if (!qword_10097EED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097EED0);
  }

  return result;
}

Swift::Int ShortHash.hashValue.getter(Swift::UInt16 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int sub_100466794()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100466808()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void MediumHash.hash(into:)(int a1, unsigned int a2)
{
  v2 = HIWORD(a2);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v2);
}

Swift::Int MediumHash.hashValue.getter(unsigned int a1)
{
  v1 = a1;
  v2 = HIWORD(a1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

Swift::Int sub_100466908()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_100466968()
{
  v1 = *(v0 + 2);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
}

Swift::Int sub_1004669A8()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void LongHash.hash(into:)(int a1, Swift::UInt64 a2, Swift::UInt64 a3, Swift::UInt64 a4, Swift::UInt64 a5)
{
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(a3);
  Hasher._combine(_:)(a4);
  Hasher._combine(_:)(a5);
}

Swift::Int LongHash.hashValue.getter(Swift::UInt64 a1, Swift::UInt64 a2, Swift::UInt64 a3, Swift::UInt64 a4)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(a3);
  Hasher._combine(_:)(a4);
  return Hasher._finalize()();
}

Swift::Int sub_100466B10()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

void sub_100466B90()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
}

Swift::Int sub_100466BE8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

uint64_t static SDHashStoreContact.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 == a5 && a2 == a6 || (v12 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v12 & 1) != 0))
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t SDHashStoreContact.hash(into:)()
{
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int SDHashStoreContact.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

BOOL _s16DaemoniOSLibrary8LongHashV2eeoiySbAC_ACtFZ_0(Swift::UInt64 a1, Swift::UInt64 a2, Swift::UInt64 a3, Swift::UInt64 a4, Swift::UInt64 a5, Swift::UInt64 a6, Swift::UInt64 a7, Swift::UInt64 a8)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(a3);
  Hasher._combine(_:)(a4);
  v16 = Hasher._finalize()();
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a5);
  Hasher._combine(_:)(a6);
  Hasher._combine(_:)(a7);
  Hasher._combine(_:)(a8);
  return v16 == Hasher._finalize()();
}

unint64_t sub_100466EE4()
{
  result = qword_10097EED8;
  if (!qword_10097EED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097EED8);
  }

  return result;
}

unint64_t sub_100466F3C()
{
  result = qword_10097EEE0;
  if (!qword_10097EEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097EEE0);
  }

  return result;
}

unint64_t sub_100466F94()
{
  result = qword_10097EEE8;
  if (!qword_10097EEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097EEE8);
  }

  return result;
}

unint64_t sub_100466FEC()
{
  result = qword_10097EEF0;
  if (!qword_10097EEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097EEF0);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for MediumHash(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MediumHash(unsigned __int16 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 0x1FFFFFF) >> 24)
  {
    v2 = *(a1 + 3);
    if (!*(a1 + 3))
    {
      return 0;
    }
  }

  else
  {
    v2 = *(a1 + 3);
    if (!*(a1 + 3))
    {
      return 0;
    }
  }

  return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 0xFFFFFF;
}

uint64_t storeEnumTagSinglePayload for MediumHash(uint64_t result, int a2, int a3)
{
  if ((a3 + 0x1FFFFFF) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (!a3)
  {
    v3 = 0;
  }

  if (a2)
  {
    *result = a2 - 1;
    *(result + 2) = (a2 - 1) >> 16;
    if (v3)
    {
      v4 = ((a2 - 1) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else if (v3)
  {
    if (v3 == 2)
    {
      *(result + 3) = 0;
    }

    else
    {
      *(result + 3) = 0;
    }
  }

  return result;
}

__n128 sub_100467150(uint64_t a1, uint64_t a2)
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

uint64_t sub_100467174(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 68))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1004671BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 68) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 68) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100467220(uint64_t a1)
{
  v2 = sub_10028088C(&qword_100987400, &qword_10080DDD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_100467288(void *result)
{
  v2 = result[2];
  if (v2 == 3)
  {
    v3 = result;
    result = sub_1002F1A08((result + 4), 0, 5uLL, v2);
    if (!v1)
    {
      return (result | (*(v3 + 34) << 16));
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004672DC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100467324()
{
  result = qword_10097EF00;
  if (!qword_10097EF00)
  {
    sub_100280938(&qword_10097EEF8, &qword_100804AF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097EF00);
  }

  return result;
}

BOOL sub_10046738C()
{
  v1 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v19 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v19 - v11;
  if (*(*(v0 + 40) + 16) < 3uLL)
  {
    return 0;
  }

  v13 = *(v0 + 40);

  sub_10044BB70(v14, v4);

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100016C08(v4);
    return 0;
  }

  (*(v6 + 32))(v12, v4, v5);
  Date.init()();
  Date.timeIntervalSince(_:)();
  v17 = v16;
  v18 = *(v6 + 8);
  v18(v10, v5);
  v18(v12, v5);
  return v17 <= 30.0;
}

id sub_100467580()
{
  v1 = v0;
  v2 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v47 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v57 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v48 = &v47 - v12;
  v13 = __chkstk_darwin(v11);
  v53 = &v47 - v14;
  v15 = __chkstk_darwin(v13);
  v58 = &v47 - v16;
  __chkstk_darwin(v15);
  v18 = &v47 - v17;
  if (*(*(v1 + 40) + 16) >= 3uLL)
  {
    v19 = *(v1 + 40);

    sub_10044BB70(v20, v5);

    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_100016C08(v5);
    }

    else
    {
      (*(v7 + 32))(v18, v5, v6);
      v21 = v58;
      Date.init()();
      Date.timeIntervalSince(_:)();
      v23 = v22;
      v5 = *(v7 + 8);
      (v5)(v21, v6);
      result = (v5)(v18, v6);
      if (v23 <= 30.0)
      {
        return result;
      }
    }
  }

  v49 = v1;
  v25 = *(v1 + 40);
  v26 = *(v25 + 16);

  v56 = v26;
  v59 = v7;
  if (v26)
  {
    v27 = 0;
    v54 = (v7 + 32);
    v55 = v7 + 16;
    v28 = _swiftEmptyArrayStorage;
    v51 = v25;
    v52 = v6;
    v29 = v53;
    v50 = v7 + 8;
    while (v27 < *(v25 + 16))
    {
      v30 = v59;
      v26 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v1 = *(v59 + 72);
      (*(v59 + 16))(v29, v25 + v26 + v1 * v27, v6);
      v5 = v58;
      Date.init()();
      Date.timeIntervalSince(_:)();
      v32 = v31;
      v33 = *(v30 + 8);
      v33(v5, v6);
      if (v32 > 10.0)
      {
        v33(v29, v6);
      }

      else
      {
        v34 = *v54;
        (*v54)(v57, v29, v6);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v60 = v28;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v5 = &v60;
          sub_10028FD60(0, v28[2] + 1, 1);
          v28 = v60;
        }

        v37 = v28[2];
        v36 = v28[3];
        if (v37 >= v36 >> 1)
        {
          v5 = &v60;
          sub_10028FD60(v36 > 1, v37 + 1, 1);
          v28 = v60;
        }

        v28[2] = v37 + 1;
        v6 = v52;
        v34(v28 + v26 + v37 * v1, v57, v52);
        v29 = v53;
        v25 = v51;
      }

      if (v56 == ++v27)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
    v28 = _swiftEmptyArrayStorage;
LABEL_17:

    v26 = v49;
    v38 = *(v49 + 40);
    *(v49 + 40) = v28;

    v1 = v48;
    Date.init()();
    v5 = *(v26 + 40);
    v39 = swift_isUniquelyReferenced_nonNull_native();
    *(v26 + 40) = v5;
    if (v39)
    {
      goto LABEL_18;
    }
  }

  v5 = sub_10028EAA4(0, *(v5 + 2) + 1, 1, v5);
  *(v26 + 40) = v5;
LABEL_18:
  v40 = v59;
  v42 = *(v5 + 2);
  v41 = *(v5 + 3);
  if (v42 >= v41 >> 1)
  {
    v5 = sub_10028EAA4(v41 > 1, v42 + 1, 1, v5);
  }

  *(v5 + 2) = v42 + 1;
  (*(v40 + 32))(&v5[((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v42], v1, v6);
  v43 = v49;
  *(v49 + 40) = v5;
  result = airdrop_log();
  if (result)
  {
    v44 = result;
    sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_1007F5670;
    v46 = *(v43 + 40);
    *(v45 + 56) = sub_10028088C(&qword_10097EFF0, &qword_100804B38);
    *(v45 + 64) = sub_100467B80();
    *(v45 + 32) = v46;

    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100467B24()
{
  v1 = *(v0 + 40);

  return swift_deallocClassInstance();
}

unint64_t sub_100467B80()
{
  result = qword_10097EFF8;
  if (!qword_10097EFF8)
  {
    sub_100280938(&qword_10097EFF0, &qword_100804B38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097EFF8);
  }

  return result;
}

void *sub_100467BE4(uint64_t a1, unint64_t a2)
{
  v4 = a2 >> 62;
  v30 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    return _swiftEmptyArrayStorage;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = _swiftEmptyArrayStorage;
  if (v5)
  {
    v45 = _swiftEmptyArrayStorage;
    sub_10028FBDC(0, v5 & ~(v5 >> 63), 0);
    if (v4)
    {
      if (v4 == 2)
      {
        v9 = *(a1 + 16);
      }

      else
      {
        v9 = a1;
      }
    }

    else
    {
      v9 = 0;
    }

    v32 = v9;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v10 = 0;
    v8 = v45;
    v29 = &v33 + v9;
    v31 = v4;
    do
    {
      if (v10 >= v5)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_41;
      }

      v12 = v32 + v10;
      if (v4 == 2)
      {
        if (v12 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v12 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v17 = __DataStorage._bytes.getter();
        if (!v17)
        {
          goto LABEL_51;
        }

        v14 = v17;
        v18 = __DataStorage._offset.getter();
        v16 = v12 - v18;
        if (__OFSUB__(v12, v18))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v4 != 1)
        {
          if (v12 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v33 = a1;
          v34 = BYTE2(a1);
          v35 = BYTE3(a1);
          v36 = v30;
          v37 = BYTE5(a1);
          v38 = BYTE6(a1);
          v39 = HIBYTE(a1);
          v40 = a2;
          v41 = BYTE2(a2);
          v42 = BYTE3(a2);
          v43 = BYTE4(a2);
          v44 = BYTE5(a2);
          v19 = v29[v10];
          goto LABEL_36;
        }

        if (v12 < a1 || v12 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v13 = __DataStorage._bytes.getter();
        if (!v13)
        {
          goto LABEL_50;
        }

        v14 = v13;
        v15 = __DataStorage._offset.getter();
        v16 = v12 - v15;
        if (__OFSUB__(v12, v15))
        {
          goto LABEL_46;
        }
      }

      v19 = *(v14 + v16);
LABEL_36:
      sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1007F5670;
      *(v20 + 56) = &type metadata for UInt8;
      *(v20 + 64) = &protocol witness table for UInt8;
      *(v20 + 32) = v19;
      v21 = String.init(format:_:)();
      v45 = v8;
      v24 = v8[2];
      v23 = v8[3];
      if (v24 >= v23 >> 1)
      {
        v28 = v21;
        v26 = v22;
        sub_10028FBDC((v23 > 1), v24 + 1, 1);
        v22 = v26;
        v21 = v28;
        v8 = v45;
      }

      v8[2] = v24 + 1;
      v25 = &v8[2 * v24];
      v25[4] = v21;
      v25[5] = v22;
      ++v10;
      LODWORD(v4) = v31;
    }

    while (v11 != v5);
  }

  return v8;
}