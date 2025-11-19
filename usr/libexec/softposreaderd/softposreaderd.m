int main(int argc, const char **argv, const char **envp)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v106 = *(v3 - 8);
  v107 = v3;
  v4 = *(v106 + 64);
  __chkstk_darwin(v3);
  v105 = &v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v102 - 8) + 64);
  __chkstk_darwin(v102);
  v7 = type metadata accessor for DispatchQoS();
  v103 = *(v7 - 8);
  v104 = v7;
  v8 = *(v103 + 64);
  __chkstk_darwin(v7);
  v108 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  p_type = (&v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = type metadata accessor for Logger();
  sub_100003FD8(v20, qword_10039D2C0);
  v21 = sub_10000403C(v20, qword_10039D2C0);
  sub_10000411C(0, &qword_1003A26E0, SPRLogger_ptr);
  static SPRLogger.xpcServer.getter();
  v109 = v21;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "***** Starting daemon softposreaderd *****", v24, 2u);
  }

  sub_10000411C(0, &qword_10039D7D8, OS_dispatch_queue_ptr);
  (*(v16 + 104))(p_type, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v15);
  (*(v11 + 104))(v14, enum case for DispatchQoS.QoSClass.default(_:), v10);
  static OS_dispatch_queue.global(qos:)();
  (*(v11 + 8))(v14, v10);
  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_1000097B4(&unk_10039E310, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100004074(&qword_10039D7E0, &unk_1002BDC40);
  sub_10000BEC0(&qword_10039E320, &qword_10039D7E0, &unk_1002BDC40);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  qword_1003A6910 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  if (!_set_user_dir_suffix())
  {
    goto LABEL_57;
  }

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    aBlock = v28;
    *v27 = 136315138;
    v29 = NSTemporaryDirectory();
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    v33 = sub_100008F6C(v30, v32, &aBlock);

    *(v27 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v25, v26, "Using temporary directory: %s", v27, 0xCu);
    sub_10000959C(v28);
  }

  v34 = [objc_opt_self() machServiceName];
  if (!v34)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = String._bridgeToObjectiveC()();
  }

  v35 = [objc_allocWithZone(NSXPCListener) initWithMachServiceName:v34];

  qword_1003A6918 = v35;
  qword_1003A6920 = [objc_allocWithZone(type metadata accessor for SPRRemoteService()) init];
  [qword_1003A6918 setDelegate:qword_1003A6920];
  v36 = qword_1003A6910;
  v114 = sub_100002F44;
  v115 = 0;
  aBlock = _NSConcreteStackBlock;
  v111 = 1107296256;
  v112 = sub_100003758;
  v113 = &unk_10037F028;
  v37 = _Block_copy(&aBlock);
  v38 = v36;
  xpc_set_event_stream_handler("com.apple.notifyd.matching", v38, v37);
  _Block_release(v37);

  sub_10000411C(0, &qword_10039D7E8, OS_dispatch_source_ptr);
  v39 = qword_1003A6910;
  v40 = static OS_dispatch_source.makeSignalSource(signal:queue:)();

  qword_1003A6928 = v40;
  swift_getObjectType();
  v114 = sub_1000037B8;
  v115 = 0;
  aBlock = _NSConcreteStackBlock;
  v111 = 1107296256;
  v112 = sub_100003974;
  v113 = &unk_10037F050;
  v41 = _Block_copy(&aBlock);
  v42 = v108;
  static DispatchQoS.unspecified.getter();
  v43 = v105;
  sub_1000039BC();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v41);
  (*(v106 + 8))(v43, v107);
  (*(v103 + 8))(v42, v104);
  swift_getObjectType();
  OS_dispatch_source.activate()();
  if (qword_10039D720 != -1)
  {
    swift_once();
  }

  v44 = (static PrimaryAccountWatcher.shared + OBJC_IVAR____TtC14softposreaderd21PrimaryAccountWatcher_changeHandler);
  v45 = *(static PrimaryAccountWatcher.shared + OBJC_IVAR____TtC14softposreaderd21PrimaryAccountWatcher_changeHandler);
  v46 = *(static PrimaryAccountWatcher.shared + OBJC_IVAR____TtC14softposreaderd21PrimaryAccountWatcher_changeHandler + 8);
  *v44 = sub_100003A94;
  v44[1] = 0;
  sub_1000048A0(v45);
  if (qword_10039D708 != -1)
  {
    swift_once();
  }

  v47 = static GlobalState.shared;
  v48 = *(static GlobalState.shared + 88);

  [v48 lock];
  while (*(v47 + 104) > 0 || *(v47 + 112) == 1)
  {
    [*(v47 + 88) wait];
  }

  v49 = *(v47 + 96);
  v50 = __OFADD__(v49, 1);
  v51 = v49 + 1;
  if (v50)
  {
    __break(1u);
  }

  else
  {
    *(v47 + 96) = v51;
    p_type = &stru_100399FF0.type;
    [*(v47 + 88) unlock];
    v52 = *(v47 + 57);
    [*(v47 + 88) lock];
    v53 = *(v47 + 96);
    v50 = __OFSUB__(v53, 1);
    v54 = v53 - 1;
    if (!v50)
    {
      *(v47 + 96) = v54;
      if (!v54)
      {
        [*(v47 + 88) broadcast];
      }

      [*(v47 + 88) unlock];

      if (v52)
      {
        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          *v57 = 0;
          _os_log_impl(&_mh_execute_header, v55, v56, "PAN present in NVM upon softposreaderd launch. Clearing PAN now.", v57, 2u);
        }

        v58 = objc_opt_self();
        v59 = [v58 sharedHardwareManager];
        v60 = [v59 getHwSupport];

        if (v60 == 2)
        {
          v61 = [v58 sharedHardwareManager];
          static Double.longWait.getter();
          aBlock = 0;
          v43 = [v61 startSecureElementManagerSessionWithTimeout:&aBlock error:?];

          if (!v43)
          {
            v62 = aBlock;
            _convertNSErrorToError(_:)();

            swift_willThrow();
            swift_errorRetain();
            v76 = Logger.logObject.getter();
            v77 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v76, v77))
            {
              v79 = swift_slowAlloc();
              v80 = swift_slowAlloc();
              *v79 = 138412290;
              swift_errorRetain();
              v81 = _swift_stdlib_bridgeErrorToNSError();
              *(v79 + 4) = v81;
              *v80 = v81;
              _os_log_impl(&_mh_execute_header, v76, v77, "Failed to clear PAN: %@", v79, 0xCu);
              sub_10000BD44(v80, &unk_10039E220, &qword_1002C3D60);
            }

            else
            {
            }

            goto LABEL_41;
          }

          v66 = qword_10039D3D0;
          v67 = aBlock;
          if (v66 == -1)
          {
            goto LABEL_31;
          }

          goto LABEL_54;
        }

        v63 = Logger.logObject.getter();
        v64 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          *v65 = 0;
          _os_log_impl(&_mh_execute_header, v63, v64, "Failed to clear PAN: NFC disabled", v65, 2u);
        }
      }

LABEL_41:
      type metadata accessor for Configurator();
      sub_100050E24(0);
      _s14softposreaderd8CALoggerC20registerBGSystemTask5queueySo012OS_dispatch_F0C_tFZ_0(qword_1003A6910);
      v113 = &type metadata for SPRFeatures;
      v82 = sub_1000094A0();
      v114 = v82;
      LOBYTE(aBlock) = 0;
      v83 = isFeatureEnabled(_:)();
      sub_10000959C(&aBlock);
      if (v83)
      {
        v84 = Logger.logObject.getter();
        v85 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v84, v85))
        {
          v86 = swift_slowAlloc();
          *v86 = 0;
          _os_log_impl(&_mh_execute_header, v84, v85, "ManualPostCADaily (Feature Flag) is Enabled", v86, 2u);
        }

        v87 = CFNotificationCenterGetDarwinNotifyCenter();
        v88 = String._bridgeToObjectiveC()();

        CFNotificationCenterAddObserver(v87, 0, sub_100004450, v88, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

        v89 = CFNotificationCenterGetDarwinNotifyCenter();
        v90 = String._bridgeToObjectiveC()();

        CFNotificationCenterAddObserver(v89, 0, sub_100004450, v90, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

        swift_arrayDestroy();
      }

      v113 = &type metadata for SPRFeatures;
      v114 = v82;
      LOBYTE(aBlock) = 1;
      v91 = isFeatureEnabled(_:)();
      sub_10000959C(&aBlock);
      if (v91)
      {
        v92 = Logger.logObject.getter();
        v93 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v92, v93))
        {
          v94 = swift_slowAlloc();
          *v94 = 0;
          _os_log_impl(&_mh_execute_header, v92, v93, "ManualSendMonitoringLogs (Feature Flag) is Enabled", v94, 2u);
        }

        v95 = CFNotificationCenterGetDarwinNotifyCenter();
        v96 = String._bridgeToObjectiveC()();
        CFNotificationCenterAddObserver(v95, 0, sub_100004780, v96, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      }

      v97 = Logger.logObject.getter();
      v98 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        *v99 = 0;
        _os_log_impl(&_mh_execute_header, v97, v98, "softposreaderd Ready to accept connections", v99, 2u);
      }

      [qword_1003A6918 resume];
      dispatch_main();
    }
  }

  __break(1u);
LABEL_54:
  swift_once();
LABEL_31:
  v68 = AID_PIN_APPLET;
  v69 = *algn_1003A6AB8;
  sub_1000094F4(AID_PIN_APPLET, *algn_1003A6AB8);
  NFSecureElementManagerSession.select(_:)(v68, v69);
  sub_100009548(v68, v69);
  sub_100003AEC(sub_10009FAC0);
  v70 = static GlobalState.shared;
  v71 = *(static GlobalState.shared + 88);

  [v71 lock];
  v72 = *(v70 + 104);
  v50 = __OFADD__(v72, 1);
  v73 = v72 + 1;
  if (v50)
  {
    __break(1u);
  }

  else
  {
    *(v70 + 104) = v73;
    while (*(v70 + 96) > 0 || *(v70 + 112) == 1)
    {
      [*(v70 + 88) wait];
    }

    v74 = *(v70 + 104);
    v50 = __OFSUB__(v74, 1);
    v75 = v74 - 1;
    if (!v50)
    {
      *(v70 + 104) = v75;
      *(v70 + 112) = 1;
      [*(v70 + 88) p_type[493]];
      *(v70 + 57) = 0;
      sub_100173040();
      [*(v70 + 88) lock];
      *(v70 + 112) = 0;
      [*(v70 + 88) broadcast];
      [*(v70 + 88) p_type[493]];

      [v43 endSession];

      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_57:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_100002F44(void *a1)
{
  v2 = type metadata accessor for Logger();
  sub_10000403C(v2, &unk_10039D2C0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "handler for streamed event: com.apple.notifyd.matching", v5, 2u);
  }

  if (!TMRTCResetNotification)
  {
    __break(1u);
    goto LABEL_54;
  }

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  if (!xpc_dictionary_get_string(a1, _xpc_event_key_name))
  {
LABEL_54:
    __break(1u);
    return;
  }

  v9 = String.init(cString:)();
  v11 = v10;
  v12 = v9 == 0xD00000000000001ALL && 0x8000000100346640 == v10;
  if (v12 || (v13 = v9, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Received MFD event notification", v16, 2u);
    }

    if (qword_10039D708 != -1)
    {
      swift_once();
    }

    v17 = static GlobalState.shared;
    [*(static GlobalState.shared + 88) lock];
    v18 = *(v17 + 104);
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      __break(1u);
    }

    else
    {
      *(v17 + 104) = v20;
      while (*(v17 + 96) > 0 || *(v17 + 112) == 1)
      {
        [*(v17 + 88) wait];
      }

      v21 = *(v17 + 104);
      v19 = __OFSUB__(v21, 1);
      v22 = v21 - 1;
      if (!v19)
      {
        *(v17 + 104) = v22;
        *(v17 + 112) = 1;
        [*(v17 + 88) unlock];
        v23 = *(v17 + 52);
        v24 = *(v17 + 56);
        TMGetKernelMonotonicClock();
        if (v24)
        {
          v26 = 0;
        }

        else
        {
          v26 = v23;
        }

        *(v17 + 32) = v26;
        *(v17 + 40) = v25;
        *(v17 + 48) = 0;
        sub_100173040();
        [*(v17 + 88) lock];
        *(v17 + 112) = 0;
        [*(v17 + 88) broadcast];
        [*(v17 + 88) unlock];
        type metadata accessor for Configurator();
        v27 = 1;
LABEL_24:
        sub_100050E24(v27);
        return;
      }
    }

    __break(1u);
LABEL_52:
    swift_once();
LABEL_38:
    GlobalState.receiveTMRTCResetNotification()();
    if (qword_10039D5E0 != -1)
    {
      swift_once();
    }

    v33 = *(static Primer.shared + 24);

    sub_1000E31EC(v47);

    v34 = v48;
    v35 = v49;
    v36 = sub_10000BE18(v47, v48);
    v50[3] = v34;
    v37 = *(v35 + 8);
    v50[4] = v37;
    v38 = sub_10000BE5C(v50);
    (*(*(v34 - 8) + 16))(v38, v36, v34);
    sub_10000959C(v47);
    (*(v37 + 24))(v34, v37);
    sub_10000959C(v50);
    return;
  }

  if (v6 == v13 && v8 == v11)
  {

    goto LABEL_35;
  }

  v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v29)
  {
LABEL_35:

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Received TM RTC reset notification", v32, 2u);
    }

    if (qword_10039D708 == -1)
    {
      goto LABEL_38;
    }

    goto LABEL_52;
  }

  if (v13 == 0xD00000000000002CLL && 0x8000000100346660 == v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "Received ApplicationsChanged notification", v41, 2u);
    }

    type metadata accessor for Configurator();
    v27 = 0;
    goto LABEL_24;
  }

  oslog = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v50[0] = v44;
    *v43 = 136315138;
    v45 = sub_100008F6C(v13, v11, v50);

    *(v43 + 4) = v45;
    _os_log_impl(&_mh_execute_header, oslog, v42, "Ignoring unexpected event: %s", v43, 0xCu);
    sub_10000959C(v44);
  }

  else
  {
  }
}

uint64_t sub_100003758(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_1000037E8(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Logger();
  sub_10000403C(v4, &unk_10039D2C0);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100008F6C(a1, a2, &v11);
    _os_log_impl(&_mh_execute_header, v5, v6, "Stopping softposreaderd: %s", v7, 0xCu);
    sub_10000959C(v8);
  }

  [qword_1003A6918 invalidate];
  if (qword_10039D768 != -1)
  {
    swift_once();
  }

  v9 = static Terminator.shared;
  *(static Terminator.shared + 16) = 1;
  v10 = *(v9 + 24);
  os_unfair_lock_lock(v10 + 8);
  sub_100189990(&v10[4]);
  os_unfair_lock_unlock(v10 + 8);
  usleep(0x7A120u);
  _exit(0);
}

uint64_t sub_100003974(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_1000039BC()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_1000097B4(&qword_10039E2A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100004074(&qword_10039DD40, &qword_1002BFEC0);
  sub_10000BEC0(&qword_10039E2B0, &qword_10039DD40, &qword_1002BFEC0);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

id sub_100003AEC(void (*a1)(uint64_t *__return_ptr, unint64_t, void, void, void, uint64_t))
{
  v34 = 62592;
  v35 = 0;
  v36 = xmmword_1002BDC30;
  v37 = 0;
  if (qword_10039D4B8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000403C(v2, qword_1003A1240);
  sub_10000BC94(&v34, v32);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  sub_10000BCF0(&v34);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v32[0] = v30;
    *v5 = 136315138;
    v6 = sub_100170F04(v34 | (v35 << 32), v36, *(&v36 + 1), v37);
    v8 = v7;
    v9 = Data.hexString()();
    sub_100009548(v6, v8);
    v10 = sub_100008F6C(v9._countAndFlagsBits, v9._object, v32);

    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "C-APDU (CANCEL): %s", v5, 0xCu);
    sub_10000959C(v30);
  }

  a1(v32, v34 | (v35 << 32), v36, *(&v36 + 1), v37, 1);
  if (v32[1] >> 60 == 15)
  {
    return sub_10000BCF0(&v34);
  }

  v12 = v33;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v31 = v16;
    *v15 = 136315138;
    v17 = Data.hexString()();
    v18 = sub_100008F6C(v17._countAndFlagsBits, v17._object, &v31);

    *(v15 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v13, v14, "R-APDU: %s", v15, 0xCu);
    sub_10000959C(v16);
  }

  v19 = Logger.logObject.getter();
  if (v12 != 36864)
  {
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v19, v28, "failed to cleared persistent storage in SE", v29, 2u);
    }

    sub_10000BCF0(&v34);

    return sub_10000BD44(v32, &qword_10039E2C0, &unk_1002BFEB0);
  }

  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "cleared persistent storage in SE", v21, 2u);
  }

  if (qword_10039D708 != -1)
  {
    swift_once();
  }

  v22 = static GlobalState.shared;
  result = [*(static GlobalState.shared + 88) lock];
  v23 = *(v22 + 104);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v22 + 104) = v25;
    while (*(v22 + 96) > 0 || *(v22 + 112) == 1)
    {
      result = [*(v22 + 88) wait];
    }

    v26 = *(v22 + 104);
    v24 = __OFSUB__(v26, 1);
    v27 = v26 - 1;
    if (!v24)
    {
      *(v22 + 104) = v27;
      *(v22 + 112) = 1;
      [*(v22 + 88) unlock];
      *(v22 + 57) = 0;
      sub_100173040();
      [*(v22 + 88) lock];
      *(v22 + 112) = 0;
      [*(v22 + 88) broadcast];
      [*(v22 + 88) unlock];
      sub_10000BCF0(&v34);
      return sub_10000BD44(v32, &qword_10039E2C0, &unk_1002BFEB0);
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_100003FD8(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_10000403C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100004074(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000040BC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100004104(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000411C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void sub_100004164(void *a1)
{
  v2 = type metadata accessor for Logger();
  sub_10000403C(v2, &unk_10039D2C0);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = a1;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "softposreaderd received CFNotification %@,\nsending CoreAnalytics daily event now", v6, 0xCu);
    sub_10000BD44(v7, &unk_10039E220, &qword_1002C3D60);
  }

  v9 = String._bridgeToObjectiveC()();
  v12 = v9;
  if (!a1)
  {

    return;
  }

  type metadata accessor for CFNotificationName(0);
  sub_1000097B4(&qword_10039DD38, type metadata accessor for CFNotificationName);
  v10 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v10)
  {
    if (qword_10039D300 != -1)
    {
      swift_once();
    }

    swift_beginAccess();

    sub_1000297A8();
  }

  else
  {
    v13 = String._bridgeToObjectiveC()();
    v11 = dispatch thunk of static Equatable.== infix(_:_:)();

    if ((v11 & 1) == 0)
    {
      return;
    }

    if (qword_10039D308 != -1)
    {
      swift_once();
    }

    swift_beginAccess();

    sub_100029CF4();
  }
}

void sub_100004450(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v4 = objc_autoreleasePoolPush();
  sub_100004164(a3);
  objc_autoreleasePoolPop(v4);
}

void sub_1000044B8()
{
  v1 = type metadata accessor for Logger();
  sub_10000403C(v1, &unk_10039D2C0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Received notification to send the monitoring logs now", v4, 2u);
  }

  if (qword_10039D5E0 != -1)
  {
    swift_once();
  }

  v5 = *(static Primer.shared + 24);

  sub_1000E31EC(v16);
  if (v0)
  {

    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&_mh_execute_header, v11, v12, "Error when sending logs: %@", v13, 0xCu);
      sub_10000BD44(v14, &unk_10039E220, &qword_1002C3D60);
    }

    else
    {
    }
  }

  else
  {

    v6 = v17;
    v7 = v18;
    v8 = sub_10000BE18(v16, v17);
    v19[3] = v6;
    v9 = *(v7 + 8);
    v19[4] = v9;
    v10 = sub_10000BE5C(v19);
    (*(*(v6 - 8) + 16))(v10, v8, v6);
    sub_10000959C(v16);
    (*(v9 + 8))(v6, v9);
    sub_10000959C(v19);
  }
}

void sub_100004780()
{
  v0 = objc_autoreleasePoolPush();
  sub_1000044B8();

  objc_autoreleasePoolPop(v0);
}

uint64_t variable initialization expression of CADailyLogger.lockedState()
{
  sub_100004074(&qword_10039D7F8, &qword_1002BDC50);
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t variable initialization expression of Primer.lockedAttachCount()
{
  sub_100004074(&qword_10039D800, &qword_1002BDC58);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = 0;
  return result;
}

id variable initialization expression of GlobalState.condition()
{
  v0 = objc_allocWithZone(NSCondition);

  return [v0 init];
}

uint64_t sub_1000048A0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000048B0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for CFString(0);
  sub_1000097B4(&qword_10039DF60, type metadata accessor for CFString);
  return static _CFObject.== infix(_:_:)() & 1;
}

