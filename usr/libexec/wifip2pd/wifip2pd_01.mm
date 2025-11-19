uint64_t sub_100016C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100016D44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Logger();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100016DFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void RoutingSocket.ipAddress(for:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10005DC58(&qword_10058D690, &qword_1004872F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004817D0;
  *(inited + 32) = xmmword_100498810;
  *(inited + 48) = 0x40000000002;
  __size = 0;
  v5 = sysctl((inited + 32), 6u, 0, &__size, 0, 0);
  if (v5 < 0)
  {
    v31 = v5;

    v32 = v31;
    if (v31 == -1)
    {
      v32 = errno.getter();
    }

    v33 = v32;
    sub_10000B02C();
    swift_allocError();
    *v34 = v33;
    *(v34 + 8) = 0;
    goto LABEL_38;
  }

  v6 = malloc(__size);
  if (!v6)
  {

    sub_10000B02C();
    swift_allocError();
    *v34 = xmmword_100481830;
LABEL_38:
    *(v34 + 16) = 0;
    swift_willThrow();
    return;
  }

  v7 = v6;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    inited = sub_10011686C(0, 6, 0, inited);
  }

  v8 = sysctl((inited + 32), 6u, v7, &__size, 0, 0);

  if ((v8 & 0x80000000) != 0)
  {
    if (v8 == -1)
    {
      v8 = errno.getter();
    }

    sub_10000B02C();
    swift_allocError();
    *v36 = v8;
    *(v36 + 8) = 0;
    *(v36 + 16) = 0;
LABEL_42:
    swift_willThrow();
    free(v7);
    return;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 1;
  v13 = __size;
  v14 = 92;
  while (v13 >= v14)
  {
    v15 = *&v7[v9];
    v30 = __OFADD__(v9, v15);
    v9 += v15;
    if (v30)
    {
      goto LABEL_46;
    }

    if (v13 < v9)
    {
      break;
    }

    if (v15 < 0x6C || (v16 = v15 - 92, v17 = v7[v14], v16 < v17 + 20))
    {
      v14 = v9 + 92;
      if (__OFADD__(v9, 92))
      {
        goto LABEL_45;
      }
    }

    else
    {
      v42 = v11;
      v30 = __OFADD__(v14, v17);
      v18 = v14 + v17;
      if (v30)
      {
        __break(1u);
      }

      v19 = v10;
      v39 = &v7[v14];
      v40 = v7[v14 + 1];
      v41 = v12;
      v20 = v7[v18 + 5];
      v21 = v7[v18 + 6];
      v45 = *&v7[v18 + 8];
      v46 = *&v7[v18 + 16];
      if (v21)
      {
        if (v21 <= 0xE)
        {
          memset(__dst, 0, sizeof(__dst));
          v44 = v21;
          memcpy(__dst, &v45 + v20, v21);
          v26 = *__dst;
          v27 = v38 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v44 << 16)) << 32);
          v38 = v27;
        }

        else
        {
          v22 = type metadata accessor for __DataStorage();
          v23 = *(v22 + 48);
          v24 = *(v22 + 52);
          swift_allocObject();
          v25 = __DataStorage.init(bytes:length:)();
          v26 = v21 << 32;
          v27 = v25 | 0x4000000000000000;
        }
      }

      else
      {
        v26 = 0;
        v27 = 0xC000000000000000;
      }

      v10 = v19;
      v28 = sub_1000172CC(v26, v27);
      v11 = v42;
      if ((v28 & 0x1000000000000) == 0)
      {
        *__dst = v28;
        __dst[4] = BYTE4(v28);
        __dst[5] = BYTE5(v28);
        LOWORD(v45) = a1;
        BYTE2(v45) = BYTE2(a1);
        BYTE3(v45) = BYTE3(a1);
        BYTE4(v45) = BYTE4(a1);
        BYTE5(v45) = BYTE5(a1);
        if (v28 == v45 && *&__dst[4] == WORD2(v45))
        {
          if (v40 == 30)
          {
            v12 = 0;
            v11 = *(v39 + 1);
            v10 = *(v39 + 2);
            v30 = __OFADD__(v9, 92);
            v14 = v9 + 92;
            goto LABEL_28;
          }

          if (v40 == 2)
          {
            goto LABEL_47;
          }
        }
      }

      v30 = __OFADD__(v9, 92);
      v14 = v9 + 92;
      v12 = v41;
LABEL_28:
      if (v30)
      {
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        v10 = 0;
        v37 = 0;
        v11 = *(v39 + 1);
        goto LABEL_44;
      }
    }
  }

  if (v12)
  {
    sub_10000B02C();
    swift_allocError();
    *v35 = 0;
    *(v35 + 8) = 0;
    *(v35 + 16) = 2;
    goto LABEL_42;
  }

  v37 = 1;
LABEL_44:
  free(v7);
  *a2 = v11;
  *(a2 + 8) = v10;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v37;
}

uint64_t sub_1000172CC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    goto LABEL_17;
  }

  v3 = result;
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_16;
    }

    v6 = *(result + 16);
    v5 = *(result + 24);
    v7 = v5 - v6;
    if (!__OFSUB__(v5, v6))
    {
LABEL_12:
      sub_10000AB0C(result, a2);
      if (v7 == 6)
      {
        goto LABEL_13;
      }

LABEL_16:
      sub_100017554(v3, a2);
      sub_100017554(v3, a2);
LABEL_17:
      v11 = 0;
      v12 = 1;
      return v11 | (v12 << 48);
    }

    __break(1u);
  }

  else if (!v4)
  {
    if (BYTE6(a2) != 6)
    {
      goto LABEL_16;
    }

LABEL_13:
    if (v4)
    {
      if (v4 == 2)
      {
        v8 = *(v3 + 16);
        v9 = Data._Representation.subscript.getter();
        v10 = *(v3 + 16);
      }

      else
      {
        v10 = v3;
        v9 = Data._Representation.subscript.getter();
      }
    }

    else
    {
      v9 = Data._Representation.subscript.getter();
      v10 = 0;
    }

    result = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
    }

    else
    {
      v13 = Data._Representation.subscript.getter();
      v14 = v4;
      if (v4)
      {
        if (v4 == 2)
        {
          v15 = *(v3 + 16);
        }

        else
        {
          v15 = v3;
        }
      }

      else
      {
        v15 = 0;
      }

      result = v15 + 2;
      if (!__OFADD__(v15, 2))
      {
        v16 = Data._Representation.subscript.getter();
        if (v4)
        {
          if (v4 == 2)
          {
            v17 = *(v3 + 16);
          }

          else
          {
            v17 = v3;
          }
        }

        else
        {
          v17 = 0;
        }

        result = v17 + 3;
        if (!__OFADD__(v17, 3))
        {
          v18 = Data._Representation.subscript.getter();
          if (v4)
          {
            if (v4 == 2)
            {
              v19 = *(v3 + 16);
            }

            else
            {
              v19 = v3;
            }
          }

          else
          {
            v19 = 0;
          }

          result = v19 + 4;
          if (!__OFADD__(v19, 4))
          {
            v20 = Data._Representation.subscript.getter();
            if (v4)
            {
              if (v4 == 2)
              {
                v14 = *(v3 + 16);
              }

              else
              {
                v14 = v3;
              }
            }

            result = v14 + 5;
            if (!__OFADD__(v14, 5))
            {
              v21 = Data._Representation.subscript.getter();
              sub_100017554(v3, a2);
              sub_100017554(v3, a2);
              v12 = 0;
              v11 = v9 | (v13 << 8) | (v16 << 16) & 0xFFFFFFFF00FFFFFFLL | (v18 << 24) | (v20 << 32) | (v21 << 40);
              return v11 | (v12 << 48);
            }

            goto LABEL_50;
          }

LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

LABEL_48:
        __break(1u);
        goto LABEL_49;
      }
    }

    __break(1u);
    goto LABEL_48;
  }

  if (!__OFSUB__(HIDWORD(result), result))
  {
    v7 = HIDWORD(result) - result;
    goto LABEL_12;
  }

LABEL_51:
  __break(1u);
  return result;
}

uint64_t sub_100017554(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000124C8(a1, a2);
  }

  return a1;
}

uint64_t sub_1000175CC(void *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchTime();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v109 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchTimeInterval();
  v110 = *(v10 - 8);
  v11 = *(v110 + 64);
  __chkstk_darwin();
  v108 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Logger();
  v111 = *(v13 - 8);
  v112 = v13;
  v14 = *(v111 + 64);
  __chkstk_darwin();
  v16 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v2 + OBJC_IVAR____TtC12wifip2pdCore9XPCServer_wifiAwareEntitlementsManager);
  if ((sub_100018634(a2, &off_1005731F0) & 1) == 0 && (sub_100018634(a2, &off_100573218) & 1) == 0)
  {
    v31 = a2;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v118 = v35;
      *v34 = 67109378;
      *(v34 + 4) = [v31 processIdentifier];

      *(v34 + 8) = 2080;
      v36 = String._bridgeToObjectiveC()();
      v37 = [v31 valueForEntitlement:v36];

      if (v37)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        aBlock = 0;
        v115 = 0u;
      }

      sub_10005DC58(&qword_10058BA80, &qword_1004818C0);
      v97 = String.init<A>(describing:)();
      v99 = sub_100002320(v97, v98, &v118);

      *(v34 + 10) = v99;
      _os_log_impl(&_mh_execute_header, v32, v33, "Rejecting XPC connection from unentitled process with PID %d: %s", v34, 0x12u);
      sub_100002A00(v35);

      goto LABEL_41;
    }

    return 0;
  }

  if (MKBDeviceUnlockedSinceBoot() != 1)
  {
    v18 = *(v2 + OBJC_IVAR____TtC12wifip2pdCore9XPCServer_entitlement + 8);
    aBlock._countAndFlagsBits = *(v2 + OBJC_IVAR____TtC12wifip2pdCore9XPCServer_entitlement);
    aBlock._object = v18;

    v19._countAndFlagsBits = 0xD00000000000001ALL;
    v19._object = 0x80000001004C29E0;
    String.append(_:)(v19);
    v20 = NSXPCConnection.has(entitlement:)(aBlock);

    if (!v20)
    {
      sub_100018AB4(0, &qword_100599470, NSObject_ptr);
      v38 = *(v3 + OBJC_IVAR____TtC12wifip2pdCore9XPCServer_listener);
      if (static NSObject.== infix(_:_:)())
      {
        v39 = OBJC_IVAR____TtC12wifip2pdCore9XPCServer_unlockObserver;
        swift_beginAccess();
        if (*(v3 + v39) == -1)
        {
          v40 = [v38 _queue];
          v41 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v116 = sub_100445A04;
          v117 = v41;
          aBlock._countAndFlagsBits = _NSConcreteStackBlock;
          aBlock._object = 1107296256;
          *&v115 = sub_1001C5BEC;
          *(&v115 + 1) = &unk_10057B878;
          v42 = _Block_copy(&aBlock);

          swift_beginAccess();
          notify_register_dispatch("com.apple.mobile.keybagd.lock_status", (v3 + v39), v40, v42);
          swift_endAccess();
          _Block_release(v42);
        }
      }

      v43 = a2;
      v32 = Logger.logObject.getter();
      v44 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v32, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 67109120;
        *(v45 + 4) = [v43 processIdentifier];

        _os_log_impl(&_mh_execute_header, v32, v44, "Rejecting XPC connection from process with PID %d because device has never been unlocked", v45, 8u);
LABEL_41:

        return 0;
      }

      return 0;
    }
  }

  v107 = v10;
  v21 = [a1 _queue];
  [a2 _setQueue:v21];

  sub_100018AB4(0, &qword_100599470, NSObject_ptr);
  v22 = *(v3 + OBJC_IVAR____TtC12wifip2pdCore9XPCServer_listener);
  if (static NSObject.== infix(_:_:)())
  {
    v23 = swift_allocObject();
    *(v23 + 16) = a2;
    v116 = sub_100445A0C;
    v117 = v23;
    aBlock._countAndFlagsBits = _NSConcreteStackBlock;
    aBlock._object = 1107296256;
    *&v115 = sub_10000C8B8;
    *(&v115 + 1) = &unk_10057B918;
    v24 = _Block_copy(&aBlock);
    v25 = a2;

    [v25 setInvalidationHandler:v24];
    _Block_release(v24);
    v26 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___WiFiP2PXPCListenerProtocol];
    [v25 setExportedInterface:v26];

    [v25 setExportedObject:v3];
    [v25 activate];
    return 1;
  }

  v106 = *(v3 + OBJC_IVAR____TtC12wifip2pdCore9XPCServer_lock);
  Lock.lock()();
  v28 = [a2 processIdentifier];
  v29 = 0;
  if (*(v3 + OBJC_IVAR____TtC12wifip2pdCore9XPCServer_lastProcessID + 4))
  {
    v30 = 0;
  }

  else
  {
    v30 = 0;
    if (v28 == *(v3 + OBJC_IVAR____TtC12wifip2pdCore9XPCServer_lastProcessID))
    {
      v29 = *(v3 + OBJC_IVAR____TtC12wifip2pdCore9XPCServer_lastProcessName);
      v30 = *(v3 + OBJC_IVAR____TtC12wifip2pdCore9XPCServer_lastProcessName + 8);
    }
  }

  v103 = v30;
  v46 = *(v3 + OBJC_IVAR____TtC12wifip2pdCore9XPCServer_awdlListener);
  v47 = static NSObject.== infix(_:_:)();
  v104 = v7;
  if ((v47 & 1) == 0)
  {
    v48 = *(v3 + OBJC_IVAR____TtC12wifip2pdCore9XPCServer_nanListener);
    static NSObject.== infix(_:_:)();
  }

  NSXPCConnection.peerCodeIdentity.getter(&v118);
  v49 = v119;
  if (v119)
  {
    v102 = v118;
    v121 = v120;
    sub_100016290(&v121, &unk_100599FD0, &qword_100482530);
  }

  else
  {
    v102 = 0;
  }

  v105 = v6;
  v50 = [a2 _queue];
  Logger.init(subsystem:category:)();
  v51 = type metadata accessor for XPCSession(0);
  v52 = objc_allocWithZone(v51);
  v53 = &v52[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_requestHandler];
  *v53 = NANBitmap.Channel.operatingClass.getter;
  *(v53 + 1) = 0;
  v54 = &v52[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
  *v54 = 0;
  *(v54 + 1) = 0;
  *&v52[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_voucher] = 0;
  *&v52[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_wifiAwareEntitlementsManager] = 0;
  v55 = a2;
  UUID.init()();
  *&v52[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection] = v55;
  *&v52[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_queue] = v50;
  (*(v111 + 16))(&v52[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_logger], v16, v112);
  v56 = &v52[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_processName];
  v57 = v103;
  *v56 = v29;
  *(v56 + 1) = v57;
  v58 = &v52[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_clientBundleID];
  *v58 = v102;
  *(v58 + 1) = v49;
  v59 = &v52[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_clientPID];
  *v59 = 0;
  v59[4] = 1;
  v113.receiver = v52;
  v113.super_class = v51;
  v103 = v55;
  v102 = v50;
  v60 = objc_msgSendSuper2(&v113, "init");
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *v63 = 138412290;
    *(v63 + 4) = v60;
    *v64 = v60;
    v65 = v60;
    _os_log_impl(&_mh_execute_header, v61, v62, "%@ was created", v63, 0xCu);
    sub_100016290(v64, &qword_10058B780, &qword_100480AC0);
  }

  v66 = v105;
  v67 = v104;
  v68 = OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection;
  v69 = *&v60[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection];
  v70 = objc_opt_self();
  v71 = v69;
  v72 = [v70 wifip2pRemoteXPCInterface];
  [v71 setExportedInterface:v72];

  v73 = *&v60[v68];
  v74 = v60;
  [v73 setExportedObject:v74];
  v75 = *&v60[v68];
  v76 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v77 = v75;

  v116 = sub_10002C324;
  v117 = v76;
  aBlock._countAndFlagsBits = _NSConcreteStackBlock;
  aBlock._object = 1107296256;
  *&v115 = sub_10000C8B8;
  *(&v115 + 1) = &unk_10057B8C8;
  v78 = _Block_copy(&aBlock);

  [v77 setInvalidationHandler:v78];
  _Block_release(v78);

  (*(v111 + 8))(v16, v112);
  v79 = *&v74[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_wifiAwareEntitlementsManager];
  *&v74[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_wifiAwareEntitlementsManager] = v17;

  v80 = *(v3 + OBJC_IVAR____TtC12wifip2pdCore9XPCServer_newSessionHandler);
  if (v80)
  {
    v81 = *(v3 + OBJC_IVAR____TtC12wifip2pdCore9XPCServer_newSessionHandler + 8);

    Lock.unlock()();
    v80(v74);

    sub_100010520(v80);
    return 1;
  }

  type metadata accessor for P2PTimer();
  v82 = v109;
  variable initialization expression of AWDLPeer.lastUpdated();
  v83 = v108;
  DispatchTime.distance(to:)();
  (*(v67 + 8))(v82, v66);
  v84 = static DispatchTimeInterval.< infix(_:_:)();
  (*(v110 + 8))(v83, v107);
  v85 = v74;
  v86 = Logger.logObject.getter();
  if (!v84)
  {
    v93 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v86, v93))
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v94 = 138412290;
      *(v94 + 4) = v85;
      *v95 = v60;
      v96 = v85;
      _os_log_impl(&_mh_execute_header, v86, v93, "Rejecting XPC connection from %@ because there is no Wi-Fi", v94, 0xCu);
      sub_100016290(v95, &qword_10058B780, &qword_100480AC0);
    }

    aBlock = 0;
    v115 = 0u;
    sub_100301920(&aBlock);
    Lock.unlock()();

    return 0;
  }

  v87 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    *v88 = 138412290;
    *(v88 + 4) = v85;
    *v89 = v60;
    v90 = v85;
    _os_log_impl(&_mh_execute_header, v86, v87, "Blocking %@ while waiting for Wi-Fi to come up", v88, 0xCu);
    sub_100016290(v89, &qword_10058B780, &qword_100480AC0);
  }

  v91 = OBJC_IVAR____TtC12wifip2pdCore9XPCServer_pendingSessions;
  swift_beginAccess();
  v92 = v85;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v3 + v91) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v91) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v100 = *((*(v3 + v91) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  Lock.unlock()();

  return 1;
}

uint64_t sub_1000185C0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000185F8()
{

  return _swift_deallocObject(v0, 24, 7);
}

char *sub_1000188C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&qword_10058D348, &qword_100486950);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_1000189BC(char *a1, int64_t a2, char a3)
{
  result = sub_1000188C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

Swift::Bool __swiftcall NSXPCConnection.has(entitlement:)(Swift::String entitlement)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 valueForEntitlement:v2];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
    sub_100016290(v8, &qword_10058BA80, &qword_1004818C0);
  }

  return 0;
}

uint64_t sub_100018AB4(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void sub_100018BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a4 + OBJC_IVAR____TtC12wifip2pdCore9XPCServer_lock);
  Lock.lock()();
  v11 = objc_opt_self();
  v12 = [v11 currentConnection];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 processIdentifier];
  }

  else
  {
    v14 = 0;
  }

  v15 = a4 + OBJC_IVAR____TtC12wifip2pdCore9XPCServer_lastProcessID;
  *v15 = v14;
  *(v15 + 4) = v13 == 0;
  v16 = (a4 + OBJC_IVAR____TtC12wifip2pdCore9XPCServer_lastProcessName);
  v17 = *(a4 + OBJC_IVAR____TtC12wifip2pdCore9XPCServer_lastProcessName + 8);
  *v16 = a2;
  v16[1] = a3;

  Lock.unlock()();
  switch(a1)
  {
    case 2:
      v18 = [*(a4 + OBJC_IVAR____TtC12wifip2pdCore9XPCServer_awdlListener) endpoint];
      goto LABEL_10;
    case 1:
      v18 = [*(a4 + OBJC_IVAR____TtC12wifip2pdCore9XPCServer_nanListener) endpoint];
      goto LABEL_10;
    case 0:
      v18 = [*(a4 + OBJC_IVAR____TtC12wifip2pdCore9XPCServer_p2pListener) endpoint];
LABEL_10:
      v19 = v18;
      (*(a5 + 16))(a5);
      goto LABEL_12;
  }

  v19 = [v11 currentConnection];
  [v19 invalidate];
LABEL_12:
}

double NSXPCConnection.peerCodeIdentity.getter@<D0>(uint64_t a1@<X8>)
{
  [v1 auditToken];
  sub_100018DD0(v5, *(&v5 + 1), v6, *(&v6 + 1), &v5);
  result = *&v5;
  v4 = v6;
  *a1 = v5;
  *(a1 + 16) = v4;
  *(a1 + 32) = v7;
  return result;
}

void sub_100018DD0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *token.val = a1;
  *&token.val[2] = a2;
  *&token.val[4] = a3;
  *&token.val[6] = a4;
  v10 = SecTaskCreateWithAuditToken(0, &token);
  if (!v10)
  {
    if (qword_10058AA08 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100037644(v20, qword_10059B5B8);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v41 = v24;
      *token.val = a1;
      *v23 = 136315138;
      *&token.val[2] = a2;
      *&token.val[4] = a3;
      *&token.val[6] = a4;
      type metadata accessor for audit_token_t(0);
      v25 = String.init<A>(describing:)();
      v27 = sub_100002320(v25, v26, &v41);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v21, v22, "Failed to create SecTask from Audit Token: %s", v23, 0xCu);
      sub_100002A00(v24);
    }

    goto LABEL_21;
  }

  v11 = v10;
  v12 = SecTaskCopySigningIdentifier(v10, 0);
  if (!v12)
  {
    goto LABEL_16;
  }

  v13 = v12;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_16;
  }

  *token.val = 0;
  *&token.val[2] = 0;
  static String._conditionallyBridgeFromObjectiveC(_:result:)();

  v14 = *&token.val[2];
  if (!*&token.val[2])
  {
LABEL_16:
    if (qword_10058AA08 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100037644(v28, qword_10059B5B8);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v41 = 0;
      *token.val = v32;
      *v31 = 136315138;
      sub_10005DC58(&qword_100590FD0, &qword_100497BC8);
      v33 = String.init<A>(describing:)();
      v35 = sub_100002320(v33, v34, &token);

      *(v31 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v29, v30, "Failed to obtain code signing identifier: %s", v31, 0xCu);
      sub_100002A00(v32);
    }

LABEL_21:
    v15 = 0;
    v14 = 0;
    v19 = 0;
    v18 = 0;
    v36 = 0;
    goto LABEL_22;
  }

  v15 = *token.val;
  v16 = SecTaskCopyTeamIdentifier();
  if (v16)
  {
    v17 = v16;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      *token.val = 0;
      *&token.val[2] = 0;
      static String._conditionallyBridgeFromObjectiveC(_:result:)();

      v18 = *&token.val[2];
      if (*&token.val[2])
      {
        v19 = *token.val;
      }

      else
      {
        v19 = 0;
      }

      goto LABEL_25;
    }
  }

  v19 = 0;
  v18 = 0;
LABEL_25:
  CodeSignStatus = SecTaskGetCodeSignStatus(v11);
  if (qword_10058AA10 != -1)
  {
    swift_once();
  }

  v38 = dword_100590FB8;
  if (qword_10058AA18 != -1)
  {
    swift_once();
  }

  v39 = dword_100590FBC | v38;
  if (qword_10058AA20 != -1)
  {
    swift_once();
  }

  v40 = dword_100590FC0;

  v36 = ((v40 | v39) & CodeSignStatus) == v39;
LABEL_22:
  *a5 = v15;
  *(a5 + 8) = v14;
  *(a5 + 16) = v19;
  *(a5 + 24) = v18;
  *(a5 + 32) = v36;
}

