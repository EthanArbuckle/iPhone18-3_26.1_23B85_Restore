uint64_t sub_1000EFAD4(uint64_t a1, void *a2, char a3, uint64_t a4, _BYTE *a5, uint64_t (*a6)(void), uint64_t a7)
{
  v14 = sub_100095274(&qword_1002A7AF0, &qword_10023C9D0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v39 - v16;
  v18 = a6(0);
  v42[4] = a7;
  v42[3] = v18;
  v42[0] = a4;
  *&a5[OBJC_IVAR____TtC14dockaccessoryd13DKProxManager_proxCard] = 0;
  a5[OBJC_IVAR____TtC14dockaccessoryd13DKProxManager_requiresSWAuth] = 1;
  v19 = OBJC_IVAR____TtC14dockaccessoryd13DKProxManager_primaryToken;
  *&a5[OBJC_IVAR____TtC14dockaccessoryd13DKProxManager_primaryToken] = 0;
  v20 = &a5[OBJC_IVAR____TtC14dockaccessoryd13DKProxManager_delegate];
  v21 = a3 & 1;
  *v20 = 0u;
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0;
  if (a1 || (a3 & 1) != 0)
  {
    *&a5[v19] = a1;
    sub_1000A097C(v42, v41);
    swift_beginAccess();

    sub_1000EFEEC(v41, v20);
    swift_endAccess();
    v22 = type metadata accessor for Transaction();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    v25 = swift_allocObject();
    *(v25 + 48) = 0;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0;
    *(v25 + 16) = 0;
    swift_unknownObjectWeakInit();
    *(v25 + 80) = 0;
    *(v25 + 88) = 1;
    Logger.init(subsystem:category:)();
    *(v25 + 64) = 0xD000000000000022;
    *(v25 + 72) = 0x8000000100230E20;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0x402E000000000000;
    swift_unknownObjectWeakAssign();
    *&a5[OBJC_IVAR____TtC14dockaccessoryd13DKProxManager_discoveryTxn] = v25;
    v26 = type metadata accessor for DKProxManager();
    v40.receiver = a5;
    v40.super_class = v26;
    v27 = objc_msgSendSuper2(&v40, "init");
    if (a1)
    {
      v28 = OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_id;
      v29 = type metadata accessor for UUID();
      v30 = *(v29 - 8);
      (*(v30 + 16))(v17, a1 + v28, v29);
      (*(v30 + 56))(v17, 0, 1, v29);
    }

    else
    {
      v31 = type metadata accessor for UUID();
      (*(*(v31 - 8) + 56))(v17, 1, 1, v31);
    }

    type metadata accessor for PairingUIServiceAlert();
    v32 = swift_allocObject();
    v33 = v27;
    v34 = sub_1000EF5EC(v17, a2, v21, v33, v32);
    v35 = *&v33[OBJC_IVAR____TtC14dockaccessoryd13DKProxManager_proxCard];
    *&v33[OBJC_IVAR____TtC14dockaccessoryd13DKProxManager_proxCard] = v34;

    v36 = OBJC_IVAR____TtC14dockaccessoryd13DKProxManager_discoveryTxn;
    *(*&v33[OBJC_IVAR____TtC14dockaccessoryd13DKProxManager_discoveryTxn] + 48) = &off_100277E58;
    swift_unknownObjectWeakAssign();

    v37 = *&v33[v36];

    sub_100105518();

    sub_100095808(v42);
    return v33;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000EFEEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100095274(&unk_1002A9100, &qword_10023D030);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000EFF5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100095274(&qword_1002A7AF0, &qword_10023C9D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000EFFD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000F00B4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000F0110(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1000F01A0()
{
  v0 = type metadata accessor for AppLayoutMonitor();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1000F028C();
  static AppLayoutMonitor.shared = result;
  return result;
}

uint64_t *AppLayoutMonitor.shared.unsafeMutableAddressor()
{
  if (qword_1002A66C0 != -1)
  {
    swift_once();
  }

  return &static AppLayoutMonitor.shared;
}

uint64_t static AppLayoutMonitor.shared.getter()
{
  if (qword_1002A66C0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1000F028C()
{
  v13 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v13 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v13);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  Logger.init(subsystem:category:)();
  *(v0 + OBJC_IVAR____TtC14dockaccessoryd16AppLayoutMonitor_layoutMonitor) = 0;
  v12 = OBJC_IVAR____TtC14dockaccessoryd16AppLayoutMonitor_delegateQueue;
  v9 = sub_100095B94(0, &qword_1002A6820, OS_dispatch_queue_ptr);
  v11[1] = "AppLayoutMonitor";
  v11[2] = v9;
  static DispatchQoS.unspecified.getter();
  v14 = &_swiftEmptyArrayStorage;
  sub_1000EFFD8(&qword_1002A7110, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100095274(&unk_1002A6830, &unk_10023AB20);
  sub_100095BDC(&qword_1002A7120, &unk_1002A6830, &unk_10023AB20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v13);
  *(v0 + v12) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v0 + OBJC_IVAR____TtC14dockaccessoryd16AppLayoutMonitor_foregroundAppsBundleIDs) = &_swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC14dockaccessoryd16AppLayoutMonitor_appStateDelegates) = &_swiftEmptyArrayStorage;
  return v0;
}

void sub_1000F0574()
{
  v1 = v0;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "begin layout monitoring", v4, 2u);
  }

  v5 = [objc_opt_self() configurationForDefaultMainDisplayMonitor];
  v9[4] = sub_1000F1D94;
  v9[5] = v1;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1000F0718;
  v9[3] = &unk_100277438;
  v6 = _Block_copy(v9);

  [v5 setTransitionHandler:v6];
  _Block_release(v6);
  v7 = [objc_opt_self() monitorWithConfiguration:v5];
  v8 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd16AppLayoutMonitor_layoutMonitor);
  *(v1 + OBJC_IVAR____TtC14dockaccessoryd16AppLayoutMonitor_layoutMonitor) = v7;

  sub_1000F07B8();
}

void sub_1000F0718(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v11 = a2;
  v9 = a3;
  v10 = a4;
  v8(v11, a3, a4);
}

uint64_t sub_1000F07B8()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v6 = *(v13 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v13);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *(v0 + OBJC_IVAR____TtC14dockaccessoryd16AppLayoutMonitor_delegateQueue);
  aBlock[4] = sub_1000F1D3C;
  v16 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147FC8;
  aBlock[3] = &unk_100277370;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v14 = &_swiftEmptyArrayStorage;
  sub_1000EFFD8(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags);
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_100095BDC(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v13);
}

void sub_1000F0A60(uint64_t *a1)
{
  v82 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v82 - 8);
  v3 = *(v2 + 8);
  __chkstk_darwin(v82);
  v81 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for DispatchQoS();
  v5 = *(v80 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v80);
  v79 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd16AppLayoutMonitor_layoutMonitor);
  if (v8)
  {
    v9 = [v8 currentLayout];
    if (v9)
    {
      v72 = v5;
      v70 = v9;
      v10 = [v9 elements];
      sub_100095B94(0, &qword_1002A8318, FBSDisplayLayoutElement_ptr);
      v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v12 = v11 & 0xFFFFFFFFFFFFFF8;
      if (v11 >> 62)
      {
LABEL_51:
        v13 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v71 = a1;
      if (v13)
      {
        v14 = 0;
        a1 = (v11 & 0xC000000000000001);
        v83 = &_swiftEmptyArrayStorage;
        while (2)
        {
          v15 = v14;
          while (1)
          {
            if (a1)
            {
              v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v15 >= *(v12 + 16))
              {
                goto LABEL_49;
              }

              v16 = *(v11 + 8 * v15 + 32);
            }

            v17 = v16;
            v14 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
LABEL_48:
              __break(1u);
LABEL_49:
              __break(1u);
LABEL_50:
              __break(1u);
              goto LABEL_51;
            }

            v18 = [v16 bundleIdentifier];
            if (v18)
            {
              break;
            }

            ++v15;
            if (v14 == v13)
            {
              goto LABEL_23;
            }
          }

          v19 = v18;
          v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v78 = v21;

          v22 = v2;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v83 = sub_100102844(0, *(v83 + 2) + 1, 1, v83);
          }

          v24 = *(v83 + 2);
          v23 = *(v83 + 3);
          if (v24 >= v23 >> 1)
          {
            v83 = sub_100102844((v23 > 1), v24 + 1, 1, v83);
          }

          v25 = v83;
          *(v83 + 2) = v24 + 1;
          v26 = &v25[16 * v24];
          v27 = v78;
          *(v26 + 4) = v20;
          *(v26 + 5) = v27;
          v2 = v22;
          if (v14 != v13)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v83 = &_swiftEmptyArrayStorage;
      }

LABEL_23:

      v90 = v83;
      sub_1000F1440();
      v28 = OBJC_IVAR____TtC14dockaccessoryd16AppLayoutMonitor_foregroundAppsBundleIDs;
      a1 = v71;
      v29 = v90;
      if (sub_1000F0110(*(v71 + OBJC_IVAR____TtC14dockaccessoryd16AppLayoutMonitor_foregroundAppsBundleIDs), v90))
      {
LABEL_24:

LABEL_25:

        return;
      }

      *(a1 + v28) = v29;

      v11 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v11, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        aBlock = v32;
        *v31 = 136315138;
        v33 = *(a1 + v28);

        v34 = Array.description.getter();
        v36 = v35;

        v37 = sub_1000952D4(v34, v36, &aBlock);

        *(v31 + 4) = v37;
        _os_log_impl(&_mh_execute_header, v11, v30, "Found these apps in foreground: %s", v31, 0xCu);
        sub_100095808(v32);
      }

      v12 = OBJC_IVAR____TtC14dockaccessoryd16AppLayoutMonitor_appStateDelegates;
      swift_beginAccess();
      v38 = *(a1 + v12);
      v78 = *(v38 + 16);
      if (!v78)
      {
        goto LABEL_25;
      }

      v77 = v38 + 32;
      v74 = v87;
      v73 = (v2 + 8);
      ++v72;

      v40 = 0;
      v76 = v28;
      v75 = v39;
      while (1)
      {
        if (v40 >= *(v39 + 16))
        {
          goto LABEL_50;
        }

        v83 = v40;
        v48 = *(v77 + 16 * v40);
        v49 = *(a1 + v28);
        v50 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
        v51 = *(v48 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);
        swift_unknownObjectRetain();

        os_unfair_lock_lock(v51 + 4);

        v52 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_foregroundAppIDs;
        v53 = *(v48 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_foregroundAppIDs);
        *(v48 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_foregroundAppIDs) = v49;

        v54 = *(v48 + v50);

        os_unfair_lock_unlock(v54 + 4);

        v11 = *(v48 + v50);

        os_unfair_lock_lock((v11 + 16));

        v55 = *(v48 + v52);
        v2 = *(v55 + 16);
        if (v2)
        {
          v12 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_dockKitApps;

          swift_beginAccess();
          v56 = 0;
          a1 = (v55 + 40);
          while (v56 < *(v55 + 16))
          {
            v11 = *(v48 + v12);
            if (*(v11 + 16))
            {
              v57 = *(a1 - 1);
              v58 = *a1;

              sub_10016D4D0(v57, v58);
              LOBYTE(v57) = v59;

              if (v57)
              {

                a1 = v71;
                goto LABEL_31;
              }
            }

            ++v56;
            a1 += 2;
            if (v2 == v56)
            {

              a1 = v71;
              goto LABEL_42;
            }
          }

          __break(1u);
          goto LABEL_48;
        }

LABEL_42:
        v60 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_dockKitApps;
        swift_beginAccess();
        v61 = *(v48 + v60);

        v62 = cameracaptureIdentifier.getter();
        if (!*(v61 + 16))
        {
          break;
        }

        sub_10016D4D0(v62, v63);
        v65 = v64;

        if ((v65 & 1) == 0)
        {
          goto LABEL_46;
        }

LABEL_31:
        v41 = *(v48 + v50);

        os_unfair_lock_unlock(v41 + 4);

        v42 = *(v48 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_secureTrackingSessionManager);
        v43 = *(v42 + OBJC_IVAR____TtC14dockaccessoryd28SecureTrackingSessionManager_queue);
        v44 = swift_allocObject();
        *(v44 + 16) = v42;
        *(v44 + 24) = 9;
        v88 = sub_1000F1DA8;
        v89 = v44;
        aBlock = _NSConcreteStackBlock;
        v86 = 1107296256;
        v87[0] = sub_100147FC8;
        v45 = &unk_100277410;
LABEL_32:
        v87[1] = v45;
        v46 = _Block_copy(&aBlock);

        v2 = v79;
        static DispatchQoS.unspecified.getter();
        v84 = &_swiftEmptyArrayStorage;
        sub_1000EFFD8(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags);
        sub_100095274(&unk_1002A6B60, qword_10023AE10);
        sub_100095BDC(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
        v47 = v81;
        v12 = v82;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v46);
        (*v73)(v47, v12);
        (*v72)(v2, v80);
        v11 = v89;
        swift_unknownObjectRelease();

        v40 = v83 + 1;
        v28 = v76;
        v39 = v75;
        if (v83 + 1 == v78)
        {
          goto LABEL_24;
        }
      }

LABEL_46:
      v66 = *(v48 + v50);

      os_unfair_lock_unlock(v66 + 4);

      v67 = *(v48 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_secureTrackingSessionManager);
      v68 = *(v67 + OBJC_IVAR____TtC14dockaccessoryd28SecureTrackingSessionManager_queue);
      v69 = swift_allocObject();
      *(v69 + 16) = v67;
      *(v69 + 24) = 3;
      v88 = sub_1000EFFCC;
      v89 = v69;
      aBlock = _NSConcreteStackBlock;
      v86 = 1107296256;
      v87[0] = sub_100147FC8;
      v45 = &unk_1002773C0;
      goto LABEL_32;
    }
  }
}

void sub_1000F1440()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  if (!v2)
  {
    return;
  }

  v3 = v2 - 1;
  if (v2 == 1)
  {
    return;
  }

  v4 = *v0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_17:
    v1 = sub_10019F780(v1);
  }

  v2 = &v1[16 * v2 + 24];
  v5 = (v1 + 40);
  v6 = 1;
  while (1)
  {
    if (v6 - 1 == v3)
    {
      goto LABEL_6;
    }

    v9 = *(v1 + 2);
    if (v6 - 1 >= v9)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    if (v3 >= v9)
    {
      goto LABEL_16;
    }

    v10 = *(v5 - 1);
    v11 = *v5;
    v12 = *v2;
    *(v5 - 1) = *(v2 - 8);
    *v5 = v12;
    v13 = *(v1 + 2);

    if (v3 >= v13)
    {
      break;
    }

    v7 = *v2;
    *(v2 - 8) = v10;
    *v2 = v11;

LABEL_6:
    --v3;
    v2 -= 16;
    v5 += 2;
    if (v6++ >= v3)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:
  *v0 = v1;
}

uint64_t sub_1000F1534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC14dockaccessoryd16AppLayoutMonitor_appStateDelegates;
  swift_beginAccess();
  v7 = *(a1 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + v6) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_100102C9C(0, v7[2] + 1, 1, v7);
    *(a1 + v6) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_100102C9C((v9 > 1), v10 + 1, 1, v7);
  }

  v7[2] = v10 + 1;
  v11 = &v7[2 * v10];
  v11[4] = a2;
  v11[5] = a3;
  *(a1 + v6) = v7;
  swift_endAccess();
  return swift_unknownObjectRetain();
}

uint64_t sub_1000F1620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v5 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd16AppLayoutMonitor_foregroundAppsBundleIDs);
  v9[0] = a2;
  v9[1] = a3;
  v8[2] = v9;

  v6 = sub_10019EE0C(sub_1000BAB94, v8, v5);

  *a4 = v6 & 1;
  return result;
}

uint64_t sub_1000F16AC()
{
  sub_100095B94(0, &qword_1002A8310, RBSProcessHandle_ptr);
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() predicateMatchingBundleIdentifier:v0];

  v2 = sub_1000F1C10(v1);
  v3 = [v2 currentState];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 endowmentNamespaces];
    if (v5)
    {
      v6 = v5;
      v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      LOBYTE(v6) = sub_1000F1FD0(0xD00000000000001FLL, 0x8000000100230FD0, v7);

      v8 = v6 ^ 1;
    }

    else
    {
      v8 = 1;
    }

    if ([v4 taskState] == 4)
    {

      return v8 & 1;
    }

    v10 = [v4 taskState];

    if (v10 == 3)
    {
      return v8 & 1;
    }
  }

  else
  {
  }

  v8 = 0;
  return v8 & 1;
}

uint64_t AppLayoutMonitor.deinit()
{
  v1 = OBJC_IVAR____TtC14dockaccessoryd16AppLayoutMonitor_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd16AppLayoutMonitor_foregroundAppsBundleIDs);

  v4 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd16AppLayoutMonitor_appStateDelegates);

  return v0;
}