uint64_t sub_100004938(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DC40, type metadata accessor for ORError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000049A4(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DC40, type metadata accessor for ORError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100004A14(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DC70, type metadata accessor for ORError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

void *sub_100004AE8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_100004B14@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_100004BE4(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DBD0, type metadata accessor for ConfigurationError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100004C50(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DBD0, type metadata accessor for ConfigurationError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100004CBC(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DC00, type metadata accessor for ConfigurationError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100004D28(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039D9D8, type metadata accessor for ReadError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100004D94(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039D9D8, type metadata accessor for ReadError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100004E00(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DA08, type metadata accessor for ReadError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100004E6C(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039D960, type metadata accessor for SecurityError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100004ED8(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039D960, type metadata accessor for SecurityError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100004F44(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039D998, type metadata accessor for SecurityError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100004FB0(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DF20, type metadata accessor for SPRHTTPError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10000501C(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DF20, type metadata accessor for SPRHTTPError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100005088(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DF50, type metadata accessor for SPRHTTPError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100005140(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DB60, type metadata accessor for JSONError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000051AC(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DB60, type metadata accessor for JSONError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100005218(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DB90, type metadata accessor for JSONError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

BOOL sub_1000052A0(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_1000052F8(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DAF0, type metadata accessor for PersistenceError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100005364(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DAF0, type metadata accessor for PersistenceError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000053D0(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DB20, type metadata accessor for PersistenceError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

Swift::Int sub_10000543C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100005484()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_1000054D4(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DAB8, type metadata accessor for PINAppletProxyError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100005540(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DAB8, type metadata accessor for PINAppletProxyError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000055AC(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DAE8, type metadata accessor for PINAppletProxyError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100005618(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DB28, type metadata accessor for MonitorError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100005684(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DB28, type metadata accessor for MonitorError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000056F0(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DB58, type metadata accessor for MonitorError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_10000575C(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DA80, type metadata accessor for PINControllerError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000057C8(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DA80, type metadata accessor for PINControllerError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100005834(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DAB0, type metadata accessor for PINControllerError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1000058A0(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100005918(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100005998@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_1000059DC(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DB98, type metadata accessor for DepotError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100005A48(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DB98, type metadata accessor for DepotError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100005AB4(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DBC8, type metadata accessor for DepotError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100005B20()
{
  sub_1000097B4(&qword_10039DA08, type metadata accessor for ReadError);

  return static _BridgedStoredNSError.== infix(_:_:)();
}

void *sub_100005BA4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100005BC8(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039D9A0, type metadata accessor for SecureChannelError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100005C34(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039D9A0, type metadata accessor for SecureChannelError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100005CA0(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039D9D0, type metadata accessor for SecureChannelError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100005D0C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t sub_100005D78(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

id sub_100005DE4@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

uint64_t sub_100005E00()
{
  sub_1000097B4(&qword_10039DC70, type metadata accessor for ORError);

  return _BridgedStoredNSError.errorCode.getter();
}

uint64_t sub_100005E6C(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DC70, type metadata accessor for ORError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100005ED8(void *a1, uint64_t a2)
{
  v4 = sub_1000097B4(&qword_10039DC70, type metadata accessor for ORError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100005F8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000097B4(&qword_10039DC70, type metadata accessor for ORError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_10000600C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_10000C9D0(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_10000604C()
{
  sub_1000097B4(&qword_10039DC00, type metadata accessor for ConfigurationError);

  return _BridgedStoredNSError.errorCode.getter();
}

uint64_t sub_1000060B8(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DC00, type metadata accessor for ConfigurationError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100006124(void *a1, uint64_t a2)
{
  v4 = sub_1000097B4(&qword_10039DC00, type metadata accessor for ConfigurationError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1000061B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000097B4(&qword_10039DC00, type metadata accessor for ConfigurationError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_100006240()
{
  sub_1000097B4(&qword_10039DA08, type metadata accessor for ReadError);

  return _BridgedStoredNSError.errorCode.getter();
}

uint64_t sub_1000062AC(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DA08, type metadata accessor for ReadError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100006318()
{
  sub_1000097B4(&qword_10039D998, type metadata accessor for SecurityError);

  return _BridgedStoredNSError.errorCode.getter();
}

uint64_t sub_100006384(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039D998, type metadata accessor for SecurityError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1000063F0(void *a1, uint64_t a2)
{
  v4 = sub_1000097B4(&qword_10039D998, type metadata accessor for SecurityError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100006480(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000097B4(&qword_10039D998, type metadata accessor for SecurityError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000064FC(void *a1, uint64_t a2)
{
  v4 = sub_1000097B4(&qword_10039DA08, type metadata accessor for ReadError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_10000658C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000097B4(&qword_10039DA08, type metadata accessor for ReadError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_100006618()
{
  sub_1000097B4(&qword_10039DF50, type metadata accessor for SPRHTTPError);

  return _BridgedStoredNSError.errorCode.getter();
}

uint64_t sub_100006684(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DF50, type metadata accessor for SPRHTTPError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1000066F0(void *a1, uint64_t a2)
{
  v4 = sub_1000097B4(&qword_10039DF50, type metadata accessor for SPRHTTPError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100006780(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000097B4(&qword_10039DF50, type metadata accessor for SPRHTTPError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000067FC()
{
  sub_1000097B4(&qword_10039D9D0, type metadata accessor for SecureChannelError);

  return _BridgedStoredNSError.errorCode.getter();
}

uint64_t sub_100006868(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039D9D0, type metadata accessor for SecureChannelError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1000068D4(void *a1, uint64_t a2)
{
  v4 = sub_1000097B4(&qword_10039D9D0, type metadata accessor for SecureChannelError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100006964(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000097B4(&qword_10039D9D0, type metadata accessor for SecureChannelError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000069E4()
{
  sub_1000097B4(&qword_10039DC38, type metadata accessor for AttestationError);

  return _BridgedStoredNSError.errorCode.getter();
}

uint64_t sub_100006A50(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DC38, type metadata accessor for AttestationError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100006ABC(void *a1, uint64_t a2)
{
  v4 = sub_1000097B4(&qword_10039DC38, type metadata accessor for AttestationError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100006B4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000097B4(&qword_10039DC38, type metadata accessor for AttestationError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_100006BC8()
{
  sub_1000097B4(&qword_10039DBC8, type metadata accessor for DepotError);

  return _BridgedStoredNSError.errorCode.getter();
}

uint64_t sub_100006C34(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DBC8, type metadata accessor for DepotError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100006CA0(void *a1, uint64_t a2)
{
  v4 = sub_1000097B4(&qword_10039DBC8, type metadata accessor for DepotError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100006D30(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000097B4(&qword_10039DBC8, type metadata accessor for DepotError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_100006DAC()
{
  sub_1000097B4(&qword_10039DB90, type metadata accessor for JSONError);

  return _BridgedStoredNSError.errorCode.getter();
}

uint64_t sub_100006E18(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DB90, type metadata accessor for JSONError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100006E84(void *a1, uint64_t a2)
{
  v4 = sub_1000097B4(&qword_10039DB90, type metadata accessor for JSONError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100006F14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000097B4(&qword_10039DB90, type metadata accessor for JSONError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_100006F90()
{
  sub_1000097B4(&qword_10039DB58, type metadata accessor for MonitorError);

  return _BridgedStoredNSError.errorCode.getter();
}

uint64_t sub_100006FFC(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DB58, type metadata accessor for MonitorError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100007068(void *a1, uint64_t a2)
{
  v4 = sub_1000097B4(&qword_10039DB58, type metadata accessor for MonitorError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1000070F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000097B4(&qword_10039DB58, type metadata accessor for MonitorError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_100007174()
{
  sub_1000097B4(&qword_10039DB20, type metadata accessor for PersistenceError);

  return _BridgedStoredNSError.errorCode.getter();
}

uint64_t sub_1000071E0(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DB20, type metadata accessor for PersistenceError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_10000724C(void *a1, uint64_t a2)
{
  v4 = sub_1000097B4(&qword_10039DB20, type metadata accessor for PersistenceError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1000072DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000097B4(&qword_10039DB20, type metadata accessor for PersistenceError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_100007358()
{
  sub_1000097B4(&qword_10039DAE8, type metadata accessor for PINAppletProxyError);

  return _BridgedStoredNSError.errorCode.getter();
}

uint64_t sub_1000073C4(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DAE8, type metadata accessor for PINAppletProxyError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100007430(void *a1, uint64_t a2)
{
  v4 = sub_1000097B4(&qword_10039DAE8, type metadata accessor for PINAppletProxyError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1000074C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000097B4(&qword_10039DAE8, type metadata accessor for PINAppletProxyError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_10000753C()
{
  sub_1000097B4(&qword_10039DAB0, type metadata accessor for PINControllerError);

  return _BridgedStoredNSError.errorCode.getter();
}

uint64_t sub_1000075A8(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DAB0, type metadata accessor for PINControllerError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100007614(void *a1, uint64_t a2)
{
  v4 = sub_1000097B4(&qword_10039DAB0, type metadata accessor for PINControllerError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1000076A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000097B4(&qword_10039DAB0, type metadata accessor for PINControllerError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_100007720()
{
  sub_1000097B4(&qword_10039DA78, type metadata accessor for PrimerError);

  return _BridgedStoredNSError.errorCode.getter();
}

uint64_t sub_10000778C(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DA78, type metadata accessor for PrimerError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1000077F8(void *a1, uint64_t a2)
{
  v4 = sub_1000097B4(&qword_10039DA78, type metadata accessor for PrimerError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100007888(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000097B4(&qword_10039DA78, type metadata accessor for PrimerError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_100007904()
{
  sub_1000097B4(&qword_10039DA40, type metadata accessor for ProviderError);

  return _BridgedStoredNSError.errorCode.getter();
}

uint64_t sub_100007970(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DA40, type metadata accessor for ProviderError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1000079DC(void *a1, uint64_t a2)
{
  v4 = sub_1000097B4(&qword_10039DA40, type metadata accessor for ProviderError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100007A6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000097B4(&qword_10039DA40, type metadata accessor for ProviderError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_100007AE8()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100007B4C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_100007B78(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DF68, type metadata accessor for FileProtectionType);
  v3 = sub_1000097B4(&qword_10039DF70, type metadata accessor for FileProtectionType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100007C34()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hashValue.getter();
}

uint64_t sub_100007C80()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hash(into:)();
}

uint64_t sub_100007CF0()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hashValue.getter();
}

uint64_t sub_100007D3C()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hash(into:)();
}

uint64_t sub_100007DAC()
{
  sub_1000097B4(&qword_10039DC70, type metadata accessor for ORError);

  return static _BridgedStoredNSError.== infix(_:_:)();
}

uint64_t sub_100007E30()
{
  sub_1000097B4(&qword_10039DC00, type metadata accessor for ConfigurationError);

  return static _BridgedStoredNSError.== infix(_:_:)();
}

uint64_t sub_100007EB4()
{
  sub_1000097B4(&qword_10039D998, type metadata accessor for SecurityError);

  return static _BridgedStoredNSError.== infix(_:_:)();
}

uint64_t sub_100007F38(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DF88, type metadata accessor for SPRConfigurationStatusKey);
  v3 = sub_1000097B4(&qword_10039DF90, type metadata accessor for SPRConfigurationStatusKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100007FF4()
{
  sub_1000097B4(&qword_10039DF50, type metadata accessor for SPRHTTPError);

  return static _BridgedStoredNSError.== infix(_:_:)();
}

uint64_t sub_100008078()
{
  sub_1000097B4(&qword_10039D9D0, type metadata accessor for SecureChannelError);

  return static _BridgedStoredNSError.== infix(_:_:)();
}

uint64_t sub_1000080FC(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DF78, type metadata accessor for FileAttributeKey);
  v3 = sub_1000097B4(&qword_10039DF80, type metadata accessor for FileAttributeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000081B8(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DC08, type metadata accessor for AttestationError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100008224(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DC08, type metadata accessor for AttestationError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100008290(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DC38, type metadata accessor for AttestationError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1000082FC()
{
  sub_1000097B4(&qword_10039DC38, type metadata accessor for AttestationError);

  return static _BridgedStoredNSError.== infix(_:_:)();
}

uint64_t sub_100008380()
{
  sub_1000097B4(&qword_10039DBC8, type metadata accessor for DepotError);

  return static _BridgedStoredNSError.== infix(_:_:)();
}

uint64_t sub_100008404()
{
  sub_1000097B4(&qword_10039DB90, type metadata accessor for JSONError);

  return static _BridgedStoredNSError.== infix(_:_:)();
}

uint64_t sub_100008488()
{
  sub_1000097B4(&qword_10039DB58, type metadata accessor for MonitorError);

  return static _BridgedStoredNSError.== infix(_:_:)();
}

uint64_t sub_10000850C()
{
  sub_1000097B4(&qword_10039DB20, type metadata accessor for PersistenceError);

  return static _BridgedStoredNSError.== infix(_:_:)();
}

uint64_t sub_100008590()
{
  sub_1000097B4(&qword_10039DAE8, type metadata accessor for PINAppletProxyError);

  return static _BridgedStoredNSError.== infix(_:_:)();
}

uint64_t sub_100008614()
{
  sub_1000097B4(&qword_10039DAB0, type metadata accessor for PINControllerError);

  return static _BridgedStoredNSError.== infix(_:_:)();
}

uint64_t sub_100008698(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DA48, type metadata accessor for PrimerError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100008704(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DA48, type metadata accessor for PrimerError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100008770(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DA78, type metadata accessor for PrimerError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1000087DC()
{
  sub_1000097B4(&qword_10039DA78, type metadata accessor for PrimerError);

  return static _BridgedStoredNSError.== infix(_:_:)();
}

uint64_t sub_100008860(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DA10, type metadata accessor for ProviderError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000088CC(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DA10, type metadata accessor for ProviderError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100008938(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DA40, type metadata accessor for ProviderError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1000089A4()
{
  sub_1000097B4(&qword_10039DA40, type metadata accessor for ProviderError);

  return static _BridgedStoredNSError.== infix(_:_:)();
}

uint64_t sub_100008A28@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_100008A70(uint64_t a1)
{
  v2 = sub_1000097B4(&qword_10039DF98, type metadata accessor for Name);
  v3 = sub_1000097B4(&qword_10039DFA0, type metadata accessor for Name);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100008B2C()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hashValue.getter();
}

uint64_t sub_100008B78()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hash(into:)();
}

uint64_t sub_100008BE8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t sub_100008C54(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t sub_100008CC0()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hashValue.getter();
}

uint64_t sub_100008D0C()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hash(into:)();
}

Swift::Int sub_100008D7C()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100008DE0()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_100008E1C()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100008E70()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_100008EE4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t sub_100008F6C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100009038(v11, 0, 0, 1, a1, a2);
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
    sub_10000BDA4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000959C(v11);
  return v7;
}

unint64_t sub_100009038(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100009144(a5, a6);
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

char *sub_100009144(uint64_t a1, unint64_t a2)
{
  v4 = sub_100009190(a1, a2);
  sub_1000092C0(&off_10037B3D8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100009190(uint64_t a1, unint64_t a2)
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

  v6 = sub_100188274(v5, 0);
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
        v7 = sub_100188274(v10, 0);
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

uint64_t sub_1000092C0(uint64_t result)
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

  result = sub_1000093AC(result, v12, 1, v3);
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

char *sub_1000093AC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004074(&qword_10039E2E0, &qword_1002C1720);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

unint64_t sub_1000094A0()
{
  result = qword_10039D7F0;
  if (!qword_10039D7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039D7F0);
  }

  return result;
}

uint64_t sub_1000094F4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100009548(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10000959C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1000096FC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000971C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_1000097B4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10000A114()
{
  result = qword_10039D988;
  if (!qword_10039D988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039D988);
  }

  return result;
}

uint64_t sub_10000BD44(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100004074(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000BDA4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_10000BE18(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t *sub_10000BE5C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10000BEC0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000040BC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 sub_10000BF78(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_10000BF8C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000BFAC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 20) = v3;
  return result;
}

uint64_t sub_10000C9D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

void sub_10000CA1C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_10000CBFC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10000959C(a1);
  sub_10000CCE4(a2 + 16, a1);
  v6 = a1[3];
  v7 = a1[4];
  sub_10000BE18(a1, v6);
  result = (*(v7 + 16))(v6, v7);
  *a3 = result;
  return result;
}

uint64_t sub_10000CC80()
{
  sub_10000959C((v0 + 16));
  v1 = *(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_10000CCE4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_10000CD64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 24) = a3;
  *(a1 + 32) = a4;
  return &_swiftEmptyArrayStorage;
}

unint64_t sub_10000CD90(uint64_t a1)
{
  result = sub_10000CDB8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10000CDB8()
{
  result = qword_10039E080;
  if (!qword_10039E080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039E080);
  }

  return result;
}

uint64_t sub_10000CE0C()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_10039E090);
  sub_10000403C(v0, qword_10039E090);
  sub_10000411C(0, &qword_1003A26E0, SPRLogger_ptr);
  return static SPRLogger.orReader.getter();
}

uint64_t sub_10000CE78()
{
  v0 = type metadata accessor for OSSignposter();
  sub_100003FD8(v0, qword_10039E0A8);
  v1 = sub_10000403C(v0, qword_10039E0A8);
  if (qword_10039D750 != -1)
  {
    swift_once();
  }

  v2 = sub_10000403C(v0, qword_1003A6F08);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10000D1A4(void *a1, void *a2, uint64_t a3, uint64_t *a4, void *a5, char *a6, uint64_t a7)
{
  v8 = v7;
  v114 = a6;
  v112 = a2;
  v110 = a1;
  v117 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(*(v117 - 8) + 64);
  __chkstk_darwin(v117);
  v116 = v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for OS_dispatch_queue.Attributes();
  v15 = *(*(v115 - 8) + 64);
  __chkstk_darwin(v115);
  v113 = v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v17 = *(v111 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v111);
  v20 = v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v23 = OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_lockedState;
  sub_100004074(&unk_10039E300, &unk_1002C1730);
  v24 = swift_allocObject();
  *(v24 + 20) = 0;
  v101 = v23;
  *&v8[v23] = v24;
  *(v24 + 16) = 0;
  v8[OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation__isFinished] = 0;
  *&v8[OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_pollingState] = 0;
  v25 = OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_provisionReadResult;
  v26 = sub_100182BA0(_swiftEmptyArrayStorage);
  v103 = v25;
  *&v8[v25] = v26;
  v102 = OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_provisionError;
  *&v8[OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_provisionError] = 0;
  v97 = OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_nfSEReaderSession;
  v27 = v110;
  *&v8[OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_nfSEReaderSession] = v110;
  v99 = OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_delegate;
  *&v8[OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_delegate] = a3;
  v100 = OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_managedData;
  v107 = a4;
  sub_10000CCE4(a4, &v8[OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_managedData]);
  v28 = &v8[OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_completion];
  *v28 = v114;
  *(v28 + 1) = a7;
  v95 = v28;
  v96 = OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_parameters;
  v29 = v112;
  *&v8[OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_parameters] = v112;
  v98 = OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_analytics;
  *&v8[OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_analytics] = a5;
  v109 = sub_10000411C(0, &qword_10039D7D8, OS_dispatch_queue_ptr);
  v108 = "Data:analytics:completion:)";
  v105 = a3;
  swift_unknownObjectRetain();
  v106 = a7;

  v104 = v29;
  v112 = a5;

  v114 = v27;
  static DispatchQoS.userInteractive.getter();
  (*(v17 + 104))(v20, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v111);
  aBlock = _swiftEmptyArrayStorage;
  sub_10001A528(&unk_10039E310, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100004074(&qword_10039D7E0, &unk_1002BDC40);
  sub_10001A570(&qword_10039E320, &qword_10039D7E0, &unk_1002BDC40);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v30 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v115 = OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_queue;
  *&v8[OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_queue] = v30;
  v124 = nullsub_1;
  v125 = 0;
  aBlock = _NSConcreteStackBlock;
  v121 = 1107296256;
  v122 = sub_100003974;
  v123 = &unk_10037FCD8;
  _Block_copy(&aBlock);
  v119 = _swiftEmptyArrayStorage;
  sub_10001A528(&qword_10039E2A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100004074(&qword_10039DD40, &qword_1002BFEC0);
  sub_10001A570(&qword_10039E2B0, &qword_10039DD40, &qword_1002BFEC0);
  v31 = v8;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v32 = type metadata accessor for DispatchWorkItem();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  v35 = DispatchWorkItem.init(flags:block:)();
  v36 = OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_timeoutWorkItem;
  *&v8[OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_timeoutWorkItem] = v35;
  if (qword_10039D2E0 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for OSSignposter();
  sub_10000403C(v37, qword_10039E0A8);
  v38 = v114;
  sub_100186948("ttp-preprocessing", 17, 2, v38, 0xD000000000000017, 0x8000000100346DC0);

  sub_100004074(&qword_1003A5D40, &qword_1002C1740);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1002C1660;
  if (qword_10039D3E8 != -1)
  {
    swift_once();
  }

  v40 = *(&xmmword_1003A6AE0 + 1);
  *(v39 + 32) = xmmword_1003A6AE0;
  *(v39 + 40) = v40;

  isa = Array._bridgeToObjectiveC()().super.isa;

  aBlock = 0;
  v42 = [v38 selectApplets:isa error:&aBlock];

  if (!v42)
  {
    v58 = aBlock;
    v59 = _convertNSErrorToError(_:)();

    swift_willThrow();
    aBlock = v59;
    swift_errorRetain();
    sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    sub_10000411C(0, &qword_10039E2C8, NSError_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_23:

      sub_10003101C(&off_10037BC18);
      aBlock = 0;
      v121 = 0xE000000000000000;
      _StringGuts.grow(_:)(31);

      aBlock = 0xD00000000000001DLL;
      v121 = 0x8000000100346DE0;
      v119 = v59;
      swift_errorRetain();
      v70._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v70);

      sub_1000205C0(20002, aBlock, v121, 0);
      swift_willThrow();
      goto LABEL_24;
    }

    v60 = v36;
    v61 = v31;
    v62 = v119;
    v63 = [v119 domain];
    v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v66 = v65;

    if (v64 == String.init(cString:)() && v66 == v67)
    {

      v36 = v60;
    }

    else
    {
      v68 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v36 = v60;
      if ((v68 & 1) == 0)
      {
LABEL_22:

        v31 = v61;
        goto LABEL_23;
      }
    }

    v69 = [v62 code];
    if ((v69 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(v69))
    {
      if (v69 == 64)
      {

        sub_1000205C0(20005, 0xD000000000000051, 0x8000000100346E00, 0);
        swift_willThrow();

        swift_unknownObjectRelease();

        sub_10000959C(v107);

        v31 = v61;
LABEL_25:
        v71 = *&v31[v101];

        v72 = *&v31[v99];
        swift_unknownObjectRelease();
        v73 = *(v95 + 1);

        sub_10000959C(&v31[v100]);

        v74 = *&v31[v98];

        v75 = *&v31[v36];

        v76 = *&v31[v103];

        type metadata accessor for ProvisionReadOperation();
        swift_deallocPartialClassInstance();
        return;
      }

      goto LABEL_22;
    }

    __break(1u);
  }

  v43 = aBlock;
  v44 = v94[1];
  v45 = sub_10001A7B4();
  if (v44)
  {
    aBlock = 0;
    v121 = 0xE000000000000000;
    _StringGuts.grow(_:)(46);

    aBlock = 0xD00000000000002CLL;
    v121 = 0x8000000100346E60;
    v119 = v44;
    swift_errorRetain();
    sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    v57._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v57);

    sub_1000205C0(20003, aBlock, v121, 0);
    swift_willThrow();
LABEL_24:

    swift_unknownObjectRelease();

    sub_10000959C(v107);
    goto LABEL_25;
  }

  v47 = v46;
  v117 = v45;
  if (qword_10039D2D8 != -1)
  {
    swift_once();
  }

  v48 = type metadata accessor for Logger();
  sub_10000403C(v48, qword_10039E090);

  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v116 = v36;
    v52 = v51;
    v53 = v31;
    v54 = swift_slowAlloc();
    aBlock = v54;
    *v52 = 136315138;
    *(v52 + 4) = sub_100008F6C(v117, v47, &aBlock);
    _os_log_impl(&_mh_execute_header, v49, v50, "applet version: %s", v52, 0xCu);
    sub_10000959C(v54);
    v31 = v53;
  }

  v55 = sub_10000E180();
  v77 = v55;
  v78 = v56;
  sub_1000094F4(v55, v56);
  v79 = Logger.logObject.getter();
  v80 = static os_log_type_t.default.getter();
  sub_100009548(v77, v78);
  v81 = os_log_type_enabled(v79, v80);
  v116 = v77;
  if (v81)
  {
    v82 = swift_slowAlloc();
    v115 = v78;
    v83 = v82;
    v84 = swift_slowAlloc();
    aBlock = v84;
    *v83 = 136315138;
    v85 = Data.hexString()();
    v114 = v31;
    v86 = v80;
    v87 = sub_100008F6C(v85._countAndFlagsBits, v85._object, &aBlock);
    v31 = v114;

    *(v83 + 4) = v87;
    _os_log_impl(&_mh_execute_header, v79, v86, "Config ID: %s", v83, 0xCu);
    sub_10000959C(v84);

    v78 = v115;
  }

  sub_100004074(&qword_10039E238, &qword_1002C16D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002C1670;
  *(inited + 32) = 3;
  v89 = Data.hexString()();
  *(inited + 64) = &type metadata for String;
  *(inited + 40) = v89;
  *(inited + 72) = 15;
  *(inited + 104) = &type metadata for String;
  *(inited + 80) = v117;
  *(inited + 88) = v47;
  v90 = sub_100183344(inited);
  swift_setDeallocating();
  sub_100004074(&qword_10039E240, &unk_1002C16E0);
  v91 = swift_arrayDestroy();
  v92 = v112[7];
  __chkstk_darwin(v91);
  v94[-2] = v90;
  os_unfair_lock_lock((v92 + 32));
  sub_10001A76C((v92 + 16));
  os_unfair_lock_unlock((v92 + 32));
  sub_100009548(v116, v78);

  Operation = type metadata accessor for ProvisionReadOperation();
  v118.receiver = v31;
  v118.super_class = Operation;
  objc_msgSendSuper2(&v118, "init");

  swift_unknownObjectRelease();

  sub_10000959C(v107);
}

uint8_t *sub_10000E180()
{
  v1 = v0;
  v2 = type metadata accessor for TLVTag();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D4C0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  v8 = sub_10000403C(v7, qword_1003A1258);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v31[1] = v8;
    v34 = v12;
    *v11 = 136315394;
    sub_10000411C(0, &unk_10039E250, NFSecureElementReaderSession_ptr);
    v13 = _typeName(_:qualified:)();
    v33 = v2;
    v15 = sub_100008F6C(v13, v14, &v34);
    v32 = v3;
    v16 = v15;

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    v17 = showFunction(signature:_:)(0xD000000000000016, 0x8000000100346E90, _swiftEmptyArrayStorage);
    v19 = sub_100008F6C(v17, v18, &v34);
    v1 = v0;
    v2 = v33;

    *(v11 + 14) = v19;
    v3 = v32;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s.%s", v11, 0x16u);
    swift_arrayDestroy();
  }

  static TLVTag.provisionAppletConfigID.getter();
  v20 = v1;
  v21 = sub_10011E63C(v6);
  v23 = v22;
  if (v20)
  {
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    (*(v3 + 8))(v6, v2);
    sub_1000094F4(v21, v23);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    sub_100009548(v21, v23);
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v34 = v27;
      *v26 = 136446210;
      v28 = Data.hexString()();
      v29 = sub_100008F6C(v28._countAndFlagsBits, v28._object, &v34);

      *(v26 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v24, v25, "Provision Config ID: %{public}s", v26, 0xCu);
      sub_10000959C(v27);
    }
  }

  return v21;
}

NSObject *sub_10000E538(void *a1, uint64_t a2, uint64_t a3, void *a4, char *a5, uint64_t a6)
{
  v72 = a5;
  v75 = a6;
  v76 = a3;
  v77 = a2;
  v78 = a4;
  v79 = a1;
  v71 = type metadata accessor for OSSignpostError();
  v6 = *(v71 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v71);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for OSSignpostID();
  v10 = *(v80 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v80);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v69 - v16;
  __chkstk_darwin(v15);
  v19 = &v69 - v18;
  if (qword_10039D2D8 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_10000403C(v20, qword_10039E090);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  v23 = os_log_type_enabled(v21, v22);
  v74 = v14;
  v70 = v6;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v81[0] = swift_slowAlloc();
    *v24 = 136315394;
    v25 = _typeName(_:qualified:)();
    v27 = sub_100008F6C(v25, v26, v81);
    v69 = v17;
    v28 = v10;
    v29 = v9;
    v30 = v27;

    *(v24 + 4) = v30;
    *(v24 + 12) = 2080;
    v31 = showFunction(signature:_:)(0xD00000000000003BLL, 0x8000000100346D60, _swiftEmptyArrayStorage);
    v33 = sub_100008F6C(v31, v32, v81);

    *(v24 + 14) = v33;
    v9 = v29;
    v10 = v28;
    v17 = v69;
    _os_log_impl(&_mh_execute_header, v21, v22, "%s.%s", v24, 0x16u);
    swift_arrayDestroy();
  }

  if (qword_10039D2E0 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for OSSignposter();
  sub_10000403C(v34, qword_10039E0A8);
  static OSSignpostID.exclusive.getter();
  v35 = OSSignposter.logHandle.getter();
  v36 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v37 = v9;
    v38 = swift_slowAlloc();
    *v38 = 0;
    v39 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v35, v36, v39, "ttp-session-start", "begin pending session for ttp", v38, 2u);
    v9 = v37;
  }

  v40 = v80;
  (*(v10 + 16))(v17, v19, v80);
  v41 = type metadata accessor for OSSignpostIntervalState();
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  swift_allocObject();
  OSSignpostIntervalState.init(id:isOpen:)();
  v44 = *(v10 + 8);
  v44(v19, v40);
  v45 = [objc_opt_self() sharedHardwareManager];
  v81[0] = 0;
  v46 = [v45 startSecureElementReaderSessionAndReturnError:v81];

  if (v46)
  {
    v47 = v81[0];
    v48 = v46;
    v49 = OSSignposter.logHandle.getter();
    v50 = v74;
    OSSignpostIntervalState.signpostID.getter();
    v51 = static os_signpost_type_t.end.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {

      checkForErrorAndConsumeState(state:)();

      v53 = v70;
      v52 = v71;
      if ((*(v70 + 88))(v9, v71) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v54 = "[Error] Interval already ended";
      }

      else
      {
        (*(v53 + 8))(v9, v52);
        v54 = "end obtained session for ttp";
      }

      v57 = swift_slowAlloc();
      *v57 = 0;
      v58 = v74;
      v59 = OSSignpostID.rawValue.getter();
      v60 = v54;
      v50 = v58;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v49, v51, v59, "ttp-session-start", v60, v57, 2u);
    }

    v44(v50, v80);
    v56 = v76;
    sub_10000CCE4(v76, v81);
    v61 = objc_allocWithZone(type metadata accessor for ProvisionReadOperation());
    v62 = v77;
    swift_unknownObjectRetain();
    v63 = v78;

    v64 = v75;

    v65 = v79;
    v66 = v73;
    sub_10000D1A4(v48, v65, v62, v81, v63, v72, v64);
    if (!v66)
    {
      v49 = v67;
      sub_10000959C(v56);

      swift_unknownObjectRelease();

      return v49;
    }

    [v48 endSession];
    swift_willThrow();
  }

  else
  {
    v55 = v81[0];
    v49 = _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_1000205C0(20001, 0xD000000000000029, 0x8000000100346D30, 0);
    swift_willThrow();

    v56 = v76;
  }

  swift_unknownObjectRelease();

  sub_10000959C(v56);
  return v49;
}

id sub_10000ECA4()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_10039D2D8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000403C(v2, qword_10039E090);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v5 = 136315394;
    v6 = _typeName(_:qualified:)();
    v8 = sub_100008F6C(v6, v7, &v15);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v9 = showFunction(signature:_:)(0x74696E696564, 0xE600000000000000, _swiftEmptyArrayStorage);
    v11 = sub_100008F6C(v9, v10, &v15);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s.%s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v12 = *&v1[OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_timeoutWorkItem];

  dispatch thunk of DispatchWorkItem.cancel()();

  Operation = type metadata accessor for ProvisionReadOperation();
  v16.receiver = v1;
  v16.super_class = Operation;
  return objc_msgSendSuper2(&v16, "dealloc");
}

uint64_t sub_10000EF90()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v6 = *(v16 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v16);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Operation = type metadata accessor for ProvisionReadOperation();
  v19.receiver = v0;
  v19.super_class = Operation;
  objc_msgSendSuper2(&v19, "cancel");
  v15[1] = *&v0[OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_queue];
  v11 = swift_allocObject();
  *(v11 + 16) = v0;
  aBlock[4] = sub_10001A520;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003974;
  aBlock[3] = &unk_10037FCB0;
  v12 = _Block_copy(aBlock);
  v13 = v0;
  static DispatchQoS.unspecified.getter();
  v17 = _swiftEmptyArrayStorage;
  sub_10001A528(&qword_10039E2A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100004074(&qword_10039DD40, &qword_1002BFEC0);
  sub_10001A570(&qword_10039E2B0, &qword_10039DD40, &qword_1002BFEC0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v16);
}

uint64_t sub_10000F278(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_provisionError);
  if (v2)
  {
    v3 = qword_10039D2D8;
    v4 = v2;
    if (v3 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000403C(v5, qword_10039E090);
    v6 = v4;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v32[0] = v10;
      *v9 = 136315138;
      v33[0] = v6;
      type metadata accessor for ORError(0);
      v11 = v6;
      v12 = String.init<A>(describing:)();
      v14 = sub_100008F6C(v12, v13, v32);

      *(v9 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v7, v8, "%s", v9, 0xCu);
      sub_10000959C(v10);
    }

    else
    {
    }
  }

  if (qword_10039D2D8 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_10000403C(v15, qword_10039E090);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "ORReadOperation onUpdate(with: .cancelled)", v18, 2u);
  }

  v19 = *(a1 + OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_delegate);
  if (v19)
  {
    [v19 onUpdateWithEvent:2];
  }

  sub_10000F7CC();
  sub_10000CCE4(a1 + OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_managedData, v32);
  sub_10000BE18(v32, v32[3]);
  type metadata accessor for DefaultManagedDictionary();
  sub_10017A944();
  if (v33[3])
  {
    sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    if (swift_dynamicCast())
    {
      sub_10000959C(v32);
      v20 = *(a1 + OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_analytics);
      sub_100004074(&qword_10039E238, &qword_1002C16D8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1002C1660;
      *(inited + 32) = 7;
      v32[0] = v31;
      swift_errorRetain();
      type metadata accessor for ORError(0);
      if (swift_dynamicCast())
      {
        v22 = v33[0];
        sub_10001A528(&qword_10039DC70, type metadata accessor for ORError);
        _BridgedStoredNSError.code.getter();

        v23 = v31;
        v24 = &type metadata for Int;
      }

      else
      {
        v24 = 0;
        v23 = 0;
        *(inited + 48) = 0;
        *(inited + 56) = 0;
      }

      *(inited + 64) = v24;
      *(inited + 40) = v23;
      sub_100183344(inited);
      swift_setDeallocating();
      v26 = sub_10000BD44(inited + 32, &qword_10039E240, &unk_1002C16E0);
      v27 = *(v20 + 56);
      __chkstk_darwin(v26);
      os_unfair_lock_lock((v27 + 32));
      sub_10001A76C((v27 + 16));
      os_unfair_lock_unlock((v27 + 32));

      sub_100030E60();
      v28 = a1 + OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_completion;
      v29 = *(a1 + OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_completion);
      v30 = *(v28 + 8);
      swift_errorRetain();
      v29(0);
    }

    else
    {
      return sub_10000959C(v32);
    }
  }

  else
  {
    sub_10000959C(v32);
    return sub_10000BD44(v33, &qword_10039E248, &qword_1002C23D0);
  }
}

uint64_t sub_10000F7CC()
{
  swift_getObjectType();
  if (qword_10039D2D8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000403C(v1, qword_10039E090);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v4 = 136315394;
    v5 = _typeName(_:qualified:)();
    v7 = sub_100008F6C(v5, v6, &v15);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2080;
    v8 = showFunction(signature:_:)(0xD000000000000010, 0x8000000100346B20, _swiftEmptyArrayStorage);
    v10 = sub_100008F6C(v8, v9, &v15);

    *(v4 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s.%s", v4, 0x16u);
    swift_arrayDestroy();
  }

  if ([v0 isExecuting])
  {
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "ORReadOperation isExecuting", v13, 2u);
    }

    return sub_10000FA40(0);
  }

  else
  {

    return sub_10001093C();
  }
}

uint64_t sub_10000FA40(char a1)
{
  swift_getObjectType();
  if (qword_10039D2D8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000403C(v3, qword_10039E090);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v6 = 136315394;
    v7 = _typeName(_:qualified:)();
    v9 = sub_100008F6C(v7, v8, &v24);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    v10 = showFunction(signature:_:)(0xD00000000000001BLL, 0x8000000100346B00, _swiftEmptyArrayStorage);
    v12 = sub_100008F6C(v10, v11, &v24);

    *(v6 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s.%s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v13 = *(v1 + OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_nfSEReaderSession);
  v24 = 0;
  if ([v13 stop:&v24])
  {
    v14 = v24;
    if (a1)
    {
      return sub_10000FDAC();
    }

    return sub_10001093C();
  }

  v15 = v24;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  swift_errorRetain();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v24 = v19;
    *v18 = 136315138;
    swift_errorRetain();
    sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    v20 = String.init<A>(describing:)();
    v22 = sub_100008F6C(v20, v21, &v24);

    *(v18 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v16, v17, "Error from NFSecureElementReaderSession.stop(): %s", v18, 0xCu);
    sub_10000959C(v19);

    if ((a1 & 1) == 0)
    {
      return sub_10001093C();
    }
  }

  else
  {

    if ((a1 & 1) == 0)
    {
      return sub_10001093C();
    }
  }

  return sub_10000FDAC();
}

uint64_t sub_10000FDAC()
{
  v1 = v0;
  swift_getObjectType();
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v2 - 8);
  v3 = *(v26 + 64);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v24 = *(v6 - 8);
  v25 = v6;
  v7 = *(v24 + 64);
  __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D2D8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000403C(v10, qword_10039E090);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v13 = 136315394;
    v14 = _typeName(_:qualified:)();
    v16 = sub_100008F6C(v14, v15, aBlock);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    v17 = showFunction(signature:_:)(0xD00000000000001FLL, 0x8000000100346AB0, _swiftEmptyArrayStorage);
    v19 = sub_100008F6C(v17, v18, aBlock);

    *(v13 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s.%s", v13, 0x16u);
    swift_arrayDestroy();
  }

  v20 = *&v1[OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_queue];
  v21 = swift_allocObject();
  *(v21 + 16) = v1;
  aBlock[4] = sub_10001A3E0;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003974;
  aBlock[3] = &unk_10037FBE8;
  v22 = _Block_copy(aBlock);
  v1;
  static DispatchQoS.unspecified.getter();
  v27 = _swiftEmptyArrayStorage;
  sub_10001A528(&qword_10039E2A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100004074(&qword_10039DD40, &qword_1002BFEC0);
  sub_10001A570(&qword_10039E2B0, &qword_10039DD40, &qword_1002BFEC0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v26 + 8))(v5, v2);
  (*(v24 + 8))(v9, v25);

  return sub_10001093C();
}

uint64_t sub_1000101FC(uint64_t a1)
{
  v2 = type metadata accessor for OSSignpostError();
  v41 = *(v2 - 8);
  v42 = v2;
  v3 = *(v41 + 64);
  __chkstk_darwin(v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OSSignpostID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v43 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v39 - v12;
  __chkstk_darwin(v11);
  v15 = &v39 - v14;
  if (qword_10039D2E0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for OSSignposter();
  sub_10000403C(v16, qword_10039E0A8);
  static OSSignpostID.exclusive.getter();
  v17 = OSSignposter.logHandle.getter();
  v18 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v19 = swift_slowAlloc();
    v40 = v7;
    v20 = v6;
    v21 = v5;
    v22 = a1;
    v23 = v19;
    *v19 = 0;
    v24 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, v18, v24, "ttp-clear-data", "begin ttp clear data", v23, 2u);
    a1 = v22;
    v5 = v21;
    v6 = v20;
    v7 = v40;
  }

  (*(v7 + 16))(v13, v15, v6);
  v25 = type metadata accessor for OSSignpostIntervalState();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  OSSignpostIntervalState.init(id:isOpen:)();
  v28 = *(v7 + 8);
  v28(v15, v6);
  v29 = *(a1 + OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_nfSEReaderSession);
  sub_100010764();
  v30 = OSSignposter.logHandle.getter();
  v31 = v43;
  OSSignpostIntervalState.signpostID.getter();
  v32 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    v34 = v41;
    v33 = v42;
    if ((*(v41 + 88))(v5, v42) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v35 = "[Error] Interval already ended";
    }

    else
    {
      (*(v34 + 8))(v5, v33);
      v35 = "end ttp clear data";
    }

    v36 = swift_slowAlloc();
    *v36 = 0;
    v37 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v30, v32, v37, "ttp-clear-data", v35, v36, 2u);
  }

  return (v28)(v31, v6);
}

uint64_t sub_100010764()
{
  if (qword_10039D4C0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000403C(v0, qword_1003A1258);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v3 = 136315394;
    sub_10000411C(0, &unk_10039E250, NFSecureElementReaderSession_ptr);
    v4 = _typeName(_:qualified:)();
    v6 = sub_100008F6C(v4, v5, &v11);

    *(v3 + 4) = v6;
    *(v3 + 12) = 2080;
    v7 = showFunction(signature:_:)(0xD000000000000014, 0x8000000100346AE0, _swiftEmptyArrayStorage);
    v9 = sub_100008F6C(v7, v8, &v11);

    *(v3 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s.%s", v3, 0x16u);
    swift_arrayDestroy();
  }

  return sub_100019870(1u, 0, 0xF000000000000000);
}

uint64_t sub_10001093C()
{
  v1 = v0;
  swift_getObjectType();
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v28 = *(v7 - 8);
  v29 = v7;
  v8 = *(v28 + 64);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D2D8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000403C(v11, qword_10039E090);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v27 = v3;
    aBlock[0] = v15;
    *v14 = 136315394;
    v16 = _typeName(_:qualified:)();
    v18 = sub_100008F6C(v16, v17, aBlock);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    v19 = showFunction(signature:_:)(0xD000000000000013, 0x8000000100346A90, _swiftEmptyArrayStorage);
    v21 = sub_100008F6C(v19, v20, aBlock);

    *(v14 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v12, v13, "%s.%s", v14, 0x16u);
    swift_arrayDestroy();
    v3 = v27;
  }

  [v1 setExecuting:0];
  [v1 setFinished:1];
  v22 = *&v1[OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_queue];
  v23 = swift_allocObject();
  *(v23 + 16) = v1;
  aBlock[4] = sub_10001A3D0;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003974;
  aBlock[3] = &unk_10037FB48;
  v24 = _Block_copy(aBlock);
  v25 = v1;
  static DispatchQoS.unspecified.getter();
  v30 = _swiftEmptyArrayStorage;
  sub_10001A528(&qword_10039E2A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100004074(&qword_10039DD40, &qword_1002BFEC0);
  sub_10001A570(&qword_10039E2B0, &qword_10039DD40, &qword_1002BFEC0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);
  (*(v3 + 8))(v6, v2);
  (*(v28 + 8))(v10, v29);
}

void sub_100010DAC(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_nfSEReaderSession];
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v6[4] = sub_10001A3D8;
  v6[5] = v3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_100003974;
  v6[3] = &unk_10037FB98;
  v4 = _Block_copy(v6);
  v5 = a1;

  [v2 endSessionWithCompletion:v4];
  _Block_release(v4);
}

id sub_100010E90(uint64_t a1)
{
  if (qword_10039D2D8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000403C(v2, qword_10039E090);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "NF SE Reader Session ended, onUpdate(with: .closed)", v5, 2u);
  }

  result = *(a1 + OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_delegate);
  if (result)
  {

    return [result onUpdateWithEvent:3];
  }

  return result;
}

id sub_100010FA8()
{
  v1 = v0;
  swift_getObjectType();
  v2 = type metadata accessor for DispatchTime();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = __chkstk_darwin(v2);
  v7 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v92 - v8;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *&v1[OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_nfSEReaderSession];
  [v14 setDelegate:v1];
  [v14 setSessionDelegate:v1];
  if ([v1 isCancelled])
  {
    if (qword_10039D2D8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000403C(v15, qword_10039E090);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "ORReadOperation cancelled before start()", v18, 2u);
    }

    return sub_10000F7CC();
  }

  v95 = v13;
  v98 = v3;
  v99 = v2;
  if (qword_10039D2D8 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  v21 = sub_10000403C(v20, qword_10039E090);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  v24 = os_log_type_enabled(v22, v23);
  v100 = v14;
  v96 = v7;
  v97 = v9;
  v94 = v10;
  if (v24)
  {
    v25 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v25 = 136315394;
    v26 = _typeName(_:qualified:)();
    v28 = sub_100008F6C(v26, v27, &aBlock);

    *(v25 + 4) = v28;
    *(v25 + 12) = 2080;
    v29 = showFunction(signature:_:)(0x29287472617473, 0xE700000000000000, _swiftEmptyArrayStorage);
    v31 = sub_100008F6C(v29, v30, &aBlock);

    *(v25 + 14) = v31;
    _os_log_impl(&_mh_execute_header, v22, v23, "%s.%s", v25, 0x16u);
    swift_arrayDestroy();
  }

  v32 = *&v1[OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_parameters];
  v33 = [v32 provisionReadTimeout];
  v34 = [v32 provisionReadTimeout];
  v92 = v21;
  if (v34 >= 1 && [v32 provisionReadTimeout] < 41)
  {
    v39 = v33;
  }

  else
  {
    v35 = v1;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 134218240;
      *(v38 + 4) = [v32 provisionReadTimeout];

      *(v38 + 12) = 2048;
      *(v38 + 14) = 40;
      _os_log_impl(&_mh_execute_header, v36, v37, "Input provisionReadTimeout of %ld was invalid. Using maxPollingTime of %ld.", v38, 0x16u);
    }

    else
    {

      v36 = v35;
    }

    v39 = 40.0;
  }

  v93 = *&v1[OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_analytics];
  *(v93 + 64) = 0;
  v40 = OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_timeoutWorkItem;
  v41 = *&v1[OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_timeoutWorkItem];

  dispatch thunk of DispatchWorkItem.cancel()();

  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v43 = swift_allocObject();
  *(v43 + 16) = v42;
  *(v43 + 24) = v39;
  v106 = sub_10001A4C0;
  v107 = v43;
  aBlock = _NSConcreteStackBlock;
  v103 = 1107296256;
  v104 = sub_100003974;
  v105 = &unk_10037FC60;
  _Block_copy(&aBlock);
  v101 = _swiftEmptyArrayStorage;
  sub_10001A528(&qword_10039E2A0, &type metadata accessor for DispatchWorkItemFlags);

  sub_100004074(&qword_10039DD40, &qword_1002BFEC0);
  sub_10001A570(&qword_10039E2B0, &qword_10039DD40, &qword_1002BFEC0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v44 = type metadata accessor for DispatchWorkItem();
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  swift_allocObject();
  v47 = DispatchWorkItem.init(flags:block:)();

  v48 = *&v1[v40];
  *&v1[v40] = v47;

  v49 = *&v1[OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_queue];
  v50 = v96;
  static DispatchTime.now()();
  v51 = v97;
  + infix(_:_:)();
  v52 = v99;
  v53 = v98[1];
  v53(v50, v99);
  v98 = v1;
  v54 = *&v1[v40];

  OS_dispatch_queue.asyncAfter(deadline:execute:)();

  v53(v51, v52);
  [v32 amount];
  LODWORD(v49) = v104;
  v56 = aBlock;
  v55 = v103;
  v57 = [v32 transactionId];
  v58 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v60 = v59;

  v61 = [v32 unpredictableNumber];
  v62 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v64 = v63;

  sub_1000120D0(v56, v55, v49, v58, v60, v62, v64, [v32 currencyCode], objc_msgSend(v32, "countryCode"));
  sub_100009548(v62, v64);
  sub_100009548(v58, v60);
  sub_100004074(&qword_10039E238, &qword_1002C16D8);
  inited = swift_initStackObject();
  *(inited + 32) = 17;
  v66 = inited + 32;
  *(inited + 16) = xmmword_1002C1660;
  *(inited + 64) = &type metadata for UInt16;
  *(inited + 40) = -28672;
  sub_100183344(inited);
  swift_setDeallocating();
  v67 = sub_10000BD44(v66, &qword_10039E240, &unk_1002C16E0);
  v68 = *(v93 + 56);
  __chkstk_darwin(v67);
  os_unfair_lock_lock((v68 + 32));
  sub_10001A76C((v68 + 16));
  os_unfair_lock_unlock((v68 + 32));
  v69 = v100;

  aBlock = 0;
  if (![v69 start:&aBlock])
  {
    v76 = aBlock;
    v77 = _convertNSErrorToError(_:)();

    swift_willThrow();
    aBlock = v77;
    swift_errorRetain();
    sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    sub_10000411C(0, &qword_10039E2C8, NSError_ptr);
    if (!swift_dynamicCast())
    {
LABEL_37:

      aBlock = 0;
      v103 = 0xE000000000000000;
      _StringGuts.grow(_:)(51);
      v88._countAndFlagsBits = 0xD000000000000031;
      v88._object = 0x8000000100346BC0;
      String.append(_:)(v88);
      v101 = v77;
      swift_errorRetain();
      v89._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v89);

      v90 = sub_1000205C0(20001, aBlock, v103, 0);
      v91 = *(v98 + OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_provisionError);
      *(v98 + OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_provisionError) = v90;

      sub_10000F7CC();
    }

    v78 = v101;
    v79 = [v101 domain];
    v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v82 = v81;

    if (v80 == String.init(cString:)() && v82 == v83)
    {
    }

    else
    {
      v84 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v84 & 1) == 0)
      {
LABEL_36:

        goto LABEL_37;
      }
    }

    v85 = [v78 code];
    if ((v85 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(v85))
    {
      if (v85 == 47)
      {

        v86 = sub_1000205C0(20006, 0xD000000000000044, 0x8000000100346C00, 0);
        v87 = *(v98 + OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_provisionError);
        *(v98 + OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_provisionError) = v86;

        sub_10003101C(&off_10037CD00);
        sub_10000F7CC();
      }

      goto LABEL_36;
    }

    __break(1u);
  }

  v70 = aBlock;
  v71 = v98;
  [v98 setExecuting:1];
  if (qword_10039D2E0 != -1)
  {
    swift_once();
  }

  v72 = type metadata accessor for OSSignposter();
  sub_10000403C(v72, qword_10039E0A8);
  sub_100186BE8("ttp-preprocessing", 17, 2, v69, 0xD000000000000015, 0x8000000100346C70);
  result = [v71 isCancelled];
  if (result)
  {
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&_mh_execute_header, v73, v74, "ORReadOperation is cancelled after start()", v75, 2u);
    }

    return sub_10000F7CC();
  }

  return result;
}

void sub_100011F80()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (([Strong isCancelled] & 1) == 0 && (objc_msgSend(v1, "isFinished") & 1) == 0)
    {
      if ([v1 isExecuting])
      {
        _StringGuts.grow(_:)(34);
        v2._object = 0x8000000100346CF0;
        v2._countAndFlagsBits = 0xD000000000000018;
        String.append(_:)(v2);
        Double.write<A>(to:)();
        v3._countAndFlagsBits = 0x64657370616C6520;
        v3._object = 0xE800000000000000;
        String.append(_:)(v3);
        v4 = sub_1000205C0(20004, 0, 0xE000000000000000, 0);
        v5 = *&v1[OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_provisionError];
        *&v1[OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_provisionError] = v4;

        *(*&v1[OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_analytics] + 64) = 1;
        [v1 cancel];
      }
    }
  }
}

uint64_t sub_1000120D0(uint64_t *a1, uint64_t *a2, int a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9)
{
  v110 = a8;
  v114 = a7;
  v113 = a6;
  v112 = a5;
  v111 = a4;
  LODWORD(v121) = a3;
  v11 = type metadata accessor for TLV();
  v122 = *(v11 - 1);
  v12 = *(v122 + 64);
  __chkstk_darwin(v11);
  v14 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TLVTag();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v115 = &v105 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Locale();
  *(&v116 + 1) = *(v18 - 8);
  *&v117 = v18;
  v19 = *(*(&v116 + 1) + 64);
  __chkstk_darwin(v18);
  *&v116 = &v105 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Date();
  v118 = *(v21 - 8);
  v119 = v21;
  v22 = *(v118 + 64);
  __chkstk_darwin(v21);
  v24 = &v105 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D4C0 != -1)
  {
LABEL_34:
    swift_once();
  }

  v120 = v24;
  v25 = type metadata accessor for Logger();
  sub_10000403C(v25, qword_1003A1258);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.info.getter();
  v28 = os_log_type_enabled(v26, v27);
  v108 = v11;
  v107 = v14;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v123 = swift_slowAlloc();
    *v29 = 136315394;
    sub_10000411C(0, &unk_10039E250, NFSecureElementReaderSession_ptr);
    v30 = _typeName(_:qualified:)();
    v32 = sub_100008F6C(v30, v31, &v123);

    *(v29 + 4) = v32;
    *(v29 + 12) = 2080;
    v33 = showFunction(signature:_:)(0xD000000000000052, 0x8000000100346C90, _swiftEmptyArrayStorage);
    v35 = sub_100008F6C(v33, v34, &v123);

    *(v29 + 14) = v35;
    _os_log_impl(&_mh_execute_header, v26, v27, "%s.%s", v29, 0x16u);
    swift_arrayDestroy();
  }

  v109 = a9;
  v36 = v121;
  v37 = WORD1(v121);
  v38 = objc_allocWithZone(NSDecimalNumber);
  v123 = a1;
  v124 = a2;
  v125 = v36;
  v126 = v37;
  v39 = [v38 initWithDecimal:&v123];
  v40 = [v39 integerValue];

  if (v40 >= 0)
  {
    v41 = v40;
  }

  else
  {
    v41 = -v40;
  }

  v123 = v41;
  sub_10001A4CC();
  v42 = UnsignedInteger.digitsAsBytes()();
  v44 = v43;
  v24 = Data.toBCD()();
  v14 = v45;
  sub_100009548(v42, v44);
  v132 = v24;
  v133 = v14;
  a1 = &qword_10039E2E8;
  a2 = &qword_1002C1728;
  v11 = &qword_10039E2F0;
  v46 = v120;
  while (1)
  {
    v47 = v14 >> 62;
    if ((v14 >> 62) > 1)
    {
      if (v47 == 2)
      {
        v49 = *(v24 + 16);
        v48 = *(v24 + 24);
        v24 = v48 - v49;
        if (__OFSUB__(v48, v49))
        {
          __break(1u);
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }
      }

      else
      {
        v24 = 0;
      }
    }

    else if (v47)
    {
      if (__OFSUB__(HIDWORD(v24), v24))
      {
        goto LABEL_33;
      }

      v24 = HIDWORD(v24) - v24;
    }

    else
    {
      v24 = BYTE6(v14);
    }

    if (v24 >= static TLVTag.TAG_9F02_LENGTH.getter())
    {
      break;
    }

    v50 = sub_100004074(&qword_10039E2E8, &qword_1002C1728);
    v127 = v50;
    v128 = sub_10001A570(&qword_10039E2F0, &qword_10039E2E8, &qword_1002C1728);
    LOBYTE(v123) = 0;
    LOBYTE(v130) = *sub_10000BE18(&v123, v50);
    Data._Representation.replaceSubrange(_:with:count:)();
    sub_10000959C(&v123);
    v24 = v132;
    v14 = v133;
  }

  Date.init()();
  v51 = [objc_allocWithZone(NSDateFormatter) init];
  v52 = v116;
  Locale.init(identifier:)();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(*(&v116 + 1) + 8))(v52, v117);
  [v51 setLocale:isa];

  v54 = String._bridgeToObjectiveC()();
  [v51 setDateFormat:v54];

  v55 = Date._bridgeToObjectiveC()().super.isa;
  v56 = [v51 stringFromDate:v55];

  v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v59 = v58;

  v123 = sub_100146900(v57, v59);
  v124 = v60;
  v61 = *(&v117 + 1);
  sub_100121DBC(&v123);
  if (v61)
  {
    (*(v118 + 8))(v46, v119);
  }

  else
  {
    v62 = String._bridgeToObjectiveC()();
    [v51 setDateFormat:v62];

    v63 = Date._bridgeToObjectiveC()().super.isa;
    v64 = [v51 stringFromDate:v63];

    v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v67 = v66;

    v130 = sub_100146900(v65, v67);
    v131 = v68;
    sub_100121DBC(&v130);
    v106 = v51;
    v69 = v110;
    if (v110 < 0)
    {
      v69 = -v110;
    }

    *&v129 = v69;
    v70 = UnsignedInteger.digitsAsBytes()();
    v72 = v71;
    v73 = Data.toBCD()();
    v75 = v74;
    sub_100009548(v70, v72);
    v76 = static TLVTag.TAG_5F2A_LENGTH.getter();
    sub_100087378(v76, v73, v75, &v129);
    v117 = v129;
    v77 = v109;
    if (v109 < 0)
    {
      v77 = -v109;
    }

    *&v129 = v77;
    v78 = UnsignedInteger.digitsAsBytes()();
    v80 = v79;
    v81 = Data.toBCD()();
    v83 = v82;
    sub_100009548(v78, v80);
    v84 = static TLVTag.TAG_9F1A_LENGTH.getter();
    sub_100087378(v84, v81, v83, &v129);
    v116 = v129;
    v110 = sub_100004074(&qword_10039E2D8, &qword_1002C3720);
    v85 = *(v122 + 72);
    v86 = (*(v122 + 80) + 32) & ~*(v122 + 80);
    v109 = 4 * v85;
    v121 = swift_allocObject();
    *(v121 + 16) = xmmword_1002C1680;
    static TLVTag.authorizedAmount.getter();
    sub_1000094F4(v132, v133);
    TLV.init(tag:value:)();
    static TLVTag.provisionDataTransactionId.getter();
    sub_1000094F4(v111, v112);
    TLV.init(tag:value:)();
    v112 = 2 * v85;
    static TLVTag.unpredictableNumber.getter();
    sub_1000094F4(v113, v114);
    TLV.init(tag:value:)();
    v114 = 3 * v85;
    static TLVTag.otherAmount.getter();
    static TLVTag.TAG_9F03_DEFAULT.getter();
    TLV.init(tag:value:)();
    static TLVTag.transactionType.getter();
    sub_100004074(&qword_10039E2E0, &qword_1002C1720);
    v87 = swift_allocObject();
    *(v87 + 16) = xmmword_1002C1660;
    *(v87 + 32) = 0;
    sub_10014B8C8(v87);

    v88 = v85;
    TLV.init(tag:value:)();
    v89 = swift_allocObject();
    *(v89 + 16) = xmmword_1002C1690;
    static TLVTag.transactionDate.getter();
    Data.toBCD()();
    TLV.init(tag:value:)();
    static TLVTag.transactionTime.getter();
    Data.toBCD()();
    TLV.init(tag:value:)();
    static TLVTag.transactionCurrencyCode.getter();
    sub_1000094F4(v117, *(&v117 + 1));
    TLV.init(tag:value:)();
    static TLVTag.terminalCountryCode.getter();
    sub_1000094F4(v116, *(&v116 + 1));
    TLV.init(tag:value:)();
    *&v129 = v121;
    sub_10004385C(v89);
    v90 = v129;
    v129 = xmmword_1002BDC30;
    v91 = *(v90 + 16);
    if (v91)
    {
      v115 = 0;
      v114 = v90;
      v92 = v90 + v86;
      v121 = *(v122 + 16);
      v122 += 16;
      v93 = (v122 - 8);
      v94 = v108;
      v95 = v107;
      do
      {
        (v121)(v95, v92, v94);
        v96 = v88;
        v97 = TLV.dataRepresentation.getter();
        v99 = v98;
        Data.append(_:)();
        v100 = v97;
        v88 = v96;
        sub_100009548(v100, v99);
        (*v93)(v95, v94);
        v92 += v96;
        --v91;
      }

      while (v91);

      v102 = *(&v129 + 1);
      v101 = v129;
    }

    else
    {

      v101 = 0;
      v102 = 0xC000000000000000;
    }

    sub_1000094F4(v101, v102);
    sub_100019870(0, v101, v102);
    v103 = v120;

    sub_100009548(v117, *(&v117 + 1));
    sub_100009548(v116, *(&v116 + 1));
    sub_100009548(v101, v102);
    sub_100009548(v101, v102);
    (*(v118 + 8))(v103, v119);
    sub_100009548(v130, v131);
  }

  sub_100009548(v123, v124);
  return sub_100009548(v132, v133);
}

uint64_t sub_100012DB0()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D2D8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000403C(v12, qword_10039E090);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "handleSessionReachedTimeLimit()", v15, 2u);
  }

  v16 = *&v1[OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_queue];
  static DispatchQoS.userInitiated.getter();
  static DispatchWorkItemFlags.enforceQoS.getter();
  v17 = swift_allocObject();
  *(v17 + 16) = v1;
  aBlock[4] = sub_10001A3AC;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003974;
  aBlock[3] = &unk_10037FAF8;
  v18 = _Block_copy(aBlock);
  v19 = v1;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v3 + 8))(v6, v2);
  (*(v8 + 8))(v11, v7);
}

uint64_t sub_1000130D4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000411C(0, &qword_10039E280, NSObject_ptr);
  v15 = *&v2[OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_nfSEReaderSession];
  if (static NSObject.== infix(_:_:)())
  {
    if (qword_10039D2D8 == -1)
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
  v16 = type metadata accessor for Logger();
  sub_10000403C(v16, qword_10039E090);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v26 = v3;
    *v19 = 67109120;
    *(v19 + 4) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v17, v18, "didReceiveThermalIndication %{BOOL}d", v19, 8u);
    v3 = v26;
  }

  v20 = *&v3[OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_queue];
  static DispatchQoS.userInitiated.getter();
  static DispatchWorkItemFlags.enforceQoS.getter();
  v21 = swift_allocObject();
  *(v21 + 16) = v3;
  *(v21 + 24) = a2 & 1;
  aBlock[4] = sub_10001A380;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003974;
  aBlock[3] = &unk_10037FAA8;
  v22 = _Block_copy(aBlock);
  v23 = v3;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v6 + 8))(v9, v5);
  (*(v11 + 8))(v14, v10);
}

void sub_1000134A4(char a1)
{
  if (a1)
  {
    v2 = sub_1000205C0(20006, 0xD00000000000001ELL, 0x8000000100343A90, 0);
    v3 = *(v1 + OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_provisionError);
    *(v1 + OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_provisionError) = v2;

    if (qword_10039D2E0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for OSSignposter();
    sub_10000403C(v4, qword_10039E0A8);
    sub_100186BE8("ttp-reader-mode-polling", 23, 2, *(v1 + OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_nfSEReaderSession), 0xD000000000000027, 0x8000000100346A60);
    v5 = *(*(v1 + OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_analytics) + 56);
    os_unfair_lock_lock(v5 + 8);
    sub_10011CC08(&v5[4], 3);
    os_unfair_lock_unlock(v5 + 8);
    sub_10003101C(&off_10037CD28);

    sub_10001093C();
  }

  else
  {
    v6 = *(v1 + OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_analytics);
    sub_10003101C(&off_10037CD50);
    if (qword_10039D2D8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000403C(v7, qword_10039E090);
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v8, "Reader Mode may be restarted", v9, 2u);
    }
  }
}

uint64_t sub_1000136D4()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000411C(0, &qword_10039E280, NSObject_ptr);
  v12 = *&v0[OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_nfSEReaderSession];
  if (static NSObject.== infix(_:_:)())
  {
    if (qword_10039D2D8 == -1)
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
  v13 = type metadata accessor for Logger();
  sub_10000403C(v13, qword_10039E090);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "secureElementReaderSessionDidEndUnexpectedly()", v16, 2u);
  }

  v17 = *&v1[OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_queue];
  static DispatchQoS.userInitiated.getter();
  static DispatchWorkItemFlags.enforceQoS.getter();
  v18 = swift_allocObject();
  *(v18 + 16) = v1;
  aBlock[4] = sub_10001A794;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003974;
  aBlock[3] = &unk_10037FA58;
  v19 = _Block_copy(aBlock);
  v20 = v1;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v3 + 8))(v6, v2);
  (*(v8 + 8))(v11, v7);
}

uint64_t sub_100013A58()
{
  v1 = sub_1000205C0(20001, 0xD00000000000002FLL, 0x8000000100346A30, 0);
  v2 = OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_provisionError;
  v3 = *&v0[OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_provisionError];
  *&v0[OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_provisionError] = v1;

  if (qword_10039D2D8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000403C(v4, qword_10039E090);
  v5 = v0;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 136315138;
    v19 = *&v0[v2];
    v20 = v9;
    v10 = v19;
    sub_100004074(&qword_10039E298, &unk_1002C1710);
    v11 = String.init<A>(describing:)();
    v13 = sub_100008F6C(v11, v12, &v20);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s", v8, 0xCu);
    sub_10000959C(v9);
  }

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "ORReadOperation onUpdate(with: .closed)", v16, 2u);
  }

  v17 = *&v5[OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_delegate];
  if (v17)
  {
    [v17 onUpdateWithEvent:3];
  }

  return sub_10001093C();
}

void sub_100013CDC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100004074(&qword_10039E288, &unk_1002C1700);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v68 = &v64 - v6;
  v7 = type metadata accessor for DispatchTime();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100004074(&qword_10039E290, &unk_1002C37C0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v64 - v17;
  v19 = type metadata accessor for StopWatch();
  v69 = *(v19 - 8);
  v20 = *(v69 + 64);
  __chkstk_darwin(v19);
  v67 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = 0x676E696C6C6F50;
  v71 = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v22 = sub_1000F5AC4(v72), (v23 & 1) != 0))
  {
    sub_10000BDA4(*(a1 + 56) + 32 * v22, v73);
    sub_10001A124(v72);
    if (swift_dynamicCast())
    {
      v66 = v8;
      v25 = v70;
      v24 = v71;
      if (v70 == 65 && v71 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        if (qword_10039D2D8 != -1)
        {
          swift_once();
        }

        v26 = type metadata accessor for Logger();
        sub_10000403C(v26, qword_10039E090);
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&_mh_execute_header, v27, v28, "Type A polling didStart", v29, 2u);
        }

        v30 = (v2 + OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_pollingState);
        swift_beginAccess();
        if (v30[1] >= *v30)
        {
          atomic_fetch_add_explicit(v30, 1u, memory_order_relaxed);
        }

        swift_endAccess();
        v8 = v66;
      }

      else
      {
        if (v25 == 66 && v24 == 0xE100000000000000)
        {
        }

        else
        {
          v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v8 = v66;
          if ((v58 & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        if (qword_10039D2D8 != -1)
        {
          swift_once();
        }

        v59 = type metadata accessor for Logger();
        sub_10000403C(v59, qword_10039E090);
        v60 = Logger.logObject.getter();
        v61 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          *v62 = 0;
          _os_log_impl(&_mh_execute_header, v60, v61, "Type B polling didStart", v62, 2u);
        }

        v63 = (v2 + OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_pollingState);
        swift_beginAccess();
        v8 = v66;
        if (*v63 >= v63[1])
        {
          atomic_fetch_add_explicit(v63 + 1, 1u, memory_order_relaxed);
        }

        swift_endAccess();
      }
    }
  }

  else
  {
    sub_10001A124(v72);
  }

LABEL_15:
  v31 = (v2 + OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_pollingState);
  swift_beginAccess();
  v32 = v31[1];
  if (*v31 == 1 && v32 == 1)
  {
    v66 = v19;
    v33 = v11;
    v34 = v8;
    if (qword_10039D2D8 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_10000403C(v35, qword_10039E090);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "ORReadOperation onUpdate(with: .ready)", v38, 2u);
    }

    v39 = *(v2 + OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_delegate);
    if (v39)
    {
      [v39 onUpdateWithEvent:0];
    }

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    v42 = v34;
    if (os_log_type_enabled(v40, v41))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "--- --- ---> EMV-type polling started, tap a card to provision", v43, 2u);
    }

    v65 = v33;
    if (qword_10039D2E0 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for OSSignposter();
    sub_10000403C(v44, qword_10039E0A8);
    sub_100186948("ttp-reader-mode-polling", 23, 2, *(v2 + OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_nfSEReaderSession), 0xD000000000000011, 0x8000000100346A10);
    v45 = *(*(v2 + OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_analytics) + 56);
    os_unfair_lock_lock((v45 + 32));
    v46 = *(v34 + 56);
    v46(v18, 1, 1, v7);
    v46(v16, 1, 1, v7);
    v47 = v67;
    v46(v67, 1, 1, v7);
    v48 = v66;
    v49 = *(v66 + 20);
    v46((v47 + v49), 1, 1, v7);
    sub_10001A178(v18, v47);
    sub_10001A178(v16, v47 + v49);
    v50 = v65;
    static DispatchTime.now()();
    sub_10000BD44(v47, &qword_10039E290, &unk_1002C37C0);
    (*(v42 + 32))(v47, v50, v7);
    v46(v47, 0, 1, v7);
    v51 = v68;
    sub_10001A1E8(v47, v68);
    (*(v69 + 56))(v51, 0, 1, v48);
    sub_10002D278(v51, 0x54676E696C6C6F70, 0xEE00534156656D69);
    sub_10001A24C(v47);
  }

  else
  {
    if (*v31 != v32)
    {
      return;
    }

    if (qword_10039D2D8 != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    sub_10000403C(v52, qword_10039E090);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&_mh_execute_header, v53, v54, "ORReadOperation onUpdate(with: .cardTear)", v55, 2u);
    }

    v56 = *(v2 + OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_delegate);
    if (v56)
    {
      [v56 onUpdateWithEvent:5];
    }

    v57 = *(v2 + OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_provisionError);
    *(v2 + OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_provisionError) = 0;

    v45 = *(*(v2 + OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_analytics) + 56);
    os_unfair_lock_lock((v45 + 32));
    sub_10011C060((v45 + 16), 13);
  }

  os_unfair_lock_unlock((v45 + 32));
}

uint64_t sub_1000146BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a4;
  v25 = a5;
  v6 = v5;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000411C(0, &qword_10039E280, NSObject_ptr);
  v18 = *&v5[OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_nfSEReaderSession];
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    v20 = *&v5[OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_queue];
    static DispatchQoS.userInitiated.getter();
    static DispatchWorkItemFlags.enforceQoS.getter();
    v21 = swift_allocObject();
    *(v21 + 16) = v6;
    *(v21 + 24) = a2;
    aBlock[4] = v24;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003974;
    aBlock[3] = v25;
    v22 = _Block_copy(aBlock);
    v23 = v6;

    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v22);
    (*(v9 + 8))(v12, v8);
    (*(v14 + 8))(v17, v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001493C(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id, uint64_t))
{
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = a1;
  a5(v9, v8);
}

uint64_t sub_1000149DC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v27 = a5;
  v28 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v28 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v28);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000411C(0, &qword_10039E280, NSObject_ptr);
  v19 = *&v5[OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_nfSEReaderSession];
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    v21 = *&v5[OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_queue];
    static DispatchQoS.userInitiated.getter();
    static DispatchWorkItemFlags.enforceQoS.getter();
    v22 = swift_allocObject();
    v22[2] = v6;
    v22[3] = a2;
    v22[4] = a3;
    v22[5] = a4;
    v26 = v14;
    v22[6] = v27;
    aBlock[4] = sub_10001A0D0;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003974;
    aBlock[3] = &unk_10037F968;
    v23 = _Block_copy(aBlock);
    v24 = v6;
    sub_1000094F4(a2, a3);

    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v23);
    (*(v10 + 8))(v13, v28);
    (*(v15 + 8))(v18, v26);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100014D4C(uint64_t *a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v314 = a1;
  v8 = type metadata accessor for Data.Endianness();
  v9 = *(v8 - 1);
  v309 = v8;
  v310 = v9;
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v308 = v290 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OSSignpostError();
  v302 = *(v12 - 8);
  v13 = *(v302 + 64);
  __chkstk_darwin(v12);
  v301 = v290 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v305 = type metadata accessor for OSSignpostID();
  v307 = *(v305 - 8);
  v15 = v307[8];
  v16 = __chkstk_darwin(v305);
  v303 = v290 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v304 = v290 - v19;
  __chkstk_darwin(v18);
  v306 = v290 - v20;
  v21 = type metadata accessor for TLVTag();
  v312 = *(v21 - 8);
  v22 = v312[8];
  v23 = __chkstk_darwin(v21);
  v25 = v290 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v311 = v290 - v26;
  v27 = sub_100004074(&unk_10039E210, &unk_1002C65B0);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v30 = v290 - v29;
  v31 = type metadata accessor for TLV();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = __chkstk_darwin(v31);
  v35 = __chkstk_darwin(v34);
  v36 = __chkstk_darwin(v35);
  *&v313 = a2;
  v40 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v40 != 2 || *(v314 + 16) == *(v314 + 24))
    {
LABEL_13:
      if (qword_10039D2D8 != -1)
      {
        swift_once();
      }

      v55 = type metadata accessor for Logger();
      sub_10000403C(v55, qword_10039E090);
      v314 = Logger.logObject.getter();
      v56 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v314, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v315._countAndFlagsBits = v58;
        *v57 = 136315138;
        *(v57 + 4) = sub_100008F6C(0xD000000000000021, 0x80000001003469E0, &v315._countAndFlagsBits);
        _os_log_impl(&_mh_execute_header, v314, v56, "%s receivedData isEmpty", v57, 0xCu);
        sub_10000959C(v58);

LABEL_21:

        return;
      }

LABEL_22:
      v63 = v314;

      return;
    }
  }

  else if (v40)
  {
    if (v314 == v314 >> 32)
    {
      goto LABEL_13;
    }
  }

  else if ((v313 & 0xFF000000000000) == 0)
  {
    goto LABEL_13;
  }

  v296 = v38;
  v297 = v39;
  v299 = v290 - v37;
  v300 = v36;
  if ((sub_10011A8C8() & 1) == 0)
  {
    if (qword_10039D2D8 != -1)
    {
      swift_once();
    }

    v59 = type metadata accessor for Logger();
    sub_10000403C(v59, qword_10039E090);

    v314 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v314, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v315._countAndFlagsBits = v62;
      *v61 = 136315138;
      *(v61 + 4) = sub_100008F6C(a3, a4, &v315._countAndFlagsBits);
      _os_log_impl(&_mh_execute_header, v314, v60, "receivedData from unrecognized applet: %s", v61, 0xCu);
      sub_10000959C(v62);

      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v294 = v12;
  v295 = v4;
  if (qword_10039D2D8 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  v42 = sub_10000403C(v41, qword_10039E090);
  v43 = v314;
  v44 = v313;
  sub_1000094F4(v314, v313);
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();
  sub_100009548(v43, v44);
  v47 = os_log_type_enabled(v45, v46);
  v298 = v32;
  if (v47)
  {
    v48 = swift_slowAlloc();
    v291 = v45;
    v49 = v48;
    v292 = swift_slowAlloc();
    v315._countAndFlagsBits = v292;
    *v49 = 136315394;
    *(v49 + 4) = sub_100008F6C(0xD000000000000021, 0x80000001003469E0, &v315._countAndFlagsBits);
    *(v49 + 12) = 2082;
    v50 = Data.hexString()();
    v51 = sub_100008F6C(v50._countAndFlagsBits, v50._object, &v315._countAndFlagsBits);
    v293 = v21;
    v52 = v51;
    v44 = v313;

    *(v49 + 14) = v52;
    v53 = v46;
    v21 = v293;
    v54 = v291;
    _os_log_impl(&_mh_execute_header, v291, v53, "%s receivedData: %{public}s", v49, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  sub_1000094F4(v43, v44);
  TLV.init(dataRepresentation:)();
  v290[1] = v42;
  v293 = 0;
  v64 = v298;
  v65 = v300;
  (*(v298 + 56))(v30, 0, 1, v300);
  (*(v64 + 32))(v299, v30, v65);
  v66 = v311;
  TLV.tag.getter();
  static TLVTag.eventStatus.getter();
  sub_10001A528(&qword_10039E260, &type metadata accessor for TLVTag);
  LOBYTE(v65) = dispatch thunk of static Equatable.== infix(_:_:)();
  v67 = v312[1];
  v67(v25, v21);
  if (v65)
  {
    v67(v66, v21);
    if ((TLV.length.getter() | 2) == 3)
    {
      v68 = TLV.value.getter();
      v70 = v69;
      v71 = sub_10011AA24(v68, v69);
      sub_100009548(v68, v70);
      if ((v71 & 0x100) != 0)
      {
        v129 = Logger.logObject.getter();
        v130 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v129, v130))
        {
          v131 = swift_slowAlloc();
          *v131 = 0;
          _os_log_impl(&_mh_execute_header, v129, v130, "Could not get status byte from HCI event: Status", v131, 2u);
        }

        goto LABEL_52;
      }

      v72 = v314;
      v73 = v313;
      sub_1000094F4(v314, v313);
      v74 = Logger.logObject.getter();
      if (v71 <= 0x14u)
      {
        if (v71 != 6)
        {
          if (v71 == 7)
          {
            v75 = static os_log_type_t.error.getter();
            sub_100009548(v72, v73);
            if (os_log_type_enabled(v74, v75))
            {
              v76 = swift_slowAlloc();
              v77 = swift_slowAlloc();
              v315._countAndFlagsBits = v77;
              *v76 = 136315138;
              v78 = Data.hexString()();
              v79 = sub_100008F6C(v78._countAndFlagsBits, v78._object, &v315._countAndFlagsBits);

              *(v76 + 4) = v79;
              _os_log_impl(&_mh_execute_header, v74, v75, "HCI event: Status: Transaction Error (%s) <--- --- ---", v76, 0xCu);
              sub_10000959C(v77);
            }

            v80 = v298;
            sub_1000172F4(7);
            (*(v80 + 8))(v299, v300);
            return;
          }

          goto LABEL_84;
        }

        v210 = static os_log_type_t.default.getter();
        sub_100009548(v72, v73);
        if (os_log_type_enabled(v74, v210))
        {
          v211 = swift_slowAlloc();
          v212 = swift_slowAlloc();
          v315._countAndFlagsBits = v212;
          *v211 = 136315138;
          v213 = Data.hexString()();
          v214 = sub_100008F6C(v213._countAndFlagsBits, v213._object, &v315._countAndFlagsBits);

          *(v211 + 4) = v214;
          _os_log_impl(&_mh_execute_header, v74, v210, "HCI event: Status: Transaction Complete (%s) <--- --- ---", v211, 0xCu);
          sub_10000959C(v212);
        }

        sub_1000172F4(6);
LABEL_52:
        (*(v64 + 8))(v299, v300);
        return;
      }

      v153 = v295;
      if (v71 == 21)
      {
        v204 = static os_log_type_t.default.getter();
        sub_100009548(v72, v73);
        if (os_log_type_enabled(v74, v204))
        {
          v205 = swift_slowAlloc();
          v206 = swift_slowAlloc();
          v315._countAndFlagsBits = v206;
          *v205 = 136315138;
          v215 = Data.hexString()();
          v216 = sub_100008F6C(v215._countAndFlagsBits, v215._object, &v315._countAndFlagsBits);

          *(v205 + 4) = v216;
          v209 = "HCI event: Status: Remove Card (%s)";
          goto LABEL_91;
        }

LABEL_92:

        (*(v298 + 8))(v299, v300);
        return;
      }

      if (v71 != 30)
      {
LABEL_84:
        v204 = static os_log_type_t.error.getter();
        sub_100009548(v72, v73);
        if (os_log_type_enabled(v74, v204))
        {
          v205 = swift_slowAlloc();
          v206 = swift_slowAlloc();
          v315._countAndFlagsBits = v206;
          *v205 = 136315138;
          v207 = Data.hexString()();
          v208 = sub_100008F6C(v207._countAndFlagsBits, v207._object, &v315._countAndFlagsBits);

          *(v205 + 4) = v208;
          v209 = "HCI event: Unknown Status (%s)";
LABEL_91:
          _os_log_impl(&_mh_execute_header, v74, v204, v209, v205, 0xCu);
          sub_10000959C(v206);

          goto LABEL_92;
        }

        goto LABEL_92;
      }

      v154 = static os_log_type_t.default.getter();
      sub_100009548(v72, v73);
      if (os_log_type_enabled(v74, v154))
      {
        v155 = swift_slowAlloc();
        v156 = swift_slowAlloc();
        v315._countAndFlagsBits = v156;
        *v155 = 136315138;
        v157 = Data.hexString()();
        v158 = sub_100008F6C(v157._countAndFlagsBits, v157._object, &v315._countAndFlagsBits);

        *(v155 + 4) = v158;
        _os_log_impl(&_mh_execute_header, v74, v154, "HCI event: Status: Target Discovered (%s)", v155, 0xCu);
        sub_10000959C(v156);
      }

      v159 = v306;
      v160 = *(v153 + OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_delegate);
      if (v160)
      {
        [v160 onUpdateWithEvent:1];
      }

      v161 = *(v153 + OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_analytics);
      sub_10011B5DC(&off_10037CDF0);
      sub_10011AAAC(&off_10037CDC8);
      if (qword_10039D2E0 != -1)
      {
        swift_once();
      }

      v162 = type metadata accessor for OSSignposter();
      sub_10000403C(v162, qword_10039E0A8);
      v163 = *(v295 + OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_nfSEReaderSession);
      OSSignposter.logHandle.getter();
      swift_unknownObjectRetain();
      OSSignpostID.init(log:object:)();
      v164 = v307;
      v165 = v305;
      v314 = v307[2];
      v312 = v307 + 2;
      (v314)(v304, v159, v305);
      v166 = type metadata accessor for OSSignpostIntervalState();
      v167 = *(v166 + 48);
      v168 = *(v166 + 52);
      swift_allocObject();
      v169 = OSSignpostIntervalState.init(id:isOpen:)();
      v170 = OSSignposter.logHandle.getter();
      v171 = v303;
      OSSignpostIntervalState.signpostID.getter();
      LODWORD(v311) = static os_signpost_type_t.end.getter();
      v172 = OS_os_log.signpostsEnabled.getter();
      v310 = v161;
      *&v313 = v169;
      if (v172)
      {

        v173 = v301;
        checkForErrorAndConsumeState(state:)();

        v174 = v302;
        v175 = v294;
        if ((*(v302 + 88))(v173, v294) == enum case for OSSignpostError.doubleEnd(_:))
        {
          v176 = 0;
          v177 = 0;
          v309 = "[Error] Interval already ended";
        }

        else
        {
          (*(v174 + 8))(v173, v175);
          v309 = "%s";
          v177 = 2;
          v176 = 1;
        }

        v252 = swift_slowAlloc();
        v253 = swift_slowAlloc();
        v315._countAndFlagsBits = v253;
        *v252 = v177;
        *(v252 + 1) = v176;
        *(v252 + 2) = 2080;
        *(v252 + 4) = sub_100008F6C(0x2070747420646E65, 0xEF676E696C6C6F70, &v315._countAndFlagsBits);
        v254 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v170, v311, v254, "ttp-reader-mode-polling", v309, v252, 0xCu);
        sub_10000959C(v253);

        v251 = v307[1];
        v165 = v305;
        v251(v171, v305);
      }

      else
      {

        v251 = v164[1];
        v251(v171, v165);
      }

      v255 = OSSignposter.logHandle.getter();
      v256 = static os_signpost_type_t.begin.getter();
      if (OS_os_log.signpostsEnabled.getter())
      {
        v257 = swift_slowAlloc();
        v258 = swift_slowAlloc();
        v315._countAndFlagsBits = v258;
        *v257 = 136315138;
        *(v257 + 4) = sub_100008F6C(0x7474206E69676562, 0xEE00646165722070, &v315._countAndFlagsBits);
        v259 = v306;
        v260 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v255, v256, v260, "ttp-reader-mode-reading", "%s", v257, 0xCu);
        sub_10000959C(v258);
        v165 = v305;

        v261 = v298;
      }

      else
      {

        v261 = v298;
        v259 = v306;
      }

      (v314)(v304, v259, v165);
      v262 = *(v166 + 48);
      v263 = *(v166 + 52);
      swift_allocObject();
      OSSignpostIntervalState.init(id:isOpen:)();

      v251(v259, v165);
      v264 = v299;
      if (TLV.length.getter() != 3)
      {
        (*(v261 + 8))(v264, v300);
        return;
      }

      v265 = TLV.value.getter();
      v267 = v266;
      v268 = Data.at(index:)();
      v270 = v269;
      sub_100009548(v265, v267);
      if (v270 >> 60 == 15)
      {
        goto LABEL_109;
      }

      v274 = Data.toUInt8()();
      sub_10001A074(v268, v270);
      switch(v274)
      {
        case 0xFFu:
          v275 = 2;
          break;
        case 0x13u:
          v275 = 0;
          break;
        case 0x11u:
          v275 = 1;
          break;
        default:
LABEL_109:
          v271 = Logger.logObject.getter();
          v272 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v271, v272))
          {
            v273 = swift_slowAlloc();
            *v273 = 0;
            _os_log_impl(&_mh_execute_header, v271, v272, "Unexpected polling type in HCI event", v273, 2u);
          }

          (*(v261 + 8))(v299, v300);
          return;
      }

      v276 = Logger.logObject.getter();
      v277 = static os_log_type_t.debug.getter();
      v278 = os_log_type_enabled(v276, v277);
      v279 = v310;
      if (v278)
      {
        v280 = swift_slowAlloc();
        v281 = swift_slowAlloc();
        v315._countAndFlagsBits = v281;
        *v280 = 136315138;
        if (v275)
        {
          if (v275 == 2)
          {
            v282 = 0xE700000000000000;
            v283 = 0x6E776F6E6B6E75;
          }

          else
          {
            v282 = 0xE100000000000000;
            v283 = 66;
          }
        }

        else
        {
          v282 = 0xE100000000000000;
          v283 = 65;
        }

        v284 = sub_100008F6C(v283, v282, &v315._countAndFlagsBits);

        *(v280 + 4) = v284;
        _os_log_impl(&_mh_execute_header, v276, v277, "pollingType is: %s", v280, 0xCu);
        sub_10000959C(v281);
      }

      else
      {
      }

      sub_100004074(&qword_10039E238, &qword_1002C16D8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1002C1660;
      *(inited + 32) = 6;
      v286 = inited + 32;
      *(inited + 64) = &type metadata for UInt8;
      *(inited + 40) = 0xFF1113u >> (8 * v275);
      v287 = sub_100183344(inited);
      swift_setDeallocating();
      v288 = sub_10000BD44(v286, &qword_10039E240, &unk_1002C16E0);
      v289 = *(v279 + 7);
      __chkstk_darwin(v288);
      v290[-2] = v287;
      os_unfair_lock_lock((v289 + 32));
      sub_10001A76C((v289 + 16));
      os_unfair_lock_unlock((v289 + 32));

      (*(v298 + 8))(v299, v300);
      return;
    }

    v105 = TLV.value.getter();
    sub_100170B68(2, v105, v106, &v315._countAndFlagsBits);
    countAndFlagsBits = v315._countAndFlagsBits;
    object = v315._object;
    sub_1000094F4(v315._countAndFlagsBits, v315._object);
    v109 = Logger.logObject.getter();
    v110 = static os_log_type_t.default.getter();
    sub_100009548(countAndFlagsBits, object);
    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v315._countAndFlagsBits = v112;
      *v111 = 136315138;
      v113 = Data.hexString()();
      v114 = sub_100008F6C(v113._countAndFlagsBits, v113._object, &v315._countAndFlagsBits);

      *(v111 + 4) = v114;
      _os_log_impl(&_mh_execute_header, v109, v110, "HCI event: Status: PPSE Response: %s", v111, 0xCu);
      sub_10000959C(v112);
    }

    v115 = v295;
    v314 = countAndFlagsBits;
    *&v313 = object;
    v116 = sub_1000FA3E8();
    v117 = *(v115 + OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_analytics);
    sub_100004074(&qword_10039E238, &qword_1002C16D8);
    v118 = swift_initStackObject();
    v119 = v118;
    *(v118 + 16) = xmmword_1002C1660;
    *(v118 + 32) = 18;
    v120 = v118 + 32;
    v121 = *(v116 + 2);
    if (v121)
    {
      v311 = (v118 + 32);
      v312 = v117;
      v315._countAndFlagsBits = _swiftEmptyArrayStorage;
      sub_10004E2DC(0, v121, 0);
      v122 = v315._countAndFlagsBits;
      v310 = v116;
      v123 = (v116 + 40);
      do
      {
        v124 = *(v123 - 1);
        v125 = *v123;
        sub_1000094F4(v124, *v123);
        v126 = Data.hexString()();
        sub_100009548(v124, v125);
        v315._countAndFlagsBits = v122;
        v128 = v122[2];
        v127 = v122[3];
        if (v128 >= v127 >> 1)
        {
          sub_10004E2DC((v127 > 1), v128 + 1, 1);
          v122 = v315._countAndFlagsBits;
        }

        v123 += 2;
        v122[2] = v128 + 1;
        *&v122[2 * v128 + 4] = v126;
        --v121;
      }

      while (v121);

      v120 = v311;
      v117 = v312;
    }

    else
    {

      v122 = _swiftEmptyArrayStorage;
    }

    v315._countAndFlagsBits = v122;
    sub_100004074(&qword_10039E270, &unk_1002C3BE0);
    sub_10001A570(&qword_10039E278, &qword_10039E270, &unk_1002C3BE0);
    v178 = BidirectionalCollection<>.joined(separator:)();
    v180 = v179;

    v119[8] = &type metadata for String;
    v119[5] = v178;
    v119[6] = v180;
    v181 = sub_100183344(v119);
    swift_setDeallocating();
    v182 = sub_10000BD44(v120, &qword_10039E240, &unk_1002C16E0);
    v183 = v117[7];
    __chkstk_darwin(v182);
    v290[-2] = v181;
    os_unfair_lock_lock((v183 + 32));
    sub_10001A76C((v183 + 16));
    os_unfair_lock_unlock((v183 + 32));
    sub_100009548(v314, v313);

    (*(v298 + 8))(v299, v300);
  }

  else
  {
    static TLVTag.eventOutcome.getter();
    v81 = dispatch thunk of static Equatable.== infix(_:_:)();
    v67(v25, v21);
    if (v81)
    {
      v67(v66, v21);
      v82 = v297;
      v83 = v300;
      (*(v64 + 16))(v297, v299, v300);
      v84 = Logger.logObject.getter();
      v85 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v315._countAndFlagsBits = v87;
        *v86 = 136315138;
        v88 = TLV.hexStringValue.getter();
        v90 = v89;
        v91 = v82;
        v92 = *(v64 + 8);
        v92(v91, v83);
        v93 = sub_100008F6C(v88, v90, &v315._countAndFlagsBits);

        *(v86 + 4) = v93;
        _os_log_impl(&_mh_execute_header, v84, v85, "HCI event: Outcome Parameter Set: %s", v86, 0xCu);
        sub_10000959C(v87);
      }

      else
      {

        v132 = v82;
        v92 = *(v64 + 8);
        v92(v132, v83);
      }

      v133 = *(v295 + OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_analytics);
      sub_100004074(&qword_10039E238, &qword_1002C16D8);
      v134 = swift_initStackObject();
      *(v134 + 16) = xmmword_1002C1660;
      *(v134 + 32) = 14;
      v135 = TLV.uint64Value.getter();
      if (v136)
      {
        v135 = 0;
        v137 = 0;
        *(v134 + 48) = 0;
        *(v134 + 56) = 0;
      }

      else
      {
        v137 = &type metadata for UInt64;
      }

      *(v134 + 40) = v135;
      *(v134 + 64) = v137;
      v138 = sub_100183344(v134);
      swift_setDeallocating();
      v139 = sub_10000BD44(v134 + 32, &qword_10039E240, &unk_1002C16E0);
      v140 = *(v133 + 56);
      __chkstk_darwin(v139);
      v290[-2] = v138;
      os_unfair_lock_lock((v140 + 32));
      sub_10001A76C((v140 + 16));
      os_unfair_lock_unlock((v140 + 32));

      v141 = v299;
      v142 = TLV.value.getter();
      v144 = v143;
      v145 = sub_1000FA9C0(v142, v143);
      sub_100009548(v142, v144);
      if ((v145 & 0x100) != 0)
      {
        v152 = v141;
      }

      else
      {
        v146 = Logger.logObject.getter();
        v147 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v146, v147))
        {
          v148 = swift_slowAlloc();
          v314 = swift_slowAlloc();
          v315._countAndFlagsBits = v314;
          *v148 = 136315138;
          v149 = SPRTransactionOutcomeStatus.description.getter();
          v151 = sub_100008F6C(v149, v150, &v315._countAndFlagsBits);

          *(v148 + 4) = v151;
          _os_log_impl(&_mh_execute_header, v146, v147, "OPS Status: %s", v148, 0xCu);
          sub_10000959C(v314);
        }

        sub_100030F64(v145);
        v152 = v299;
      }

      v92(v152, v300);
    }

    else
    {
      static TLVTag.eventErrorIndication.getter();
      v94 = dispatch thunk of static Equatable.== infix(_:_:)();
      v67(v25, v21);
      v67(v66, v21);
      if ((v94 & 1) == 0)
      {
        goto LABEL_52;
      }

      v95 = v296;
      v96 = v300;
      (*(v64 + 16))(v296, v299, v300);
      v97 = Logger.logObject.getter();
      v98 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        v315._countAndFlagsBits = v100;
        *v99 = 136315138;
        v101 = TLV.hexStringValue.getter();
        v103 = v102;
        v312 = *(v64 + 8);
        (v312)(v95, v96);
        v104 = sub_100008F6C(v101, v103, &v315._countAndFlagsBits);

        *(v99 + 4) = v104;
        _os_log_impl(&_mh_execute_header, v97, v98, "HCI event: Error Indication: %s", v99, 0xCu);
        sub_10000959C(v100);
      }

      else
      {

        v312 = *(v64 + 8);
        (v312)(v95, v96);
      }

      v314 = *(v295 + OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_analytics);
      sub_100004074(&qword_10039E238, &qword_1002C16D8);
      v184 = swift_initStackObject();
      v313 = xmmword_1002C1660;
      *(v184 + 16) = xmmword_1002C1660;
      *(v184 + 32) = 8;
      v73 = v184 + 32;
      v185 = TLV.value.getter();
      v187 = v186;
      v188 = v309;
      v189 = v310;
      v190 = *(v310 + 13);
      v191 = v308;
      LODWORD(v307) = enum case for Data.Endianness.bigEndian(_:);
      v311 = v310 + 104;
      v306 = v190;
      (v190)(v308);
      v192 = Data.toUInt64(endianness:)();
      sub_100009548(v185, v187);
      v193 = *(v189 + 1);
      v310 = v189 + 8;
      v193(v191, v188);
      v194 = v193;
      *(v184 + 64) = &type metadata for UInt64;
      *(v184 + 40) = v192;
      v72 = sub_100183344(v184);
      swift_setDeallocating();
      v195 = sub_10000BD44(v184 + 32, &qword_10039E240, &unk_1002C16E0);
      v74 = *(v314 + 56);
      __chkstk_darwin(v195);
      v290[-2] = v72;
      os_unfair_lock_lock((v74 + 32));
      sub_10001A76C((v74 + 16));
      os_unfair_lock_unlock((v74 + 32));

      v196 = TLV.value.getter();
      v198 = v197 >> 62;
      if ((v197 >> 62) > 1)
      {
        if (v198 == 2)
        {
          v202 = *(v196 + 16);
          v201 = *(v196 + 24);
          sub_100009548(v196, v197);
          v203 = __OFSUB__(v201, v202);
          v200 = v201 - v202;
          if (v203)
          {
            __break(1u);
            goto LABEL_84;
          }
        }

        else
        {
          sub_100009548(v196, v197);
          v200 = 0;
        }
      }

      else if (v198)
      {
        v217 = HIDWORD(v196);
        v218 = v196;
        sub_100009548(v196, v197);
        if (__OFSUB__(v217, v218))
        {
          __break(1u);
          return;
        }

        v200 = v217 - v218;
      }

      else
      {
        v199 = BYTE6(v197);
        sub_100009548(v196, v197);
        v200 = v199;
      }

      if (v200 == static TLVTag.TAG_DF8115_LENGTH.getter())
      {
        v219 = TLV.value.getter();
        v221 = v220;
        static TLVTag.OFFSET_ERROR_INDICATION_L2.getter();
        v222 = Data._Representation.subscript.getter();
        sub_100009548(v219, v221);
        v223 = TLV.value.getter();
        v225 = v224;
        v226 = static TLVTag.OFFSET_ERROR_INDICATION_SW12.getter();
        v228 = sub_1000FABDC(v226, v227, v223, v225);
        v230 = v229;
        sub_100009548(v223, v225);
        v232 = v308;
        v231 = v309;
        (v306)(v308, v307, v309);
        LOWORD(v225) = Data.toUInt16(endianness:)();
        sub_100009548(v228, v230);
        v194(v232, v231);
        v315._countAndFlagsBits = 0;
        v315._object = 0xE000000000000000;
        _StringGuts.grow(_:)(33);

        v315._countAndFlagsBits = 0xD000000000000015;
        v315._object = 0x8000000100346980;
        sub_100004074(&qword_10039E268, &unk_1002C16F0);
        v233 = swift_allocObject();
        *(v233 + 16) = v313;
        *(v233 + 56) = &type metadata for UInt8;
        *(v233 + 64) = &protocol witness table for UInt8;
        *(v233 + 32) = v222;
        v234._countAndFlagsBits = String.init(format:_:)();
        String.append(_:)(v234);

        v235._countAndFlagsBits = 0x203A32315753202CLL;
        v235._object = 0xE800000000000000;
        String.append(_:)(v235);
        v236 = swift_allocObject();
        *(v236 + 16) = v313;
        *(v236 + 56) = &type metadata for UInt16;
        *(v236 + 64) = &protocol witness table for UInt16;
        *(v236 + 32) = v225;
        v237._countAndFlagsBits = String.init(format:_:)();
        String.append(_:)(v237);

        v317 = v315;
        v238 = TLV.value.getter();
        v240 = v239;
        static TLVTag.OFFSET_ERROR_INDICATION_MSG_ON_ERROR.getter();
        v241 = Data._Representation.subscript.getter();
        v243 = v242;
        sub_100009548(v238, v240);
        Data.toUInt8()();
        sub_100009548(v241, v243);
        v315._countAndFlagsBits = 0;
        v315._object = 0xE000000000000000;
        _StringGuts.grow(_:)(18);

        v315._countAndFlagsBits = 0xD000000000000010;
        v315._object = 0x80000001003469A0;
        v244._countAndFlagsBits = SPRTransactionMessage.description.getter();
        String.append(_:)(v244);

        String.append(_:)(v315);

        v245 = v317;

        v246 = Logger.logObject.getter();
        v247 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v246, v247))
        {
          v248 = swift_slowAlloc();
          v249 = swift_slowAlloc();
          v315._countAndFlagsBits = v249;
          *v248 = 136315138;
          *(v248 + 4) = sub_100008F6C(v245._countAndFlagsBits, v245._object, &v315._countAndFlagsBits);
          _os_log_impl(&_mh_execute_header, v246, v247, "%s", v248, 0xCu);
          sub_10000959C(v249);
        }

        v250 = v298;
        v316 = &type metadata for String;
        v315 = v245;
        swift_beginAccess();
        sub_10002CFD4(&v315, 0xD000000000000015, 0x80000001003468A0);
        swift_endAccess();
        (*(v250 + 8))(v299, v300);
      }

      else
      {
        (v312)(v299, v300);
      }
    }
  }
}

uint64_t sub_1000172F4(int a1)
{
  LODWORD(v224) = a1;
  v212 = type metadata accessor for TLV();
  v210 = *(v212 - 8);
  v2 = *(v210 + 64);
  __chkstk_darwin(v212);
  v201 = &v200 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = type metadata accessor for TLVTag();
  v209 = *(v213 - 8);
  v4 = *(v209 + 64);
  __chkstk_darwin(v213);
  v211 = &v200 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100004074(&unk_10039E210, &unk_1002C65B0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v200 = &v200 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v203 = &v200 - v11;
  v12 = __chkstk_darwin(v10);
  v202 = &v200 - v13;
  v14 = __chkstk_darwin(v12);
  v208 = &v200 - v15;
  v16 = __chkstk_darwin(v14);
  v207 = &v200 - v17;
  v18 = __chkstk_darwin(v16);
  v206 = &v200 - v19;
  v20 = __chkstk_darwin(v18);
  v205 = &v200 - v21;
  __chkstk_darwin(v20);
  v204 = &v200 - v22;
  v23 = type metadata accessor for OSSignpostError();
  v215 = *(v23 - 8);
  v216 = v23;
  v24 = *(v215 + 64);
  __chkstk_darwin(v23);
  v214 = &v200 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for OSSignpostID();
  v27 = *(v26 - 8);
  v28 = v27[8];
  v29 = __chkstk_darwin(v26);
  v31 = &v200 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v29);
  v34 = (&v200 - v33);
  __chkstk_darwin(v32);
  v36 = &v200 - v35;
  v225 = *&v1[OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_analytics];
  sub_10011B5DC(&off_10037CD78);
  if (qword_10039D2E0 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for OSSignposter();
  v38 = sub_10000403C(v37, qword_10039E0A8);
  v39 = *&v1[OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_nfSEReaderSession];
  OSSignposter.logHandle.getter();
  swift_unknownObjectRetain();
  v223 = v39;
  OSSignpostID.init(log:object:)();
  v40 = v27[2];
  v222 = v36;
  v219 = v40;
  v220 = v27 + 2;
  v40(v34, v36, v26);
  v41 = type metadata accessor for OSSignpostIntervalState();
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  swift_allocObject();
  v221 = v34;
  v44 = OSSignpostIntervalState.init(id:isOpen:)();
  v217 = v38;
  v45 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v46 = static os_signpost_type_t.end.getter();
  v47 = OS_os_log.signpostsEnabled.getter();
  v226 = v1;
  v227 = v27;
  v228 = v26;
  v218 = v44;
  if (v47)
  {

    v48 = v214;
    checkForErrorAndConsumeState(state:)();

    v50 = v215;
    v49 = v216;
    v51 = v46;
    if ((*(v215 + 88))(v48, v216) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v52 = 0;
      v53 = 0;
      v54 = "[Error] Interval already ended";
    }

    else
    {
      (*(v50 + 8))(v48, v49);
      v54 = "%s";
      v53 = 2;
      v52 = 1;
    }

    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    *&v232 = v57;
    *v56 = v53;
    *(v56 + 1) = v52;
    *(v56 + 2) = 2080;
    *(v56 + 4) = sub_100008F6C(0x2070747420646E65, 0xEC00000064616572, &v232);
    v58 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v45, v51, v58, "ttp-reader-mode-reading", v54, v56, 0xCu);
    sub_10000959C(v57);

    v55 = v227[1];
    v55(v31, v228);
  }

  else
  {

    v55 = v27[1];
    v55(v31, v26);
  }

  v59 = OSSignposter.logHandle.getter();
  v60 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    *&v232 = v62;
    *v61 = 136315138;
    *(v61 + 4) = sub_100008F6C(0xD000000000000019, 0x8000000100346800, &v232);
    v63 = v222;
    v64 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v59, v60, v64, "ttp-postprocessing", "%s", v61, 0xCu);
    sub_10000959C(v62);

    v65 = v224;
  }

  else
  {

    v65 = v224;
    v63 = v222;
  }

  v66 = v228;
  v219(v221, v63, v228);
  v67 = *(v41 + 48);
  v68 = *(v41 + 52);
  swift_allocObject();
  OSSignpostIntervalState.init(id:isOpen:)();

  v55(v63, v66);
  v69 = v225;
  sub_10011AAAC(&off_10037CDA0);
  *(v69 + 66) = v65 == 6;
  *(v69 + 67) = v65 == 7;
  v70 = v226;
  if (([v226 isCancelled] & 1) == 0)
  {
    if (qword_10039D2D8 != -1)
    {
      swift_once();
    }

    v76 = type metadata accessor for Logger();
    v77 = sub_10000403C(v76, qword_10039E090);
    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      *v80 = 0;
      _os_log_impl(&_mh_execute_header, v78, v79, "ORReadOperation onUpdate(with: .complete)", v80, 2u);
    }

    v81 = *&v70[OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_delegate];
    if (v81)
    {
      [v81 onUpdateWithEvent:9];
    }

    v82 = 0;
    v83 = sub_100018F1C();
    v85 = v84;
    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v228 = 0;
      *v88 = 0;
      _os_log_impl(&_mh_execute_header, v86, v87, "analyticsData received", v88, 2u);
      v82 = v228;
    }

    v89 = static TLV.decode(from:)();
    if (v82)
    {
      sub_100009548(v83, v85);
      v90 = Logger.logObject.getter();
      v91 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        *v92 = 0;
        _os_log_impl(&_mh_execute_header, v90, v91, "Error on GET Analytics Data", v92, 2u);
      }

      goto LABEL_30;
    }

    v216 = v83;
    v217 = v85;
    v219 = v89;
    *&v232 = v89;
    v112 = v211;
    static TLVTag.applicationIdentifier.getter();
    v113 = sub_100004074(&qword_1003A2700, &qword_1002C16D0);
    v114 = sub_10001A570(&qword_10039E230, &qword_1003A2700, &qword_1002C16D0);
    v115 = v204;
    v227 = v113;
    v222 = v114;
    Collection<>.first(tag:)();
    v117 = (v209 + 8);
    v116 = *(v209 + 8);
    (v116)(v112, v213);
    v118 = v210;
    v119 = (v210 + 48);
    v120 = v212;
    v221 = *(v210 + 48);
    v121 = v221(v115, 1, v212);
    v218 = v77;
    v228 = v116;
    if (v121 == 1)
    {
      sub_10000BD44(v115, &unk_10039E210, &unk_1002C65B0);
      v122 = 0;
      v123 = 0;
    }

    else
    {
      v124 = TLV.hexStringValue.getter();
      v125 = v115;
      v122 = v124;
      v123 = v126;
      (*(v118 + 8))(v125, v120);

      sub_100019FD8(10);

      v127 = static String._fromSubstring(_:)();
      v129 = v128;

      *(&v233 + 1) = &type metadata for String;
      *&v232 = v127;
      *(&v232 + 1) = v129;
      swift_beginAccess();
      sub_10002CFD4(&v232, 6580594, 0xE300000000000000);
      swift_endAccess();
    }

    v130 = v206;
    sub_100004074(&qword_10039E238, &qword_1002C16D8);
    inited = swift_initStackObject();
    v132 = inited;
    *(inited + 16) = xmmword_1002C1680;
    *(inited + 32) = 0;
    v215 = inited + 32;
    v133 = v219;
    if (v123)
    {
      v134 = &type metadata for String;
    }

    else
    {
      v122 = 0;
      v134 = 0;
      *(inited + 56) = 0;
    }

    *(inited + 40) = v122;
    *(inited + 48) = v123;
    *(inited + 64) = v134;
    *(inited + 72) = 1;
    *&v232 = v133;
    v135 = v211;
    static TLVTag.applicationLabel.getter();
    v136 = v205;
    Collection<>.first(tag:)();
    v137 = v136;
    (v228)(v135, v213);
    v138 = v136;
    v139 = v212;
    if (v221(v138, 1, v212) == 1)
    {
      sub_10000BD44(v137, &unk_10039E210, &unk_1002C65B0);
    }

    else
    {
      v140 = TLV.stringValue.getter();
      v142 = v141;
      (*(v210 + 8))(v137, v139);
      if (v142)
      {
        *(v132 + 104) = &type metadata for String;
        *(v132 + 80) = v140;
        *(v132 + 88) = v142;
        goto LABEL_57;
      }
    }

    *(v132 + 80) = 0u;
    *(v132 + 96) = 0u;
LABEL_57:
    *(v132 + 112) = 4;
    v143 = v219;
    *&v232 = v219;
    v144 = v211;
    static TLVTag.cryptogramInformationData.getter();
    Collection<>.first(tag:)();
    (v228)(v144, v213);
    v145 = v212;
    v146 = v221;
    v147 = v221(v130, 1, v212);
    v220 = v119;
    if (v147 == 1)
    {
      sub_10000BD44(v130, &unk_10039E210, &unk_1002C65B0);
    }

    else
    {
      v148 = TLV.uint8Value.getter();
      (*(v210 + 8))(v130, v145);
      if ((v148 & 0x100) == 0)
      {
        v149 = v145;
        *(v132 + 144) = &type metadata for UInt8;
        *(v132 + 120) = v148;
LABEL_62:
        *(v132 + 152) = 10;
        *&v232 = v143;
        v150 = v211;
        static TLVTag.issuerApplicationData.getter();
        v151 = v207;
        Collection<>.first(tag:)();
        (v228)(v150, v213);
        if (v146(v151, 1, v149) == 1)
        {
          sub_10000BD44(v151, &unk_10039E210, &unk_1002C65B0);
          *(v132 + 160) = 0u;
          *(v132 + 176) = 0u;
        }

        else
        {
          v152 = TLV.hexStringValue.getter();
          *(v132 + 184) = &type metadata for String;
          *(v132 + 160) = v152;
          *(v132 + 168) = v153;
          (*(v210 + 8))(v151, v149);
        }

        v154 = v208;
        *(v132 + 192) = 9;
        *&v232 = v143;
        v155 = v211;
        static TLVTag.thirdPartyData.getter();
        Collection<>.first(tag:)();
        (v228)(v155, v213);
        v214 = v117;
        v156 = v221;
        if (v221(v154, 1, v212) == 1)
        {
          sub_10000BD44(v154, &unk_10039E210, &unk_1002C65B0);
          v232 = 0u;
          v233 = 0u;
          v231 = v143;
          static TLVTag.cardInterfaceCapabilities.getter();
          v157 = v202;
          Collection<>.first(tag:)();
          (v228)(v155, v213);

          v158 = v212;
          if (v156(v157, 1, v212) == 1)
          {
            sub_10000BD44(v157, &unk_10039E210, &unk_1002C65B0);
            *(v132 + 200) = 0u;
            *(v132 + 216) = 0u;
          }

          else
          {
            v184 = TLV.hexStringValue.getter();
            *(v132 + 224) = &type metadata for String;
            *(v132 + 200) = v184;
            *(v132 + 208) = v185;
            (*(v210 + 8))(v157, v158);
          }

          v70 = v226;
          if (*(&v233 + 1))
          {
            sub_10000BD44(&v232, &qword_10039E248, &qword_1002C23D0);
          }
        }

        else
        {

          v159 = TLV.hexStringValue.getter();
          *(&v233 + 1) = &type metadata for String;
          *&v232 = v159;
          *(&v232 + 1) = v160;
          (*(v210 + 8))(v154, v212);
          sub_100019D3C(&v232, (v132 + 200));
          v70 = v226;
        }

        v186 = sub_100183344(v132);
        swift_setDeallocating();
        sub_100004074(&qword_10039E240, &unk_1002C16E0);
        v187 = swift_arrayDestroy();
        v188 = *(v225 + 56);
        __chkstk_darwin(v187);
        *(&v200 - 2) = v186;
        os_unfair_lock_lock((v188 + 32));
        sub_10001A76C((v188 + 16));
        os_unfair_lock_unlock((v188 + 32));
        sub_100009548(v216, v217);

        v65 = v224;
LABEL_30:
        if (v65 != 7)
        {
          v96 = sub_100019578();
          v98 = v97;
          v99 = Logger.logObject.getter();
          v100 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v99, v100))
          {
            v101 = swift_slowAlloc();
            *v101 = 0;
            _os_log_impl(&_mh_execute_header, v99, v100, "provisionDataBlob received", v101, 2u);
          }

          *(&v233 + 1) = &type metadata for Data;
          *&v232 = v96;
          *(&v232 + 1) = v98;
          swift_beginAccess();
          sub_1000094F4(v96, v98);
          sub_10002CFD4(&v232, 0xD000000000000011, 0x8000000100346850);
          swift_endAccess();
          *&v232 = static TLV.decode(from:)();
          v102 = v211;
          static TLVTag.blobDefinition.getter();
          v103 = sub_100004074(&qword_1003A2700, &qword_1002C16D0);
          v104 = sub_10001A570(&qword_10039E230, &qword_1003A2700, &qword_1002C16D0);
          v105 = v203;
          v227 = v104;
          v228 = v103;
          Collection<>.first(tag:)();
          v106 = *(v209 + 8);
          v209 += 8;
          v106(v102, v213);

          v107 = v210;
          v108 = v212;
          v224 = *(v210 + 48);
          if (v224(v105, 1, v212) == 1)
          {
            sub_10000BD44(v105, &unk_10039E210, &unk_1002C65B0);
            v109 = Logger.logObject.getter();
            v110 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v109, v110))
            {
              v111 = swift_slowAlloc();
              *v111 = 0;
              _os_log_impl(&_mh_execute_header, v109, v110, "cannot parse provisionDataBlob for analytics", v111, 2u);
            }

            sub_1000205C0(20008, 0xD00000000000002CLL, 0x8000000100346870, 0);
            swift_willThrow();
            swift_errorRetain();
            v179 = Logger.logObject.getter();
            v180 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v179, v180))
            {
              v181 = swift_slowAlloc();
              v182 = swift_slowAlloc();
              *v181 = 138412290;
              swift_errorRetain();
              v183 = _swift_stdlib_bridgeErrorToNSError();
              *(v181 + 4) = v183;
              *v182 = v183;
              _os_log_impl(&_mh_execute_header, v179, v180, "cannot parse provisionDataBlob for analytics. %@", v181, 0xCu);
              sub_10000BD44(v182, &unk_10039E220, &qword_1002C3D60);

              sub_100009548(v96, v98);
            }

            else
            {
              sub_100009548(v96, v98);
            }
          }

          else
          {
            v222 = v106;
            (*(v107 + 32))(v201, v105, v108);
            v177 = TLV.value.getter();
            v223 = v178;
            v189 = static TLV.decode(from:)();
            sub_100009548(v177, v223);
            sub_100004074(&qword_10039E238, &qword_1002C16D8);
            v190 = swift_initStackObject();
            *(v190 + 16) = xmmword_1002C1670;
            *(v190 + 32) = 2;
            v223 = v190 + 32;
            *&v232 = v189;
            v191 = v211;
            static TLVTag.provisionDataCipherText.getter();
            v192 = v200;
            Collection<>.first(tag:)();
            (v222)(v191, v213);

            v193 = v212;
            if (v224(v192, 1, v212) == 1)
            {
              sub_10000BD44(v192, &unk_10039E210, &unk_1002C65B0);
              *(v190 + 40) = 0u;
              *(v190 + 56) = 0u;
              v194 = v210;
            }

            else
            {
              v195 = TLV.length.getter();
              *(v190 + 64) = &type metadata for Int;
              *(v190 + 40) = v195;
              v194 = v210;
              (*(v210 + 8))(v192, v193);
            }

            *(v190 + 72) = 16;
            v196 = TLV.length.getter();
            *(v190 + 104) = &type metadata for Int;
            *(v190 + 80) = v196;
            v197 = sub_100183344(v190);
            swift_setDeallocating();
            sub_100004074(&qword_10039E240, &unk_1002C16E0);
            v198 = swift_arrayDestroy();
            v228 = &v200;
            v199 = *(v225 + 56);
            __chkstk_darwin(v198);
            *(&v200 - 2) = v197;
            os_unfair_lock_lock((v199 + 32));
            sub_100019D20((v199 + 16));
            os_unfair_lock_unlock((v199 + 32));
            sub_100009548(v96, v98);

            (*(v194 + 8))(v201, v212);
          }

          v176 = 1;
          return sub_10000FA40(v176);
        }

        v93 = sub_1000191C0();
        v95 = v94 >> 62;
        if ((v94 >> 62) > 1)
        {
          if (v95 != 2 || *(v93 + 16) == *(v93 + 24))
          {
            goto LABEL_47;
          }
        }

        else if (v95)
        {
          if (v93 == v93 >> 32)
          {
LABEL_47:
            sub_100009548(v93, v94);
            goto LABEL_71;
          }
        }

        else if ((v94 & 0xFF000000000000) == 0)
        {
          goto LABEL_47;
        }

        v161 = v93;
        v162 = v94;
        sub_100004074(&qword_10039E238, &qword_1002C16D8);
        v163 = swift_initStackObject();
        *(v163 + 16) = xmmword_1002C1660;
        *(v163 + 32) = 20;
        v164 = Data.hexString()();
        *(v163 + 64) = &type metadata for String;
        *(v163 + 40) = v164;
        v165 = sub_100183344(v163);
        swift_setDeallocating();
        v166 = sub_10000BD44(v163 + 32, &qword_10039E240, &unk_1002C16E0);
        v167 = *(v225 + 56);
        __chkstk_darwin(v166);
        *(&v200 - 2) = v165;
        os_unfair_lock_lock((v167 + 32));
        sub_10001A76C((v167 + 16));
        os_unfair_lock_unlock((v167 + 32));
        sub_100009548(v161, v162);

LABEL_71:
        v168 = OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_provisionReadResult;
        swift_beginAccess();
        v169 = *&v70[v168];
        if (*(v169 + 16))
        {

          v170 = sub_1000F5A28(0xD000000000000015, 0x80000001003468A0);
          if (v171)
          {
            sub_10000BDA4(*(v169 + 56) + 32 * v170, &v232);

            if (swift_dynamicCast())
            {
              v172 = v229;
              v173 = v230;
LABEL_77:
              v174 = sub_1000205C0(20007, v172, v173, 0);
              v175 = *&v70[OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_provisionError];
              *&v70[OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_provisionError] = v174;

              v176 = 0;
              return sub_10000FA40(v176);
            }
          }

          else
          {
          }
        }

        v172 = 0;
        v173 = 0xE000000000000000;
        goto LABEL_77;
      }
    }

    v149 = v145;
    *(v132 + 136) = 0u;
    *(v132 + 120) = 0u;
    goto LABEL_62;
  }

  if (qword_10039D2D8 != -1)
  {
    swift_once();
  }

  v71 = type metadata accessor for Logger();
  sub_10000403C(v71, qword_10039E090);
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    *v74 = 0;
    _os_log_impl(&_mh_execute_header, v72, v73, "ORReadOperation cancelled before postProvisionReadProcessing", v74, 2u);
  }

  return sub_10000F7CC();
}

uint8_t *sub_100018F1C()
{
  v0 = type metadata accessor for TLVTag();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D4C0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000403C(v5, qword_1003A1258);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v19 = v0;
    v9 = v8;
    v18 = swift_slowAlloc();
    v20 = v18;
    *v9 = 136315394;
    sub_10000411C(0, &unk_10039E250, NFSecureElementReaderSession_ptr);
    v10 = _typeName(_:qualified:)();
    v12 = sub_100008F6C(v10, v11, &v20);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    v13 = showFunction(signature:_:)(0xD000000000000012, 0x8000000100346960, _swiftEmptyArrayStorage);
    v15 = sub_100008F6C(v13, v14, &v20);

    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s.%s", v9, 0x16u);
    swift_arrayDestroy();

    v0 = v19;
  }

  static TLVTag.provisionAppletAnalytics.getter();
  v16 = sub_10011E63C(v4);
  (*(v1 + 8))(v4, v0);
  return v16;
}

uint8_t *sub_1000191C0()
{
  v1 = v0;
  v2 = type metadata accessor for TLVTag();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D4C0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  v8 = sub_10000403C(v7, qword_1003A1258);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v31[1] = v8;
    v34 = v12;
    *v11 = 136315394;
    sub_10000411C(0, &unk_10039E250, NFSecureElementReaderSession_ptr);
    v13 = _typeName(_:qualified:)();
    v33 = v2;
    v15 = sub_100008F6C(v13, v14, &v34);
    v32 = v3;
    v16 = v15;

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    v17 = showFunction(signature:_:)(0xD000000000000018, 0x8000000100346920, _swiftEmptyArrayStorage);
    v19 = sub_100008F6C(v17, v18, &v34);
    v1 = v0;
    v2 = v33;

    *(v11 + 14) = v19;
    v3 = v32;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s.%s", v11, 0x16u);
    swift_arrayDestroy();
  }

  static TLVTag.provisionAppletTrackError.getter();
  v20 = v1;
  v21 = sub_10011E63C(v6);
  v23 = v22;
  if (v20)
  {
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    (*(v3 + 8))(v6, v2);
    sub_1000094F4(v21, v23);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    sub_100009548(v21, v23);
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v34 = v27;
      *v26 = 136446210;
      v28 = Data.hexString()();
      v29 = sub_100008F6C(v28._countAndFlagsBits, v28._object, &v34);

      *(v26 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v24, v25, "Track Error: %{public}s", v26, 0xCu);
      sub_10000959C(v27);
    }
  }

  return v21;
}

uint8_t *sub_100019578()
{
  v0 = type metadata accessor for TLVTag();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D4C0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000403C(v5, qword_1003A1258);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v19 = v0;
    v9 = v8;
    v18 = swift_slowAlloc();
    v20 = v18;
    *v9 = 136315394;
    sub_10000411C(0, &unk_10039E250, NFSecureElementReaderSession_ptr);
    v10 = _typeName(_:qualified:)();
    v12 = sub_100008F6C(v10, v11, &v20);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    v13 = showFunction(signature:_:)(0xD000000000000016, 0x8000000100346940, _swiftEmptyArrayStorage);
    v15 = sub_100008F6C(v13, v14, &v20);

    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s.%s", v9, 0x16u);
    swift_arrayDestroy();

    v0 = v19;
  }

  static TLVTag.provisionAppletDataBlob.getter();
  v16 = sub_10011E63C(v4);
  (*(v1 + 8))(v4, v0);
  return v16;
}

uint64_t sub_100019870(unsigned __int8 a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 == 15)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0xC000000000000000;
    goto LABEL_15;
  }

  v7 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v7 != 2)
    {
LABEL_13:
      v5 = 0;
      goto LABEL_14;
    }

    v9 = *(a2 + 16);
    v8 = *(a2 + 24);
    v10 = __OFSUB__(v8, v9);
    v5 = v8 - v9;
    if (!v10)
    {
      goto LABEL_14;
    }

    __break(1u);
LABEL_10:
    v5 = WORD2(a2) - a2;
    if (!__OFSUB__(HIDWORD(a2), a2))
    {
      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_13;
  }

  if (v7)
  {
    goto LABEL_10;
  }

  v5 = BYTE6(a3);
LABEL_14:
  v6 = a3;
  v4 = a2;
LABEL_15:
  LOWORD(v39) = 29344;
  HIWORD(v39) = a1;
  v40 = v5;
  v41 = v4;
  v42 = v6;
  v43 = 0;
  sub_10001A3E8(a2, a3);
  if (qword_10039D4C0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v12 = sub_10000403C(v11, qword_1003A1258);
  sub_10000BC94(&v39, v38);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  sub_10000BCF0(&v39);
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v38[0] = swift_slowAlloc();
    *v15 = 136315394;
    if (a1)
    {
      v16 = 0;
    }

    else
    {
      v16 = 0x41545320524F4620;
    }

    if (a1)
    {
      v17 = 0xE000000000000000;
    }

    else
    {
      v17 = 0xEA00000000005452;
    }

    v18 = sub_100008F6C(v16, v17, v38);
    v46 = v12;
    v19 = v18;

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    v20 = sub_100170CB0(v39 | (v40 << 32), v41, v42, v43);
    v22 = v21;
    v23 = Data.hexString()();
    sub_100009548(v20, v22);
    v24 = sub_100008F6C(v23._countAndFlagsBits, v23._object, v38);

    *(v15 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v13, v14, "CAPDU (MANAGE TAP)%s: %{public}s", v15, 0x16u);
    swift_arrayDestroy();
  }

  sub_1000A0770(v39 | (v40 << 32), v41, v42, v43, 1, v44);
  v25 = v44[1];
  v26 = v45;
  v27 = Logger.logObject.getter();
  if (v25 >> 60 == 15)
  {
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Error from transceive", v29, 2u);
    }

    sub_10001A3FC();
    swift_allocError();
    *v30 = 0;
    swift_willThrow();
  }

  else
  {
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v38[0] = v33;
      *v32 = 136446210;
      v34 = Data.hexString()();
      v35 = sub_100008F6C(v34._countAndFlagsBits, v34._object, v38);

      *(v32 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v27, v31, "RAPDU: %{public}s", v32, 0xCu);
      sub_10000959C(v33);
    }

    if (v26 != 36864)
    {
      sub_10011EFA0();
      sub_10001A3FC();
      swift_allocError();
      *v36 = v26;
      swift_willThrow();
    }

    sub_10000BD44(v44, &qword_10039E2C0, &unk_1002BFEB0);
  }

  return sub_10000BCF0(&v39);
}

_OWORD *sub_100019D3C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_100019D4C(uint64_t a1)
{
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v2 = sub_1000F5AC4(v11), (v3 & 1) != 0))
  {
    sub_10000BDA4(*(a1 + 56) + 32 * v2, v12);
    sub_10001A124(v11);
    if (swift_dynamicCast())
    {
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {

        if (qword_10039D2D8 != -1)
        {
          swift_once();
        }

        v4 = type metadata accessor for Logger();
        sub_10000403C(v4, qword_10039E090);
        v5 = Logger.logObject.getter();
        v6 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v5, v6))
        {
          goto LABEL_10;
        }

        v7 = swift_slowAlloc();
        *v7 = 0;
        v8 = "Type A polling didEnd";
LABEL_9:
        _os_log_impl(&_mh_execute_header, v5, v6, v8, v7, 2u);

LABEL_10:

        return;
      }

      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v9)
      {
        if (qword_10039D2D8 != -1)
        {
          swift_once();
        }

        v10 = type metadata accessor for Logger();
        sub_10000403C(v10, qword_10039E090);
        v5 = Logger.logObject.getter();
        v6 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v5, v6))
        {
          goto LABEL_10;
        }

        v7 = swift_slowAlloc();
        *v7 = 0;
        v8 = "Type B polling didEnd";
        goto LABEL_9;
      }
    }
  }

  else
  {
    sub_10001A124(v11);
  }
}

uint64_t sub_100019FD8(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();

    return String.subscript.getter();
  }

  return result;
}

uint64_t sub_10001A074(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100009548(a1, a2);
  }

  return a1;
}

uint64_t sub_10001A088()
{
  sub_100009548(*(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

void sub_10001A0D0()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[2];
  sub_100014D4C(v1, v2, v3, v4);
}

uint64_t sub_10001A100(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001A178(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004074(&qword_10039E290, &unk_1002C37C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001A1E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StopWatch();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001A24C(uint64_t a1)
{
  v2 = type metadata accessor for StopWatch();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001A2A8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10001A2E8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  sub_100013CDC(v1);
}

uint64_t sub_10001A310()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001A348()
{

  return _swift_deallocObject(v0, 25, 7);
}

void sub_10001A380()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  sub_1000134A4(v1);
}

uint64_t sub_10001A3E8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000094F4(a1, a2);
  }

  return a1;
}

unint64_t sub_10001A3FC()
{
  result = qword_10039E2B8;
  if (!qword_10039E2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039E2B8);
  }

  return result;
}

uint64_t sub_10001A450()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001A488()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

double sub_10001A4C0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_100011F80();
  return result;
}

unint64_t sub_10001A4CC()
{
  result = qword_10039E2D0;
  if (!qword_10039E2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039E2D0);
  }

  return result;
}

uint64_t sub_10001A528(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001A570(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000040BC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProvisionReadOperation.State(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for ProvisionReadOperation.State(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10001A7F0(unint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v7 = v3;
  countAndFlagsBits = type metadata accessor for TLVTag();
  v9 = *(countAndFlagsBits - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(countAndFlagsBits);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D4C0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v38 = sub_10000403C(v13, qword_1003A1258);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v36 = v3;
    v17 = v16;
    v18 = swift_slowAlloc();
    v37 = a3;
    v39 = v18;
    *v17 = 136315394;
    sub_10000411C(0, a1, a2);
    v19 = _typeName(_:qualified:)();
    v21 = sub_100008F6C(v19, v20, &v39);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    v22 = showFunction(signature:_:)(0xD000000000000015, 0x80000001003470B0, _swiftEmptyArrayStorage);
    v24 = sub_100008F6C(v22, v23, &v39);

    *(v17 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v14, v15, "%s.%s", v17, 0x16u);
    swift_arrayDestroy();
    a3 = v37;

    v7 = v36;
  }

  static TLVTag.provisionAppletVersionInfo.getter();
  v25 = a3(v12);
  if (v7)
  {
    (*(v9 + 8))(v12, countAndFlagsBits);
  }

  else
  {
    v27 = v25;
    v28 = v26;
    (*(v9 + 8))(v12, countAndFlagsBits);
    sub_1000094F4(v27, v28);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    sub_100009548(v27, v28);
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v39 = v32;
      *v31 = 136446210;
      v33 = Data.hexString()();
      v34 = sub_100008F6C(v33._countAndFlagsBits, v33._object, &v39);

      *(v31 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v29, v30, "Applet Version: %{public}s", v31, 0xCu);
      sub_10000959C(v32);
    }

    countAndFlagsBits = Data.hexString()()._countAndFlagsBits;
    sub_100009548(v27, v28);
  }

  return countAndFlagsBits;
}

uint64_t sub_10001ABB8()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_10039E390);
  sub_10000403C(v0, qword_10039E390);
  sub_10000411C(0, &qword_1003A26E0, SPRLogger_ptr);
  return static SPRLogger.orReader.getter();
}

uint64_t sub_10001AC24()
{
  v0 = type metadata accessor for OSSignposter();
  sub_100003FD8(v0, qword_10039E3A8);
  v1 = sub_10000403C(v0, qword_10039E3A8);
  if (qword_10039D750 != -1)
  {
    swift_once();
  }

  v2 = sub_10000403C(v0, qword_1003A6F08);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t *ProvisionReader.deinit()
{
  v1 = v0;
  v2 = *v0;
  if (qword_10039D2E8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000403C(v3, qword_10039E390);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v28[0] = swift_slowAlloc();
    *v6 = 136315394;
    v7 = _typeName(_:qualified:)();
    v9 = sub_100008F6C(v7, v8, v28);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    v10 = showFunction(signature:_:)(0x74696E696564, 0xE600000000000000, _swiftEmptyArrayStorage);
    v12 = sub_100008F6C(v10, v11, v28);

    *(v6 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s.%s", v6, 0x16u);
    swift_arrayDestroy();
  }

  if ([v0[17] operationCount] >= 1)
  {
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v28[0] = swift_slowAlloc();
      *v15 = 136315394;
      v16 = _typeName(_:qualified:)();
      v18 = sub_100008F6C(v16, v17, v28);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2080;
      v19 = showFunction(signature:_:)(0x74696E696564, 0xE600000000000000, _swiftEmptyArrayStorage);
      v21 = sub_100008F6C(v19, v20, v28);

      *(v15 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v13, v14, "%s.%s - Operation was in progress: client must have crashed", v15, 0x16u);
      swift_arrayDestroy();
    }

    sub_10000CCE4((v1 + 7), v28);
    v22 = sub_10000BE18(v28, v28[3]);
    type metadata accessor for ORError(0);
    v27[3] = v23;
    v27[0] = sub_1000205C0(20902, 0, 0, 0);
    v26 = *v22;
    type metadata accessor for DefaultManagedDictionary();
    sub_10017A800(v27, 1, 0, 0, 0.0);
    sub_10000959C(v27);
    sub_10000959C(v28);
    [v1[17] cancelAllOperations];
  }

  sub_10000959C(v1 + 2);
  sub_10000959C(v1 + 7);
  sub_10000959C(v1 + 12);

  v24 = v1[18];

  return v1;
}

uint64_t ProvisionReader.__deallocating_deinit()
{
  ProvisionReader.deinit();

  return swift_deallocClassInstance();
}

void ProvisionReader.provisionCard(parameters:delegate:completion:)(void *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v5 = v4;
  v157 = a2;
  v9 = *v4;
  v10 = sub_100004074(&qword_10039E288, &unk_1002C1700);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v156 = &v142 - v12;
  v13 = type metadata accessor for DispatchTime();
  v154 = *(v13 - 8);
  v155 = v13;
  v14 = *(v154 + 64);
  __chkstk_darwin(v13);
  v153 = &v142 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100004074(&qword_10039E290, &unk_1002C37C0);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v150 = &v142 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v149 = &v142 - v20;
  *&v158 = type metadata accessor for StopWatch();
  v151 = *(v158 - 8);
  v21 = *(v151 + 64);
  __chkstk_darwin(v158);
  v152 = &v142 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for OSSignpostID();
  v147 = *(v23 - 8);
  v148 = v23;
  v24 = *(v147 + 64);
  v25 = __chkstk_darwin(v23);
  v145 = &v142 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v146 = &v142 - v27;
  if (qword_10039D2E8 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  v29 = sub_10000403C(v28, qword_10039E390);
  v30 = a1;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  v33 = os_log_type_enabled(v31, v32);
  v161 = v30;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v144 = v5;
    v162[0] = v35;
    *v34 = 136315394;
    v36 = _typeName(_:qualified:)();
    v38 = sub_100008F6C(v36, v37, v162);
    v159 = a4;
    v39 = v38;

    *(v34 + 4) = v39;
    *(v34 + 12) = 2080;
    v160 = v29;
    v40 = a3;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1002C1660;
    *(v41 + 56) = sub_10000411C(0, &qword_10039E3D0, ORProvisionParameters_ptr);
    *(v41 + 32) = v30;
    v42 = v30;
    v43 = showFunction(signature:_:)(0xD00000000000002ELL, 0x8000000100346F40, v41);
    v45 = v44;

    v46 = v43;
    a4 = v159;
    v47 = sub_100008F6C(v46, v45, v162);
    a3 = v40;
    v29 = v160;

    *(v34 + 14) = v47;
    _os_log_impl(&_mh_execute_header, v31, v32, "%s.%s", v34, 0x16u);
    swift_arrayDestroy();
    v5 = v144;
  }

  sub_100021E0C();
  v48 = v5[17];
  if ([v48 operationCount])
  {
    v143 = a3;
    v49 = sub_1000205C0(20010, 0xD000000000000028, 0x8000000100346EB0, 0);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v52 = 138412290;
      v54 = v49;
      v55 = _swift_stdlib_bridgeErrorToNSError();
      *(v52 + 4) = v55;
      *v53 = v55;
      _os_log_impl(&_mh_execute_header, v50, v51, "Error: %@", v52, 0xCu);
      sub_10000BD44(v53, &unk_10039E220, &qword_1002C3D60);
    }

    v56 = v5[18];
    sub_100004074(&qword_10039E238, &qword_1002C16D8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002C1660;
    *(inited + 32) = 7;
    v162[0] = v49;
    type metadata accessor for ORError(0);
    sub_1000223F0(&qword_10039DC70, type metadata accessor for ORError);
    _BridgedStoredNSError.code.getter();
    v58 = v163;
    *(inited + 64) = &type metadata for Int;
    *(inited + 40) = v58;
    v59 = sub_100183344(inited);
    swift_setDeallocating();
    v60 = sub_10000BD44(inited + 32, &qword_10039E240, &unk_1002C16E0);
    v61 = *(v56 + 56);
    __chkstk_darwin(v60);
    *(&v142 - 2) = v59;
    os_unfair_lock_lock((v61 + 32));
    sub_10001A76C((v61 + 16));
    os_unfair_lock_unlock((v61 + 32));

    sub_100030E60();
    v62 = v49;
    (v143)(0, v49);

    goto LABEL_9;
  }

  sub_100021F70(v161);
  v142 = v48;
  if (qword_10039D2F0 != -1)
  {
    swift_once();
  }

  v159 = a4;
  v160 = v29;
  v143 = a3;
  v144 = 0;
  v63 = type metadata accessor for OSSignposter();
  sub_10000403C(v63, qword_10039E3A8);
  v64 = v146;
  static OSSignpostID.exclusive.getter();
  v65 = OSSignposter.logHandle.getter();
  v66 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v67 = swift_slowAlloc();
    *v67 = 0;
    v68 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v65, v66, v68, "ttp-total-time", "begin total time for ttp", v67, 2u);
  }

  v70 = v147;
  v69 = v148;
  (*(v147 + 16))(v145, v64, v148);
  v71 = type metadata accessor for OSSignpostIntervalState();
  v72 = *(v71 + 48);
  v73 = *(v71 + 52);
  swift_allocObject();
  v145 = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v70 + 8))(v64, v69);
  v148 = v5[18];
  v147 = *(v148 + 56);
  os_unfair_lock_lock((v147 + 32));
  v75 = v154;
  v74 = v155;
  v76 = *(v154 + 56);
  v77 = v149;
  v76(v149, 1, 1, v155);
  v78 = v150;
  v76(v150, 1, 1, v74);
  v79 = v152;
  v76(v152, 1, 1, v74);
  v80 = *(v158 + 20);
  v76((v79 + v80), 1, 1, v74);
  sub_10001A178(v77, v79);
  sub_10001A178(v78, v79 + v80);
  v81 = v153;
  static DispatchTime.now()();
  sub_10000BD44(v79, &qword_10039E290, &unk_1002C37C0);
  (*(v75 + 32))(v79, v81, v74);
  v76(v79, 0, 1, v74);
  v82 = v156;
  sub_10001A1E8(v79, v156);
  (*(v151 + 56))(v82, 0, 1, v158);
  v83 = v147;
  sub_10002D278(v82, 0x6D69546C61746F74, 0xE900000000000065);
  sub_10001A24C(v79);
  os_unfair_lock_unlock(v83 + 8);
  v156 = sub_100004074(&qword_10039E238, &qword_1002C16D8);
  v84 = swift_initStackObject();
  *(v84 + 16) = xmmword_1002C1790;
  *(v84 + 32) = 5;
  sub_100004074(&qword_10039E268, &unk_1002C16F0);
  v85 = swift_allocObject();
  v158 = xmmword_1002C1660;
  *(v85 + 16) = xmmword_1002C1660;
  v86 = v161;
  v87 = [v161 currencyCode];
  *(v85 + 56) = &type metadata for Int;
  *(v85 + 64) = &protocol witness table for Int;
  *(v85 + 32) = v87;
  v88 = String.init(format:_:)();
  *(v84 + 64) = &type metadata for String;
  *(v84 + 40) = v88;
  *(v84 + 48) = v89;
  *(v84 + 72) = 19;
  v90 = swift_allocObject();
  *(v90 + 16) = v158;
  v91 = [v86 countryCode];
  *(v90 + 56) = &type metadata for Int;
  *(v90 + 64) = &protocol witness table for Int;
  *(v90 + 32) = v91;
  v92 = String.init(format:_:)();
  *(v84 + 104) = &type metadata for String;
  *(v84 + 80) = v92;
  *(v84 + 88) = v93;
  *(v84 + 112) = 11;
  v94 = [*(*sub_10000BE18(v5 + 2 v5[5]) + 24)];
  if (!v94)
  {
    __break(1u);
    goto LABEL_28;
  }

  v95 = v94;
  v96 = [v94 unsignedShortValue];

  *(v84 + 144) = &type metadata for UInt16;
  *(v84 + 120) = v96;
  v97 = sub_100183344(v84);
  swift_setDeallocating();
  sub_100004074(&qword_10039E240, &unk_1002C16E0);
  v98 = swift_arrayDestroy();
  v99 = v148;
  v100 = *(v148 + 56);
  __chkstk_darwin(v98);
  *(&v142 - 2) = v97;
  os_unfair_lock_lock((v100 + 32));
  v101 = v144;
  sub_10001A76C((v100 + 16));
  os_unfair_lock_unlock((v100 + 32));

  v102 = *sub_10000BE18(v5 + 7, v5[10]);
  sub_10017A138(1);
  sub_10000BD44(v162, &qword_10039E248, &qword_1002C23D0);
  type metadata accessor for ProvisionReadOperation();
  sub_10000CCE4((v5 + 7), v162);
  v103 = v157;
  swift_unknownObjectRetain();

  v104 = v159;

  v105 = v86;
  v106 = v99;
  v107 = v143;
  v108 = sub_10000E538(v105, v103, v162, v106, v143, v104);
  if (!v101)
  {
    v144 = v5;
    v62 = v108;
    v120 = String._bridgeToObjectiveC()();
    [v62 setName:v120];

    v121 = Logger.logObject.getter();
    v122 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v121, v122))
    {

      goto LABEL_26;
    }

    v123 = swift_slowAlloc();
    v124 = swift_slowAlloc();
    v162[0] = v124;
    *v123 = 136315138;
    v125 = [v62 name];

    if (v125)
    {
      v126 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v128 = v127;

      v129 = sub_100008F6C(v126, v128, v162);

      *(v123 + 4) = v129;
      _os_log_impl(&_mh_execute_header, v121, v122, "%s", v123, 0xCu);
      sub_10000959C(v124);

      v107 = v143;
LABEL_26:
      v133 = swift_allocObject();
      swift_weakInit();
      v134 = swift_allocObject();
      v134[2] = v133;
      v134[3] = v62;
      v134[4] = v145;
      v134[5] = v107;
      v134[6] = v104;
      v162[4] = sub_1000222F4;
      v162[5] = v134;
      v162[0] = _NSConcreteStackBlock;
      v162[1] = 1107296256;
      v162[2] = sub_100003974;
      v162[3] = &unk_10037FDD0;
      v135 = _Block_copy(v162);
      v136 = objc_opt_self();

      v137 = [v136 blockOperationWithBlock:v135];
      _Block_release(v135);

      v138 = v137;
      v139 = String._bridgeToObjectiveC()();
      [v138 setName:v139];

      [v138 addDependency:v62];
      sub_100004074(&qword_10039E3C0, &unk_1002C7840);
      v140 = swift_allocObject();
      *(v140 + 16) = xmmword_1002C17A0;
      *(v140 + 32) = v62;
      *(v140 + 40) = v138;
      sub_10000411C(0, &qword_10039E3C8, NSOperation_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v142 addOperations:isa waitUntilFinished:0];

LABEL_9:

      return;
    }

LABEL_28:
    __break(1u);
    return;
  }

  v109 = v101;
  swift_errorRetain();
  v110 = Logger.logObject.getter();
  v111 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v110, v111))
  {
    v112 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    *v112 = 138412290;
    swift_errorRetain();
    v114 = _swift_stdlib_bridgeErrorToNSError();
    *(v112 + 4) = v114;
    *v113 = v114;
    _os_log_impl(&_mh_execute_header, v110, v111, "Error: %@", v112, 0xCu);
    sub_10000BD44(v113, &unk_10039E220, &qword_1002C3D60);
  }

  v115 = swift_initStackObject();
  *(v115 + 16) = v158;
  *(v115 + 32) = 7;
  v162[0] = v109;
  swift_errorRetain();
  sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
  type metadata accessor for ORError(0);
  v116 = swift_dynamicCast();
  v117 = v148;
  if (v116)
  {
    v118 = v163;
    sub_1000223F0(&qword_10039DC70, type metadata accessor for ORError);
    _BridgedStoredNSError.code.getter();

    v119 = v162[53];
  }

  else
  {
    v119 = 20998;
  }

  *(v115 + 64) = &type metadata for Int;
  *(v115 + 40) = v119;
  v130 = sub_100183344(v115);
  swift_setDeallocating();
  v131 = sub_10000BD44(v115 + 32, &qword_10039E240, &unk_1002C16E0);
  v132 = *(v117 + 56);
  __chkstk_darwin(v131);
  *(&v142 - 2) = v130;
  os_unfair_lock_lock((v132 + 32));
  sub_10001A76C((v132 + 16));
  os_unfair_lock_unlock((v132 + 32));

  sub_100030E60();
  swift_errorRetain();
  (v107)(0, v109);
}

void sub_10001C7F0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void *))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = [*(*sub_10000BE18((Strong + 16) *(Strong + 40)) + 24)];
    if (v9)
    {
      v10 = v9;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v11 = Data.init(hexString:)();
      if (v12 >> 60 == 15)
      {
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v51[2] = 0;
      }

      else
      {
        v13 = &type metadata for Data;
      }

      v51[0] = v11;
      v51[1] = v12;
      v51[3] = v13;
      v18 = OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_provisionReadResult;
      swift_beginAccess();
      sub_10002CFD4(v51, 0x7472654364736163, 0xEF65746163696669);
      swift_endAccess();
      v19 = *(a2 + OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_provisionError);
      if (v19)
      {
        v48 = a4;
        v20 = qword_10039D2E8;
        v21 = v19;
        if (v20 != -1)
        {
          swift_once();
        }

        v49 = a3;
        v22 = type metadata accessor for Logger();
        sub_10000403C(v22, qword_10039E390);
        v23 = v21;
        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          *v26 = 138412290;
          v28 = v23;
          v29 = _swift_stdlib_bridgeErrorToNSError();
          *(v26 + 4) = v29;
          *v27 = v29;
          _os_log_impl(&_mh_execute_header, v24, v25, "Error: %@", v26, 0xCu);
          sub_10000BD44(v27, &unk_10039E220, &qword_1002C3D60);
        }

        v30 = *(v8 + 144);
        sub_100004074(&qword_10039E238, &qword_1002C16D8);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1002C1660;
        *(inited + 32) = 7;
        v51[0] = v23;
        type metadata accessor for ORError(0);
        sub_1000223F0(&qword_10039DC70, type metadata accessor for ORError);

        _BridgedStoredNSError.code.getter();
        *(inited + 64) = &type metadata for Int;
        *(inited + 40) = v50;
        sub_100183344(inited);
        swift_setDeallocating();
        v32 = sub_10000BD44(inited + 32, &qword_10039E240, &unk_1002C16E0);
        v33 = *(v30 + 56);
        __chkstk_darwin(v32);
        os_unfair_lock_lock((v33 + 32));
        sub_10001A76C((v33 + 16));
        os_unfair_lock_unlock((v33 + 32));

        v34 = *(v8 + 144);

        sub_10003101C(&off_10037CE40);

        v35 = v23;
        v48(0, v19);

        a3 = v49;
      }

      else
      {
        sub_10000411C(0, &qword_10039E4E0, ORProvisionResult_ptr);
        v36 = *(a2 + v18);

        v38 = sub_100099B8C(v37);
        if (qword_10039D2E8 != -1)
        {
          swift_once();
        }

        v39 = type metadata accessor for Logger();
        sub_10000403C(v39, qword_10039E390);
        v40 = v38;
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          *v43 = 138412290;
          *(v43 + 4) = v40;
          *v44 = v40;
          v45 = v40;
          _os_log_impl(&_mh_execute_header, v41, v42, "ORProvisionResult: %@", v43, 0xCu);
          sub_10000BD44(v44, &unk_10039E220, &qword_1002C3D60);
        }

        v46 = *(v8 + 144);

        sub_10003101C(&off_10037CE68);

        v47 = v40;
        a4(v40, 0);
      }

      sub_10001D18C(a2, a3, v8);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_10039D2E8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000403C(v14, qword_10039E390);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "ProvisionReader deinit before start afterProvisionReadOperation", v17, 2u);
    }
  }
}

void sub_10001D18C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v4 = type metadata accessor for OSSignpostError();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OSSignpostID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D2F0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for OSSignposter();
  sub_10000403C(v14, qword_10039E3A8);
  sub_100186BE8("ttp-postprocessing", 18, 2, *(a1 + OBJC_IVAR____TtC14softposreaderd22ProvisionReadOperation_nfSEReaderSession), 0xD000000000000017, 0x80000001003470D0);
  v15 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v16 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v5 + 88))(v8, v4) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v17 = "[Error] Interval already ended";
    }

    else
    {
      (*(v5 + 8))(v8, v4);
      v17 = "end ttp total time";
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, v16, v19, "ttp-total-time", v17, v18, 2u);
  }

  (*(v10 + 8))(v13, v9);
  v20 = *(v22 + 144);
  sub_10011B5DC(&off_10037CE18);
  sub_100030E60();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ProvisionReader.cancelProvision()()
{
  v1 = v0;
  v2 = *v0;
  if (qword_10039D2E8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000403C(v3, qword_10039E390);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v20[0] = swift_slowAlloc();
    *v6 = 136315394;
    v7 = _typeName(_:qualified:)();
    v9 = sub_100008F6C(v7, v8, v20);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    v10 = showFunction(signature:_:)(0xD000000000000011, 0x8000000100346F70, _swiftEmptyArrayStorage);
    v12 = sub_100008F6C(v10, v11, v20);

    *(v6 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s.%s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v13 = v1[17];
  if ([v13 operationCount] < 1)
  {
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = "No Operation to cancel";
      goto LABEL_10;
    }
  }

  else
  {
    v14 = sub_10000BE18(v1 + 7, v1[10]);
    type metadata accessor for ORError(0);
    v20[3] = v15;
    v20[0] = sub_1000205C0(20009, 0, 0, 0);
    v20[5] = *v14;
    type metadata accessor for DefaultManagedDictionary();
    sub_10017A800(v20, 1, 0, 0, 0.0);
    sub_10000959C(v20);
    *(v1[18] + 65) = 1;
    sub_10003101C(&off_10037CEB8);
    [v13 cancelAllOperations];
    [v13 waitUntilAllOperationsAreFinished];
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = "All Operations are cancelled";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v16, v17, v19, v18, 2u);
    }
  }
}

uint64_t ProvisionReader.checkStatus(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (qword_10039D2E8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000403C(v6, qword_10039E390);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v9 = 136315394;
    v10 = _typeName(_:qualified:)();
    v12 = sub_100008F6C(v10, v11, aBlock);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    v13 = showFunction(signature:_:)(0xD000000000000018, 0x8000000100346FD0, _swiftEmptyArrayStorage);
    v15 = sub_100008F6C(v13, v14, aBlock);

    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s.%s", v9, 0x16u);
    swift_arrayDestroy();
  }

  sub_100021E0C();
  v16 = [objc_opt_self() sharedHardwareManager];
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  aBlock[4] = sub_100022354;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001E61C;
  aBlock[3] = &unk_10037FE20;
  v18 = _Block_copy(aBlock);

  v19 = [v16 startSecureElementManagerSession:v18];
  _Block_release(v18);

  if (([v19 isFirstInQueue] & 1) == 0)
  {
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "waiting for NFSecureElementManagerSession...", v22, 2u);
    }
  }

  objc_opt_self();
  v23 = swift_dynamicCastObjCClass();
  if (v23)
  {
    [v23 setSessionTimeLimit:7.0];
  }

  return swift_unknownObjectRelease();
}

void sub_10001DD24(void *a1, uint64_t a2, void (*a3)(id, id))
{
  if (a1)
  {
    v4 = qword_10039D2E8;
    v5 = a1;
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000403C(v6, qword_10039E390);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "NFSecureElementManagerSession started", v9, 2u);
    }

    if (qword_10039D3E0 != -1)
    {
      swift_once();
    }

    NFSecureElementManagerSession.select(_:)(qword_1003A6AD0, *algn_1003A6AD8);
    v18 = sub_10001A7F0(&qword_10039E4D8, NFSecureElementManagerSession_ptr, sub_10011E668);
    v20 = v19;

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      aBlock[0] = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_100008F6C(v18, v20, aBlock);
      _os_log_impl(&_mh_execute_header, v21, v22, "applet version: %s", v24, 0xCu);
      sub_10000959C(v25);
    }

    v26 = objc_allocWithZone(ORProvisionAppletData);
    v27 = String._bridgeToObjectiveC()();

    v28 = [v26 initWithProvisionAppletVersion:v27];

    a3(v28, 0);
    aBlock[4] = sub_100020000;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003974;
    aBlock[3] = &unk_10037FEE0;
    v29 = _Block_copy(aBlock);
    [v5 endSessionWithCompletion:v29];
    _Block_release(v29);
  }

  else
  {
    if (qword_10039D2E8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000403C(v11, qword_10039E390);
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      aBlock[0] = v16;
      *v14 = 136315394;
      *(v14 + 4) = sub_100008F6C(0xD000000000000018, 0x8000000100346FD0, aBlock);
      *(v14 + 12) = 2112;
      if (!a2)
      {
        __break(1u);
        return;
      }

      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 14) = v17;
      *v15 = v17;
      _os_log_impl(&_mh_execute_header, v12, v13, "no session in %s: %@", v14, 0x16u);
      sub_10000BD44(v15, &unk_10039E220, &qword_1002C3D60);

      sub_10000959C(v16);
    }

    else
    {
    }

    v30 = sub_1000205C0(20001, 0xD000000000000017, 0x8000000100347030, 0);
    a3(0, v30);
  }
}

void sub_10001E61C(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_10001E714(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v44 = a1;
  v45 = v2;
  v47 = v8;
  while (1)
  {
    if (v7)
    {
      goto LABEL_10;
    }

    do
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      if (v10 >= v8)
      {
      }

      v7 = *(v4 + 8 * v10);
      ++v9;
    }

    while (!v7);
    v9 = v10;
LABEL_10:
    v11 = __clz(__rbit64(v7)) | (v9 << 6);
    v12 = *(*(v2 + 48) + v11);
    sub_100022380(*(v2 + 56) + 32 * v11, &v49);
    if (v50 == 1)
    {
    }

    v7 &= v7 - 1;
    v13 = 0xE800000000000000;
    v14 = 0x44496769666E6F63;
    switch(v12)
    {
      case 1:
        v14 = 0xD000000000000010;
        v13 = 0x8000000100345970;
        break;
      case 2:
        v14 = 0xD000000000000010;
        v13 = 0x8000000100345990;
        break;
      case 3:
        break;
      case 4:
        v14 = 0xD000000000000019;
        v13 = 0x80000001003459B0;
        break;
      case 5:
        v14 = 0x79636E6572727563;
        v13 = 0xEC00000065646F43;
        break;
      case 6:
        v14 = 0x696C6C6F50766D65;
        v13 = 0xEE0065707954676ELL;
        break;
      case 7:
        v13 = 0xE900000000000065;
        v14 = 0x646F43726F727265;
        break;
      case 8:
        v14 = 0x646E49726F727265;
        v13 = 0xEF6E6F6974616369;
        break;
      case 9:
        v13 = 0xEA0000000000726FLL;
        v14 = 0x746361466D726F66;
        break;
      case 10:
        v14 = 0xD000000000000015;
        v13 = 0x8000000100345A10;
        break;
      case 11:
        v14 = 0xD000000000000013;
        v13 = 0x8000000100344F70;
        break;
      case 12:
        v14 = 0x44496C656E72656BLL;
        break;
      case 13:
        v14 = 0x664F7265626D756ELL;
        v15 = 1918985556;
        goto LABEL_30;
      case 14:
        v14 = 0xD000000000000013;
        v13 = 0x8000000100345A40;
        break;
      case 15:
        v14 = 0xD000000000000016;
        v13 = 0x8000000100345A60;
        break;
      case 16:
        v14 = 0xD000000000000013;
        v13 = 0x8000000100345A80;
        break;
      case 17:
        v14 = 0x5041527472617473;
        v13 = 0xEC00000057535544;
        break;
      case 18:
        v14 = 0x6574726F70707573;
        v15 = 1145651556;
LABEL_30:
        v13 = v15 | 0xED00007300000000;
        break;
      case 19:
        v14 = 0xD000000000000013;
        v13 = 0x8000000100345AB0;
        break;
      case 20:
        v13 = 0xEA0000000000726FLL;
        v14 = 0x7272456B63617274;
        break;
      case 21:
        v14 = 0xD000000000000011;
        v13 = 0x8000000100345AD0;
        break;
      default:
        v14 = 0xD000000000000015;
        v13 = 0x8000000100345950;
        break;
    }

    v16 = v14;
    sub_100022380(&v49, v48);
    if (!v48[3])
    {
      sub_10000BD44(v48, &qword_10039E248, &qword_1002C23D0);
      goto LABEL_43;
    }

    sub_10000411C(0, &qword_10039E280, NSObject_ptr);
    if (swift_dynamicCast())
    {
      v46 = v51;
      v17 = *a1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48[0] = *a1;
      v19 = v48[0];
      v21 = sub_1000F5A28(v16, v13);
      v22 = *(v19 + 16);
      v23 = (v20 & 1) == 0;
      v24 = v22 + v23;
      if (__OFADD__(v22, v23))
      {
        goto LABEL_55;
      }

      v25 = v20;
      if (*(v19 + 24) >= v24)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v28 = v46;
          if (v20)
          {
            goto LABEL_49;
          }
        }

        else
        {
          sub_100181554();
          v28 = v46;
          if (v25)
          {
            goto LABEL_49;
          }
        }

LABEL_40:
        v29 = v48[0];
        *(v48[0] + 8 * (v21 >> 6) + 64) |= 1 << v21;
        v30 = (v29[6] + 16 * v21);
        *v30 = v16;
        v30[1] = v13;
        *(v29[7] + 8 * v21) = v28;
        sub_10000BD44(&v49, &qword_10039E248, &qword_1002C23D0);
        v31 = v29[2];
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (!v32)
        {
          v29[2] = v33;
          goto LABEL_50;
        }

LABEL_56:
        __break(1u);
LABEL_57:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        JUMPOUT(0x10001ED98);
      }

      sub_10017CFE4(v24, isUniquelyReferenced_nonNull_native);
      v26 = sub_1000F5A28(v16, v13);
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_57;
      }

      v21 = v26;
      v28 = v46;
      if ((v25 & 1) == 0)
      {
        goto LABEL_40;
      }

LABEL_49:

      v29 = v48[0];
      v41 = *(v48[0] + 56);
      v42 = *(v41 + 8 * v21);
      *(v41 + 8 * v21) = v28;

      sub_10000BD44(&v49, &qword_10039E248, &qword_1002C23D0);
LABEL_50:
      a1 = v44;
      v2 = v45;
      *v44 = v29;
      v8 = v47;
    }

    else
    {
LABEL_43:
      v34 = *a1;
      v35 = sub_1000F5A28(v16, v13);
      LOBYTE(v34) = v36;

      if (v34)
      {
        v37 = *a1;
        v38 = swift_isUniquelyReferenced_nonNull_native();
        v39 = *a1;
        v48[0] = *a1;
        v8 = v47;
        if (!v38)
        {
          sub_100181554();
          v39 = v48[0];
        }

        v40 = *(*(v39 + 48) + 16 * v35 + 8);

        sub_10017C5C4(v35, v39);
        sub_10000BD44(&v49, &qword_10039E248, &qword_1002C23D0);
        *a1 = v39;
      }

      else
      {
        sub_10000BD44(&v49, &qword_10039E248, &qword_1002C23D0);
        v8 = v47;
      }
    }
  }
}

uint64_t sub_10001EDF0(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v48 = a1;
  v49 = v2;
  while (v7)
  {
LABEL_10:
    v11 = __clz(__rbit64(v7)) | (v9 << 6);
    v12 = *(*(v2 + 48) + v11);
    sub_100022380(*(v2 + 56) + 32 * v11, &v53);
    if (v54 == 1)
    {
    }

    v7 &= v7 - 1;
    v13 = 0xD000000000000011;
    v14 = 0xD000000000000018;
    v15 = 0x7A69536863746142;
    if (v12 != 4)
    {
      v15 = 0x646F43726F727245;
    }

    if (v12 != 3)
    {
      v14 = v15;
    }

    v16 = 0xE900000000000065;
    if (v12 == 3)
    {
      v16 = 0x8000000100344F20;
    }

    if (v12 == 1)
    {
      v13 = 0x746942746E657645;
    }

    v17 = 0x8000000100344F00;
    if (v12 == 1)
    {
      v17 = 0xEB0000000070616DLL;
    }

    if (!v12)
    {
      v13 = 1701080909;
      v17 = 0xE400000000000000;
    }

    v18 = v12 <= 2;
    if (v12 <= 2)
    {
      v19 = v13;
    }

    else
    {
      v19 = v14;
    }

    if (v18)
    {
      v20 = v17;
    }

    else
    {
      v20 = v16;
    }

    sub_100022380(&v53, v52);
    if (!v52[3])
    {
      sub_10000BD44(v52, &qword_10039E248, &qword_1002C23D0);
      goto LABEL_37;
    }

    sub_10000411C(0, &qword_10039E280, NSObject_ptr);
    if (swift_dynamicCast())
    {
      v50 = v55;
      v21 = *a1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52[0] = *a1;
      v23 = v52[0];
      v51 = v19;
      v25 = sub_1000F5A28(v19, v20);
      v26 = *(v23 + 16);
      v27 = (v24 & 1) == 0;
      v28 = v26 + v27;
      if (__OFADD__(v26, v27))
      {
        goto LABEL_50;
      }

      v29 = v24;
      if (*(v23 + 24) >= v28)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v32 = v50;
          if (v24)
          {
            goto LABEL_43;
          }
        }

        else
        {
          sub_100181554();
          v32 = v50;
          if (v29)
          {
            goto LABEL_43;
          }
        }
      }

      else
      {
        sub_10017CFE4(v28, isUniquelyReferenced_nonNull_native);
        v30 = sub_1000F5A28(v51, v20);
        if ((v29 & 1) != (v31 & 1))
        {
          goto LABEL_52;
        }

        v25 = v30;
        v32 = v50;
        if (v29)
        {
LABEL_43:

          v40 = v52[0];
          v41 = *(v52[0] + 56);
          v42 = *(v41 + 8 * v25);
          *(v41 + 8 * v25) = v32;

          sub_10000BD44(&v53, &qword_10039E248, &qword_1002C23D0);
          goto LABEL_47;
        }
      }

      v40 = v52[0];
      *(v52[0] + 8 * (v25 >> 6) + 64) |= 1 << v25;
      v43 = (v40[6] + 16 * v25);
      *v43 = v51;
      v43[1] = v20;
      *(v40[7] + 8 * v25) = v32;
      sub_10000BD44(&v53, &qword_10039E248, &qword_1002C23D0);
      v44 = v40[2];
      v45 = __OFADD__(v44, 1);
      v46 = v44 + 1;
      if (v45)
      {
        goto LABEL_51;
      }

      v40[2] = v46;
LABEL_47:
      a1 = v48;
      v2 = v49;
      *v48 = v40;
    }

    else
    {
LABEL_37:
      v33 = *a1;
      v34 = sub_1000F5A28(v19, v20);
      LOBYTE(v33) = v35;

      if (v33)
      {
        v36 = *a1;
        v37 = swift_isUniquelyReferenced_nonNull_native();
        v38 = *a1;
        v52[0] = *a1;
        if (!v37)
        {
          sub_100181554();
          v38 = v52[0];
        }

        v39 = *(*(v38 + 48) + 16 * v34 + 8);

        sub_10017C5C4(v34, v38);
        sub_10000BD44(&v53, &qword_10039E248, &qword_1002C23D0);
        *a1 = v38;
      }

      else
      {
        sub_10000BD44(&v53, &qword_10039E248, &qword_1002C23D0);
      }
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10001F234(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v48 = v8;
  v49 = v2;
  while (1)
  {
    if (v7)
    {
      goto LABEL_10;
    }

    do
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      if (v10 >= v8)
      {
      }

      v7 = *(v4 + 8 * v10);
      ++v9;
    }

    while (!v7);
    v9 = v10;
LABEL_10:
    v11 = __clz(__rbit64(v7)) | (v9 << 6);
    v12 = *(*(v2 + 48) + v11);
    sub_100022380(*(v2 + 56) + 32 * v11, &v52);
    if (v53 == 1)
    {
    }

    v7 &= v7 - 1;
    v13 = 0xE900000000000065;
    v14 = 0x646F43726F727245;
    switch(v12)
    {
      case 1:
        v14 = 0xD000000000000011;
        v13 = 0x8000000100344F90;
        break;
      case 2:
        break;
      case 3:
        v14 = 0xD000000000000016;
        v13 = 0x8000000100344FB0;
        break;
      case 4:
        v14 = 0xD000000000000011;
        v13 = 0x8000000100344FD0;
        break;
      case 5:
        v14 = 0xD000000000000014;
        v13 = 0x8000000100344FF0;
        break;
      case 6:
        v13 = 0xEE0044496769666ELL;
        v14 = 0x6F436C61626F6C47;
        break;
      case 7:
        v14 = 0xD000000000000011;
        v13 = 0x8000000100344D50;
        break;
      case 8:
        v13 = 0xEA00000000006D75;
        v14 = 0x4E73736150534156;
        break;
      case 9:
        v14 = 0xD00000000000001DLL;
        v13 = 0x8000000100345020;
        break;
      case 10:
        v14 = 0xD000000000000010;
        v13 = 0x8000000100345040;
        break;
      case 11:
        v14 = 0xD000000000000015;
        v13 = 0x8000000100345060;
        break;
      case 12:
        v14 = 0x746361466D726F46;
        goto LABEL_37;
      case 13:
        v14 = 0xD000000000000013;
        v13 = 0x8000000100345090;
        break;
      case 14:
        v13 = 0xE300000000000000;
        v14 = 5396052;
        break;
      case 15:
        v13 = 0xEF6E6F6974616369;
        v14 = 0x646E49726F727245;
        break;
      case 16:
        v14 = 0xD000000000000013;
        v13 = 0x80000001003450C0;
        break;
      case 17:
        v14 = 0xD000000000000012;
        v13 = 0x80000001003450E0;
        break;
      case 18:
        v13 = 0xEE00534156646165;
        v14 = 0x5274756F656D6954;
        break;
      case 19:
        v14 = 0x7272456B63617254;
LABEL_37:
        v13 = 0xEA0000000000726FLL;
        break;
      case 20:
        v13 = 0xEC000000746E756FLL;
        v14 = 0x43676E6972616554;
        break;
      case 21:
        v14 = 0xD00000000000001DLL;
        v13 = 0x8000000100345120;
        break;
      case 22:
        v14 = 0xD000000000000019;
        v13 = 0x8000000100345140;
        break;
      case 23:
        v14 = 0xD000000000000013;
        v13 = 0x8000000100345160;
        break;
      case 24:
        v14 = 0xD000000000000011;
        v13 = 0x8000000100345180;
        break;
      case 25:
        v14 = 0xD000000000000012;
        v13 = 0x80000001003451A0;
        break;
      case 26:
        v14 = 0xD00000000000001BLL;
        v13 = 0x80000001003451C0;
        break;
      case 27:
        v14 = 0xD000000000000013;
        v13 = 0x80000001003451E0;
        break;
      case 28:
        v14 = 0xD000000000000012;
        v13 = 0x8000000100345200;
        break;
      default:
        v14 = 0xD000000000000013;
        v13 = 0x8000000100344F70;
        break;
    }

    sub_100022380(&v52, v51);
    if (!v51[3])
    {
      sub_10000BD44(v51, &qword_10039E248, &qword_1002C23D0);
      goto LABEL_48;
    }

    sub_10000411C(0, &qword_10039E280, NSObject_ptr);
    if (swift_dynamicCast())
    {
      v50 = v54;
      v15 = *a1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = a1;
      v18 = isUniquelyReferenced_nonNull_native;
      v19 = v14;
      v20 = v17;
      v51[0] = *v17;
      v21 = v51[0];
      v22 = v19;
      v23 = sub_1000F5A28(v19, v13);
      v25 = *(v21 + 16);
      v26 = (v24 & 1) == 0;
      v27 = __OFADD__(v25, v26);
      v28 = v25 + v26;
      if (v27)
      {
        goto LABEL_61;
      }

      v29 = v24;
      if (*(v21 + 24) < v28)
      {
        sub_10017CFE4(v28, v18);
        v23 = sub_1000F5A28(v22, v13);
        if ((v29 & 1) != (v30 & 1))
        {
          goto LABEL_63;
        }

LABEL_53:
        a1 = v20;
        if (v29)
        {
          goto LABEL_54;
        }

LABEL_56:
        v43 = v51[0];
        *(v51[0] + 8 * (v23 >> 6) + 64) |= 1 << v23;
        v44 = (v43[6] + 16 * v23);
        *v44 = v22;
        v44[1] = v13;
        *(v43[7] + 8 * v23) = v50;
        sub_10000BD44(&v52, &qword_10039E248, &qword_1002C23D0);
        v45 = v43[2];
        v27 = __OFADD__(v45, 1);
        v46 = v45 + 1;
        if (!v27)
        {
          v43[2] = v46;
          *a1 = v43;
          goto LABEL_58;
        }

LABEL_62:
        __break(1u);
LABEL_63:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        JUMPOUT(0x10001F9CCLL);
      }

      if (v18)
      {
        goto LABEL_53;
      }

      v42 = v23;
      sub_100181554();
      v23 = v42;
      a1 = v20;
      if ((v29 & 1) == 0)
      {
        goto LABEL_56;
      }

LABEL_54:
      v38 = v23;

      v39 = v51[0];
      v40 = *(v51[0] + 56);
      v41 = *(v40 + 8 * v38);
      *(v40 + 8 * v38) = v50;

      sub_10000BD44(&v52, &qword_10039E248, &qword_1002C23D0);
      *a1 = v39;
LABEL_58:
      v8 = v48;
      v2 = v49;
    }

    else
    {
LABEL_48:
      v31 = *a1;
      v32 = sub_1000F5A28(v14, v13);
      LOBYTE(v31) = v33;

      if (v31)
      {
        v34 = *a1;
        v35 = swift_isUniquelyReferenced_nonNull_native();
        v36 = *a1;
        v51[0] = *a1;
        if (!v35)
        {
          sub_100181554();
          v36 = v51[0];
        }

        v37 = *(*(v36 + 48) + 16 * v32 + 8);

        sub_10017C5C4(v32, v36);
        sub_10000BD44(&v52, &qword_10039E248, &qword_1002C23D0);
        *a1 = v36;
      }

      else
      {
        sub_10000BD44(&v52, &qword_10039E248, &qword_1002C23D0);
      }
    }
  }
}

uint64_t sub_10001FA40(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v43 = a1;
  v44 = v2;
  while (1)
  {
    if (v7)
    {
      goto LABEL_10;
    }

    do
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      if (v10 >= v8)
      {
      }

      v7 = *(v4 + 8 * v10);
      ++v9;
    }

    while (!v7);
    v9 = v10;
LABEL_10:
    v11 = __clz(__rbit64(v7)) | (v9 << 6);
    v12 = *(*(v2 + 48) + v11);
    sub_100022380(*(v2 + 56) + 32 * v11, &v48);
    if (v49 == 1)
    {
    }

    v7 &= v7 - 1;
    v13 = 0xED00006E6F697372;
    v14 = 0x655674656C707041;
    switch(v12)
    {
      case 1:
        break;
      case 2:
        v14 = 0xD000000000000015;
        v13 = 0x8000000100344D70;
        break;
      case 3:
        v14 = 0x7250646564616F4CLL;
        v13 = 0xED0000656C69666FLL;
        break;
      case 4:
        v13 = 0xE900000000000065;
        v14 = 0x646F43726F727245;
        break;
      case 5:
        v14 = 0xD000000000000010;
        v13 = 0x8000000100344DA0;
        break;
      case 6:
        v14 = 0x637465464D414C53;
        v13 = 0xEF73757461745368;
        break;
      case 7:
        v14 = 0x7245726576726553;
        v13 = 0xEF65646F43726F72;
        break;
      case 8:
        v14 = 0x654E6C656E72654BLL;
        v15 = 1684366437;
        goto LABEL_25;
      case 9:
        v14 = 0xD000000000000012;
        v13 = 0x8000000100344DE0;
        break;
      case 10:
        v14 = 0x4E656C69666F7250;
        v13 = 0xED00006465646565;
        break;
      case 11:
        v14 = 0xD000000000000012;
        v13 = 0x8000000100344E10;
        break;
      case 12:
        v14 = 0x5374736575716552;
        v13 = 0xED00007375746174;
        break;
      case 13:
        v14 = 0x726F727245464153;
        v15 = 1701080899;
LABEL_25:
        v13 = v15 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        break;
      default:
        v14 = 0xD000000000000011;
        v13 = 0x8000000100344D50;
        break;
    }

    v46 = v14;
    sub_100022380(&v48, v47);
    if (!v47[3])
    {
      sub_10000BD44(v47, &qword_10039E248, &qword_1002C23D0);
      goto LABEL_35;
    }

    sub_10000411C(0, &qword_10039E280, NSObject_ptr);
    if (swift_dynamicCast())
    {
      v45 = v50;
      v16 = *a1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v47[0] = *a1;
      v18 = v47[0];
      v20 = sub_1000F5A28(v46, v13);
      v21 = *(v18 + 16);
      v22 = (v19 & 1) == 0;
      v23 = v21 + v22;
      if (__OFADD__(v21, v22))
      {
        goto LABEL_47;
      }

      v24 = v19;
      if (*(v18 + 24) >= v23)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v27 = v45;
          if (v19)
          {
            goto LABEL_41;
          }
        }

        else
        {
          sub_100181554();
          v27 = v45;
          if (v24)
          {
            goto LABEL_41;
          }
        }

LABEL_32:
        v28 = v47[0];
        *(v47[0] + 8 * (v20 >> 6) + 64) |= 1 << v20;
        v29 = (v28[6] + 16 * v20);
        *v29 = v46;
        v29[1] = v13;
        *(v28[7] + 8 * v20) = v27;
        sub_10000BD44(&v48, &qword_10039E248, &qword_1002C23D0);
        v30 = v28[2];
        v31 = __OFADD__(v30, 1);
        v32 = v30 + 1;
        if (!v31)
        {
          v28[2] = v32;
          goto LABEL_42;
        }

LABEL_48:
        __break(1u);
LABEL_49:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        JUMPOUT(0x10001FFC8);
      }

      sub_10017CFE4(v23, isUniquelyReferenced_nonNull_native);
      v25 = sub_1000F5A28(v46, v13);
      if ((v24 & 1) != (v26 & 1))
      {
        goto LABEL_49;
      }

      v20 = v25;
      v27 = v45;
      if ((v24 & 1) == 0)
      {
        goto LABEL_32;
      }

LABEL_41:

      v28 = v47[0];
      v40 = *(v47[0] + 56);
      v41 = *(v40 + 8 * v20);
      *(v40 + 8 * v20) = v27;

      sub_10000BD44(&v48, &qword_10039E248, &qword_1002C23D0);
LABEL_42:
      a1 = v43;
      v2 = v44;
      *v43 = v28;
    }

    else
    {
LABEL_35:
      v33 = *a1;
      v34 = sub_1000F5A28(v46, v13);
      LOBYTE(v33) = v35;

      if (v33)
      {
        v36 = *a1;
        v37 = swift_isUniquelyReferenced_nonNull_native();
        v38 = *a1;
        v47[0] = *a1;
        if ((v37 & 1) == 0)
        {
          sub_100181554();
          v38 = v47[0];
        }

        v39 = *(*(v38 + 48) + 16 * v34 + 8);

        sub_10017C5C4(v34, v38);
        sub_10000BD44(&v48, &qword_10039E248, &qword_1002C23D0);
        *a1 = v38;
      }

      else
      {
        sub_10000BD44(&v48, &qword_10039E248, &qword_1002C23D0);
      }
    }
  }
}