id sub_100019228(char *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *v1;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v4[10];
  *(v10 + 24) = v4[11];
  *(v10 + 32) = *(v5 + 6);
  *(v10 + 48) = v4[14];
  *(v10 + 56) = v9;
  v11 = &a1[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_requestHandler];
  v12 = *&a1[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_requestHandler + 8];
  *v11 = sub_1000134C8;
  v11[1] = v10;

  (*(v7 + 16))(&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), &v2[*(*v2 + 232)], v6);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  (*(v7 + 32))(v14 + v13, &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  *(v14 + ((v8 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  v15 = &a1[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
  v16 = *&a1[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
  v17 = *&a1[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler + 8];
  *v15 = sub_1003876AC;
  v15[1] = v14;
  v18 = a1;
  sub_100010520(v16);
  return [*&v18[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection] activate];
}

uint64_t sub_1000194A8()
{
  v1 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000194E0()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100019648()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

id sub_100019684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v11 = v6;
  v14 = *(*(type metadata accessor for DispatchWorkItemFlags() - 8) + 64);
  __chkstk_darwin();
  if (sub_10001991C(a3) & 1) != 0 || (sub_10001991C(a4))
  {
    v29[0] = a1;
    v29[1] = a2;
    memset(&v29[2], 0, 24);
    v30 = a5;
    static DispatchWorkItemFlags.assignCurrentContext.getter();
    aBlock[4] = NANBitmap.Channel.operatingClass.getter;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000C8B8;
    aBlock[3] = a6;
    _Block_copy(aBlock);
    v15 = type metadata accessor for DispatchWorkItem();
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    swift_allocObject();
    v18 = DispatchWorkItem.init(flags:block:)();
    v19 = *&v6[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_voucher];
    *&v6[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_voucher] = v18;

    v21 = *&v6[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_requestHandler];
    v20 = *&v6[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_requestHandler + 8];

    v21(v29, v11);
  }

  else
  {
    v23 = v6;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 67109120;
      *(v26 + 4) = [*(&v23->isa + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection) processIdentifier];

      _os_log_impl(&_mh_execute_header, v24, v25, "Invalidating XPC connection to process with PID %d", v26, 8u);
    }

    else
    {

      v24 = v23;
    }

    v27 = *(&v23->isa + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection);

    return [v27 invalidate];
  }
}

uint64_t sub_10001991C(uint64_t a1)
{
  if (*&v1[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_wifiAwareEntitlementsManager])
  {
    v3 = *&v1[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection];

    LOBYTE(v3) = sub_100018634(v3, a1);

    if (v3)
    {
      return 1;
    }
  }

  v5 = v1;

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v8 = 67109634;
    *(v8 + 4) = [*&v5[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection] processIdentifier];

    *(v8 + 8) = 2080;
    v9 = Array.description.getter();
    v11 = sub_100002320(v9, v10, &v12);

    *(v8 + 10) = v11;
    *(v8 + 18) = 2080;
    *(v8 + 20) = sub_100002320(0xD00000000000001ELL, 0x80000001004B8650, &v12);
    _os_log_impl(&_mh_execute_header, v6, v7, "Process with PID %d missing capabilities (Required: %s) for entitlement: %s", v8, 0x1Cu);
    swift_arrayDestroy();
  }

  else
  {
  }

  return 0;
}

unint64_t sub_100019B10()
{
  v1 = *(*v0 + 616);
  v2 = (v0 + *(sub_10005DC58(&qword_10059A668, &qword_1004B3868) + 40) + v1);
  return *v2 | (*(v2 + 4) << 32) | (*(v2 + 5) << 40);
}

unint64_t sub_100019B9C(unint64_t a1)
{
  if (qword_10058AAC0 != -1)
  {
    v30 = a1;
    swift_once();
    a1 = v30;
  }

  v1 = *(off_100591878 + 2);
  if (!v1)
  {
    return 0;
  }

  v2 = a1 >> 40;
  v3 = (0x801004u >> (8 * BYTE4(a1))) & 0xFFC;
  for (i = off_100591878 + 32; ; i += 16)
  {
    if (v3 != (0x801004u >> (8 * i[1])))
    {
      goto LABEL_6;
    }

    v5 = i[2];
    if (BYTE5(a1) <= 3u)
    {
      break;
    }

    switch(BYTE5(a1))
    {
      case 4u:
        if (v5 == 4)
        {
          goto LABEL_28;
        }

        break;
      case 5u:
        if (v5 == 5)
        {
          goto LABEL_28;
        }

        break;
      case 6u:
        if (v5 == 6)
        {
          goto LABEL_28;
        }

        break;
      default:
        goto LABEL_22;
    }

LABEL_6:
    if (!--v1)
    {
      return 0;
    }
  }

  if (BYTE5(a1) == 2)
  {
    if (v5 == 2)
    {
      goto LABEL_28;
    }

    goto LABEL_6;
  }

  if (BYTE5(a1) == 3)
  {
    if (v5 == 3)
    {
      goto LABEL_28;
    }

    goto LABEL_6;
  }

LABEL_22:
  if ((v5 - 2) < 5 || ((v2 ^ v5)) && (((3u >> (BYTE4(a1) & 7)) & 1) != 0 || (v5 - 2) < 5u || (a1 & 0x10000000000) != 0 || (v5 & 1) == 0))
  {
    goto LABEL_6;
  }

LABEL_28:
  v6 = a1;
  v7 = *i;
  v8 = *(i + 1);
  v9 = qword_10058AAC8;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = *(off_100591880 + 2);
  if (!v10)
  {
LABEL_67:
    v26 = *(v8 + 16);
    if (v26)
    {
      v27 = 0;
      while (*(v8 + 4 * v27 + 32) != v6)
      {
        if (v26 == ++v27)
        {
          goto LABEL_71;
        }
      }

      if (v27 <= 0xF)
      {
        result = v7;
        if (v7 < 0x83)
        {
          LOBYTE(v29) = 0;
          v22 = 1 << v27;
          return result & 0xFFFFFF000000FFFFLL | (v22 << 16) | (v29 << 32);
        }

        if (v6 <= 0xFF)
        {
          LOBYTE(v29) = 0;
          LOWORD(v22) = v6;
          return result & 0xFFFFFF000000FFFFLL | (v22 << 16) | (v29 << 32);
        }

        __break(1u);
        goto LABEL_84;
      }
    }

    else
    {
LABEL_71:
    }

    return 0;
  }

  v11 = 0;
  while (1)
  {
    v12 = off_100591880 + 16 * v11 + 32;
    if (v3 != (0x801004u >> (8 * *v12)))
    {
      goto LABEL_32;
    }

    v13 = v12[1];
    v14 = *(v12 + 1);
    if (v2 > 3u)
    {
      break;
    }

    if (v2 == 2)
    {
      if (v13 == 2)
      {
        goto LABEL_52;
      }
    }

    else
    {
      if (v2 != 3)
      {
LABEL_50:
        if (v13 - 2) < 5 || ((v2 ^ v13))
        {
          goto LABEL_32;
        }

        goto LABEL_52;
      }

      if (v13 == 3)
      {
        goto LABEL_52;
      }
    }

LABEL_32:
    if (++v11 == v10)
    {
      goto LABEL_67;
    }
  }

  if (v2 != 4)
  {
    if (v2 == 5)
    {
      if (v13 == 5)
      {
        goto LABEL_52;
      }
    }

    else
    {
      if (v2 != 6)
      {
        goto LABEL_50;
      }

      if (v13 == 6)
      {
        goto LABEL_52;
      }
    }

    goto LABEL_32;
  }

  if (v13 != 4)
  {
    goto LABEL_32;
  }

LABEL_52:
  v15 = *(v14 + 16);
  if (!v15)
  {
    goto LABEL_32;
  }

  v16 = 0;
  v17 = v14 + 32;
  while (1)
  {
    v18 = v17 + 16 * v16;
    v19 = *(v18 + 8);
    v20 = *(v19 + 16);
    if (v20)
    {
      v21 = 0;
      LODWORD(v22) = *v18;
      v23 = v19 + 32;
      while (*(v23 + 4 * v21) != v6)
      {
        if (v20 == ++v21)
        {
          goto LABEL_55;
        }
      }

      if (v21 <= 7)
      {
        v24 = *(v8 + 16);
        if (v24)
        {
          v25 = 0;
          while (*(v8 + 4 * v25 + 32) != v22)
          {
            if (v24 == ++v25)
            {
              goto LABEL_55;
            }
          }

          if (v25 <= 0xF)
          {
            break;
          }
        }
      }
    }

LABEL_55:
    if (++v16 == v15)
    {
      goto LABEL_32;
    }
  }

  result = v7;
  if (v7 < 0x83)
  {
    v22 = 1 << v25;
    goto LABEL_81;
  }

  if (v22 > 0xFF)
  {
LABEL_84:
    __break(1u);
    return result;
  }

LABEL_81:
  v29 = 1 << v21;
  return result & 0xFFFFFF000000FFFFLL | (v22 << 16) | (v29 << 32);
}

uint64_t sub_100019F94()
{
  v1 = v0 + *(*v0 + 584);
  swift_beginAccess();
  return *(v1 + *(sub_10005DC58(&qword_10059A650, &qword_1004B3850) + 40));
}

uint64_t WiFiInterface.description.getter()
{
  v1 = *v0;
  v8 = _typeName(_:qualified:)();
  v2._countAndFlagsBits = 91;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  String.append(_:)(*(v0 + *(*v0 + 104)));
  v3._countAndFlagsBits = 15453;
  v3._object = 0xE200000000000000;
  String.append(_:)(v3);
  v4 = WiFiInterface.macAddress.getter();
  v5._countAndFlagsBits = WiFiAddress.description.getter(v4);
  String.append(_:)(v5);

  v6._countAndFlagsBits = 62;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  return v8;
}

uint64_t WiFiInterface.macAddress.getter()
{
  v1 = sub_10005DC58(&unk_10059B160, &qword_1004B3050);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v5 = &v11 - v4;
  v6 = *(*v0 + 128);
  swift_beginAccess();
  sub_100012400(v0 + v6, v5, &unk_10059B160, &qword_1004B3050);
  v7 = &v5[*(v2 + 48)];
  v8 = *(v7 + 2);
  v9 = *v7;
  sub_100016290(v5, &unk_10059B160, &qword_1004B3050);
  return v9 | (v8 << 16);
}

uint64_t WiFiAddress.description.getter(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 8;
  v3 = a1 >> 16;
  v4 = a1 >> 24;
  v5 = HIDWORD(a1);
  v6 = a1 >> 40;
  sub_10005DC58(&qword_100599FF0, &qword_100486D20);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1004817D0;
  *(v7 + 56) = &type metadata for UInt8;
  *(v7 + 64) = &protocol witness table for UInt8;
  *(v7 + 32) = v1;
  *(v7 + 96) = &type metadata for UInt8;
  *(v7 + 104) = &protocol witness table for UInt8;
  *(v7 + 72) = v2;
  *(v7 + 136) = &type metadata for UInt8;
  *(v7 + 144) = &protocol witness table for UInt8;
  *(v7 + 112) = v3;
  *(v7 + 176) = &type metadata for UInt8;
  *(v7 + 184) = &protocol witness table for UInt8;
  *(v7 + 152) = v4;
  *(v7 + 216) = &type metadata for UInt8;
  *(v7 + 224) = &protocol witness table for UInt8;
  *(v7 + 192) = v5;
  *(v7 + 256) = &type metadata for UInt8;
  *(v7 + 264) = &protocol witness table for UInt8;
  *(v7 + 232) = v6;

  return String.init(format:_:)();
}

uint64_t sub_10001A2A4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x64656C62616E65;
  }

  else
  {
    v4 = 0x64656C6261736964;
  }

  if (v3)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x64656C62616E65;
  }

  else
  {
    v6 = 0x64656C6261736964;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

void sub_10001A34C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(a1);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 40);
  (*(v7 + 16))(v10, v2 + v12, v6);
  v13 = *(a2 + 24);
  v14 = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v7 + 8))(v10, v6);
  if ((v14 & 1) == 0)
  {
    v15 = v3 + *(a2 + 48);
    if (*v15)
    {
      v16 = *(v15 + 8);
      (*v15)(a1);
    }

    v17 = v3 + *(a2 + 44);
    v18 = *(v17 + 8);
    (*v17)(a1);
    (*(v7 + 24))(v3 + v12, a1, v6);
    v19 = v3 + *(a2 + 56);
    if (*v19)
    {
      v20 = *(v19 + 8);
      (*v19)(a1);
    }

    sub_1002B3C50(0, a1, a2);
  }
}

uint64_t sub_10001A54C()
{
  v1 = sub_10005DC58(&unk_10059B150, &qword_1004B3070);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin();
  v4 = &v7 - v3;
  v5 = *(*v0 + 464);
  swift_beginAccess();
  sub_100012400(v0 + v5, v4, &unk_10059B150, &qword_1004B3070);
  ObservableWiFiProperty.wrappedValue.getter(v1, &v7 + 7);
  sub_100016290(v4, &unk_10059B150, &qword_1004B3070);
  return HIBYTE(v7);
}

void sub_10001A63C()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*(*v0 + 440) + 8);
  v4 = *(v2 + 432);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = type metadata accessor for Preferences();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v27 - v8;
  WiFiInterface.linkState.setter(1);
  WiFiInterface.preferences.getter();
  v10 = Preferences.nanMACAddress.getter(v5);
  (*(v6 + 8))(v9, v5);
  if ((v10 & 0x1000000000000) != 0)
  {
    static WiFiAddress.random()();
  }

  WiFiAddress.linkLocalAddress()(v11);
  WiFiInterface.macAddress.setter(v12 & 0xFFFFFFFFFFFFLL);
  sub_10005DC58(&unk_10059B0B0, &qword_100487150);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100480F40;
  v14 = WiFiInterface.macAddress.getter();
  *(v13 + 32) = WiFiAddress.ipv6LinkLocalAddress.getter(v14 & 0xFFFFFFFFFFFFLL);
  *(v13 + 40) = v15;
  *(v13 + 48) = v16;
  *(v13 + 56) = v17;
  WiFiInterface.ipv6Addresses.setter(v13);
  v18 = *(*v1 + 160);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v28 = v22;
    *v21 = 136315138;
    v23 = WiFiInterface.description.getter();
    v25 = v24;

    v26 = sub_100002320(v23, v25, &v28);

    *(v21 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v19, v20, "Updated %s", v21, 0xCu);
    sub_100002A00(v22);
  }

  else
  {
  }
}

uint64_t sub_10001A960(char a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(*(swift_getAssociatedTypeWitness() - 8) + 80);
  return sub_10001636C(a1 & 1);
}