uint64_t AppLayoutMonitor.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC14dockaccessoryd16AppLayoutMonitor_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd16AppLayoutMonitor_foregroundAppsBundleIDs);

  v4 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd16AppLayoutMonitor_appStateDelegates);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AppLayoutMonitor()
{
  result = qword_1002A81F0;
  if (!qword_1002A81F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000F1B58()
{
  result = type metadata accessor for Logger();
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

id sub_1000F1C10(uint64_t a1)
{
  v5 = 0;
  v1 = [swift_getObjCClassFromMetadata() handleForPredicate:a1 error:&v5];
  if (v1)
  {
    v2 = v5;
  }

  else
  {
    v3 = v5;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v1;
}

uint64_t sub_1000F1CD4(uint64_t a1)
{
  v2 = sub_100095274(&unk_1002A6F60, &unk_10023C4E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000F1D44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000F1D5C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_1000F1DB8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_1000F7750(&qword_1002A9810, &type metadata accessor for UUID), v9 = dispatch thunk of Hashable._rawHashValue(seed:)(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_1000F7750(&qword_1002A8728, &type metadata accessor for UUID);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_1000F1FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1000F20C8()
{
  v0 = type metadata accessor for Logger();
  sub_100093D84(v0, qword_1002A8320);
  sub_100093DE8(v0, qword_1002A8320);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000F2140(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v55 = &v50 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v50 - v13;
  __chkstk_darwin(v12);
  v16 = &v50 - v15;
  swift_beginAccess();
  v17 = v1[2];

  v18 = sub_1000F1DB8(a1, v17);

  if (v18)
  {
    (*(v5 + 16))(v9, a1, v4);
  }

  else
  {
    v19 = v2[3];
    v54 = v9;
    if (v19)
    {
      if (qword_1002A66C8 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_100093DE8(v20, qword_1002A8320);
      v21 = *(v5 + 16);
      v21(v14, a1, v4);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v53 = v21;
        v25 = v24;
        v51 = swift_slowAlloc();
        v56[0] = v51;
        *v25 = 136315138;
        v26 = UUID.uuidString.getter();
        v52 = a1;
        v28 = v27;
        (*(v5 + 8))(v14, v4);
        v29 = sub_1000952D4(v26, v28, v56);
        a1 = v52;

        *(v25 + 4) = v29;
        _os_log_impl(&_mh_execute_header, v22, v23, "Restarting RSSI scan, targeting accessory %s", v25, 0xCu);
        sub_100095808(v51);

        v21 = v53;
      }

      else
      {

        (*(v5 + 8))(v14, v4);
      }

      v9 = v54;
      if (v2[3])
      {
        v39 = v2[3];

        sub_100105E6C();
      }
    }

    else
    {
      if (qword_1002A66C8 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_100093DE8(v30, qword_1002A8320);
      v31 = *(v5 + 16);
      v31(v16, a1, v4);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();
      v34 = os_log_type_enabled(v32, v33);
      v53 = v31;
      if (v34)
      {
        v35 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v56[0] = v52;
        *v35 = 136315138;
        v51 = UUID.uuidString.getter();
        v37 = v36;
        (*(v5 + 8))(v16, v4);
        v38 = sub_1000952D4(v51, v37, v56);

        *(v35 + 4) = v38;
        _os_log_impl(&_mh_execute_header, v32, v33, "Starting RSSI scan, targeting accessory %s", v35, 0xCu);
        sub_100095808(v52);
      }

      else
      {

        (*(v5 + 8))(v16, v4);
      }

      if (qword_1002A67A0 != -1)
      {
        swift_once();
      }

      if (*(qword_1002B1EB8 + OBJC_IVAR____TtC14dockaccessoryd6BTLink_btScan))
      {
        v40 = *(qword_1002B1EB8 + OBJC_IVAR____TtC14dockaccessoryd6BTLink_btScan);

        sub_1000F2E4C(7);
      }

      v41 = v2[4];
      v42 = v2[5];
      v43 = type metadata accessor for Transaction();
      v44 = *(v43 + 48);
      v45 = *(v43 + 52);
      v46 = swift_allocObject();
      *(v46 + 48) = 0;
      *(v46 + 24) = 0;
      *(v46 + 32) = 0;
      *(v46 + 16) = 0;
      swift_unknownObjectWeakInit();
      *(v46 + 80) = 0;
      *(v46 + 88) = 1;
      swift_unknownObjectRetain();
      Logger.init(subsystem:category:)();
      *(v46 + 64) = 0xD000000000000025;
      *(v46 + 72) = 0x8000000100230960;
      *(v46 + 48) = v42;
      *(v46 + 56) = 0x403E000000000000;
      swift_unknownObjectWeakAssign();
      swift_unknownObjectRelease();
      v47 = v2[3];
      v2[3] = v46;

      sub_100105518();

      v21 = v53;
      v9 = v54;
    }

    v21(v9, a1, v4);
  }

  swift_beginAccess();
  v48 = v55;
  sub_10019D5B8(v55, v9);
  (*(v5 + 8))(v48, v4);
  return swift_endAccess();
}

void sub_1000F27AC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100095274(&qword_1002A7AF0, &qword_10023C9D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v22 - v11;
  swift_beginAccess();
  sub_10019EEB8(a1, v12);
  sub_100095C84(v12, &qword_1002A7AF0, &qword_10023C9D0);
  swift_endAccess();
  if (qword_1002A66C8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100093DE8(v13, qword_1002A8320);
  (*(v5 + 16))(v8, a1, v4);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v23 = v17;
    *v16 = 136315138;
    v18 = UUID.uuidString.getter();
    v20 = v19;
    (*(v5 + 8))(v8, v4);
    v21 = sub_1000952D4(v18, v20, &v23);

    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v14, v15, "Invalidating RSSI target %s", v16, 0xCu);
    sub_100095808(v17);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  if (!*(*(v2 + 16) + 16))
  {
    sub_1000F2B90();
  }
}

uint64_t sub_1000F2A84()
{
  v1 = v0;
  if (qword_1002A66C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100093DE8(v2, qword_1002A8320);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Purging all RSSI scan targets.", v5, 2u);
  }

  swift_beginAccess();
  v6 = *(v1 + 16);
  *(v1 + 16) = &_swiftEmptySetSingleton;
}

void sub_1000F2B90()
{
  if (*(v0 + 24))
  {
    v1 = v0;
    if (qword_1002A66C8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100093DE8(v2, qword_1002A8320);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Stopping RSSI scan", v5, 2u);
    }

    if (qword_1002A67A0 != -1)
    {
      swift_once();
    }

    if (*(qword_1002B1EB8 + OBJC_IVAR____TtC14dockaccessoryd6BTLink_btScan))
    {
      v6 = *(qword_1002B1EB8 + OBJC_IVAR____TtC14dockaccessoryd6BTLink_btScan);

      sub_1000F2E4C(4);
    }

    if (*(v1 + 24))
    {
      v7 = *(v1 + 24);

      sub_1001059EC();

      v8 = *(v1 + 24);
    }

    *(v1 + 24) = 0;
  }
}

uint64_t sub_1000F2D24()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1000F2D90()
{
  sub_1000F4660();
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  sub_100095C84(v0 + 80, &unk_1002A6810, &unk_10023AB10);
  return v0;
}

uint64_t sub_1000F2DF4()
{
  sub_1000F2D90();

  return swift_deallocClassInstance();
}

void sub_1000F2E4C(int a1)
{
  v77 = a1;
  v1 = type metadata accessor for Data.Iterator();
  v2 = *(v1 - 8);
  v3 = v2[8];
  __chkstk_darwin(v1);
  v100 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100095274(&qword_1002A7AF0, &qword_10023C9D0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v75 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 8);
  v12 = __chkstk_darwin(v9);
  v14 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v98 = &v75 - v16;
  __chkstk_darwin(v15);
  v90 = &v75 - v17;
  if (qword_1002A6780 != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v18 = qword_1002B1CF0;
    v19 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
    v20 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

    os_unfair_lock_lock(v20 + 4);

    v21 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_accessories;
    swift_beginAccess();
    v22 = *(v18 + v21);
    v23 = *(v18 + v19);

    os_unfair_lock_unlock(v23 + 4);

    v105 = &_swiftEmptyArrayStorage;
    v78 = v22;
    if (v22 >> 62)
    {
      break;
    }

    v24 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v24)
    {
      goto LABEL_30;
    }

LABEL_4:
    v25 = 0;
    v89 = v78 & 0xC000000000000001;
    v88 = v78 & 0xFFFFFFFFFFFFFF8;
    v80 = v78 + 32;
    v97 = (v10 + 8);
    v91 = 0x8000000100231150;
    v83 = (v2 + 1);
    v82 = (v10 + 48);
    v79 = (v10 + 32);
    v81 = xmmword_10023C8B0;
    v99 = xmmword_10023C170;
    v86 = v9;
    v85 = v14;
    v87 = v8;
    v84 = v24;
    while (1)
    {
      if (v89)
      {
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v25 >= *(v88 + 16))
        {
          goto LABEL_27;
        }

        v26 = *(v80 + 8 * v25);
      }

      v2 = v26;
      v27 = __OFADD__(v25, 1);
      v28 = v25 + 1;
      if (v27)
      {
        break;
      }

      v96 = v28;
      v29 = dispatch thunk of DockCoreAccessory.info.getter();
      v30 = v90;
      DockCoreInfo.identifier.getter();

      sub_100095274(&unk_1002AC9B0, &qword_10023C3D0);
      v31 = swift_allocObject();
      *(v31 + 16) = v81;
      UUID.uuid.getter();
      *(v31 + 32) = v32;
      UUID.uuid.getter();
      *(v31 + 33) = v33;
      UUID.uuid.getter();
      *(v31 + 34) = v34;
      UUID.uuid.getter();
      *(v31 + 35) = v35;
      UUID.uuid.getter();
      *(v31 + 36) = v36;
      UUID.uuid.getter();
      *(v31 + 37) = v37;
      v38 = sub_100104264(v31);
      v40 = v39;

      v94 = *v97;
      v94(v30, v9);
      sub_1000A0CD8(v38, v40);
      v41 = dispatch thunk of DockCoreAccessory.info.getter();
      DockCoreInfo.identifier.getter();

      v95 = v2;
      if ((v40 >> 62) > 1)
      {
        v42 = v100;
        if (v40 >> 62 == 2)
        {
          v43 = *(v38 + 16);
        }
      }

      else
      {
        v42 = v100;
      }

      sub_1000A0CD8(v38, v40);
      v92 = v40;
      v93 = v38;
      Data.Iterator.init(_:at:)();
      v44 = sub_1000F7750(&qword_1002A7140, &type metadata accessor for Data.Iterator);
      dispatch thunk of IteratorProtocol.next()();
      v45 = 0xD000000000000018;
      v14 = v91;
      if ((v104 & 1) == 0)
      {
        v14 = v91;
        do
        {
          v46 = v103;
          sub_100095274(&unk_1002A73A0, &qword_10023C670);
          v47 = swift_allocObject();
          *(v47 + 16) = v99;
          *(v47 + 56) = &type metadata for UInt8;
          *(v47 + 64) = &protocol witness table for UInt8;
          *(v47 + 32) = v46;
          v48 = v44;
          v49 = String.init(format:_:)();
          v51 = v50;
          v101 = v45;
          v102 = v14;

          v52._countAndFlagsBits = v49;
          v44 = v48;
          v52._object = v51;
          String.append(_:)(v52);

          v42 = v100;

          v45 = v101;
          v14 = v102;
          dispatch thunk of IteratorProtocol.next()();
        }

        while (v104 != 1);
      }

      v54 = v92;
      v53 = v93;
      sub_1000A0D2C(v93, v92);
      (*v83)(v42, v1);
      v8 = v87;
      UUID.init(uuidString:)();

      v55 = *v82;
      v9 = v86;
      if ((*v82)(v8, 1, v86) == 1)
      {
        v56 = v85;
        UUID.init()();
        v57 = v55(v8, 1, v9);
        v2 = v95;
        if (v57 != 1)
        {
          sub_100095C84(v8, &qword_1002A7AF0, &qword_10023C9D0);
        }
      }

      else
      {
        v56 = v85;
        (*v79)(v85, v8, v9);
        v2 = v95;
      }

      v10 = v98;
      v58 = static UUID.== infix(_:_:)();
      sub_1000A0D2C(v53, v54);
      v59 = v94;
      v94(v56, v9);
      v59(v10, v9);
      if (v58)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v60 = v105[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      v25 = v96;
      if (v96 == v84)
      {
        v61 = v105;
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    swift_once();
  }

  v24 = _CocoaArrayWrapper.endIndex.getter();
  if (v24)
  {
    goto LABEL_4;
  }

LABEL_30:
  v61 = &_swiftEmptyArrayStorage;
LABEL_31:

  if ((v61 & 0x8000000000000000) != 0 || (v61 & 0x4000000000000000) != 0)
  {
    v62 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v62 = *(v61 + 16);
  }

  if (qword_1002A66C8 != -1)
  {
    swift_once();
  }

  v63 = type metadata accessor for Logger();
  sub_100093DE8(v63, qword_1002A8320);
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    *v66 = 136315394;
    if (v77 > 3u)
    {
      if (v77 > 5u)
      {
        if (v77 == 6)
        {
          v67 = 0xE600000000000000;
          v68 = 0x7461626D6F77;
        }

        else
        {
          v67 = 0xE900000000000064;
          v68 = 0x6C6F687365726874;
        }
      }

      else if (v77 == 4)
      {
        v67 = 0xE700000000000000;
        v68 = 0x74754F656D6974;
      }

      else
      {
        v67 = 0xE300000000000000;
        v68 = 6514286;
      }
    }

    else if (v77 > 1u)
    {
      if (v77 == 2)
      {
        v67 = 0xE700000000000000;
        v68 = 0x7463656E6E6F63;
      }

      else
      {
        v67 = 0xEA00000000007463;
        v68 = 0x656E6E6F63736964;
      }
    }

    else if (v77)
    {
      v67 = 0xE600000000000000;
      v68 = 0x68636E75616CLL;
    }

    else
    {
      v67 = 0xE400000000000000;
      v68 = 1701736302;
    }

    v69 = sub_1000952D4(v68, v67, &v101);

    *(v66 + 4) = v69;
    *(v66 + 12) = 2080;
    if (v62)
    {
      v70 = 0x646572696170;
    }

    else
    {
      v70 = 0x6465726961706E75;
    }

    if (v62)
    {
      v71 = 0xE600000000000000;
    }

    else
    {
      v71 = 0xE800000000000000;
    }

    v72 = sub_1000952D4(v70, v71, &v101);

    *(v66 + 14) = v72;
    _os_log_impl(&_mh_execute_header, v64, v65, "BT Scan event: %s (%s)", v66, 0x16u);
    swift_arrayDestroy();
  }

  v73 = v76;
  if (v77 <= 2u)
  {
    if (v77)
    {
      if (v77 == 1)
      {
        goto LABEL_65;
      }

      goto LABEL_72;
    }
  }

  else
  {
    if (v77 > 5u)
    {
      if (v77 == 6)
      {
        if (([*(v76 + 40) isScanning] & 1) == 0 && *(v73 + 72) != 1)
        {
          return;
        }

        sub_1000F657C(1, 1);
        v74 = 4;
      }

      else
      {
        v74 = 3;
      }

LABEL_75:
      sub_1000F3974(v74);
      return;
    }

    if (v77 - 3 >= 2)
    {
      v74 = 1;
      goto LABEL_75;
    }

LABEL_65:
    if (v62)
    {
      sub_1000F657C(1, 0);
      v74 = 2;
      goto LABEL_75;
    }

    sub_1000F657C(0, 0);
LABEL_72:
    if (*(v73 + 64))
    {
      sub_1000F4660();
    }
  }
}

void sub_1000F3974(char a1)
{
  v2 = v1;
  if (*(v1 + 64))
  {
    sub_1000F4660();
  }

  if (a1)
  {
    if (qword_1002A66C8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100093DE8(v4, qword_1002A8320);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Starting Bluetooth discovery...", v7, 2u);
    }

    if (qword_1002A67A0 != -1)
    {
      swift_once();
    }

    v8 = qword_1002B1EB8;
    v9 = OBJC_IVAR____TtC14dockaccessoryd6BTLink__discoveredLock;
    v10 = *(qword_1002B1EB8 + OBJC_IVAR____TtC14dockaccessoryd6BTLink__discoveredLock);

    os_unfair_lock_lock(v10 + 4);

    v11 = OBJC_IVAR____TtC14dockaccessoryd6BTLink__discoveredDevices;
    swift_beginAccess();
    v12 = *(v8 + v11);
    *(v8 + v11) = &_swiftEmptyDictionarySingleton;

    v13 = *(v8 + v9);

    os_unfair_lock_unlock(v13 + 4);

    v14 = [objc_allocWithZone(CBDiscovery) init];
    v15 = *(v2 + 64);
    *(v2 + 64) = v14;
    v16 = v14;

    if (v16)
    {
      [v16 setBleRSSIThresholdHint:4294967226];

      v17 = *(v2 + 64);
      if (v17)
      {
        v18 = 1074790400;
        if (a1 == 4)
        {
          v18 = 1107296256;
        }

        if (a1 == 3)
        {
          v19 = 0x240000000;
        }

        else
        {
          v19 = v18;
        }

        [v17 setDiscoveryFlags:v19];
        v20 = *(v2 + 64);
        if (v20)
        {
          [v20 setDispatchQueue:*(v2 + 32)];
          v21 = *(v2 + 64);
          if (v21)
          {
            [v21 addDiscoveryType:12];
            v22 = *(v2 + 64);
            if (v22)
            {
              v35 = sub_1000F7740;
              v36 = v2;
              aBlock = _NSConcreteStackBlock;
              v32 = 1107296256;
              v33 = sub_1000F3FF4;
              v34 = &unk_1002775F8;
              v23 = _Block_copy(&aBlock);

              v24 = v22;

              [v24 setDeviceFoundHandler:v23];
              _Block_release(v23);

              v25 = *(v2 + 64);
              if (v25)
              {
                v35 = sub_1000F405C;
                v36 = 0;
                aBlock = _NSConcreteStackBlock;
                v32 = 1107296256;
                v33 = sub_1000F3FF4;
                v34 = &unk_100277620;
                v26 = _Block_copy(&aBlock);
                v27 = v25;
                [v27 setDeviceLostHandler:v26];
                _Block_release(v26);

                v28 = *(v2 + 64);
                if (v28)
                {
                  v35 = sub_1000F7748;
                  v36 = v2;
                  aBlock = _NSConcreteStackBlock;
                  v32 = 1107296256;
                  v33 = sub_10015C1F8;
                  v34 = &unk_100277648;
                  v29 = _Block_copy(&aBlock);

                  v30 = v28;

                  [v30 activateWithCompletion:v29];
                  _Block_release(v29);
                }

                *(v2 + 73) = a1;
                return;
              }

LABEL_30:
              __break(1u);
              return;
            }

LABEL_29:
            __break(1u);
            goto LABEL_30;
          }

LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

LABEL_27:
        __break(1u);
        goto LABEL_28;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_27;
  }
}

void sub_1000F3DC8(void *a1)
{
  if (qword_1002A66C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100093DE8(v2, qword_1002A8320);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v6 = 136315394;
    v7 = [v3 name];
    if (v7)
    {
      v8 = v7;
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;
    }

    else
    {
      v11 = 0xE700000000000000;
      v9 = 0x6E776F6E6B6E55;
    }

    v12 = sub_1000952D4(v9, v11, &v19);

    *(v6 + 4) = v12;
    *(v6 + 12) = 2080;
    v13 = [v3 identifier];
    if (v13)
    {
      v14 = v13;
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;
    }

    else
    {
      v17 = 0xE100000000000000;
      v15 = 45;
    }

    v18 = sub_1000952D4(v15, v17, &v19);

    *(v6 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v4, v5, "Found device %s [%s]", v6, 0x16u);
    swift_arrayDestroy();
  }

  sub_1000F4830(v3);
}

void sub_1000F3FF4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

id sub_1000F405C(void *a1)
{
  v2 = sub_100095274(&unk_1002A9C20, &qword_10023D210);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v33[-1] - v4;
  if (qword_1002A66C8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100093DE8(v6, qword_1002A8320);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v33[0] = swift_slowAlloc();
    *v10 = 136315394;
    v11 = [v7 name];
    if (v11)
    {
      v12 = v11;
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;
    }

    else
    {
      v15 = 0xE700000000000000;
      v13 = 0x6E776F6E6B6E55;
    }

    v16 = sub_1000952D4(v13, v15, v33);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2080;
    v17 = [v7 identifier];
    if (v17)
    {
      v18 = v17;
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;
    }

    else
    {
      v21 = 0xE100000000000000;
      v19 = 45;
    }

    v22 = sub_1000952D4(v19, v21, v33);

    *(v10 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v8, v9, "Lost device %s [%s]", v10, 0x16u);
    swift_arrayDestroy();
  }

  result = [v7 identifier];
  if (result)
  {
    v24 = result;
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    if (qword_1002A67A0 != -1)
    {
      swift_once();
    }

    v28 = qword_1002B1EB8;
    v29 = OBJC_IVAR____TtC14dockaccessoryd6BTLink__discoveredLock;
    v30 = *(qword_1002B1EB8 + OBJC_IVAR____TtC14dockaccessoryd6BTLink__discoveredLock);

    os_unfair_lock_lock(v30 + 4);

    swift_beginAccess();
    sub_1001E4E78(v25, v27, v5);
    sub_100095C84(v5, &unk_1002A9C20, &qword_10023D210);
    swift_endAccess();

    v31 = *(v28 + v29);

    os_unfair_lock_unlock(v31 + 4);
  }

  return result;
}

void sub_1000F43C0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (qword_1002A66C8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100093DE8(v2, qword_1002A8320);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v15[0] = v5;
      *v4 = 136315138;
      swift_getErrorValue();
      v6 = Error.localizedDescription.getter();
      v8 = sub_1000952D4(v6, v7, v15);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, oslog, v3, "Unable to activate CBDiscovery: %s", v4, 0xCu);
      sub_100095808(v5);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1002A66C8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100093DE8(v10, qword_1002A8320);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Bluetooth discovery activated!", v13, 2u);
    }

    *(a2 + 72) = 1;
    swift_beginAccess();
    sub_1000B5150(a2 + 80, v15, &unk_1002A6810, &unk_10023AB10);
    sub_100095C84(v15, &unk_1002A6810, &unk_10023AB10);
  }
}

uint64_t sub_1000F4660()
{
  v1 = v0;
  if (qword_1002A66C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100093DE8(v2, qword_1002A8320);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Stopping Bluetooth discovery...", v5, 2u);
  }

  [*(v1 + 64) invalidate];
  v6 = *(v1 + 64);
  *(v1 + 64) = 0;

  *(v1 + 72) = 0;
  swift_beginAccess();
  sub_1000B5150(v1 + 80, v14, &unk_1002A6810, &unk_10023AB10);
  if (v15)
  {
    sub_1000A097C(v14, v13);
    sub_100095C84(v14, &unk_1002A6810, &unk_10023AB10);
    v7 = sub_1000A09E0(v13, v13[3]);
    v8 = *v7;
    v9 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_rssiTxn;
    v10 = *(*v7 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_rssiTxn);

    sub_1000F2B90();

    v11 = *(v8 + v9);

    sub_1000F2A84();

    result = sub_100095808(v13);
  }

  else
  {
    result = sub_100095C84(v14, &unk_1002A6810, &unk_10023AB10);
  }

  *(v1 + 73) = 0;
  return result;
}

void sub_1000F4830(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 bleAdvertisementTimestamp];
  if (v9 > 0.0)
  {
    static Date.now.getter();
    Date.timeIntervalSinceReferenceDate.getter();
    v11 = v10;
    (*(v5 + 8))(v8, v4);
    [a1 bleAdvertisementTimestamp];
    if (qword_1002A66C8 != -1)
    {
      v36 = *&v12;
      swift_once();
      *&v12 = v36;
    }

    v13 = v11 - *&v12;
    v14 = type metadata accessor for Logger();
    sub_100093DE8(v14, qword_1002A8320);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      *(v17 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v15, v16, "New device is %f seconds old...", v17, 0xCu);
    }

    if (v13 >= 1.0)
    {
      v28 = a1;
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 134218240;
        *(v31 + 4) = v13;
        *(v31 + 12) = 2048;
        [v28 bleAdvertisementTimestamp];
        *(v31 + 14) = v32;
        _os_log_impl(&_mh_execute_header, v29, v30, "Ignoring found device: lifetime is too old: %f (%f)", v31, 0x16u);
LABEL_22:
      }
    }

    else
    {
      sub_1000F6A3C(a1, &v38);
      v18 = v39;
      if (v39)
      {
        v19 = v38;
        v42 = v40;
        v43 = v41;
        v20 = swift_allocObject();
        *(v20 + 16) = 0;
        if (qword_1002A67A0 != -1)
        {
          swift_once();
        }

        v21 = swift_allocObject();
        *(v21 + 16) = a1;
        *(v21 + 24) = v20;
        *(v21 + 32) = v2;
        *(v21 + 40) = v19;
        *(v21 + 48) = v18;
        v22 = v43;
        *(v21 + 56) = v42;
        *(v21 + 72) = v22;
        v23 = a1;

        sub_1000B5150(&v38, v37, &unk_1002A7AA0, &unk_10023C978);
        sub_1001D5444(sub_1000F72E0, v21);

        sub_100095C84(&v38, &unk_1002A7AA0, &unk_10023C978);
        return;
      }

      v29 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v29, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v29, v33, "Unable to parse advertisement data!", v34, 2u);
        goto LABEL_22;
      }
    }

    return;
  }

  if (qword_1002A66C8 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_100093DE8(v24, qword_1002A8320);
  v36 = COERCE_DOUBLE(Logger.logObject.getter());
  v25 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(*&v36, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, *&v36, v25, "Ignoring found device: advertisment timestamp is 0.", v26, 2u);
  }

  v27 = *&v36;
}

void sub_1000F4D14(void *a1, uint64_t a2, void *a3, NSObject *a4, uint64_t a5, uint64_t *a6)
{
  v133 = a4;
  v131 = a1;
  v8 = *a6;
  v9 = a6[1];
  v132 = *(a6 + 12);
  v11 = *(a6 + 4);
  v10 = *(a6 + 5);
  v12 = *(a6 + 26);
  v13 = a6[4];
  v14 = a6[5];
  v15 = sub_100095274(&qword_1002A7AF0, &qword_10023C9D0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v115 - v17;
  v19 = type metadata accessor for UUID();
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19);
  v22 = __chkstk_darwin(v21);
  v23 = __chkstk_darwin(v22);
  if (!a2)
  {
    v119 = v18;
    v123 = v9;
    v121 = v14;
    v117 = v27;
    v124 = v8;
    v120 = &v115 - v24;
    v118 = v26;
    v126 = v25;
    v125 = v23;
    v32 = [a3 btAddressData];
    v33 = v11;
    v34 = v12;
    v35 = v13;
    v130 = a3;
    v129 = v13;
    v127 = v11;
    v128 = v12;
    v122 = v10;
    if (v32)
    {
      v36 = v32;
      v37 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;

      sub_1000A0CD8(v37, v39);
      v40 = sub_1001D0F80(v37, v39);
      if (v41 >> 60 == 15)
      {
        sub_1000A0D2C(v37, v39);
      }

      else
      {
        v42 = v40;
        v43 = v41;
        if (qword_1002A66C8 != -1)
        {
          swift_once();
        }

        v44 = type metadata accessor for Logger();
        sub_100093DE8(v44, qword_1002A8320);
        sub_1000A0CD8(v42, v43);
        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.default.getter();
        sub_1000A452C(v42, v43);
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v134 = v48;
          *v47 = 136315138;
          v49._countAndFlagsBits = sub_10014025C(v42, v43);
          *&v135 = 0x206D6F646E6152;
          *(&v135 + 1) = 0xE700000000000000;
          String.append(_:)(v49);

          v50 = sub_1000952D4(v135, *(&v135 + 1), &v134);

          *(v47 + 4) = v50;
          _os_log_impl(&_mh_execute_header, v45, v46, "Trying to retrieve peripheral with address: %s", v47, 0xCu);
          sub_100095808(v48);
        }

        v51._countAndFlagsBits = sub_10014025C(v42, v43);
        *&v135 = 0x206D6F646E6152;
        *(&v135 + 1) = 0xE700000000000000;
        String.append(_:)(v51);

        v52 = String._bridgeToObjectiveC()();

        v53 = [v131 retrievePeripheralWithAddress:v52];
        sub_1000A0D2C(v37, v39);
        sub_1000A452C(v42, v43);

        v54 = v133;
        swift_beginAccess();
        isa = v54[2].isa;
        v54[2].isa = v53;
      }

      a3 = v130;
      v35 = v129;
      v33 = v127;
      v34 = v128;
    }

    v56 = v133;
    swift_beginAccess();
    if (!v56[2].isa)
    {
      v57 = [a3 identifier];
      if (v57)
      {
        v58 = v57;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v34 = v128;
      }

      v59 = v119;
      UUID.init(uuidString:)();

      v60 = v126;
      v61 = v125;
      if ((*(v126 + 48))(v59, 1, v125) == 1)
      {
        sub_100095C84(v59, &qword_1002A7AF0, &qword_10023C9D0);
      }

      else
      {
        v62 = v120;
        (*(v60 + 32))(v120, v59, v61);
        if (qword_1002A66C8 != -1)
        {
          swift_once();
        }

        v63 = type metadata accessor for Logger();
        sub_100093DE8(v63, qword_1002A8320);
        v64 = *(v60 + 16);
        v65 = v117;
        v64(v117, v62, v61);
        v66 = Logger.logObject.getter();
        v67 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          v119 = (v60 + 16);
          v69 = v68;
          v70 = swift_slowAlloc();
          *&v135 = v70;
          *v69 = 136315138;
          v71 = UUID.uuidString.getter();
          v116 = v64;
          v73 = v72;
          v74 = *(v60 + 8);
          v74(v65, v61);
          v75 = sub_1000952D4(v71, v73, &v135);
          v64 = v116;

          *(v69 + 4) = v75;
          _os_log_impl(&_mh_execute_header, v66, v67, "Trying to retrieve peripheral with uuid: %s", v69, 0xCu);
          sub_100095808(v70);
          v33 = v127;
        }

        else
        {

          v74 = *(v60 + 8);
          v74(v65, v61);
        }

        sub_100095274(&qword_1002A8720, &qword_10023D208);
        v76 = *(v60 + 72);
        v77 = (*(v60 + 80) + 32) & ~*(v60 + 80);
        v78 = swift_allocObject();
        *(v78 + 16) = xmmword_10023C170;
        v64(v78 + v77, v120, v61);
        v79 = Array._bridgeToObjectiveC()().super.isa;

        v80 = [v131 retrievePeripheralsWithIdentifiers:v79];

        sub_100095B94(0, &unk_1002A98E0, CBPeripheral_ptr);
        v81 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v35 = v129;
        if (v81 >> 62)
        {
          v82 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v82 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v34 = v128;
        if (v82)
        {
          if ((v81 & 0xC000000000000001) != 0)
          {
            v83 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (!*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_56;
            }

            v83 = *(v81 + 32);
          }

          v84 = v83;

          v74(v120, v61);
        }

        else
        {
          v74(v120, v61);

          v84 = 0;
        }

        v85 = v133;
        swift_beginAccess();
        v86 = v85[2].isa;
        v85[2].isa = v84;
      }
    }

    v87 = v133;
    swift_beginAccess();
    if (!v87[2].isa)
    {
      if (qword_1002A66C8 != -1)
      {
        swift_once();
      }

      v106 = type metadata accessor for Logger();
      sub_100093DE8(v106, qword_1002A8320);
      v107 = Logger.logObject.getter();
      v108 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v107, v108))
      {
        v109 = swift_slowAlloc();
        *v109 = 0;
        _os_log_impl(&_mh_execute_header, v107, v108, "Unable to retrieve peripheral", v109, 2u);
      }

      goto LABEL_52;
    }

    if (qword_1002A66C8 != -1)
    {
      swift_once();
    }

    v88 = type metadata accessor for Logger();
    sub_100093DE8(v88, qword_1002A8320);

    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = v34;
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      *&v135 = v93;
      *v92 = 136315138;
      v94 = v133;
      swift_beginAccess();
      v95 = v94[2].isa;
      if (!v95)
      {
LABEL_57:

        __break(1u);
        return;
      }

      v96 = v95;

      v97 = [(objc_class *)v96 identifier];

      v98 = v118;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1000F7750(&unk_1002A6F90, &type metadata accessor for UUID);
      v99 = v125;
      v100 = dispatch thunk of CustomStringConvertible.description.getter();
      v102 = v101;
      (*(v126 + 8))(v98, v99);
      v103 = sub_1000952D4(v100, v102, &v135);

      *(v92 + 4) = v103;
      _os_log_impl(&_mh_execute_header, v89, v90, "Got peripheral with UUID %s", v92, 0xCu);
      sub_100095808(v93);

      v104 = v124;
      v105 = v123;
      v35 = v129;
      v33 = v127;
      v34 = v91;
    }

    else
    {

      v104 = v124;
      v105 = v123;
    }

    v110 = v133;
    swift_beginAccess();
    v111 = v110[2].isa;
    v112 = v130;
    if (v111)
    {
      v113 = v122 | (v132 << 32);
      v114 = 0x10000;
      *&v135 = v104;
      *(&v135 + 1) = v105;
      if ((v34 & 1) == 0)
      {
        v114 = 0;
      }

      v136 = v33 | (v113 << 32);
      v137 = v114 & 0xFFFFFFFFFFFF0000 | WORD2(v113);
      v138 = v35;
      v139 = v121;
      v107 = v111;
      sub_1000F72F0(v112, v107, &v135);
LABEL_52:

      return;
    }

LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (qword_1002A66C8 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_100093DE8(v28, qword_1002A8320);
  v133 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v133, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v133, v29, "Unable to power on BT central!", v30, 2u);
  }

  v31 = v133;
}

uint64_t sub_1000F5AB8()
{
  v1 = v0;
  if ([*(v0 + 40) isScanning])
  {
    if (qword_1002A66C8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100093DE8(v2, qword_1002A8320);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Stopping scan...", v5, 2u);
    }

    [*(v1 + 40) stopScan];
  }

  if (*(v1 + 73) == 5)
  {
    *(v1 + 73) = 0;
  }

  v6 = *(v1 + 48);

  sub_1001059EC();

  swift_beginAccess();
  sub_1000B5150(v1 + 80, v14, &unk_1002A6810, &unk_10023AB10);
  if (!v15)
  {
    return sub_100095C84(v14, &unk_1002A6810, &unk_10023AB10);
  }

  sub_1000A097C(v14, v13);
  sub_100095C84(v14, &unk_1002A6810, &unk_10023AB10);
  v7 = sub_1000A09E0(v13, v13[3]);
  v8 = *v7;
  v9 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_rssiTxn;
  v10 = *(*v7 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_rssiTxn);

  sub_1000F2B90();

  v11 = *(v8 + v9);

  sub_1000F2A84();

  return sub_100095808(v13);
}

uint64_t sub_1000F5CB0(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[0] = type metadata accessor for DispatchQoS();
  v10 = *(v19[0] - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v19[0]);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + 32);
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = v2;
  aBlock[4] = sub_1000F6A18;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147FC8;
  aBlock[3] = &unk_100277530;
  v16 = _Block_copy(aBlock);
  v17 = v14;

  static DispatchQoS.unspecified.getter();
  v19[1] = _swiftEmptyArrayStorage;
  sub_1000F7750(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags);
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_1000BAB30();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v19[0]);
}

uint64_t sub_1000F5F80(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_1000F6040(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for BTDiscoveredDevice()
{
  result = qword_1002A86C0;
  if (!qword_1002A86C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000F6130()
{
  sub_100095B94(319, &qword_1002A86D0, CBDevice_ptr);
  if (v0 <= 0x3F)
  {
    sub_1000F61F4();
    if (v1 <= 0x3F)
    {
      sub_1000F625C();
      if (v2 <= 0x3F)
      {
        type metadata accessor for Date();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000F61F4()
{
  if (!qword_1002A86D8)
  {
    sub_100095B94(255, &unk_1002A98E0, CBPeripheral_ptr);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1002A86D8);
    }
  }
}

void sub_1000F625C()
{
  if (!qword_1002A86E0)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1002A86E0);
    }
  }
}

uint64_t getEnumTagSinglePayload for BTScanType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BTScanType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000F6400()
{
  result = qword_1002A8718;
  if (!qword_1002A8718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A8718);
  }

  return result;
}

uint64_t sub_1000F6454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16) == a1 && *(a3 + 24) == a2;
  if (v4 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    if (qword_1002A66C8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100093DE8(v6, qword_1002A8320);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Scan transaction timed out.", v9, 2u);
    }

    result = [*(a3 + 40) isScanning];
    if ((result & 1) != 0 || *(a3 + 72) == 1)
    {
      return sub_1000F5AB8();
    }
  }

  return result;
}

uint64_t sub_1000F657C(char a1, char a2)
{
  if (qword_1002A66C8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100093DE8(v4, qword_1002A8320);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109376;
    *(v7 + 4) = a1 & 1;
    *(v7 + 8) = 1024;
    *(v7 + 10) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v5, v6, "Setting XPC launch events for Bluetooth (enabled = %{BOOL}d; screenOff = %{BOOL}d)", v7, 0xEu);
  }

  v8 = xpc_dictionary_create(0, 0, 0);
  empty = xpc_array_create_empty();
  v10 = xpc_array_create_empty();
  if (a1)
  {
    v11 = XPC_ARRAY_APPEND.getter();
    xpc_array_set_string(empty, v11, "DockKitAccessory");
    v12 = XPC_ARRAY_APPEND.getter();
    xpc_array_set_string(v10, v12, "BLEAdvertisementData");
    v13 = XPC_ARRAY_APPEND.getter();
    xpc_array_set_string(v10, v13, "PassiveRSSI");
    if (a2)
    {
      v14 = XPC_ARRAY_APPEND.getter();
      xpc_array_set_string(v10, v14, "ScreenOff");
    }

    xpc_dictionary_set_value(v8, "discoveryFlags", v10);
    xpc_dictionary_set_value(v8, "discoveryTypes", empty);
    xpc_dictionary_set_int64(v8, "bleRSSIThresholdHint", -70);
  }

  xpc_set_event();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t sub_1000F6788(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  *(v3 + 80) = 0u;
  v8 = v3 + 80;
  *(v8 - 64) = 1851876211;
  *(v8 - 56) = 0xE400000000000000;
  *(v8 - 24) = 0;
  *(v8 - 16) = 0;
  *(v8 - 8) = 0;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0;
  *(v8 - 48) = a2;
  *(v8 - 40) = a1;
  swift_beginAccess();
  v9 = a1;
  v10 = a2;
  sub_1000F6968(a3, v8);
  swift_endAccess();
  v12 = *(v8 - 64);
  v11 = *(v8 - 56);
  v13 = type metadata accessor for Transaction();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  *(v16 + 48) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = 0;
  *(v16 + 16) = 0;
  swift_unknownObjectWeakInit();
  *(v16 + 80) = 0;
  *(v16 + 88) = 1;

  Logger.init(subsystem:category:)();
  *(v16 + 64) = v12;
  *(v16 + 72) = v11;
  *(v16 + 48) = 0;
  *(v16 + 56) = 0x403E000000000000;
  swift_unknownObjectWeakAssign();
  *(v8 - 32) = v16;
  if (qword_1002A6780 != -1)
  {
    swift_once();
    v19 = *(v4 + 48);
  }

  sub_1001859D4(v17);

  sub_100095C84(a3, &unk_1002A6810, &unk_10023AB10);
  *(*(v4 + 48) + 48) = &off_1002774F0;
  swift_unknownObjectWeakAssign();
  return v4;
}