uint64_t sub_10001A9F8(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_10001AA24(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v5 = *(*(*(a2 + 16) - 8) + 8);

  return v5(a1);
}

uint64_t getEnumTagSinglePayload for NANMasterRank(uint64_t a1, int a2)
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

uint64_t sub_10001AAB8(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = *(*(sub_10005DC58(&unk_100597330, &unk_100481FA0) - 8) + 64);
  __chkstk_darwin();
  v6 = &v11 - v5;
  result = sub_10001ADEC();
  if ((result & 1) != v3)
  {
    if (sub_10001ADEC())
    {
      type metadata accessor for P2PTimer();
      variable initialization expression of AWDLPeer.lastUpdated();
      v8 = type metadata accessor for DispatchTime();
      (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
    }

    else
    {
      v9 = type metadata accessor for DispatchTime();
      (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    }

    v10 = *(*v1 + 520);
    swift_beginAccess();
    sub_10001AEDC(v6, v2 + v10);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_10001AC1C(unsigned __int8 *a1)
{
  BYTE8(v2) = 0;
  *&v2 = *a1;
  _print_unlocked<A, B>(_:_:)();
  return *(&v2 + 1);
}

uint64_t sub_10001AC84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001ACCC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001AD14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001AD5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001ADA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001ADEC()
{
  v1 = sub_10005DC58(&unk_10059B150, &qword_1004B3070);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin();
  v4 = &v7 - v3;
  v5 = *(*v0 + 560);
  swift_beginAccess();
  sub_100012400(v0 + v5, v4, &unk_10059B150, &qword_1004B3070);
  ObservableWiFiProperty.wrappedValue.getter(v1, &v7 + 7);
  sub_100016290(v4, &unk_10059B150, &qword_1004B3070);
  return HIBYTE(v7);
}

uint64_t sub_10001AEDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005DC58(&unk_100597330, &unk_100481FA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t P2PTimer.init(deadlineAfter:on:repeating:leeway:_:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v46 = a5;
  v47 = a6;
  v49 = a4;
  v50 = a3;
  v48 = a2;
  v51 = a1;
  v7 = type metadata accessor for DispatchTime();
  v44 = *(v7 - 8);
  v45 = v7;
  v8 = *(v44 + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v43 = &v43 - v12;
  v13 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001C2F0();
  v52 = _swiftEmptyArrayStorage;
  sub_10001C2A8(&qword_10058FBF8, &type metadata accessor for OS_dispatch_source.TimerFlags);
  sub_10005DC58(&qword_10058FC00, &qword_100493520);
  sub_10000CB24(&qword_10058FC08, &qword_10058FC00, &qword_100493520);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v18 = static OS_dispatch_source.makeTimerSource(flags:queue:)();
  (*(v14 + 8))(v17, v13);
  v19 = v6;
  *(v6 + 16) = v18;
  swift_getObjectType();
  v20 = qword_10058A890;
  swift_unknownObjectRetain();
  if (v20 != -1)
  {
    swift_once();
  }

  (*(*algn_10059B518 + 8))();
  v21 = v43;
  v22 = v51;
  + infix(_:_:)();
  v23 = *(v44 + 8);
  v24 = v11;
  v25 = v45;
  v23(v24, v45);
  v26 = v50;
  OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
  swift_unknownObjectRelease();
  v23(v21, v25);
  v27 = OBJC_IVAR____TtC7CoreP2P8P2PTimer_deadlineAfter;
  v28 = type metadata accessor for DispatchTimeInterval();
  v29 = *(v28 - 8);
  v30 = *(v29 + 16);
  v30(v19 + v27, v22, v28);
  v31 = v48;
  *(v19 + OBJC_IVAR____TtC7CoreP2P8P2PTimer_targetQueue) = v48;
  v30(v19 + OBJC_IVAR____TtC7CoreP2P8P2PTimer_repeatingInterval, v26, v28);
  v32 = v49;
  v30(v19 + OBJC_IVAR____TtC7CoreP2P8P2PTimer_leeway, v49, v28);
  v33 = (v19 + OBJC_IVAR____TtC7CoreP2P8P2PTimer_handler);
  v34 = v47;
  *v33 = v46;
  v33[1] = v34;
  v35 = qword_10059B510;
  v36 = *algn_10059B518;
  v37 = v31;
  v38 = *(*algn_10059B518 + 16);
  v39 = v37;

  v38(v19, v35, v36);
  v40 = *(v19 + 16);
  swift_getObjectType();
  OS_dispatch_source.activate()();

  v41 = *(v29 + 8);
  v41(v32, v28);
  v41(v50, v28);
  v41(v51, v28);
  return v19;
}

uint64_t sub_10001B3C8(char a1)
{
  v3 = *(*v1 + 560);
  swift_beginAccess();
  v4 = sub_10005DC58(&unk_10059B150, &qword_1004B3070);
  ObservableWiFiProperty.wrappedValue.getter(v4, &v7);
  v5 = v7;
  swift_endAccess();
  v7 = a1;
  swift_beginAccess();
  ObservableWiFiProperty.wrappedValue.setter(&v7, v4);
  swift_endAccess();
  return sub_10001AAB8(v5);
}

void ObservableWiFiProperty.wrappedValue.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  os_unfair_lock_lock(*(*(v2 + 24) + 16));
  (*(*(*(a1 + 16) - 8) + 16))(a2, v2 + *(a1 + 44));
  v5 = *(*(v2 + 24) + 16);

  os_unfair_lock_unlock(v5);
}

void sub_10001B568(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  v8 = v7[8];
  __chkstk_darwin();
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v27 = &v23 - v11;
  os_unfair_lock_lock(*(*(v3 + 24) + 16));
  v12 = *(a2 + 44);
  v13 = v7[2];
  v13(v10, v3 + v12, v6);
  v14 = a1;
  v24 = *(a2 + 24);
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v25 = v7[1];
  v26 = v7 + 1;
  v25(v10, v6);
  if (a1)
  {
    os_unfair_lock_unlock(*(*(v3 + 24) + 16));
  }

  else
  {
    v13(v27, v3 + v12, v6);
    v15 = v7[3];
    v16 = v3 + *(a2 + 44);
    v23 = v14;
    v15(v16, v14, v6);
    sub_10001B930(a2);
    v17 = *(v3 + 16);
    swift_beginAccess();
    v18 = *(v17 + 16);
    type metadata accessor for UUID();
    v19 = v24;
    type metadata accessor for ObservableWiFiProperty.TokenRegistrations.WeakToken();
    sub_10001AD14(&unk_10058BB00, &type metadata accessor for UUID);
    v28 = NANBitmap.Channel.operatingClass.getter(v18);
    __chkstk_darwin();
    *(&v23 - 2) = v6;
    *(&v23 - 1) = v19;
    type metadata accessor for Dictionary.Values();
    swift_getFunctionTypeMetadata2();

    swift_getWitnessTable();
    v20 = Sequence.compactMap<A>(_:)();

    os_unfair_lock_unlock(*(*(v3 + 24) + 16));
    v28 = v20;
    __chkstk_darwin();
    *(&v23 - 4) = v6;
    *(&v23 - 3) = v19;
    v21 = v27;
    v22 = v23;
    *(&v23 - 2) = v27;
    *(&v23 - 1) = v22;
    type metadata accessor for Array();
    swift_getWitnessTable();
    Sequence.forEach(_:)();

    v25(v21, v6);
  }
}

void sub_10001B930(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = v3[8];
  __chkstk_darwin();
  v6 = &v33[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v8 = &v33[-v7];
  v9 = __chkstk_darwin();
  v11 = &v33[-v10];
  v12 = *(v9 + 52);
  v13 = v3[2];
  v13(&v33[-v10], v1, a1);
  v13(v8, v1, a1);
  v13(v6, v1, a1);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = v35;
    *v16 = 136315650;
    v17 = &v11[*(a1 + 48)];
    v34 = v15;
    v18 = *v17;
    v19 = v17[1];
    v20 = v3[1];

    v20(v11, a1);
    v21 = sub_100002320(v18, v19, &v36);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    v22 = *(v8 + 1);
    v23 = (*v8)(&v8[*(a1 + 44)]);
    v25 = v24;
    v20(v8, a1);
    v26 = sub_100002320(v23, v25, &v36);

    *(v16 + 14) = v26;
    *(v16 + 22) = 2048;
    v27 = *(v6 + 2);
    swift_beginAccess();
    v28 = *(v27 + 16);
    type metadata accessor for UUID();
    v29 = *(a1 + 16);
    v30 = *(a1 + 24);
    type metadata accessor for ObservableWiFiProperty.TokenRegistrations.WeakToken();
    sub_10001AD14(&unk_10058BB00, &type metadata accessor for UUID);

    v31 = Dictionary.count.getter();

    v20(v6, a1);
    *(v16 + 24) = v31;
    _os_log_impl(&_mh_execute_header, v14, v34, "Updated %s to %s, will notify %ld observers", v16, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v32 = v3[1];
    v32(v6, a1);

    v32(v11, a1);
    v32(v8, a1);
  }
}

uint64_t storeEnumTagSinglePayload for NANMasterRank(uint64_t result, int a2, int a3)
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

uint64_t type metadata accessor for P2PTimer()
{
  result = qword_10058FC48;
  if (!qword_10058FC48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t variable initialization expression of AWDLPeer.lastUpdated()
{
  if (qword_10058A890 != -1)
  {
    swift_once();
  }

  return (*(*algn_10059B518 + 8))();
}

uint64_t sub_10001BDD0()
{
  v1 = *(*v0 + 152);
  v2 = *(v0 + v1);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_10038067C();
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;

    sub_10000E074(v4);
  }

  sub_10000E084(v2);
  return v3;
}

uint64_t sub_10001BE48(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t WiFiInterface.linkState.setter(char a1)
{
  v3 = v1 + *(*v1 + 120);
  swift_beginAccess();
  v4 = a1 & 1;
  v15 = a1 & 1;
  v5 = sub_10005DC58(&unk_10059B0C0, &unk_1004AD460);
  v6 = *(v5 + 40);
  if (*(v3 + v6) != (a1 & 1))
  {
    v7 = v5;
    v8 = v3 + *(v5 + 48);
    v9 = *(v8 + 8);
    (*v8)(&v15);
    v10 = v3 + *(v7 + 44);
    v11 = *(v10 + 8);
    (*v10)(&v15);
    *(v3 + v6) = v4;
    v12 = v3 + *(v7 + 56);
    if (*v12)
    {
      v13 = *(v12 + 8);
      (*v12)(&v15);
    }

    sub_1002B2490(0, v4);
  }

  return swift_endAccess();
}

uint64_t sub_10001BFF4(char a1)
{
  v17 = 0u;
  v18 = 0u;
  v4 = v1[2];
  v3 = v1[3];
  KeyPath = swift_getKeyPath();

  sub_10000F344(v4, v3, &v17, KeyPath, 0x10uLL);

  v16 = 0;

  if (getifaddrs(&v16))
  {

    v6 = 0;
  }

  else
  {
    v7 = v16;
    if (v16)
    {
      do
      {
        if (!v7->ifa_name)
        {
          __break(1u);
LABEL_24:
          __break(1u);
        }

        ifa_addr = v7->ifa_addr;
        ifa_flags = v7->ifa_flags;
        v7 = v7->ifa_next;
        v12 = String.init(cString:)() == v4 && v11 == v3;
        if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          if (!ifa_addr)
          {
            goto LABEL_24;
          }

          if (ifa_addr->sa_family == 18)
          {
            goto LABEL_17;
          }
        }

        else
        {
        }
      }

      while (v7);
      LOWORD(ifa_flags) = 0;
LABEL_17:
      v8 = v16;
      v6 = ifa_flags & 0xFFBE;
    }

    else
    {
      v8 = 0;
      v6 = 0;
    }

    freeifaddrs(v8);
  }

  if (a1)
  {
    v13 = 65;
  }

  else
  {
    v13 = 0;
  }

  LOWORD(v18) = v6 | v13;
  v14 = v1[5];

  AppleDevice.send(request:data:)(1u);
}

void AppleDevice.send(request:data:)(unsigned int a1)
{
  v3 = *(v1 + 24);
  os_unfair_lock_lock(*(v3 + 16));
  v4 = *(*(v1 + 16) + 16);
  sub_10001C288(a1);
  v5 = ioctl(_:_:_:)();
  if (v5 == -1)
  {
    v5 = errno.getter();
LABEL_5:
    v6 = v5;
    sub_10000B02C();
    swift_allocError();
    *v7 = v6;
    *(v7 + 8) = 0;
    *(v7 + 16) = 0;
    swift_willThrow();
    goto LABEL_6;
  }

  if (v5)
  {
    goto LABEL_5;
  }

LABEL_6:
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_10001C288(unsigned int a1)
{
  if (a1 > 8)
  {
    return 0;
  }

  else
  {
    return qword_1004B4E88[a1];
  }
}

uint64_t sub_10001C2A8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10001C2F0()
{
  result = qword_10058FBF0;
  if (!qword_10058FBF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10058FBF0);
  }

  return result;
}

uint64_t _s8Dispatch0A4TimeV7CoreP2PE8register5timeryAD0D6PTimerC_tFZ_0(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  swift_getObjectType();
  v13 = *(a1 + OBJC_IVAR____TtC7CoreP2P8P2PTimer_handler);
  v14 = *(a1 + OBJC_IVAR____TtC7CoreP2P8P2PTimer_handler + 8);
  aBlock[4] = v13;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = &unk_100567188;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  sub_10001C560();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v15);
  (*(v3 + 8))(v6, v2);
  (*(v8 + 8))(v11, v7);
}

uint64_t sub_10001C560()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_10001C2A8(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  sub_10000CB24(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_10001C638(uint64_t a1)
{
  v3 = *(*(sub_10005DC58(&qword_1005995E8, &unk_1004B3040) - 8) + 64);
  __chkstk_darwin();
  v5 = &v8[-v4];
  v6 = *(*v1 + 592);
  swift_beginAccess();
  sub_100012400(v1 + v6, v5, &qword_1005995E8, &unk_1004B3040);
  swift_beginAccess();
  sub_10001C750(a1, v1 + v6);
  swift_endAccess();
  sub_10001C7C0(v5);
  sub_100016290(a1, &qword_1005995E8, &unk_1004B3040);
  return sub_100016290(v5, &qword_1005995E8, &unk_1004B3040);
}

uint64_t sub_10001C750(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005DC58(&qword_1005995E8, &unk_1004B3040);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001C7C0(uint64_t a1)
{
  v3 = *v1;
  v42 = type metadata accessor for DispatchWorkItemFlags();
  v45 = *(v42 - 8);
  v4 = *(v45 + 64);
  __chkstk_darwin();
  v41 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v43 = *(v6 - 8);
  v44 = v6;
  v7 = *(v43 + 64);
  __chkstk_darwin();
  v40 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *(sub_10005DC58(&qword_1005995E8, &unk_1004B3040) - 8);
  v9 = *(v38 + 64);
  __chkstk_darwin();
  v35 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v33 - v10;
  v34 = &v33 - v10;
  v37 = *(v3 + 440);
  v12 = *(v37 + 8);
  v36 = *(v3 + 432);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v17 = &v33 - v16;
  v39 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
  v18 = *(*v1 + 112);
  v19 = *(*v1 + 592);
  swift_beginAccess();
  (*(v14 + 16))(v17, v1 + v18, AssociatedTypeWitness);
  sub_100012400(a1, v11, &qword_1005995E8, &unk_1004B3040);
  v20 = v35;
  sub_100012400(v1 + v19, v35, &qword_1005995E8, &unk_1004B3040);
  v21 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v22 = *(v38 + 80);
  v23 = (v15 + v22 + v21) & ~v22;
  v24 = (v9 + v22 + v23) & ~v22;
  v25 = swift_allocObject();
  v26 = v37;
  *(v25 + 16) = v36;
  *(v25 + 24) = v26;
  (*(v14 + 32))(v25 + v21, v17, AssociatedTypeWitness);
  sub_10001CEA8(v34, v25 + v23, &qword_1005995E8, &unk_1004B3040);
  sub_10001CEA8(v20, v25 + v24, &qword_1005995E8, &unk_1004B3040);
  aBlock[4] = sub_10001CFB0;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = &unk_100579C98;
  v27 = _Block_copy(aBlock);
  v28 = v39;
  v29 = v40;
  static DispatchQoS.unspecified.getter();
  v46 = _swiftEmptyArrayStorage;
  sub_10001CF14();
  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80);
  v31 = v41;
  v30 = v42;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v27);

  (*(v45 + 8))(v31, v30);
  (*(v43 + 8))(v29, v44);
}

uint64_t sub_10001CD08()
{
  v1 = *(v0 + 16);
  v2 = *(*(v0 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = *(v4 + 64);
  v8 = *(sub_10005DC58(&qword_1005995E8, &unk_1004B3040) - 8);
  v9 = *(v8 + 80);
  v10 = (v6 + v7 + v9) & ~v9;
  v11 = *(v8 + 64);
  v12 = v5 | v9;
  v13 = (v11 + v9 + v10) & ~v9;
  (*(v4 + 8))(v0 + v6, AssociatedTypeWitness);
  v14 = type metadata accessor for UUID();
  v15 = *(*(v14 - 8) + 8);
  v15(v0 + v10, v14);
  v15(v0 + v13, v14);

  return _swift_deallocObject(v0, v13 + v11, v12 | 7);
}

uint64_t sub_10001CEA8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10005DC58(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_10001CF14()
{
  result = qword_10058BCC0;
  if (!qword_10058BCC0)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058BCC0);
  }

  return result;
}

uint64_t sub_10001CF6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  if (a7 == 5)
  {
    return sub_1000B17D8(a2, a3, a4, a5, a6);
  }

  if (a7 == 4 || a7 == 1)
  {
  }

  return result;
}

uint64_t sub_10001CFB0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v2 + 8);
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_10005DC58(&qword_1005995E8, &unk_1004B3040) - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v6 + v8) & ~v8;
  v10 = v0 + ((*(v7 + 64) + v8 + v9) & ~v8);

  return sub_10001D0E0(v0 + v5, v0 + v9, v10, v1, v2);
}

uint64_t sub_10001D0E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a3;
  v7 = *(*(sub_10005DC58(&qword_1005995F0, &qword_1004B3058) - 8) + 64);
  __chkstk_darwin();
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v27 - v10;
  v12 = *(a5 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  v28 = AssociatedTypeWitness;
  v29 = v15;
  v16 = *(v15 + 64);
  __chkstk_darwin();
  v18 = &v27 - v17;
  v19 = *(AssociatedConformanceWitness + 104);
  swift_checkMetadataState();
  v19();
  sub_100012400(a2, v11, &qword_1005995E8, &unk_1004B3040);
  v20 = sub_10005DC58(&qword_1005995E8, &unk_1004B3040);
  v21 = *(*(v20 - 8) + 56);
  v21(v11, 0, 1, v20);
  sub_100012400(v30, v9, &qword_1005995E8, &unk_1004B3040);
  v21(v9, 0, 1, v20);
  v22 = v28;
  v23 = swift_getAssociatedConformanceWitness();
  v24 = sub_1003F2DDC();
  v25 = sub_10000CADC(&qword_100599608, &qword_1005995E8, &unk_1004B3040);
  RadioResourceControls.update<A>(from:to:)(v11, v9, v22, v20, v23, &off_100576220, v24, v25);
  sub_100016290(v9, &qword_1005995F0, &qword_1004B3058);
  sub_100016290(v11, &qword_1005995F0, &qword_1004B3058);
  return (*(v29 + 8))(v18, v22);
}

void sub_10001D428(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(type metadata accessor for UUID() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  if (v11 <= v9)
  {
    v14 = *(v8 + 84);
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = v12 + v13;
  v16 = ((v12 + v13) & ~v13) + *(v10 + 64);
  if (a3 <= v14)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v14 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v14 < a2)
  {
    v18 = ~v14 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_46:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v24 = *(v8 + 56);

    v24(a1, a2);
  }

  else
  {
    v23 = *(v10 + 56);

    v23(&a1[v15] & ~v13, a2, v11);
  }
}

uint64_t sub_10001D6F4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10005DD04(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t RadioResourceControls.update<A>(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v51 = a6;
  v53 = a5;
  v54 = a8;
  v45 = a7;
  v52 = a3;
  v55 = a2;
  v10 = type metadata accessor for UUID();
  v47 = *(v10 - 8);
  v48 = v10;
  v11 = *(v47 + 64);
  __chkstk_darwin();
  v46 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v45 - v13;
  v15 = *(a4 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin();
  v49 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v50 = &v45 - v18;
  __chkstk_darwin();
  v20 = &v45 - v19;
  v21 = type metadata accessor for Optional();
  v22 = *(*(swift_getTupleTypeMetadata2() - 8) + 64);
  v23 = __chkstk_darwin();
  v25 = &v45 - v24;
  v26 = *(v23 + 56);
  v27 = *(*(v21 - 8) + 16);
  v27(&v45 - v24, a1, v21);
  v27(&v25[v26], v55, v21);
  v28 = *(v15 + 48);
  LODWORD(a1) = v28(v25, 1, a4);
  result = v28(&v25[v26], 1, a4);
  if (a1 == 1)
  {
    if (result == 1)
    {
      return result;
    }

    (*(v15 + 32))(v20, &v25[v26], a4);
    (*(v53 + 8))(v20, a4, v51, v54, v52);
    return (*(v15 + 8))(v20, a4);
  }

  v30 = *(v15 + 32);
  if (result == 1)
  {
    v30(v20, v25, a4);
    (*(v53 + 16))(v20, a4, v51, v54, v52);
    return (*(v15 + 8))(v20, a4);
  }

  v31 = v50;
  v30(v50, v25, a4);
  v32 = &v25[v26];
  v33 = v49;
  v30(v49, v32, a4);
  v34 = v31;
  v35 = v54;
  dispatch thunk of Identifiable.id.getter();
  v36 = v46;
  dispatch thunk of Identifiable.id.getter();
  LOBYTE(v31) = static UUID.== infix(_:_:)();
  v37 = *(v47 + 8);
  v38 = v36;
  v39 = v48;
  v37(v38, v48);
  v37(v14, v39);
  if (v31)
  {
    v40 = *(v45 + 8);
    if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      (*(v53 + 8))(v33, a4, v51, v35, v52);
    }
  }

  else
  {
    v41 = v52;
    v42 = v53;
    v43 = v51;
    (*(v53 + 16))(v34, a4, v51, v35, v52, v53);
    (*(v42 + 8))(v33, a4, v43, v35, v41);
  }

  v44 = *(v15 + 8);
  v44(v33, a4);
  return (v44)(v34, a4);
}

uint64_t sub_10001DC4C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v6 - 8) + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(v9 + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v8 >= v10)
        {
          v23 = *(v7 + 48);

          return v23(a1);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11, v10);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = (v13 & ~v11) + *(v9 + 64);
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

uint64_t sub_10001DE8C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 32))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 20);
  if (v3 <= 3)
  {
    v4 = 3;
  }

  else
  {
    v4 = *(a1 + 20);
  }

  v5 = v4 - 4;
  if (v3 < 3)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_10001DEE0@<X0>(uint64_t *a1@<X8>)
{
  result = os_transaction_create();
  *a1 = result;
  return result;
}

uint64_t WiFiAwarePairedDevice.keyStoreID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_10001DF80()
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v0 = *(type metadata accessor for RadioConstraint() + 36);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10001DFFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  return sub_10001DF80();
}

uint64_t sub_10001E058(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  result = 0;
  if (a1 != a5 || a2 != a6)
  {
    return result;
  }

  v10 = a7 & 0xFF00000000;
  if ((a3 & 0xFF00000000) != 0x300000000)
  {
    if (v10 == 0x300000000 || a3 != a7 || ((0x801004u >> ((a3 >> 29) & 0xF8)) & 0xFFC) != ((0x801004u >> ((a7 >> 29) & 0xF8)) & 0xFFC))
    {
      return 0;
    }

    if (BYTE5(a3) <= 3u)
    {
      if (BYTE5(a3) == 2)
      {
        if (BYTE5(a7) != 2)
        {
          return 0;
        }

        goto LABEL_5;
      }

      if (BYTE5(a3) == 3)
      {
        if (BYTE5(a7) != 3)
        {
          return 0;
        }

        goto LABEL_5;
      }
    }

    else
    {
      switch(BYTE5(a3))
      {
        case 4u:
          if (BYTE5(a7) != 4)
          {
            return 0;
          }

          goto LABEL_5;
        case 5u:
          if (BYTE5(a7) != 5)
          {
            return 0;
          }

          goto LABEL_5;
        case 6u:
          if (BYTE5(a7) != 6)
          {
            return 0;
          }

          goto LABEL_5;
      }
    }

    if (BYTE5(a7) - 2 < 5 || (((a7 >> 40) ^ (a3 >> 40)) & 1) != 0)
    {
      return 0;
    }

    goto LABEL_5;
  }

  if (v10 != 0x300000000)
  {
    return 0;
  }

LABEL_5:
  v11 = a8 & 0xFF00000000;
  if ((a4 & 0xFF00000000) == 0x300000000)
  {
    if (v11 == 0x300000000)
    {
      goto LABEL_7;
    }

    return 0;
  }

  if (v11 == 0x300000000 || a4 != a8 || ((0x801004u >> ((a4 >> 29) & 0xF8)) & 0xFFC) != ((0x801004u >> ((a8 >> 29) & 0xF8)) & 0xFFC))
  {
    return 0;
  }

  if (BYTE5(a4) <= 3u)
  {
    if (BYTE5(a4) == 2)
    {
      if (BYTE5(a8) != 2)
      {
        return 0;
      }

      goto LABEL_7;
    }

    if (BYTE5(a4) == 3)
    {
      if (BYTE5(a8) != 3)
      {
        return 0;
      }

      goto LABEL_7;
    }
  }

  else
  {
    switch(BYTE5(a4))
    {
      case 4u:
        if (BYTE5(a8) != 4)
        {
          return 0;
        }

        goto LABEL_7;
      case 5u:
        if (BYTE5(a8) != 5)
        {
          return 0;
        }

        goto LABEL_7;
      case 6u:
        if (BYTE5(a8) != 6)
        {
          return 0;
        }

        goto LABEL_7;
    }
  }

  if (BYTE5(a8) - 2 < 5 || (((a8 >> 40) ^ (a4 >> 40)) & 1) != 0)
  {
    return 0;
  }

LABEL_7:
  v12 = a8 & 0xFF000000000000;
  if ((a4 & 0xFF000000000000) == 0x4000000000000)
  {
    if (v12 != 0x4000000000000)
    {
      return 0;
    }
  }

  else if (v12 == 0x4000000000000 || ((a8 ^ a4) & 0xFF000000000000) != 0)
  {
    return 0;
  }

  v13 = HIBYTE(a8);
  if (HIBYTE(a4) == 6)
  {
    if (v13 != 6)
    {
      return 0;
    }
  }

  else if (v13 == 6 || HIBYTE(a4) != v13)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_10001E2C0(unint64_t a1, int a2, intptr_t a3)
{
  v79 = a3;
  LODWORD(v3) = a2;
  v78 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v78 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v77 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for DispatchQoS();
  v82 = *(v76 - 8);
  v8 = v82[8];
  __chkstk_darwin();
  v75 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = *(type metadata accessor for DriverEvent(0) - 8);
  v10 = *(v74 + 64);
  __chkstk_darwin();
  v73 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v57 - v11;
  __chkstk_darwin();
  v14 = &v57 - v13;
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  result = __chkstk_darwin();
  v20 = (&v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!a1)
  {
    return result;
  }

  v81 = v5;
  v21 = qword_10058AA38;

  if (v21 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v22 = static OS_dispatch_queue.p2p;
    *v20 = static OS_dispatch_queue.p2p;
    (*(v16 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v15);
    v23 = v22;
    LOBYTE(v22) = _dispatchPreconditionTest(_:)();
    result = (*(v16 + 8))(v20, v15);
    if ((v22 & 1) == 0)
    {
      __break(1u);
      return result;
    }

    v24 = sub_10001F104(v3);
    v25 = v24;
    v69 = *(a1 + 172);
    if (v24 != 3)
    {
      break;
    }

    v26 = 1;
LABEL_10:
    *v14 = v26;
    swift_storeEnumTagMultiPayload();
    sub_10001251C(v14, v12, type metadata accessor for DriverEvent);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    v29 = os_log_type_enabled(v27, v28);
    v65 = v25;
    if (v29)
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      aBlock[0] = v31;
      *v30 = 136315138;
      v32 = DriverEvent.description.getter();
      v33 = v14;
      v35 = v34;
      sub_100012468(v12, type metadata accessor for DriverEvent);
      v36 = sub_100002320(v32, v35, aBlock);
      v14 = v33;

      *(v30 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v27, v28, "%s", v30, 0xCu);
      sub_100002A00(v31);
    }

    else
    {

      sub_100012468(v12, type metadata accessor for DriverEvent);
    }

    v15 = v81;
    v20 = v82;
    os_unfair_lock_lock(*(*(a1 + 24) + 16));
    v37 = swift_allocObject();
    v80 = v37;
    *(v37 + 16) = 0;
    v38 = (v37 + 16);
    v68 = swift_allocObject();
    *(v68 + 16) = 0;
    swift_beginAccess();
    v57 = a1;
    v3 = *(a1 + 32);
    v39 = *(v3 + 64);
    v59 = v3 + 64;
    v16 = 1 << *(v3 + 32);
    v40 = -1;
    if (v16 < 64)
    {
      v40 = ~(-1 << v16);
    }

    a1 = v40 & v39;

    v67 = v38;
    swift_beginAccess();
    v41 = 0;
    v58 = (v16 + 63) >> 6;
    v63 = v10 + 7;
    v62 = v85;
    v61 = (v15 + 8);
    v60 = v20 + 1;
    v66 = v14;
    v64 = v3;
    while (a1)
    {
LABEL_21:
      v43 = __clz(__rbit64(a1));
      a1 &= a1 - 1;
      v44 = *(*(v3 + 56) + ((v41 << 9) | (8 * v43)));
      v12 = *(v44 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_eventHandler);
      if (v12)
      {
        v45 = *v67 + 1;
        if (__OFADD__(*v67, 1))
        {
          goto LABEL_28;
        }

        v82 = *(v44 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_eventHandler + 8);
        *(v80 + 16) = v45;
        v71 = *(v44 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_queue);
        v81 = v44;
        v46 = v73;
        sub_10001251C(v14, v73, type metadata accessor for DriverEvent);
        v47 = (*(v74 + 80) + 32) & ~*(v74 + 80);
        v48 = (v63 + v47) & 0xFFFFFFFFFFFFFFF8;
        v49 = (v48 + 15) & 0xFFFFFFFFFFFFFFF8;
        v50 = (v49 + 11) & 0xFFFFFFFFFFFFFFF8;
        v51 = swift_allocObject();
        v52 = v82;
        *(v51 + 16) = v12;
        *(v51 + 24) = v52;
        sub_100016DFC(v46, v51 + v47, type metadata accessor for DriverEvent);
        *(v51 + v48) = v68;
        *(v51 + v49) = v80;
        v53 = (v51 + v50);
        v54 = v69;
        *v53 = v65;
        v53[1] = v54;
        *(v51 + ((v50 + 15) & 0xFFFFFFFFFFFFFFF8)) = v79;
        v85[2] = sub_10001F9CC;
        v85[3] = v51;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        v85[0] = sub_10000C8B8;
        v85[1] = &unk_10055FD98;
        v70 = _Block_copy(aBlock);
        v72 = v12;
        sub_10001F89C(v12);
        sub_10001F89C(v12);

        v20 = v71;

        v15 = v75;
        static DispatchQoS.unspecified.getter();
        v83 = _swiftEmptyArrayStorage;
        sub_10001F8F4(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags);
        sub_10005DC58(&unk_100595270, &unk_1004AEC80);
        sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80);
        v55 = v77;
        v10 = v78;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v16 = v70;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        v3 = v64;
        _Block_release(v16);

        sub_100010520(v72);
        v56 = v55;
        v14 = v66;
        (*v61)(v56, v10);
        (*v60)(v15, v76);
      }
    }

    while (1)
    {
      v42 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      if (v42 >= v58)
      {

        os_unfair_lock_unlock(*(*(v57 + 24) + 16));
        sub_100012468(v14, type metadata accessor for DriverEvent);
      }

      a1 = *(v59 + 8 * v42);
      ++v41;
      if (a1)
      {
        v41 = v42;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
  }

  if (v24 == 2)
  {
    v26 = 0;
    goto LABEL_10;
  }

  if (v24 == 1)
  {
    IOAllowPowerChange(v69, v79);
  }
}

uint64_t sub_10001ECCC()
{
  v1 = *(type metadata accessor for DriverEvent(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 24);

  v6 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      sub_10001CF6C(*v6, *(v6 + 8), *(v6 + 16), *(v6 + 24), *(v6 + 32), *(v6 + 40), *(v6 + 41));
      break;
    case 1:
      type metadata accessor for DriverEvent.AWDL(0);
      v8 = swift_getEnumCaseMultiPayload();
      if (v8 > 6)
      {
        switch(v8)
        {
          case 7:
            sub_1000B2258(*v6, *(v6 + 8), *(v6 + 16), *(v6 + 24), *(v6 + 32));
            break;
          case 9:

            break;
          case 10:
            v36 = type metadata accessor for DispatchTimeInterval();
            v37 = *(*(v36 - 8) + 8);
            v37(v0 + v3, v36);
            v38 = type metadata accessor for AWDLIdleActivity(0);
            v37(v6 + *(v38 + 20), v36);
            break;
        }
      }

      else
      {
        switch(v8)
        {
          case 1:
            v39 = *(v6 + 16);
            v40 = *(v6 + 24);
            sub_100048C4C(*(v6 + 8));
            v41 = v6 + *(sub_10005DC58(&qword_10058C7C8, &unk_100481FE0) + 48);
            v42 = type metadata accessor for AWDLActionFrame.Header(0);
            v43 = v42[8];
            v44 = type metadata accessor for DispatchTimeInterval();
            v45 = *(*(v44 - 8) + 8);
            v45(v41 + v43, v44);
            v45(v41 + v42[9], v44);
            v46 = *(v41 + v42[16]);

            break;
          case 2:
            v47 = *(v6 + 80);

            v48 = *(v6 + 88);

            v49 = *(v6 + 96);

            v50 = *(v6 + 104);

            break;
          case 4:
            v9 = type metadata accessor for AWDLStatistics.LowLatencyStatistics.Configuration(0);
            v10 = *(v9 + 80);
            v11 = type metadata accessor for DispatchTimeInterval();
            (*(*(v11 - 8) + 8))(v6 + v10, v11);
            v12 = *(v6 + *(v9 + 144) + 8);

            v13 = (v6 + *(type metadata accessor for AWDLStatistics.LowLatencyStatistics(0) + 20));
            v14 = v13[27];

            v15 = v13[28];

            v16 = v13[29];

            v17 = v13[30];

            v18 = v13[31];

            v19 = v13[32];

            v20 = v13[33];

            v21 = v13[34];

            v22 = v13[35];

            v23 = v13[36];

            v24 = v13[37];

            v25 = v13[38];

            v26 = v13[39];

            v27 = v13[40];

            v28 = v13[41];

            v29 = v13[42];

            v30 = v13[43];

            v31 = v13[44];

            break;
        }
      }

      break;
    case 0:
      v60 = *(v6 + 360);
      v58 = *(v6 + 320);
      v59 = *(v6 + 336);
      v56 = *(v6 + 288);
      v57 = *(v6 + 304);
      v54 = *(v6 + 256);
      v55 = *(v6 + 272);
      v52 = *(v6 + 224);
      v53 = *(v6 + 240);
      sub_1000B1F88(*v6, *(v6 + 8), *(v6 + 16), *(v6 + 24), *(v6 + 32), *(v6 + 40), *(v6 + 48), *(v6 + 56), *(v6 + 64), *(v6 + 72), *(v6 + 80), *(v6 + 88), *(v6 + 96), *(v6 + 104), *(v6 + 112), *(v6 + 120), *(v6 + 128), *(v6 + 136), *(v6 + 144), *(v6 + 152), *(v6 + 160), *(v6 + 168), *(v6 + 176), *(v6 + 184), *(v6 + 192), *(v6 + 200), *(v6 + 208), *(v6 + 216), v52, *(&v52 + 1), v53, *(&v53 + 1), v54, *(&v54 + 1), v55, *(&v55 + 1), v56, *(&v56 + 1), v57, *(&v57 + 1), v58, *(&v58 + 1), v59, *(&v59 + 1), *(v6 + 352), v60, HIBYTE(v60));
      break;
  }

  v32 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
  v34 = *(v0 + v32);

  v35 = *(v0 + v33);

  return _swift_deallocObject(v0, ((((v33 + 11) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_10001F104(int a1)
{
  if (a1 == -536870272)
  {
    v1 = 2;
  }

  else
  {
    v1 = 0;
  }

  if (a1 == -536870144)
  {
    v2 = 3;
  }

  else
  {
    v2 = v1;
  }

  if (a1 == -536870288)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

uint64_t DriverEvent.description.getter()
{
  v1 = *(*(type metadata accessor for DriverEvent.AWDL(0) - 8) + 64);
  __chkstk_darwin();
  v3 = &v13[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = *(*(type metadata accessor for DriverEvent(0) - 8) + 64);
  __chkstk_darwin();
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10001F33C(v0, v6, type metadata accessor for DriverEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    return DriverEvent.shortDescription.getter();
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v10 = sub_10018541C(v6, v3, type metadata accessor for DriverEvent.AWDL);
      v11 = DriverEvent.AWDL.description.getter(v10);
      sub_1001853BC(v3, type metadata accessor for DriverEvent.AWDL);
    }

    else
    {
      v12 = v6[1];
      v14[0] = *v6;
      v14[1] = v12;
      *(&v14[1] + 10) = *(v6 + 26);
      v11 = DriverEvent.Infra.description.getter(EnumCaseMultiPayload, v8);
      sub_100185528(v14);
    }
  }

  else
  {
    memcpy(v14, v6, 0x16AuLL);
    sub_100185558(v14, v13);
    v11 = DriverEvent.NAN.description.getter();
    sub_1001854F8(v14);
    sub_1001854F8(v14);
  }

  return v11;
}

uint64_t sub_10001F33C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001F89C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10001F8AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001F8F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001F93C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001F984(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001F9CC()
{
  v1 = *(type metadata accessor for DriverEvent(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 11) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = *(v0 + v3);
  v9 = *(v0 + v4);
  v10 = *(v0 + v5);
  v11 = *(v0 + v5 + 4);
  v12 = *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_10001FA84(v6, v7, v0 + v2, v8, v9, v10, v11, v12);
}

uint64_t sub_10001FA84(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8)
{
  v27 = a8;
  v26 = a7;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v13 - 8);
  v14 = *(v29 + 64);
  __chkstk_darwin();
  v16 = &v25[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = type metadata accessor for DispatchQoS();
  v17 = *(v28 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin();
  v20 = &v25[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  a1(a3);
  if (qword_10058AA38 != -1)
  {
    swift_once();
  }

  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  v22 = v26;
  *(v21 + 32) = a6;
  *(v21 + 36) = v22;
  *(v21 + 40) = v27;
  aBlock[4] = sub_10001FDDC;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = &unk_10055FDE8;
  v23 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v30 = _swiftEmptyArrayStorage;
  sub_10001F8F4(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);
  (*(v29 + 8))(v16, v13);
  (*(v17 + 8))(v20, v28);
}

uint64_t sub_10001FDEC(uint64_t a1, uint64_t a2, int a3, io_connect_t a4, intptr_t a5)
{
  result = swift_beginAccess();
  v11 = *(a1 + 16);
  v12 = v11 + 1;
  if (__OFADD__(v11, 1))
  {
    __break(1u);
  }

  else
  {
    *(a1 + 16) = v12;
    result = swift_beginAccess();
    if (*(a2 + 16) == v12 && a3 == 2)
    {
      return IOAllowPowerChange(a4, a5);
    }
  }

  return result;
}

uint64_t sub_10001FE8C(uint64_t a1)
{
  v3 = *(v1 + 16);

  v4 = *(v1 + 24);

  return _swift_deallocObject(v1, a1, 7);
}

void sub_10001FEDC(void *a1)
{
  v505 = a1;
  v2.isa = v1->isa;
  v478 = sub_10005DC58(&unk_10059A6C0, &qword_1004AD478);
  v3 = *(*(v478 - 8) + 64);
  __chkstk_darwin();
  v479 = &v455 - v4;
  v457 = sub_10005DC58(&qword_10059A650, &qword_1004B3850);
  v5 = *(*(v457 - 8) + 64);
  __chkstk_darwin();
  v456 = &v455 - v6;
  v487 = *(v2.isa + 55);
  v7 = *(v487 + 8);
  v504 = v1;
  v8 = *(v2.isa + 54);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v502 = AssociatedTypeWitness;
  v503 = v10;
  v11 = v10[8];
  __chkstk_darwin();
  v488 = &v455 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v492 = &v455 - v13;
  __chkstk_darwin();
  v497 = &v455 - v14;
  __chkstk_darwin();
  v467 = &v455 - v15;
  __chkstk_darwin();
  v466 = &v455 - v16;
  v465 = sub_10005DC58(&qword_10059A6A0, &qword_1004B0738);
  v17 = *(*(v465 - 8) + 64);
  __chkstk_darwin();
  v464 = &v455 - v18;
  v463 = sub_10005DC58(&unk_10059A670, &qword_1004B3870);
  v19 = *(*(v463 - 8) + 64);
  __chkstk_darwin();
  v462 = &v455 - v20;
  v21 = *(*(type metadata accessor for SymmetricKeySize() - 8) + 64);
  __chkstk_darwin();
  v460 = &v455 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(*(sub_10005DC58(&unk_10059A690, &unk_1004884D0) - 8) + 64);
  __chkstk_darwin();
  v461 = &v455 - v24;
  v476 = sub_10005DC58(&unk_10059B0C0, &unk_1004AD460);
  v25 = *(*(v476 - 8) + 64);
  __chkstk_darwin();
  v477 = &v455 - v26;
  v27 = swift_getAssociatedTypeWitness();
  *&v499 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v471 = v27;
  v28 = swift_getAssociatedTypeWitness();
  v474 = *(v28 - 8);
  v475 = v28;
  v29 = *(v474 + 64);
  __chkstk_darwin();
  v472 = &v455 - v30;
  v493 = type metadata accessor for DispatchTimeInterval();
  v490 = *(v493 - 8);
  v31 = *(v490 + 64);
  __chkstk_darwin();
  v485 = (&v455 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v489 = (&v455 - v33);
  __chkstk_darwin();
  v496 = (&v455 - v34);
  v495 = type metadata accessor for DispatchTime();
  v486 = *(v495 - 8);
  v35 = *(v486 + 64);
  __chkstk_darwin();
  v483 = v36;
  v484 = &v455 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v494 = &v455 - v37;
  BeaconInformation = type metadata accessor for NANPeer.LastBeaconInformation(0);
  v459 = *(BeaconInformation - 8);
  v38 = *(v459 + 64);
  __chkstk_darwin();
  v469 = &v455 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v498 = sub_10005DC58(&unk_10059B160, &qword_1004B3050);
  v40 = *(*(v498 - 8) + 64);
  __chkstk_darwin();
  v491 = &v455 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v480 = &v455 - v42;
  v501 = type metadata accessor for NANPeer(0);
  v43 = *(*(v501 - 1) + 64);
  __chkstk_darwin();
  v458 = &v455 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v468 = &v455 - v45;
  __chkstk_darwin();
  v47 = &v455 - v46;
  __chkstk_darwin();
  v500 = (&v455 - v48);
  v49 = type metadata accessor for DriverEvent(0);
  v50 = *(*(v49 - 8) + 64);
  __chkstk_darwin();
  v481 = &v455 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v53 = &v455 - v52;
  __chkstk_darwin();
  v55 = &v455 - v54;
  v56 = type metadata accessor for DispatchPredicate();
  v57 = *(v56 - 8);
  v58 = *(v57 + 64);
  __chkstk_darwin();
  v60 = (&v455 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
  v482 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v61 = *v482;
  *v60 = *v482;
  (*(v57 + 104))(v60, enum case for DispatchPredicate.onQueue(_:), v56);
  v62 = v61;
  LOBYTE(v61) = _dispatchPreconditionTest(_:)();
  (*(v57 + 8))(v60, v56);
  if ((v61 & 1) == 0)
  {
    __break(1u);
    goto LABEL_167;
  }

  v63 = v505;
  sub_1000238F0(v505, v55, type metadata accessor for DriverEvent);
  v64 = v49;
  if (swift_getEnumCaseMultiPayload())
  {
    sub_100023A78(v55, type metadata accessor for DriverEvent);
  }

  else
  {
    memcpy(v517, v55, 0x16AuLL);
    v65 = DriverEvent.NAN.peerAttributes.getter();
    if (v66)
    {
      v67 = v65;
      v68 = v66;
      v455 = v49;
      v69 = v504;
      v70 = *(v504->isa + 57);
      swift_beginAccess();
      v71 = sub_10040CA94(v67 & 0xFFFFFFFFFFFFLL, *(&v69->isa + v70));
      swift_endAccess();
      if (!v71)
      {
        v71 = sub_1002DF098(_swiftEmptyArrayStorage);
      }

      v72 = v500;
      sub_10040CD68(v67 & 0xFFFFFFFFFFFFLL, v500);
      sub_1002E23CC(v68, v71);

      sub_10040E430(v72, v67 & 0xFFFFFFFFFFFFLL);
      sub_10040CD68(v67 & 0xFFFFFFFFFFFFLL, v47);
      v73 = &v47[*(v501 + 11)];
      v74 = *v73;
      v75 = v73[2];
      sub_100023A78(v47, type metadata accessor for NANPeer);
      if ((v75 & 1) == 0)
      {
        sub_1004119A4();
        sub_1000479A0(v74);
      }

      sub_1001854F8(v517);
      v63 = v505;
      v64 = v455;
    }

    else
    {
      sub_1001854F8(v517);
      v63 = v505;
    }
  }

  sub_1000238F0(v63, v53, type metadata accessor for DriverEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      sub_100023A78(v53, type metadata accessor for DriverEvent);
      return;
    }

    memcpy(v515, v53, 0x16AuLL);
    memcpy(v516, v53, 0x16AuLL);
    v100 = sub_100185198(v516);
    v101 = v504;
    switch(v100)
    {
      case 1:
        v278 = NANBitmap.Channel.operatingClass.getter(v516);
        v279 = *v278;
        v280 = *(v278 + 8);
        v281 = *(v101->isa + 87);
        v282 = *(&v101->isa + v281);
        *(&v101->isa + v281) = v279;
        sub_10041156C(v282);
        v283 = v101 + *(v101->isa + 88);
        *v283 = v280;
        v283[8] = 0;
        return;
      case 2:
      case 3:
      case 5:
      case 6:
      case 7:
      case 13:
      case 16:
      case 20:
      case 22:
        NANBitmap.Channel.operatingClass.getter(v516);
        sub_1001854F8(v515);
        goto LABEL_118;
      case 4:
      case 8:
      case 9:
      case 10:
      case 11:
      case 12:
      case 14:
      case 17:
        NANBitmap.Channel.operatingClass.getter(v516);
        goto LABEL_118;
      case 15:
        NANBitmap.Channel.operatingClass.getter(v516);
        sub_10040DD50();
        sub_1003AA900(v63);
        goto LABEL_119;
      case 18:
        v292 = NANBitmap.Channel.operatingClass.getter(v516);
        if (*(v292 + 56))
        {
          goto LABEL_168;
        }

        v293 = v292;
        v294 = *(v292 + 64);
        v295 = *(v292 + 72);
        LODWORD(v500) = *(v292 + 76);
        v296 = *(v292 + 77);
        v297 = *(v292 + 24);
        v502 = *(v292 + 88);
        v503 = v297;
        v298 = *(v292 + 40);
        v299 = v101;
        v300 = *(v292 + 12);
        v301 = *(v101->isa + 57);
        v302 = *(v292 + 10);
        swift_beginAccess();
        v303 = *(&v299->isa + v301);
        memcpy(v506, v515, 0x16AuLL);
        v304 = NANBitmap.Channel.operatingClass.getter(v506);
        sub_100012400(v304, v507, &unk_10059A6D0, &qword_1004B3890);
        v505 = (v302 | (v300 << 16));
        v305 = sub_10040CA94(v505, v303);
        swift_endAccess();
        v306 = v294;
        if (!v305)
        {
          v305 = sub_1002DF098(_swiftEmptyArrayStorage);
        }

        v307 = v468;
        sub_10040CD68(v505, v468);
        v308 = *(v293 + 20);
        v309 = v307 + *(v501 + 7);
        *v309 = *(v293 + 16);
        *(v309 + 4) = v308;
        type metadata accessor for P2PTimer();
        v310 = v469;
        v311 = v469 + *(BeaconInformation + 32);
        variable initialization expression of AWDLPeer.lastUpdated();
        *v310 = v295;
        *(v310 + 4) = v500;
        *(v310 + 5) = v296;
        *(v310 + 8) = v306;
        v312 = v502;
        v313 = v503;
        *(v310 + 16) = v503;
        *(v310 + 24) = v312;
        *v507 = v298;
        v314 = sub_10005DC58(&unk_100597510, &qword_100495350);
        v315 = sub_10000CADC(&qword_10059A6E0, &unk_100597510, &qword_100495350);
        v316 = Collection<>.nanIE.getter(v314, v315);
        if (v316)
        {
          sub_1002E23CC(v316, v305);
        }

        v317 = v495;
        v318 = v496;
        v319 = v489;
        v320 = v486;
        v321 = v459;
        v322 = v307 + *(v501 + 10);
        if ((*(v322 + 16) & 1) == 0 && !*(v322 + 8))
        {
          *(v322 + 12) = v313;
        }

        v323 = v501;
        v324 = *(v501 + 8);
        v325 = v468;
        sub_100016290(v468 + v324, &qword_1005954D0, &unk_1004AF470);
        sub_100423C3C(v469, v325 + v324, type metadata accessor for NANPeer.LastBeaconInformation);
        (*(v321 + 56))(v325 + v324, 0, 1, BeaconInformation);
        v326 = v494;
        variable initialization expression of AWDLPeer.lastUpdated();
        sub_1001854F8(v515);
        (*(v320 + 40))(v325 + *(v323 + 24), v326, v317);
        v327 = v505;
        sub_10040E430(v325, v505);
        v328 = v458;
        sub_10040CD68(v327, v458);
        v329 = v328 + *(v323 + 44);
        v330 = *v329;
        LOBYTE(v327) = *(v329 + 2);
        sub_100023A78(v328, type metadata accessor for NANPeer);
        if ((v327 & 1) == 0)
        {
          *v507 = v330;
          sub_10041C8AC(v507);
        }

        sub_10040ED24();
        *v319 = 8;
        v331 = enum case for DispatchTimeInterval.seconds(_:);
        v332 = v490;
        v333 = v493;
        v501 = *(v490 + 104);
        (v501)(v319, enum case for DispatchTimeInterval.seconds(_:), v493);
        v334 = v318;
        v335 = static DispatchTimeInterval.< infix(_:_:)();
        v336 = *(v332 + 8);
        v336(v319, v333);
        v336(v334, v333);
        if (!v335)
        {
          goto LABEL_168;
        }

        sub_10040E9C0(v334);
        *v319 = 3;
        (v501)(v319, v331, v333);
        v337 = static DispatchTimeInterval.< infix(_:_:)();
        v336(v319, v333);
        v336(v334, v333);
        if (!v337)
        {
          goto LABEL_168;
        }

        sub_10040CAE8();
        v338 = sub_100349DAC();

        if (!v338)
        {
          goto LABEL_168;
        }

        v339 = v502;
        v340 = v339 - (v339 & 0x7FFFF);
        if (v339 < (v339 & 0x7FFFF))
        {
          __break(1u);
        }

        else
        {
          v341 = v502 & 0x7FFFFF;
          if (v502 >= (v502 & 0x7FFFFF))
          {
            v342 = (v503 - (v503 & 0x7FFFF));
            if (v503 >= (v503 & 0x7FFFF))
            {
              v343 = v503 & 0x7FFFFF;
              if (v503 >= (v503 & 0x7FFFFF))
              {
                if (v340 == v342 || v502 - (v502 & 0x7FFFFF) == v503 - (v503 & 0x7FFFFF))
                {
                  goto LABEL_168;
                }

                *&v499 = v503 - (v503 & 0x7FFFFF);
                v501 = (v502 - (v502 & 0x7FFFFF));
                v344 = v504 + *(v504->isa + 20);
                v345 = Logger.logObject.getter();
                LODWORD(v500) = static os_log_type_t.error.getter();
                v504 = v345;
                if (os_log_type_enabled(v345, v500))
                {
                  v346 = swift_slowAlloc();
                  v498 = swift_slowAlloc();
                  *v507 = v498;
                  *v346 = 136317186;
                  v347 = WiFiAddress.description.getter(v505);
                  v349 = sub_100002320(v347, v348, v507);

                  *(v346 + 4) = v349;
                  *(v346 + 12) = 2080;
                  v350 = NANTimeSynchronizationFunction.description.getter(v503);
                  v352 = sub_100002320(v350, v351, v507);

                  *(v346 + 14) = v352;
                  *(v346 + 22) = 2080;
                  v353 = NANTimeSynchronizationFunction.description.getter(v339);
                  v355 = sub_100002320(v353, v354, v507);

                  *(v346 + 24) = v355;
                  *(v346 + 32) = 2080;
                  v356 = NANTimeSynchronizationFunction.description.getter(v342);
                  v358 = sub_100002320(v356, v357, v507);

                  *(v346 + 34) = v358;
                  *(v346 + 42) = 2080;
                  v359 = NANTimeSynchronizationFunction.description.getter(v340);
                  v361 = sub_100002320(v359, v360, v507);

                  *(v346 + 44) = v361;
                  *(v346 + 52) = 2080;
                  v362 = NANTimeSynchronizationFunction.description.getter(v499);
                  v364 = sub_100002320(v362, v363, v507);

                  *(v346 + 54) = v364;
                  *(v346 + 62) = 2080;
                  v365 = NANTimeSynchronizationFunction.description.getter(v501);
                  v367 = sub_100002320(v365, v366, v507);

                  *(v346 + 64) = v367;
                  *(v346 + 72) = 2048;
                  *(v346 + 74) = v343 >> 19;
                  *(v346 + 82) = 2048;
                  *(v346 + 84) = v341 >> 19;
                  v368 = v504;
                  _os_log_impl(&_mh_execute_header, v504, v500, "Peer %s not synced.\nTSF: %s:%s\nDW TSF: %s:%s\nDW0 TSF: %s:%s\nDW Count: %ld:%ld\n(Peer:Local)", v346, 0x5Cu);
                  swift_arrayDestroy();

LABEL_168:
                  sub_1001854F8(v515);
                  return;
                }

LABEL_167:

                goto LABEL_168;
              }

LABEL_172:
              __break(1u);
              JUMPOUT(0x100023794);
            }

LABEL_171:
            __break(1u);
            goto LABEL_172;
          }
        }

        __break(1u);
        goto LABEL_171;
      case 19:
        v369 = NANBitmap.Channel.operatingClass.getter(v516);
        v370 = *(v101->isa + 20);

        v372 = Logger.logObject.getter();
        v373 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v372, v373))
        {
          v374 = swift_slowAlloc();
          v375 = swift_slowAlloc();
          *&v506[0] = v375;
          *v374 = 136315138;
          v376 = WiFiInterface.description.getter();
          v378 = v377;

          v379 = sub_100002320(v376, v378, v506);

          *(v374 + 4) = v379;
          _os_log_impl(&_mh_execute_header, v372, v373, "Attempting to submit low latency statistics for %s", v374, 0xCu);
          sub_100002A00(v375);
        }

        else
        {
        }

        v391 = *(v369 + 35);
        *v514 = *v369;
        *&v514[15] = *(v369 + 15);
        v392 = *(v369 + 33);
        memcpy(v513, (v369 + 20), sizeof(v513));
        v394 = *(v369 + 344);
        v393 = *(v369 + 352);
        v395 = v392 | (v391 << 16);
        v396 = *(v369 + 360);
        v397 = v500;
        sub_10040CD68(v395, v500);
        LOBYTE(v391) = sub_1002E0E3C();
        sub_100023A78(v397, type metadata accessor for NANPeer);
        LODWORD(v505) = (v391 & 1) == 0;
        v398 = v371 + *(*v371 + 760);
        swift_beginAccess();
        v399 = *(v398 + 8);
        if (v399 && (*(v398 + 16) & 1) == 0)
        {
          v400 = *(v369 + 352);
          v394 = *v398;
          v396 = *(v398 + 16);
          v401 = *(v398 + 8);

          if (*(v398 + 8))
          {
            *(v398 + 16) = 1;
          }

          v393 = v399;
        }

        LODWORD(v503) = v396;
        v402 = *(v504->isa + 14);
        v403 = *(AssociatedConformanceWitness + 152);
        swift_checkMetadataState();
        v404 = v472;
        v403();
        v506[0] = *v514;
        *(v506 + 15) = *&v514[15];
        v405 = v505;
        BYTE3(v506[1]) = v505;
        memcpy(&v506[1] + 4, v513, 0x144uLL);
        *(&v506[21] + 1) = v394;
        *&v506[22] = v393;
        v406 = v503;
        BYTE8(v506[22]) = v503;
        v407 = v475;
        v408 = swift_getAssociatedConformanceWitness();
        (*(v408 + 24))(v506, v407, v408);
        (*(v474 + 8))(v404, v407);
        *v507 = *v514;
        *&v507[15] = *&v514[15];
        v508 = v405;
        memcpy(v509, v513, sizeof(v509));
        v510 = v394;
        v511 = v393;
        v512 = v406;
        sub_100423634(v507);
        return;
      case 21:
        v284 = *NANBitmap.Channel.operatingClass.getter(v516);
        v285 = v101;
        v286 = *(v101->isa + 20);
        swift_retain_n();
        v287 = Logger.logObject.getter();
        v288 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v287, v288))
        {
          v289 = swift_slowAlloc();
          *&v506[0] = swift_slowAlloc();
          *v289 = 136315394;
          if (v284)
          {
            if (v284 == 1)
            {
              v290 = 0xE500000000000000;
              v291 = 0x7A48472035;
            }

            else
            {
              v291 = 0x7A48472036;
              v290 = 0xE500000000000000;
            }
          }

          else
          {
            v290 = 0xE700000000000000;
            v291 = 0x7A484720342E32;
          }

          v445 = sub_100002320(v291, v290, v506);

          *(v289 + 4) = v445;
          *(v289 + 12) = 2080;
          v390 = v504;
          v446 = WiFiInterface.description.getter();
          v448 = v447;

          v449 = sub_100002320(v446, v448, v506);

          *(v289 + 14) = v449;
          _os_log_impl(&_mh_execute_header, v287, v288, "Attempting to update soft AP band to %s for %s", v289, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          v390 = v285;
        }

        v450 = *(&v390->isa + *(v390->isa + 100));
        swift_unownedRetainStrong();
        sub_1003F0114(v284);
        goto LABEL_119;
      default:
        v102 = NANBitmap.Channel.operatingClass.getter(v516);
        v103 = *(v102 + 4);
        v104 = *v102;
        v105 = v480;
        sub_10041127C(v480);
        v106 = v105 + *(v498 + 40);
        *v106 = v104;
        *(v106 + 4) = v103;
        sub_1004112F0(v105);
        return;
    }
  }

  v77 = v504;
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v78 = *(v504->isa + 12);
      swift_beginAccess();
      v79 = v502;
      v80 = v503;
      v81 = v497;
      v496 = *(v503 + 16);
      (v496)(v497, v77 + v78, v502);
      v82 = swift_getAssociatedConformanceWitness();
      v83 = v82[8];
      v505 = v82;
      v501 = v83;
      v84 = v83(v79);
      v86 = *(v80 + 8);
      v85 = v80 + 8;
      v500 = v86;
      (v86)(v81, v79);
      if ((v84 & 0x1000000000000) != 0)
      {
        v84 = WiFiInterface.macAddress.getter();
      }

      v87 = WiFiInterface.macAddress.getter();
      if (!static WiFiAddress.!= infix(_:_:)(v84 & 0xFFFFFFFFFFFFLL, v87 & 0xFFFFFFFFFFFFLL))
      {
        return;
      }

      v503 = v85;
      v88 = *(v77->isa + 20);
      swift_retain_n();
      v89 = Logger.logObject.getter();
      v90 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        *&v499 = swift_slowAlloc();
        v516[0] = v499;
        *v91 = 136315394;
        v92 = WiFiAddress.description.getter(v84 & 0xFFFFFFFFFFFFLL);
        v94 = sub_100002320(v92, v93, v516);

        *(v91 + 4) = v94;
        *(v91 + 12) = 2080;
        v95 = WiFiInterface.macAddress.getter();

        v96 = WiFiAddress.description.getter(v95 & 0xFFFFFFFFFFFFLL);
        v98 = v97;

        v99 = sub_100002320(v96, v98, v516);

        *(v91 + 14) = v99;
        _os_log_impl(&_mh_execute_header, v89, v90, "MAC address changed event with unexpected MAC address %s, expected %s", v91, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v143 = v492;
      v144 = v502;
      (v496)(v492, v77 + v78, v502);
      v145 = (v501)(v144, v505);
      (v500)(v143, v144);
      v146 = v491;
      WiFiInterface.$macAddress.getter(v491);
      if ((v145 & 0x1000000000000) != 0)
      {
        v151 = *(v498 + 40);
        LOBYTE(v145) = *(v146 + v151);
        v147.i32[0] = *(v146 + v151 + 1);
        v149 = vmovl_u8(v147).u64[0];
        LOBYTE(v150) = *(v146 + v151 + 5);
      }

      else
      {
        v148 = vdupq_n_s64(v145);
        v149 = vmovn_s32(vuzp1q_s32(vshlq_u64(v148, xmmword_1004817A0), vshlq_u64(v148, xmmword_100481790)));
        v150 = v145 >> 40;
        v151 = *(v498 + 40);
      }

      v152 = v146 + v151;
      *v152 = v145;
      *(v152 + 1) = vuzp1_s8(v149, v149).u32[0];
      *(v152 + 5) = v150;
      WiFiInterface.$macAddress.setter(v146);
      v153 = *(v77->isa + 59);
      v154 = *(&v77->isa + v153);
      if (v154)
      {
        v155 = *(&v77->isa + v153);

        v156 = WiFiInterface.macAddress.getter();
        (*(*v154 + 264))(v156 & 0xFFFFFFFFFFFFLL);
      }

      sub_10005DC58(&unk_10059B0B0, &qword_100487150);
      v157 = swift_allocObject();
      v499 = xmmword_100480F40;
      *(v157 + 16) = xmmword_100480F40;
      v158 = WiFiInterface.macAddress.getter();
      *(v157 + 32) = WiFiAddress.ipv6LinkLocalAddress.getter(v158 & 0xFFFFFFFFFFFFLL);
      *(v157 + 40) = v159;
      *(v157 + 48) = v160;
      *(v157 + 56) = v161;
      WiFiInterface.ipv6Addresses.setter(v157);
      v162 = *(&v77->isa + v153);
      if (v162)
      {
        v163 = swift_allocObject();
        *(v163 + 16) = v499;

        v164 = WiFiInterface.macAddress.getter();
        *(v163 + 32) = WiFiAddress.ipv6LinkLocalAddress.getter(v164 & 0xFFFFFFFFFFFFLL);
        *(v163 + 40) = v165;
        *(v163 + 48) = v166;
        *(v163 + 56) = v167;
        v168 = v163;
        v77 = v504;
        (*(*v162 + 360))(v168);
      }

      v169 = *(&v77->isa + *(v77->isa + 60));
      if (!v169)
      {
        return;
      }

      v170 = *(*v169 + 168);

      v172 = v488;
      v170(v171);
      v173 = v502;
      v174 = (v501)(v502, v505);
      (v500)(v172, v173);
      v176 = (*(*v169 + 296))(v516);
      if ((v174 & 0x1000000000000) != 0)
      {
        v181 = *(v498 + 40);
        LOBYTE(v174) = *(v175 + v181);
        v177.i32[0] = *(v175 + v181 + 1);
        v179 = vmovl_u8(v177).u64[0];
        LOBYTE(v180) = *(v175 + v181 + 5);
      }

      else
      {
        v178 = vdupq_n_s64(v174);
        v179 = vmovn_s32(vuzp1q_s32(vshlq_u64(v178, xmmword_1004817A0), vshlq_u64(v178, xmmword_100481790)));
        v180 = v174 >> 40;
        v181 = *(v498 + 40);
      }

      v234 = v175 + v181;
      *v234 = v174;
      *(v234 + 1) = vuzp1_s8(v179, v179).u32[0];
      *(v234 + 5) = v180;
      v176(v516, 0);
      v235 = swift_allocObject();
      *(v235 + 16) = v499;
      v236 = (*(*v169 + 256))();
      *(v235 + 32) = WiFiAddress.ipv6LinkLocalAddress.getter(v236 & 0xFFFFFFFFFFFFLL);
      *(v235 + 40) = v237;
      *(v235 + 48) = v238;
      *(v235 + 56) = v239;
      (*(*v169 + 360))(v235);
    }

    else
    {
      v131 = v504 + *(v504->isa + 20);
      v132 = Logger.logObject.getter();
      v133 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v132, v133))
      {
        v134 = swift_slowAlloc();
        *v134 = 0;
        _os_log_impl(&_mh_execute_header, v132, v133, "Channel list updated", v134, 2u);
      }

LABEL_118:
      sub_10040CAE8();
      sub_10033E130(v63);
    }

    goto LABEL_119;
  }

  if (EnumCaseMultiPayload == 3)
  {
    if ((*v53 & 1) == 0)
    {
      sub_10040E940(0);
    }

    return;
  }

  v107 = *v53;
  v108.isa = v504->isa;
  if (v107 > 2)
  {
    if (v107 != 3)
    {
      v455 = v64;
      if (v107 == 4)
      {
        v135 = v504 + *(v108.isa + 20);
        v136 = Logger.logObject.getter();
        v137 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v136, v137))
        {
          v138 = swift_slowAlloc();
          *v138 = 0;
          _os_log_impl(&_mh_execute_header, v136, v137, "Driver interface was powered on", v138, 2u);
        }

        *(&v77->isa + *(v77->isa + 68)) = 1;
        isa = v77->isa;
        if (*(&v77->isa + *(v77->isa + 66)) == 1 && *(&v77->isa + *(v77->isa + 67)) == 1)
        {
          v140 = v481;
          *v481 = 5;
          swift_storeEnumTagMultiPayload();
          sub_10001FEDC(v140);
          sub_100023A78(v140, type metadata accessor for DriverEvent);
          isa = v77->isa;
        }

        v141 = *(isa + 70);
        v142 = *(&v77->isa + v141);
        *(&v77->isa + v141) = 0;
        goto LABEL_119;
      }

      v226 = v504 + *(v108.isa + 20);
      v227 = Logger.logObject.getter();
      v228 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v227, v228))
      {
        v229 = swift_slowAlloc();
        *v229 = 0;
        _os_log_impl(&_mh_execute_header, v227, v228, "Driver interface was ready", v229, 2u);
      }

      *(&v77->isa + *(v77->isa + 66)) = 0;
      v230 = *(v77->isa + 70);
      v231 = *(&v77->isa + v230);
      *(&v77->isa + v230) = 0;

      v232 = WiFiInterface.linkState.getter();
      if (v232)
      {
        v233 = v477;
        WiFiInterface.$linkState.getter(v477);
        MutableDriverProperty.restore()();
        sub_100016290(v233, &unk_10059B0C0, &unk_1004AD460);
      }

      else
      {
        WiFiInterface.linkState.setter(1);
      }

      v259 = v480;
      WiFiInterface.$macAddress.getter(v480);
      MutableDriverProperty.restore()();
      sub_100016290(v259, &unk_10059B160, &qword_1004B3050);
      v260 = v479;
      WiFiInterface.$ipv6Addresses.getter(v479);
      MutableDriverProperty.restore()();
      sub_100016290(v260, &unk_10059A6C0, &qword_1004AD478);
      WiFiInterface.linkState.setter(v232 & 1);
      v261 = *(v77->isa + 59);
      v262 = *(&v77->isa + v261);
      if (v262)
      {
        v263 = (v262 + *(*v262 + 104));
        v265 = *v263;
        v264 = v263[1];
        *(&v77->isa + v261) = 0;

        sub_10040FB70();
      }

      v380 = *(v77->isa + 60);
      v381 = *(&v77->isa + v380);
      if (v381)
      {
        v382 = v77;
        v383 = *(*v381 + 208);
        v384 = (v381 + *(*v381 + 104));
        v386 = *v384;
        v385 = v384[1];

        LOBYTE(v383) = v383(v387);

        v388 = *(&v382->isa + v380);
        *(&v382->isa + v380) = 0;

        v389 = sub_10040EF90();

        (*(*v389 + 216))(v383 & 1);
      }

      v208 = v481;
      *v481 = 1;
LABEL_126:
      swift_storeEnumTagMultiPayload();
      sub_10001FEDC(v208);
      sub_100023A78(v208, type metadata accessor for DriverEvent);
      return;
    }

    v203 = v504 + *(v108.isa + 20);
    v204 = Logger.logObject.getter();
    v205 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v204, v205))
    {
      v206 = swift_slowAlloc();
      *v206 = 0;
      _os_log_impl(&_mh_execute_header, v204, v205, "Driver interface was re-created", v206, 2u);
    }

    *(&v77->isa + *(v77->isa + 67)) = 1;
    v207 = v496;
    if (*(&v77->isa + *(v77->isa + 66)) == 1 && *(&v77->isa + *(v77->isa + 68)) == 1)
    {
      v208 = v481;
      *v481 = 5;
      goto LABEL_126;
    }

    v240 = type metadata accessor for P2PTimer();
    v241 = v494;
    variable initialization expression of AWDLPeer.lastUpdated();
    *v207 = 5;
    v503 = *(v490 + 104);
    v242 = v493;
    (v503)(v207, enum case for DispatchTimeInterval.seconds(_:), v493);
    v505 = *v482;
    v243 = swift_allocObject();
    swift_weakInit();
    v244 = v486;
    v245 = v484;
    v246 = v495;
    (*(v486 + 16))(v484, v241, v495);
    v247 = (*(v244 + 80) + 40) & ~*(v244 + 80);
    v248 = swift_allocObject();
    v249 = v487;
    *(v248 + 2) = v499;
    *(v248 + 3) = v249;
    *(v248 + 4) = v243;
    (*(v244 + 32))(&v248[v247], v245, v246);
    v250 = v489;
    v251 = v503;
    (v503)(v489, enum case for DispatchTimeInterval.never(_:), v242);
    v252 = v485;
    *v485 = 100;
    v251(v252, enum case for DispatchTimeInterval.milliseconds(_:), v242);
    v253 = *(v240 + 48);
    v254 = *(v240 + 52);
    swift_allocObject();
    v255 = v505;

    v256 = P2PTimer.init(deadlineAfter:on:repeating:leeway:_:)(v496, v255, v250, v252, sub_10042348C, v248);
    (*(v244 + 8))(v494, v495);

    v257 = *(v504->isa + 70);
    v258 = *(&v504->isa + v257);
    *(&v504->isa + v257) = v256;
LABEL_119:

    return;
  }

  if (!*v53)
  {
    v182 = v504 + *(v108.isa + 20);
    v183 = Logger.logObject.getter();
    v184 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v183, v184))
    {
      v185 = swift_slowAlloc();
      *v185 = 0;
      _os_log_impl(&_mh_execute_header, v183, v184, "Watchdog reset in progress", v185, 2u);
    }

    if (*(&v77->isa + *(v77->isa + 69)))
    {
      return;
    }

    v186 = type metadata accessor for P2PTimer();
    v187 = v494;
    variable initialization expression of AWDLPeer.lastUpdated();
    *v496 = 10;
    v188 = v77;
    v502 = *(v490 + 104);
    v189 = v493;
    (v502)();
    v503 = *v482;
    v190 = swift_allocObject();
    swift_weakInit();
    v191 = v486;
    v192 = v484;
    (*(v486 + 16))(v484, v187, v495);
    v193 = (*(v191 + 80) + 40) & ~*(v191 + 80);
    v194 = swift_allocObject();
    v195 = v487;
    *(v194 + 2) = v499;
    *(v194 + 3) = v195;
    *(v194 + 4) = v190;
    (*(v191 + 32))(&v194[v193], v192, v495);
    v196 = v489;
    v197 = v502;
    (v502)(v489, enum case for DispatchTimeInterval.never(_:), v189);
    v198 = v485;
    *v485 = 100;
    v197(v198, enum case for DispatchTimeInterval.milliseconds(_:), v189);
    v199 = *(v186 + 48);
    v200 = *(v186 + 52);
    swift_allocObject();
    v201 = v503;
    v202 = sub_100423588;
LABEL_70:
    v223 = P2PTimer.init(deadlineAfter:on:repeating:leeway:_:)(v496, v201, v196, v198, v202, v194);
    v224 = *(v188->isa + 69);
    v225 = *(&v188->isa + v224);
    *(&v188->isa + v224) = v223;

    sub_10040CAE8();
    sub_10033E130(v505);

    (*(v191 + 8))(v494, v495);
    return;
  }

  if (v107 != 1)
  {
    v209 = v504 + *(v108.isa + 20);
    v210 = Logger.logObject.getter();
    v211 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v210, v211))
    {
      v212 = swift_slowAlloc();
      *v212 = 0;
      _os_log_impl(&_mh_execute_header, v210, v211, "Driver interface was removed", v212, 2u);
    }

    *(&v77->isa + *(v77->isa + 93)) = 0;
    if (*(&v77->isa + *(v77->isa + 69)))
    {
      return;
    }

    *(&v77->isa + *(v77->isa + 66)) = 1;
    *(&v77->isa + *(v77->isa + 68)) = 0;
    *(&v77->isa + *(v77->isa + 67)) = 0;
    v213 = type metadata accessor for P2PTimer();
    v214 = v494;
    variable initialization expression of AWDLPeer.lastUpdated();
    *v496 = 20;
    v188 = v77;
    v502 = *(v490 + 104);
    v215 = v493;
    (v502)();
    v503 = *v482;
    v216 = swift_allocObject();
    swift_weakInit();
    v191 = v486;
    v217 = v484;
    (*(v486 + 16))(v484, v214, v495);
    v218 = (*(v191 + 80) + 40) & ~*(v191 + 80);
    v194 = swift_allocObject();
    v219 = v487;
    *(v194 + 2) = v499;
    *(v194 + 3) = v219;
    *(v194 + 4) = v216;
    (*(v191 + 32))(&v194[v218], v217, v495);
    v196 = v489;
    v220 = v502;
    (v502)(v489, enum case for DispatchTimeInterval.never(_:), v215);
    v198 = v485;
    *v485 = 100;
    v220(v198, enum case for DispatchTimeInterval.milliseconds(_:), v215);
    v221 = *(v213 + 48);
    v222 = *(v213 + 52);
    swift_allocObject();
    v201 = v503;
    v202 = sub_1004234A4;
    goto LABEL_70;
  }

  v109 = *(&v504->isa + *(v108.isa + 69));
  v110 = *(v108.isa + 20);
  v111 = Logger.logObject.getter();
  v112 = v493;
  if (v109)
  {
    v113 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v111, v113))
    {
      v114 = swift_slowAlloc();
      *v114 = 0;
      _os_log_impl(&_mh_execute_header, v111, v113, "Watchdog reset completed", v114, 2u);
      v112 = v493;
    }

    v115 = *(v77->isa + 69);
    v116 = *(&v77->isa + v115);
    *(&v77->isa + v115) = 0;

    v117 = v496;
    sub_10040E9C0(v496);
    v119 = v489;
    v118 = v490;
    *v489 = 1;
    (*(v118 + 104))(v119, enum case for DispatchTimeInterval.seconds(_:), v112);
    v120 = static DispatchTimeInterval.< infix(_:_:)();
    v121 = *(v118 + 8);
    v121(v119, v112);
    v121(v117, v112);
    if (v120)
    {

      v122 = Logger.logObject.getter();
      v123 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v122, v123))
      {
        v124 = swift_slowAlloc();
        v125 = swift_slowAlloc();
        v516[0] = v125;
        *v124 = 136315138;
        v126 = v496;
        sub_10040E9C0(v496);
        v127 = DispatchTimeInterval.description.getter();
        v129 = v128;

        v121(v126, v493);
        v130 = sub_100002320(v127, v129, v516);

        *(v124 + 4) = v130;
        _os_log_impl(&_mh_execute_header, v122, v123, "Last watchdog occurred %s ago, skipping restore", v124, 0xCu);
        sub_100002A00(v125);
        v77 = v504;
      }

      else
      {
      }

      sub_10040E940(0);
      sub_10041CDC4(v77);
      return;
    }

    v268 = v477;
    WiFiInterface.$linkState.getter(v477);
    MutableDriverProperty.restore()();
    sub_100016290(v268, &unk_10059B0C0, &unk_1004AD460);
    v269 = *(v77->isa + 59);
    v270 = *(&v77->isa + v269);
    if (v270)
    {
      v271 = *(*v270 + 208);

      v273 = v271(v272);
      v77 = v504;
      LOBYTE(v271) = v273;

      v274 = *(&v77->isa + v269);
      if (v271)
      {
        if (v274)
        {
          v275 = *(*v274 + 216);

          v275(0);
          v77 = v504;

          v276 = *(&v77->isa + v269);
          if (v276)
          {
            v277 = *(*v276 + 216);

            v277(1);
          }
        }
      }

      else if (v274)
      {
        v409 = *(*v274 + 232);

        v409(v410);

        MutableDriverProperty.restore()();
        sub_100016290(v268, &unk_10059B0C0, &unk_1004AD460);
      }
    }

    v411 = *(v77->isa + 60);
    v412 = *(&v77->isa + v411);
    if (v412)
    {
      v413 = *(*v412 + 232);
      v414 = *(&v77->isa + v411);

      v413(v415);

      MutableDriverProperty.restore()();
      sub_100016290(v268, &unk_10059B0C0, &unk_1004AD460);
    }

    sub_100418460();
    v416 = Logger.logObject.getter();
    v417 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v416, v417))
    {
      v418 = swift_slowAlloc();
      *v418 = 0;
      _os_log_impl(&_mh_execute_header, v416, v417, "Deriving multicast management keys", v418, 2u);
    }

    static SymmetricKeySize.bits128.getter();
    v419 = v461;
    SymmetricKey.init(size:)();
    v420 = type metadata accessor for SymmetricKey();
    v421 = *(*(v420 - 8) + 56);
    v421(v419, 0, 1, v420);
    v422 = v504;
    v423 = *(v504->isa + 97);
    swift_beginAccess();
    sub_1000B1B78(v419, v422 + v423, &unk_10059A690, &unk_1004884D0);
    swift_endAccess();
    static SymmetricKeySize.bits128.getter();
    SymmetricKey.init(size:)();
    v421(v419, 0, 1, v420);
    v424 = *(v422->isa + 98);
    swift_beginAccess();
    sub_1000B1B78(v419, v422 + v424, &unk_10059A690, &unk_1004884D0);
    swift_endAccess();
    static SymmetricKeySize.bits128.getter();
    SymmetricKey.init(size:)();
    v421(v419, 0, 1, v420);
    v425 = *(v422->isa + 99);
    swift_beginAccess();
    sub_1000B1B78(v419, v422 + v425, &unk_10059A690, &unk_1004884D0);
    swift_endAccess();
    v426 = v462;
    sub_10041138C(v462);
    MutableDriverProperty.restore()();
    sub_100016290(v426, &unk_10059A670, &qword_1004B3870);
    v427 = v464;
    sub_100411400(v464);
    MutableDriverProperty.restore()();
    sub_100016290(v427, &qword_10059A6A0, &qword_1004B0738);
    v428 = *(v422->isa + 12);
    swift_beginAccess();
    v429 = v502;
    v430 = v503;
    v431 = v466;
    v501 = *(v503 + 16);
    (v501)(v466, v422 + v428, v502);
    v432 = swift_getAssociatedConformanceWitness();
    v500 = *(v432 + 56);
    v433 = (v500)(v429, v432);
    v434 = *(v430 + 8);
    v435 = v429;
    v503 = v430 + 8;
    v436 = v434;
    v434(v431, v435);
    v437 = sub_100019F94();
    v438 = v505;
    if (v433 != 2)
    {
      v440 = v437;
      if (v433)
      {
        v441 = 0x64656C62616E65;
      }

      else
      {
        v441 = 0x64656C6261736964;
      }

      if (v433)
      {
        v442 = 0xE700000000000000;
      }

      else
      {
        v442 = 0xE800000000000000;
      }

      if (v440)
      {
        v443 = 0x64656C62616E65;
      }

      else
      {
        v443 = 0x64656C6261736964;
      }

      if (v440)
      {
        v444 = 0xE700000000000000;
      }

      else
      {
        v444 = 0xE800000000000000;
      }

      if (v441 == v443 && v442 == v444)
      {

        v422 = v504;
        goto LABEL_165;
      }

      LODWORD(v499) = _stringCompareWithSmolCheck(_:_:expecting:)();

      v422 = v504;
      if (v499)
      {
        goto LABEL_165;
      }
    }

    v439 = v456;
    sub_100411208(v456);
    MutableDriverProperty.restore()();
    sub_100016290(v439, &qword_10059A650, &qword_1004B3850);