uint64_t sub_1000F6968(uint64_t a1, uint64_t a2)
{
  v4 = sub_100095274(&unk_1002A6810, &unk_10023AB10);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F69D8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000F6A24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000F6A3C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = [a1 dockKitAccessoryPayloadData];
  if (!v7)
  {
    v24 = [a1 bleAdvertisementData];
    if (!v24)
    {
LABEL_36:
      v22 = 0;
      v23 = 0;
      v20 = 0uLL;
      v21 = 0uLL;
      goto LABEL_37;
    }

    v25 = v24;
    v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    v29 = v28 >> 62;
    if ((v28 >> 62) > 1)
    {
      if (v29 != 2)
      {
        goto LABEL_25;
      }

      v31 = *(v26 + 16);
      v30 = *(v26 + 24);
      v32 = __OFSUB__(v30, v31);
      v33 = v30 - v31;
      if (!v32)
      {
        if (v33 > 25)
        {
          goto LABEL_15;
        }

        goto LABEL_25;
      }

      __break(1u);
    }

    else
    {
      if (!v29)
      {
        if (BYTE6(v28) <= 0x19uLL)
        {
          goto LABEL_25;
        }

LABEL_15:
        v34 = sub_100104264(&off_100274D18);
        v3 = v35;
        v36 = Data._Representation.subscript.getter();
        v37 = Data._Representation.subscript.getter();
        sub_1000A0CD8(v26, v28);
        sub_10013B31C(2, v26, v28, &v71);
        sub_10015319C(16, v71, v72, &v73);
        v2 = *(&v73 + 1);
        v4 = v73;
        v70 = v34;
        if (sub_1001ACC84(v73, *(&v73 + 1), v34, v3))
        {
          if (v37 == 33)
          {
            if (v36 == 29)
            {
              if (qword_1002A66C8 != -1)
              {
                swift_once();
              }

              v60 = type metadata accessor for Logger();
              sub_100093DE8(v60, qword_1002A8320);
              v39 = Logger.logObject.getter();
              v40 = static os_log_type_t.default.getter();
              v67 = v4;
              if (os_log_type_enabled(v39, v40))
              {
                v41 = swift_slowAlloc();
                *v41 = 0;
                v42 = "Found device with docking advertisement";
                goto LABEL_43;
              }
            }

            else
            {
              if (v36 != 25)
              {
                if (qword_1002A66C8 != -1)
                {
                  swift_once();
                }

                v62 = type metadata accessor for Logger();
                sub_100093DE8(v62, qword_1002A8320);
                v63 = Logger.logObject.getter();
                v64 = static os_log_type_t.error.getter();
                if (os_log_type_enabled(v63, v64))
                {
                  v65 = swift_slowAlloc();
                  *v65 = 16777472;
                  v65[4] = v36;
                  _os_log_impl(&_mh_execute_header, v63, v64, "Invalid device advertisement length: %hhu", v65, 5u);
                }

                sub_1000A0D2C(v26, v28);
                sub_1000A0D2C(v4, v2);
                sub_1000A0D2C(v34, v3);

                goto LABEL_36;
              }

              if (qword_1002A66C8 != -1)
              {
                swift_once();
              }

              v38 = type metadata accessor for Logger();
              sub_100093DE8(v38, qword_1002A8320);
              v39 = Logger.logObject.getter();
              v40 = static os_log_type_t.default.getter();
              v67 = v4;
              if (os_log_type_enabled(v39, v40))
              {
                v41 = swift_slowAlloc();
                *v41 = 0;
                v42 = "Found device with pairing advertisement";
LABEL_43:
                _os_log_impl(&_mh_execute_header, v39, v40, v42, v41, 2u);
                v61 = v2;

LABEL_45:

                sub_1000A0CD8(v26, v28);
                sub_10013B31C(18, v26, v28, &v71);
                sub_1001B1B24(v71, v72, &v73);
                v69 = v74;
                v66 = v73;
                v22 = v75;
                v23 = v76;
                sub_1000A0D2C(v26, v28);
                sub_1000A0D2C(v67, v61);
                sub_1000A0D2C(v70, v3);
                v21 = v69;
                v20 = v66;
                goto LABEL_37;
              }
            }

            v61 = v2;
            goto LABEL_45;
          }

          if (qword_1002A66C8 != -1)
          {
            swift_once();
          }

          v57 = type metadata accessor for Logger();
          sub_100093DE8(v57, qword_1002A8320);
          v46 = Logger.logObject.getter();
          v58 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v46, v58))
          {
            v59 = swift_slowAlloc();
            *v59 = 16777472;
            v59[4] = v37;
            _os_log_impl(&_mh_execute_header, v46, v58, "Inavlid device advertisement type: %hhu", v59, 5u);
          }

          sub_1000A0D2C(v26, v28);
          sub_1000A0D2C(v4, v2);
          v55 = v70;
          v56 = v3;
LABEL_35:
          sub_1000A0D2C(v55, v56);

          goto LABEL_36;
        }

        if (qword_1002A66C8 == -1)
        {
LABEL_28:
          v45 = type metadata accessor for Logger();
          sub_100093DE8(v45, qword_1002A8320);
          sub_1000A0CD8(v4, v2);
          v46 = Logger.logObject.getter();
          v47 = static os_log_type_t.error.getter();
          sub_1000A0D2C(v4, v2);
          if (!os_log_type_enabled(v46, v47))
          {
            sub_1000A0D2C(v26, v28);
            sub_1000A0D2C(v70, v3);

            v43 = v4;
            v44 = v2;
            goto LABEL_26;
          }

          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v50 = v2;
          v68 = v2;
          v51 = v49;
          *&v73 = v49;
          *v48 = 136315138;
          v52 = sub_10013B46C(v4, v50);
          v54 = sub_1000952D4(v52, v53, &v73);

          *(v48 + 4) = v54;
          _os_log_impl(&_mh_execute_header, v46, v47, "Invalid UUID: %s", v48, 0xCu);
          sub_100095808(v51);

          sub_1000A0D2C(v26, v28);
          sub_1000A0D2C(v4, v68);
          v55 = v70;
          v56 = v3;
          goto LABEL_35;
        }

LABEL_53:
        swift_once();
        goto LABEL_28;
      }

      if (!__OFSUB__(HIDWORD(v26), v26))
      {
        if (HIDWORD(v26) - v26 > 25)
        {
          goto LABEL_15;
        }

LABEL_25:
        v43 = v26;
        v44 = v28;
LABEL_26:
        sub_1000A0D2C(v43, v44);
        goto LABEL_36;
      }
    }

    __break(1u);
    goto LABEL_53;
  }

  v8 = v7;
  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  if (qword_1002A66C8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100093DE8(v12, qword_1002A8320);
  sub_1000A0CD8(v9, v11);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  sub_1000A0D2C(v9, v11);
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *&v73 = v16;
    *v15 = 136315138;
    v17 = sub_10013B46C(v9, v11);
    v19 = sub_1000952D4(v17, v18, &v73);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v13, v14, "New device with AdvData: 0x%s", v15, 0xCu);
    sub_100095808(v16);
  }

  sub_1001B1B24(v9, v11, &v73);
  v20 = v73;
  v21 = v74;
  v22 = v75;
  v23 = v76;
LABEL_37:
  *a2 = v20;
  *(a2 + 16) = v21;
  *(a2 + 32) = v22;
  *(a2 + 40) = v23;
}

uint64_t sub_1000F7250()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000F7288()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  sub_1000A0D2C(*(v0 + 72), *(v0 + 80));

  return _swift_deallocObject(v0, 88, 7);
}

id sub_1000F72F0(void *a1, void *a2, _OWORD *a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v6 - 8);
  v7 = *(v35 + 64);
  __chkstk_darwin(v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for DispatchQoS();
  v10 = *(v34 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v34);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for BTDiscoveredDevice();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 identifier];
  if (result)
  {

    *v17 = a1;
    *(v17 + 1) = a2;
    v19 = a3[1];
    *(v17 + 1) = *a3;
    *(v17 + 2) = v19;
    *(v17 + 3) = a3[2];
    v20 = *(v14 + 28);
    v21 = a2;
    v22 = a1;
    sub_1000B5150(a3, aBlock, &unk_1002A7AA0, &unk_10023C978);
    static Date.now.getter();
    if (qword_1002A67A0 != -1)
    {
      swift_once();
    }

    result = [v22 identifier];
    if (result)
    {
      v23 = result;
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      sub_1001D5C78(v24, v26, v17);

      if (qword_1002A6780 != -1)
      {
        swift_once();
      }

      v27 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
      v28 = *&v27[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_workQueue];
      v29 = swift_allocObject();
      *(v29 + 16) = v27;
      aBlock[4] = sub_1000E3CF8;
      aBlock[5] = v29;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100147FC8;
      aBlock[3] = &unk_1002775D0;
      v30 = _Block_copy(aBlock);
      v31 = v27;
      v32 = v28;
      static DispatchQoS.unspecified.getter();
      v36 = &_swiftEmptyArrayStorage;
      sub_1000F7750(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags);
      sub_100095274(&unk_1002A6B60, qword_10023AE10);
      sub_1000BAB30();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v30);

      (*(v35 + 8))(v9, v6);
      (*(v10 + 8))(v13, v34);
      sub_1000E4128(v17);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1000F7750(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000F77BC()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return (_swift_task_switch)(sub_1000F7888, 0, 0);
}

uint64_t sub_1000F7888()
{
  v1 = *(v0[2] + 32);
  if (!v1)
  {
    goto LABEL_12;
  }

  v2 = [v1 primaryAccessory];
  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = v0[2];

  if (*(v3 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_dataStreamController))
  {
    v4 = v0[2];
    v5 = OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_diagnosticsManager;
    if (*(v4 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_diagnosticsManager))
    {
      (*(v0[4] + 16))(v0[5], v4 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v0[3]);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      v8 = os_log_type_enabled(v6, v7);
      v10 = v0[4];
      v9 = v0[5];
      v11 = v0[3];
      if (v8)
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v6, v7, "Diagnostics manager is already present", v12, 2u);
      }

      (*(v10 + 8))(v9, v11);
      v13 = 0;
      goto LABEL_13;
    }

    v17 = *(v4 + 40);
    v18 = type metadata accessor for AccessoryDiagnosticsManager();
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    v21 = v17;

    v23 = sub_1000CAC5C(v22, v21);

    v24 = *(v4 + v5);
    *(v4 + v5) = v23;

LABEL_12:
    v13 = 1;
LABEL_13:
    v26 = v0[5];
    v25 = v0[6];

    v27 = v0[1];

    return v27(v13);
  }

  v14 = swift_task_alloc();
  v0[7] = v14;
  *v14 = v0;
  v14[1] = sub_1000F7ADC;
  v15 = v0[2];

  return sub_1000F7D10();
}

uint64_t sub_1000F7ADC()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return (_swift_task_switch)(sub_1000F7BD8, 0, 0);
}

uint64_t sub_1000F7BD8()
{
  (*(v0[4] + 16))(v0[6], v0[2] + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v0[3]);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  if (v3)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Not creating Diagnostics manager for accessory without a data stream controlle", v7, 2u);
  }

  (*(v6 + 8))(v4, v5);
  v9 = v0[5];
  v8 = v0[6];

  v10 = v0[1];

  return v10(0);
}

uint64_t sub_1000F7D30()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_diagnosticsManager;
  v0[3] = OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_diagnosticsManager;
  v3 = *(v1 + v2);
  v0[4] = v3;
  if (v3)
  {
    v4 = *(v3 + 32);
    v0[5] = v4;

    if (v4)
    {

      v6 = swift_task_alloc();
      v0[6] = v6;
      *v6 = v0;
      v6[1] = sub_1000F7E4C;

      return sub_100169B04();
    }

    *(v5 + 32) = 0;

    v8 = *(v1 + v2);
    v1 = v0[2];
    v2 = v0[3];
  }

  *(v1 + v2) = 0;

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000F7E4C()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return (_swift_task_switch)(sub_1000F7F64, 0, 0);
}

uint64_t sub_1000F7F64()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = *(v2 + 32);
  v4 = v0[2];
  *(v2 + 32) = 0;

  v5 = *(v4 + v1);
  *(v0[2] + v0[3]) = 0;

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000F7FF0(uint64_t a1)
{
  v2 = v1;
  v32 = a1;
  v3 = sub_100095274(&unk_1002A73C0, &unk_10023BE80);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v34 = &v29 - v8;
  v9 = OBJC_IVAR____TtC14dockaccessoryd8BTDevice_connectOnActions;
  swift_beginAccess();
  v10 = *&v1[v9];
  v11 = *(v10 + 16);
  if (v11)
  {
    v30 = v9;

    v12 = 32;
    v31 = v10;
    do
    {
      v13 = swift_allocObject();
      v33 = *(v10 + v12);
      *(v13 + 16) = v33;
      v14 = type metadata accessor for TaskPriority();
      v15 = *(v14 - 8);
      v16 = v34;
      (*(v15 + 56))(v34, 1, 1, v14);
      v17 = swift_allocObject();
      v17[2] = 0;
      v17[3] = 0;
      v17[4] = &unk_10023D238;
      v17[5] = v13;
      v18 = v32;
      v17[6] = v2;
      v17[7] = v18;
      sub_1000F9370(v16, v7);
      LODWORD(v16) = (*(v15 + 48))(v7, 1, v14);

      v19 = v2;
      swift_errorRetain();

      if (v16 == 1)
      {
        sub_100095C84(v7, &unk_1002A73C0, &unk_10023BE80);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v15 + 8))(v7, v14);
      }

      v20 = v2;
      v21 = v17[2];
      v22 = v17[3];
      swift_unknownObjectRetain();

      if (v21)
      {
        swift_getObjectType();
        v23 = dispatch thunk of Actor.unownedExecutor.getter();
        v25 = v24;
        swift_unknownObjectRelease();
      }

      else
      {
        v23 = 0;
        v25 = 0;
      }

      sub_100095C84(v34, &unk_1002A73C0, &unk_10023BE80);
      v26 = swift_allocObject();
      *(v26 + 16) = &unk_10023D240;
      *(v26 + 24) = v17;
      if (v25 | v23)
      {
        v35 = 0;
        v36 = 0;
        v37 = v23;
        v38 = v25;
      }

      v2 = v20;
      swift_task_create();

      v12 += 16;
      --v11;
      v10 = v31;
    }

    while (v11);

    v9 = v30;
    v27 = *&v20[v30];
  }

  *&v2[v9] = _swiftEmptyArrayStorage;
}

id sub_1000F8374(id result, uint64_t a2)
{
  if (!a2)
  {
    v3 = result;
    result = [result services];
    if (result)
    {
      v4 = result;
      sub_100095B94(0, &qword_1002A9840, CBService_ptr);
      v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v6 = (v2 + OBJC_IVAR____TtC14dockaccessoryd8BTDevice_discoveryContext);
      swift_beginAccess();
      if (!*(v6 + 1))
      {
      }

      *(v6 + 1) = v5;

      if (!*(v6 + 1))
      {
        goto LABEL_22;
      }

      if (v6[80])
      {
        if (*v6 - 1 <= 1)
        {
          if (v5 >> 62)
          {
            result = _CocoaArrayWrapper.endIndex.getter();
            v7 = result;
            if (result)
            {
              goto LABEL_9;
            }
          }

          else
          {
            v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v7)
            {
LABEL_9:
              if (v7 >= 1)
              {
                for (i = 0; i != v7; ++i)
                {
                  if ((v5 & 0xC000000000000001) != 0)
                  {
                    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  }

                  else
                  {
                    v9 = *(v5 + 8 * i + 32);
                  }

                  v10 = v9;
                  [v3 discoverCharacteristics:0 forService:v9];
                }
              }

              __break(1u);
LABEL_22:
              __break(1u);
              return result;
            }
          }
        }
      }

      v11 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd8BTDevice_delegate);
      if (v11)
      {
        [v11 didFinishDiscovery:0];
      }

      v12 = *(v6 + 3);
      v14[2] = *(v6 + 2);
      v14[3] = v12;
      v14[4] = *(v6 + 4);
      v15 = v6[80];
      v13 = *(v6 + 1);
      v14[0] = *v6;
      v14[1] = v13;
      *v6 = 0u;
      *(v6 + 1) = 0u;
      *(v6 + 2) = 0u;
      *(v6 + 3) = 0u;
      *(v6 + 4) = 0u;
      v6[80] = 0;
      return sub_100095C84(v14, &qword_1002A8798, &qword_10023E350);
    }
  }

  return result;
}

void sub_1000F85EC(void *a1, id a2, uint64_t a3)
{
  if (a3)
  {
    return;
  }

  v4 = v3;
  if (qword_1002A6700 != -1)
  {
    swift_once();
  }

  v7 = qword_1002B1BA8;
  v8 = [a2 UUID];
  v9 = v8;
  if (*(v7 + 16) && (v10 = sub_10016D848(v8), (v11 & 1) != 0))
  {
    v12 = (*(v7 + 56) + 16 * v10);
    v14 = *v12;
    v13 = v12[1];
  }

  else
  {
    v14 = 0;
    v13 = 0xE000000000000000;
  }

  v15 = OBJC_IVAR____TtC14dockaccessoryd8BTDevice_logger;
  v16 = a2;

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  v66 = v16;
  v71 = v15;
  if (os_log_type_enabled(v17, v18))
  {
    v19 = a1;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = v16;
    v24 = v22;
    *&v77[0] = v22;
    *v20 = 138412546;
    v25 = [v23 UUID];
    *(v20 + 4) = v25;
    *v21 = v25;
    *(v20 + 12) = 2080;
    v26 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v26 = v14 & 0xFFFFFFFFFFFFLL;
    }

    if (v26)
    {
      *&v79[0] = v14;
      *(&v79[0] + 1) = v13;

      v27._countAndFlagsBits = 0x6369767265735B20;
      v27._object = 0xEA00000000005D65;
      String.append(_:)(v27);

      v29 = v13;
      v28 = v14;
    }

    else
    {

      v29 = 0x80000001002311E0;
      v28 = 0xD000000000000012;
    }

    v30 = sub_1000952D4(v28, v29, v77);

    *(v20 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v17, v18, "%@ %s", v20, 0x16u);
    sub_100095C84(v21, &unk_1002A6F60, &unk_10023C4E0);

    sub_100095808(v24);

    a1 = v19;
    v16 = v66;
    v15 = v71;
  }

  else
  {
  }

  v31 = [v16 characteristics];
  if (v31)
  {
    v32 = v31;
    sub_100095B94(0, &unk_1002A9830, CBCharacteristic_ptr);
    v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v33 >> 62))
    {
      goto LABEL_19;
    }