LABEL_165:
    v451 = v422 + v428;
    v452 = v467;
    v453 = v502;
    (v501)(v467, v451, v502);
    v454 = (v500)(v453, v432);
    v436(v452, v453);
    sub_10040E940(v454 & 1);
    sub_10040DD50();
    sub_1003AA900(v438);

    sub_10040CAE8();
    sub_10033E130(v438);

    sub_10041CDC4(v422);
    return;
  }

  v266 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v111, v266))
  {
    v267 = swift_slowAlloc();
    *v267 = 0;
    _os_log_impl(&_mh_execute_header, v111, v266, "Watchdog reset completed without a watchdog being in progress", v267, 2u);
  }
}

uint64_t sub_1000237F0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100023888(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000238F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100023958(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000239B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100023A18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100023A78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100023AD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100023B38(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = *(*(type metadata accessor for Logger() - 8) + 80);
  v6 = v1[4];

  sub_100023BC0(a1);
}

void sub_100023BC0(uint64_t a1)
{
  v2 = *(*(type metadata accessor for DriverEvent(0) - 8) + 64);
  __chkstk_darwin();
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = (&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = OS_dispatch_queue.awdl.unsafeMutableAddressor();
  v11 = *v10;
  *v9 = *v10;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v9, v5);
  if (v11)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_100023E94(a1);
    }

    else
    {
      sub_100027648(a1, v4, type metadata accessor for DriverEvent);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v21 = v16;
        *v15 = 136315138;
        v17 = DriverEvent.shortDescription.getter(v16);
        v19 = v18;
        sub_1000473F0(v4, type metadata accessor for DriverEvent);
        v20 = sub_100002320(v17, v19, &v21);

        *(v15 + 4) = v20;
        _os_log_impl(&_mh_execute_header, v13, v14, "Failed to dispatch event %s because the AWDLInterface was deallocated before the event was received from the driver", v15, 0xCu);
        sub_100002A00(v16);
      }

      else
      {

        sub_1000473F0(v4, type metadata accessor for DriverEvent);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100023E94(uint64_t a1)
{
  *&v434 = a1;
  v418 = 0;
  v2 = *v1;
  v407 = sub_10005DC58(&unk_10059A6C0, &qword_1004AD478);
  v3 = *(*(v407 - 8) + 64);
  __chkstk_darwin();
  v406 = &v394 - v4;
  v421 = sub_10005DC58(&unk_10059B160, &qword_1004B3050);
  v5 = *(*(v421 - 8) + 64);
  __chkstk_darwin();
  v422 = &v394 - v6;
  v403 = sub_10005DC58(&unk_10059B0C0, &unk_1004AD460);
  v7 = *(*(v403 - 8) + 64);
  __chkstk_darwin();
  v402 = &v394 - v8;
  v9 = *(*(sub_10005DC58(&unk_10059B090, &unk_1004B1830) - 8) + 64);
  __chkstk_darwin();
  v432 = &v394 - v10;
  v11 = type metadata accessor for AWDLPeer(0);
  v399 = *(v11 - 8);
  v400 = v11;
  v12 = *(v399 + 64);
  __chkstk_darwin();
  v396 = (&v394 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v416 = type metadata accessor for DispatchTimeInterval();
  v412 = *(v416 - 8);
  v14 = *(v412 + 64);
  __chkstk_darwin();
  v411 = (&v394 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v410 = &v394 - v16;
  __chkstk_darwin();
  v417 = (&v394 - v17);
  v18 = *(*(sub_10005DC58(&unk_100597330, &unk_100481FA0) - 8) + 64);
  __chkstk_darwin();
  v404 = &v394 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v398 = &v394 - v20;
  v419 = type metadata accessor for DispatchTime();
  v414 = *(v419 - 8);
  v21 = *(v414 + 64);
  __chkstk_darwin();
  v409 = &v394 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v415 = &v394 - v23;
  v408 = v24;
  __chkstk_darwin();
  v397 = &v394 - v25;
  v26 = *(*(type metadata accessor for AWDLStatistics.LowLatencyStatistics(0) - 8) + 64);
  __chkstk_darwin();
  v405 = (&v394 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v420 = *(v2 + 440);
  v28 = *(v420 + 8);
  v433 = v1;
  v29 = *(v2 + 432);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v32 = swift_getAssociatedTypeWitness();
  v430 = *(v32 - 8);
  v431 = v32;
  v33 = *(v430 + 64);
  __chkstk_darwin();
  v413 = &v394 - v34;
  v35 = *(*(type metadata accessor for AWDLIdleActivity(0) - 8) + 64);
  __chkstk_darwin();
  v429 = (&v394 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v424 = v28;
  v427 = v29;
  v37 = swift_getAssociatedTypeWitness();
  v38 = *(v37 - 8);
  v425 = v37;
  v426 = v38;
  v39 = *(v38 + 64);
  __chkstk_darwin();
  v423 = (&v394 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v428 = &v394 - v41;
  __chkstk_darwin();
  v43 = &v394 - v42;
  __chkstk_darwin();
  v45 = &v394 - v44;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v46 = type metadata accessor for Preferences();
  v395 = *(v46 - 8);
  v47 = *(v395 + 64);
  __chkstk_darwin();
  v49 = &v394 - v48;
  v50 = *(*(type metadata accessor for AWDLActionFrame.Header(0) - 8) + 64);
  __chkstk_darwin();
  v52 = (&v394 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  v53 = type metadata accessor for DriverEvent(0);
  v54 = *(*(v53 - 8) + 64);
  __chkstk_darwin();
  v401 = (&v394 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v57 = &v394 - v56;
  sub_100027648(v434, &v394 - v56, type metadata accessor for DriverEvent);
  *&v434 = v53;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v411 = v49;
    v422 = v43;
    v423 = v52;
    v421 = v45;
    v63 = v428;
    v64 = v429;
    v66 = v431;
    v65 = v432;
    *&v434 = AssociatedTypeWitness;
    v424 = AssociatedConformanceWitness;
    v67 = v430;
    if (EnumCaseMultiPayload == 1)
    {
      type metadata accessor for DriverEvent.AWDL(0);
      v68 = v67;
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          v298 = *(v57 + 1);
          v299 = *(v57 + 2);
          v300 = *(v57 + 3);
          v301 = sub_10005DC58(&qword_10058C7C8, &unk_100481FE0);
          v302 = v423;
          sub_10003DFE0(&v57[*(v301 + 48)], v423, type metadata accessor for AWDLActionFrame.Header);
          if ((v298 & 0xC0000000) == 0x40000000)
          {
            sub_10003E048(v298 & 0xFFFFFFFF00FF01FFLL, v299, v300, v302);
          }

          sub_100048C4C(v298);
          v77 = type metadata accessor for AWDLActionFrame.Header;
          v78 = v302;
          goto LABEL_12;
        case 2u:
          v262 = *(v57 + 5);
          *&v441[16] = *(v57 + 4);
          v442 = v262;
          v443 = *(v57 + 6);
          v263 = *(v57 + 1);
          v438 = *v57;
          v439 = v263;
          v264 = *(v57 + 3);
          v440 = *(v57 + 2);
          *v441 = v264;
          v265 = *(*v433 + 112);
          v266 = *(v424 + 152);
          swift_checkMetadataState();
          v267 = v413;
          v266();
          v268 = swift_getAssociatedConformanceWitness();
          (*(v268 + 104))(&v438, v66, v268);
          sub_100187110(&v438);
          goto LABEL_86;
        case 3u:
          v269 = *(v57 + 3);
          v440 = *(v57 + 2);
          *v441 = v269;
          *&v441[10] = *(v57 + 58);
          v270 = *(v57 + 1);
          v438 = *v57;
          v439 = v270;
          v271 = *(*v433 + 112);
          v272 = *(v424 + 152);
          swift_checkMetadataState();
          v267 = v413;
          v272();
          v273 = swift_getAssociatedConformanceWitness();
          (*(v273 + 112))(&v438, v66, v273);
LABEL_86:
          (*(v67 + 8))(v267, v66);
          return;
        case 4u:
          v232 = v405;
          sub_10003DFE0(v57, v405, type metadata accessor for AWDLStatistics.LowLatencyStatistics);
          v233 = v433;
          v234 = *v433;
          v235 = *(v433 + *(*v433 + 528));
          *(v232 + 96) = v235;
          v236 = *(v232 + 104);
          v237 = __OFSUB__(v236, v235);
          v238 = v236 - v235;
          if (v237)
          {
            goto LABEL_161;
          }

          *(v232 + 104) = v238;
          v239 = type metadata accessor for AWDLStatistics.LowLatencyStatistics.Configuration(0);
          v240 = v239;
          *(v232 + *(v239 + 160)) = v235;
          v241 = *(v233 + *(v234 + 536));
          v242 = v419;
          v243 = v414;
          if (v241 == 2)
          {
            v244 = v233 + *(v234 + 160);
            v245 = Logger.logObject.getter();
            v246 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v245, v246))
            {
              v247 = swift_slowAlloc();
              *v247 = 0;
              _os_log_impl(&_mh_execute_header, v245, v246, "Cannot set same SSID for low latency statistics, same SSID value is unknown", v247, 2u);
            }
          }

          else
          {
            *(v232 + *(v239 + 148)) = v241 & 1;
          }

          v343 = *(*v233 + 544);
          swift_beginAccess();
          v344 = v233 + v343;
          v345 = v398;
          sub_100012400(v344, v398, &unk_100597330, &unk_100481FA0);
          v346 = (*(v243 + 48))(v345, 1, v242);
          v347 = v397;
          if (v346 == 1)
          {
            sub_100016290(v345, &unk_100597330, &unk_100481FA0);
            v348 = v233 + *(*v233 + 160);
            v349 = Logger.logObject.getter();
            v350 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v349, v350))
            {
              v351 = swift_slowAlloc();
              *v351 = 0;
              _os_log_impl(&_mh_execute_header, v349, v350, "Cannot set session duration for low latency statistics, session start time is unknown", v351, 2u);
            }
          }

          else
          {
            (*(v243 + 32))(v397, v345, v242);
            type metadata accessor for P2PTimer();
            v432 = v240;
            v352 = v242;
            v353 = v415;
            variable initialization expression of AWDLPeer.lastUpdated();
            v354 = v417;
            DispatchTime.distance(to:)();
            v355 = *(v243 + 8);
            v355(v353, v352);
            v355(v347, v352);
            (*(v412 + 40))(v405 + *(v432 + 20), v354, v416);
          }

          v356 = v413;
          v357 = *(*v233 + 112);
          v358 = *(v424 + 152);
          swift_checkMetadataState();
          v358();
          v359 = swift_getAssociatedConformanceWitness();
          v64 = v405;
          (*(v359 + 96))(v405, v66, v359);
          (*(v67 + 8))(v356, v66);
          v159 = type metadata accessor for AWDLStatistics.LowLatencyStatistics;
          goto LABEL_121;
        case 5u:
          v303 = *v57;
          v304 = v57[1];
          sub_10005DC58(qword_10058C850, &unk_100486F10);
          inited = swift_initStackObject();
          *(inited + 32) = 0xD000000000000018;
          *(inited + 40) = 0x80000001004C2FC0;
          *(inited + 16) = xmmword_100483520;
          *(inited + 48) = v303;
          *(inited + 72) = &type metadata for UInt8;
          *(inited + 80) = 0xD00000000000001BLL;
          *(inited + 88) = 0x80000001004C2FE0;
          *(inited + 120) = &type metadata for UInt8;
          *(inited + 96) = v304;
          v306 = sub_1000827F8(inited);
          swift_setDeallocating();
          sub_10005DC58(&qword_10058BB40, &unk_100480E70);
          swift_arrayDestroy();
          *&v438 = sub_100030D3C();
          __chkstk_darwin();
          v307 = v427;
          v308 = v420;
          *(&v394 - 2) = v427;
          *(&v394 - 1) = v308;
          type metadata accessor for AWDLInterface.StateMonitoringClient();
          type metadata accessor for Dictionary.Values();

          swift_getWitnessTable();
          *&v438 = Sequence.filter(_:)();
          __chkstk_darwin();
          *(&v394 - 4) = v307;
          *(&v394 - 3) = v308;
          *(&v394 - 2) = v306;
          type metadata accessor for Array();
          swift_getWitnessTable();
          Sequence.forEach(_:)();

          return;
        case 6u:
          LODWORD(v432) = *v57;
          *&v434 = *(v57 + 1);
          v311 = *(v57 + 4);
          *&v438 = sub_100030D3C();
          __chkstk_darwin();
          v312 = v427;
          v313 = v420;
          *(&v394 - 2) = v427;
          *(&v394 - 1) = v313;
          type metadata accessor for AWDLInterface.StateMonitoringClient();
          type metadata accessor for Dictionary.Values();

          swift_getWitnessTable();
          *&v438 = Sequence.filter(_:)();
          __chkstk_darwin();
          *(&v394 - 4) = v312;
          *(&v394 - 3) = v313;
          *(&v394 - 16) = v432;
          *(&v394 - 4) = v311;
          *(&v394 - 3) = v434;
          type metadata accessor for Array();
          swift_getWitnessTable();
          Sequence.forEach(_:)();

          return;
        case 7u:
          LOBYTE(v440) = v57[32];
          v274 = *(v57 + 1);
          v438 = *v57;
          v439 = v274;
          v275 = v433;
          v276 = v426;
          if ((v440 & 1) == 0)
          {
            goto LABEL_90;
          }

          v277 = *(v57 + 3);
          v278 = *(v57 + 1);

          v279 = v411;
          WiFiInterface.preferences.getter();
          v280 = Preferences.reportSoftErrorsWithTTR.getter(v46);
          (*(v395 + 8))(v279, v46);
          if (v280)
          {
LABEL_90:
            v281 = *(*v275 + 96);
            swift_beginAccess();
            v282 = v275 + v281;
            v283 = v421;
            v284 = v425;
            (*(v276 + 16))(v421, v282, v425);
            v285 = swift_getAssociatedConformanceWitness();
            v286 = v418;
            (*(v285 + 144))(&v438, v284, v285);
            if (v286)
            {
              (*(v276 + 8))(v283, v284);
              v287 = *(*v275 + 160);
              sub_100476D28(&v438, v435);
              swift_errorRetain();
              v288 = Logger.logObject.getter();
              v289 = static os_log_type_t.error.getter();
              sub_1000B0D98(&v438);

              if (os_log_type_enabled(v288, v289))
              {
                v290 = swift_slowAlloc();
                v291 = swift_slowAlloc();
                v292 = swift_slowAlloc();
                v435[0] = v292;
                *v290 = 136315394;
                v293 = AWDLSoftErrorReport.description.getter();
                v295 = v294;
                sub_1000B0D98(&v438);
                v296 = sub_100002320(v293, v295, v435);

                *(v290 + 4) = v296;
                *(v290 + 12) = 2112;
                swift_errorRetain();
                v297 = _swift_stdlib_bridgeErrorToNSError();
                *(v290 + 14) = v297;
                *v291 = v297;
                _os_log_impl(&_mh_execute_header, v288, v289, "Failed while sending a soft error report: %s because: %@", v290, 0x16u);
                sub_100016290(v291, &qword_10058B780, &qword_100480AC0);

                sub_100002A00(v292);
              }

              else
              {

                sub_1000B0D98(&v438);
              }
            }

            else
            {
              (*(v276 + 8))(v283, v284);
              v384 = *(*v275 + 160);
              sub_100476D28(&v438, v435);
              v385 = Logger.logObject.getter();
              v386 = static os_log_type_t.default.getter();
              sub_1000B0D98(&v438);
              if (os_log_type_enabled(v385, v386))
              {
                v387 = swift_slowAlloc();
                v388 = swift_slowAlloc();
                v435[0] = v388;
                *v387 = 136315138;
                v389 = AWDLSoftErrorReport.description.getter();
                v391 = v390;
                sub_1000B0D98(&v438);
                v392 = sub_100002320(v389, v391, v435);

                *(v387 + 4) = v392;
                _os_log_impl(&_mh_execute_header, v385, v386, "Successfully reported soft error: %s", v387, 0xCu);
                sub_100002A00(v388);
              }

              else
              {

                sub_1000B0D98(&v438);
              }
            }

            return;
          }

          sub_1000B0D98(&v438);
          v393 = v275 + *(*v275 + 160);
          v103 = Logger.logObject.getter();
          LOBYTE(v340) = static os_log_type_t.info.getter();
          if (!os_log_type_enabled(v103, v340))
          {
            goto LABEL_154;
          }

          v341 = swift_slowAlloc();
          *v341 = 0;
          v342 = "Tap to radar disabled, skipping reporting";
          goto LABEL_153;
        case 8u:
          v314 = *(v57 + 2);
          v315 = *(*v433 + 448);
          v316 = *v57;
          swift_beginAccess();
          sub_10004B66C(v316 | (v314 << 16), v65);
          swift_endAccess();
          if ((*(v399 + 48))(v65, 1, v400) == 1)
          {
            sub_100016290(v65, &unk_10059B090, &unk_1004B1830);
            return;
          }

          v64 = v396;
          sub_10003DFE0(v65, v396, type metadata accessor for AWDLPeer);
          sub_10004B9FC(v64);
          v159 = type metadata accessor for AWDLPeer;
          goto LABEL_121;
        case 9u:
          v432 = *v57;
          v256 = *(*v433 + 112);
          v257 = *(v424 + 152);
          v258 = v57[8];
          swift_checkMetadataState();
          v259 = v413;
          v257();
          v260 = swift_getAssociatedConformanceWitness();
          v261 = v432;
          (*(v260 + 88))(v432, v258, v66, v260);

          (*(v68 + 8))(v259, v66);
          return;
        case 0xAu:
          sub_10003DFE0(v57, v64, type metadata accessor for AWDLIdleActivity);
          sub_1004582B8(v64);
          v159 = type metadata accessor for AWDLIdleActivity;
          goto LABEL_121;
        case 0xBu:
          v220 = v433;
          if ((*(v433 + *(*v433 + 768)) & 1) == 0)
          {
            v221 = *(*v433 + 96);
            swift_beginAccess();
            v222 = v426;
            v223 = v220 + v221;
            v224 = v63;
            v225 = v425;
            (*(v426 + 16))(v63, v223, v425);
            v226 = swift_getAssociatedConformanceWitness();
            v227 = (*(v226 + 32))(v225, v226);
            (*(v222 + 8))(v224, v225);
            sub_100450EC0(v227 & 1);
            v228 = sub_10044D224(0);
            if (v228)
            {
              v229 = v228;
              v435[0] = sub_100030D3C();
              __chkstk_darwin();
              v230 = v427;
              v231 = v420;
              *(&v394 - 2) = v427;
              *(&v394 - 1) = v231;
              type metadata accessor for AWDLInterface.StateMonitoringClient();
              type metadata accessor for Dictionary.Values();

              swift_getWitnessTable();
              v435[0] = Sequence.filter(_:)();
              __chkstk_darwin();
              *(&v394 - 4) = v230;
              *(&v394 - 3) = v231;
              *(&v394 - 2) = v229;
              type metadata accessor for Array();
              swift_getWitnessTable();
              Sequence.forEach(_:)();
            }
          }

          return;
        case 0xCu:
          v248 = v433;
          v249 = *(*v433 + 96);
          swift_beginAccess();
          v250 = v426;
          v251 = v248 + v249;
          v252 = v63;
          v253 = v425;
          (*(v426 + 16))(v63, v251, v425);
          v254 = swift_getAssociatedConformanceWitness();
          v255 = (*(v254 + 56))(v253, v254);
          (*(v250 + 8))(v252, v253);
          sub_100030B20(v255);
          return;
        case 0xDu:
          *&v438 = sub_100030D3C();
          __chkstk_darwin();
          v309 = v427;
          v310 = v420;
          *(&v394 - 2) = v427;
          *(&v394 - 1) = v310;
          type metadata accessor for AWDLInterface.StateMonitoringClient();
          type metadata accessor for Dictionary.Values();

          swift_getWitnessTable();
          *&v438 = Sequence.filter(_:)();
          __chkstk_darwin();
          *(&v394 - 2) = v309;
          *(&v394 - 1) = v310;
          type metadata accessor for Array();
          swift_getWitnessTable();
          Sequence.forEach(_:)();

          return;
        case 0xEu:
          v205 = v433;
          v206 = *(*v433 + 752);
          swift_beginAccess();
          v207 = *(v205 + v206);
          v208 = 1 << *(v207 + 32);
          v209 = -1;
          if (v208 < 64)
          {
            v209 = ~(-1 << v208);
          }

          v210 = v209 & *(v207 + 56);
          v211 = (v208 + 63) >> 6;
          swift_bridgeObjectRetain_n();
          i = 0;
          v213 = v418;
          if (v210)
          {
            goto LABEL_67;
          }

          break;
        default:
          v69 = *v57;
          v70 = v433;
          v71 = v433 + *(*v433 + 160);
          v72 = Logger.logObject.getter();
          v73 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v72, v73))
          {
            v74 = swift_slowAlloc();
            *v74 = 67109120;
            *(v74 + 4) = v69;
            _os_log_impl(&_mh_execute_header, v72, v73, "Realtime mode updated %{BOOL}d", v74, 8u);
          }

          v75 = *(*v70 + 488);
          v76 = *(v70 + v75);
          *(v70 + v75) = v69;
          sub_10044DFD4(v76);
          return;
      }

      while (1)
      {
        v214 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_160;
        }

        if (v214 >= v211)
        {
          break;
        }

        v210 = *(v207 + 56 + 8 * v214);
        ++i;
        if (v210)
        {
          for (i = v214; ; v214 = i)
          {
            v215 = __clz(__rbit64(v210));
            v210 &= v210 - 1;
            v216 = *(v207 + 48) + 24 * (v215 | (v214 << 6));
            v217 = *v216;
            v218 = *(v216 + 8);
            v219 = *(v216 + 16);
            LOBYTE(v216) = *(v216 + 17);
            *&v438 = v217;
            *(&v438 + 1) = v218;
            LOBYTE(v439) = v219;
            BYTE1(v439) = v216;

            sub_100458124(&v438, v205);

            if (!v210)
            {
              break;
            }

LABEL_67:
            ;
          }
        }
      }

      v437 = _swiftEmptyArrayStorage;
      v317 = *(*v205 + 760);
      swift_beginAccess();
      v318 = *(v205 + v317);

      v320 = sub_100474558(v319, &v437);

      v321 = *(v205 + v317);
      *(v205 + v317) = v320;

      v322 = v437;
      if (*(v437 + 2))
      {
        v323 = *(*v205 + 96);
        swift_beginAccess();
        v324 = v425;
        v325 = v426;
        v326 = v422;
        (*(v426 + 16))(v422, v205 + v323, v425);
        *&v438 = 0;
        *(&v438 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(55);
        v327._countAndFlagsBits = 0xD000000000000035;
        v327._object = 0x80000001004C3000;
        String.append(_:)(v327);
        v328 = *(v322 + 2);
        v329 = _swiftEmptyArrayStorage;
        *&v434 = v322;
        if (v328)
        {
          v436 = _swiftEmptyArrayStorage;
          sub_1000C0464(0, v328, 0);
          v329 = v436;
          v330 = (v322 + 49);
          do
          {
            v331 = *(v330 - 17);
            v332 = *(v330 - 9);
            v333 = *(v330 - 1) | (*v330 << 8);

            v334 = DNSRecords.Identifier.description.getter(v331, v332, v333);
            v336 = v335;

            v436 = v329;
            v338 = v329[2];
            v337 = v329[3];
            if (v338 >= v337 >> 1)
            {
              sub_1000C0464((v337 > 1), v338 + 1, 1);
              v329 = v436;
            }

            v330 += 24;
            v329[2] = v338 + 1;
            v339 = &v329[2 * v338];
            v339[4] = v334;
            v339[5] = v336;
            --v328;
          }

          while (v328);
          v324 = v425;
          v325 = v426;
          v326 = v422;
        }

        v436 = v329;
        sub_10005DC58(&qword_10058CBE0, &qword_100482CF0);
        sub_10000CADC(&qword_10059A6F0, &qword_10058CBE0, &qword_100482CF0);
        v379 = BidirectionalCollection<>.joined(separator:)();
        v381 = v380;

        v382._countAndFlagsBits = v379;
        v382._object = v381;
        String.append(_:)(v382);

        v383 = swift_getAssociatedConformanceWitness();
        v439 = 0uLL;
        LOBYTE(v440) = 0;
        (*(v383 + 144))(&v438, v324, v383);
        if (v213)
        {

          (*(v325 + 8))(v326, v324);
        }

        else
        {
          (*(v325 + 8))(v326, v324);
        }
      }

      return;
    }

    v77 = type metadata accessor for DriverEvent;
    v78 = v57;
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload > 4)
  {
    v79 = v433;
    if (EnumCaseMultiPayload == 5)
    {
      v80 = *(*v433 + 96);
      swift_beginAccess();
      v81 = v425;
      v82 = v426;
      v83 = v423;
      (*(v426 + 16))(v423, &v79[v80], v425);
      v84 = swift_getAssociatedConformanceWitness();
      v85 = (*(v84 + 64))(v81, v84);
      (*(v82 + 8))(v83, v81);
      if ((v85 & 0x1000000000000) != 0)
      {
        v85 = WiFiInterface.macAddress.getter();
      }

      v86 = WiFiInterface.macAddress.getter();
      if (static WiFiAddress.!= infix(_:_:)(v85 & 0xFFFFFFFFFFFFLL, v86 & 0xFFFFFFFFFFFFLL))
      {
        v87 = *(*v79 + 160);
        swift_retain_n();
        v88 = Logger.logObject.getter();
        v89 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v88, v89))
        {
          v90 = swift_slowAlloc();
          v435[0] = swift_slowAlloc();
          *v90 = 136315394;
          v91 = WiFiAddress.description.getter(v85 & 0xFFFFFFFFFFFFLL);
          v93 = sub_100002320(v91, v92, v435);

          *(v90 + 4) = v93;
          *(v90 + 12) = 2080;
          v94 = WiFiInterface.macAddress.getter();

          v95 = WiFiAddress.description.getter(v94 & 0xFFFFFFFFFFFFLL);
          v97 = v96;

          v98 = sub_100002320(v95, v97, v435);

          *(v90 + 14) = v98;
          _os_log_impl(&_mh_execute_header, v88, v89, "MAC address changed event with unexpected MAC address %s, expected %s", v90, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        v116 = v422;
        WiFiInterface.$macAddress.getter(v422);
        v117 = v116 + *(v421 + 40);
        *v117 = v85;
        *(v117 + 2) = BYTE2(v85);
        *(v117 + 3) = BYTE3(v85);
        *(v117 + 4) = BYTE4(v85);
        *(v117 + 5) = BYTE5(v85);
        WiFiInterface.$macAddress.setter(v116);
        sub_10005DC58(&unk_10059B0B0, &qword_100487150);
        v118 = swift_allocObject();
        v434 = xmmword_100480F40;
        *(v118 + 16) = xmmword_100480F40;
        v119 = WiFiInterface.macAddress.getter();
        *(v118 + 32) = WiFiAddress.ipv6LinkLocalAddress.getter(v119 & 0xFFFFFFFFFFFFLL);
        *(v118 + 40) = v120;
        *(v118 + 48) = v121;
        *(v118 + 56) = v122;
        WiFiInterface.ipv6Addresses.setter(v118);
        v123 = *(*v79 + 624);
        v124 = *&v79[v123];
        if (v124)
        {
          v125 = *&v79[v123];

          v126 = WiFiInterface.macAddress.getter();
          (*(*v124 + 264))(v126 & 0xFFFFFFFFFFFFLL);

          v127 = *&v79[v123];
          if (v127)
          {
            v128 = swift_allocObject();
            *(v128 + 16) = v434;

            v129 = WiFiInterface.macAddress.getter();
            *(v128 + 32) = WiFiAddress.ipv6LinkLocalAddress.getter(v129 & 0xFFFFFFFFFFFFLL);
            *(v128 + 40) = v130;
            *(v128 + 48) = v131;
            *(v128 + 56) = v132;
            (*(*v127 + 360))(v128);
          }
        }
      }
    }

    return;
  }

  v59 = v433;
  if (EnumCaseMultiPayload == 3)
  {
    if (*v57)
    {
      *(v433 + *(*v433 + 512)) = 1;
      v60 = *(v59 + *(*v59 + 736));
      swift_unownedRetainStrong();
      v61 = sub_10001A54C();

      v62 = v61 & 1;
    }

    else
    {
      sub_10004D020();
      sub_100375F6C();

      *(v59 + *(*v59 + 512)) = 0;
      v62 = 0;
    }

    WiFiInterface.linkState.setter(v62);
    return;
  }

  v99 = *v57;
  v100 = *v433;
  if (v99 > 2)
  {
    if (v99 != 3)
    {
      if (v99 != 4)
      {
        v164 = *(v100 + 160);
        v165 = Logger.logObject.getter();
        v166 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v165, v166))
        {
          v167 = swift_slowAlloc();
          *v167 = 0;
          _os_log_impl(&_mh_execute_header, v165, v166, "Driver interface was ready", v167, 2u);
        }

        v168 = *(*v59 + 704);
        v169 = *(v59 + v168);
        *(v59 + v168) = 0;

        v170 = WiFiInterface.linkState.getter();
        if (v170)
        {
          v171 = v402;
          WiFiInterface.$linkState.getter(v402);
          MutableDriverProperty.restore()();
          sub_100016290(v171, &unk_10059B0C0, &unk_1004AD460);
        }

        else
        {
          WiFiInterface.linkState.setter(1);
        }

        v189 = v422;
        WiFiInterface.$macAddress.getter(v422);
        MutableDriverProperty.restore()();
        sub_100016290(v189, &unk_10059B160, &qword_1004B3050);
        v190 = v406;
        WiFiInterface.$ipv6Addresses.getter(v406);
        MutableDriverProperty.restore()();
        sub_100016290(v190, &unk_10059A6C0, &qword_1004AD478);
        WiFiInterface.linkState.setter(v170 & 1);
        v191 = *(*v59 + 624);
        v192 = *(v59 + v191);
        if (v192)
        {
          v193 = (v192 + *(*v192 + 104));
          v195 = *v193;
          v194 = v193[1];
          *(v59 + v191) = 0;

          v196 = v418;
          sub_10045291C();
          if (v196)
          {

            swift_errorRetain();
            v197 = Logger.logObject.getter();
            v198 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v197, v198))
            {
              v199 = swift_slowAlloc();
              v200 = swift_slowAlloc();
              *&v434 = v164;
              v201 = v200;
              v202 = swift_slowAlloc();
              *&v438 = v202;
              *v199 = 136315394;
              v203 = sub_100002320(v195, v194, &v438);

              *(v199 + 4) = v203;
              *(v199 + 12) = 2112;
              swift_errorRetain();
              v204 = _swift_stdlib_bridgeErrorToNSError();
              *(v199 + 14) = v204;
              *v201 = v204;
              _os_log_impl(&_mh_execute_header, v197, v198, "Failed to recover the low latency interface %s: %@", v199, 0x16u);
              sub_100016290(v201, &qword_10058B780, &qword_100480AC0);

              sub_100002A00(v202);
            }

            else
            {
            }

            v196 = 0;
          }

          else
          {
          }
        }

        else
        {
          v196 = v418;
        }

        sub_10004D020();
        sub_100374938();

        if (*(v59 + *(*v59 + 768)) == 1)
        {
          sub_10044B904();
          if (v196)
          {
            swift_errorRetain();
            v360 = Logger.logObject.getter();
            v361 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v360, v361))
            {
              v362 = swift_slowAlloc();
              v363 = swift_slowAlloc();
              *v362 = 138412290;
              swift_errorRetain();
              v364 = _swift_stdlib_bridgeErrorToNSError();
              *(v362 + 4) = v364;
              *v363 = v364;
              _os_log_impl(&_mh_execute_header, v360, v361, "Failed to suspend AWDL after interface recovery: %@", v362, 0xCu);
              sub_100016290(v363, &qword_10058B780, &qword_100480AC0);
            }

            else
            {
            }
          }
        }

        v365 = *(*v59 + 552);
        swift_beginAccess();
        v366 = *(v59 + v365);
        v367 = 1 << *(v366 + 32);
        v368 = -1;
        if (v367 < 64)
        {
          v368 = ~(-1 << v367);
        }

        v369 = v368 & *(v366 + 56);
        v370 = (v367 + 63) >> 6;
        swift_bridgeObjectRetain_n();
        v371 = 0;
        while (v369)
        {
          v372 = v371;
LABEL_137:
          v373 = __clz(__rbit64(v369));
          v369 &= v369 - 1;
          v435[0] = *(*(v366 + 48) + ((v372 << 9) | (8 * v373)));
          sub_10045B758(v435, v59);
        }

        while (1)
        {
          v372 = v371 + 1;
          if (__OFADD__(v371, 1))
          {
            break;
          }

          if (v372 >= v370)
          {

            v374 = *(*v59 + 152);
            swift_beginAccess();
            type metadata accessor for WiFiInterface.NeighborDiscoveryTable();
            WiFiInterface.NeighborDiscoveryTable.clearAllPeerPresence()();
            swift_endAccess();
            if (v375)
            {
              v376 = Logger.logObject.getter();
              v377 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v376, v377))
              {
                v378 = swift_slowAlloc();
                *v378 = 0;
                _os_log_impl(&_mh_execute_header, v376, v377, "Failed to clear all previous peer presence after interface recovery", v378, 2u);
              }
            }

            else
            {
              sub_10045B94C(sub_10045B91C, 0);
            }

            sub_10045BBA0();
            *(v59 + *(*v59 + 664)) = 0;
            return;
          }

          v369 = *(v366 + 56 + 8 * v372);
          ++v371;
          if (v369)
          {
            v371 = v372;
            goto LABEL_137;
          }
        }

        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
        JUMPOUT(0x100027510);
      }

      v109 = v433 + *(v100 + 160);
      v110 = Logger.logObject.getter();
      v111 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v110, v111))
      {
        v112 = swift_slowAlloc();
        *v112 = 0;
        _os_log_impl(&_mh_execute_header, v110, v111, "Driver interface was powered on", v112, 2u);
      }

      *(v59 + *(*v59 + 680)) = 1;
      v113 = *v59;
      if (*(v59 + *(*v59 + 664)) == 1 && *(v59 + *(*v59 + 672)) == 1)
      {
        v114 = v401;
        *v401 = 5;
        swift_storeEnumTagMultiPayload();
        sub_100023E94(v114);
        sub_1000473F0(v114, type metadata accessor for DriverEvent);
        v113 = *v59;
      }

      v108 = *(v113 + 704);
LABEL_36:
      v115 = *(v59 + v108);
      *(v59 + v108) = 0;

      return;
    }

    v155 = v433 + *(v100 + 160);
    v156 = Logger.logObject.getter();
    v157 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v156, v157))
    {
      v158 = swift_slowAlloc();
      *v158 = 0;
      _os_log_impl(&_mh_execute_header, v156, v157, "Driver interface was re-created", v158, 2u);
    }

    *(v59 + *(*v59 + 672)) = 1;
    if (*(v59 + *(*v59 + 664)) != 1 || *(v59 + *(*v59 + 680)) != 1)
    {
      v172 = type metadata accessor for P2PTimer();
      v173 = v415;
      variable initialization expression of AWDLPeer.lastUpdated();
      *v417 = 700;
      v432 = *(v412 + 104);
      (v432)();
      *&v434 = *OS_dispatch_queue.awdl.unsafeMutableAddressor();
      v174 = swift_allocObject();
      v431 = v174;
      swift_weakInit();
      v175 = v414;
      v176 = v409;
      v177 = v419;
      (*(v414 + 16))(v409, v173, v419);
      v178 = (*(v175 + 80) + 40) & ~*(v175 + 80);
      v179 = swift_allocObject();
      v180 = v420;
      *(v179 + 2) = v427;
      *(v179 + 3) = v180;
      *(v179 + 4) = v174;
      (*(v175 + 32))(&v179[v178], v176, v177);
      v181 = v410;
      v182 = v416;
      v183 = v432;
      (v432)(v410, enum case for DispatchTimeInterval.never(_:), v416);
      v184 = v411;
      *v411 = 100;
      (v183)(v184, enum case for DispatchTimeInterval.milliseconds(_:), v182);
      v185 = *(v172 + 48);
      v186 = *(v172 + 52);
      swift_allocObject();
      v187 = v434;

      v153 = P2PTimer.init(deadlineAfter:on:repeating:leeway:_:)(v417, v187, v181, v184, sub_100476958, v179);
      (*(v175 + 8))(v415, v419);

      v154 = *(*v59 + 704);
      goto LABEL_58;
    }

    v64 = v401;
    *v401 = 5;
    swift_storeEnumTagMultiPayload();
    sub_100023E94(v64);
    v159 = type metadata accessor for DriverEvent;