LABEL_38:
    v34 = _CocoaArrayWrapper.endIndex.getter();
    if (!v34)
    {
      goto LABEL_39;
    }

    goto LABEL_20;
  }

  v33 = _swiftEmptyArrayStorage;
  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_38;
  }

LABEL_19:
  v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v34)
  {
    goto LABEL_39;
  }

LABEL_20:
  if (v34 < 1)
  {
    __break(1u);
    goto LABEL_50;
  }

  v35 = 0;
  v72 = v33 & 0xC000000000000001;
  v69 = a1;
  v70 = v4;
  v67 = v34;
  v68 = v33;
  do
  {
    if (v72)
    {
      v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v36 = *(v33 + 8 * v35 + 32);
    }

    v37 = v36;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *&v79[0] = v42;
      *v40 = 138412546;
      v43 = [v37 UUID];
      *(v40 + 4) = v43;
      *v41 = v43;
      *(v40 + 12) = 2080;
      if (qword_1002A6708 != -1)
      {
        swift_once();
      }

      v44 = qword_1002B1BB0;
      v45 = [v37 UUID];
      v46 = v45;
      if (*(v44 + 16) && (v47 = sub_10016D848(v45), (v48 & 1) != 0))
      {
        v49 = (*(v44 + 56) + 16 * v47);
        v51 = *v49;
        v50 = v49[1];
      }

      else
      {
        v51 = 0x6E776F6E6B6E755BLL;
        v50 = 0xE90000000000005DLL;
      }

      v52 = sub_1000952D4(v51, v50, v79);

      *(v40 + 14) = v52;
      _os_log_impl(&_mh_execute_header, v38, v39, "  %@ %s", v40, 0x16u);
      sub_100095C84(v41, &unk_1002A6F60, &unk_10023C4E0);

      sub_100095808(v42);

      a1 = v69;
      v4 = v70;
      v34 = v67;
      v33 = v68;
    }

    else
    {
    }

    if (([v37 properties] & 0x10) != 0)
    {
      [a1 setNotifyValue:1 forCharacteristic:v37];
    }

    ++v35;
  }

  while (v34 != v35);
LABEL_39:

  v34 = sub_10013C474();
  v54 = (v53 + 8);
  if (!*(v53 + 8))
  {
    (v34)(v79, 0);
    goto LABEL_44;
  }

  v55 = v66;
  v15 = sub_1000F9954(v54);

  if (*v54 >> 62)
  {
LABEL_50:
    v56 = _CocoaArrayWrapper.endIndex.getter();
    if (v56 >= v15)
    {
      goto LABEL_42;
    }

LABEL_51:
    __break(1u);
    return;
  }

  v56 = *((*v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v56 < v15)
  {
    goto LABEL_51;
  }

LABEL_42:
  sub_1001A1EDC(v15, v56);
  (v34)(v79, 0);
LABEL_44:
  v57 = v4 + OBJC_IVAR____TtC14dockaccessoryd8BTDevice_discoveryContext;
  swift_beginAccess();
  v58 = *(v57 + 48);
  v77[2] = *(v57 + 32);
  v77[3] = v58;
  v77[4] = *(v57 + 64);
  v78 = *(v57 + 80);
  v59 = *(v57 + 16);
  v77[0] = *v57;
  v77[1] = v59;
  if (*(&v77[0] + 1))
  {
    v60 = *(v57 + 48);
    v80 = *(v57 + 32);
    v81 = v60;
    v82 = *(v57 + 64);
    v83 = *(v57 + 80);
    v61 = *(v57 + 16);
    v79[0] = *v57;
    v79[1] = v61;
    v76 = v83;
    v75[2] = v80;
    v75[3] = v60;
    v75[4] = v82;
    v75[0] = v79[0];
    v75[1] = v61;
    sub_1000F9DD8(v75, v73);
    v62 = sub_10013C0D8();
    sub_100095C84(v77, &qword_1002A8798, &qword_10023E350);
    if (v62)
    {
      v63 = *(v4 + OBJC_IVAR____TtC14dockaccessoryd8BTDevice_delegate);
      if (v63)
      {
        [v63 didFinishDiscovery:0];
      }

      v64 = *(v57 + 48);
      v73[2] = *(v57 + 32);
      v73[3] = v64;
      v73[4] = *(v57 + 64);
      v74 = *(v57 + 80);
      v65 = *(v57 + 16);
      v73[0] = *v57;
      v73[1] = v65;
      *v57 = 0u;
      *(v57 + 16) = 0u;
      *(v57 + 32) = 0u;
      *(v57 + 48) = 0u;
      *(v57 + 64) = 0u;
      *(v57 + 80) = 0;
      sub_100095C84(v73, &qword_1002A8798, &qword_10023E350);
    }
  }
}

void sub_1000F8E48(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void (*a6)(id, void *))
{
  v10 = a3;
  v11 = a4;
  v12 = a1;
  v13 = a5;
  a6(v11, a5);
}

uint64_t sub_1000F8F44(uint64_t a1, uint64_t a2, int *a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  v3[4] = v5;
  *v5 = v3;
  v5[1] = sub_1000D8148;

  return v7();
}

uint64_t sub_1000F904C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = (a4 + *a4);
  v10 = a4[1];
  v11 = swift_task_alloc();
  *(v7 + 16) = v11;
  *v11 = v7;
  v11[1] = sub_10009862C;

  return v13(a6, a7);
}

uint64_t sub_1000F9150()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000F9188(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000A139C;

  return sub_1000F8F44(a1, a2, v7);
}

uint64_t sub_1000F924C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000F929C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10009862C;

  return sub_1000F904C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1000F9370(uint64_t a1, uint64_t a2)
{
  v4 = sub_100095274(&unk_1002A73C0, &unk_10023BE80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F93E0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10009862C;

  return sub_1001C9810(a1, v5);
}

void *sub_1000F9498(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC14dockaccessoryd8BTDevice_hapPeripheral;
  result = *&v2[OBJC_IVAR____TtC14dockaccessoryd8BTDevice_hapPeripheral];
  if (!result)
  {
    v35 = a1;
    v12 = v2;

    v34 = v2;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v33 = v14;
      v15 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v36 = v32;
      *v15 = 136315394;
      v16 = *&v12[OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral];
      if (!v16)
      {
        goto LABEL_11;
      }

      v17 = v16;

      v18 = [v17 identifier];

      static UUID._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = UUID.uuidString.getter();
      v21 = v20;
      (*(v6 + 8))(v9, v5);
      v22 = sub_1000952D4(v19, v21, &v36);

      *(v15 + 4) = v22;
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_1000952D4(v35, a2, &v36);
      _os_log_impl(&_mh_execute_header, v13, v33, "Creating HAP BLE Peripheral for %s with identifier %s.", v15, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    sub_10013EE04();
    v23 = *&v12[OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral];
    if (v23)
    {
      v24 = [v23 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v25 = objc_allocWithZone(HAPBLEPeripheral);
      v26 = String._bridgeToObjectiveC()();

      isa = UUID._bridgeToObjectiveC()().super.isa;
      v28 = String._bridgeToObjectiveC()();
      v29 = [v25 initWithName:v26 peripheralUUID:isa identifier:v28];

      (*(v6 + 8))(v9, v5);
      v2 = v34;
      v30 = *&v34[v10];
      *&v34[v10] = v29;

      result = *&v2[v10];
      if (!result)
      {
        return result;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_11:

    __break(1u);
    return result;
  }

LABEL_8:
  [result setCbPeripheral:*&v2[OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral]];
  return *&v2[v10];
}

unint64_t sub_1000F9840(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  while (1)
  {
    if (v3 == v4)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v5 = *(a1 + 8 * v4 + 32);
    }

    v6 = v5;
    sub_100095B94(0, &qword_1002A7270, NSObject_ptr);
    v7 = static NSObject.== infix(_:_:)();

    if (v7)
    {
      return v4;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_16;
    }
  }
}

unint64_t sub_1000F9954(unint64_t *a1)
{
  v3 = *a1;
  result = sub_1000F9840(*a1);
  v6 = result;
  if (v1)
  {
    return v6;
  }

  if (v5)
  {
    if (v3 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v8 = &qword_1002A7270;
  v24 = a1;
  while (1)
  {
    if (v3 >> 62)
    {
      if (v7 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v6;
      }
    }

    else if (v7 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v6;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_15;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

    v10 = *(v3 + 8 * v7 + 32);
LABEL_15:
    v11 = v10;
    sub_100095B94(0, v8, NSObject_ptr);
    v12 = static NSObject.== infix(_:_:)();

    if ((v12 & 1) == 0)
    {
      if (v6 != v7)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v6 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

          v15 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v6 >= v15)
          {
            goto LABEL_45;
          }

          if (v7 >= v15)
          {
            goto LABEL_46;
          }

          v16 = *(v3 + 32 + 8 * v7);
          v13 = *(v3 + 32 + 8 * v6);
          v14 = v16;
        }

        v17 = v14;
        v18 = v8;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
        {
          v3 = sub_1001A347C(v3);
          v19 = (v3 >> 62) & 1;
        }

        else
        {
          LODWORD(v19) = 0;
        }

        v20 = v3 & 0xFFFFFFFFFFFFFF8;
        v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20);
        *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20) = v17;

        if ((v3 & 0x8000000000000000) != 0 || v19)
        {
          v3 = sub_1001A347C(v3);
          v20 = v3 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v6;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v7 >= *(v20 + 16))
        {
          goto LABEL_43;
        }

        v8 = v18;
        v22 = v20 + 8 * v7;
        v23 = *(v22 + 32);
        *(v22 + 32) = v13;

        *v24 = v3;
      }

      v9 = __OFADD__(v6++, 1);
      if (v9)
      {
        goto LABEL_42;
      }
    }

    v9 = __OFADD__(v7++, 1);
    if (v9)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_40:
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
  return _CocoaArrayWrapper.endIndex.getter();
}

uint64_t sub_1000F9BE4(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd8BTDevice_delegate);
  if (!v3)
  {
    return result;
  }

  v5 = result;
  v6 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd8BTDevice_delegate);
  swift_unknownObjectRetain();
  v7 = [v5 UUID];
  v8 = [v5 value];
  if (!v8)
  {
    v13.super.isa = 0;
    if (a2)
    {
      goto LABEL_4;
    }

LABEL_7:
    v14 = 0;
    goto LABEL_8;
  }

  v9 = v8;
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_1000A0D2C(v10, v12);
  if (!a2)
  {
    goto LABEL_7;
  }

LABEL_4:
  v14 = _convertErrorToNSError(_:)();
LABEL_8:
  [v3 didRead:v7 value:v13.super.isa error:v14];

  return swift_unknownObjectRelease();
}

uint64_t sub_1000F9D18(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd8BTDevice_delegate);
  if (v3)
  {
    v5 = result;
    v6 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd8BTDevice_delegate);
    swift_unknownObjectRetain();
    v7 = [v5 UUID];
    if (a2)
    {
      v8 = _convertErrorToNSError(_:)();
    }

    else
    {
      v8 = 0;
    }

    [v3 didWrite:v7 error:v8];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1000F9E44(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v9 = a1;
    v10 = [v9 accessories];
    if (v10)
    {
      v11 = v10;
      sub_1000FA528();
      v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if ((v12 & 0xC000000000000001) == 0)
      {
        if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_10;
        }

        __break(1u);
      }

LABEL_20:
      v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_11;
    }

    goto LABEL_22;
  }

  v13 = *(v1 + 32);
  if (v13)
  {
    v9 = v13;
    v14 = [v9 accessories];
    if (!v14)
    {
LABEL_23:
      __break(1u);
      return;
    }

    v15 = v14;
    sub_1000FA528();
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v12 & 0xC000000000000001) != 0)
    {
      goto LABEL_20;
    }

    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_10:
      v16 = *(v12 + 32);
LABEL_11:
      v17 = v16;

      v18 = [v17 productData];

      if (v18)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        String.index(_:offsetBy:)();
        String.subscript.getter();

        static String._fromSubstring(_:)();
      }

      return;
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v19 = v6;
  (*(v4 + 16))(v8, v1 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Nil HAP Server", v22, 2u);
  }

  (*(v4 + 8))(v8, v19);
}

void sub_1000FA184(void *a1)
{
  if (!a1)
  {
    v6 = *(v1 + 32);
    if (!v6)
    {
      return;
    }

    v2 = v6;
    v7 = [v2 accessories];
    if (!v7)
    {
LABEL_20:
      __break(1u);
      return;
    }

    v8 = v7;
    sub_1000FA528();
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v5 & 0xC000000000000001) != 0)
    {
      goto LABEL_17;
    }

    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_10:
      v9 = *(v5 + 32);
      goto LABEL_11;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v2 = a1;
  v3 = [v2 accessories];
  if (!v3)
  {
    goto LABEL_19;
  }

  v4 = v3;
  sub_1000FA528();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v5 & 0xC000000000000001) == 0)
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

LABEL_17:
  v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_11:
  v10 = v9;

  v11 = [v10 productData];

  if (v11)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = String.index(_:offsetBy:)();
    sub_1000FA574(v15, v12, v14);

    static String._fromSubstring(_:)();
  }

  else
  {
  }
}

void sub_1000FA390(void *a1, SEL *a2)
{
  if (!a1)
  {
    v8 = *(v2 + 32);
    if (!v8)
    {
      return;
    }

    v4 = v8;
    v9 = [v4 accessories];
    if (!v9)
    {
LABEL_20:
      __break(1u);
      return;
    }

    v10 = v9;
    sub_1000FA528();
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v7 & 0xC000000000000001) != 0)
    {
      goto LABEL_17;
    }

    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_10:
      v11 = *(v7 + 32);
      goto LABEL_11;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v4 = a1;
  v5 = [v4 accessories];
  if (!v5)
  {
    goto LABEL_19;
  }

  v6 = v5;
  sub_1000FA528();
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v7 & 0xC000000000000001) == 0)
  {
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

LABEL_17:
  v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_11:
  v12 = v11;

  v13 = [v12 *a2];

  if (v13)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
  }
}

unint64_t sub_1000FA528()
{
  result = qword_1002A9C40;
  if (!qword_1002A9C40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002A9C40);
  }

  return result;
}

unint64_t sub_1000FA574(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return String.subscript.getter();
  }

  __break(1u);
  return result;
}

void sub_1000FA5C0()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 accessories];
    if (v3)
    {
      v4 = v3;
      sub_1000FA528();
      v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if ((v5 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_6:
        v7 = v6;

        v8 = [v7 firmwareVersion];

        if (v8)
        {
          [objc_allocWithZone(HMFSoftwareVersion) initWithVersionString:v8];
        }

        else
        {
        }

        return;
      }

      if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v6 = *(v5 + 32);
        goto LABEL_6;
      }

      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_1000FA6C8()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return (_swift_task_switch)(sub_1000FA794, 0, 0);
}

uint64_t sub_1000FA794()
{
  v1 = *(v0[2] + 32);
  if (!v1)
  {
    goto LABEL_12;
  }

  v2 = [v1 primaryAccessory];
  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = v0[2];

  if (*(v3 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_dataStreamController))
  {
    v4 = v0[2];
    v5 = OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_accessoryDescriptionManager;
    if (*(v4 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_accessoryDescriptionManager))
    {
      (*(v0[4] + 16))(v0[5], v4 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v0[3]);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      v8 = os_log_type_enabled(v6, v7);
      v10 = v0[4];
      v9 = v0[5];
      v11 = v0[3];
      if (v8)
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v6, v7, "Accessory Description manager is already present", v12, 2u);
      }

      (*(v10 + 8))(v9, v11);
      v13 = 0;
      goto LABEL_13;
    }

    v17 = *(v4 + 40);
    v18 = type metadata accessor for AccessoryDescriptionManager();
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    v21 = swift_allocObject();
    swift_weakInit();
    *(v21 + 32) = 0;
    v22 = v17;
    Logger.init(subsystem:category:)();
    swift_weakAssign();
    *(v21 + 24) = v22;
    v23 = *(v4 + v5);
    *(v4 + v5) = v21;

LABEL_12:
    v13 = 1;
LABEL_13:
    v25 = v0[5];
    v24 = v0[6];

    v26 = v0[1];

    return v26(v13);
  }

  v14 = swift_task_alloc();
  v0[7] = v14;
  *v14 = v0;
  v14[1] = sub_1000FAA44;
  v15 = v0[2];

  return sub_1000FAC78();
}

uint64_t sub_1000FAA44()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return (_swift_task_switch)(sub_1000FAB40, 0, 0);
}

uint64_t sub_1000FAB40()
{
  (*(v0[4] + 16))(v0[6], v0[2] + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v0[3]);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  if (v3)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Not creating Accessory Description manager for accessory without a data stream controller", v7, 2u);
  }

  (*(v6 + 8))(v4, v5);
  v9 = v0[5];
  v8 = v0[6];

  v10 = v0[1];

  return v10(0);
}

uint64_t sub_1000FAC98()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_accessoryDescriptionManager;
  v0[3] = OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_accessoryDescriptionManager;
  v3 = *(v1 + v2);
  v0[4] = v3;
  if (v3)
  {
    v4 = *(v3 + 32);
    v0[5] = v4;

    if (v4)
    {

      v6 = swift_task_alloc();
      v0[6] = v6;
      *v6 = v0;
      v6[1] = sub_1000F7E4C;

      return sub_1001D1410();
    }

    *(v5 + 32) = 0;

    v8 = *(v1 + v2);
    v1 = v0[2];
    v2 = v0[3];
  }

  *(v1 + v2) = 0;

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000FADD4()
{
  v1 = *(v0 + 144);
  v2 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_currentBulkSendSession);
  *(v0 + 152) = v2;
  if (v2)
  {
    v3 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_didBulkSendComplete);
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_1000FB040;
    v4 = swift_continuation_init();
    *(v0 + 136) = sub_100095274(&qword_1002A88C0, &qword_10023D3B0);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1000FB414;
    *(v0 + 104) = &unk_100277800;
    *(v0 + 112) = v4;
    v5 = swift_unknownObjectRetain();
    if (v3)
    {
      v6 = 0;
    }

    else
    {
      v6 = 5;
    }

    [v5 cancelWithReason:v6 completion:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    if (*(v1 + OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_pendingOpenSessionCallback))
    {
      v7 = type metadata accessor for Errors();
      sub_1000C42FC(&qword_1002A6F50, &type metadata accessor for Errors);
      v8 = swift_allocError();
      *v9 = 0;
      v9[1] = 0xE000000000000000;
      (*(*(v7 - 8) + 104))(v9, enum case for Errors.OperationCancelled(_:), v7);
      sub_1000FD3CC(v8);

      v10 = *(v0 + 144);
    }

    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      sub_1000FEC34(*(v0 + 144), Strong);
    }

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_1000FB040()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 160) = v2;
  if (v2)
  {
    v3 = sub_1000FB2A8;
  }

  else
  {
    v3 = sub_1000FB150;
  }

  return (_swift_task_switch)(v3, 0, 0);
}