LABEL_121:
    v77 = v159;
    v78 = v64;
LABEL_12:
    sub_1000473F0(v78, v77);
    return;
  }

  if (!*v57)
  {
    v133 = v433 + *(v100 + 160);
    v134 = Logger.logObject.getter();
    v135 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v134, v135))
    {
      v136 = swift_slowAlloc();
      *v136 = 0;
      _os_log_impl(&_mh_execute_header, v134, v135, "Watchdog reset in progress", v136, 2u);
    }

    if (*(v59 + *(*v59 + 688)))
    {
      return;
    }

    v137 = type metadata accessor for P2PTimer();
    v138 = v415;
    variable initialization expression of AWDLPeer.lastUpdated();
    *v417 = 10;
    v432 = *(v412 + 104);
    (v432)();
    *&v434 = *OS_dispatch_queue.awdl.unsafeMutableAddressor();
    v139 = swift_allocObject();
    v431 = v139;
    swift_weakInit();
    v140 = v414;
    v141 = v409;
    v142 = v419;
    (*(v414 + 16))(v409, v138, v419);
    v143 = (*(v140 + 80) + 40) & ~*(v140 + 80);
    v144 = swift_allocObject();
    v145 = v420;
    *(v144 + 2) = v427;
    *(v144 + 3) = v145;
    *(v144 + 4) = v139;
    (*(v140 + 32))(&v144[v143], v141, v142);
    v146 = v410;
    v147 = v416;
    v148 = v432;
    (v432)(v410, enum case for DispatchTimeInterval.never(_:), v416);
    v149 = v411;
    *v411 = 100;
    (v148)(v149, enum case for DispatchTimeInterval.milliseconds(_:), v147);
    v150 = *(v137 + 48);
    v151 = *(v137 + 52);
    swift_allocObject();
    v152 = v434;

    v153 = P2PTimer.init(deadlineAfter:on:repeating:leeway:_:)(v417, v152, v146, v149, sub_100476A3C, v144);
    (*(v140 + 8))(v415, v419);

    v154 = *(*v59 + 688);
LABEL_58:
    v188 = *(v59 + v154);
    *(v59 + v154) = v153;

    return;
  }

  if (v99 != 1)
  {
    v160 = v433 + *(v100 + 160);
    v161 = Logger.logObject.getter();
    v162 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v161, v162))
    {
      v163 = swift_slowAlloc();
      *v163 = 0;
      _os_log_impl(&_mh_execute_header, v161, v162, "Driver interface was removed", v163, 2u);
    }

    *(v59 + *(*v59 + 664)) = 1;
    *(v59 + *(*v59 + 680)) = 0;
    *(v59 + *(*v59 + 672)) = 0;
    return;
  }

  v101 = *(v433 + *(v100 + 688));
  v102 = v433 + *(v100 + 160);
  v103 = Logger.logObject.getter();
  if (v101)
  {
    v104 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      *v105 = 0;
      _os_log_impl(&_mh_execute_header, v103, v104, "Watchdog reset completed", v105, 2u);
    }

    type metadata accessor for P2PTimer();
    v106 = v404;
    variable initialization expression of AWDLPeer.lastUpdated();
    (*(v414 + 56))(v106, 0, 1, v419);
    v107 = *(*v59 + 696);
    swift_beginAccess();
    sub_1000B1B78(v106, v59 + v107, &unk_100597330, &unk_100481FA0);
    swift_endAccess();
    v108 = *(*v59 + 688);
    goto LABEL_36;
  }

  v340 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v103, v340))
  {
    v341 = swift_slowAlloc();
    *v341 = 0;
    v342 = "Watchdog reset completed without a watchdog being in progress";
LABEL_153:
    _os_log_impl(&_mh_execute_header, v103, v340, v342, v341, 2u);
  }

LABEL_154:
}

uint64_t sub_10002754C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000275E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100027648(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

char *sub_100027BF8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    sub_10005DC58(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  v17 = 8 * v10;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[v17])
    {
      memmove(v15, v16, v17);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, v17);
  }

  return v12;
}

char *sub_100027CF0(char *a1, int64_t a2, char a3)
{
  result = sub_10030E5C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_100027D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2 >= 1 && ((*(a7 + 56))(a6, a7) & 1) != 0)
  {
    (*(a7 + 32))(8, a6, a7);
    __chkstk_darwin();
    (*(a7 + 24))(0, 2, sub_10002D4F0);
  }

  if (a3 > 0 || (result = (*(a7 + 56))(a6, a7), a2 >= 1) && (result & 1) == 0)
  {
    __chkstk_darwin();
    result = (*(a7 + 24))(1, 2, sub_1003F0E4C);
  }

  if ((a4 & 0xFF00000000) != 0x300000000)
  {
    v14 = TimeBitmap.all.unsafeMutableAddressor();
    v15 = *v14;
    v16 = v14[1];
    v17 = v14[2];
    if ((a4 & 0xFE00000000) != 0)
    {
      result = RadioSchedule.reserve(_:with:)(v15, v16, v17, 9, a6, a7);
    }

    else
    {
      result = RadioSchedule.set(_:to:with:)(v15, v16, v17, a4 & 0xFF01FFFFFFFFLL, 1, 9, a6, a7);
    }
  }

  if (HIBYTE(a5) == 6 || a5 >> 57 == 0 || BYTE6(a5) == 0 || BYTE6(a5) == 4)
  {
    v21 = 3;
  }

  else
  {
    v21 = 2;
  }

  v22 = a5 & 0xFF00000000;
  if ((a5 & 0xFF00000000) == 0)
  {
    result = (*(a7 + 32))(1, a6, a7);
    LOBYTE(a5) = result;
    if (BYTE6(a5) == 4)
    {
      return result;
    }

LABEL_28:
    if (BYTE6(a5) <= 1u)
    {
      if (!BYTE6(a5))
      {
        v23 = *TimeBitmap.Slot.OO.unsafeMutableAddressor();
        v24 = TimeBitmap.Slot.FF.unsafeMutableAddressor();
        v25 = static TimeBitmap.repeatingPerDW(_:_:_:_:)(v23, v23, v23, *v24);
        return RadioSchedule.set(_:to:with:)(v25, v26, v27, v21, 2, a5, a6, a7);
      }

      v35 = *TimeBitmap.Slot.OO.unsafeMutableAddressor();
      v36 = *TimeBitmap.Slot.FF.unsafeMutableAddressor();
      v37 = v35;
      v38 = v35;
LABEL_40:
      v25 = static TimeBitmap.repeatingPerDW(_:_:_:_:)(v37, v38, v36, v36);
      return RadioSchedule.set(_:to:with:)(v25, v26, v27, v21, 2, a5, a6, a7);
    }

    if (BYTE6(a5) == 2)
    {
      if (((*(a7 + 56))(a6, a7) & 1) == 0)
      {
        v40 = *TimeBitmap.Slot.OO.unsafeMutableAddressor();
        v41 = *TimeBitmap.Slot.OF.unsafeMutableAddressor();
        v36 = *TimeBitmap.Slot.FF.unsafeMutableAddressor();
        v37 = v40;
        v38 = v41;
        goto LABEL_40;
      }

      if (v22)
      {
        v28 = TimeBitmap.Slot.FF.unsafeMutableAddressor();
        v29 = *v28;
        v30 = TimeBitmap.Slot.OO.unsafeMutableAddressor();
        v31 = *v28;
        v32 = *v30;
        v33 = v29;
        v34 = *v28;
      }

      else
      {
        v44 = *TimeBitmap.Slot.OO.unsafeMutableAddressor();
        v32 = *TimeBitmap.Slot.FF.unsafeMutableAddressor();
        v33 = v44;
        v31 = v32;
        v34 = v32;
      }

      v25 = static TimeBitmap.repeatingPerDW(_:_:_:_:)(v33, v32, v31, v34);
    }

    else
    {
      if (((*(a7 + 56))(a6, a7) & 1) == 0)
      {
        v42 = TimeBitmap.primaryDiscoveryWindow.unsafeMutableAddressor();
        v45 = *v42;
        v46 = v42[2];
        v43 = TimeBitmap.secondaryDiscoveryWindow.unsafeMutableAddressor();
        TimeBitmap.SlotsView.formUnion(_:)(*v43, v43[1], v43[2]);
        v25 = TimeBitmap.inverted()(v45, *(&v45 + 1), v46);
        return RadioSchedule.set(_:to:with:)(v25, v26, v27, v21, 2, a5, a6, a7);
      }

      if (v22)
      {
        v39 = TimeBitmap.secondaryDiscoveryWindow.unsafeMutableAddressor();
      }

      else
      {
        v39 = TimeBitmap.primaryDiscoveryWindow.unsafeMutableAddressor();
      }

      v25 = TimeBitmap.inverted()(*v39, v39[1], v39[2]);
    }

    LOBYTE(a5) = 1;
    return RadioSchedule.set(_:to:with:)(v25, v26, v27, v21, 2, a5, a6, a7);
  }

  LOBYTE(a5) = 1;
  if (BYTE6(a5) != 4)
  {
    goto LABEL_28;
  }

  return result;
}

uint64_t DispatchTimeInterval.description.getter()
{
  v0 = type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy();
  v30 = *(v0 - 8);
  v31 = v0;
  v1 = *(v30 + 64);
  __chkstk_darwin(v0);
  v3 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy();
  v28 = *(v4 - 8);
  v29 = v4;
  v5 = *(v28 + 64);
  __chkstk_darwin(v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Duration.UnitsFormatStyle.UnitWidth();
  v8 = *(v25 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v25);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Duration.UnitsFormatStyle();
  v13 = *(v12 - 8);
  v26 = v12;
  v27 = v13;
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100028EF8();
  v24[1] = 1000000000 * v17;
  v24[2] = (v17 >> 63) & 0xFFFFFFFFC4653600;
  v24[0] = (v17 * 0x3B9ACA00uLL) >> 64;
  sub_10005DC58(&qword_10058FEE0, &unk_100493990);
  v18 = *(type metadata accessor for Duration.UnitsFormatStyle.Unit() - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1004938F0;
  static Duration.UnitsFormatStyle.Unit.days.getter();
  static Duration.UnitsFormatStyle.Unit.hours.getter();
  static Duration.UnitsFormatStyle.Unit.minutes.getter();
  static Duration.UnitsFormatStyle.Unit.seconds.getter();
  static Duration.UnitsFormatStyle.Unit.milliseconds.getter();
  static Duration.UnitsFormatStyle.Unit.microseconds.getter();
  static Duration.UnitsFormatStyle.Unit.nanoseconds.getter();
  sub_100029108(v21);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  static Duration.UnitsFormatStyle.UnitWidth.wide.getter();
  static Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.hide.getter();
  static Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.hide.getter();
  static FormatStyle<>.units(allowed:width:maximumUnitCount:zeroValueUnits:valueLength:fractionalPart:)();

  (*(v30 + 8))(v3, v31);
  (*(v28 + 8))(v7, v29);
  (*(v8 + 8))(v11, v25);
  sub_100029568(&qword_10058FEE8, &type metadata accessor for Duration.UnitsFormatStyle);
  v22 = v26;
  Duration.formatted<A>(_:)();
  (*(v27 + 8))(v16, v22);
  return v32;
}

uint64_t sub_100028650(uint64_t result, unint64_t a2, uint64_t (*a3)(void))
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      goto LABEL_12;
    }

    v5 = *(result + 16);
    v4 = *(result + 24);
    v6 = __OFSUB__(v4, v5);
    v7 = v4 - v5;
    if (!v6)
    {
      if (v7 != 2)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    __break(1u);
  }

  else
  {
    if (!v3)
    {
      if (BYTE6(a2) != 2)
      {
        goto LABEL_12;
      }

LABEL_11:
      v8 = a3();
      v9 = 0;
      v10 = v8;
      return v10 | (v9 << 16);
    }

    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result == 2)
      {
        goto LABEL_11;
      }

LABEL_12:
      v10 = 0;
      v9 = 1;
      return v10 | (v9 << 16);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100028704(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_8;
    }

    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 >= 2)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 >= 2)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_10000B02C();
      swift_allocError();
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 2;
      return swift_willThrow();
    }

    goto LABEL_25;
  }

  if (BYTE6(a2) < 2uLL)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (v2 == 2)
  {
LABEL_18:
    v14 = *(a1 + 16);
    v15 = __DataStorage._bytes.getter();
    if (!v15)
    {
      __DataStorage._length.getter();
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v16 = v15;
    v17 = __DataStorage._offset.getter();
    if (!__OFSUB__(v14, v17))
    {
      v13 = (v14 - v17 + v16);
      __DataStorage._length.getter();
      if (v13)
      {
        goto LABEL_21;
      }

      goto LABEL_30;
    }

    goto LABEL_27;
  }

  if (v2 != 1)
  {
    v18 = a1 >> 8;
    return a1 | (v18 << 8);
  }

  v9 = a1;
  if (a1 > a1 >> 32)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  v10 = __DataStorage._bytes.getter();
  if (v10)
  {
    v11 = v10;
    v12 = __DataStorage._offset.getter();
    if (__OFSUB__(v9, v12))
    {
      goto LABEL_28;
    }

    v13 = (v9 - v12 + v11);
    a1 = __DataStorage._length.getter();
    if (v13)
    {
LABEL_21:
      LODWORD(a1) = *v13;
      LODWORD(v18) = a1 >> 8;
      return a1 | (v18 << 8);
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_31:
  result = __DataStorage._length.getter();
  __break(1u);
  return result;
}

void sub_1000288C0(int a1)
{
  v2 = v1;
  v63 = a1;
  v61 = sub_10005DC58(&qword_1005995E8, &unk_1004B3040);
  v3 = *(*(v61 - 8) + 64);
  __chkstk_darwin();
  v62 = &v54 - v4;
  v5 = type metadata accessor for DispatchTimeInterval();
  v59 = *(v5 - 8);
  v60 = v5;
  v6 = *(v59 + 64);
  __chkstk_darwin();
  v58 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(sub_10005DC58(&unk_100597330, &unk_100481FA0) - 8) + 64);
  __chkstk_darwin();
  v10 = &v54 - v9;
  v11 = type metadata accessor for DispatchTime();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v54 - v16;
  __chkstk_darwin();
  v19 = &v54 - v18;
  v20 = *(*v2 + 520);
  swift_beginAccess();
  sub_100012400(v2 + v20, v10, &unk_100597330, &unk_100481FA0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100016290(v10, &unk_100597330, &unk_100481FA0);
LABEL_7:
    v34 = v2 + *(*v2 + 160);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 16777472;
      v37[4] = v63;
      _os_log_impl(&_mh_execute_header, v35, v36, "Ignoring scan end event because no scan in progress with status: %hhu", v37, 5u);
    }

    return;
  }

  (*(v12 + 32))(v19, v10, v11);
  if ((sub_10001ADEC() & 1) == 0)
  {
    (*(v12 + 8))(v19, v11);
    goto LABEL_7;
  }

  v21 = *(*v2 + 160);
  v22 = *(v12 + 16);
  v57 = v19;
  v22(v17, v19, v11);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v64 = v55;
    *v25 = 136315394;
    type metadata accessor for P2PTimer();
    v54 = v23;
    variable initialization expression of AWDLPeer.lastUpdated();
    v26 = v58;
    DispatchTime.distance(to:)();
    v27 = *(v12 + 8);
    v56 = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v27(v15, v11);
    v28 = DispatchTimeInterval.description.getter();
    v29 = v24;
    v31 = v30;
    (*(v59 + 8))(v26, v60);
    v27(v17, v11);
    v32 = sub_100002320(v28, v31, &v64);

    *(v25 + 4) = v32;
    *(v25 + 12) = 256;
    *(v25 + 14) = v63;
    v33 = v54;
    _os_log_impl(&_mh_execute_header, v54, v29, "Infra scan complete (duration: %s), status: %hhu)", v25, 0xFu);
    sub_100002A00(v55);
  }

  else
  {

    v27 = *(v12 + 8);
    v56 = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v27(v17, v11);
  }

  v38 = *(*v2 + 536);
  v39 = *(v2 + v38);
  *(v2 + v38) = 0;

  sub_10001B3C8(0);
  v40 = v2 + *(*v2 + 592);
  swift_beginAccess();
  v41 = v61;
  v42 = v40 + *(v61 + 36);
  v43 = *(v42 + 16);
  v44 = *(v42 + 20);
  v46 = *(v42 + 24);
  v45 = *(v42 + 28);
  v47 = v40;
  v48 = v62;
  sub_100012400(v47, v62, &qword_1005995E8, &unk_1004B3040);
  v49 = v48 + *(v41 + 36);
  *v49 = 0;
  *(v49 + 8) = 0;
  *(v49 + 20) = v44;
  *(v49 + 16) = v43;
  *(v49 + 24) = v46;
  *(v49 + 28) = v45;
  sub_10001C638(v48);
  v27(v57, v11);
  v50 = *(*v2 + 544);
  v51 = *(v2 + v50);
  v52 = __CFADD__(v51, 1);
  v53 = v51 + 1;
  if (v52)
  {
    __break(1u);
  }

  else
  {
    *(v2 + v50) = v53;
  }
}