uint64_t sub_1000FB150()
{
  v1 = *(v0 + 152);
  swift_unknownObjectRelease();
  if (*(*(v0 + 144) + OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_pendingOpenSessionCallback))
  {
    v2 = type metadata accessor for Errors();
    sub_1000C42FC(&qword_1002A6F50, &type metadata accessor for Errors);
    v3 = swift_allocError();
    *v4 = 0;
    v4[1] = 0xE000000000000000;
    (*(*(v2 - 8) + 104))(v4, enum case for Errors.OperationCancelled(_:), v2);
    sub_1000FD3CC(v3);

    v5 = *(v0 + 144);
  }

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_1000FEC34(*(v0 + 144), Strong);
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000FB2A8()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  swift_willThrow();

  swift_unknownObjectRelease();
  if (*(*(v0 + 144) + OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_pendingOpenSessionCallback))
  {
    v3 = type metadata accessor for Errors();
    sub_1000C42FC(&qword_1002A6F50, &type metadata accessor for Errors);
    v4 = swift_allocError();
    *v5 = 0;
    v5[1] = 0xE000000000000000;
    (*(*(v3 - 8) + 104))(v5, enum case for Errors.OperationCancelled(_:), v3);
    sub_1000FD3CC(v4);

    v6 = *(v0 + 144);
  }

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_1000FEC34(*(v0 + 144), Strong);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1000FB414(uint64_t a1, void *a2)
{
  v3 = sub_1000A09E0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_100095274(&qword_1002A7268, &unk_10023C680);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

uint64_t sub_1000FB4C0(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_pendingOpenSessionCallback);
  if (*(v2 + OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_pendingOpenSessionCallback))
  {
    v4 = type metadata accessor for Errors();
    sub_1000C42FC(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    *v5 = 0xD00000000000001ELL;
    v5[1] = 0x8000000100231400;
    (*(*(v4 - 8) + 104))(v5, enum case for Errors.OperationInProgress(_:), v4);
    return swift_willThrow();
  }

  else
  {
    sub_1000FC3B8();
    v10 = *v3;
    v9 = v3[1];
    *v3 = a1;
    v3[1] = a2;

    return sub_1000BAA84(v10);
  }
}

uint64_t sub_1000FB5F0()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&v0[OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_currentBulkSendSession];
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v0;
    *(v7 + 24) = v6;
    v24 = sub_1000FF248;
    v25 = v7;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000FC30C;
    v23 = &unk_1002777D8;
    v8 = _Block_copy(aBlock);
    swift_unknownObjectRetain_n();
    v9 = v0;

    [v6 read:v8];
    _Block_release(v8);
    return swift_unknownObjectRelease();
  }

  else
  {
    (*(v2 + 16))(v5, &v0[OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_logger], v1);
    v11 = v0;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v17 = *(Strong + 24);

        v18 = v17;
      }

      else
      {
        v17 = 0;
        v18 = 0;
      }

      *(v14 + 4) = v17;
      *v15 = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "Read data failed with no bulkSend session present for accessory: %@", v14, 0xCu);
      sub_100095C84(v15, &unk_1002A6F60, &unk_10023C4E0);
    }

    (*(v2 + 8))(v5, v1);
    v19 = OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_delegate;
    swift_beginAccess();
    sub_1000FEB58(&v11[v19], aBlock);
    if (v23)
    {
      sub_1000A097C(aBlock, v26);
      sub_100095C84(aBlock, &unk_1002A8890, &unk_10023FAF0);
      v20 = v27;
      v21 = v28;
      sub_1000A09E0(v26, v27);
      (*(v21 + 24))(v11, v20, v21);
      return sub_100095808(v26);
    }

    else
    {
      return sub_100095C84(aBlock, &unk_1002A8890, &unk_10023FAF0);
    }
  }
}

uint64_t sub_1000FB968(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v53 - v15;
  __chkstk_darwin(v14);
  v18 = &v53 - v17;
  if (a2)
  {
    (*(v9 + 16))(&v53 - v17, a3 + OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_logger, v8);
    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      swift_errorRetain();
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v23;
      *v22 = v23;
      _os_log_impl(&_mh_execute_header, v19, v20, "DataStream transfer read data channel has error: %@", v21, 0xCu);
      sub_100095C84(v22, &unk_1002A6F60, &unk_10023C4E0);
    }

    (*(v9 + 8))(v18, v8);
    v24 = OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_delegate;
    swift_beginAccess();
    sub_1000FEB58(a3 + v24, v59);
    if (v60)
    {
      sub_1000A097C(v59, v56);
      sub_100095C84(v59, &unk_1002A8890, &unk_10023FAF0);
      v25 = v57;
      v26 = v58;
      sub_1000A09E0(v56, v57);
      (*(v26 + 24))(a3, v25, v26);
      return sub_100095808(v56);
    }

    return sub_100095C84(v59, &unk_1002A8890, &unk_10023FAF0);
  }

  if (a1)
  {
    v28 = sub_1000FC030(a1);
    if (v28)
    {
      v29 = v28;
      v30 = OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_delegate;
      swift_beginAccess();
      v55 = v30;
      sub_1000FEB58(a3 + v30, v59);
      if (v60)
      {
        sub_1000A097C(v59, v56);
        sub_100095C84(v59, &unk_1002A8890, &unk_10023FAF0);
        v31 = v57;
        v32 = v58;
        sub_1000A09E0(v56, v57);
        v33 = (*(v32 + 8))(a3, v29, v31, v32);

        sub_100095808(v56);
        if (v33)
        {
          goto LABEL_11;
        }
      }

      else
      {

        sub_100095C84(v59, &unk_1002A8890, &unk_10023FAF0);
      }

      (*(v9 + 16))(v16, a3 + OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_logger, v8);
      v42 = a3;
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *v45 = 138412290;
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v48 = *(Strong + 24);
          v54 = v42;
          v49 = v48;
          v42 = v54;

          v50 = v49;
        }

        else
        {
          v49 = 0;
          v50 = 0;
        }

        *(v45 + 4) = v49;
        *v46 = v50;
        _os_log_impl(&_mh_execute_header, v43, v44, "Received data frame is not accepted for accessory: %@", v45, 0xCu);
        sub_100095C84(v46, &unk_1002A6F60, &unk_10023C4E0);
      }

      (*(v9 + 8))(v16, v8);
      sub_1000FEB58(a3 + v55, v59);
      if (v60)
      {
        sub_1000A097C(v59, v56);
        sub_100095C84(v59, &unk_1002A8890, &unk_10023FAF0);
        v51 = v57;
        v52 = v58;
        sub_1000A09E0(v56, v57);
        (*(v52 + 24))(v42, v51, v52);
        return sub_100095808(v56);
      }

      return sub_100095C84(v59, &unk_1002A8890, &unk_10023FAF0);
    }
  }

LABEL_11:
  if ([a4 isActive])
  {
    return sub_1000FB5F0();
  }

  (*(v9 + 16))(v13, a3 + OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_logger, v8);
  v34 = a3;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v37 = 138412290;
    v39 = swift_weakLoadStrong();
    if (v39)
    {
      v40 = *(v39 + 24);

      v41 = v40;
    }

    else
    {
      v40 = 0;
      v41 = 0;
    }

    *(v37 + 4) = v40;
    *v38 = v41;
    _os_log_impl(&_mh_execute_header, v35, v36, "DataStream data transfer is completed for accessory: %@", v37, 0xCu);
    sub_100095C84(v38, &unk_1002A6F60, &unk_10023C4E0);
  }

  (*(v9 + 8))(v13, v8);
  return sub_1000FD5DC();
}

unint64_t sub_1000FC030(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100095274(&qword_1002A88B0, &qword_10023D3A0);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5)) | (v13 << 6);
        sub_1000FF250(*(a1 + 48) + 40 * v14, v29);
        sub_100095B34(*(a1 + 56) + 32 * v14, v30 + 8);
        v27[0] = v30[0];
        v27[1] = v30[1];
        v28 = v31;
        v26[0] = v29[0];
        v26[1] = v29[1];
        sub_1000FF250(v26, v21);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_100095B34(v27 + 8, v22);
        sub_100095C84(v26, &qword_1002A88B8, &qword_10023D3A8);
        v23 = v20;
        sub_1000FEA30(v22, v24);
        v15 = v23;
        sub_1000FEA30(v24, v25);
        sub_1000FEA30(v25, &v23);
        result = sub_10016D4D0(v15, *(&v15 + 1));
        if (v16)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v15;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          sub_100095808(v12);
          result = sub_1000FEA30(&v23, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v15;
          result = sub_1000FEA30(&v23, (v2[7] + 32 * result));
          v17 = v2[2];
          v18 = __OFADD__(v17, 1);
          v19 = v17 + 1;
          if (v18)
          {
            goto LABEL_24;
          }

          v2[2] = v19;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }

      sub_100095C84(v26, &qword_1002A88B8, &qword_10023D3A8);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1000FC30C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v5(v6, a3);
}

uint64_t sub_1000FC3B8()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, &v1[OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_logger], v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Setting up data stream transport", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    v12 = *&v1[OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_fileType];
    v13 = *&v1[OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_fileType + 8];

    sub_1000FEEE8(v1, v12, v13, v11);
  }

  return result;
}

uint64_t sub_1000FC58C()
{
  v1 = v0[3];
  Strong = swift_weakLoadStrong();
  v0[4] = Strong;
  if (Strong)
  {
    v3 = v0[3];
    v5 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_fileType);
    v4 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_fileType + 8);
    v0[5] = v4;
    v7 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_reason);
    v6 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_reason + 8);
    v0[6] = v6;
    v8 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_metadata);
    v0[7] = v8;
    v9 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_workQueue);
    v0[8] = v9;
    v10 = *(Strong + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_dataStreamController);
    v0[9] = v10;

    v11 = v9;
    if (v10)
    {
      v12 = swift_task_alloc();
      v0[10] = v12;
      v12[2] = v10;
      v12[3] = v5;
      v12[4] = v4;
      v12[5] = v7;
      v12[6] = v6;
      v12[7] = v8;
      v12[8] = v11;
      v13 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
      v14 = v10;
      v15 = swift_task_alloc();
      v0[11] = v15;
      v16 = sub_100095B94(0, &qword_1002A88A8, off_100271C48);
      *v15 = v0;
      v15[1] = sub_1000FC91C;

      return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000037, 0x8000000100231390, sub_1000FEC20, v12, v16);
    }

    else
    {

      v19 = type metadata accessor for Errors();
      sub_1000C42FC(&qword_1002A6F50, &type metadata accessor for Errors);
      v20 = swift_allocError();
      *v21 = 0xD00000000000003FLL;
      v21[1] = 0x8000000100231350;
      (*(*(v19 - 8) + 104))(v21, enum case for Errors.NotFound(_:), v19);
      swift_willThrow();

      v22 = v0[3];
      sub_1000FD3CC(v20);
      swift_willThrow();
      v23 = v0[1];

      return v23();
    }
  }

  else
  {
    v0[13] = 0;
    v17 = swift_task_alloc();
    v0[14] = v17;
    *v17 = v0;
    v17[1] = sub_1000FCBD8;
    v18 = v0[3];

    return sub_1000FCDD4(0);
  }
}

uint64_t sub_1000FC91C()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v10 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_1000FCB10;
  }

  else
  {
    v5 = v2[10];
    v7 = v2[6];
    v6 = v2[7];
    v8 = v2[5];

    v4 = sub_1000FCA60;
  }

  return (_swift_task_switch)(v4, 0, 0);
}

uint64_t sub_1000FCA60()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[4];

  v4 = v0[2];
  v0[13] = v4;
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_1000FCBD8;
  v6 = v0[3];

  return sub_1000FCDD4(v4);
}

uint64_t sub_1000FCB10()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[4];

  v8 = v0[3];
  sub_1000FD3CC(v0[12]);
  swift_willThrow();
  v9 = v0[1];

  return v9();
}

uint64_t sub_1000FCBD8()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_1000FCD50;
  }

  else
  {
    v3 = sub_1000FCCEC;
  }

  return (_swift_task_switch)(v3, 0, 0);
}

uint64_t sub_1000FCCEC()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000FCD50()
{
  v1 = *(v0 + 24);
  sub_1000FD3CC(*(v0 + 120));
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000FCDD4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Logger();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return (_swift_task_switch)(sub_1000FCE94, 0, 0);
}

uint64_t sub_1000FCE94()
{
  v1 = v0[3];
  v2 = (v1 + OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_pendingOpenSessionCallback);
  v3 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_pendingOpenSessionCallback);
  v0[7] = v3;
  v4 = v2[1];
  v0[8] = v4;
  if (v3)
  {
    v5 = v0[2];

    if (v5)
    {
      v6 = [v5 session];
      v1 = v0[3];
    }

    else
    {
      v6 = 0;
    }

    v13 = v0[5];
    v12 = v0[6];
    v14 = v0[4];
    v15 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_currentBulkSendSession);
    *(v1 + OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_currentBulkSendSession) = v6;
    swift_unknownObjectRelease();
    v16 = *v2;
    v17 = v2[1];
    *v2 = 0;
    v2[1] = 0;
    sub_1000BAA84(v16);
    (*(v13 + 16))(v12, v1 + OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_logger, v14);
    v18 = v5;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = v0[2];
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      *(v22 + 4) = v18;
      *v23 = v21;
      v24 = v18;
      _os_log_impl(&_mh_execute_header, v19, v20, "Calling pending callback with result: %@", v22, 0xCu);
      sub_100095C84(v23, &unk_1002A6F60, &unk_10023C4E0);
    }

    v26 = v0[5];
    v25 = v0[6];
    v27 = v0[4];
    v28 = v0[2];

    (*(v26 + 8))(v25, v27);
    v29 = swift_task_alloc();
    v0[9] = v29;
    v29[2] = v3;
    v29[3] = v4;
    v29[4] = v28;
    v30 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v31 = swift_task_alloc();
    v0[10] = v31;
    *v31 = v0;
    v31[1] = sub_1000FD244;

    return withCheckedContinuation<A>(isolation:function:_:)(v31, 0, 0, 0xD000000000000027, 0x8000000100231320, sub_1000FEBC8, v29, &type metadata for () + 8);
  }

  else
  {
    v7 = v0[6];
    v8 = type metadata accessor for Errors();
    sub_1000C42FC(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    *v9 = 0xD000000000000032;
    v9[1] = 0x80000001002312E0;
    (*(*(v8 - 8) + 104))(v9, enum case for Errors.NotFound(_:), v8);
    swift_willThrow();

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_1000FD244()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return (_swift_task_switch)(sub_1000FD35C, 0, 0);
}

uint64_t sub_1000FD35C()
{
  v1 = v0[8];
  v2 = v0[6];
  sub_1000BAA84(v0[7]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000FD3CC(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v3);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (v1 + OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_pendingOpenSessionCallback);
  v10 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_pendingOpenSessionCallback);
  if (v10)
  {
    v11 = v9[1];
    *v9 = 0;
    v9[1] = 0;
    (*(v4 + 16))(v8, v1 + OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_logger, v3);
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      swift_errorRetain();
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v16;
      *v15 = v16;
      _os_log_impl(&_mh_execute_header, v12, v13, "Calling pending callback with error: %@", v14, 0xCu);
      sub_100095C84(v15, &unk_1002A6F60, &unk_10023C4E0);
    }

    (*(v4 + 8))(v8, v3);
    v10(0, a1);
    return sub_1000BAA84(v10);
  }

  return result;
}

uint64_t sub_1000FD5DC()
{
  if (*(v0 + OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_currentBulkSendSession) && (*(v0 + OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_didBulkSendFail) & 1) == 0 && (*(v0 + OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_didBulkSendComplete) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_didBulkSendComplete) = 1;
  }

  v1 = OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_delegate;
  swift_beginAccess();
  sub_1000FEB58(v0 + v1, v8);
  if (!v9)
  {
    return sub_100095C84(v8, &unk_1002A8890, &unk_10023FAF0);
  }

  sub_1000A097C(v8, v5);
  sub_100095C84(v8, &unk_1002A8890, &unk_10023FAF0);
  v2 = v6;
  v3 = v7;
  sub_1000A09E0(v5, v6);
  (*(v3 + 16))(v0, v2, v3);
  return sub_100095808(v5);
}

id sub_1000FD720()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccessoryDataStreamAdapter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AccessoryDataStreamAdapter()
{
  result = qword_1002A8820;
  if (!qword_1002A8820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000FD8B4()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1000FDA14(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *&v1[OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_workQueue];
  sub_100095B34(a1, v21);
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  sub_1000FEA30(v21, (v14 + 24));
  aBlock[4] = sub_1000FEA40;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147FC8;
  aBlock[3] = &unk_100277710;
  v15 = _Block_copy(aBlock);
  v16 = v13;
  v17 = v1;
  static DispatchQoS.unspecified.getter();
  v19[1] = _swiftEmptyArrayStorage;
  sub_1000C42FC(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags);
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_1000BAB30();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v4 + 8))(v7, v3);
  (*(v9 + 8))(v12, v8);
}

void sub_1000FDCE0(char *a1, uint64_t a2)
{
  v4 = sub_100095274(&unk_1002A73C0, &unk_10023BE80);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v79 = &v74 - v6;
  v7 = type metadata accessor for Logger();
  v80 = *(v7 - 8);
  v81 = v7;
  v8 = *(v80 + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v74 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v74 - v16;
  __chkstk_darwin(v15);
  v19 = &v74 - v18;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v21 = *(Strong + 32);
    v22 = v21;

    if (v21)
    {
      sub_100095B34(a2, v85);
      sub_100095B94(0, &qword_1002A9C40, off_100271C50);
      v23 = swift_dynamicCast();
      v24 = v83;
      v78 = v22;
      v25 = [v22 primaryAccessory];
      if (v23 && v24)
      {
        if (v25)
        {
          v26 = v25;
          v27 = static NSObject.== infix(_:_:)();

          v28 = v81;
          if ((v27 & 1) == 0)
          {
LABEL_22:
            v47 = v80;
            (*(v80 + 16))(v14, &a1[OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_logger], v28);
            sub_100095B34(a2, v85);
            v48 = a1;
            v49 = Logger.logObject.getter();
            v50 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v49, v50))
            {
              v51 = swift_slowAlloc();
              v52 = swift_slowAlloc();
              v53 = swift_slowAlloc();
              v84 = v53;
              *v51 = 138412546;
              v54 = swift_weakLoadStrong();
              if (v54)
              {
                v55 = *(v54 + 24);

                v56 = v55;
              }

              else
              {
                v55 = 0;
                v56 = 0;
              }

              v57 = v78;
              *(v51 + 4) = v55;
              *v52 = v56;
              *(v51 + 12) = 2080;
              sub_100095B34(v85, &v83);
              type metadata accessor for DaemonAccessory();
              swift_dynamicCast();
              v58 = *(v82 + 24);

              v59 = DockCoreInfo.description.getter();
              v61 = v60;

              sub_100095808(v85);
              v62 = sub_1000952D4(v59, v61, &v84);

              *(v51 + 14) = v62;
              _os_log_impl(&_mh_execute_header, v49, v50, "Accessory start listening failed, expected accessory: %@ actual accessory: %s", v51, 0x16u);
              sub_100095C84(v52, &unk_1002A6F60, &unk_10023C4E0);

              sub_100095808(v53);

              (*(v80 + 8))(v14, v81);
            }

            else
            {

              sub_100095808(v85);
              (*(v47 + 8))(v14, v28);
            }

            return;
          }

          goto LABEL_13;
        }

        v25 = v24;
      }

      else if (!v25)
      {
        v28 = v81;
LABEL_13:
        v39 = *(v80 + 16);
        v77 = OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_logger;
        v39(v19, &a1[OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_logger], v28);
        v40 = a1;
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v41, v42))
        {
          v76 = v39;
          v43 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          v75 = v43;
          *v43 = 138412290;
          v44 = swift_weakLoadStrong();
          if (v44)
          {
            v45 = *(v44 + 24);

            v46 = v45;
          }

          else
          {
            v45 = 0;
            v46 = 0;
          }

          v64 = v74;
          v63 = v75;
          *(v75 + 1) = v45;
          *v64 = v46;
          _os_log_impl(&_mh_execute_header, v41, v42, "Accessory: %@ started listening", v63, 0xCu);
          sub_100095C84(v64, &unk_1002A6F60, &unk_10023C4E0);

          v39 = v76;
        }

        v65 = v81;
        v66 = *(v80 + 8);
        v66(v19, v81);
        v40[OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_transportReady] = 1;
        if (*&v40[OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_pendingOpenSessionCallback])
        {
          v39(v17, &a1[v77], v65);
          v67 = Logger.logObject.getter();
          v68 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v67, v68))
          {
            v69 = swift_slowAlloc();
            *v69 = 0;
            _os_log_impl(&_mh_execute_header, v67, v68, "Handling pending start bulk send session request", v69, 2u);
          }

          v66(v17, v65);
          v70 = type metadata accessor for TaskPriority();
          v71 = v79;
          (*(*(v70 - 8) + 56))(v79, 1, 1, v70);
          v72 = swift_allocObject();
          v72[2] = 0;
          v72[3] = 0;
          v72[4] = v40;
          v73 = v40;
          sub_1001B6410(0, 0, v71, &unk_10023D380, v72);
        }

        else
        {
        }

        return;
      }

      v28 = v81;
      goto LABEL_22;
    }
  }

  v30 = v80;
  v29 = v81;
  (*(v80 + 16))(v11, &a1[OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_logger], v81);
  v31 = a1;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v34 = 138412290;
    v36 = swift_weakLoadStrong();
    if (v36)
    {
      v37 = *(v36 + 24);

      v38 = v37;
    }

    else
    {
      v37 = 0;
      v38 = 0;
    }

    *(v34 + 4) = v37;
    *v35 = v38;
    _os_log_impl(&_mh_execute_header, v32, v33, "Accessory: %@ has no hap server", v34, 0xCu);
    sub_100095C84(v35, &unk_1002A6F60, &unk_10023C4E0);
  }

  (*(v30 + 8))(v11, v29);
}

uint64_t sub_1000FE570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Logger();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  v8 = swift_task_alloc();
  v4[6] = v8;
  *v8 = v4;
  v8[1] = sub_1000FE660;

  return sub_1000FC56C();
}

uint64_t sub_1000FE660()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (!v0)
  {
    v4 = v3[5];

    v5 = v3[1];

    __asm { BRAA            X1, X16 }
  }

  return (_swift_task_switch)(sub_1000FE79C, 0, 0);
}

uint64_t sub_1000FE79C()
{
  v1 = v0[7];
  (*(v0[4] + 16))(v0[5], v0[2] + OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_logger, v0[3]);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[7];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Start bulk send session request failed with error %@", v6, 0xCu);
    sub_100095C84(v7, &unk_1002A6F60, &unk_10023C4E0);
  }

  else
  {
    v9 = v0[7];
  }

  (*(v0[4] + 8))(v0[5], v0[3]);
  v10 = v0[5];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000FE9F0()
{
  sub_100095808((v0 + 24));

  return _swift_deallocObject(v0, 56, 7);
}

_OWORD *sub_1000FEA30(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1000FEA4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000FEA64()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000FEAA4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10009862C;

  return sub_1000FE570(a1, v4, v5, v6);
}

uint64_t sub_1000FEB58(uint64_t a1, uint64_t a2)
{
  v4 = sub_100095274(&unk_1002A8890, &unk_10023FAF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000FEBC8()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))(*(v0 + 32), 0);
  sub_100095274(&qword_1002A88A0, &unk_10023D390);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_1000FEC34(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 40);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a1;
  aBlock[4] = sub_1000FF318;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147FC8;
  aBlock[3] = &unk_100277850;
  v16 = _Block_copy(aBlock);
  v17 = v14;

  v18 = a1;
  static DispatchQoS.unspecified.getter();
  v20[1] = &_swiftEmptyArrayStorage;
  sub_1000C42FC(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags);
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_1000BAB30();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v5 + 8))(v8, v4);
  (*(v10 + 8))(v13, v9);
}

uint64_t sub_1000FEEE8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v8 - 8);
  v9 = *(v24 + 64);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v12 = *(v23 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v23);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a4 + 40);
  v17 = swift_allocObject();
  v17[2] = a4;
  v17[3] = a1;
  v17[4] = a2;
  v17[5] = a3;
  aBlock[4] = sub_1000FF1FC;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147FC8;
  aBlock[3] = &unk_100277788;
  v18 = _Block_copy(aBlock);
  v19 = v16;

  v20 = a1;

  static DispatchQoS.unspecified.getter();
  v25 = &_swiftEmptyArrayStorage;
  sub_1000C42FC(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags);
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_1000BAB30();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v24 + 8))(v11, v8);
  (*(v12 + 8))(v15, v23);
}