uint64_t sub_100028EF8()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchTimeInterval();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for DispatchTimeInterval.seconds(_:))
  {
    (*(v3 + 96))(v6, v2);
    v8 = *v6;
    v9 = 1000000000;
LABEL_7:
    v10 = v8 * v9;
    v11 = (v8 * v9) >> 64;
    v12 = v8 <= 0;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    if (v12)
    {
      v13 = 0x8000000000000000;
    }

    if (v11 == v10 >> 63)
    {
      return v10;
    }

    else
    {
      return v13;
    }
  }

  if (v7 == enum case for DispatchTimeInterval.milliseconds(_:))
  {
    (*(v3 + 96))(v6, v2);
    v8 = *v6;
    v9 = 1000000;
    goto LABEL_7;
  }

  if (v7 == enum case for DispatchTimeInterval.microseconds(_:))
  {
    (*(v3 + 96))(v6, v2);
    v8 = *v6;
    v9 = 1000;
    goto LABEL_7;
  }

  if (v7 == enum case for DispatchTimeInterval.nanoseconds(_:))
  {
    (*(v3 + 96))(v6, v2);
    return *v6;
  }

  else
  {
    if (v7 != enum case for DispatchTimeInterval.never(_:))
    {
      (*(v3 + 8))(v6, v2);
    }

    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

void *sub_100029108(uint64_t a1)
{
  v2 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_10005DC58(&qword_10058B380, &unk_10047F4B0);
    v10 = static _SetStorage.allocate(capacity:)();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_10001F8AC(&qword_10058B388, &type metadata accessor for Duration.UnitsFormatStyle.Unit);
      v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_10001F8AC(&unk_10058B390, &type metadata accessor for Duration.UnitsFormatStyle.Unit);
          v25 = dispatch thunk of static Equatable.== infix(_:_:)();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t P2PTimer.__deallocating_deinit()
{
  v1 = v0;
  v2 = *(v0 + 2);
  swift_getObjectType();
  swift_unknownObjectRetain();
  OS_dispatch_source.cancel()();
  swift_unknownObjectRelease();
  v3 = *(v1 + 2);
  swift_unknownObjectRelease();
  v4 = OBJC_IVAR____TtC7CoreP2P8P2PTimer_deadlineAfter;
  v5 = type metadata accessor for DispatchTimeInterval();
  v6 = *(*(v5 - 8) + 8);
  v6(&v1[v4], v5);

  v6(&v1[OBJC_IVAR____TtC7CoreP2P8P2PTimer_repeatingInterval], v5);
  v6(&v1[OBJC_IVAR____TtC7CoreP2P8P2PTimer_leeway], v5);
  v7 = *&v1[OBJC_IVAR____TtC7CoreP2P8P2PTimer_handler + 8];

  v8 = *(*v1 + 48);
  v9 = *(*v1 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_100029568(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000295B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(type metadata accessor for UUID() - 8) + 64);
  __chkstk_darwin();
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v15 = *v14;
  *v13 = *v14;
  (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  result = (*(v10 + 8))(v13, v9);
  if (v15)
  {
    dispatch thunk of Identifiable.id.getter();
    v20[3] = a2;
    v20[4] = a3;
    v18 = sub_1000297D4(v20);
    (*(*(a2 - 8) + 16))(v18, a1, a2);
    swift_beginAccess();
    sub_100029838(v20, v8);
    swift_endAccess();
    return sub_10002A698();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *sub_1000297D4(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100029838(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_100029954(a1, v10);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    sub_10002A264(v10, a2, isUniquelyReferenced_nonNull_native);
    v6 = type metadata accessor for UUID();
    result = (*(*(v6 - 8) + 8))(a2, v6);
    *v2 = v9;
  }

  else
  {
    sub_100016290(a1, &unk_100597470, &unk_1004B07E0);
    sub_1003AD518(a2, v10);
    v8 = type metadata accessor for UUID();
    (*(*(v8 - 8) + 8))(a2, v8);
    return sub_100016290(v10, &unk_100597470, &unk_1004B07E0);
  }

  return result;
}

uint64_t sub_100029954(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1000299A4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000299F0(uint64_t a1)
{
  sub_10002AA40(v14);
  v3 = v16[0];
  v4 = v15 | (*v16 << 32);
  v10[0] = v14[0];
  v10[1] = v14[1];
  v11 = v15;
  *v13 = *&v16[1];
  *&v13[15] = *&v16[16];
  v12 = v16[0];
  sub_10002ACB8(v10);
  v5 = *(a1 + 36);
  if (v5 << 32 == 0x300000000)
  {
    LOBYTE(v5) = 3;
  }

  v6 = (v4 & 0xFF00000000) == 0x300000000 || v3 == 3;
  if (v6)
  {
    if (v5 != 3)
    {
      return sub_10002A698();
    }
  }

  else
  {
    v6 = v5 == 3;
    v7 = (0x801004u >> (8 * v5)) & 0xFFC;
    if (v6 || ((0x801004u >> (8 * BYTE4(v4))) & 0xFFC) != v7)
    {
      return sub_10002A698();
    }
  }

  if (((*(a1 + 24) | (*(a1 + 28) << 32)) & 0xFF00000000) != 0x300000000) != (*(v1 + qword_1005960F0 + 28) << 32 == 0x300000000) && (sub_10002B29C(*(v1 + qword_1005960F0 + 40), *(a1 + 40)))
  {
    return sub_10002B38C();
  }

  return sub_10002A698();
}

void *sub_100029B34(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

char *sub_100029B78()
{
  v1 = v0;
  v2 = sub_1000303DC();
  v3 = v2;
  v4 = *(v2 + 16);
  if (!v4)
  {

    return _swiftEmptyArrayStorage;
  }

  v5 = 0;
  v6 = *v0;
  v7 = v2 + 32;
  v87 = _swiftEmptyArrayStorage;
  v85 = v2;
  v86 = v1;
  v83 = v6;
  v84 = *(v2 + 16);
  v82 = v2 + 32;
  while (1)
  {
    if (v5 >= *(v3 + 16))
    {
      goto LABEL_60;
    }

    if (*(v6 + 16))
    {
      mapID = *(v7 + v5);
      v8 = sub_10002D078(mapID);
      if (v9)
      {
        break;
      }
    }

LABEL_4:
    if (++v5 == v4)
    {

      return v87;
    }
  }

  v89 = v5;
  v10 = *(*(v6 + 56) + 8 * v8);
  v11 = *(v10 + 16);
  if (!v11)
  {
    v18 = &_swiftEmptyDictionarySingleton;
    v19 = v107;
    v20 = v105;
LABEL_28:
    v105 = v20;
    v107 = v19;
    v43 = *(v18 + 2);
    if (v43)
    {
      sub_10005DC58(&qword_1005987D0, &qword_1004B0740);
      v44 = swift_allocObject();
      v45 = j__malloc_size(v44);
      v46 = v45 - 32;
      if (v45 < 32)
      {
        v46 = v45 - 25;
      }

      v44[2] = v43;
      v44[3] = 2 * (v46 >> 3);
      v47 = sub_100315A68(&v109, (v44 + 4), v43, v18);
      v48 = v18;
      swift_bridgeObjectRetain_n();
      sub_1000E290C();
      if (v47 != v43)
      {
        goto LABEL_61;
      }

      v109 = v44;
      sub_100314F10(&v109);

      v49 = *(v109 + 2);
      if (v49)
      {
        v50 = v109 + 37;
        v51 = _swiftEmptyArrayStorage;
        do
        {
          v56 = *(v50 - 5) | (*(v50 - 1) << 32) | (*v50 << 40);
          v57 = NANBitmap.Channel.init(channel:)(v56);
          if ((v58 & 0x100) == 0)
          {
            if (*(v48 + 2))
            {
              v59 = v57;
              v60 = v58;
              v61 = sub_1003E09BC(v56);
              if (v62)
              {
                v63 = (*(v48 + 7) + 24 * v61);
                v64 = *v63;
                v65 = v63[1];
                v66 = v63[2];
                v67 = TimeBitmap.zero.unsafeMutableAddressor();
                if (!static TimeBitmap.__derived_struct_equals(_:_:)(v64, v65, v66, *v67, v67[1], v67[2]))
                {
                  v68 = TimeBitmap.nanBitmap.getter(v64, v65, v66);
                  v70 = v69;
                  v72 = v71;
                  v88 = v59 & 0xFFFF00FFFFFF00FFLL | v88 & 0xFF000000FF00;
                  static NANAvailabilityEntry.committedEntry(on:for:)(v88, v60 & 1, v68, v69, v71, v110);
                  sub_1000124C8(v70, v72);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v51 = sub_100116E4C(0, *(v51 + 2) + 1, 1, v51);
                  }

                  v74 = *(v51 + 2);
                  v73 = *(v51 + 3);
                  if (v74 >= v73 >> 1)
                  {
                    v51 = sub_100116E4C((v73 > 1), v74 + 1, 1, v51);
                  }

                  *(v51 + 2) = v74 + 1;
                  v52 = &v51[56 * v74];
                  v53 = v110[0];
                  v54 = v110[1];
                  v55 = v110[2];
                  v52[80] = v111;
                  *(v52 + 3) = v54;
                  *(v52 + 4) = v55;
                  *(v52 + 2) = v53;
                }
              }
            }
          }

          v50 += 8;
          --v49;
        }

        while (v49);
      }

      else
      {

        v51 = _swiftEmptyArrayStorage;
      }

      v4 = v84;
      v3 = v85;
      v5 = v89;
      v7 = v82;
      v6 = v83;
      if (*(v51 + 2))
      {
        v75 = NANAttribute.Availability.Control.committedChange.unsafeMutableAddressor();
        v76.rawValue = NANAttribute.Availability.Control.init(mapID:with:)(mapID, v75->rawValue).rawValue;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v77 = v87;
        }

        else
        {
          v77 = sub_100116F70(0, *(v87 + 2) + 1, 1, v87);
        }

        v79 = *(v77 + 2);
        v78 = *(v77 + 3);
        if (v79 >= v78 >> 1)
        {
          v77 = sub_100116F70((v78 > 1), v79 + 1, 1, v77);
        }

        *(v77 + 2) = v79 + 1;
        v87 = v77;
        v80 = &v77[16 * v79];
        v80[32] = 0;
        *(v80 + 17) = v76;
        *(v80 + 5) = v51;
      }

      else
      {
      }

      v1 = v86;
    }

    else
    {

      v3 = v85;
      v1 = v86;
      v6 = v83;
      v4 = v84;
      v5 = v89;
      v7 = v82;
    }

    goto LABEL_4;
  }

  v97 = v1[5];
  v96 = *(v1 + 9);
  v94 = *(v1 + 6) | (*(v1 + 14) << 32);
  v95 = *(v1 + 8) | (*(v1 + 18) << 32);
  v12 = *(v1 + 21);
  v13 = *(v1 + 20);
  v14 = *(v1 + 4);
  v15 = v13 << 32;
  v93 = v12 << 40;

  v16 = 0;
  v17 = (v10 + 71);
  v92 = v14 | v15;
  v18 = &_swiftEmptyDictionarySingleton;
  v19 = v107;
  v20 = v105;
  v21 = v98;
  v90 = v11;
  v91 = v10;
  while (v16 < *(v10 + 16))
  {
    v23 = *(v17 - 23);
    v108 = *(v17 - 15);
    v106 = *(v17 - 7);
    v104 = *(v17 - 3);
    v103 = *(v17 - 2);
    v102 = *(v17 - 1);
    v101 = *v17;
    v19 = v19 & 0xFFFF000000000000 | v92 | v93;
    v20 = v20 & 0xFFFF000000000000 | v94;
    v21 = v21 & 0xFFFF000000000000 | v95;
    v24 = RadioResources.SymbolicChannel.Resolver.channel(for:supportsSimulatenousDualBand:on:)(*(v17 - 39), *(v17 - 31), v96, mapID, v19, v20, v21, v97);
    if ((v24 & 0xFF00000000) == 0x300000000)
    {
      goto LABEL_11;
    }

    v25 = v24;
    v99 = v21;
    v26 = v20;
    v27 = v19;
    v28 = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v109 = v28;
    v31 = sub_1003E09BC(v25 & 0xFFFFFFFFFFFFLL);
    v32 = *(v28 + 2);
    v33 = (v30 & 1) == 0;
    v34 = v32 + v33;
    if (__OFADD__(v32, v33))
    {
      goto LABEL_58;
    }

    v35 = v30;
    if (*(v28 + 3) >= v34)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v18 = v28;
        if ((v30 & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      else
      {
        sub_10046B4A4();
        v18 = v109;
        if ((v35 & 1) == 0)
        {
          goto LABEL_21;
        }
      }
    }

    else
    {
      sub_100310664(v34, isUniquelyReferenced_nonNull_native);
      v18 = v109;
      v36 = sub_1003E09BC(v25 & 0xFFFFFFFFFFFFLL);
      if ((v35 & 1) != (v37 & 1))
      {
        goto LABEL_62;
      }

      v31 = v36;
      if ((v35 & 1) == 0)
      {
LABEL_21:
        *&v18[8 * (v31 >> 6) + 64] |= 1 << v31;
        v38 = *(v18 + 6) + 8 * v31;
        *v38 = v25;
        *(v38 + 4) = BYTE4(v25);
        *(v38 + 5) = BYTE5(v25);
        v39 = *(v18 + 7) + 24 * v31;
        *v39 = xmmword_1004841D0;
        *(v39 + 16) = 0;
        v40 = *(v18 + 2);
        v41 = __OFADD__(v40, 1);
        v42 = v40 + 1;
        if (v41)
        {
          goto LABEL_59;
        }

        *(v18 + 2) = v42;
      }
    }

    v22 = *(v18 + 7) + 24 * v31;
    TimeBitmap.SlotsView.formUnion(_:)(v23, v108, v106 | (v104 << 32) | (v103 << 40) | (v102 << 48) | (v101 << 56));
    v19 = v27;
    v20 = v26;
    v21 = v99;
    v11 = v90;
    v10 = v91;
LABEL_11:
    ++v16;
    v17 += 40;
    if (v11 == v16)
    {
      v98 = v21;

      goto LABEL_28;
    }
  }

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
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_10002A264(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_10002A440(a2);
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
      sub_10046CAA8();
      goto LABEL_7;
    }

    sub_1003129D0(v18, a3 & 1);
    v24 = *v4;
    v25 = sub_10002A440(a2);
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
      return sub_1002DD860(v15, v12, a1, v21);
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
  v22 = (v21[7] + 40 * v15);
  sub_100002A00(v22);

  return sub_100029954(a1, v22);
}

unint64_t sub_10002A440(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for UUID();
  sub_100085198(&unk_10058BB00, &type metadata accessor for UUID);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_10002A4D8(a1, v5);
}

unint64_t sub_10002A4D8(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_100085198(&qword_100597540, &type metadata accessor for UUID);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_10002A698()
{
  sub_10002AA40(v36);
  v39 = v37;
  v40 = v38;
  sub_10002AC5C(&v39, v42);
  sub_10002ACB8(v36);
  v34 = v39;
  v35 = v40;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + *(*Strong + 744)) == 1)
    {
      if (sub_10002ACE8(v34 | (BYTE4(v34) << 32) | (BYTE5(v34) << 40), DWORD2(v34) | (WORD6(v34) << 32)))
      {
        v2 = sub_100019B10();
        RadioResources.SymbolicChannel.Resolver.primaryChannel.setter(v2 & 0xFFFFFFFFFFFFLL);
        v3 = sub_10002AF00();
        RadioResources.SymbolicChannel.Resolver.secondaryChannel.setter(v3 & 0xFFFFFFFFFFFFLL);
        v4 = 1;
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = (v0 + qword_1005960F0);
  v6 = *(v0 + qword_1005960F0 + 8) & 1;
  v7 = *(v0 + qword_1005960F0 + 9) & 1;
  *&v30 = &_swiftEmptyDictionarySingleton;
  BYTE8(v30) = v6;
  BYTE9(v30) = v7;
  LODWORD(v31) = v34;
  WORD2(v31) = WORD2(v34);
  WORD6(v31) = WORD6(v34);
  DWORD2(v31) = DWORD2(v34);
  WORD2(v32) = WORD2(v35);
  LODWORD(v32) = v35;
  *(&v32 + 1) = *(&v35 + 1);
  v33 = _swiftEmptyArrayStorage;
  v8 = qword_1005960F8;
  swift_beginAccess();
  v9 = *(v0 + v8);

  sub_10002AF5C(v9, &v30);

  v42[0] = v30;
  v42[1] = v31;
  v42[2] = v32;
  v43 = v33;
  sub_10002996C(v42, v41);
  sub_10002B214(v42);
  v10 = swift_weakLoadStrong();
  if (v10)
  {
    if (*(v10 + *(*v10 + 744)) == 1 && v4)
    {
      v11 = v10;
      v12 = sub_10002AF00();
      v13 = (v12 & 0xFF00000000) != 0x300000000 && (static Channel.isValid(channel:on:with:)(v12, HIDWORD(v12), v12 >> 40) & 1) != 0;
      v14 = v11 + *(*v11 + 632);
      swift_beginAccess();
      v15 = sub_10005DC58(&qword_10059A6A0, &qword_1004B0738);
      LOBYTE(v26) = *(v14 + *(v15 + 40));
      BYTE1(v26) = v13;
      MutableDriverProperty.wrappedValue.setter(&v26, v15);
      swift_endAccess();
      v16 = *v5;
      v17 = v5[1];
      v18 = v5[2];
      v19 = v5[3];
      v20 = v5[4];
      v21 = v5[5];
      v22 = v5[6];
      v41[0] = v16;
      v41[1] = v17;
      v41[2] = v18;
      v41[3] = v19;
      v41[4] = v20;
      v41[5] = v21;
      v41[6] = v22;
      *&v26 = v16;
      *(&v26 + 1) = v17;
      *&v27 = v18;
      *(&v27 + 1) = v19;
      *&v28 = v20;
      *(&v28 + 1) = v21;
      v29 = v22;
      sub_10002996C(&v26, &v25);
      v23 = sub_100029B78();
      sub_1000299A4(v16);
      sub_1000306E8(v23);
    }
  }

  v26 = v30;
  v27 = v31;
  v28 = v32;
  v29 = v33;
  return sub_10002ACB8(&v26);
}

uint64_t sub_10002AA40@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + qword_1005960F0);
  v4 = *(v1 + qword_1005960F0);
  v5 = *(v1 + qword_1005960F0 + 8);
  v7 = *(v1 + qword_1005960F0 + 16);
  v6 = *(v1 + qword_1005960F0 + 24);
  v8 = *(v1 + qword_1005960F0 + 32);
  v9 = *(v1 + qword_1005960F0 + 40);
  v10 = *(v1 + qword_1005960F0 + 48);
  if (v4)
  {
    v33 = v7 >> 40;
    v34 = HIDWORD(v7);
    v11 = *(v1 + qword_1005960F0);
    v12 = v5;
    v13 = (v5 >> 8) & 1;
    v14 = v7;
    v15 = v6;
    v16 = v8;
    v17 = v9;
    v18 = v10;
  }

  else
  {
    v32 = *(v1 + qword_1005960F0 + 8);
    v30 = *(v1 + qword_1005960F0 + 32);
    v31 = *(v1 + qword_1005960F0 + 24);
    v13 = *(v1 + qword_1005960F0 + 40);
    v19 = *(v1 + qword_1005960F0 + 48);
    v20 = Channel.nanPrimary.unsafeMutableAddressor();
    v21 = *v20;
    v22 = *(v20 + 2);
    v36 = &_swiftEmptyDictionarySingleton;
    LOWORD(v37) = 0;
    DWORD2(v37) = v21;
    WORD6(v37) = v22;
    WORD2(v38) = 3;
    LODWORD(v38) = 0;
    WORD6(v38) = 3;
    DWORD2(v38) = 0;
    v39 = _swiftEmptyArrayStorage;
    v40 = _swiftEmptyArrayStorage;
    v23 = *v3;
    v24 = v3[1];
    v25 = v3[3];
    v26 = v3[4];
    v27 = v3[5];
    v33 = v3[6];
    v34 = v3[2];
    *v3 = &_swiftEmptyDictionarySingleton;
    *(v3 + 1) = v37;
    *(v3 + 3) = v38;
    v3[5] = _swiftEmptyArrayStorage;
    v3[6] = _swiftEmptyArrayStorage;
    sub_10002996C(&v36, v35);
    sub_1000299A4(v23);
    v4 = 0;
    v14 = DWORD2(v37);
    LOBYTE(v34) = BYTE12(v37);
    LOBYTE(v33) = BYTE13(v37);
    v15 = v38 | (WORD2(v38) << 32);
    v16 = DWORD2(v38) | (WORD6(v38) << 32);
    v17 = v39;
    v18 = v40;
    LOBYTE(v13) = BYTE1(v37);
    v12 = v37;
    v11 = v36;
  }

  v28 = v12 & 1;
  result = sub_10002AC10(v4);
  *a1 = v11;
  *(a1 + 8) = v28;
  *(a1 + 9) = v13;
  *(a1 + 16) = v14;
  *(a1 + 20) = v34;
  *(a1 + 21) = v33;
  *(a1 + 24) = v15;
  *(a1 + 28) = WORD2(v15);
  *(a1 + 32) = v16;
  *(a1 + 36) = WORD2(v16);
  *(a1 + 40) = v17;
  *(a1 + 48) = v18;
  return result;
}

uint64_t sub_10002AC10(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10002ACE8(unint64_t a1, unint64_t a2)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = sub_100019B10();
    if (a1 != v5 || ((0x801004u >> ((a1 >> 29) & 0xF8)) & 0xFFC) != ((0x801004u >> ((v5 >> 29) & 0xF8)) & 0xFFC))
    {
      goto LABEL_22;
    }

    if (BYTE5(a1) <= 3u)
    {
      if (BYTE5(a1) == 2)
      {
        if (BYTE5(v5) != 2)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (BYTE5(a1) != 3)
        {
LABEL_20:
          if (BYTE5(v5) - 2 < 5 || (((v5 >> 40) ^ (a1 >> 40)) & 1) != 0)
          {
            goto LABEL_22;
          }

          goto LABEL_25;
        }

        if (BYTE5(v5) != 3)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
      switch(BYTE5(a1))
      {
        case 4u:
          if (BYTE5(v5) != 4)
          {
            goto LABEL_22;
          }

          break;
        case 5u:
          if (BYTE5(v5) != 5)
          {
            goto LABEL_22;
          }

          break;
        case 6u:
          if (BYTE5(v5) == 6)
          {
            break;
          }

LABEL_22:

          return 1;
        default:
          goto LABEL_20;
      }
    }

LABEL_25:
    v6 = sub_10002AF00();

    v7 = v6 & 0xFF00000000;
    if ((a2 & 0xFF00000000) == 0x300000000)
    {
      return v7 != 0x300000000;
    }

    if (v7 != 0x300000000 && a2 == v6 && (0x801004u >> ((a2 >> 29) & 0xF8)) == (0x801004u >> ((v6 >> 29) & 0xF8)))
    {
      if (BYTE5(a2) <= 3u)
      {
        if (BYTE5(a2) == 2)
        {
          return BYTE5(v6) != 2;
        }

        if (BYTE5(a2) == 3)
        {
          return BYTE5(v6) != 3;
        }
      }

      else
      {
        switch(BYTE5(a2))
        {
          case 4u:
            return BYTE5(v6) != 4;
          case 5u:
            return BYTE5(v6) != 5;
          case 6u:
            return BYTE5(v6) != 6;
        }
      }

      if (BYTE5(v6) - 2 >= 5 && (((v6 >> 40) ^ (a2 >> 40)) & 1) == 0)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

unint64_t sub_10002AF00()
{
  v1 = *(*v0 + 624);
  v2 = (v0 + *(sub_10005DC58(&qword_10059A660, &qword_1004B3860) + 40) + v1);
  return *v2 | (*(v2 + 2) << 32);
}

uint64_t sub_10002AF5C(uint64_t a1, uint64_t a2)
{
  v23 = a2;
  v22 = sub_10005DC58(&qword_1005962F8, &unk_1004B0760);
  v3 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v5 = &v21 - v4;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;

  for (i = 0; v8; result = sub_100016290(v5, &qword_1005962F8, &unk_1004B0760))
  {
    v12 = i;
LABEL_9:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v14 = v13 | (v12 << 6);
    v15 = *(a1 + 48);
    v16 = type metadata accessor for UUID();
    (*(*(v16 - 8) + 16))(v5, v15 + *(*(v16 - 8) + 72) * v14, v16);
    v17 = *(a1 + 56) + 40 * v14;
    v18 = &v5[*(v22 + 48)];
    sub_10002B154(v17, v18);
    v19 = *(v18 + 3);
    v20 = *(v18 + 4);
    sub_100029B34(v18, v19);
    (*(v20 + 8))(v23, &type metadata for RadioResourceSchedule, &off_100596298, v19, v20);
  }

  while (1)
  {
    v12 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
    }

    v8 = *(a1 + 64 + 8 * v12);
    ++i;
    if (v8)
    {
      i = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10002B154(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10002B214(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  sub_10002AA40(v16);
  v6 = v1 + qword_1005960F0;
  v7 = *(v1 + qword_1005960F0);
  v8 = *(v1 + qword_1005960F0 + 8);
  v9 = *(v1 + qword_1005960F0 + 16);
  v10 = *(v1 + qword_1005960F0 + 24);
  v11 = *(v1 + qword_1005960F0 + 32);
  v12 = *(v1 + qword_1005960F0 + 40);
  v13 = *(v1 + qword_1005960F0 + 48);
  v14 = *(a1 + 16);
  *v6 = *a1;
  *(v6 + 16) = v14;
  *(v6 + 32) = v3;
  *(v6 + 40) = v4;
  *(v6 + 48) = v5;
  sub_1000299A4(v7);
  sub_1000299F0(v16);
  return sub_10002ACB8(v16);
}

uint64_t sub_10002B29C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v9 = 1;
    }

    else
    {
      v5 = 0;
      do
      {
        if (*(a1 + v5 + 39))
        {
          v6 = 0x100000000000000;
        }

        else
        {
          v6 = 0;
        }

        v7 = v6 | (*(a1 + v5 + 38) << 48) | (*(a1 + v5 + 37) << 40) | (*(a1 + v5 + 36) << 32);
        if (*(a2 + v5 + 39))
        {
          v8 = 0x100000000000000;
        }

        else
        {
          v8 = 0;
        }

        v9 = static RadioResources.PreferredChannel.__derived_struct_equals(_:_:)(v7 | *(a1 + v5 + 32), v8 | (*(a2 + v5 + 38) << 48) | (*(a2 + v5 + 37) << 40) | (*(a2 + v5 + 36) << 32) | *(a2 + v5 + 32));
        if ((v9 & 1) == 0)
        {
          break;
        }

        v5 += 8;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_10002B38C()
{
  sub_10002AA40(v9);
  v0 = sub_100029B78();
  sub_10002ACB8(v9);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
  }

  if ((*(Strong + *(*Strong + 744)) & 1) == 0)
  {
  }

  v2 = Strong;
  v3 = sub_10002AF00();
  v4 = (v3 & 0xFF00000000) != 0x300000000 && (static Channel.isValid(channel:on:with:)(v3, HIDWORD(v3), v3 >> 40) & 1) != 0;
  v6 = v2 + *(*v2 + 632);
  swift_beginAccess();
  v7 = sub_10005DC58(&qword_10059A6A0, &qword_1004B0738);
  v8[0] = *(v6 + *(v7 + 40));
  v8[1] = v4;
  MutableDriverProperty.wrappedValue.setter(v8, v7);
  swift_endAccess();
  sub_1000306E8(v0);
}

uint64_t sub_10002B4C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10002B508(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_10002B550@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = qword_100597988;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v6 = *(v3 + 80);
  v7 = *(v3 + 88);
  type metadata accessor for AWDLDiscoveryEngine.Advertise();
  sub_10002B68C();
  v8 = type metadata accessor for Dictionary.Keys();

  WitnessTable = swift_getWitnessTable();
  v11 = sub_10002B84C(sub_100374904, 0, v8, &type metadata for DNSRecords.Identifier, &type metadata for Never, WitnessTable, &protocol witness table for Never, v10);

  *a1 = v11;
  return result;
}

unint64_t sub_10002B68C()
{
  result = qword_10058AC58;
  if (!qword_10058AC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058AC58);
  }

  return result;
}

uint64_t sub_10002B6E0(uint64_t a1, unsigned int *a2, unint64_t a3)
{
  v5 = *a2;
  if (a2[8])
  {
    v6 = 0;
    v7 = 0;
    *(&v9 + 1) = a2[3];
    *&v9 = *(a2 + 1);
    v8 = v9 >> 32;
    v10 = v5 | (v9 << 32);
    v11 = 28;
    v12 = 30;
    LODWORD(v5) = 0;
  }

  else
  {
    v12 = 0;
    v11 = 0;
    v10 = 0;
    v8 = 0;
    v7 = 16;
    v6 = 2;
  }

  v17 = 1;
  v18 = a1;
  v19 = BYTE2(a1);
  v20 = BYTE3(a1);
  v21 = BYTE4(a1);
  v22 = BYTE5(a1);
  v23 = 0;
  v24 = v7;
  v25 = v6;
  v26 = 0;
  v27 = v5;
  v28 = 0;
  v29 = v11;
  v30 = v12;
  v31 = 0;
  v32 = 0;
  v33 = v10;
  v34 = v8;
  v35 = 0;
  v13 = v3[5];
  v14 = v3[2];
  v15 = v3[3];

  AppleDevice.setRequest(requestType:data:on:)(a3, &v17, &v36, 0, v14, v15);
}

uint64_t sub_10002B84C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = a8;
  v44 = a1;
  v45 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v46 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v48 = *(AssociatedTypeWitness - 8);
  v16 = *(v48 + 64);
  __chkstk_darwin();
  v18 = &v33 - v17;
  v19 = *(*(a4 - 8) + 64);
  __chkstk_darwin();
  v42 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_getAssociatedTypeWitness();
  v36 = *(v21 - 8);
  v37 = v21;
  v22 = *(v36 + 64);
  __chkstk_darwin();
  v24 = &v33 - v23;
  v25 = dispatch thunk of Collection.count.getter();
  if (!v25)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v47 = v25;
  v51 = ContiguousArray.init()();
  v38 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v47);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v47 & 0x8000000000000000) == 0)
  {
    v33 = v11;
    v34 = a5;
    v27 = 0;
    v39 = (v48 + 16);
    v40 = (v48 + 8);
    v41 = v8;
    while (!__OFADD__(v27, 1))
    {
      v48 = v27 + 1;
      v28 = dispatch thunk of Collection.subscript.read();
      v29 = v18;
      v30 = v18;
      v31 = AssociatedTypeWitness;
      (*v39)(v29);
      v28(v50, 0);
      v32 = v49;
      v44(v30, v46);
      if (v32)
      {
        (*v40)(v30, v31);
        (*(v36 + 8))(v24, v37);

        return (*(v33 + 32))(v35, v46, v34);
      }

      v49 = 0;
      (*v40)(v30, v31);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v27;
      v18 = v30;
      if (v48 == v47)
      {
        (*(v36 + 8))(v24, v37);
        return v51;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_10002BC6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_1000C0464(0, v1, 0);
  v3 = a1 + 56;
  v4 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v6 = result;
  v7 = 0;
  v27 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v3 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v28 = v7;
    v29 = *(a1 + 36);
    v10 = *(a1 + 48) + 24 * v6;
    v11 = *v10;
    v12 = *(v10 + 8);
    v13 = *(v10 + 16) | (*(v10 + 17) << 8);

    v14 = DNSRecords.Identifier.description.getter(v11, v12, v13);
    v16 = v15;

    v18 = _swiftEmptyArrayStorage[2];
    v17 = _swiftEmptyArrayStorage[3];
    if (v18 >= v17 >> 1)
    {
      result = sub_1000C0464((v17 > 1), v18 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v18 + 1;
    v19 = &_swiftEmptyArrayStorage[2 * v18];
    v19[4] = v14;
    v19[5] = v16;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v3 = a1 + 56;
    v20 = *(a1 + 56 + 8 * v9);
    if ((v20 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v29 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v21 = v20 & (-2 << (v6 & 0x3F));
    if (v21)
    {
      v8 = __clz(__rbit64(v21)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v22 = v9 << 6;
      v23 = v9 + 1;
      v24 = (a1 + 64 + 8 * v9);
      while (v23 < (v8 + 63) >> 6)
      {
        v26 = *v24++;
        v25 = v26;
        v22 += 64;
        ++v23;
        if (v26)
        {
          result = sub_10002BEB8(v6, v29, 0);
          v8 = __clz(__rbit64(v25)) + v22;
          goto LABEL_4;
        }
      }

      result = sub_10002BEB8(v6, v29, 0);
    }

LABEL_4:
    v7 = v28 + 1;
    v6 = v8;
    if (v28 + 1 == v27)
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

uint64_t sub_10002BEB8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_10002BEC4(uint64_t a1, uint64_t a2)
{
  v11 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 49);
    do
    {
      v4 = *(v3 - 1);
      v5 = *(v3 - 9);
      v6 = *(v3 - 17);
      v7 = *v3;
      v3 += 24;
      v8 = v4 | (v7 << 8);

      sub_10046F77C(&v10, v6, v5, v8);

      --v2;
    }

    while (v2);
    return v11;
  }

  return a2;
}

uint64_t sub_10002BF54()
{
  v1 = swift_slowAlloc();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[5];

  AppleDevice.getRequest(requestType:data:on:)(0x1D2uLL, v1, v1 + 0x2000, 0, v2, v3);

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = *(v1 + v6);
    if (v8)
    {
      break;
    }

LABEL_2:
    if (++v6 == 0x2000)
    {

      return v7;
    }
  }

  v9 = 0;
  while (((1 << v9) & ~v8) != 0)
  {
LABEL_6:
    if (++v9 == 8)
    {
      goto LABEL_2;
    }
  }

  v10 = (8 * v6) + v9;
  if ((v10 & 0x10000) == 0)
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100117180(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
    }

    v12 = *(v7 + 2);
    v11 = *(v7 + 3);
    if (v12 >= v11 >> 1)
    {
      result = sub_100117180((v11 > 1), v12 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 2) = v12 + 1;
    *&v7[2 * v12 + 32] = v10;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_10002C184(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = v4;
  v10 = *(*(type metadata accessor for DispatchWorkItemFlags() - 8) + 64);
  __chkstk_darwin();
  v20[0] = a1;
  v20[1] = a2;
  memset(&v20[2], 0, 24);
  v21 = a3;
  static DispatchWorkItemFlags.assignCurrentContext.getter();
  aBlock[4] = NANBitmap.Channel.operatingClass.getter;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = a4;
  _Block_copy(aBlock);
  v11 = type metadata accessor for DispatchWorkItem();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = DispatchWorkItem.init(flags:block:)();
  v15 = *(v7 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_voucher);
  *(v7 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_voucher) = v14;

  v17 = *(v7 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_requestHandler);
  v16 = *(v7 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_requestHandler + 8);

  v17(v20, v7);
}

void sub_10002C354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  isa = Array._bridgeToObjectiveC()().super.isa;
  sub_100018AB4(0, &qword_1005974C0, NSNumber_ptr);
  v5 = Array._bridgeToObjectiveC()().super.isa;
  (*(a3 + 16))(a3, isa, v5);
}

uint64_t sub_10002C3F0(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a1;
  sub_10002C184(a5, v12, a6, a7);
}

void sub_10002C48C()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = (&v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler);
    if (v7)
    {
      v8 = *(Strong + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler + 8);
      v9 = *(Strong + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_queue);
      *v4 = v9;
      (*(v1 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v0);
      sub_10001F89C(v7);
      v10 = v9;
      LOBYTE(v9) = _dispatchPreconditionTest(_:)();
      (*(v1 + 8))(v4, v0);
      if ((v9 & 1) == 0)
      {
        __break(1u);
        return;
      }

      v11 = v6;
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        *v14 = 138412290;
        *(v14 + 4) = v11;
        *v15 = v6;
        v16 = v11;
        _os_log_impl(&_mh_execute_header, v12, v13, "%@ was invalidated", v14, 0xCu);
        sub_100016290(v15, &qword_10058B780, &qword_100480AC0);
      }

      v7();
      sub_100010520(v7);
    }
  }
}

id sub_10002C6E0()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v0 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_logger, v1);
  v6 = v0;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "%@ was destroyed", v9, 0xCu);
    sub_100016290(v10, &qword_10058B780, &qword_100480AC0);
  }

  (*(v2 + 8))(v5, v1);
  [*&v6[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection] invalidate];
  v12 = type metadata accessor for XPCSession(0);
  v14.receiver = v6;
  v14.super_class = v12;
  return objc_msgSendSuper2(&v14, "dealloc");
}

uint64_t sub_10002CA18(uint64_t result)
{
  if (*(v1 + 9))
  {
    return result;
  }

  else
  {
    return 11;
  }
}

uint64_t sub_10002CA2C(uint64_t result, char a2, uint64_t (*a3)(unint64_t))
{
  if (!a2)
  {
    __break(1u);
    return result;
  }

  v4 = v3;
  isUniquelyReferenced_nonNull_native = a2;
  v6 = result;
  v7 = *(v3 + 4);
  v8 = *(v3 + 20);
  v9 = *(v3 + 21);
  v10 = *(v3 + 6) | (*(v3 + 14) << 32);
  v11 = *(v4 + 8) | (*(v4 + 18) << 32);
  v12 = *(v4 + 5);
  v13 = *(v4 + 9);
  v14 = NANMapID.primary.unsafeMutableAddressor();
  result = RadioResources.SymbolicChannel.Resolver.channel(for:supportsSimulatenousDualBand:on:)(v6, isUniquelyReferenced_nonNull_native, v13, *v14, v7 | (v8 << 32) | (v9 << 40), v10, v11, v12);
  if ((result & 0xFF00000000) != 0x300000000)
  {
    v46 = *v4;
    v47 = v4[1];
    v48 = v4[2];
    v49 = *(v4 + 6);
    result = sub_10002CDAC(result & 0xFFFFFFFFFFFFLL);
    if ((result & 0x100) == 0)
    {
      LOBYTE(v15) = result;
      v16 = *v4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v4;
      *&v42 = *v4;
      v18 = sub_10002D078(v15);
      v20 = v17[2];
      v21 = (v19 & 1) == 0;
      v22 = __OFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        goto LABEL_35;
      }

      v6 = v19;
      if (v17[3] >= v23)
      {
        v8 = a3;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      else
      {
        sub_10002D154(v23, isUniquelyReferenced_nonNull_native);
        v17 = v42;
        v18 = sub_10002D078(v15);
        v8 = a3;
        if ((v6 & 1) != (v24 & 1))
        {
LABEL_7:
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          goto LABEL_8;
        }
      }

      *v4 = v17;
      if (v6)
      {
        return (v8)(v17[7] + 8 * v18);
      }

      goto LABEL_29;
    }
  }

LABEL_8:
  if (isUniquelyReferenced_nonNull_native != 2 || v6 >= 2)
  {
    v42 = *v4;
    v43 = v4[1];
    v44 = v4[2];
    v45 = *(v4 + 6);
    v18 = sub_1000303DC();
    v15 = v18;
    v25 = *(v18 + 16);
    if (v25)
    {
      v26 = 0;
      v8 = a3;
      while (1)
      {
        if (v26 >= *(v15 + 16))
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          v39 = v18;
          sub_10046C94C();
          v18 = v39;
          v17 = v42;
          *v4 = v42;
          if (v6)
          {
            return (v8)(v17[7] + 8 * v18);
          }

LABEL_29:
          v38 = v18;
          sub_10002D508(v18, v15, _swiftEmptyArrayStorage, v17);
          v18 = v38;
          return (v8)(v17[7] + 8 * v18);
        }

        v6 = *(v15 + v26 + 32);
        v27 = *v4;
        v28 = swift_isUniquelyReferenced_nonNull_native();
        v29 = *v4;
        v41 = *v4;
        v18 = sub_10002D078(v6);
        v31 = v29[2];
        v32 = (v30 & 1) == 0;
        v22 = __OFADD__(v31, v32);
        v33 = v31 + v32;
        if (v22)
        {
          goto LABEL_33;
        }

        isUniquelyReferenced_nonNull_native = v30;
        if (v29[3] < v33)
        {
          break;
        }

        if (v28)
        {
          goto LABEL_19;
        }

        v37 = v18;
        sub_10046C94C();
        v18 = v37;
        v29 = v41;
        *v4 = v41;
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_12;
        }

LABEL_20:
        v29[(v18 >> 6) + 8] |= 1 << v18;
        *(v29[6] + v18) = v6;
        *(v29[7] + 8 * v18) = _swiftEmptyArrayStorage;
        v35 = v29[2];
        v22 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v22)
        {
          goto LABEL_34;
        }

        v29[2] = v36;
LABEL_12:
        ++v26;
        v18 = a3(v29[7] + 8 * v18);
        if (v25 == v26)
        {
          goto LABEL_24;
        }
      }

      sub_10002D154(v33, v28);
      v29 = v41;
      v18 = sub_10002D078(v6);
      if ((isUniquelyReferenced_nonNull_native & 1) != (v34 & 1))
      {
        goto LABEL_7;
      }

LABEL_19:
      *v4 = v29;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_12;
      }

      goto LABEL_20;
    }

LABEL_24:
  }

  return result;
}

uint64_t sub_10002CDAC(unint64_t a1)
{
  v2 = HIDWORD(a1);
  if (*(v1 + 8) & 1) != 0 && (v3 = *(v1 + 24) | (*(v1 + 28) << 32), (v3 & 0xFF00000000) != 0x300000000) && (static Channel.isValid(channel:on:with:)(v3, HIDWORD(v3), v3 >> 40))
  {
    v4 = &off_1005728D8;
  }

  else
  {
    v4 = &off_100572900;
  }

  v5 = v4[2];
  v6 = (v4 + 4);
  do
  {
    if (!v5)
    {

      goto LABEL_14;
    }

    v7 = *v6++;
    --v5;
  }

  while (((0x801004u >> (8 * v2)) & 0xFFC) != (0x801004u >> (8 * v7)));

  if (!v2)
  {
LABEL_15:
    v8 = NANMapID.primary.unsafeMutableAddressor();
    goto LABEL_16;
  }

  if (v2 != 1)
  {
LABEL_14:
    v9 = 0;
    v10 = 1;
    return v9 | (v10 << 8);
  }

  if ((*(v1 + 9) & 1) == 0)
  {
    goto LABEL_15;
  }

  v8 = NANMapID.secondary.unsafeMutableAddressor();
LABEL_16:
  v10 = 0;
  v9 = *v8;
  return v9 | (v10 << 8);
}