uint64_t sub_1000FF1B4()
{
  v1 = v0[2];

  v2 = v0[3];
  swift_unknownObjectRelease();
  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

void sub_1000FF1FC()
{
  v1 = v0[4];
  v2 = v0[5];
  sub_1000A49A4(v0[2], v0[3]);
}

uint64_t sub_1000FF208()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000FF2D8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t *sub_1000FF338()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v128 = v0;
  v129 = v1;
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v4 = __chkstk_darwin(v3);
  v6 = &v116 - v5;
  v7 = __chkstk_darwin(v4);
  v119 = &v116 - v8;
  v9 = __chkstk_darwin(v7);
  v120 = &v116 - v10;
  v11 = __chkstk_darwin(v9);
  v123 = &v116 - v12;
  v13 = __chkstk_darwin(v11);
  v122 = &v116 - v14;
  __chkstk_darwin(v13);
  v124 = &v116 - v15;
  v16 = type metadata accessor for String.Encoding();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v18 = type metadata accessor for URL.DirectoryHint();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v116 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100095274(&qword_1002A6B70, &unk_10023C9C0);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = &v116 - v25;
  v27 = type metadata accessor for URL();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = __chkstk_darwin(v27);
  v125 = &v116 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v126 = &v116 - v32;
  if (qword_1002A6710 != -1)
  {
    swift_once();
  }

  sub_100152034(v26);
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    sub_100095C84(v26, &qword_1002A6B70, &unk_10023C9C0);
    v33 = v128;
    v34 = v129;
    (*(v129 + 16))(v6, v127 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v128);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "Failed getting library path", v37, 2u);
    }

    (*(v34 + 8))(v6, v33);
    sub_100100634();
    swift_allocError();
    *v38 = 0;
    v38[1] = 0;
    v39 = _convertErrorToNSError(_:)();

    return v39;
  }

  v117 = v28;
  v118 = v27;
  (*(v28 + 32))(v126, v26, v27);
  v131 = 0x6E6F6973726576;
  v132 = 0xE700000000000000;
  (*(v19 + 104))(v22, enum case for URL.DirectoryHint.inferFromPath(_:), v18);
  sub_1000E3C10();
  URL.appending<A>(path:directoryHint:)();
  (*(v19 + 8))(v22, v18);
  static String.Encoding.utf8.getter();
  v41 = String.init(contentsOf:encoding:)();
  v42 = v127;
  v121 = v129 + 16;
  v43 = v41;
  v45 = v44;
  v46 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger;
  v47 = *(v129 + 16);
  v48 = v124;
  v49 = v128;
  v47(v124, v127 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v128);

  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = v46;
    v53 = v47;
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v130 = v55;
    *v54 = 136315138;
    v131 = v43;
    v132 = v45;

    sub_100095274(&unk_1002A6F20, &unk_10023C660);
    v56 = String.init<A>(describing:)();
    v58 = sub_1000952D4(v56, v57, &v130);

    *(v54 + 4) = v58;
    v49 = v128;
    v59 = v129;
    _os_log_impl(&_mh_execute_header, v50, v51, "Current data version string %s", v54, 0xCu);
    sub_100095808(v55);

    v47 = v53;
    v46 = v52;
    v42 = v127;

    v60 = *(v59 + 8);
    result = v60(v124, v49);
  }

  else
  {

    v60 = *(v129 + 8);
    result = v60(v48, v49);
  }

  v61 = v122;
  v62 = HIBYTE(v45) & 0xF;
  v63 = v43 & 0xFFFFFFFFFFFFLL;
  if ((v45 & 0x2000000000000000) != 0)
  {
    v64 = HIBYTE(v45) & 0xF;
  }

  else
  {
    v64 = v43 & 0xFFFFFFFFFFFFLL;
  }

  if (!v64)
  {

    v85 = -1;
    goto LABEL_75;
  }

  if ((v45 & 0x1000000000000000) == 0)
  {
    if ((v45 & 0x2000000000000000) != 0)
    {
      v131 = v43;
      v132 = v45 & 0xFFFFFFFFFFFFFFLL;
      if (v43 == 43)
      {
        if (v62)
        {
          if (--v62)
          {
            v66 = 0;
            v76 = &v131 + 1;
            while (1)
            {
              v77 = *v76 - 48;
              if (v77 > 9)
              {
                break;
              }

              v78 = 10 * v66;
              if ((v66 * 10) >> 64 != (10 * v66) >> 63)
              {
                break;
              }

              v66 = v78 + v77;
              if (__OFADD__(v78, v77))
              {
                break;
              }

              ++v76;
              if (!--v62)
              {
                goto LABEL_71;
              }
            }
          }

          goto LABEL_70;
        }

LABEL_101:
        __break(1u);
        return result;
      }

      if (v43 != 45)
      {
        if (v62)
        {
          v66 = 0;
          v81 = &v131;
          while (1)
          {
            v82 = *v81 - 48;
            if (v82 > 9)
            {
              break;
            }

            v83 = 10 * v66;
            if ((v66 * 10) >> 64 != (10 * v66) >> 63)
            {
              break;
            }

            v66 = v83 + v82;
            if (__OFADD__(v83, v82))
            {
              break;
            }

            v81 = (v81 + 1);
            if (!--v62)
            {
              goto LABEL_71;
            }
          }
        }

        goto LABEL_70;
      }

      if (v62)
      {
        if (--v62)
        {
          v66 = 0;
          v70 = &v131 + 1;
          while (1)
          {
            v71 = *v70 - 48;
            if (v71 > 9)
            {
              break;
            }

            v72 = 10 * v66;
            if ((v66 * 10) >> 64 != (10 * v66) >> 63)
            {
              break;
            }

            v66 = v72 - v71;
            if (__OFSUB__(v72, v71))
            {
              break;
            }

            ++v70;
            if (!--v62)
            {
              goto LABEL_71;
            }
          }
        }

        goto LABEL_70;
      }
    }

    else
    {
      if ((v43 & 0x1000000000000000) != 0)
      {
        result = ((v45 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
      }

      v65 = *result;
      if (v65 == 43)
      {
        if (v63 >= 1)
        {
          v62 = v63 - 1;
          if (v63 != 1)
          {
            v66 = 0;
            if (result)
            {
              v73 = result + 1;
              while (1)
              {
                v74 = *v73 - 48;
                if (v74 > 9)
                {
                  goto LABEL_70;
                }

                v75 = 10 * v66;
                if ((v66 * 10) >> 64 != (10 * v66) >> 63)
                {
                  goto LABEL_70;
                }

                v66 = v75 + v74;
                if (__OFADD__(v75, v74))
                {
                  goto LABEL_70;
                }

                ++v73;
                if (!--v62)
                {
                  goto LABEL_71;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_70;
        }

        goto LABEL_100;
      }

      if (v65 != 45)
      {
        if (v63)
        {
          v66 = 0;
          if (result)
          {
            while (1)
            {
              v79 = *result - 48;
              if (v79 > 9)
              {
                goto LABEL_70;
              }

              v80 = 10 * v66;
              if ((v66 * 10) >> 64 != (10 * v66) >> 63)
              {
                goto LABEL_70;
              }

              v66 = v80 + v79;
              if (__OFADD__(v80, v79))
              {
                goto LABEL_70;
              }

              result = (result + 1);
              if (!--v63)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_70:
        v66 = 0;
        LOBYTE(v62) = 1;
        goto LABEL_71;
      }

      if (v63 >= 1)
      {
        v62 = v63 - 1;
        if (v63 != 1)
        {
          v66 = 0;
          if (result)
          {
            v67 = result + 1;
            while (1)
            {
              v68 = *v67 - 48;
              if (v68 > 9)
              {
                goto LABEL_70;
              }

              v69 = 10 * v66;
              if ((v66 * 10) >> 64 != (10 * v66) >> 63)
              {
                goto LABEL_70;
              }

              v66 = v69 - v68;
              if (__OFSUB__(v69, v68))
              {
                goto LABEL_70;
              }

              ++v67;
              if (!--v62)
              {
                goto LABEL_71;
              }
            }
          }

LABEL_62:
          LOBYTE(v62) = 0;
LABEL_71:
          LOBYTE(v130) = v62;
          v84 = v62;
          goto LABEL_72;
        }

        goto LABEL_70;
      }

      __break(1u);
    }

    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  LOBYTE(v130) = 0;
  v66 = sub_1001E3EB4(v43, v45, 10);
  v84 = v115;
LABEL_72:

  if (v84)
  {
    v85 = -1;
  }

  else
  {
    v85 = v66;
  }

LABEL_75:
  v47(v61, v42 + v46, v49);
  v86 = Logger.logObject.getter();
  v87 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    *v88 = 134217984;
    *(v88 + 4) = v85;
    _os_log_impl(&_mh_execute_header, v86, v87, "Current version int %ld", v88, 0xCu);
  }

  v60(v61, v49);
  if (v85 >= currentSupportedAccessoryVersion.getter())
  {
    v98 = v42 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger;
    v99 = v123;
    v47(v123, v98, v49);
    v100 = Logger.logObject.getter();
    v101 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      *v102 = 134217984;
      *(v102 + 4) = v85;
      _os_log_impl(&_mh_execute_header, v100, v101, "Version %ld doesn't need migration", v102, 0xCu);
    }

    v60(v99, v49);
    v103 = v118;
    v104 = *(v117 + 8);
    v104(v125, v118);
    v104(v126, v103);
    return 0;
  }

  else
  {
    currentSupportedAccessoryVersion.getter();
    currentSupportedAccessoryVersion.getter();
    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v89 = sub_100182CCC();
    if (v89)
    {
      v90 = v89;
      v91 = v42 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger;
      v92 = v120;
      v47(v120, v91, v49);
      v93 = Logger.logObject.getter();
      v94 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        *v95 = 134218240;
        *(v95 + 4) = v85;
        *(v95 + 12) = 2048;
        *(v95 + 14) = currentSupportedAccessoryVersion.getter();
        _os_log_impl(&_mh_execute_header, v93, v94, "Failed converting accessories from %ld to %ld", v95, 0x16u);
      }

      v60(v92, v49);
      v96 = v118;
      v97 = *(v117 + 8);
      v97(v125, v118);
      v97(v126, v96);
      v131 = v90;
    }

    else
    {
      v105 = v119;
      v47(v119, v42 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v49);
      v106 = Logger.logObject.getter();
      v107 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v106, v107))
      {
        v108 = swift_slowAlloc();
        *v108 = 134217984;
        *(v108 + 4) = currentSupportedAccessoryVersion.getter();
        _os_log_impl(&_mh_execute_header, v106, v107, "Updating version to %ld", v108, 0xCu);
      }

      v60(v105, v49);
      v109 = currentSupportedAccessoryVersion.getter();
      v110 = v125;
      v111 = sub_1001002D0(v125, v109);
      sub_100181B7C();
      v112 = *(v117 + 8);
      v113 = v110;
      v114 = v118;
      v112(v113, v118);
      v112(v126, v114);
      if (!v111)
      {
        return 0;
      }

      v131 = v111;
    }

    sub_100095274(&qword_1002A7268, &unk_10023C680);
    sub_100100688();
    if (swift_dynamicCast())
    {
      return v130;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1001002D0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for String.Encoding();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[3] = a2;
  dispatch thunk of CustomStringConvertible.description.getter();
  static String.Encoding.utf8.getter();
  v13 = String.data(using:allowLossyConversion:)();
  v15 = v14;

  (*(v9 + 8))(v12, v8);
  if (v15 >> 60 == 15)
  {
    sub_100100634();
    v16 = swift_allocError();
    *v17 = 0xD00000000000001DLL;
    v17[1] = 0x8000000100231450;
    swift_willThrow();
    (*(v4 + 16))(v7, v24[1] + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v3);
    swift_errorRetain();
    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      swift_errorRetain();
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v22;
      *v21 = v22;
      _os_log_impl(&_mh_execute_header, v18, v19, "Failed updating version string: %@", v20, 0xCu);
      sub_100095C84(v21, &unk_1002A6F60, &unk_10023C4E0);
    }

    (*(v4 + 8))(v7, v3);
  }

  else
  {
    Data.write(to:options:)();
    sub_1000A452C(v13, v15);
    return 0;
  }

  return v16;
}

unint64_t sub_100100634()
{
  result = qword_1002A88C8;
  if (!qword_1002A88C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A88C8);
  }

  return result;
}

unint64_t sub_100100688()
{
  result = qword_1002A92B0;
  if (!qword_1002A92B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002A92B0);
  }

  return result;
}

uint64_t sub_1001006D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100100724(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_100100778(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_100100790(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_1001007C0(uint64_t a1, unint64_t a2)
{
  v38 = a1;
  v39 = a2;
  *&v34 = a1;
  *(&v34 + 1) = a2;
  sub_1000A0CD8(a1, a2);
  sub_100095274(&qword_1002A8A08, &qword_10023D960);
  sub_100095274(&qword_1002A89D8, &qword_10023D930);
  if (swift_dynamicCast())
  {
    sub_1000A0D80(v32, &v35);
    sub_1000A09E0(&v35, v37);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    v32[0] = v34;
    sub_100095808(&v35);
    goto LABEL_61;
  }

  v33 = 0;
  memset(v32, 0, sizeof(v32));
  sub_100105208(v32);
  v2 = v39 >> 62;
  if ((v39 >> 62) > 1)
  {
    v3 = 0;
    v4 = 0;
    if (v2 == 2)
    {
      v3 = *(v38 + 16);
      v4 = *(v38 + 24);
    }
  }

  else
  {
    if (v2)
    {
      v3 = v38;
    }

    else
    {
      v3 = 0;
    }

    if (v2)
    {
      v4 = v38 >> 32;
    }

    else
    {
      v4 = BYTE6(v39);
    }
  }

  v5 = sub_1001AC908(v3, v4, v38, v39);
  *&v32[0] = sub_1000B2E80(v5);
  *(&v32[0] + 1) = v6;
  __chkstk_darwin();
  sub_100103970(sub_1001052F8);
  v7 = *(&v35 + 1);
  v8 = v35;
  v9 = v36;
  v10 = *(&v32[0] + 1) >> 62;
  if ((*(&v32[0] + 1) >> 62) > 1)
  {
    if (v10 == 2)
    {
      v12 = *(*&v32[0] + 16);
      v11 = *(*&v32[0] + 24);
      v13 = __OFSUB__(v11, v12);
      v14 = v11 - v12;
      if (v13)
      {
        goto LABEL_73;
      }

      if (v37 != v14)
      {
        goto LABEL_22;
      }
    }

    else if (v37)
    {
      v15 = 0;
      goto LABEL_58;
    }

    goto LABEL_27;
  }

  if (v10)
  {
    if (__OFSUB__(DWORD1(v32[0]), v32[0]))
    {
      goto LABEL_74;
    }

    if (v37 != DWORD1(v32[0]) - LODWORD(v32[0]))
    {
      goto LABEL_22;
    }

    goto LABEL_27;
  }

  if (v37 == BYTE14(v32[0]))
  {
LABEL_27:
    LOBYTE(v16) = 0;
    v17 = *(&v35 + 1) >> 62;
    v30 = v35 >> 32;
    v31 = BYTE14(v35);
    *(&v35 + 7) = 0;
    *&v35 = 0;
    while (1)
    {
      if (v17 > 1)
      {
        if (v17 == 2)
        {
          v18 = *(v8 + 16);
LABEL_33:
          if (v9 == v18)
          {
            goto LABEL_62;
          }

          goto LABEL_36;
        }
      }

      else
      {
        v18 = v8;
        if (v17)
        {
          goto LABEL_33;
        }
      }

      if (!v9)
      {
LABEL_62:
        if (v16)
        {
          *&v34 = v35;
          *(&v34 + 6) = *(&v35 + 6);
          Data._Representation.append(contentsOf:)();
        }

        goto LABEL_60;
      }

LABEL_36:
      v13 = __OFSUB__(v9--, 1);
      if (v13)
      {
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
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
      }

      if (v17 > 1)
      {
        if (v17 != 2)
        {
          goto LABEL_75;
        }

        if (v9 < *(v8 + 16))
        {
          goto LABEL_66;
        }

        if (v9 >= *(v8 + 24))
        {
          goto LABEL_69;
        }

        v20 = __DataStorage._bytes.getter();
        if (!v20)
        {
          goto LABEL_77;
        }

        v21 = v20;
        v22 = __DataStorage._offset.getter();
        v23 = v9 - v22;
        if (__OFSUB__(v9, v22))
        {
          goto LABEL_71;
        }

        goto LABEL_52;
      }

      if (v17)
      {
        if (v9 < v8 || v9 >= v30)
        {
          goto LABEL_68;
        }

        v24 = __DataStorage._bytes.getter();
        if (!v24)
        {
          goto LABEL_76;
        }

        v21 = v24;
        v25 = __DataStorage._offset.getter();
        v23 = v9 - v25;
        if (__OFSUB__(v9, v25))
        {
          goto LABEL_70;
        }

LABEL_52:
        v19 = *(v21 + v23);
        goto LABEL_53;
      }

      if (v9 >= v31)
      {
        goto LABEL_67;
      }

      *&v34 = v8;
      WORD4(v34) = v7;
      BYTE10(v34) = BYTE2(v7);
      BYTE11(v34) = BYTE3(v7);
      BYTE12(v34) = BYTE4(v7);
      BYTE13(v34) = BYTE5(v7);
      v19 = *(&v34 + v9);
LABEL_53:
      *(&v35 + v16) = v19;
      v16 = v16 + 1;
      if ((v16 >> 8))
      {
        goto LABEL_65;
      }

      if (v16 == 14)
      {
        *&v34 = v35;
        *(&v34 + 6) = *(&v35 + 6);
        Data._Representation.append(contentsOf:)();
        LOBYTE(v16) = 0;
      }
    }
  }

LABEL_22:
  if (v10 == 2)
  {
    v15 = *(*&v32[0] + 24);
  }

  else if (v10 == 1)
  {
    v15 = *&v32[0] >> 32;
  }

  else
  {
    v15 = BYTE14(v32[0]);
  }

LABEL_58:
  if (v15 < v37)
  {
    goto LABEL_72;
  }

  Data._Representation.replaceSubrange(_:with:count:)();
LABEL_60:
  sub_1000A0D2C(v8, v7);
LABEL_61:
  v26 = v32[0];
  v27 = v38;
  v28 = v39;
  sub_1000A0CD8(*&v32[0], *(&v32[0] + 1));
  sub_1000A0D2C(v27, v28);
  sub_1000A0D2C(v26, *(&v26 + 1));
  return v26;
}

uint64_t sub_100100D58(uint64_t a1, unint64_t a2)
{
  *&v40 = a1;
  *(&v40 + 1) = a2;

  sub_100095274(&qword_1002A89D8, &qword_10023D930);
  if (swift_dynamicCast())
  {
    sub_1000A0D80(__src, &v41);
    sub_1000A09E0(&v41, v42);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    __src[0] = v40;
    sub_100095808(&v41);
    goto LABEL_63;
  }

  v39 = 0;
  memset(__src, 0, sizeof(__src));
  sub_100105208(__src);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = _StringObject.sharedUTF8.getter();
  }

  sub_1001038A8(v4, v5, &v41);
  v6 = *(&v41 + 1);
  v7 = v41;
  if (*(&v41 + 1) >> 60 != 15)
  {
    __src[0] = v41;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_1000B2E80(v8);
  *(&__src[0] + 1) = v9;
  __chkstk_darwin(*&__src[0]);
  v10 = sub_100103C20(sub_100105270);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        Data._Representation.replaceSubrange(_:with:count:)();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v35 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v40 + 7) = 0;
  *&v40 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v34 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v36 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v37 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_1001E4838(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = String.UTF8View._foreignCount()();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = String.UTF8View._foreignSubscript(position:)();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v41 = v14;
      *(&v41 + 1) = v37;
      v31 = *(&v41 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v36;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = _StringObject.sharedUTF8.getter();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_1001E4838(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = String.UTF8View._foreignIndex(after:)();
LABEL_52:
    *(&v40 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v41 = v40;
      *(&v41 + 6) = *(&v40 + 6);
      Data._Representation.append(contentsOf:)();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v34;
  if (v24)
  {
    *&v41 = v40;
    *(&v41 + 6) = *(&v40 + 6);
    Data._Representation.append(contentsOf:)();
    sub_1000A452C(v35, v34);
    goto LABEL_62;
  }

LABEL_57:

  sub_1000A452C(v35, v6);
LABEL_63:
  v32 = __src[0];
  sub_1000A0CD8(*&__src[0], *(&__src[0] + 1));

  sub_1000A0D2C(v32, *(&v32 + 1));
  return v32;
}

uint64_t sub_1001012C4()
{
  if (*v0)
  {
    result = 0x65756C6176;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_100101300(uint64_t a1)
{
  v2 = sub_1001013BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10010133C(uint64_t a1)
{
  v2 = sub_1001013BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1001013BC()
{
  result = qword_1002A88D8;
  if (!qword_1002A88D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A88D8);
  }

  return result;
}

uint64_t _s14dockaccessoryd14MotionFeedbackV8PositionV11descriptionSSvg_0()
{
  v0._countAndFlagsBits = 4023369;
  v0._object = 0xE300000000000000;
  String.append(_:)(v0);
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 0x3D65756C615620;
  v2._object = 0xE700000000000000;
  String.append(_:)(v2);
  Double.write<A>(to:)();
  return 0;
}

uint64_t sub_100101574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
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

uint64_t sub_100101644(uint64_t a1)
{
  v2 = sub_100104314();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100101680(uint64_t a1)
{
  v2 = sub_100104314();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100101700(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  v7 = sub_100095274(a3, a4);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  v12 = a1[4];
  sub_1000A09E0(a1, a1[3]);
  a5();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = 0;
  v13 = v15;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v13)
  {
    v16 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

void sub_100101920(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, void (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  v8 = sub_100104368(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = v7;
    *(a5 + 8) = v8;
  }
}

uint64_t MotionFeedback.positions.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t MotionFeedback.velocities.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t MotionFeedback.description.getter()
{
  v0._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0x3D6C655620;
  v1._object = 0xE500000000000000;
  String.append(_:)(v1);
  v2._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v2);

  return 1030975312;
}

dockaccessoryd::MotionFeedback_optional __swiftcall MotionFeedback.init(data:)(NSData data)
{
  v2 = type metadata accessor for PropertyListDecoder();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  v5 = data.super.isa;
  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  sub_100104984();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  sub_1000A0D2C(v6, v8);

  v10 = v12;
  v11 = v13;
  result.value.velocities._rawValue = v11;
  result.value.positions._rawValue = v10;
  result.is_nil = v9;
  return result;
}

NSData_optional __swiftcall MotionFeedback.encode()()
{
  v0 = type metadata accessor for PropertyListEncoder();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_1001049D8();
  v3 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v5 = v4;

  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_1000A0D2C(v3, v5);
  v8 = isa;
  result.value.super.isa = v8;
  result.is_nil = v7;
  return result;
}

uint64_t MotionFeedback.encode()@<X0>(char *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = *(a1 + 2);
  if (v8 > 0xFF)
  {
    goto LABEL_50;
  }

  v3 = a2;
  v4 = a1;
  a1 = sub_100095714(0, 1, 1, _swiftEmptyArrayStorage);
  v7 = *(a1 + 2);
  a3 = *(a1 + 3);
  v5 = (v7 + 1);
  if (v7 >= a3 >> 1)
  {
    goto LABEL_51;
  }

  while (1)
  {
    *(a1 + 2) = v5;
    v9 = &a1[v7];
    a1[v7 + 32] = v8;
    v10 = *(v3 + 16);
    if (v10 > 0xFF)
    {
      __break(1u);
    }

    else
    {
      v9 = *(a1 + 3);
      v6 = v7 + 2;
      if ((v7 + 2) <= (v9 >> 1))
      {
        goto LABEL_5;
      }
    }

    a1 = sub_100095714((v9 > 1), v6, 1, a1);
LABEL_5:
    *(a1 + 2) = v6;
    a3 = v5 + a1;
    *(v5 + a1 + 32) = v10;
    if (v8)
    {
      v6 = v4 + 32;
      v7 += 34;
      v11 = v8;
      while (1)
      {
        v13 = *v6;
        v6 += 16;
        v12 = *&v13;
        if ((*&v13 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v12 > 0xFF)
        {
          goto LABEL_41;
        }

        a3 = *(a1 + 3);
        v5 = (v7 - 31);
        if (v7 - 32 >= a3 >> 1)
        {
          a1 = sub_100095714((a3 > 1), v7 - 31, 1, a1);
        }

        *(a1 + 2) = v5;
        a1[v7++] = v12;
        if (!--v11)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

LABEL_12:
    if (v10)
    {
      v6 = v3 + 32;
      v7 = v10;
      while (1)
      {
        v15 = *v6;
        v6 += 16;
        v14 = *&v15;
        if ((*&v15 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v14 > 0xFF)
        {
          goto LABEL_43;
        }

        v17 = *(a1 + 2);
        v16 = *(a1 + 3);
        v5 = (v17 + 1);
        if (v17 >= v16 >> 1)
        {
          a1 = sub_100095714((v16 > 1), v17 + 1, 1, a1);
        }

        *(a1 + 2) = v5;
        a3 = &a1[v17];
        a1[v17 + 32] = v14;
        if (!--v7)
        {
          goto LABEL_19;
        }
      }

LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

LABEL_19:
    if (v8)
    {
      v6 = v4 + 40;
      v7 = 0x7FEFFFFFFFFFFFFFLL;
      while (1)
      {
        v18 = *v6 * 1000.0;
        a3 = fabs(v18);
        if (a3 > 0x7FEFFFFFFFFFFFFFLL)
        {
          break;
        }

        if (v18 <= -32769.0)
        {
          goto LABEL_45;
        }

        if (v18 >= 32768.0)
        {
          goto LABEL_46;
        }

        v20 = *(a1 + 2);
        v19 = *(a1 + 3);
        v21 = v19 >> 1;
        v4 = v20 + 1;
        if (v19 >> 1 <= v20)
        {
          a1 = sub_100095714((v19 > 1), v20 + 1, 1, a1);
          v19 = *(a1 + 3);
          v21 = v19 >> 1;
        }

        *(a1 + 2) = v4;
        a1[v20 + 32] = v18 >> 8;
        v5 = (v20 + 2);
        if (v21 < v5)
        {
          a1 = sub_100095714((v19 > 1), v5, 1, a1);
        }

        *(a1 + 2) = v5;
        a1[v4 + 32] = v18;
        v6 += 16;
        if (!--v8)
        {
          goto LABEL_29;
        }
      }

LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

LABEL_29:
    if (!v10)
    {
      break;
    }

    v5 = (v3 + 40);
    v6 = 0x7FEFFFFFFFFFFFFFLL;
    v8 = 0xC0E0002000000000;
    v7 = 0x40E0000000000000;
    while (1)
    {
      v22 = *v5 * 1000.0;
      a3 = fabs(v22);
      if (a3 > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v22 <= -32769.0)
      {
        goto LABEL_48;
      }

      if (v22 >= 32768.0)
      {
        goto LABEL_49;
      }

      v24 = *(a1 + 2);
      v23 = *(a1 + 3);
      v25 = v23 >> 1;
      v3 = v24 + 1;
      if (v23 >> 1 <= v24)
      {
        a1 = sub_100095714((v23 > 1), v24 + 1, 1, a1);
        v23 = *(a1 + 3);
        v25 = v23 >> 1;
      }

      *(a1 + 2) = v3;
      a1[v24 + 32] = v22 >> 8;
      v4 = v24 + 2;
      if (v25 < v4)
      {
        a1 = sub_100095714((v23 > 1), v4, 1, a1);
      }

      *(a1 + 2) = v4;
      a1[v3 + 32] = v22;
      v5 += 2;
      if (!--v10)
      {
        goto LABEL_39;
      }
    }

LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    a1 = sub_100095714((a3 > 1), v5, 1, a1);
  }

LABEL_39:
  v26 = sub_100104264(a1);

  return v26;
}

uint64_t sub_1001021C8()
{
  if (*v0)
  {
    result = 0x697469636F6C6576;
  }

  else
  {
    result = 0x6E6F697469736F70;
  }

  *v0;
  return result;
}

uint64_t sub_10010220C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F697469736F70 && a2 == 0xE900000000000073;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x697469636F6C6576 && a2 == 0xEA00000000007365)
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

uint64_t sub_1001022F8(uint64_t a1)
{
  v2 = sub_100104A2C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100102334(uint64_t a1)
{
  v2 = sub_100104A2C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t MotionFeedback.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100095274(&qword_1002A8900, &qword_10023D448);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  sub_1000A09E0(a1, a1[3]);
  sub_100104A2C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = a2;
  v15 = 0;
  sub_100095274(&qword_1002A8910, &qword_10023D450);
  sub_1001053C0(&qword_1002A8918, sub_100104A80);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v3)
  {
    v16 = a3;
    v15 = 1;
    sub_100095274(&qword_1002A8928, &qword_10023D458);
    sub_100104AD4(&qword_1002A8930, sub_100104B4C);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1001025A8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100104BA0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

char *sub_1001025F0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100095274(&qword_1002A89E8, &qword_10023D940);
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
    v10 = &_swiftEmptyArrayStorage;
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

void *sub_1001026FC(void *result, int64_t a2, char a3, void *a4)
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
    sub_100095274(&qword_1002A8A10, &qword_10023D968);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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
    sub_100095274(&unk_1002A7A90, &unk_10023C960);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100102844(char *result, int64_t a2, char a3, char *a4)
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
    sub_100095274(&unk_1002A8ED0, &qword_10023DBC0);
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

char *sub_100102974(char *result, int64_t a2, char a3, char *a4)
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
    sub_100095274(&qword_1002A89A0, &qword_10023D8F8);
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

char *sub_100102A78(char *result, int64_t a2, char a3, char *a4)
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
    sub_100095274(&qword_1002A89D0, &qword_10023D928);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100102B98(char *result, int64_t a2, char a3, char *a4)
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
    sub_100095274(&qword_1002A89F8, &qword_10023D950);
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
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_100102CE8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_100095274(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

char *sub_100102DE4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100095274(&qword_1002A8998, &qword_10023D8F0);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_100102EE8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100095274(&qword_1002A89B8, &qword_10023D910);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_100102FEC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100095274(&qword_1002A89C0, &qword_10023D918);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_100103114(char *result, int64_t a2, char a3, char *a4)
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
    sub_100095274(&qword_1002A8A18, &qword_10023D970);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

char *sub_100103230(char *result, int64_t a2, char a3, char *a4)
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
    sub_100095274(&qword_1002A89F0, &qword_10023D948);
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

size_t sub_100103334(size_t result, int64_t a2, char a3, void *a4)
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

  sub_100095274(&qword_1002A89C8, &qword_10023D920);
  v10 = *(type metadata accessor for DockKitBoundingBox() - 8);
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
  v15 = *(type metadata accessor for DockKitBoundingBox() - 8);
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