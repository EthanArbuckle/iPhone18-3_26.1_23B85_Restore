uint64_t sub_1000D4058()
{
  v1 = v0;
  v2 = type metadata accessor for OSSignpostError();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v24[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for OSSignpostID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v24[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v0 + 280))
  {
    v12 = qword_10039D558;

    if (v12 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for OSSignposter();
    sub_10000403C(v13, qword_1003A2720);
    v14 = OSSignposter.logHandle.getter();
    OSSignpostIntervalState.signpostID.getter();
    v25 = static os_signpost_type_t.end.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {

      checkForErrorAndConsumeState(state:)();

      if ((*(v3 + 88))(v6, v2) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v15 = "[Error] Interval already ended";
      }

      else
      {
        (*(v3 + 8))(v6, v2);
        v15 = "end pin capture";
      }

      v16 = swift_slowAlloc();
      *v16 = 0;
      v17 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, v25, v17, "pin-totalCaptureTime", v15, v16, 2u);
    }

    (*(v8 + 8))(v11, v7);
  }

  v18 = *(v1 + 280);
  *(v1 + 280) = 0;

  v19 = *(v1 + 72);
  v20 = *(v1 + 104);
  v26[2] = *(v1 + 88);
  v26[3] = v20;
  v26[4] = *(v1 + 120);
  v26[0] = *(v1 + 56);
  v26[1] = v19;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 104) = 0u;
  *(v1 + 120) = 0u;
  sub_10000BD44(v26, &qword_1003A2A20, &qword_1002C6C88);
  v21 = *(v1 + 136);
  v22 = *(v1 + 144);
  *(v1 + 136) = xmmword_1002C3C70;
  return sub_10001A074(v21, v22);
}

uint64_t sub_1000D4374()
{
  v1 = objc_opt_self();
  v2 = [v1 sharedInstance];
  if (!v2)
  {
    __break(1u);
  }

  v3 = v2;
  v4 = [v2 attributeForKey:AVSystemController_RecordingSessionsDescriptionAttribute];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
  }

  v39[0] = v37;
  v39[1] = v38;
  if (!*(&v38 + 1))
  {
    sub_10000BD44(v39, &qword_10039E248, &qword_1002C23D0);
    goto LABEL_13;
  }

  sub_10000411C(0, &qword_1003A1120, NSArray_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    if (qword_10039D550 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000403C(v12, qword_1003A2708);
    v7 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v7, v13, "couldn't access AVSC", v14, 2u);
    }

    goto LABEL_21;
  }

  if ([v36 count])
  {
    if (qword_10039D550 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000403C(v5, qword_1003A2708);
    v6 = v36;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *(v9 + 4) = v6;
      *v10 = v6;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v7, v8, "something is recording %@", v9, 0xCu);
      sub_10000BD44(v10, &unk_10039E220, &qword_1002C3D60);

      return 0;
    }

LABEL_21:
    return 0;
  }

  result = [v1 sharedInstance];
  if (result)
  {
    v16 = result;
    sub_100004074(&qword_1003A2A18, &unk_1002C6C78);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1002C1660;
    v18 = AVSystemController_RecordingStateDidChangeNotification;
    *(v17 + 32) = AVSystemController_RecordingStateDidChangeNotification;
    type metadata accessor for Name(0);
    v19 = v18;
    isa = Array._bridgeToObjectiveC()().super.isa;

    *&v39[0] = 0;
    v21 = [v16 setAttribute:isa forKey:AVSystemController_SubscribeToNotificationsAttribute error:v39];

    v22 = *&v39[0];
    if (v21)
    {
      v23 = objc_opt_self();
      v24 = v22;
      v25 = [v23 defaultCenter];
      v26 = [v1 sharedInstance];
      [v25 addObserver:v0 selector:"recordingStateDidChange:" name:v19 object:v26];

      return 1;
    }

    v27 = *&v39[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_10039D550 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_10000403C(v28, qword_1003A2708);
    swift_errorRetain();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *&v39[0] = v32;
      *v31 = 136315138;
      swift_errorRetain();
      sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
      v33 = String.init<A>(describing:)();
      v35 = sub_100008F6C(v33, v34, v39);

      *(v31 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v29, v30, "failed to subscribe notification %s", v31, 0xCu);
      sub_10000959C(v32);
    }

    else
    {
    }

    return 0;
  }

  __break(1u);
  return result;
}

void sub_1000D497C(void *a1)
{
  v2 = v1;
  if (qword_10039D550 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000403C(v4, qword_1003A2708);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = &selRef_currencyCode;
  if (os_log_type_enabled(v6, v7))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    aBlock[0] = v10;
    *v9 = 136315138;
    v11 = [v5 userInfo];
    if (v11)
    {
      v12 = v2;
      v13 = v11;
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v2 = v12;
      v8 = &selRef_currencyCode;
      v14 = Dictionary.description.getter();
      v16 = v15;
    }

    else
    {
      v16 = 0xE300000000000000;
      v14 = 7104878;
    }

    v17 = sub_100008F6C(v14, v16, aBlock);

    *(v9 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "recordingStateDidChange %s", v9, 0xCu);
    sub_10000959C(v10);
  }

  else
  {
  }

  v18 = [v5 v8[51]];
  if (!v18)
  {
    goto LABEL_20;
  }

  v19 = v18;
  v20 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  aBlock[6] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  aBlock[7] = v21;
  AnyHashable.init<A>(_:)();
  if (!*(v20 + 16) || (v22 = sub_1000F5AC4(aBlock), (v23 & 1) == 0))
  {
LABEL_19:

    sub_10001A124(aBlock);
LABEL_20:
    v32 = 0u;
    v33 = 0u;
    goto LABEL_21;
  }

  sub_10000BDA4(*(v20 + 56) + 32 * v22, &v32);
  sub_10001A124(aBlock);

  if (!*(&v33 + 1))
  {
LABEL_21:
    sub_10000BD44(&v32, &qword_10039E248, &qword_1002C23D0);
    return;
  }

  sub_10000411C(0, &qword_1003A2308, NSNumber_ptr);
  if (swift_dynamicCast())
  {
    v24 = aBlock[0];
    if (![aBlock[0] BOOLValue])
    {

      return;
    }

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "something start recording", v27, 2u);
    }

    v28 = *(v2 + 288);
    v29 = swift_allocObject();
    v29[2] = sub_1000D7594;
    v29[3] = v2;
    aBlock[4] = sub_1000D759C;
    aBlock[5] = v29;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000D21D4;
    aBlock[3] = &unk_1003831D0;
    v30 = _Block_copy(aBlock);

    dispatch_sync(v28, v30);
    _Block_release(v30);
    LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

    if (v28)
    {
      __break(1u);
      goto LABEL_19;
    }
  }
}

double sub_1000D4E9C@<D0>(_OWORD *a1@<X8>)
{
  v4 = *(*v1 + 288);
  sub_100004074(&qword_1003A2A00, &qword_1002C6C68);
  OS_dispatch_queue.sync<A>(execute:)();
  if (!v2)
  {
    result = *&v6;
    *a1 = v6;
    a1[1] = v7;
    a1[2] = v8;
  }

  return result;
}

uint64_t sub_1000D4F98()
{
  v2 = *(*v0 + 288);
  sub_10000411C(0, &qword_1003A29F8, SPRPINData_ptr);
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v1)
  {
    return v4;
  }

  return result;
}

uint64_t sub_1000D5014()
{
  v1 = *v0;
  v2 = *(*v0 + 288);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1000D5208;
  *(v3 + 24) = v1;
  v6[4] = sub_1000D5220;
  v6[5] = v3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_1000D21D4;
  v6[3] = &unk_100383180;
  v4 = _Block_copy(v6);

  dispatch_sync(v2, v4);
  _Block_release(v4);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000D5220()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1000D5248(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1000D52B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, char *a8)
{
  ObjectType = swift_getObjectType();
  v50[3] = type metadata accessor for MPOCDefaultMonitorManager();
  v50[4] = &off_100382710;
  v50[0] = a4;
  v49[3] = type metadata accessor for SystemInfo();
  v49[4] = &off_100386330;
  v49[0] = a5;
  v48[3] = type metadata accessor for SecureElement();
  v48[4] = &off_1003849A0;
  v48[0] = a7;
  *&a8[OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_activeSession] = 0;
  if (qword_10039D548 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_10000403C(v17, qword_1003A2600);
  sub_10000CCE4(v50, v46);
  sub_10000CCE4(v49, v44);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v20 = 136315394;
    nullsub_1(ObjectType);
    v21 = _typeName(_:qualified:)();
    v23 = sub_100008F6C(v21, v22, &v42);

    *(v20 + 4) = v23;
    *(v20 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1002C1690;
    *(v24 + 56) = &type metadata for Int;
    *(v24 + 32) = a1;
    *(v24 + 88) = sub_100004074(&qword_1003A2A10, &qword_1002C6C70);
    *(v24 + 64) = a2;
    *(v24 + 72) = a3;
    v25 = v47;
    v41 = a1;
    v26 = a3;
    v27 = a6;
    v28 = a2;
    v29 = sub_10000BE18(v46, v47);
    *(v24 + 120) = v25;
    v30 = sub_10000BE5C((v24 + 96));
    (*(*(v25 - 8) + 16))(v30, v29, v25);
    v31 = v45;
    v32 = sub_10000BE18(v44, v45);
    *(v24 + 152) = v31;
    v33 = sub_10000BE5C((v24 + 128));
    (*(*(v31 - 8) + 16))(v33, v32, v31);
    v34 = showFunction(signature:_:)(0xD000000000000046, 0x800000010034C540, v24);
    v36 = v35;

    sub_10000959C(v46);
    sub_10000959C(v44);
    v37 = sub_100008F6C(v34, v36, &v42);
    a2 = v28;
    a6 = v27;
    a3 = v26;
    a1 = v41;

    *(v20 + 14) = v37;
    _os_log_impl(&_mh_execute_header, v18, v19, "%s.%s", v20, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000959C(v46);
    sub_10000959C(v44);
  }

  *&a8[OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_pinLength] = a1;
  *&a8[OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_maxPinLength] = a3;
  *&a8[OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_minPinLength] = a2;
  sub_10000CCE4(v50, &a8[OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_monitorManager]);
  sub_10000CCE4(v49, &a8[OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_systemInfo]);
  sub_10000CCE4(a6, &a8[OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_auditor]);
  sub_10000CCE4(v48, &a8[OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_secureElement]);
  v38 = type metadata accessor for DefaultPINAppletProxy();
  v43.receiver = a8;
  v43.super_class = v38;
  v39 = objc_msgSendSuper2(&v43, "init");
  sub_10000959C(a6);
  sub_10000959C(v48);
  sub_10000959C(v49);
  sub_10000959C(v50);
  return v39;
}

uint64_t *sub_1000D5734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, double a9)
{
  v63 = a6;
  v64 = a7;
  v66 = a4;
  v70 = a3;
  v62 = *a8;
  v14 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v68 = *(v14 - 8);
  v69 = v14;
  v15 = *(v68 + 64);
  __chkstk_darwin(v14);
  v67 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for OS_dispatch_queue.Attributes();
  v17 = *(*(v65 - 8) + 64);
  __chkstk_darwin(v65);
  v18 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v88[3] = type metadata accessor for DefaultPINAppletProxy();
  v88[4] = &off_100382FF8;
  v88[0] = a1;
  v87[3] = type metadata accessor for CertificateManager();
  v87[4] = &off_100381288;
  v87[0] = a2;
  v86[3] = type metadata accessor for DefaultManagedDictionary();
  v86[4] = &off_100386190;
  v86[0] = a5;
  v85[3] = type metadata accessor for SecureElement();
  v85[4] = &off_1003849A0;
  v85[0] = v63;
  v84[3] = type metadata accessor for SystemInfo();
  v84[4] = &off_100386330;
  v84[0] = v64;
  *(a8 + 7) = 0u;
  *(a8 + 9) = 0u;
  *(a8 + 11) = 0u;
  *(a8 + 13) = 0u;
  *(a8 + 15) = 0u;
  a8[17] = 0;
  a8[18] = 0xF000000000000000;
  *(a8 + 152) = 0;
  *(a8 + 136) = 0;
  a8[35] = 0;
  sub_10000411C(0, &qword_10039D7D8, OS_dispatch_queue_ptr);
  a8[31] = 0;
  a8[32] = 0;
  static DispatchQoS.userInitiated.getter();
  (*(v19 + 104))(v22, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v18);
  v82[0] = _swiftEmptyArrayStorage;
  sub_1000D73EC(&unk_10039E310, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100004074(&qword_10039D7E0, &unk_1002BDC40);
  sub_10000BEC0(&qword_10039E320, &qword_10039D7E0, &unk_1002BDC40);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  a8[36] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  a8[53] = 0xD00000000000002ALL;
  a8[54] = 0x800000010034C460;
  a8[55] = 0xD00000000000002ALL;
  a8[56] = 0x800000010034C490;
  if (qword_10039D550 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_10000403C(v25, qword_1003A2708);
  sub_10000CCE4(v88, v82);
  sub_10000CCE4(v87, v80);
  v26 = v70;
  sub_10000CCE4(v70, v78);
  sub_10000CCE4(v86, v76);
  sub_10000CCE4(v85, v74);
  sub_10000CCE4(v84, v72);
  v27 = v66;

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    *v30 = 136315394;
    v31 = _typeName(_:qualified:)();
    v33 = sub_100008F6C(v31, v32, &v71);

    *(v30 + 4) = v33;
    *(v30 + 12) = 2080;
    v65 = "uthentication.ui.dismissed";
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1002C6B60;
    v35 = v83;
    v36 = sub_10000BE18(v82, v83);
    *(v34 + 56) = v35;
    v37 = sub_10000BE5C((v34 + 32));
    (*(*(v35 - 8) + 16))(v37, v36, v35);
    v38 = v81;
    v39 = sub_10000BE18(v80, v81);
    *(v34 + 88) = v38;
    v40 = sub_10000BE5C((v34 + 64));
    (*(*(v38 - 8) + 16))(v40, v39, v38);
    v41 = v79;
    v42 = sub_10000BE18(v78, v79);
    *(v34 + 120) = v41;
    v43 = sub_10000BE5C((v34 + 96));
    (*(*(v41 - 8) + 16))(v43, v42, v41);
    *(v34 + 152) = type metadata accessor for ReaderAnalytics();
    *(v34 + 128) = v27;
    *(v34 + 184) = &type metadata for Double;
    *(v34 + 160) = a9;
    v44 = v77;
    v45 = sub_10000BE18(v76, v77);
    *(v34 + 216) = v44;
    v46 = sub_10000BE5C((v34 + 192));
    (*(*(v44 - 8) + 16))(v46, v45, v44);
    v47 = v75;
    v48 = sub_10000BE18(v74, v75);
    *(v34 + 248) = v47;
    v49 = sub_10000BE5C((v34 + 224));
    (*(*(v47 - 8) + 16))(v49, v48, v47);
    v50 = v73;
    v51 = sub_10000BE18(v72, v73);
    *(v34 + 280) = v50;
    v52 = sub_10000BE5C((v34 + 256));
    (*(*(v50 - 8) + 16))(v52, v51, v50);

    v53 = showFunction(signature:_:)(0xD000000000000074, v65 | 0x8000000000000000, v34);
    v55 = v54;

    sub_10000959C(v82);
    sub_10000959C(v80);
    sub_10000959C(v78);
    sub_10000959C(v76);
    sub_10000959C(v74);
    sub_10000959C(v72);
    v56 = sub_100008F6C(v53, v55, &v71);

    *(v30 + 14) = v56;
    _os_log_impl(&_mh_execute_header, v28, v29, "%s.\n%s", v30, 0x16u);
    swift_arrayDestroy();

    v26 = v70;
  }

  else
  {

    sub_10000959C(v82);
    sub_10000959C(v80);
    sub_10000959C(v78);
    sub_10000959C(v76);
    sub_10000959C(v74);
    sub_10000959C(v72);
  }

  sub_10000CCE4(v88, (a8 + 20));
  sub_10000CCE4(v87, (a8 + 2));
  sub_10000CCE4(v26, (a8 + 25));
  a8[37] = v27;
  sub_10000CCE4(v85, (a8 + 43));
  sub_10000CCE4(v86, (a8 + 38));
  sub_10000CCE4(v84, (a8 + 48));
  *(a8 + 30) = a9;
  sub_10000411C(0, &qword_10039D7E8, OS_dispatch_source_ptr);
  v57 = a8[36];
  v82[0] = _swiftEmptyArrayStorage;
  sub_1000D73EC(&qword_1003A1668, &type metadata accessor for OS_dispatch_source.TimerFlags);

  sub_100004074(&qword_1003A1670, &qword_1002C59A8);
  sub_10000BEC0(&qword_1003A1678, &qword_1003A1670, &qword_1002C59A8);
  v58 = v67;
  v59 = v69;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v60 = static OS_dispatch_source.makeTimerSource(flags:queue:)();
  sub_10000959C(v26);
  (*(v68 + 8))(v58, v59);
  sub_10000959C(v88);
  sub_10000959C(v84);
  sub_10000959C(v85);
  sub_10000959C(v86);
  sub_10000959C(v87);
  a8[33] = v60;
  return a8;
}

uint64_t *sub_1000D6150(uint64_t *a1)
{
  sub_1000E90C8(v148);
  if (v1)
  {
  }

  else
  {
    sub_1000E5844(v147);
    sub_1000E6B70(v144);
    v4 = v145;
    v5 = v146;
    sub_10000BE18(v144, v145);
    sub_1000C289C(6u, v4, v5);
    sub_1000E31EC(v140);
    sub_10000CCE4(v148, v138);
    sub_10000CCE4(v143, v137);
    sub_10000CCE4(v147, v135);
    v6 = v141;
    v7 = sub_100022438(v140, v141);
    v116 = v107;
    v8 = *(*(v6 - 1) + 64);
    __chkstk_darwin(v7);
    v10 = (v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10);
    v12 = v139;
    v13 = sub_100022438(v138, v139);
    v115 = v107;
    v14 = *(*(v12 - 8) + 64);
    __chkstk_darwin(v13);
    v16 = (v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16);
    v18 = v136;
    v19 = sub_100022438(v135, v136);
    v114 = v107;
    v20 = *(*(v18 - 8) + 64);
    __chkstk_darwin(v19);
    v22 = (v107 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v23 + 16))(v22);
    v24 = *v10;
    v25 = *v16;
    v26 = *v22;
    v133 = type metadata accessor for MPOCDefaultMonitorManager();
    v134 = &off_100382710;
    v132[0] = v24;
    v130 = type metadata accessor for SystemInfo();
    v131 = &off_100386330;
    v110 = v130;
    v129[0] = v25;
    v127 = type metadata accessor for SecureElement();
    v128 = &off_1003849A0;
    v109 = v127;
    v126[0] = v26;
    v113 = type metadata accessor for DefaultPINAppletProxy();
    v111 = objc_allocWithZone(v113);
    v27 = v133;
    v28 = sub_100022438(v132, v133);
    v112 = v107;
    v29 = *(*(v27 - 8) + 64);
    __chkstk_darwin(v28);
    v31 = (v107 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v32 + 16))(v31);
    v33 = v130;
    v34 = sub_100022438(v129, v130);
    v35 = *(*(v33 - 8) + 64);
    __chkstk_darwin(v34);
    v37 = (v107 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v38 + 16))(v37);
    v39 = v127;
    v40 = sub_100022438(v126, v127);
    v41 = *(*(v39 - 1) + 64);
    __chkstk_darwin(v40);
    v43 = (v107 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v44 + 16))(v43);
    v45 = sub_1000D52B4(0, 4, 12, *v31, *v37, v137, *v43, v111);
    sub_10000959C(v126);
    sub_10000959C(v129);
    sub_10000959C(v132);
    sub_10000959C(v135);
    sub_10000959C(v138);
    sub_10000959C(v140);
    v141 = v113;
    v142 = &off_100382FF8;
    v140[0] = v45;
    sub_1000E7D9C(v138);
    sub_10000CCE4(v143, v137);
    sub_1000ED664();
    v116 = v46;
    [objc_opt_self() defaultTransactionDataLifetime];
    v48 = v47;
    sub_1000E972C(v135);
    sub_10000CCE4(v147, v132);
    sub_10000CCE4(v148, v129);
    v49 = v141;
    v50 = sub_100022438(v140, v141);
    v115 = v107;
    v51 = *(*(v49 - 1) + 64);
    __chkstk_darwin(v50);
    v53 = (v107 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v54 + 16))(v53);
    v55 = v139;
    v56 = sub_100022438(v138, v139);
    v114 = v107;
    v57 = *(*(v55 - 8) + 64);
    __chkstk_darwin(v56);
    v59 = (v107 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v60 + 16))(v59);
    v61 = v136;
    v62 = sub_100022438(v135, v136);
    v113 = v107;
    v63 = *(*(v61 - 8) + 64);
    __chkstk_darwin(v62);
    v65 = (v107 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v66 + 16))(v65);
    v67 = v133;
    v68 = sub_100022438(v132, v133);
    v112 = v107;
    v69 = *(*(v67 - 8) + 64);
    __chkstk_darwin(v68);
    v71 = (v107 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v72 + 16))(v71);
    v73 = v130;
    v74 = sub_100022438(v129, v130);
    v111 = v107;
    v75 = *(*(v73 - 8) + 64);
    __chkstk_darwin(v74);
    v77 = (v107 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v78 + 16))(v77);
    v108 = *v53;
    v79 = *v59;
    v80 = *v65;
    v81 = *v71;
    v82 = *v77;
    v83 = type metadata accessor for CertificateManager();
    v127 = v83;
    v128 = &off_100381288;
    v126[0] = v79;
    v124 = type metadata accessor for DefaultManagedDictionary();
    v125 = &off_100386190;
    v123[0] = v80;
    v121 = v109;
    v122 = &off_1003849A0;
    v120[0] = v81;
    v118 = v110;
    v119 = &off_100386330;
    v117[0] = v82;
    type metadata accessor for DefaultPINController();
    v109 = swift_allocObject();
    v84 = sub_100022438(v126, v83);
    v110 = v107;
    v85 = *(*(v83 - 1) + 64);
    __chkstk_darwin(v84);
    v87 = (v107 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v88 + 16))(v87);
    v89 = v124;
    v90 = sub_100022438(v123, v124);
    v107[1] = v107;
    v91 = *(*(v89 - 8) + 64);
    __chkstk_darwin(v90);
    v93 = (v107 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v94 + 16))(v93);
    v95 = v121;
    v96 = sub_100022438(v120, v121);
    v107[0] = v107;
    v97 = *(*(v95 - 1) + 64);
    __chkstk_darwin(v96);
    v99 = (v107 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v100 + 16))(v99);
    v101 = v118;
    v102 = sub_100022438(v117, v118);
    v103 = *(*(v101 - 8) + 64);
    __chkstk_darwin(v102);
    v105 = (v107 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v106 + 16))(v105);
    a1 = sub_1000D5734(v108, *v87, v137, v116, *v93, *v99, *v105, v109, v48);

    sub_10000959C(v143);
    sub_10000959C(v147);
    sub_10000959C(v148);
    sub_10000959C(v117);
    sub_10000959C(v120);
    sub_10000959C(v123);
    sub_10000959C(v126);
    sub_10000959C(v129);
    sub_10000959C(v132);
    sub_10000959C(v135);
    sub_10000959C(v138);
    sub_10000959C(v140);
    sub_10000959C(v144);
  }

  return a1;
}

uint64_t sub_1000D6F60()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000D6FA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004074(&qword_1003A2A20, &qword_1002C6C88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1000D7010()
{
  v0 = CFNotificationCenterGetDarwinNotifyCenter();
  v5 = String._bridgeToObjectiveC()();
  CFNotificationCenterPostNotification(v0, v5, 0, 0, 1u);
  if (qword_10039D550 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000403C(v1, qword_1003A2708);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "sensors toggled", v4, 2u);
  }
}

uint64_t sub_1000D7148()
{
  swift_errorRetain();
  sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
  type metadata accessor for PINControllerError(0);
  if (swift_dynamicCast())
  {
    v0 = v6;
    sub_1000D73EC(&qword_10039DAB0, type metadata accessor for PINControllerError);
    if (_BridgedStoredNSError.errorCode.getter() > 10999 && _BridgedStoredNSError.errorCode.getter() < 12000)
    {
      return v0;
    }
  }

  swift_errorRetain();
  type metadata accessor for PINAppletProxyError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return sub_1000217A0(11009, 0, 0, 0);
  }

  sub_1000D73EC(&qword_10039DAE8, type metadata accessor for PINAppletProxyError);
  if (_BridgedStoredNSError.errorCode.getter() <= 11999 || _BridgedStoredNSError.errorCode.getter() >= 13000)
  {

    return sub_1000217A0(11009, 0, 0, 0);
  }

  _s3__C4CodeOMa_7(0);
  sub_1000D73EC(&qword_10039DAD0, _s3__C4CodeOMa_7);
  v2 = v6;
  v3 = static _ErrorCodeProtocol.~= infix(_:_:)();

  if (v3)
  {
    v4 = 11007;
  }

  else
  {
    v2 = v2;
    v5 = static _ErrorCodeProtocol.~= infix(_:_:)();

    if (v5)
    {
      v4 = 11011;
    }

    else
    {
      v4 = 11009;
    }
  }

  v0 = sub_1000217A0(v4, 0, 0, 0);

  return v0;
}

uint64_t sub_1000D73EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000D7434()
{
  v1 = v0[4];
  v2 = v0[5];
  return sub_1000CF3E0(v0[2], v0[3]);
}

void sub_1000D7504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  if (a3)
  {

    sub_100009548(a4, a5);
    sub_100009548(a6, a7);

    sub_100009548(a9, a10);
  }
}

uint64_t sub_1000D75B0()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A2A28);
  sub_10000403C(v0, qword_1003A2A28);
  sub_100023B24();
  return static SPRLogger.pinAppletProxy.getter();
}

uint64_t sub_1000D760C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if (qword_10039D560 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000403C(v7, qword_1003A2A28);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v25 = a1;
    v24[0] = swift_slowAlloc();
    *v10 = 136315394;
    v11 = _typeName(_:qualified:)();
    v13 = sub_100008F6C(v11, v12, v24);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    v14 = showFunction(signature:_:)(0xD000000000000011, 0x800000010034C1B0, _swiftEmptyArrayStorage);
    v16 = sub_100008F6C(v14, v15, v24);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s.%s - NOT FOR RELEASE", v10, 0x16u);
    swift_arrayDestroy();
    a1 = v25;
  }

  swift_beginAccess();
  v17 = v3[4];
  v18 = *(v17 + 2);
  if (v18 > 0xB)
  {
    sub_100021328(12006, 0, 0, 0);
    return swift_willThrow();
  }

  else
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v3[4] = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = sub_10004D810(0, v18 + 1, 1, v17);
      v3[4] = v17;
    }

    v21 = *(v17 + 2);
    v20 = *(v17 + 3);
    if (v21 >= v20 >> 1)
    {
      v17 = sub_10004D810((v20 > 1), v21 + 1, 1, v17);
    }

    *(v17 + 2) = v21 + 1;
    v22 = &v17[16 * v21];
    *(v22 + 4) = a1;
    *(v22 + 5) = a2;
    v3[4] = v17;
    swift_endAccess();
    return sub_1000094F4(a1, a2);
  }
}

uint64_t sub_1000D78E4()
{
  v1 = v0;
  v2 = *v0;
  if (qword_10039D560 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000403C(v3, qword_1003A2A28);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v17[0] = swift_slowAlloc();
    *v6 = 136315394;
    v7 = _typeName(_:qualified:)();
    v9 = sub_100008F6C(v7, v8, v17);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    v10 = showFunction(signature:_:)(0xD000000000000011, 0x800000010034C190, _swiftEmptyArrayStorage);
    v12 = sub_100008F6C(v10, v11, v17);

    *(v6 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s.%s - NOT FOR RELEASE", v6, 0x16u);
    swift_arrayDestroy();
  }

  swift_beginAccess();
  if (*(v1[4] + 16))
  {
    swift_beginAccess();
    sub_1000D8338(&v16);
    v13 = *(&v16 + 1);
    v14 = v16;
    if (*(&v16 + 1) >> 60 == 15)
    {
      sub_10001A074(v16, *(&v16 + 1));
      sub_1000D82AC(*(v1[4] + 16) - 1, &v16);
      v13 = *(&v16 + 1);
      v14 = v16;
    }

    swift_endAccess();
    return sub_100009548(v14, v13);
  }

  else
  {
    sub_100021328(12007, 0, 0, 0);
    return swift_willThrow();
  }
}

uint64_t sub_1000D7B6C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v44 = a1;
  v3 = *v1;
  v4 = type metadata accessor for TLVTag();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = type metadata accessor for TLV();
  v42 = *(v6 - 8);
  v43 = v6;
  v7 = *(v42 + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v41 = &v38 - v11;
  if (qword_10039D560 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000403C(v12, qword_1003A2A28);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v45[0] = swift_slowAlloc();
    *v15 = 136315394;
    v16 = _typeName(_:qualified:)();
    v18 = sub_100008F6C(v16, v17, v45);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2080;
    v19 = showFunction(signature:_:)(0xD000000000000012, 0x800000010034C170, _swiftEmptyArrayStorage);
    v21 = sub_100008F6C(v19, v20, v45);

    *(v15 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v13, v14, "%s.%s - NOT FOR RELEASE", v15, 0x16u);
    swift_arrayDestroy();
  }

  result = swift_beginAccess();
  v23 = *(v2[4] + 16);
  if (v23)
  {
    v40 = *(v2[4] + 16);
    static TLVTag.cipherBlob.getter();
    static Data.randomBytes(count:)();
    v24 = v41;
    TLV.init(tag:value:)();
    static TLVTag.keyBlob.getter();
    static Data.randomBytes(count:)();
    TLV.init(tag:value:)();
    v39 = TLV.dataRepresentation.getter();
    v26 = v25;
    v27 = TLV.dataRepresentation.getter();
    v29 = v28;
    v30 = static Data.randomBytes(count:)();
    v32 = v31;
    v33 = *(v42 + 8);
    v34 = v10;
    v35 = v43;
    v33(v34, v43);
    result = (v33)(v24, v35);
    v36 = v39;
    v23 = v40;
  }

  else
  {
    v36 = 0;
    v27 = 0;
    v30 = 0;
    v26 = 0xC000000000000000;
    v29 = 0xC000000000000000;
    v32 = 0xC000000000000000;
  }

  v37 = v44;
  *v44 = v36;
  v37[1] = v26;
  v37[2] = v27;
  v37[3] = v29;
  v37[4] = v30;
  v37[5] = v32;
  *(v37 + 48) = v23 == 0;
  return result;
}

uint64_t sub_1000D7F54()
{
  v1 = v0;
  v2 = *v0;
  if (qword_10039D560 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000403C(v3, qword_1003A2A28);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v15[0] = swift_slowAlloc();
    *v6 = 136315394;
    v7 = _typeName(_:qualified:)();
    v9 = sub_100008F6C(v7, v8, v15);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    v10 = showFunction(signature:_:)(0xD000000000000012, 0x800000010034C060, _swiftEmptyArrayStorage);
    v12 = sub_100008F6C(v10, v11, v15);

    *(v6 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s.%s - NOT FOR RELEASE", v6, 0x16u);
    swift_arrayDestroy();
  }

  swift_beginAccess();
  v13 = v1[4];
  v1[4] = _swiftEmptyArrayStorage;
}

uint64_t sub_1000D814C()
{
  sub_10001A074(v0[2], v0[3]);
  v1 = v0[4];

  sub_100009548(v0[5], v0[6]);

  return swift_deallocClassInstance();
}

uint64_t sub_1000D81B8()
{
  v2 = *v0;
  result = sub_1000D83BC();
  if (v1)
  {
    return v4;
  }

  return result;
}

double sub_1000D8238@<D0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  sub_1000D7B6C(v9);
  if (!v2)
  {
    result = *v9;
    v6 = v9[1];
    v7 = v9[2];
    v8 = v10;
    *a1 = v9[0];
    *(a1 + 16) = v6;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t sub_1000D82AC@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000D83A8(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 16 * a1;
    *a2 = *(v9 + 32);
    result = memmove((v9 + 32), (v9 + 48), 16 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1000D8338@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v5 = *(v3 + 16);
    if (v5)
    {
LABEL_3:
      v6 = v5 - 1;
      *a1 = *(v3 + 16 * v6 + 32);
      *(v3 + 16) = v6;
      *v1 = v3;
      return result;
    }
  }

  else
  {
    result = sub_1000D83A8(v3);
    v3 = result;
    v5 = *(result + 16);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000D83BC()
{
  v1 = v0;
  v2 = *v0;
  if (qword_10039D560 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000403C(v3, qword_1003A2A28);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v19[0] = swift_slowAlloc();
    *v6 = 136315394;
    v7 = _typeName(_:qualified:)();
    v9 = sub_100008F6C(v7, v8, v19);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    v10 = showFunction(signature:_:)(0xD000000000000022, 0x800000010034C250, _swiftEmptyArrayStorage);
    v12 = sub_100008F6C(v10, v11, v19);

    *(v6 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s.%s - NOT FOR RELEASE", v6, 0x16u);
    swift_arrayDestroy();
  }

  swift_beginAccess();
  v13 = v1[4];
  v1[4] = _swiftEmptyArrayStorage;

  v14 = static Data.randomBytes(count:)();
  v15 = v1[2];
  v16 = v1[3];
  v1[2] = v14;
  v1[3] = v17;
  sub_1000094F4(v14, v17);
  sub_10001A074(v15, v16);
  sub_1000094F4(v1[5], v1[6]);
  return v14;
}

uint64_t sub_1000D8618(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 0xC)
  {
    return v5 - 11;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000D8698(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 11);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for URL();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t type metadata accessor for BackendSetting()
{
  result = qword_1003A2BB8;
  if (!qword_1003A2BB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000D8768()
{
  v0 = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_1000D87C0()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BackendSetting();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D9F0C(v1, v10);
  v11 = (*(v3 + 48))(v10, 11, v2);
  if (v11 > 5)
  {
    if (v11 > 8)
    {
      if (v11 == 9)
      {
        return 895578414;
      }

      else if (v11 == 10)
      {
        return 912355630;
      }

      else
      {
        return 0x656E696C66666F2ELL;
      }
    }

    else if (v11 == 6)
    {
      return 845246766;
    }

    else if (v11 == 7)
    {
      return 862023982;
    }

    else
    {
      return 878801198;
    }
  }

  else if (v11 > 2)
  {
    if (v11 == 3)
    {
      return 0x65676174732ELL;
    }

    else if (v11 == 4)
    {
      return 0x747265632ELL;
    }

    else
    {
      return 828469550;
    }
  }

  else if (v11)
  {
    if (v11 == 1)
    {
      return 0x746C75616665642ELL;
    }

    else
    {
      return 0x646F72702ELL;
    }
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    v16[0] = 0x286C72752ELL;
    v16[1] = 0xE500000000000000;
    sub_1000DA030();
    v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v13);

    v14._countAndFlagsBits = 41;
    v14._object = 0xE100000000000000;
    String.append(_:)(v14);
    v15 = v16[0];
    (*(v3 + 8))(v6, v2);
    return v15;
  }
}

uint64_t sub_1000D8A84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = URL.scheme.getter();
  if (!v5)
  {
    goto LABEL_55;
  }

  v6 = v4;
  v7 = v5;
  if ((v4 != 1886680168 || v5 != 0xE400000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v6 != 0x7370747468 || v7 != 0xE500000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (v6 == 0x746C7561666564 && v7 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v11 = type metadata accessor for URL();
      v12 = *(v11 - 8);
      (*(v12 + 8))(a1, v11);
      return (*(v12 + 56))(a2, 1, 11, v11);
    }

    if (v6 == 1685025392 && v7 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v13 = type metadata accessor for URL();
      v14 = *(v13 - 8);
      (*(v14 + 8))(a1, v13);
      return (*(v14 + 56))(a2, 2, 11, v13);
    }

    if (v6 == 0x6567617473 && v7 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v15 = type metadata accessor for URL();
      v16 = *(v15 - 8);
      (*(v16 + 8))(a1, v15);
      return (*(v16 + 56))(a2, 3, 11, v15);
    }

    if (v6 == 1953654115 && v7 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v17 = type metadata accessor for URL();
      v18 = *(v17 - 8);
      (*(v18 + 8))(a1, v17);
      return (*(v18 + 56))(a2, 4, 11, v17);
    }

    if (v6 == 3236209 && v7 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v19 = type metadata accessor for URL();
      v20 = *(v19 - 8);
      (*(v20 + 8))(a1, v19);
      return (*(v20 + 56))(a2, 5, 11, v19);
    }

    if (v6 == 3301745 && v7 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v21 = type metadata accessor for URL();
      v22 = *(v21 - 8);
      (*(v22 + 8))(a1, v21);
      return (*(v22 + 56))(a2, 6, 11, v21);
    }

    if (v6 == 3367281 && v7 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v23 = type metadata accessor for URL();
      v24 = *(v23 - 8);
      (*(v24 + 8))(a1, v23);
      return (*(v24 + 56))(a2, 7, 11, v23);
    }

    if (v6 == 3432817 && v7 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v25 = type metadata accessor for URL();
      v26 = *(v25 - 8);
      (*(v26 + 8))(a1, v25);
      return (*(v26 + 56))(a2, 8, 11, v25);
    }

    if (v6 == 3498353 && v7 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v27 = type metadata accessor for URL();
      v28 = *(v27 - 8);
      (*(v28 + 8))(a1, v27);
      return (*(v28 + 56))(a2, 9, 11, v27);
    }

    if (v6 == 3563889 && v7 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v29 = type metadata accessor for URL();
      v30 = *(v29 - 8);
      (*(v30 + 8))(a1, v29);
      return (*(v30 + 56))(a2, 10, 11, v29);
    }

    if (v6 == 0x656E696C66666FLL && v7 == 0xE700000000000000)
    {

LABEL_54:
      v32 = type metadata accessor for URL();
      v33 = *(v32 - 8);
      (*(v33 + 8))(a1, v32);
      return (*(v33 + 56))(a2, 11, 11, v32);
    }

    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v31)
    {
      goto LABEL_54;
    }

LABEL_55:
    _StringGuts.grow(_:)(23);

    v34 = type metadata accessor for URL();
    sub_1000DA030();
    v35._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v35);

    sub_100020384(7001, 0xD000000000000015, 0x800000010034CAC0, 0);
    swift_willThrow();
    return (*(*(v34 - 8) + 8))(a1, v34);
  }

  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  (*(v9 + 32))(a2, a1, v8);
  return (*(v9 + 56))(a2, 0, 11, v8);
}

uint64_t sub_1000D9488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for BackendSetting();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v46 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v44 - v8;
  v10 = sub_100004074(&qword_1003A03D0, &unk_1002C3D50);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v44 - v15;
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v21 = __chkstk_darwin(v20);
  v22 = __chkstk_darwin(v21);
  v24 = &v44 - v23;
  __chkstk_darwin(v22);
  v28 = &v44 - v27;
  if (!*(a1 + 24))
  {
    sub_10000BD44(a1, &qword_10039E248, &qword_1002C23D0);
    return (*(v18 + 56))(a2, 1, 11, v17);
  }

  v44 = v26;
  v45 = v25;
  v47 = a1;
  sub_100022380(a1, &v50);
  if (!v52)
  {
    sub_10000BD44(&v50, &qword_10039E248, &qword_1002C23D0);
    (*(v18 + 56))(v16, 1, 1, v17);
LABEL_8:
    sub_10000BD44(v16, &qword_1003A03D0, &unk_1002C3D50);
    v31 = v47;
    sub_100022380(v47, &v50);
    if (v52)
    {
      if (swift_dynamicCast())
      {
        v34 = v48;
        v33 = v49;
        URL.init(string:)();
        if ((*(v18 + 48))(v14, 1, v17) != 1)
        {

          v40 = v45;
          (*(v18 + 32))(v45, v14, v17);
          v41 = v44;
          (*(v18 + 16))(v44, v40, v17);
          v42 = v46;
          v43 = v53;
          sub_1000D8A84(v41, v46);
          if (v43)
          {
            (*(v18 + 8))(v40, v17);
            return sub_10000BD44(v31, &qword_10039E248, &qword_1002C23D0);
          }

          (*(v18 + 8))(v40, v17);
          sub_10000BD44(v31, &qword_10039E248, &qword_1002C23D0);
          v39 = v42;
          return sub_1000D9FCC(v39, a2);
        }

        sub_10000BD44(v14, &qword_1003A03D0, &unk_1002C3D50);
        v50 = 0;
        v51 = 0xE000000000000000;
        _StringGuts.grow(_:)(27);

        v50 = 0xD000000000000019;
        v51 = 0x800000010034CAA0;
        v35._countAndFlagsBits = v34;
        v35._object = v33;
        String.append(_:)(v35);

        v36 = v50;
        v37 = v51;
LABEL_15:
        sub_100020384(7001, v36, v37, 0);
        swift_willThrow();
        return sub_10000BD44(v31, &qword_10039E248, &qword_1002C23D0);
      }
    }

    else
    {
      sub_10000BD44(&v50, &qword_10039E248, &qword_1002C23D0);
    }

    v50 = 0;
    v51 = 0xE000000000000000;
    _StringGuts.grow(_:)(27);

    v48 = 0xD000000000000019;
    v49 = 0x800000010034CA80;
    result = sub_100022380(v31, &v50);
    if (!v52)
    {
      __break(1u);
      return result;
    }

    v38._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v38);

    v36 = v48;
    v37 = v49;
    goto LABEL_15;
  }

  v29 = swift_dynamicCast();
  (*(v18 + 56))(v16, v29 ^ 1u, 1, v17);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    goto LABEL_8;
  }

  (*(v18 + 32))(v28, v16, v17);
  (*(v18 + 16))(v24, v28, v17);
  v30 = v53;
  sub_1000D8A84(v24, v9);
  if (!v30)
  {
    (*(v18 + 8))(v28, v17);
    sub_10000BD44(v47, &qword_10039E248, &qword_1002C23D0);
    v39 = v9;
    return sub_1000D9FCC(v39, a2);
  }

  (*(v18 + 8))(v28, v17);
  v31 = v47;
  return sub_10000BD44(v31, &qword_10039E248, &qword_1002C23D0);
}

uint64_t sub_1000D9AD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for BackendSetting();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100004074(&qword_1003A2BE8, &qword_1002C6D68);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_1000D9F0C(a1, &v24 - v16);
  sub_1000D9F0C(a2, &v17[v18]);
  v19 = *(v5 + 48);
  v20 = v19(v17, 11, v4);
  if (v20 > 5)
  {
    if (v20 <= 8)
    {
      if (v20 == 6)
      {
        if (v19(&v17[v18], 11, v4) != 6)
        {
          goto LABEL_27;
        }
      }

      else if (v20 == 7)
      {
        if (v19(&v17[v18], 11, v4) != 7)
        {
          goto LABEL_27;
        }
      }

      else if (v19(&v17[v18], 11, v4) != 8)
      {
        goto LABEL_27;
      }

      goto LABEL_25;
    }

    if (v20 != 9)
    {
      if (v20 == 10)
      {
        if (v19(&v17[v18], 11, v4) != 10)
        {
          goto LABEL_27;
        }
      }

      else if (v19(&v17[v18], 11, v4) != 11)
      {
        goto LABEL_27;
      }

      goto LABEL_25;
    }

    if (v19(&v17[v18], 11, v4) == 9)
    {
      goto LABEL_25;
    }

LABEL_27:
    sub_10000BD44(v17, &qword_1003A2BE8, &qword_1002C6D68);
    v21 = 0;
    return v21 & 1;
  }

  if (v20 > 2)
  {
    if (v20 != 3)
    {
      if (v20 == 4)
      {
        if (v19(&v17[v18], 11, v4) != 4)
        {
          goto LABEL_27;
        }
      }

      else if (v19(&v17[v18], 11, v4) != 5)
      {
        goto LABEL_27;
      }

      goto LABEL_25;
    }

    if (v19(&v17[v18], 11, v4) == 3)
    {
      goto LABEL_25;
    }

    goto LABEL_27;
  }

  if (!v20)
  {
    sub_1000D9F0C(v17, v12);
    if (!v19(&v17[v18], 11, v4))
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      v21 = static URL.== infix(_:_:)();
      v23 = *(v5 + 8);
      v23(v8, v4);
      v23(v12, v4);
      sub_1000D9F70(v17);
      return v21 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_27;
  }

  if (v20 == 1)
  {
    if (v19(&v17[v18], 11, v4) != 1)
    {
      goto LABEL_27;
    }
  }

  else if (v19(&v17[v18], 11, v4) != 2)
  {
    goto LABEL_27;
  }

LABEL_25:
  sub_1000D9F70(v17);
  v21 = 1;
  return v21 & 1;
}

uint64_t sub_1000D9F0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BackendSetting();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D9F70(uint64_t a1)
{
  v2 = type metadata accessor for BackendSetting();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000D9FCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BackendSetting();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000DA030()
{
  result = qword_1003A3C40;
  if (!qword_1003A3C40)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A3C40);
  }

  return result;
}

uint64_t sub_1000DA088()
{
  sub_1000DC884(v0, v9);
  if (v10 > 1u)
  {
    if (v10 == 2)
    {

      return 0xD000000000000021;
    }

    else
    {
      return 0x69766C6F7365722ELL;
    }
  }

  else if (v10)
  {
    v3 = 0xD00000000000001ELL;
  }

  else
  {
    sub_100019D3C(v9, v8);
    v6 = 0x65766C6F7365722ELL;
    v7 = 0xEA00000000002864;
    sub_10000BDA4(v8, v5);
    v1._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v1);

    v2._countAndFlagsBits = 41;
    v2._object = 0xE100000000000000;
    String.append(_:)(v2);
    v3 = v6;
    sub_10000959C(v8);
  }

  return v3;
}

uint64_t sub_1000DA1BC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for BackendSetting();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = OBJC_IVAR____TtC14softposreaderd5Depot_components;
  *(v2 + v8) = sub_100182CF8(_swiftEmptyArrayStorage);
  *(v2 + OBJC_IVAR____TtC14softposreaderd5Depot_componentsLock) = 0;
  sub_1000DD24C(a1, v2 + OBJC_IVAR____TtC14softposreaderd5Depot_settings);
  v9 = a1 + *(type metadata accessor for Settings() + 20);
  if (*(v9 + 16) >= 2u && *v9 >= 2uLL)
  {
    v18 = sub_1000DB3A0;
    v19 = 0;
    v10 = 1;
    v20 = 1;
    swift_beginAccess();
    sub_10002D0A4(&v18, 0xD00000000000001ALL, 0x800000010034CB90);
    v11 = sub_1000DB308;
  }

  else
  {
    v18 = sub_1000DC5C8;
    v19 = 0;
    v10 = 2;
    v20 = 2;
    swift_beginAccess();
    sub_10002D0A4(&v18, 0xD00000000000001ALL, 0x800000010034CB90);
    v11 = sub_1000DC528;
  }

  v18 = v11;
  v19 = 0;
  v20 = v10;
  sub_10002D0A4(&v18, 0xD000000000000019, 0x800000010034CBB0);
  swift_endAccess();
  v12 = type metadata accessor for URL();
  (*(*(v12 - 8) + 56))(v7, 11, 11, v12);
  v13 = sub_1000D9AD4(a1, v7);
  sub_1000DD2B0(v7, type metadata accessor for BackendSetting);
  if (v13)
  {
    v18 = sub_1000DB274;
    v19 = 0;
    v14 = 1;
    v20 = 1;
    swift_beginAccess();
    sub_10002D0A4(&v18, 0xD00000000000001BLL, 0x800000010034CBD0);
    v15 = sub_1000DB1E8;
  }

  else
  {
    v18 = sub_1000DC488;
    v19 = 0;
    v14 = 2;
    v20 = 2;
    swift_beginAccess();
    sub_10002D0A4(&v18, 0xD00000000000001BLL, 0x800000010034CBD0);
    v15 = sub_1000DC3E8;
  }

  v18 = v15;
  v19 = 0;
  v20 = v14;
  sub_10002D0A4(&v18, 0xD00000000000001ALL, 0x800000010034CBF0);
  swift_endAccess();
  v18 = sub_1000DC228;
  v19 = 0;
  v20 = 2;
  swift_beginAccess();
  sub_10002D0A4(&v18, 0xD000000000000010, 0x800000010034CC10);
  v18 = sub_1000DC174;
  v19 = 0;
  v20 = 2;
  sub_10002D0A4(&v18, 0xD000000000000015, 0x800000010034CC30);
  v18 = sub_1000DC134;
  v19 = 0;
  v20 = 2;
  sub_10002D0A4(&v18, 0xD000000000000010, 0x800000010034CC50);
  v18 = sub_1000DC0E4;
  v19 = 0;
  v20 = 2;
  sub_10002D0A4(&v18, 0x6E41726564616552, 0xEF73636974796C61);
  v18 = sub_1000DC0A4;
  v19 = 0;
  v20 = 2;
  sub_10002D0A4(&v18, 0xD000000000000011, 0x800000010034CC70);
  v18 = sub_1000DBF90;
  v19 = 0;
  v20 = 2;
  sub_10002D0A4(&v18, 0xD000000000000012, 0x800000010034CC90);
  v18 = sub_1000DBEF0;
  v19 = 0;
  v20 = 2;
  sub_10002D0A4(&v18, 0xD00000000000001ALL, 0x800000010034CCB0);
  v18 = sub_1000DBE44;
  v19 = 0;
  v20 = 2;
  sub_10002D0A4(&v18, 0xD000000000000022, 0x800000010034CCD0);
  v18 = sub_1000DB15C;
  v19 = 0;
  v20 = 1;
  sub_10002D0A4(&v18, 0x7065654B656D6954, 0xEA00000000007265);
  v18 = sub_1000DBDA4;
  v19 = 0;
  v20 = 2;
  sub_10002D0A4(&v18, 0xD000000000000010, 0x800000010034CD00);
  v18 = sub_1000DBD04;
  v19 = 0;
  v20 = 2;
  sub_10002D0A4(&v18, 0xD000000000000015, 0x800000010034CD20);
  v18 = sub_1000DBC64;
  v19 = 0;
  v20 = 2;
  sub_10002D0A4(&v18, 0xD00000000000001CLL, 0x800000010034CD40);
  v18 = sub_1000DB088;
  v19 = 0;
  v20 = 1;
  sub_10002D0A4(&v18, 0xD000000000000012, 0x800000010034CD60);
  v18 = sub_1000DAFF4;
  v19 = 0;
  v20 = 1;
  sub_10002D0A4(&v18, 0xD000000000000019, 0x800000010034CD80);
  v18 = sub_1000DBBC0;
  v19 = 0;
  v20 = 2;
  sub_10002D0A4(&v18, 0xD000000000000013, 0x800000010034CDA0);
  v18 = sub_1000DAF40;
  v19 = 0;
  v20 = 1;
  sub_10002D0A4(&v18, 0xD000000000000015, 0x800000010034CDC0);
  v18 = sub_1000DBB48;
  v19 = 0;
  v20 = 2;
  sub_10002D0A4(&v18, 0x6174614465726F43, 0xEF726567616E614DLL);
  v18 = sub_1000DAEB4;
  v19 = 0;
  v20 = 1;
  sub_10002D0A4(&v18, 0xD00000000000001BLL, 0x800000010034CDE0);
  v18 = sub_1000DBACC;
  v19 = 0;
  v20 = 2;
  sub_10002D0A4(&v18, 0xD000000000000026, 0x800000010034CE00);
  v18 = sub_1000DBA2C;
  v19 = 0;
  v20 = 2;
  sub_10002D0A4(&v18, 0xD00000000000001ELL, 0x800000010034CE30);
  v18 = sub_1000DB98C;
  v19 = 0;
  v20 = 2;
  sub_10002D0A4(&v18, 0xD00000000000001FLL, 0x800000010034CE50);
  v18 = sub_1000DB8EC;
  v19 = 0;
  v20 = 2;
  sub_10002D0A4(&v18, 0xD00000000000001ALL, 0x800000010034CE70);
  v18 = sub_1000DB84C;
  v19 = 0;
  v20 = 2;
  sub_10002D0A4(&v18, 0xD000000000000010, 0x800000010034CE90);
  v18 = sub_1000DB7A0;
  v19 = 0;
  v20 = 2;
  sub_10002D0A4(&v18, 0xD00000000000001FLL, 0x800000010034CEB0);
  v18 = sub_1000DB668;
  v19 = 0;
  v20 = 2;
  sub_10002D0A4(&v18, 0xD000000000000019, 0x800000010034CED0);
  v18 = sub_1000DB5C8;
  v19 = 0;
  v20 = 2;
  sub_10002D0A4(&v18, 0xD000000000000022, 0x800000010034CEF0);
  v18 = sub_1000DAE28;
  v19 = 0;
  v20 = 1;
  sub_10002D0A4(&v18, 0xD000000000000019, 0x800000010034CF20);
  v18 = sub_1000DB51C;
  v19 = 0;
  v20 = 2;
  sub_10002D0A4(&v18, 0xD00000000000001CLL, 0x800000010034CF40);
  v18 = sub_1000DB42C;
  v19 = 0;
  v20 = 2;
  sub_10002D0A4(&v18, 0xD000000000000016, 0x800000010034CF60);
  swift_endAccess();
  sub_1000DD2B0(a1, type metadata accessor for Settings);
  return v2;
}

void sub_1000DAC04(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1000E3850(v23);
  if (!v2)
  {
    sub_1000E5844(v21);
    v5 = a1 + OBJC_IVAR____TtC14softposreaderd5Depot_settings;
    if (*(v5 + *(type metadata accessor for Settings() + 72)))
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    v7 = type metadata accessor for MPOCDefaultAttestationOfflineVerifier();
    v8 = v24;
    v9 = sub_100022438(v23, v24);
    v10 = *(*(v8 - 8) + 64);
    __chkstk_darwin(v9);
    v12 = (v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12);
    v14 = v22;
    v15 = sub_100022438(v21, v22);
    v16 = *(*(v14 - 8) + 64);
    __chkstk_darwin(v15);
    v18 = (v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18);
    v20 = sub_1000DCC58(*v12, *v18, v6, v7);
    sub_10000959C(v21);
    sub_10000959C(v23);
    a2[3] = v7;
    a2[4] = &off_100380B00;
    *a2 = v20;
  }
}

void *sub_1000DAE28@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for SESnapshotWrapper();
  v3 = swift_allocObject();
  a1[3] = sub_100004074(&qword_1003A2D70, &qword_1002C6E30);
  result = swift_allocObject();
  *a1 = result;
  result[5] = v2;
  result[6] = &off_100380B28;
  result[2] = v3;
  return result;
}

void *sub_1000DAEB4@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for MPOCDefaultAttestationData();
  v3 = swift_allocObject();
  a1[3] = sub_100004074(&qword_1003A2DB8, &qword_1002C6E80);
  result = swift_allocObject();
  *a1 = result;
  result[5] = v2;
  result[6] = &off_100380B10;
  result[2] = v3;
  return result;
}

uint64_t sub_1000DAF40@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for SecureElement();
  swift_allocObject();
  result = sub_100138D94();
  if (!v1)
  {
    v7 = v3;
    v8 = &off_1003849A0;
    *&v6 = result;
    a1[3] = sub_100004074(&qword_1003A2DC0, &qword_1002C6E88);
    v5 = swift_allocObject();
    *a1 = v5;
    return sub_100029790(&v6, v5 + 16);
  }

  return result;
}

void *sub_1000DAFF4@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for DefaultManagedDictionary();
  swift_allocObject();
  v3 = sub_10017A614();
  a1[3] = sub_100004074(&qword_1003A2DD0, &qword_1002C6E98);
  result = swift_allocObject();
  *a1 = result;
  result[5] = v2;
  result[6] = &off_100386190;
  result[2] = v3;
  return result;
}

void *sub_1000DB088@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for SystemInfo();
  v3 = swift_allocObject();
  if (qword_10039D760 != -1)
  {
    swift_once();
  }

  v4 = qword_1003A6F30;
  *(v3 + 16) = xmmword_1003A6F20;
  *(v3 + 32) = v4;
  a1[3] = sub_100004074(&qword_1003A2DD8, &qword_1002C6EA0);
  result = swift_allocObject();
  *a1 = result;
  result[5] = v2;
  result[6] = &off_100386330;
  result[2] = v3;
  return result;
}

void *sub_1000DB15C@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for DefaultTimeKeeper();
  v3 = swift_allocObject();
  a1[3] = sub_100004074(&qword_1003A2DF8, &qword_1002C6EC0);
  result = swift_allocObject();
  *a1 = result;
  result[5] = v2;
  result[6] = &off_100384E20;
  result[2] = v3;
  return result;
}

void *sub_1000DB1E8@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for MPOCOfflineMonitorBackend();
  v3 = swift_allocObject();
  a1[3] = sub_100004074(&qword_1003A2D50, &qword_1002C6E10);
  result = swift_allocObject();
  *a1 = result;
  result[5] = v2;
  result[6] = &off_1003828F0;
  result[2] = v3;
  return result;
}

void *sub_1000DB274@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for OfflineConfiguratorBackend();
  swift_allocObject();
  v3 = sub_10008CBD0();
  a1[3] = sub_100004074(&qword_1003A2D58, &qword_1002C6E18);
  result = swift_allocObject();
  *a1 = result;
  result[5] = v2;
  result[6] = &off_100381ED8;
  result[2] = v3;
  return result;
}

void *sub_1000DB308@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for MPOCVolatileMonitorLogger();
  v3 = swift_allocObject();
  *(v3 + 16) = &_swiftEmptyArrayStorage;
  a1[3] = sub_100004074(&qword_1003A2D40, &qword_1002C6E00);
  result = swift_allocObject();
  *a1 = result;
  result[5] = v2;
  result[6] = &off_100382DB0;
  result[2] = v3;
  return result;
}

void *sub_1000DB3A0@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for VolatilePersistenceFactory();
  v3 = swift_allocObject();
  a1[3] = sub_100004074(&qword_1003A2D48, &qword_1002C6E08);
  result = swift_allocObject();
  *a1 = result;
  result[5] = v2;
  result[6] = &off_100382F88;
  result[2] = v3;
  return result;
}

void sub_1000DB42C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000E5EA8(v11);
  if (!v2)
  {
    v5 = a1 + OBJC_IVAR____TtC14softposreaderd5Depot_settings;
    v6 = type metadata accessor for Settings();
    v7 = *(v5 + *(v6 + 52));
    v8 = *(v5 + *(v6 + 56));

    v9 = sub_1000428FC(v11, v7, v8);
    v13 = type metadata accessor for ProfileManager();
    v14 = &off_100380E88;
    *&v12 = v9;
    a2[3] = sub_100004074(&qword_1003A2D60, &qword_1002C6E20);
    v10 = swift_allocObject();
    *a2 = v10;
    sub_100029790(&v12, v10 + 16);
  }
}

uint64_t sub_1000DB51C@<X0>(uint64_t *a1@<X8>)
{

  v3 = sub_100098258();

  if (!v1)
  {
    v7 = type metadata accessor for KernelManagerWrapper();
    v8 = &off_100382050;
    *&v6 = v3;
    a1[3] = sub_100004074(&qword_1003A2D68, &qword_1002C6E28);
    v5 = swift_allocObject();
    *a1 = v5;
    return sub_100029790(&v6, v5 + 16);
  }

  return result;
}

uint64_t sub_1000DB5C8@<X0>(uint64_t *a1@<X8>)
{

  result = sub_10013BFB4();
  if (!v1)
  {
    v4 = result;
    v7 = type metadata accessor for SecureChannelCryptoFactory();
    v8 = &off_100384AB8;
    *&v6 = v4;
    a1[3] = sub_100004074(&qword_1003A2D78, &qword_1002C6E38);
    v5 = swift_allocObject();
    *a1 = v5;
    return sub_100029790(&v6, v5 + 16);
  }

  return result;
}

void *sub_1000DB668@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + OBJC_IVAR____TtC14softposreaderd5Depot_settings;
  v4 = *(v3 + *(type metadata accessor for Settings() + 84));
  v5 = [objc_opt_self() ephemeralSessionConfiguration];
  [v5 setTimeoutIntervalForResource:v4];
  [v5 setTLSMinimumSupportedProtocolVersion:771];
  v6 = [objc_opt_self() sessionWithConfiguration:v5];

  v7 = type metadata accessor for DefaultSecureChannelHTTP();
  swift_allocObject();
  v8 = sub_1001426C0(v6);
  a2[3] = sub_100004074(&qword_1003A2D80, &qword_1002C6E40);
  result = swift_allocObject();
  *a2 = result;
  result[5] = v7;
  result[6] = &off_100384C58;
  result[2] = v8;
  return result;
}

uint64_t sub_1000DB7A0@<X0>(uint64_t *a1@<X8>)
{

  v3 = sub_1000A50A0();

  if (!v1)
  {
    v7 = type metadata accessor for LaunchFeedbackFramework();
    v8 = &off_1003823C0;
    *&v6 = v3;
    a1[3] = sub_100004074(&qword_1003A2D88, &qword_1002C6E48);
    v5 = swift_allocObject();
    *a1 = v5;
    return sub_100029790(&v6, v5 + 16);
  }

  return result;
}

void sub_1000DB84C(uint64_t *a1@<X8>)
{

  sub_10014BB78(v3);
  if (!v1)
  {
    v5 = v4;
    v8 = type metadata accessor for DefaultTimeTokenManager();
    v9 = &off_100384FB0;
    *&v7 = v5;
    a1[3] = sub_100004074(&qword_1003A2D90, &qword_1002C6E50);
    v6 = swift_allocObject();
    *a1 = v6;
    sub_100029790(&v7, v6 + 16);
  }
}

void sub_1000DB8EC(uint64_t *a1@<X8>)
{

  sub_1000B435C(v3);
  if (!v1)
  {
    v5 = v4;
    v8 = type metadata accessor for MPOCDefaultMonitorManager();
    v9 = &off_100382710;
    *&v7 = v5;
    a1[3] = sub_100004074(&qword_1003A2D98, &qword_1002C6E58);
    v6 = swift_allocObject();
    *a1 = v6;
    sub_100029790(&v7, v6 + 16);
  }
}

uint64_t sub_1000DB98C@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1000C317C();
  if (!v1)
  {
    v4 = result;
    v7 = type metadata accessor for ComponentAuditorFactory();
    v8 = &off_100382EA8;
    *&v6 = v4;
    a1[3] = sub_100004074(&qword_1003A2DA0, &qword_1002C6E60);
    v5 = swift_allocObject();
    *a1 = v5;
    return sub_100029790(&v6, v5 + 16);
  }

  return result;
}

uint64_t *sub_1000DBA2C@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1000343C4();
  if (!v1)
  {
    v4 = result;
    v7 = type metadata accessor for MPOCDefaultAttestationManager();
    v8 = &off_100380AA8;
    *&v6 = v4;
    a1[3] = sub_100004074(&qword_1003A2DA8, &qword_1002C6E68);
    v5 = swift_allocObject();
    *a1 = v5;
    return sub_100029790(&v6, v5 + 16);
  }

  return result;
}

void sub_1000DBACC(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000DAC04(a1, v5);
  if (!v2)
  {
    a2[3] = sub_100004074(&qword_1003A2DB0, &unk_1002C6E70);
    v4 = swift_allocObject();
    *a2 = v4;
    sub_100029790(v5, v4 + 16);
  }
}

void sub_1000DBB48(uint64_t *a1@<X8>)
{
  sub_1000E3850(v5);
  if (!v1)
  {
    v3 = type metadata accessor for CoreDataManager();
    swift_allocObject();
    v4 = sub_1000C4110(v5);
    a1[3] = v3;
    *a1 = v4;
  }
}

uint64_t sub_1000DBBC0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Environment();
  result = sub_1000DD4F4(v5);
  if (!v1)
  {
    a1[3] = sub_100004074(&qword_1003A2DC8, &qword_1002C6E90);
    v4 = swift_allocObject();
    *a1 = v4;
    return sub_100029790(v5, v4 + 16);
  }

  return result;
}

uint64_t sub_1000DBC64@<X0>(uint64_t *a1@<X8>)
{

  result = sub_10013A834(v3);
  if (!v1)
  {
    v5 = result;
    v8 = type metadata accessor for SecureChannelFactory();
    v9 = &off_100384A98;
    *&v7 = v5;
    a1[3] = sub_100004074(&qword_1003A2DE0, &qword_1002C6EA8);
    v6 = swift_allocObject();
    *a1 = v6;
    return sub_100029790(&v7, v6 + 16);
  }

  return result;
}

void *sub_1000DBD04@<X0>(uint64_t *a1@<X8>)
{

  result = sub_100150C04();
  if (!v1)
  {
    v4 = result;
    v7 = type metadata accessor for SignerFactory();
    v8 = &off_100385348;
    *&v6 = v4;
    a1[3] = sub_100004074(&qword_1003A2DE8, &qword_1002C6EB0);
    v5 = swift_allocObject();
    *a1 = v5;
    return sub_100029790(&v6, v5 + 16);
  }

  return result;
}

uint64_t sub_1000DBDA4@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1001463EC(v3);
  if (!v1)
  {
    v5 = result;
    v8 = type metadata accessor for DefaultSecureTimeKeeper();
    v9 = &off_100384E70;
    *&v7 = v5;
    a1[3] = sub_100004074(&qword_1003A2DF0, &qword_1002C6EB8);
    v6 = swift_allocObject();
    *a1 = v6;
    return sub_100029790(&v7, v6 + 16);
  }

  return result;
}

uint64_t sub_1000DBE44@<X0>(uint64_t *a1@<X8>)
{

  v4 = sub_10014F228(v3);

  if (!v1)
  {
    v8 = type metadata accessor for CertificateVerifierFactory();
    v9 = &off_1003852C0;
    *&v7 = v4;
    a1[3] = sub_100004074(&qword_1003A2E00, &qword_1002C6EC8);
    v6 = swift_allocObject();
    *a1 = v6;
    return sub_100029790(&v7, v6 + 16);
  }

  return result;
}

uint64_t sub_1000DBEF0@<X0>(uint64_t *a1@<X8>)
{

  result = sub_10004F5D8(v3);
  if (!v1)
  {
    v5 = result;
    v8 = type metadata accessor for CertificateManager();
    v9 = &off_100381288;
    *&v7 = v5;
    a1[3] = sub_100004074(&qword_1003A2E08, &qword_1002C6ED0);
    v6 = swift_allocObject();
    *a1 = v6;
    return sub_100029790(&v7, v6 + 16);
  }

  return result;
}

void sub_1000DBF90(uint64_t *a1@<X8>)
{
  sub_1000E3EB4(v11);
  if (!v1)
  {
    v3 = v12;
    v4 = sub_100022438(v11, v12);
    v5 = *(*(v3 - 8) + 64);
    __chkstk_darwin(v4);
    v7 = (&v11[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7);
    v9 = sub_1000DC8BC(*v7);
    sub_10000959C(v11);
    a1[3] = type metadata accessor for ProvisionAnalytics();
    *a1 = v9;
  }
}

uint64_t sub_1000DC0E4@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1000292E4();
  if (!v1)
  {
    v4 = result;
    result = type metadata accessor for ReaderAnalytics();
    a1[3] = result;
    *a1 = v4;
  }

  return result;
}

uint64_t sub_1000DC1B4@<X0>(uint64_t (*a1)(uint64_t)@<X1>, uint64_t (*a2)(void)@<X2>, uint64_t *a3@<X8>)
{

  v8 = a1(v7);

  if (!v3)
  {
    result = a2(0);
    a3[3] = result;
    *a3 = v8;
  }

  return result;
}

void sub_1000DC228(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for Settings();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E3850(v17);
  if (!v2)
  {
    sub_1000DD24C(a1 + OBJC_IVAR____TtC14softposreaderd5Depot_settings, v8);
    v9 = v18;
    v10 = sub_100022438(v17, v18);
    v11 = *(*(v9 - 8) + 64);
    __chkstk_darwin(v10);
    v13 = (v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13);
    v15 = sub_1000DCAE8(*v13, v8);
    sub_10000959C(v17);
    v20 = type metadata accessor for CALogger();
    v21 = &off_10037FF08;
    *&v19 = v15;
    a2[3] = sub_100004074(&qword_1003A2E18, &qword_1002C6EE0);
    v16 = swift_allocObject();
    *a2 = v16;
    sub_100029790(&v19, v16 + 16);
  }
}

uint64_t sub_1000DC3E8@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1000B9820(v3);
  if (!v1)
  {
    v5 = result;
    v8 = type metadata accessor for MPOCDefaultMonitorBackend();
    v9 = &off_100382CD8;
    *&v7 = v5;
    a1[3] = sub_100004074(&qword_1003A2D50, &qword_1002C6E10);
    v6 = swift_allocObject();
    *a1 = v6;
    return sub_100029790(&v7, v6 + 16);
  }

  return result;
}

uint64_t *sub_1000DC488@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1000812AC(v3);
  if (!v1)
  {
    v5 = result;
    v8 = type metadata accessor for ConfiguratorBackend(0);
    v9 = &off_1003817C0;
    *&v7 = v5;
    a1[3] = sub_100004074(&qword_1003A2D58, &qword_1002C6E18);
    v6 = swift_allocObject();
    *a1 = v6;
    return sub_100029790(&v7, v6 + 16);
  }

  return result;
}

void *sub_1000DC528@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1000BD460(v3);
  if (!v1)
  {
    v5 = result;
    v8 = type metadata accessor for MPOCDefaultMonitorLogger();
    v9 = &off_100382D78;
    *&v7 = v5;
    a1[3] = sub_100004074(&qword_1003A2D40, &qword_1002C6E00);
    v6 = swift_allocObject();
    *a1 = v6;
    return sub_100029790(&v7, v6 + 16);
  }

  return result;
}

void *sub_1000DC5C8@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1000C7B78();
  if (!v1)
  {
    v4 = result;
    v7 = type metadata accessor for PersistenceFactory();
    v8 = &off_100382F78;
    *&v6 = v4;
    a1[3] = sub_100004074(&qword_1003A2D48, &qword_1002C6E08);
    v5 = swift_allocObject();
    *a1 = v5;
    return sub_100029790(&v6, v5 + 16);
  }

  return result;
}

uint64_t sub_1000DC668()
{
  sub_1000DD2B0(v0 + OBJC_IVAR____TtC14softposreaderd5Depot_settings, type metadata accessor for Settings);
  v1 = *(v0 + OBJC_IVAR____TtC14softposreaderd5Depot_components);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Depot()
{
  result = qword_1003A2C20;
  if (!qword_1003A2C20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000DC744()
{
  result = type metadata accessor for Settings();
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

unint64_t sub_1000DC7EC()
{
  v1 = *v0;
  _StringGuts.grow(_:)(21);

  v3._countAndFlagsBits = Settings.description.getter(v2);
  String.append(_:)(v3);

  v4._countAndFlagsBits = 125;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  return 0xD000000000000012;
}

uint64_t sub_1000DC8BC(uint64_t a1)
{
  v2 = type metadata accessor for CALogger();
  v25[3] = v2;
  v25[4] = &off_10037FF08;
  v25[0] = a1;
  type metadata accessor for ProvisionAnalytics();
  v3 = swift_allocObject();
  v4 = sub_100022438(v25, v2);
  v5 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = (&v22[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = *v7;
  v24[3] = v2;
  v24[4] = &off_10037FF08;
  v24[0] = v9;
  *(v3 + 64) = 33686018;
  sub_10000CCE4(v24, v22);
  v10 = v23;
  v11 = sub_100022438(v22, v23);
  v12 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v22[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v14;
  *(v3 + 40) = v2;
  *(v3 + 48) = &off_10037FF08;
  *(v3 + 16) = v16;
  v17 = sub_100182F40(_swiftEmptyArrayStorage);
  v18 = sub_10018369C(_swiftEmptyArrayStorage);
  sub_100004074(&qword_1003A2E10, &qword_1002C6ED8);
  v19 = swift_allocObject();
  *(v19 + 32) = 0;
  *(v19 + 16) = v17;
  *(v19 + 24) = v18;
  *(v3 + 56) = v19;
  sub_10000959C(v24);
  sub_10000959C(v22);
  sub_10000959C(v25);
  return v3;
}

uint64_t sub_1000DCAE8(uint64_t a1, uint64_t a2)
{
  v15 = type metadata accessor for Environment();
  v16 = sub_1000DD348();
  v14[0] = a1;
  v4 = *(*sub_10000BE18(v14, v15) + OBJC_IVAR____TtC14softposreaderd11Environment_backendName);
  if (sub_1000DD5D0(v4) == 1685025392 && v5 == 0xE400000000000000)
  {
    goto LABEL_11;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
LABEL_12:
    v10 = 1;
    goto LABEL_13;
  }

  if (sub_1000DD5D0(v4) == 0x6567617473 && v8 == 0xE500000000000000)
  {
LABEL_11:

    goto LABEL_12;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

LABEL_13:
  v11 = *(a2 + *(type metadata accessor for Settings() + 64));
  type metadata accessor for CALogger();
  swift_allocObject();
  v12 = sub_100022EBC(v10 & 1, v11);
  sub_1000DD2B0(a2, type metadata accessor for Settings);
  sub_10000959C(v14);
  return v12;
}

id sub_1000DCC58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v60 = type metadata accessor for Environment();
  v61 = sub_1000DD348();
  v59[0] = a1;
  v57 = type metadata accessor for SecureElement();
  v58 = &off_1003849A0;
  v56[0] = a2;
  if (qword_10039D350 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000403C(v8, qword_10039F3F8);
  sub_10000CCE4(v59, v54);
  sub_10000CCE4(v56, v52);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v11 = 136315394;
    nullsub_1(a4);
    v12 = _typeName(_:qualified:)();
    v14 = sub_100008F6C(v12, v13, &v51);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1002C1790;
    v16 = v55;
    v17 = sub_10000BE18(v54, v55);
    *(v15 + 56) = v16;
    v18 = sub_10000BE5C((v15 + 32));
    (*(*(v16 - 8) + 16))(v18, v17, v16);
    v19 = v53;
    v20 = sub_10000BE18(v52, v53);
    *(v15 + 88) = v19;
    v21 = sub_10000BE5C((v15 + 64));
    (*(*(v19 - 8) + 16))(v21, v20, v19);
    type metadata accessor for SPRAttestationVaultOptions(0);
    *(v15 + 120) = v22;
    *(v15 + 96) = a3;
    v23 = showFunction(signature:_:)(0xD000000000000039, 0x800000010034CF80, v15);
    v25 = v24;

    sub_10000959C(v54);
    sub_10000959C(v52);
    v26 = sub_100008F6C(v23, v25, &v51);

    *(v11 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s.%s)", v11, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000959C(v54);
    sub_10000959C(v52);
  }

  v27 = *(*sub_10000BE18(v59, v60) + OBJC_IVAR____TtC14softposreaderd11Environment_backendName);
  if (sub_1000DD5D0(v27) == 1685025392 && v28 == 0xE400000000000000)
  {
    goto LABEL_13;
  }

  v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v30)
  {
LABEL_14:
    v32 = 18;
    goto LABEL_15;
  }

  if (sub_1000DD5D0(v27) == 0x6567617473 && v31 == 0xE500000000000000)
  {
    goto LABEL_13;
  }

  v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v47)
  {
    goto LABEL_14;
  }

  v48 = sub_10000BE18(v59, v60);
  if (sub_1000DD5D0(*(*v48 + OBJC_IVAR____TtC14softposreaderd11Environment_backendName)) == 1953654115 && v49 == 0xE400000000000000)
  {
LABEL_13:

    goto LABEL_14;
  }

  v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v50)
  {
    v32 = 18;
  }

  else
  {
    v32 = -48;
  }

LABEL_15:
  result = [*(*sub_10000BE18(v56 v57) + 24)];
  if (result)
  {
    v34 = result;
    v35 = [result unsignedShortValue];

    v36 = sub_10000BE18(v59, v60);
    if (sub_1000DD5D0(*(*v36 + OBJC_IVAR____TtC14softposreaderd11Environment_backendName)) == 1953654115 && v37 == 0xE400000000000000)
    {
    }

    else
    {
      v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v38 & 1) == 0)
      {
LABEL_21:
        v39 = objc_opt_self();
        v40 = [v39 processInfo];
        [v40 operatingSystemVersion];
        v41 = v54[0];

        v42 = [v39 processInfo];
        [v42 operatingSystemVersion];
        v43 = v54[1];

        v44 = [v39 processInfo];
        [v44 operatingSystemVersion];
        v45 = v54[2];

        type metadata accessor for MPOCDefaultAttestationOfflineVerifier();
        v46 = swift_allocObject();
        *(v46 + 16) = v32;
        *(v46 + 18) = v35;
        *(v46 + 24) = v41;
        *(v46 + 32) = v43;
        *(v46 + 40) = v45;
        *(v46 + 17) = 5;
        *(v46 + 56) = a3 | 0x8C;
        *(v46 + 48) = ~a3 & 0x52;
        sub_10000959C(v56);
        sub_10000959C(v59);
        return v46;
      }
    }

    a3 |= 0x40uLL;
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000DD24C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Settings();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000DD2B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000DD310()
{
  sub_10000959C((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_1000DD348()
{
  result = qword_1003A1B28;
  if (!qword_1003A1B28)
  {
    type metadata accessor for Environment();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A1B28);
  }

  return result;
}

uint64_t sub_1000DD3A0(uint64_t a1)
{
  if ((*(a1 + 32) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

__n128 sub_1000DD3BC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000DD3D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 33))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 32);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000DD40C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000DD458(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_1000DD4F4@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1000E2E48(v4);
  if (!v2)
  {
    v6 = result;
    a1[3] = v1;
    result = sub_1000E30EC(&qword_1003A1B28, type metadata accessor for Environment);
    a1[4] = result;
    *a1 = v6;
  }

  return result;
}

uint64_t sub_1000DD574()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A2E20);
  sub_10000403C(v0, qword_1003A2E20);
  sub_100023B24();
  return static SPRLogger.common.getter();
}

uint64_t sub_1000DD5D0(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 1685025392;
    v7 = 1953654115;
    v8 = 3236209;
    if (a1 != 3)
    {
      v8 = 3301745;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x6567617473;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 3563889;
    v2 = 0x656E696C66666FLL;
    if (a1 != 9)
    {
      v2 = 0x6E776F6E6B6E75;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 3367281;
    v4 = 3432817;
    if (a1 != 6)
    {
      v4 = 3498353;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1000DD6FC()
{
  v0 = sub_100004074(&qword_1003A03D0, &unk_1002C3D50);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for URL();
  sub_100003FD8(v4, qword_1003A6BF8);
  v5 = sub_10000403C(v4, qword_1003A6BF8);
  URL.init(string:)();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000DD82C()
{
  v0 = sub_100004074(&qword_1003A03D0, &unk_1002C3D50);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for URL();
  sub_100003FD8(v4, qword_1003A6C10);
  v5 = sub_10000403C(v4, qword_1003A6C10);
  URL.init(string:)();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000DD95C()
{
  v0 = sub_100004074(&qword_1003A03D0, &unk_1002C3D50);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for URL();
  sub_100003FD8(v4, qword_1003A6C28);
  v5 = sub_10000403C(v4, qword_1003A6C28);
  URL.init(string:)();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000DDA8C()
{
  v0 = sub_100004074(&qword_1003A03D0, &unk_1002C3D50);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for URL();
  sub_100003FD8(v4, qword_1003A6C40);
  v5 = sub_10000403C(v4, qword_1003A6C40);
  URL.init(string:)();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000DDBBC()
{
  v0 = sub_100004074(&qword_1003A03D0, &unk_1002C3D50);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for URL();
  sub_100003FD8(v4, qword_1003A6C58);
  v5 = sub_10000403C(v4, qword_1003A6C58);
  URL.init(string:)();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000DDCEC()
{
  v0 = sub_100004074(&qword_1003A03D0, &unk_1002C3D50);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for URL();
  sub_100003FD8(v4, qword_1003A6C70);
  v5 = sub_10000403C(v4, qword_1003A6C70);
  URL.init(string:)();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000DDE1C()
{
  v0 = sub_100004074(&qword_1003A03D0, &unk_1002C3D50);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for URL();
  sub_100003FD8(v4, qword_1003A6C88);
  v5 = sub_10000403C(v4, qword_1003A6C88);
  URL.init(string:)();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000DDF4C()
{
  v0 = sub_100004074(&qword_1003A03D0, &unk_1002C3D50);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for URL();
  sub_100003FD8(v4, qword_1003A6CA0);
  v5 = sub_10000403C(v4, qword_1003A6CA0);
  URL.init(string:)();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000DE07C()
{
  v0 = sub_100004074(&qword_1003A03D0, &unk_1002C3D50);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for URL();
  sub_100003FD8(v4, qword_1003A6CB8);
  v5 = sub_10000403C(v4, qword_1003A6CB8);
  URL.init(string:)();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000DE1F0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100004074(&qword_1003A03D0, &unk_1002C3D50);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for URL();
  sub_100003FD8(v7, a2);
  v8 = sub_10000403C(v7, a2);
  URL.init(string:)();
  v9 = *(v7 - 8);
  result = (*(v9 + 48))(v6, 1, v7);
  if (result != 1)
  {
    return (*(v9 + 32))(v8, v6, v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000DE31C()
{
  v0 = type metadata accessor for URL.DirectoryHint();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003FD8(v8, qword_1003A6D00);
  sub_10000403C(v5, qword_1003A6D00);
  v11 = [objc_opt_self() defaultManager];
  v12 = [v11 URLsForDirectory:14 inDomains:1];

  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v13 + 16))
  {

    if (*(v13 + 16))
    {
      (*(v6 + 16))(v10, v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);

      v15[0] = 0xD000000000000017;
      v15[1] = 0x800000010034A1A0;
      (*(v1 + 104))(v4, enum case for URL.DirectoryHint.inferFromPath(_:), v0);
      sub_10008AB88();
      URL.appending<A>(component:directoryHint:)();
      (*(v1 + 8))(v4, v0);
      return (*(v6 + 8))(v10, v5);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000DE5B4()
{
  v0 = type metadata accessor for URL();
  sub_100003FD8(v0, qword_1003A6D18);
  sub_10000403C(v0, qword_1003A6D18);
  return sub_1000DE600();
}

uint64_t sub_1000DE600()
{
  v0 = sub_100004074(&qword_1003A03D0, &unk_1002C3D50);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v16 - v2;
  v17 = 1;
  if (container_system_path_for_identifier())
  {
    if (qword_10039D568 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000403C(v4, qword_1003A2E20);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136315138;
      v9 = String.init(cString:)();
      v11 = sub_100008F6C(v9, v10, &v18);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "System container path: %s", v7, 0xCu);
      sub_10000959C(v8);
    }

    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
    URL.init(fileURLWithFileSystemRepresentation:isDirectory:relativeTo:)();
    sub_1000E14B4(v3);
  }

  else
  {
    v18 = 0;
    v19 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    v18 = 0xD000000000000020;
    v19 = 0x800000010034D090;
    v16[1] = v17;
    v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v14);

    v15._countAndFlagsBits = 41;
    v15._object = 0xE100000000000000;
    String.append(_:)(v15);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000DE90C@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = sub_100004074(&qword_1003A03D0, &unk_1002C3D50);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v31[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v31[-1] - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v31[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v31[-1] - v17;
  v19 = OBJC_IVAR____TtC14softposreaderd11Environment__itemReplacementDirectory;
  swift_beginAccess();
  sub_1000BDC6C(v2 + v19, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1000E14B4(v10);
    v20 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(OBJC_IVAR____TtC14softposreaderd11Environment_storageURL);
    v22 = v21;
    v31[0] = 0;
    v23 = [v20 URLForDirectory:99 inDomain:1 appropriateForURL:v21 create:1 error:v31];

    v24 = v31[0];
    if (v23)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      (*(v12 + 16))(v8, v16, v11);
      v26 = *(v12 + 56);
      v26(v8, 0, 1, v11);
      swift_beginAccess();
      sub_1000E1534(v8, v2 + v19);
      swift_endAccess();
      (*(v12 + 32))(a1, v16, v11);
      return (v26)(a1, 0, 1, v11);
    }

    else
    {
      v29 = v31[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();

      return (*(v12 + 56))(a1, 1, 1, v11);
    }
  }

  else
  {
    v28 = *(v12 + 32);
    v28(v18, v10, v11);
    v28(a1, v18, v11);
    return (*(v12 + 56))(a1, 0, 1, v11);
  }
}

uint64_t sub_1000DECAC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = type metadata accessor for BackendSetting();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E3134(a2, v10, type metadata accessor for BackendSetting);
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 11, v11);
  if (v13 > 5)
  {
    if (v13 > 8)
    {
      if (v13 == 9)
      {
        if (qword_10039D5A8 != -1)
        {
          swift_once();
        }

        v30 = sub_10000403C(v11, qword_1003A6CA0);
        (*(v12 + 16))(a1, v30, v11);
        return 7;
      }

      else if (v13 == 10)
      {
        if (qword_10039D5B0 != -1)
        {
          swift_once();
        }

        v27 = sub_10000403C(v11, qword_1003A6CB8);
        (*(v12 + 16))(a1, v27, v11);
        return 8;
      }

      else
      {
        if (qword_10039D5B8 != -1)
        {
          swift_once();
        }

        v34 = sub_10000403C(v11, qword_1003A6CD0);
        (*(v12 + 16))(a1, v34, v11);
        return 9;
      }
    }

    else if (v13 == 6)
    {
      if (qword_10039D590 != -1)
      {
        swift_once();
      }

      v28 = sub_10000403C(v11, qword_1003A6C58);
      (*(v12 + 16))(a1, v28, v11);
      return 4;
    }

    else if (v13 == 7)
    {
      if (qword_10039D598 != -1)
      {
        swift_once();
      }

      v25 = sub_10000403C(v11, qword_1003A6C70);
      (*(v12 + 16))(a1, v25, v11);
      return 5;
    }

    else
    {
      if (qword_10039D5A0 != -1)
      {
        swift_once();
      }

      v32 = sub_10000403C(v11, qword_1003A6C88);
      (*(v12 + 16))(a1, v32, v11);
      return 6;
    }
  }

  else
  {
    if (v13 <= 2)
    {
      if (!v13)
      {
        (*(v12 + 32))(a1, v10, v11);
        return 10;
      }

      if (v13 == 1)
      {
        if (![*(*sub_10000BE18(a4 a4[3]) + 16)])
        {
          goto LABEL_11;
        }

        if (qword_10039D720 != -1)
        {
          swift_once();
        }

        if (*(static PrimaryAccountWatcher.shared + OBJC_IVAR____TtC14softposreaderd21PrimaryAccountWatcher_isSandboxAccount))
        {
          goto LABEL_11;
        }

        v14 = objc_allocWithZone(NSUserDefaults);
        v15 = String._bridgeToObjectiveC()();
        v16 = [v14 initWithSuiteName:v15];

        if (v16)
        {
          v17 = String._bridgeToObjectiveC()();
          v18 = [v16 BOOLForKey:v17];

          if (v18)
          {
LABEL_11:
            if (qword_10039D568 != -1)
            {
              swift_once();
            }

            v19 = type metadata accessor for Logger();
            sub_10000403C(v19, qword_1003A2E20);
            v20 = Logger.logObject.getter();
            v21 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v20, v21))
            {
              v22 = swift_slowAlloc();
              *v22 = 0;
              _os_log_impl(&_mh_execute_header, v20, v21, "BackendSetting of .default will be: CERT BackendURL", v22, 2u);
            }

            if (qword_10039D580 != -1)
            {
              swift_once();
            }

            v23 = sub_10000403C(v11, qword_1003A6C28);
            (*(v12 + 16))(a1, v23, v11);
            sub_1000DD2B0(v10, type metadata accessor for BackendSetting);
            return 2;
          }
        }

        if (qword_10039D568 != -1)
        {
          swift_once();
        }

        v35 = type metadata accessor for Logger();
        sub_10000403C(v35, qword_1003A2E20);
        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          *v38 = 0;
          _os_log_impl(&_mh_execute_header, v36, v37, "BackendSetting of .default will be: PROD BackendURL", v38, 2u);
        }

        if (qword_10039D570 != -1)
        {
          swift_once();
        }

        v39 = sub_10000403C(v11, qword_1003A6BF8);
        (*(v12 + 16))(a1, v39, v11);
        sub_1000DD2B0(v10, type metadata accessor for BackendSetting);
      }

      else
      {
        if (qword_10039D570 != -1)
        {
          swift_once();
        }

        v31 = sub_10000403C(v11, qword_1003A6BF8);
        (*(v12 + 16))(a1, v31, v11);
      }

      return 0;
    }

    if (v13 == 3)
    {
      if (qword_10039D578 != -1)
      {
        swift_once();
      }

      v29 = sub_10000403C(v11, qword_1003A6C10);
      (*(v12 + 16))(a1, v29, v11);
      return 1;
    }

    else if (v13 == 4)
    {
      if (qword_10039D580 != -1)
      {
        swift_once();
      }

      v26 = sub_10000403C(v11, qword_1003A6C28);
      (*(v12 + 16))(a1, v26, v11);
      return 2;
    }

    else
    {
      if (qword_10039D588 != -1)
      {
        swift_once();
      }

      v33 = sub_10000403C(v11, qword_1003A6C40);
      (*(v12 + 16))(a1, v33, v11);
      return 3;
    }
  }
}

uint64_t sub_1000DF574@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v137 = a3;
  v5 = type metadata accessor for CocoaError.Code();
  v132 = *(v5 - 8);
  v133 = v5;
  v6 = *(v132 + 64);
  __chkstk_darwin(v5);
  v131 = &v128 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v140 = *(v8 - 8);
  v9 = *(v140 + 64);
  v10 = __chkstk_darwin(v8);
  v130 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v128 - v13;
  __chkstk_darwin(v12);
  v136 = &v128 - v15;
  v16 = type metadata accessor for URL.DirectoryHint();
  v17 = *(v16 - 8);
  v18 = v17[8];
  __chkstk_darwin(v16);
  v20 = &v128 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D568 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  v135 = sub_10000403C(v21, qword_1003A2E20);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  v24 = os_log_type_enabled(v22, v23);
  v129 = v14;
  v138 = a1;
  v139 = a2;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v142 = swift_slowAlloc();
    *v25 = 136315394;
    v26 = _typeName(_:qualified:)();
    v28 = v17;
    v29 = v16;
    v30 = v8;
    v31 = sub_100008F6C(v26, v27, &v142);

    *(v25 + 4) = v31;
    *(v25 + 12) = 2080;
    v32 = showFunction(signature:_:)(0xD000000000000015, 0x800000010034D0F0, _swiftEmptyArrayStorage);
    v34 = sub_100008F6C(v32, v33, &v142);

    *(v25 + 14) = v34;
    v8 = v30;
    v16 = v29;
    v17 = v28;
    a1 = v138;
    _os_log_impl(&_mh_execute_header, v22, v23, "%s.%s", v25, 0x16u);
    swift_arrayDestroy();

    a2 = v139;
  }

  if (qword_10039D5D0 != -1)
  {
    swift_once();
  }

  sub_10000403C(v8, qword_1003A6D18);
  v142 = a1;
  v143 = a2;
  v35 = enum case for URL.DirectoryHint.isDirectory(_:);
  v36 = v17[13];
  v36(v20, enum case for URL.DirectoryHint.isDirectory(_:), v16);
  sub_10008AB88();
  URL.appending<A>(component:directoryHint:)();
  v37 = v8;
  v38 = v17[1];
  v38(v20, v16);
  if (qword_10039D5C8 != -1)
  {
    swift_once();
  }

  v134 = v37;
  sub_10000403C(v37, qword_1003A6D00);
  v142 = v138;
  v143 = v139;
  v36(v20, v35, v16);
  v39 = v136;
  URL.appending<A>(component:directoryHint:)();
  v38(v20, v16);
  v40 = objc_opt_self();
  v41 = &selRef_currencyCode;
  v42 = [v40 defaultManager];
  URL.path(percentEncoded:)(0);
  v43 = String._bridgeToObjectiveC()();

  v44 = [v42 fileExistsAtPath:v43];

  if (v44)
  {
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "Reusing existing storage location", v47, 2u);
    }

    v48 = v134;
  }

  else
  {
    v49 = [v40 defaultManager];
    URL._bridgeToObjectiveC()(v50);
    v52 = v51;
    URL._bridgeToObjectiveC()(v53);
    v55 = v54;
    v142 = 0;
    v56 = [v49 copyItemAtURL:v52 toURL:v54 error:&v142];

    v57 = v142;
    if (v56)
    {
      v58 = v129;
      v59 = v134;
      (*(v140 + 16))(v129, v39, v134);
      v60 = v57;
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v142 = v64;
        *v63 = 136315138;
        sub_1000E30EC(&qword_1003A3C40, &type metadata accessor for URL);
        v65 = dispatch thunk of CustomStringConvertible.description.getter();
        v66 = v58;
        v68 = v67;
        (*(v140 + 8))(v66, v59);
        v69 = sub_100008F6C(v65, v68, &v142);
        v39 = v136;

        *(v63 + 4) = v69;
        _os_log_impl(&_mh_execute_header, v61, v62, "Imported legacy storage at: %s", v63, 0xCu);
        sub_10000959C(v64);
      }

      else
      {

        (*(v140 + 8))(v58, v59);
      }

      v41 = &selRef_currencyCode;
      v48 = v59;
    }

    else
    {
      v70 = v142;
      v71 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v72 = v131;
      static CocoaError.fileReadNoSuchFile.getter();
      sub_1000E30EC(&qword_1003A0FD0, &type metadata accessor for CocoaError.Code);
      v73 = v133;
      v74 = static _ErrorCodeProtocol.~= infix(_:_:)();
      (*(v132 + 8))(v72, v73);
      v48 = v134;
      v41 = &selRef_currencyCode;
      if ((v74 & 1) == 0)
      {
        swift_errorRetain();
        v75 = Logger.logObject.getter();
        v76 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v75, v76))
        {
          v77 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          v142 = v78;
          *v77 = 136315138;
          v141 = v71;
          swift_errorRetain();
          sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
          v79 = String.init<A>(describing:)();
          v81 = sub_100008F6C(v79, v80, &v142);

          *(v77 + 4) = v81;
          v39 = v136;
          _os_log_impl(&_mh_execute_header, v75, v76, "Failed to import legacy storage: %s", v77, 0xCu);
          sub_10000959C(v78);
          v41 = &selRef_currencyCode;
        }
      }

      v82 = [v40 v41[53]];
      URL._bridgeToObjectiveC()(v83);
      v85 = v84;
      v142 = 0;
      v86 = [v82 createDirectoryAtURL:v84 withIntermediateDirectories:1 attributes:0 error:&v142];

      if (!v86)
      {
        v127 = v142;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        result = swift_unexpectedError();
        __break(1u);
        return result;
      }

      v87 = v142;
      v88 = Logger.logObject.getter();
      v89 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        *v90 = 0;
        _os_log_impl(&_mh_execute_header, v88, v89, "Created new storage location", v90, 2u);
      }
    }
  }

  v91 = [v40 v41[53]];
  URL._bridgeToObjectiveC()(v92);
  v94 = v93;
  v142 = 0;
  v95 = [v91 removeItemAtURL:v93 error:&v142];

  v96 = v142;
  if (v95)
  {
    v97 = v130;
    (*(v140 + 16))(v130, v39, v48);
    v98 = v96;
    v99 = Logger.logObject.getter();
    v100 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v142 = v102;
      *v101 = 136315138;
      sub_1000E30EC(&qword_1003A3C40, &type metadata accessor for URL);
      v103 = dispatch thunk of CustomStringConvertible.description.getter();
      v104 = v48;
      v106 = v105;
      v107 = v97;
      v108 = v39;
      v109 = *(v140 + 8);
      v109(v107, v104);
      v110 = sub_100008F6C(v103, v106, &v142);

      *(v101 + 4) = v110;
      _os_log_impl(&_mh_execute_header, v99, v100, "Removed legacy storage at: %s", v101, 0xCu);
      sub_10000959C(v102);

      return (v109)(v108, v104);
    }

    else
    {

      v117 = *(v140 + 8);
      v117(v97, v48);
      return (v117)(v39, v48);
    }
  }

  else
  {
    v112 = v142;
    v113 = _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v114 = v131;
    static CocoaError.fileNoSuchFile.getter();
    sub_1000E30EC(&qword_1003A0FD0, &type metadata accessor for CocoaError.Code);
    v115 = v133;
    v116 = static _ErrorCodeProtocol.~= infix(_:_:)();

    (*(v132 + 8))(v114, v115);
    if (v116)
    {
      (*(v140 + 8))(v39, v48);
    }

    else
    {
      swift_errorRetain();
      v118 = Logger.logObject.getter();
      v119 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v118, v119))
      {
        v120 = swift_slowAlloc();
        v121 = swift_slowAlloc();
        v142 = v121;
        *v120 = 136315138;
        v141 = v113;
        swift_errorRetain();
        sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
        v122 = String.init<A>(describing:)();
        v123 = v140;
        v125 = v39;
        v126 = sub_100008F6C(v122, v124, &v142);

        *(v120 + 4) = v126;
        _os_log_impl(&_mh_execute_header, v118, v119, "Failed to remove legacy storage: %s", v120, 0xCu);
        sub_10000959C(v121);

        return (*(v123 + 8))(v125, v48);
      }

      else
      {

        return (*(v140 + 8))(v39, v48);
      }
    }
  }
}

uint64_t sub_1000E0460@<X0>(char *a1@<X8>)
{
  v43 = a1;
  v42 = type metadata accessor for URL.DirectoryHint();
  v1 = *(v42 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v42);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v44 = &v37 - v11;
  v45 = objc_opt_self();
  v12 = 0;
  v41 = enum case for URL.DirectoryHint.isDirectory(_:);
  v39 = (v1 + 8);
  v40 = (v1 + 104);
  v13 = (v6 + 8);
  v38 = (v6 + 32);
  v14 = &off_1003A6000;
  v37 = xmmword_1002C1660;
  do
  {
    v18 = v14[422];
    v19 = (&v18->Flags + 1);
    if (__OFADD__(v18, 1))
    {
      __break(1u);
    }

    v20 = v14;
    v14[422] = v19;
    sub_100004074(&qword_10039E268, &unk_1002C16F0);
    v21 = swift_allocObject();
    *(v21 + 16) = v37;
    *(v21 + 56) = &type metadata for Int;
    *(v21 + 64) = &protocol witness table for Int;
    *(v21 + 32) = v19;
    v22 = String.init(format:_:)();
    v24 = v23;
    if (v12)
    {
    }

    v25 = [v45 defaultManager];
    v26 = [v25 temporaryDirectory];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v46[0] = v22;
    v46[1] = v24;
    v27 = v42;
    (*v40)(v4, v41, v42);
    sub_10008AB88();
    URL.appending<A>(component:directoryHint:)();
    (*v39)(v4, v27);

    v28 = *v13;
    (*v13)(v10, v5);
    if (v12)
    {
      v28(v43, v5);
    }

    (*v38)(v43, v44, v5);
    v15 = [v45 defaultManager];
    URL.path.getter();
    v16 = String._bridgeToObjectiveC()();

    v17 = [v15 fileExistsAtPath:v16];

    v12 = 1;
    v14 = v20;
  }

  while ((v17 & 1) != 0);
  v29 = [v45 defaultManager];
  URL._bridgeToObjectiveC()(v30);
  v32 = v31;
  v46[0] = 0;
  v33 = [v29 createDirectoryAtURL:v31 withIntermediateDirectories:1 attributes:0 error:v46];

  if (v33)
  {
    v34 = v46[0];
  }

  else
  {
    v36 = v46[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000E08F0()
{
  v1 = v0;
  v2 = type metadata accessor for CocoaError.Code();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100004074(&qword_1003A03D0, &unk_1002C3D50);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v65 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v67 = v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v65 - v16;
  if (*(v1 + OBJC_IVAR____TtC14softposreaderd11Environment_isStorageTemporary) == 1)
  {
    v66 = v10;
    v18 = [objc_opt_self() defaultManager];
    v19 = *(v12 + 16);
    v65[1] = OBJC_IVAR____TtC14softposreaderd11Environment_storageURL;
    v19(v17, v1 + OBJC_IVAR____TtC14softposreaderd11Environment_storageURL, v11);
    URL._bridgeToObjectiveC()(v20);
    v22 = v21;
    (*(v12 + 8))(v17, v11);
    v69[0] = 0;
    v23 = [v18 removeItemAtURL:v22 error:v69];

    if (v23)
    {
      v24 = qword_10039D568;
      v25 = v69[0];
      if (v24 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      sub_10000403C(v26, qword_1003A2E20);

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();

      if (!os_log_type_enabled(v27, v28))
      {
        goto LABEL_13;
      }

      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v69[0] = v30;
      *v29 = 136315138;
      v31 = URL.path.getter();
      v33 = sub_100008F6C(v31, v32, v69);

      *(v29 + 4) = v33;
      v34 = "Removed temporary storage %s";
    }

    else
    {
      v35 = v69[0];
      v36 = _convertNSErrorToError(_:)();

      swift_willThrow();
      swift_errorRetain();
      static CocoaError.fileNoSuchFile.getter();
      sub_1000E30EC(&qword_1003A0FD0, &type metadata accessor for CocoaError.Code);
      v37 = static _ErrorCodeProtocol.~= infix(_:_:)();

      (*(v3 + 8))(v6, v2);
      if ((v37 & 1) == 0)
      {
        if (qword_10039D568 != -1)
        {
          swift_once();
        }

        v57 = type metadata accessor for Logger();
        sub_10000403C(v57, qword_1003A2E20);
        swift_errorRetain();
        v58 = Logger.logObject.getter();
        v59 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          v68 = v36;
          v69[0] = v61;
          *v60 = 136315138;
          swift_errorRetain();
          sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
          v62 = String.init<A>(describing:)();
          v64 = sub_100008F6C(v62, v63, v69);

          *(v60 + 4) = v64;
          _os_log_impl(&_mh_execute_header, v58, v59, "Failed to remove temporary storage %s", v60, 0xCu);
          sub_10000959C(v61);
        }

        else
        {
        }

        goto LABEL_14;
      }

      if (qword_10039D568 != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      sub_10000403C(v38, qword_1003A2E20);

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();

      if (!os_log_type_enabled(v27, v28))
      {
LABEL_13:

LABEL_14:
        v10 = v66;
        goto LABEL_15;
      }

      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v69[0] = v30;
      *v29 = 136315138;
      v39 = URL.path.getter();
      v41 = sub_100008F6C(v39, v40, v69);

      *(v29 + 4) = v41;
      v34 = "Temporary storage %s already removed";
    }

    _os_log_impl(&_mh_execute_header, v27, v28, v34, v29, 0xCu);
    sub_10000959C(v30);

    goto LABEL_13;
  }

LABEL_15:
  v42 = OBJC_IVAR____TtC14softposreaderd11Environment__itemReplacementDirectory;
  swift_beginAccess();
  sub_1000BDC6C(v1 + v42, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1000E14B4(v10);
    v43 = *(v12 + 8);
    v43(v1 + OBJC_IVAR____TtC14softposreaderd11Environment_backendURL, v11);
  }

  else
  {
    v44 = v67;
    (*(v12 + 32))(v67, v10, v11);
    v45 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v46);
    v48 = v47;
    v68 = 0;
    v49 = [v45 removeItemAtURL:v47 error:&v68];

    if (v49)
    {
      v43 = *(v12 + 8);
      v50 = v68;
      v43(v44, v11);
      v43(v1 + OBJC_IVAR____TtC14softposreaderd11Environment_backendURL, v11);
    }

    else
    {
      v51 = v68;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_10039D568 != -1)
      {
        swift_once();
      }

      v52 = type metadata accessor for Logger();
      sub_10000403C(v52, qword_1003A2E20);
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&_mh_execute_header, v53, v54, "cannot delete itemReplacementDirectory", v55, 2u);
      }

      v43 = *(v12 + 8);
      v43(v44, v11);
      v43(v1 + OBJC_IVAR____TtC14softposreaderd11Environment_backendURL, v11);
    }
  }

  v43(v1 + OBJC_IVAR____TtC14softposreaderd11Environment_storageURL, v11);
  sub_1000E14B4(v1 + v42);
  sub_1000E151C(*(v1 + OBJC_IVAR____TtC14softposreaderd11Environment_storageSetting), *(v1 + OBJC_IVAR____TtC14softposreaderd11Environment_storageSetting + 8), *(v1 + OBJC_IVAR____TtC14softposreaderd11Environment_storageSetting + 16));
  return v1;
}

uint64_t sub_1000E11F0()
{
  sub_1000E08F0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Environment()
{
  result = qword_1003A2E68;
  if (!qword_1003A2E68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000E129C()
{
  v0 = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1000E1384();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1000E1384()
{
  if (!qword_1003A2E78)
  {
    type metadata accessor for URL();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1003A2E78);
    }
  }
}

uint64_t sub_1000E13DC()
{
  v1 = *v0;
  strcpy(v5, "Environment[");
  BYTE5(v5[1]) = 0;
  HIWORD(v5[1]) = -5120;
  v2._countAndFlagsBits = sub_1000DD5D0(*(v1 + OBJC_IVAR____TtC14softposreaderd11Environment_backendName));
  String.append(_:)(v2);

  v3._countAndFlagsBits = 93;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  return v5[0];
}

uint64_t sub_1000E145C(uint64_t a1)
{
  result = sub_1000E30EC(&qword_1003A2F38, type metadata accessor for Environment);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000E14B4(uint64_t a1)
{
  v2 = sub_100004074(&qword_1003A03D0, &unk_1002C3D50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000E151C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1000E1534(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004074(&qword_1003A03D0, &unk_1002C3D50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E15A4(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      type metadata accessor for SHA256();
      sub_1000E30EC(&qword_1003A2F48, &type metadata accessor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1000E1784(v4, v5);
  }

  if (v2 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_1000E1784(v4, v5);
  }

  type metadata accessor for SHA256();
  sub_1000E30EC(&qword_1003A2F48, &type metadata accessor for SHA256);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t sub_1000E1784(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      type metadata accessor for SHA256();
      sub_1000E30EC(&qword_1003A2F48, &type metadata accessor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000E1864(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v4 = a4;
  v170 = a1;
  v164 = *a4;
  v153 = type metadata accessor for SHA256Digest();
  v152 = *(v153 - 8);
  v7 = *(v152 + 64);
  __chkstk_darwin(v153);
  v151 = &v145 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = type metadata accessor for URL.DirectoryHint();
  v159 = *(v160 - 8);
  v9 = *(v159 + 64);
  __chkstk_darwin(v160);
  v158 = &v145 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = type metadata accessor for String.Encoding();
  v149 = *(v150 - 8);
  v11 = *(v149 + 64);
  __chkstk_darwin(v150);
  v148 = &v145 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = type metadata accessor for SHA256();
  v155 = *(v156 - 8);
  v13 = *(v155 + 64);
  __chkstk_darwin(v156);
  v15 = &v145 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = type metadata accessor for Settings();
  v16 = *(*(v165 - 8) + 64);
  __chkstk_darwin(v165);
  v18 = &v145 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for URL();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v157 = &v145 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v145 - v24;
  v177[3] = type metadata accessor for SystemInfo();
  v177[4] = &off_100386330;
  v177[0] = a2;
  v176[3] = type metadata accessor for SecureElement();
  v176[4] = &off_1003849A0;
  v176[0] = a3;
  v169 = v20;
  v26 = *(v20 + 56);
  v146 = OBJC_IVAR____TtC14softposreaderd11Environment__itemReplacementDirectory;
  v26(&v4[OBJC_IVAR____TtC14softposreaderd11Environment__itemReplacementDirectory], 1, 1, v19);
  if (qword_10039D568 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  v28 = sub_10000403C(v27, qword_1003A2E20);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  v31 = os_log_type_enabled(v29, v30);
  v168 = v4;
  v154 = v15;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v173[0] = swift_slowAlloc();
    *v32 = 136315394;
    v33 = _typeName(_:qualified:)();
    v34 = v18;
    v36 = sub_100008F6C(v33, v35, v173);

    *(v32 + 4) = v36;
    *(v32 + 12) = 2080;
    v37 = showFunction(signature:_:)(0xD000000000000028, 0x800000010034D0C0, _swiftEmptyArrayStorage);
    v39 = sub_100008F6C(v37, v38, v173);

    *(v32 + 14) = v39;
    v18 = v34;
    v4 = v168;
    _os_log_impl(&_mh_execute_header, v29, v30, "%s.%s", v32, 0x16u);
    swift_arrayDestroy();
  }

  v40 = v170;
  v42 = sub_1000DECAC(v25, v170, v41, v176);
  v43 = *(v169 + 32);
  v147 = OBJC_IVAR____TtC14softposreaderd11Environment_backendURL;
  v166 = v25;
  v163 = v169 + 32;
  v162 = v43;
  v43(&v4[OBJC_IVAR____TtC14softposreaderd11Environment_backendURL], v25, v19);
  v44 = OBJC_IVAR____TtC14softposreaderd11Environment_backendName;
  v4[OBJC_IVAR____TtC14softposreaderd11Environment_backendName] = v42;
  sub_1000E3134(v40, v18, type metadata accessor for Settings);

  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();

  v47 = os_log_type_enabled(v45, v46);
  v167 = v19;
  if (v47)
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v161 = v28;
    v50 = v4;
    v173[0] = v49;
    *v48 = 136315394;
    v51 = sub_1000D87C0();
    v53 = v52;
    sub_1000DD2B0(v18, type metadata accessor for Settings);
    v54 = sub_100008F6C(v51, v53, v173);

    *(v48 + 4) = v54;
    *(v48 + 12) = 2080;
    v55 = v50[v44];
    v56 = v161;
    v57 = sub_1000DD5D0(v55);
    v59 = sub_100008F6C(v57, v58, v173);

    *(v48 + 14) = v59;
    _os_log_impl(&_mh_execute_header, v45, v46, "(Configurator, A&M, TimeToken) BackendSetting: %s is %s", v48, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v56 = v28;

    sub_1000DD2B0(v18, type metadata accessor for Settings);
  }

  v60 = v170 + *(v165 + 20);
  countAndFlagsBits = *v60;
  object = *(v60 + 8);
  v63 = *(v60 + 16);
  v64 = v166;
  if (v63)
  {
    if (v63 == 1)
    {

      sub_1000DF574(countAndFlagsBits, object, v64);
      v65 = v168;
      v162(&v168[OBJC_IVAR____TtC14softposreaderd11Environment_storageURL], v64, v167);
      v65[OBJC_IVAR____TtC14softposreaderd11Environment_isStorageTemporary] = 0;

      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v165 = countAndFlagsBits;
        v69 = v68;
        v70 = swift_slowAlloc();
        v173[0] = v70;
        *v69 = 136315138;
        v71 = URL.path.getter();
        v73 = sub_100008F6C(v71, v72, v173);

        *(v69 + 4) = v73;
        _os_log_impl(&_mh_execute_header, v66, v67, "Using permanent storage at: %s", v69, 0xCu);
        sub_10000959C(v70);

        countAndFlagsBits = v165;
      }

      sub_10000959C(v176);
      sub_10000959C(v177);
LABEL_34:
      sub_1000DD2B0(v170, type metadata accessor for Settings);
      v114 = 1;
      goto LABEL_35;
    }

    v65 = v168;
    v101 = v167;
    if (!(countAndFlagsBits | object))
    {
      v115 = v154;
      SHA256.init()();
      v116 = v169;
      (*(v169 + 16))(v64, &v65[v147], v101);
      URL.absoluteString.getter();
      (*(v116 + 8))(v64, v101);
      v117 = v148;
      static String.Encoding.utf8.getter();
      v118 = String.data(using:allowLossyConversion:)();
      v120 = v119;

      (*(v149 + 8))(v117, v150);
      if (v120 >> 60 != 15)
      {
        sub_1000094F4(v118, v120);
        sub_1000E15A4(v118, v120);
        sub_10001A074(v118, v120);
        sub_1000094F4(v118, v120);
        sub_1000E15A4(v118, v120);
        sub_10001A074(v118, v120);
        sub_1000094F4(v118, v120);
        sub_1000E15A4(v118, v120);
        sub_10001A074(v118, v120);
        sub_10001A074(v118, v120);
      }

      v125 = v153;
      v126 = v151;
      SHA256.finalize()();
      v174 = v125;
      v175 = sub_1000E30EC(&qword_1003A2F40, &type metadata accessor for SHA256Digest);
      v127 = sub_10000BE5C(v173);
      v128 = v152;
      (*(v152 + 16))(v127, v126, v125);
      sub_10000BE18(v173, v174);
      dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
      (*(v128 + 8))(v126, v125);
      v129 = v171;
      v130 = v172;
      sub_10000959C(v173);
      v131 = Data.hexString()();
      countAndFlagsBits = v131._countAndFlagsBits;
      object = v131._object;
      sub_100009548(v129, v130);
      sub_1000DF574(v131._countAndFlagsBits, v131._object, v64);
      v162(&v65[OBJC_IVAR____TtC14softposreaderd11Environment_storageURL], v64, v167);
      v65[OBJC_IVAR____TtC14softposreaderd11Environment_isStorageTemporary] = 0;

      v132 = Logger.logObject.getter();
      v133 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v132, v133))
      {
        v134 = swift_slowAlloc();
        v165 = v131._countAndFlagsBits;
        v135 = v134;
        v136 = swift_slowAlloc();
        v173[0] = v136;
        *v135 = 136315138;
        v137 = URL.path.getter();
        v139 = sub_100008F6C(v137, v138, v173);

        *(v135 + 4) = v139;
        _os_log_impl(&_mh_execute_header, v132, v133, "Using permanent storage at: %s", v135, 0xCu);
        sub_10000959C(v136);

        countAndFlagsBits = v165;
      }

      sub_10000959C(v176);
      sub_10000959C(v177);
      (*(v155 + 8))(v115, v156);
      goto LABEL_34;
    }

    if (countAndFlagsBits ^ 1 | object)
    {
      if (qword_10039D5C0 != -1)
      {
        swift_once();
      }

      v121 = sub_10000403C(v101, qword_1003A6CE8);
      (*(v169 + 16))(&v65[OBJC_IVAR____TtC14softposreaderd11Environment_storageURL], v121, v101);
      v65[OBJC_IVAR____TtC14softposreaderd11Environment_isStorageTemporary] = 0;
      v122 = Logger.logObject.getter();
      v123 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v122, v123))
      {
        v124 = swift_slowAlloc();
        *v124 = 0;
        _os_log_impl(&_mh_execute_header, v122, v123, "Using volatile storage", v124, 2u);
      }

      sub_10000959C(v176);
      sub_10000959C(v177);
      sub_1000DD2B0(v170, type metadata accessor for Settings);
      v114 = 2;
      goto LABEL_35;
    }

    sub_1000E0460(v166);
    v102 = v64;
    v103 = OBJC_IVAR____TtC14softposreaderd11Environment_storageURL;
    v162(&v65[OBJC_IVAR____TtC14softposreaderd11Environment_storageURL], v102, v101);
    v65[OBJC_IVAR____TtC14softposreaderd11Environment_isStorageTemporary] = 1;
    v104 = v169;
    (*(v169 + 16))(v102, &v65[v103], v101);
    countAndFlagsBits = URL.lastPathComponent.getter();
    object = v105;
    (*(v104 + 8))(v102, v101);

    v106 = Logger.logObject.getter();
    v107 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      v165 = countAndFlagsBits;
      v109 = v108;
      v110 = swift_slowAlloc();
      v173[0] = v110;
      *v109 = 136315138;
      v111 = URL.path.getter();
      v113 = sub_100008F6C(v111, v112, v173);

      *(v109 + 4) = v113;
      _os_log_impl(&_mh_execute_header, v106, v107, "Using temporary storage at: %s", v109, 0xCu);
      sub_10000959C(v110);

      countAndFlagsBits = v165;
    }

    sub_10000959C(v176);
    sub_10000959C(v177);
LABEL_22:
    sub_1000DD2B0(v170, type metadata accessor for Settings);
    v114 = 0;
LABEL_35:
    v140 = &v65[OBJC_IVAR____TtC14softposreaderd11Environment_storageSetting];
    *v140 = countAndFlagsBits;
    *(v140 + 8) = object;
    *(v140 + 16) = v114;
    return v65;
  }

  v161 = v56;
  v74 = objc_opt_self();

  v75 = [v74 defaultManager];
  v76 = [v75 temporaryDirectory];

  v77 = v157;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v165 = countAndFlagsBits;
  v173[0] = countAndFlagsBits;
  v173[1] = object;
  v78 = v159;
  v79 = v158;
  v80 = v160;
  (*(v159 + 104))(v158, enum case for URL.DirectoryHint.isDirectory(_:), v160);
  sub_10008AB88();
  URL.appending<A>(component:directoryHint:)();
  (*(v78 + 8))(v79, v80);
  v81 = v169;
  v82 = *(v169 + 8);
  v83 = v77;
  v84 = v167;
  v82(v83, v167);
  v85 = OBJC_IVAR____TtC14softposreaderd11Environment_storageURL;
  v86 = v64;
  v87 = v168;
  v162(&v168[OBJC_IVAR____TtC14softposreaderd11Environment_storageURL], v86, v84);
  v87[OBJC_IVAR____TtC14softposreaderd11Environment_isStorageTemporary] = 1;
  v88 = [v74 defaultManager];
  (*(v81 + 16))(v86, &v87[v85], v84);
  URL._bridgeToObjectiveC()(v89);
  v91 = v90;
  v82(v86, v84);
  v173[0] = 0;
  LOBYTE(v86) = [v88 createDirectoryAtURL:v91 withIntermediateDirectories:1 attributes:0 error:v173];

  v92 = v173[0];
  if (v86)
  {

    v93 = v92;
    v94 = Logger.logObject.getter();
    v95 = static os_log_type_t.info.getter();

    v65 = v87;
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v173[0] = v97;
      *v96 = 136315138;
      v98 = URL.path.getter();
      v100 = sub_100008F6C(v98, v99, v173);

      *(v96 + 4) = v100;
      _os_log_impl(&_mh_execute_header, v94, v95, "Using temporary storage at: %s", v96, 0xCu);
      sub_10000959C(v97);
    }

    sub_10000959C(v176);
    sub_10000959C(v177);
    countAndFlagsBits = v165;
    goto LABEL_22;
  }

  v142 = v173[0];
  _convertNSErrorToError(_:)();

  swift_willThrow();
  swift_unexpectedError();
  v82(&v87[v147], v84);
  v82(&v87[v85], v84);
  sub_1000E14B4(&v87[v146]);
  v143 = *(*v87 + 48);
  v144 = *(*v87 + 52);
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t sub_1000E2C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SystemInfo();
  v27[3] = v6;
  v27[4] = &off_100386330;
  v27[0] = a2;
  v25 = type metadata accessor for SecureElement();
  v26 = &off_1003849A0;
  v24[0] = a3;
  v7 = type metadata accessor for Environment();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v11 = sub_100022438(v27, v6);
  v12 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = v25;
  v17 = sub_100022438(v24, v25);
  v18 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = (v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = sub_1000E1864(a1, *v14, *v20, v10);
  sub_10000959C(v24);
  sub_10000959C(v27);
  return v22;
}

char *sub_1000E2E48(uint64_t a1)
{
  v3 = type metadata accessor for Settings();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E3134(a1 + OBJC_IVAR____TtC14softposreaderd5Depot_settings, v6, type metadata accessor for Settings);
  sub_1000E90C8(v22);
  if (v1)
  {

    sub_1000DD2B0(v6, type metadata accessor for Settings);
  }

  else
  {
    sub_1000E5844(v20);
    v7 = v23;
    v8 = sub_100022438(v22, v23);
    v9 = *(*(v7 - 8) + 64);
    __chkstk_darwin(v8);
    v11 = (v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11);
    v13 = v21;
    v14 = sub_100022438(v20, v21);
    v15 = *(*(v13 - 8) + 64);
    __chkstk_darwin(v14);
    v17 = (v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17);
    v6 = sub_1000E2C64(v6, *v11, *v17);

    sub_10000959C(v20);
    sub_10000959C(v22);
  }

  return v6;
}

uint64_t sub_1000E30EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000E3134(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t *Primer.shared.unsafeMutableAddressor()
{
  if (qword_10039D5E0 != -1)
  {
    swift_once();
  }

  return &static Primer.shared;
}

void sub_1000E31EC(uint64_t a1@<X8>)
{
  v3 = v1;
  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  v5 = OBJC_IVAR____TtC14softposreaderd5Depot_components;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (!*(v6 + 16))
  {
    goto LABEL_8;
  }

  v7 = *(v1 + v5);

  v8 = sub_1000F5A28(0xD00000000000001ALL, 0x800000010034CE70);
  if ((v9 & 1) == 0)
  {

LABEL_8:
    memset(v34, 0, sizeof(v34));
    v35 = -1;
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);
    v10 = 7002;
LABEL_9:
    v11 = 0xD00000000000001ALL;
    v12 = 0x800000010034CE70;
LABEL_10:
    sub_100020384(v10, v11, v12, 0);
    swift_willThrow();
    goto LABEL_11;
  }

  sub_1000DC884(*(v6 + 56) + 40 * v8, v34);
  sub_100065074(v34, &v31, qword_10039EEE0, &qword_1002C23D8);
  if (v33 > 1u)
  {
    if (v33 == 2)
    {
      sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

      v13 = v31;
      v14 = v32;
      v27 = 0u;
      v28 = 0u;
      LOBYTE(v29) = 3;
      swift_beginAccess();
      sub_10002D0A4(&v27, 0xD00000000000001ALL, 0x800000010034CE70);
      swift_endAccess();
      v36 = v14;
      v13(v30, v1);
      if (!v2)
      {
        v15 = sub_100004074(&qword_1003A2D98, &qword_1002C6E58);
        if (swift_dynamicCast())
        {
          sub_100029790(&v27, a1);
          *(&v28 + 1) = v15;
          *&v27 = swift_allocObject();
          sub_10000CCE4(a1, v27 + 16);
          LOBYTE(v29) = 0;
          swift_beginAccess();
          sub_10002D0A4(&v27, 0xD00000000000001ALL, 0x800000010034CE70);
          swift_endAccess();

          goto LABEL_11;
        }

        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        sub_10000BD44(&v27, &qword_1003A3118, &qword_1002C7170);
        *&v27 = 0xD00000000000001ALL;
        *(&v27 + 1) = 0x800000010034CE70;
        v25._countAndFlagsBits = 0x646E65706564203ALL;
        v25._object = 0xEB00000000746E65;
        String.append(_:)(v25);
        sub_100020384(7004, v27, *(&v27 + 1), 0);
        swift_willThrow();
      }

      *&v27 = v13;
      *(&v27 + 1) = v36;
      LOBYTE(v29) = 2;
      swift_beginAccess();

      sub_10002D0A4(&v27, 0xD00000000000001ALL, 0x800000010034CE70);
      swift_endAccess();
      swift_willThrow();

      goto LABEL_11;
    }

    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    v10 = 7003;
    goto LABEL_9;
  }

  if (v33)
  {
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    v31(v30, v16);
    if (!v2)
    {
      v17 = sub_100004074(&qword_1003A2D98, &qword_1002C6E58);
      if (swift_dynamicCast())
      {
        sub_100029790(&v27, a1);
        *(&v28 + 1) = v17;
        *&v27 = swift_allocObject();
        sub_10000CCE4(a1, v27 + 16);
        LOBYTE(v29) = 0;
        swift_beginAccess();
        sub_10002D0A4(&v27, 0xD00000000000001ALL, 0x800000010034CE70);
        swift_endAccess();
      }

      else
      {
        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        sub_10000BD44(&v27, &qword_1003A3118, &qword_1002C7170);
        *&v27 = 0xD00000000000001ALL;
        *(&v27 + 1) = 0x800000010034CE70;
        v26._countAndFlagsBits = 0x657065646E69203ALL;
        v26._object = 0xED0000746E65646ELL;
        String.append(_:)(v26);
        sub_100020384(7004, v27, *(&v27 + 1), 0);
        swift_willThrow();
      }
    }

    goto LABEL_11;
  }

  sub_100004074(&qword_1003A2D98, &qword_1002C6E58);
  if (swift_dynamicCast())
  {
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    sub_100029790(&v27, a1);
    sub_10000959C(&v31);
LABEL_11:
    swift_beginAccess();
    os_unfair_recursive_lock_unlock();
    swift_endAccess();
    return;
  }

  sub_10000959C(&v31);
  v31 = 0xD00000000000001ALL;
  v32 = 0x800000010034CE70;
  v18._countAndFlagsBits = 8250;
  v18._object = 0xE200000000000000;
  String.append(_:)(v18);
  v19 = *(v1 + v5);
  if (*(v19 + 16))
  {
    v20 = *(v3 + v5);

    v21 = sub_1000F5A28(0xD00000000000001ALL, 0x800000010034CE70);
    if (v22)
    {
      v23 = v21;
      sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

      sub_1000DC884(*(v19 + 56) + 40 * v23, &v27);

      v24._countAndFlagsBits = sub_1000DA088();
      String.append(_:)(v24);

      sub_1000F3008(&v27);
      v11 = v31;
      v12 = v32;
      v10 = 7004;
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000E3850(uint64_t a1@<X8>)
{
  v3 = v1;
  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  v5 = OBJC_IVAR____TtC14softposreaderd5Depot_components;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (!*(v6 + 16))
  {
    goto LABEL_8;
  }

  v7 = *(v1 + v5);

  v8 = sub_1000F5A28(0xD000000000000013, 0x800000010034CDA0);
  if ((v9 & 1) == 0)
  {

LABEL_8:
    memset(v34, 0, sizeof(v34));
    v35 = -1;
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);
    v10 = 7002;
LABEL_9:
    v11 = 0xD000000000000013;
    v12 = 0x800000010034CDA0;
LABEL_10:
    sub_100020384(v10, v11, v12, 0);
    swift_willThrow();
    goto LABEL_11;
  }

  sub_1000DC884(*(v6 + 56) + 40 * v8, v34);
  sub_100065074(v34, &v31, qword_10039EEE0, &qword_1002C23D8);
  if (v33 > 1u)
  {
    if (v33 == 2)
    {
      sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

      v13 = v31;
      v14 = v32;
      v27 = 0u;
      v28 = 0u;
      LOBYTE(v29) = 3;
      swift_beginAccess();
      sub_10002D0A4(&v27, 0xD000000000000013, 0x800000010034CDA0);
      swift_endAccess();
      v36 = v14;
      v13(v30, v1);
      if (!v2)
      {
        v15 = sub_100004074(&qword_1003A2DC8, &qword_1002C6E90);
        if (swift_dynamicCast())
        {
          sub_100029790(&v27, a1);
          *(&v28 + 1) = v15;
          *&v27 = swift_allocObject();
          sub_10000CCE4(a1, v27 + 16);
          LOBYTE(v29) = 0;
          swift_beginAccess();
          sub_10002D0A4(&v27, 0xD000000000000013, 0x800000010034CDA0);
          swift_endAccess();

          goto LABEL_11;
        }

        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        sub_10000BD44(&v27, &qword_1003A3170, qword_1002C71C8);
        *&v27 = 0xD000000000000013;
        *(&v27 + 1) = 0x800000010034CDA0;
        v25._countAndFlagsBits = 0x646E65706564203ALL;
        v25._object = 0xEB00000000746E65;
        String.append(_:)(v25);
        sub_100020384(7004, v27, *(&v27 + 1), 0);
        swift_willThrow();
      }

      *&v27 = v13;
      *(&v27 + 1) = v36;
      LOBYTE(v29) = 2;
      swift_beginAccess();

      sub_10002D0A4(&v27, 0xD000000000000013, 0x800000010034CDA0);
      swift_endAccess();
      swift_willThrow();

      goto LABEL_11;
    }

    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    v10 = 7003;
    goto LABEL_9;
  }

  if (v33)
  {
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    v31(v30, v16);
    if (!v2)
    {
      v17 = sub_100004074(&qword_1003A2DC8, &qword_1002C6E90);
      if (swift_dynamicCast())
      {
        sub_100029790(&v27, a1);
        *(&v28 + 1) = v17;
        *&v27 = swift_allocObject();
        sub_10000CCE4(a1, v27 + 16);
        LOBYTE(v29) = 0;
        swift_beginAccess();
        sub_10002D0A4(&v27, 0xD000000000000013, 0x800000010034CDA0);
        swift_endAccess();
      }

      else
      {
        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        sub_10000BD44(&v27, &qword_1003A3170, qword_1002C71C8);
        *&v27 = 0xD000000000000013;
        *(&v27 + 1) = 0x800000010034CDA0;
        v26._countAndFlagsBits = 0x657065646E69203ALL;
        v26._object = 0xED0000746E65646ELL;
        String.append(_:)(v26);
        sub_100020384(7004, v27, *(&v27 + 1), 0);
        swift_willThrow();
      }
    }

    goto LABEL_11;
  }

  sub_100004074(&qword_1003A2DC8, &qword_1002C6E90);
  if (swift_dynamicCast())
  {
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    sub_100029790(&v27, a1);
    sub_10000959C(&v31);
LABEL_11:
    swift_beginAccess();
    os_unfair_recursive_lock_unlock();
    swift_endAccess();
    return;
  }

  sub_10000959C(&v31);
  v31 = 0xD000000000000013;
  v32 = 0x800000010034CDA0;
  v18._countAndFlagsBits = 8250;
  v18._object = 0xE200000000000000;
  String.append(_:)(v18);
  v19 = *(v1 + v5);
  if (*(v19 + 16))
  {
    v20 = *(v3 + v5);

    v21 = sub_1000F5A28(0xD000000000000013, 0x800000010034CDA0);
    if (v22)
    {
      v23 = v21;
      sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

      sub_1000DC884(*(v19 + 56) + 40 * v23, &v27);

      v24._countAndFlagsBits = sub_1000DA088();
      String.append(_:)(v24);

      sub_1000F3008(&v27);
      v11 = v31;
      v12 = v32;
      v10 = 7004;
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000E3EB4(uint64_t a1@<X8>)
{
  v3 = v1;
  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  v5 = OBJC_IVAR____TtC14softposreaderd5Depot_components;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (!*(v6 + 16))
  {
    goto LABEL_8;
  }

  v7 = *(v1 + v5);

  v8 = sub_1000F5A28(0xD000000000000010, 0x800000010034CC10);
  if ((v9 & 1) == 0)
  {

LABEL_8:
    memset(v34, 0, sizeof(v34));
    v35 = -1;
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);
    v10 = 7002;
LABEL_9:
    v11 = 0xD000000000000010;
    v12 = 0x800000010034CC10;
LABEL_10:
    sub_100020384(v10, v11, v12, 0);
    swift_willThrow();
    goto LABEL_11;
  }

  sub_1000DC884(*(v6 + 56) + 40 * v8, v34);
  sub_100065074(v34, &v31, qword_10039EEE0, &qword_1002C23D8);
  if (v33 > 1u)
  {
    if (v33 == 2)
    {
      sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

      v13 = v31;
      v14 = v32;
      v27 = 0u;
      v28 = 0u;
      LOBYTE(v29) = 3;
      swift_beginAccess();
      sub_10002D0A4(&v27, 0xD000000000000010, 0x800000010034CC10);
      swift_endAccess();
      v36 = v14;
      v13(v30, v1);
      if (!v2)
      {
        v15 = sub_100004074(&qword_1003A2E18, &qword_1002C6EE0);
        if (swift_dynamicCast())
        {
          sub_100029790(&v27, a1);
          *(&v28 + 1) = v15;
          *&v27 = swift_allocObject();
          sub_10000CCE4(a1, v27 + 16);
          LOBYTE(v29) = 0;
          swift_beginAccess();
          sub_10002D0A4(&v27, 0xD000000000000010, 0x800000010034CC10);
          swift_endAccess();

          goto LABEL_11;
        }

        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        sub_10000BD44(&v27, &qword_1003A3168, &qword_1002C71C0);
        *&v27 = 0xD000000000000010;
        *(&v27 + 1) = 0x800000010034CC10;
        v25._countAndFlagsBits = 0x646E65706564203ALL;
        v25._object = 0xEB00000000746E65;
        String.append(_:)(v25);
        sub_100020384(7004, v27, *(&v27 + 1), 0);
        swift_willThrow();
      }

      *&v27 = v13;
      *(&v27 + 1) = v36;
      LOBYTE(v29) = 2;
      swift_beginAccess();

      sub_10002D0A4(&v27, 0xD000000000000010, 0x800000010034CC10);
      swift_endAccess();
      swift_willThrow();

      goto LABEL_11;
    }

    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    v10 = 7003;
    goto LABEL_9;
  }

  if (v33)
  {
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    v31(v30, v16);
    if (!v2)
    {
      v17 = sub_100004074(&qword_1003A2E18, &qword_1002C6EE0);
      if (swift_dynamicCast())
      {
        sub_100029790(&v27, a1);
        *(&v28 + 1) = v17;
        *&v27 = swift_allocObject();
        sub_10000CCE4(a1, v27 + 16);
        LOBYTE(v29) = 0;
        swift_beginAccess();
        sub_10002D0A4(&v27, 0xD000000000000010, 0x800000010034CC10);
        swift_endAccess();
      }

      else
      {
        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        sub_10000BD44(&v27, &qword_1003A3168, &qword_1002C71C0);
        *&v27 = 0xD000000000000010;
        *(&v27 + 1) = 0x800000010034CC10;
        v26._countAndFlagsBits = 0x657065646E69203ALL;
        v26._object = 0xED0000746E65646ELL;
        String.append(_:)(v26);
        sub_100020384(7004, v27, *(&v27 + 1), 0);
        swift_willThrow();
      }
    }

    goto LABEL_11;
  }

  sub_100004074(&qword_1003A2E18, &qword_1002C6EE0);
  if (swift_dynamicCast())
  {
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    sub_100029790(&v27, a1);
    sub_10000959C(&v31);
LABEL_11:
    swift_beginAccess();
    os_unfair_recursive_lock_unlock();
    swift_endAccess();
    return;
  }

  sub_10000959C(&v31);
  v31 = 0xD000000000000010;
  v32 = 0x800000010034CC10;
  v18._countAndFlagsBits = 8250;
  v18._object = 0xE200000000000000;
  String.append(_:)(v18);
  v19 = *(v1 + v5);
  if (*(v19 + 16))
  {
    v20 = *(v3 + v5);

    v21 = sub_1000F5A28(0xD000000000000010, 0x800000010034CC10);
    if (v22)
    {
      v23 = v21;
      sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

      sub_1000DC884(*(v19 + 56) + 40 * v23, &v27);

      v24._countAndFlagsBits = sub_1000DA088();
      String.append(_:)(v24);

      sub_1000F3008(&v27);
      v11 = v31;
      v12 = v32;
      v10 = 7004;
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000E4518(uint64_t a1@<X8>)
{
  v3 = v1;
  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  v5 = OBJC_IVAR____TtC14softposreaderd5Depot_components;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (!*(v6 + 16))
  {
    goto LABEL_8;
  }

  v7 = *(v1 + v5);

  v8 = sub_1000F5A28(0xD000000000000010, 0x800000010034CD00);
  if ((v9 & 1) == 0)
  {

LABEL_8:
    memset(v34, 0, sizeof(v34));
    v35 = -1;
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);
    v10 = 7002;
LABEL_9:
    v11 = 0xD000000000000010;
    v12 = 0x800000010034CD00;
LABEL_10:
    sub_100020384(v10, v11, v12, 0);
    swift_willThrow();
    goto LABEL_11;
  }

  sub_1000DC884(*(v6 + 56) + 40 * v8, v34);
  sub_100065074(v34, &v31, qword_10039EEE0, &qword_1002C23D8);
  if (v33 > 1u)
  {
    if (v33 == 2)
    {
      sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

      v13 = v31;
      v14 = v32;
      v27 = 0u;
      v28 = 0u;
      LOBYTE(v29) = 3;
      swift_beginAccess();
      sub_10002D0A4(&v27, 0xD000000000000010, 0x800000010034CD00);
      swift_endAccess();
      v36 = v14;
      v13(v30, v1);
      if (!v2)
      {
        v15 = sub_100004074(&qword_1003A2DF0, &qword_1002C6EB8);
        if (swift_dynamicCast())
        {
          sub_100029790(&v27, a1);
          *(&v28 + 1) = v15;
          *&v27 = swift_allocObject();
          sub_10000CCE4(a1, v27 + 16);
          LOBYTE(v29) = 0;
          swift_beginAccess();
          sub_10002D0A4(&v27, 0xD000000000000010, 0x800000010034CD00);
          swift_endAccess();

          goto LABEL_11;
        }

        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        sub_10000BD44(&v27, &qword_1003A30F0, &qword_1002C7138);
        *&v27 = 0xD000000000000010;
        *(&v27 + 1) = 0x800000010034CD00;
        v25._countAndFlagsBits = 0x646E65706564203ALL;
        v25._object = 0xEB00000000746E65;
        String.append(_:)(v25);
        sub_100020384(7004, v27, *(&v27 + 1), 0);
        swift_willThrow();
      }

      *&v27 = v13;
      *(&v27 + 1) = v36;
      LOBYTE(v29) = 2;
      swift_beginAccess();

      sub_10002D0A4(&v27, 0xD000000000000010, 0x800000010034CD00);
      swift_endAccess();
      swift_willThrow();

      goto LABEL_11;
    }

    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    v10 = 7003;
    goto LABEL_9;
  }

  if (v33)
  {
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    v31(v30, v16);
    if (!v2)
    {
      v17 = sub_100004074(&qword_1003A2DF0, &qword_1002C6EB8);
      if (swift_dynamicCast())
      {
        sub_100029790(&v27, a1);
        *(&v28 + 1) = v17;
        *&v27 = swift_allocObject();
        sub_10000CCE4(a1, v27 + 16);
        LOBYTE(v29) = 0;
        swift_beginAccess();
        sub_10002D0A4(&v27, 0xD000000000000010, 0x800000010034CD00);
        swift_endAccess();
      }

      else
      {
        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        sub_10000BD44(&v27, &qword_1003A30F0, &qword_1002C7138);
        *&v27 = 0xD000000000000010;
        *(&v27 + 1) = 0x800000010034CD00;
        v26._countAndFlagsBits = 0x657065646E69203ALL;
        v26._object = 0xED0000746E65646ELL;
        String.append(_:)(v26);
        sub_100020384(7004, v27, *(&v27 + 1), 0);
        swift_willThrow();
      }
    }

    goto LABEL_11;
  }

  sub_100004074(&qword_1003A2DF0, &qword_1002C6EB8);
  if (swift_dynamicCast())
  {
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    sub_100029790(&v27, a1);
    sub_10000959C(&v31);
LABEL_11:
    swift_beginAccess();
    os_unfair_recursive_lock_unlock();
    swift_endAccess();
    return;
  }

  sub_10000959C(&v31);
  v31 = 0xD000000000000010;
  v32 = 0x800000010034CD00;
  v18._countAndFlagsBits = 8250;
  v18._object = 0xE200000000000000;
  String.append(_:)(v18);
  v19 = *(v1 + v5);
  if (*(v19 + 16))
  {
    v20 = *(v3 + v5);

    v21 = sub_1000F5A28(0xD000000000000010, 0x800000010034CD00);
    if (v22)
    {
      v23 = v21;
      sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

      sub_1000DC884(*(v19 + 56) + 40 * v23, &v27);

      v24._countAndFlagsBits = sub_1000DA088();
      String.append(_:)(v24);

      sub_1000F3008(&v27);
      v11 = v31;
      v12 = v32;
      v10 = 7004;
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000E4B7C(uint64_t a1@<X8>)
{
  v3 = v1;
  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  v5 = OBJC_IVAR____TtC14softposreaderd5Depot_components;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (!*(v6 + 16))
  {
    goto LABEL_8;
  }

  v7 = *(v1 + v5);

  v8 = sub_1000F5A28(0xD000000000000026, 0x800000010034CE00);
  if ((v9 & 1) == 0)
  {

LABEL_8:
    memset(v34, 0, sizeof(v34));
    v35 = -1;
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);
    v10 = 7002;
LABEL_9:
    v11 = 0xD000000000000026;
    v12 = 0x800000010034CE00;
LABEL_10:
    sub_100020384(v10, v11, v12, 0);
    swift_willThrow();
    goto LABEL_11;
  }

  sub_1000DC884(*(v6 + 56) + 40 * v8, v34);
  sub_100065074(v34, &v31, qword_10039EEE0, &qword_1002C23D8);
  if (v33 > 1u)
  {
    if (v33 == 2)
    {
      sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

      v13 = v31;
      v14 = v32;
      v27 = 0u;
      v28 = 0u;
      LOBYTE(v29) = 3;
      swift_beginAccess();
      sub_10002D0A4(&v27, 0xD000000000000026, 0x800000010034CE00);
      swift_endAccess();
      v36 = v14;
      v13(v30, v1);
      if (!v2)
      {
        v15 = sub_100004074(&qword_1003A2DB0, &unk_1002C6E70);
        if (swift_dynamicCast())
        {
          sub_100029790(&v27, a1);
          *(&v28 + 1) = v15;
          *&v27 = swift_allocObject();
          sub_10000CCE4(a1, v27 + 16);
          LOBYTE(v29) = 0;
          swift_beginAccess();
          sub_10002D0A4(&v27, 0xD000000000000026, 0x800000010034CE00);
          swift_endAccess();

          goto LABEL_11;
        }

        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        sub_10000BD44(&v27, &qword_1003A3150, &qword_1002C71A8);
        *&v27 = 0xD000000000000026;
        *(&v27 + 1) = 0x800000010034CE00;
        v25._countAndFlagsBits = 0x646E65706564203ALL;
        v25._object = 0xEB00000000746E65;
        String.append(_:)(v25);
        sub_100020384(7004, v27, *(&v27 + 1), 0);
        swift_willThrow();
      }

      *&v27 = v13;
      *(&v27 + 1) = v36;
      LOBYTE(v29) = 2;
      swift_beginAccess();

      sub_10002D0A4(&v27, 0xD000000000000026, 0x800000010034CE00);
      swift_endAccess();
      swift_willThrow();

      goto LABEL_11;
    }

    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    v10 = 7003;
    goto LABEL_9;
  }

  if (v33)
  {
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    v31(v30, v16);
    if (!v2)
    {
      v17 = sub_100004074(&qword_1003A2DB0, &unk_1002C6E70);
      if (swift_dynamicCast())
      {
        sub_100029790(&v27, a1);
        *(&v28 + 1) = v17;
        *&v27 = swift_allocObject();
        sub_10000CCE4(a1, v27 + 16);
        LOBYTE(v29) = 0;
        swift_beginAccess();
        sub_10002D0A4(&v27, 0xD000000000000026, 0x800000010034CE00);
        swift_endAccess();
      }

      else
      {
        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        sub_10000BD44(&v27, &qword_1003A3150, &qword_1002C71A8);
        *&v27 = 0xD000000000000026;
        *(&v27 + 1) = 0x800000010034CE00;
        v26._countAndFlagsBits = 0x657065646E69203ALL;
        v26._object = 0xED0000746E65646ELL;
        String.append(_:)(v26);
        sub_100020384(7004, v27, *(&v27 + 1), 0);
        swift_willThrow();
      }
    }

    goto LABEL_11;
  }

  sub_100004074(&qword_1003A2DB0, &unk_1002C6E70);
  if (swift_dynamicCast())
  {
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    sub_100029790(&v27, a1);
    sub_10000959C(&v31);
LABEL_11:
    swift_beginAccess();
    os_unfair_recursive_lock_unlock();
    swift_endAccess();
    return;
  }

  sub_10000959C(&v31);
  v31 = 0xD000000000000026;
  v32 = 0x800000010034CE00;
  v18._countAndFlagsBits = 8250;
  v18._object = 0xE200000000000000;
  String.append(_:)(v18);
  v19 = *(v1 + v5);
  if (*(v19 + 16))
  {
    v20 = *(v3 + v5);

    v21 = sub_1000F5A28(0xD000000000000026, 0x800000010034CE00);
    if (v22)
    {
      v23 = v21;
      sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

      sub_1000DC884(*(v19 + 56) + 40 * v23, &v27);

      v24._countAndFlagsBits = sub_1000DA088();
      String.append(_:)(v24);

      sub_1000F3008(&v27);
      v11 = v31;
      v12 = v32;
      v10 = 7004;
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000E51E0(uint64_t a1@<X8>)
{
  v3 = v1;
  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  v5 = OBJC_IVAR____TtC14softposreaderd5Depot_components;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (!*(v6 + 16))
  {
    goto LABEL_8;
  }

  v7 = *(v1 + v5);

  v8 = sub_1000F5A28(0xD00000000000001BLL, 0x800000010034CDE0);
  if ((v9 & 1) == 0)
  {

LABEL_8:
    memset(v34, 0, sizeof(v34));
    v35 = -1;
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);
    v10 = 7002;
LABEL_9:
    v11 = 0xD00000000000001BLL;
    v12 = 0x800000010034CDE0;
LABEL_10:
    sub_100020384(v10, v11, v12, 0);
    swift_willThrow();
    goto LABEL_11;
  }

  sub_1000DC884(*(v6 + 56) + 40 * v8, v34);
  sub_100065074(v34, &v31, qword_10039EEE0, &qword_1002C23D8);
  if (v33 > 1u)
  {
    if (v33 == 2)
    {
      sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

      v13 = v31;
      v14 = v32;
      v27 = 0u;
      v28 = 0u;
      LOBYTE(v29) = 3;
      swift_beginAccess();
      sub_10002D0A4(&v27, 0xD00000000000001BLL, 0x800000010034CDE0);
      swift_endAccess();
      v36 = v14;
      v13(v30, v1);
      if (!v2)
      {
        v15 = sub_100004074(&qword_1003A2DB8, &qword_1002C6E80);
        if (swift_dynamicCast())
        {
          sub_100029790(&v27, a1);
          *(&v28 + 1) = v15;
          *&v27 = swift_allocObject();
          sub_10000CCE4(a1, v27 + 16);
          LOBYTE(v29) = 0;
          swift_beginAccess();
          sub_10002D0A4(&v27, 0xD00000000000001BLL, 0x800000010034CDE0);
          swift_endAccess();

          goto LABEL_11;
        }

        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        sub_10000BD44(&v27, &qword_1003A3148, &qword_1002C71A0);
        *&v27 = 0xD00000000000001BLL;
        *(&v27 + 1) = 0x800000010034CDE0;
        v25._countAndFlagsBits = 0x646E65706564203ALL;
        v25._object = 0xEB00000000746E65;
        String.append(_:)(v25);
        sub_100020384(7004, v27, *(&v27 + 1), 0);
        swift_willThrow();
      }

      *&v27 = v13;
      *(&v27 + 1) = v36;
      LOBYTE(v29) = 2;
      swift_beginAccess();

      sub_10002D0A4(&v27, 0xD00000000000001BLL, 0x800000010034CDE0);
      swift_endAccess();
      swift_willThrow();

      goto LABEL_11;
    }

    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    v10 = 7003;
    goto LABEL_9;
  }

  if (v33)
  {
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    v31(v30, v16);
    if (!v2)
    {
      v17 = sub_100004074(&qword_1003A2DB8, &qword_1002C6E80);
      if (swift_dynamicCast())
      {
        sub_100029790(&v27, a1);
        *(&v28 + 1) = v17;
        *&v27 = swift_allocObject();
        sub_10000CCE4(a1, v27 + 16);
        LOBYTE(v29) = 0;
        swift_beginAccess();
        sub_10002D0A4(&v27, 0xD00000000000001BLL, 0x800000010034CDE0);
        swift_endAccess();
      }

      else
      {
        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        sub_10000BD44(&v27, &qword_1003A3148, &qword_1002C71A0);
        *&v27 = 0xD00000000000001BLL;
        *(&v27 + 1) = 0x800000010034CDE0;
        v26._countAndFlagsBits = 0x657065646E69203ALL;
        v26._object = 0xED0000746E65646ELL;
        String.append(_:)(v26);
        sub_100020384(7004, v27, *(&v27 + 1), 0);
        swift_willThrow();
      }
    }

    goto LABEL_11;
  }

  sub_100004074(&qword_1003A2DB8, &qword_1002C6E80);
  if (swift_dynamicCast())
  {
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    sub_100029790(&v27, a1);
    sub_10000959C(&v31);
LABEL_11:
    swift_beginAccess();
    os_unfair_recursive_lock_unlock();
    swift_endAccess();
    return;
  }

  sub_10000959C(&v31);
  v31 = 0xD00000000000001BLL;
  v32 = 0x800000010034CDE0;
  v18._countAndFlagsBits = 8250;
  v18._object = 0xE200000000000000;
  String.append(_:)(v18);
  v19 = *(v1 + v5);
  if (*(v19 + 16))
  {
    v20 = *(v3 + v5);

    v21 = sub_1000F5A28(0xD00000000000001BLL, 0x800000010034CDE0);
    if (v22)
    {
      v23 = v21;
      sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

      sub_1000DC884(*(v19 + 56) + 40 * v23, &v27);

      v24._countAndFlagsBits = sub_1000DA088();
      String.append(_:)(v24);

      sub_1000F3008(&v27);
      v11 = v31;
      v12 = v32;
      v10 = 7004;
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000E5844(uint64_t a1@<X8>)
{
  v3 = v1;
  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  v5 = OBJC_IVAR____TtC14softposreaderd5Depot_components;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (!*(v6 + 16))
  {
    goto LABEL_8;
  }

  v7 = *(v1 + v5);

  v8 = sub_1000F5A28(0xD000000000000015, 0x800000010034CDC0);
  if ((v9 & 1) == 0)
  {

LABEL_8:
    memset(v34, 0, sizeof(v34));
    v35 = -1;
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);
    v10 = 7002;
LABEL_9:
    v11 = 0xD000000000000015;
    v12 = 0x800000010034CDC0;
LABEL_10:
    sub_100020384(v10, v11, v12, 0);
    swift_willThrow();
    goto LABEL_11;
  }

  sub_1000DC884(*(v6 + 56) + 40 * v8, v34);
  sub_100065074(v34, &v31, qword_10039EEE0, &qword_1002C23D8);
  if (v33 > 1u)
  {
    if (v33 == 2)
    {
      sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

      v13 = v31;
      v14 = v32;
      v27 = 0u;
      v28 = 0u;
      LOBYTE(v29) = 3;
      swift_beginAccess();
      sub_10002D0A4(&v27, 0xD000000000000015, 0x800000010034CDC0);
      swift_endAccess();
      v36 = v14;
      v13(v30, v1);
      if (!v2)
      {
        v15 = sub_100004074(&qword_1003A2DC0, &qword_1002C6E88);
        if (swift_dynamicCast())
        {
          sub_100029790(&v27, a1);
          *(&v28 + 1) = v15;
          *&v27 = swift_allocObject();
          sub_10000CCE4(a1, v27 + 16);
          LOBYTE(v29) = 0;
          swift_beginAccess();
          sub_10002D0A4(&v27, 0xD000000000000015, 0x800000010034CDC0);
          swift_endAccess();

          goto LABEL_11;
        }

        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        sub_10000BD44(&v27, &qword_1003A30B0, &qword_1002C70F8);
        *&v27 = 0xD000000000000015;
        *(&v27 + 1) = 0x800000010034CDC0;
        v25._countAndFlagsBits = 0x646E65706564203ALL;
        v25._object = 0xEB00000000746E65;
        String.append(_:)(v25);
        sub_100020384(7004, v27, *(&v27 + 1), 0);
        swift_willThrow();
      }

      *&v27 = v13;
      *(&v27 + 1) = v36;
      LOBYTE(v29) = 2;
      swift_beginAccess();

      sub_10002D0A4(&v27, 0xD000000000000015, 0x800000010034CDC0);
      swift_endAccess();
      swift_willThrow();

      goto LABEL_11;
    }

    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    v10 = 7003;
    goto LABEL_9;
  }

  if (v33)
  {
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    v31(v30, v16);
    if (!v2)
    {
      v17 = sub_100004074(&qword_1003A2DC0, &qword_1002C6E88);
      if (swift_dynamicCast())
      {
        sub_100029790(&v27, a1);
        *(&v28 + 1) = v17;
        *&v27 = swift_allocObject();
        sub_10000CCE4(a1, v27 + 16);
        LOBYTE(v29) = 0;
        swift_beginAccess();
        sub_10002D0A4(&v27, 0xD000000000000015, 0x800000010034CDC0);
        swift_endAccess();
      }

      else
      {
        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        sub_10000BD44(&v27, &qword_1003A30B0, &qword_1002C70F8);
        *&v27 = 0xD000000000000015;
        *(&v27 + 1) = 0x800000010034CDC0;
        v26._countAndFlagsBits = 0x657065646E69203ALL;
        v26._object = 0xED0000746E65646ELL;
        String.append(_:)(v26);
        sub_100020384(7004, v27, *(&v27 + 1), 0);
        swift_willThrow();
      }
    }

    goto LABEL_11;
  }

  sub_100004074(&qword_1003A2DC0, &qword_1002C6E88);
  if (swift_dynamicCast())
  {
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    sub_100029790(&v27, a1);
    sub_10000959C(&v31);
LABEL_11:
    swift_beginAccess();
    os_unfair_recursive_lock_unlock();
    swift_endAccess();
    return;
  }

  sub_10000959C(&v31);
  v31 = 0xD000000000000015;
  v32 = 0x800000010034CDC0;
  v18._countAndFlagsBits = 8250;
  v18._object = 0xE200000000000000;
  String.append(_:)(v18);
  v19 = *(v1 + v5);
  if (*(v19 + 16))
  {
    v20 = *(v3 + v5);

    v21 = sub_1000F5A28(0xD000000000000015, 0x800000010034CDC0);
    if (v22)
    {
      v23 = v21;
      sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

      sub_1000DC884(*(v19 + 56) + 40 * v23, &v27);

      v24._countAndFlagsBits = sub_1000DA088();
      String.append(_:)(v24);

      sub_1000F3008(&v27);
      v11 = v31;
      v12 = v32;
      v10 = 7004;
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000E5EA8(uint64_t a1@<X8>)
{
  v3 = v1;
  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  v5 = OBJC_IVAR____TtC14softposreaderd5Depot_components;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (!*(v6 + 16))
  {
    goto LABEL_8;
  }

  v7 = *(v1 + v5);

  v8 = sub_1000F5A28(0xD00000000000001ALL, 0x800000010034CB90);
  if ((v9 & 1) == 0)
  {

LABEL_8:
    memset(v34, 0, sizeof(v34));
    v35 = -1;
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);
    v10 = 7002;
LABEL_9:
    v11 = 0xD00000000000001ALL;
    v12 = 0x800000010034CB90;
LABEL_10:
    sub_100020384(v10, v11, v12, 0);
    swift_willThrow();
    goto LABEL_11;
  }

  sub_1000DC884(*(v6 + 56) + 40 * v8, v34);
  sub_100065074(v34, &v31, qword_10039EEE0, &qword_1002C23D8);
  if (v33 > 1u)
  {
    if (v33 == 2)
    {
      sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

      v13 = v31;
      v14 = v32;
      v27 = 0u;
      v28 = 0u;
      LOBYTE(v29) = 3;
      swift_beginAccess();
      sub_10002D0A4(&v27, 0xD00000000000001ALL, 0x800000010034CB90);
      swift_endAccess();
      v36 = v14;
      v13(v30, v1);
      if (!v2)
      {
        v15 = sub_100004074(&qword_1003A2D48, &qword_1002C6E08);
        if (swift_dynamicCast())
        {
          sub_100029790(&v27, a1);
          *(&v28 + 1) = v15;
          *&v27 = swift_allocObject();
          sub_10000CCE4(a1, v27 + 16);
          LOBYTE(v29) = 0;
          swift_beginAccess();
          sub_10002D0A4(&v27, 0xD00000000000001ALL, 0x800000010034CB90);
          swift_endAccess();

          goto LABEL_11;
        }

        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        sub_10000BD44(&v27, &qword_1003A3128, &qword_1002C7180);
        *&v27 = 0xD00000000000001ALL;
        *(&v27 + 1) = 0x800000010034CB90;
        v25._countAndFlagsBits = 0x646E65706564203ALL;
        v25._object = 0xEB00000000746E65;
        String.append(_:)(v25);
        sub_100020384(7004, v27, *(&v27 + 1), 0);
        swift_willThrow();
      }

      *&v27 = v13;
      *(&v27 + 1) = v36;
      LOBYTE(v29) = 2;
      swift_beginAccess();

      sub_10002D0A4(&v27, 0xD00000000000001ALL, 0x800000010034CB90);
      swift_endAccess();
      swift_willThrow();

      goto LABEL_11;
    }

    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    v10 = 7003;
    goto LABEL_9;
  }

  if (v33)
  {
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    v31(v30, v16);
    if (!v2)
    {
      v17 = sub_100004074(&qword_1003A2D48, &qword_1002C6E08);
      if (swift_dynamicCast())
      {
        sub_100029790(&v27, a1);
        *(&v28 + 1) = v17;
        *&v27 = swift_allocObject();
        sub_10000CCE4(a1, v27 + 16);
        LOBYTE(v29) = 0;
        swift_beginAccess();
        sub_10002D0A4(&v27, 0xD00000000000001ALL, 0x800000010034CB90);
        swift_endAccess();
      }

      else
      {
        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        sub_10000BD44(&v27, &qword_1003A3128, &qword_1002C7180);
        *&v27 = 0xD00000000000001ALL;
        *(&v27 + 1) = 0x800000010034CB90;
        v26._countAndFlagsBits = 0x657065646E69203ALL;
        v26._object = 0xED0000746E65646ELL;
        String.append(_:)(v26);
        sub_100020384(7004, v27, *(&v27 + 1), 0);
        swift_willThrow();
      }
    }

    goto LABEL_11;
  }

  sub_100004074(&qword_1003A2D48, &qword_1002C6E08);
  if (swift_dynamicCast())
  {
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    sub_100029790(&v27, a1);
    sub_10000959C(&v31);
LABEL_11:
    swift_beginAccess();
    os_unfair_recursive_lock_unlock();
    swift_endAccess();
    return;
  }

  sub_10000959C(&v31);
  v31 = 0xD00000000000001ALL;
  v32 = 0x800000010034CB90;
  v18._countAndFlagsBits = 8250;
  v18._object = 0xE200000000000000;
  String.append(_:)(v18);
  v19 = *(v1 + v5);
  if (*(v19 + 16))
  {
    v20 = *(v3 + v5);

    v21 = sub_1000F5A28(0xD00000000000001ALL, 0x800000010034CB90);
    if (v22)
    {
      v23 = v21;
      sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

      sub_1000DC884(*(v19 + 56) + 40 * v23, &v27);

      v24._countAndFlagsBits = sub_1000DA088();
      String.append(_:)(v24);

      sub_1000F3008(&v27);
      v11 = v31;
      v12 = v32;
      v10 = 7004;
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000E650C(uint64_t a1@<X8>)
{
  v3 = v1;
  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  v5 = OBJC_IVAR____TtC14softposreaderd5Depot_components;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (!*(v6 + 16))
  {
    goto LABEL_8;
  }

  v7 = *(v1 + v5);

  v8 = sub_1000F5A28(0xD000000000000022, 0x800000010034CCD0);
  if ((v9 & 1) == 0)
  {

LABEL_8:
    memset(v34, 0, sizeof(v34));
    v35 = -1;
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);
    v10 = 7002;
LABEL_9:
    v11 = 0xD000000000000022;
    v12 = 0x800000010034CCD0;
LABEL_10:
    sub_100020384(v10, v11, v12, 0);
    swift_willThrow();
    goto LABEL_11;
  }

  sub_1000DC884(*(v6 + 56) + 40 * v8, v34);
  sub_100065074(v34, &v31, qword_10039EEE0, &qword_1002C23D8);
  if (v33 > 1u)
  {
    if (v33 == 2)
    {
      sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

      v13 = v31;
      v14 = v32;
      v27 = 0u;
      v28 = 0u;
      LOBYTE(v29) = 3;
      swift_beginAccess();
      sub_10002D0A4(&v27, 0xD000000000000022, 0x800000010034CCD0);
      swift_endAccess();
      v36 = v14;
      v13(v30, v1);
      if (!v2)
      {
        v15 = sub_100004074(&qword_1003A2E00, &qword_1002C6EC8);
        if (swift_dynamicCast())
        {
          sub_100029790(&v27, a1);
          *(&v28 + 1) = v15;
          *&v27 = swift_allocObject();
          sub_10000CCE4(a1, v27 + 16);
          LOBYTE(v29) = 0;
          swift_beginAccess();
          sub_10002D0A4(&v27, 0xD000000000000022, 0x800000010034CCD0);
          swift_endAccess();

          goto LABEL_11;
        }

        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        sub_10000BD44(&v27, &qword_1003A3158, &qword_1002C71B0);
        *&v27 = 0xD000000000000022;
        *(&v27 + 1) = 0x800000010034CCD0;
        v25._countAndFlagsBits = 0x646E65706564203ALL;
        v25._object = 0xEB00000000746E65;
        String.append(_:)(v25);
        sub_100020384(7004, v27, *(&v27 + 1), 0);
        swift_willThrow();
      }

      *&v27 = v13;
      *(&v27 + 1) = v36;
      LOBYTE(v29) = 2;
      swift_beginAccess();

      sub_10002D0A4(&v27, 0xD000000000000022, 0x800000010034CCD0);
      swift_endAccess();
      swift_willThrow();

      goto LABEL_11;
    }

    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    v10 = 7003;
    goto LABEL_9;
  }

  if (v33)
  {
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    v31(v30, v16);
    if (!v2)
    {
      v17 = sub_100004074(&qword_1003A2E00, &qword_1002C6EC8);
      if (swift_dynamicCast())
      {
        sub_100029790(&v27, a1);
        *(&v28 + 1) = v17;
        *&v27 = swift_allocObject();
        sub_10000CCE4(a1, v27 + 16);
        LOBYTE(v29) = 0;
        swift_beginAccess();
        sub_10002D0A4(&v27, 0xD000000000000022, 0x800000010034CCD0);
        swift_endAccess();
      }

      else
      {
        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        sub_10000BD44(&v27, &qword_1003A3158, &qword_1002C71B0);
        *&v27 = 0xD000000000000022;
        *(&v27 + 1) = 0x800000010034CCD0;
        v26._countAndFlagsBits = 0x657065646E69203ALL;
        v26._object = 0xED0000746E65646ELL;
        String.append(_:)(v26);
        sub_100020384(7004, v27, *(&v27 + 1), 0);
        swift_willThrow();
      }
    }

    goto LABEL_11;
  }

  sub_100004074(&qword_1003A2E00, &qword_1002C6EC8);
  if (swift_dynamicCast())
  {
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    sub_100029790(&v27, a1);
    sub_10000959C(&v31);
LABEL_11:
    swift_beginAccess();
    os_unfair_recursive_lock_unlock();
    swift_endAccess();
    return;
  }

  sub_10000959C(&v31);
  v31 = 0xD000000000000022;
  v32 = 0x800000010034CCD0;
  v18._countAndFlagsBits = 8250;
  v18._object = 0xE200000000000000;
  String.append(_:)(v18);
  v19 = *(v1 + v5);
  if (*(v19 + 16))
  {
    v20 = *(v3 + v5);

    v21 = sub_1000F5A28(0xD000000000000022, 0x800000010034CCD0);
    if (v22)
    {
      v23 = v21;
      sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

      sub_1000DC884(*(v19 + 56) + 40 * v23, &v27);

      v24._countAndFlagsBits = sub_1000DA088();
      String.append(_:)(v24);

      sub_1000F3008(&v27);
      v11 = v31;
      v12 = v32;
      v10 = 7004;
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000E6B70(uint64_t a1@<X8>)
{
  v3 = v1;
  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  v5 = OBJC_IVAR____TtC14softposreaderd5Depot_components;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (!*(v6 + 16))
  {
    goto LABEL_8;
  }

  v7 = *(v1 + v5);

  v8 = sub_1000F5A28(0xD00000000000001FLL, 0x800000010034CE50);
  if ((v9 & 1) == 0)
  {

LABEL_8:
    memset(v34, 0, sizeof(v34));
    v35 = -1;
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);
    v10 = 7002;
LABEL_9:
    v11 = 0xD00000000000001FLL;
    v12 = 0x800000010034CE50;
LABEL_10:
    sub_100020384(v10, v11, v12, 0);
    swift_willThrow();
    goto LABEL_11;
  }

  sub_1000DC884(*(v6 + 56) + 40 * v8, v34);
  sub_100065074(v34, &v31, qword_10039EEE0, &qword_1002C23D8);
  if (v33 > 1u)
  {
    if (v33 == 2)
    {
      sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

      v13 = v31;
      v14 = v32;
      v27 = 0u;
      v28 = 0u;
      LOBYTE(v29) = 3;
      swift_beginAccess();
      sub_10002D0A4(&v27, 0xD00000000000001FLL, 0x800000010034CE50);
      swift_endAccess();
      v36 = v14;
      v13(v30, v1);
      if (!v2)
      {
        v15 = sub_100004074(&qword_1003A2DA0, &qword_1002C6E60);
        if (swift_dynamicCast())
        {
          sub_100029790(&v27, a1);
          *(&v28 + 1) = v15;
          *&v27 = swift_allocObject();
          sub_10000CCE4(a1, v27 + 16);
          LOBYTE(v29) = 0;
          swift_beginAccess();
          sub_10002D0A4(&v27, 0xD00000000000001FLL, 0x800000010034CE50);
          swift_endAccess();

          goto LABEL_11;
        }

        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        sub_10000BD44(&v27, &qword_1003A30A8, &qword_1002C70F0);
        *&v27 = 0xD00000000000001FLL;
        *(&v27 + 1) = 0x800000010034CE50;
        v25._countAndFlagsBits = 0x646E65706564203ALL;
        v25._object = 0xEB00000000746E65;
        String.append(_:)(v25);
        sub_100020384(7004, v27, *(&v27 + 1), 0);
        swift_willThrow();
      }

      *&v27 = v13;
      *(&v27 + 1) = v36;
      LOBYTE(v29) = 2;
      swift_beginAccess();

      sub_10002D0A4(&v27, 0xD00000000000001FLL, 0x800000010034CE50);
      swift_endAccess();
      swift_willThrow();

      goto LABEL_11;
    }

    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    v10 = 7003;
    goto LABEL_9;
  }

  if (v33)
  {
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    v31(v30, v16);
    if (!v2)
    {
      v17 = sub_100004074(&qword_1003A2DA0, &qword_1002C6E60);
      if (swift_dynamicCast())
      {
        sub_100029790(&v27, a1);
        *(&v28 + 1) = v17;
        *&v27 = swift_allocObject();
        sub_10000CCE4(a1, v27 + 16);
        LOBYTE(v29) = 0;
        swift_beginAccess();
        sub_10002D0A4(&v27, 0xD00000000000001FLL, 0x800000010034CE50);
        swift_endAccess();
      }

      else
      {
        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        sub_10000BD44(&v27, &qword_1003A30A8, &qword_1002C70F0);
        *&v27 = 0xD00000000000001FLL;
        *(&v27 + 1) = 0x800000010034CE50;
        v26._countAndFlagsBits = 0x657065646E69203ALL;
        v26._object = 0xED0000746E65646ELL;
        String.append(_:)(v26);
        sub_100020384(7004, v27, *(&v27 + 1), 0);
        swift_willThrow();
      }
    }

    goto LABEL_11;
  }

  sub_100004074(&qword_1003A2DA0, &qword_1002C6E60);
  if (swift_dynamicCast())
  {
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    sub_100029790(&v27, a1);
    sub_10000959C(&v31);
LABEL_11:
    swift_beginAccess();
    os_unfair_recursive_lock_unlock();
    swift_endAccess();
    return;
  }

  sub_10000959C(&v31);
  v31 = 0xD00000000000001FLL;
  v32 = 0x800000010034CE50;
  v18._countAndFlagsBits = 8250;
  v18._object = 0xE200000000000000;
  String.append(_:)(v18);
  v19 = *(v1 + v5);
  if (*(v19 + 16))
  {
    v20 = *(v3 + v5);

    v21 = sub_1000F5A28(0xD00000000000001FLL, 0x800000010034CE50);
    if (v22)
    {
      v23 = v21;
      sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

      sub_1000DC884(*(v19 + 56) + 40 * v23, &v27);

      v24._countAndFlagsBits = sub_1000DA088();
      String.append(_:)(v24);

      sub_1000F3008(&v27);
      v11 = v31;
      v12 = v32;
      v10 = 7004;
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000E71D4()
{
  v2 = v0;
  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  v3 = OBJC_IVAR____TtC14softposreaderd5Depot_components;
  swift_beginAccess();
  v4 = *(v0 + v3);
  if (!*(v4 + 16))
  {
    goto LABEL_8;
  }

  v5 = *(v0 + v3);

  v6 = sub_1000F5A28(0xD000000000000015, 0x800000010034CC30);
  if ((v7 & 1) == 0)
  {

LABEL_8:
    memset(v30, 0, sizeof(v30));
    v31 = -1;
    sub_10000BD44(v30, qword_10039EEE0, &qword_1002C23D8);
    v8 = 7002;
    goto LABEL_9;
  }

  sub_1000DC884(*(v4 + 56) + 40 * v6, v30);
  sub_100065074(v30, v28, qword_10039EEE0, &qword_1002C23D8);
  if (v29 > 1u)
  {
    if (v29 == 2)
    {
      sub_10000BD44(v30, qword_10039EEE0, &qword_1002C23D8);

      v12 = v28[0];
      v11 = v28[1];
      v25 = 0u;
      v26 = 0u;
      v27 = 3;
      swift_beginAccess();
      sub_10002D0A4(&v25, 0xD000000000000015, 0x800000010034CC30);
      swift_endAccess();
      v12(&v25, v0);
      if (!v1)
      {
        v13 = type metadata accessor for ConfiguratorAnalytics();
        if (swift_dynamicCast())
        {
          goto LABEL_25;
        }

        *&v25 = 0xD000000000000015;
        *(&v25 + 1) = 0x800000010034CC30;
        v14._countAndFlagsBits = 0x646E65706564203ALL;
        v14._object = 0xEB00000000746E65;
        String.append(_:)(v14);
        sub_100020384(7004, v25, *(&v25 + 1), 0);
        swift_willThrow();
      }

      *&v25 = v12;
      *(&v25 + 1) = v11;
      v27 = 2;
      swift_beginAccess();

      sub_10002D0A4(&v25, 0xD000000000000015, 0x800000010034CC30);
      swift_endAccess();
LABEL_17:
      swift_willThrow();
LABEL_19:

      goto LABEL_11;
    }

    sub_10000BD44(v30, qword_10039EEE0, &qword_1002C23D8);

    v8 = 7003;
LABEL_9:
    v9 = 0xD000000000000015;
    v10 = 0x800000010034CC30;
LABEL_10:
    sub_100020384(v8, v9, v10, 0);
    swift_willThrow();
    goto LABEL_11;
  }

  if (v29)
  {
    sub_10000BD44(v30, qword_10039EEE0, &qword_1002C23D8);

    (v28[0])(&v25, v15);
    if (v1)
    {
      goto LABEL_19;
    }

    v13 = type metadata accessor for ConfiguratorAnalytics();
    if (swift_dynamicCast())
    {
LABEL_25:
      *(&v26 + 1) = v13;
      *&v25 = v24;
      v27 = 0;
      swift_beginAccess();

      sub_10002D0A4(&v25, 0xD000000000000015, 0x800000010034CC30);
      swift_endAccess();

      goto LABEL_11;
    }

    *&v25 = 0xD000000000000015;
    *(&v25 + 1) = 0x800000010034CC30;
    v23._countAndFlagsBits = 0x657065646E69203ALL;
    v23._object = 0xED0000746E65646ELL;
    String.append(_:)(v23);
    sub_100020384(7004, v25, *(&v25 + 1), 0);
    goto LABEL_17;
  }

  type metadata accessor for ConfiguratorAnalytics();
  if (swift_dynamicCast())
  {
    sub_10000BD44(v30, qword_10039EEE0, &qword_1002C23D8);

    sub_10000959C(v28);
LABEL_11:
    swift_beginAccess();
    os_unfair_recursive_lock_unlock();
    swift_endAccess();
    return;
  }

  sub_10000959C(v28);
  *&v25 = 0xD000000000000015;
  *(&v25 + 1) = 0x800000010034CC30;
  v16._countAndFlagsBits = 8250;
  v16._object = 0xE200000000000000;
  String.append(_:)(v16);
  v17 = *(v0 + v3);
  if (*(v17 + 16))
  {
    v18 = *(v2 + v3);

    v19 = sub_1000F5A28(0xD000000000000015, 0x800000010034CC30);
    if (v20)
    {
      v21 = v19;
      sub_10000BD44(v30, qword_10039EEE0, &qword_1002C23D8);

      sub_1000DC884(*(v17 + 56) + 40 * v21, v28);

      v22._countAndFlagsBits = sub_1000DA088();
      String.append(_:)(v22);

      sub_1000F3008(v28);
      v10 = *(&v25 + 1);
      v9 = v25;
      v8 = 7004;
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000E7738(uint64_t a1@<X8>)
{
  v3 = v1;
  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  v5 = OBJC_IVAR____TtC14softposreaderd5Depot_components;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (!*(v6 + 16))
  {
    goto LABEL_8;
  }

  v7 = *(v1 + v5);

  v8 = sub_1000F5A28(0xD00000000000001BLL, 0x800000010034CBD0);
  if ((v9 & 1) == 0)
  {

LABEL_8:
    memset(v34, 0, sizeof(v34));
    v35 = -1;
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);
    v10 = 7002;
LABEL_9:
    v11 = 0xD00000000000001BLL;
    v12 = 0x800000010034CBD0;
LABEL_10:
    sub_100020384(v10, v11, v12, 0);
    swift_willThrow();
    goto LABEL_11;
  }

  sub_1000DC884(*(v6 + 56) + 40 * v8, v34);
  sub_100065074(v34, &v31, qword_10039EEE0, &qword_1002C23D8);
  if (v33 > 1u)
  {
    if (v33 == 2)
    {
      sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

      v13 = v31;
      v14 = v32;
      v27 = 0u;
      v28 = 0u;
      LOBYTE(v29) = 3;
      swift_beginAccess();
      sub_10002D0A4(&v27, 0xD00000000000001BLL, 0x800000010034CBD0);
      swift_endAccess();
      v36 = v14;
      v13(v30, v1);
      if (!v2)
      {
        v15 = sub_100004074(&qword_1003A2D58, &qword_1002C6E18);
        if (swift_dynamicCast())
        {
          sub_100029790(&v27, a1);
          *(&v28 + 1) = v15;
          *&v27 = swift_allocObject();
          sub_10000CCE4(a1, v27 + 16);
          LOBYTE(v29) = 0;
          swift_beginAccess();
          sub_10002D0A4(&v27, 0xD00000000000001BLL, 0x800000010034CBD0);
          swift_endAccess();

          goto LABEL_11;
        }

        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        sub_10000BD44(&v27, &qword_1003A3108, &qword_1002C7150);
        *&v27 = 0xD00000000000001BLL;
        *(&v27 + 1) = 0x800000010034CBD0;
        v25._countAndFlagsBits = 0x646E65706564203ALL;
        v25._object = 0xEB00000000746E65;
        String.append(_:)(v25);
        sub_100020384(7004, v27, *(&v27 + 1), 0);
        swift_willThrow();
      }

      *&v27 = v13;
      *(&v27 + 1) = v36;
      LOBYTE(v29) = 2;
      swift_beginAccess();

      sub_10002D0A4(&v27, 0xD00000000000001BLL, 0x800000010034CBD0);
      swift_endAccess();
      swift_willThrow();

      goto LABEL_11;
    }

    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    v10 = 7003;
    goto LABEL_9;
  }

  if (v33)
  {
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    v31(v30, v16);
    if (!v2)
    {
      v17 = sub_100004074(&qword_1003A2D58, &qword_1002C6E18);
      if (swift_dynamicCast())
      {
        sub_100029790(&v27, a1);
        *(&v28 + 1) = v17;
        *&v27 = swift_allocObject();
        sub_10000CCE4(a1, v27 + 16);
        LOBYTE(v29) = 0;
        swift_beginAccess();
        sub_10002D0A4(&v27, 0xD00000000000001BLL, 0x800000010034CBD0);
        swift_endAccess();
      }

      else
      {
        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        sub_10000BD44(&v27, &qword_1003A3108, &qword_1002C7150);
        *&v27 = 0xD00000000000001BLL;
        *(&v27 + 1) = 0x800000010034CBD0;
        v26._countAndFlagsBits = 0x657065646E69203ALL;
        v26._object = 0xED0000746E65646ELL;
        String.append(_:)(v26);
        sub_100020384(7004, v27, *(&v27 + 1), 0);
        swift_willThrow();
      }
    }

    goto LABEL_11;
  }

  sub_100004074(&qword_1003A2D58, &qword_1002C6E18);
  if (swift_dynamicCast())
  {
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    sub_100029790(&v27, a1);
    sub_10000959C(&v31);
LABEL_11:
    swift_beginAccess();
    os_unfair_recursive_lock_unlock();
    swift_endAccess();
    return;
  }

  sub_10000959C(&v31);
  v31 = 0xD00000000000001BLL;
  v32 = 0x800000010034CBD0;
  v18._countAndFlagsBits = 8250;
  v18._object = 0xE200000000000000;
  String.append(_:)(v18);
  v19 = *(v1 + v5);
  if (*(v19 + 16))
  {
    v20 = *(v3 + v5);

    v21 = sub_1000F5A28(0xD00000000000001BLL, 0x800000010034CBD0);
    if (v22)
    {
      v23 = v21;
      sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

      sub_1000DC884(*(v19 + 56) + 40 * v23, &v27);

      v24._countAndFlagsBits = sub_1000DA088();
      String.append(_:)(v24);

      sub_1000F3008(&v27);
      v11 = v31;
      v12 = v32;
      v10 = 7004;
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000E7D9C(uint64_t a1@<X8>)
{
  v3 = v1;
  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  v5 = OBJC_IVAR____TtC14softposreaderd5Depot_components;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (!*(v6 + 16))
  {
    goto LABEL_8;
  }

  v7 = *(v1 + v5);

  v8 = sub_1000F5A28(0xD00000000000001ALL, 0x800000010034CCB0);
  if ((v9 & 1) == 0)
  {

LABEL_8:
    memset(v34, 0, sizeof(v34));
    v35 = -1;
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);
    v10 = 7002;
LABEL_9:
    v11 = 0xD00000000000001ALL;
    v12 = 0x800000010034CCB0;
LABEL_10:
    sub_100020384(v10, v11, v12, 0);
    swift_willThrow();
    goto LABEL_11;
  }

  sub_1000DC884(*(v6 + 56) + 40 * v8, v34);
  sub_100065074(v34, &v31, qword_10039EEE0, &qword_1002C23D8);
  if (v33 > 1u)
  {
    if (v33 == 2)
    {
      sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

      v13 = v31;
      v14 = v32;
      v27 = 0u;
      v28 = 0u;
      LOBYTE(v29) = 3;
      swift_beginAccess();
      sub_10002D0A4(&v27, 0xD00000000000001ALL, 0x800000010034CCB0);
      swift_endAccess();
      v36 = v14;
      v13(v30, v1);
      if (!v2)
      {
        v15 = sub_100004074(&qword_1003A2E08, &qword_1002C6ED0);
        if (swift_dynamicCast())
        {
          sub_100029790(&v27, a1);
          *(&v28 + 1) = v15;
          *&v27 = swift_allocObject();
          sub_10000CCE4(a1, v27 + 16);
          LOBYTE(v29) = 0;
          swift_beginAccess();
          sub_10002D0A4(&v27, 0xD00000000000001ALL, 0x800000010034CCB0);
          swift_endAccess();

          goto LABEL_11;
        }

        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        sub_10000BD44(&v27, &qword_1003A30A0, &qword_1002C70E8);
        *&v27 = 0xD00000000000001ALL;
        *(&v27 + 1) = 0x800000010034CCB0;
        v25._countAndFlagsBits = 0x646E65706564203ALL;
        v25._object = 0xEB00000000746E65;
        String.append(_:)(v25);
        sub_100020384(7004, v27, *(&v27 + 1), 0);
        swift_willThrow();
      }

      *&v27 = v13;
      *(&v27 + 1) = v36;
      LOBYTE(v29) = 2;
      swift_beginAccess();

      sub_10002D0A4(&v27, 0xD00000000000001ALL, 0x800000010034CCB0);
      swift_endAccess();
      swift_willThrow();

      goto LABEL_11;
    }

    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    v10 = 7003;
    goto LABEL_9;
  }

  if (v33)
  {
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    v31(v30, v16);
    if (!v2)
    {
      v17 = sub_100004074(&qword_1003A2E08, &qword_1002C6ED0);
      if (swift_dynamicCast())
      {
        sub_100029790(&v27, a1);
        *(&v28 + 1) = v17;
        *&v27 = swift_allocObject();
        sub_10000CCE4(a1, v27 + 16);
        LOBYTE(v29) = 0;
        swift_beginAccess();
        sub_10002D0A4(&v27, 0xD00000000000001ALL, 0x800000010034CCB0);
        swift_endAccess();
      }

      else
      {
        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        sub_10000BD44(&v27, &qword_1003A30A0, &qword_1002C70E8);
        *&v27 = 0xD00000000000001ALL;
        *(&v27 + 1) = 0x800000010034CCB0;
        v26._countAndFlagsBits = 0x657065646E69203ALL;
        v26._object = 0xED0000746E65646ELL;
        String.append(_:)(v26);
        sub_100020384(7004, v27, *(&v27 + 1), 0);
        swift_willThrow();
      }
    }

    goto LABEL_11;
  }

  sub_100004074(&qword_1003A2E08, &qword_1002C6ED0);
  if (swift_dynamicCast())
  {
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    sub_100029790(&v27, a1);
    sub_10000959C(&v31);
LABEL_11:
    swift_beginAccess();
    os_unfair_recursive_lock_unlock();
    swift_endAccess();
    return;
  }

  sub_10000959C(&v31);
  v31 = 0xD00000000000001ALL;
  v32 = 0x800000010034CCB0;
  v18._countAndFlagsBits = 8250;
  v18._object = 0xE200000000000000;
  String.append(_:)(v18);
  v19 = *(v1 + v5);
  if (*(v19 + 16))
  {
    v20 = *(v3 + v5);

    v21 = sub_1000F5A28(0xD00000000000001ALL, 0x800000010034CCB0);
    if (v22)
    {
      v23 = v21;
      sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

      sub_1000DC884(*(v19 + 56) + 40 * v23, &v27);

      v24._countAndFlagsBits = sub_1000DA088();
      String.append(_:)(v24);

      sub_1000F3008(&v27);
      v11 = v31;
      v12 = v32;
      v10 = 7004;
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000E8400(uint64_t a1@<X8>)
{
  v3 = v1;
  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  v5 = OBJC_IVAR____TtC14softposreaderd5Depot_components;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (!*(v6 + 16))
  {
    goto LABEL_8;
  }

  v7 = *(v1 + v5);

  v8 = sub_1000F5A28(0xD000000000000016, 0x800000010034CF60);
  if ((v9 & 1) == 0)
  {

LABEL_8:
    memset(v34, 0, sizeof(v34));
    v35 = -1;
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);
    v10 = 7002;
LABEL_9:
    v11 = 0xD000000000000016;
    v12 = 0x800000010034CF60;
LABEL_10:
    sub_100020384(v10, v11, v12, 0);
    swift_willThrow();
    goto LABEL_11;
  }

  sub_1000DC884(*(v6 + 56) + 40 * v8, v34);
  sub_100065074(v34, &v31, qword_10039EEE0, &qword_1002C23D8);
  if (v33 > 1u)
  {
    if (v33 == 2)
    {
      sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

      v13 = v31;
      v14 = v32;
      v27 = 0u;
      v28 = 0u;
      LOBYTE(v29) = 3;
      swift_beginAccess();
      sub_10002D0A4(&v27, 0xD000000000000016, 0x800000010034CF60);
      swift_endAccess();
      v36 = v14;
      v13(v30, v1);
      if (!v2)
      {
        v15 = sub_100004074(&qword_1003A2D60, &qword_1002C6E20);
        if (swift_dynamicCast())
        {
          sub_100029790(&v27, a1);
          *(&v28 + 1) = v15;
          *&v27 = swift_allocObject();
          sub_10000CCE4(a1, v27 + 16);
          LOBYTE(v29) = 0;
          swift_beginAccess();
          sub_10002D0A4(&v27, 0xD000000000000016, 0x800000010034CF60);
          swift_endAccess();

          goto LABEL_11;
        }

        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        sub_10000BD44(&v27, &qword_1003A3100, &qword_1002C7148);
        *&v27 = 0xD000000000000016;
        *(&v27 + 1) = 0x800000010034CF60;
        v25._countAndFlagsBits = 0x646E65706564203ALL;
        v25._object = 0xEB00000000746E65;
        String.append(_:)(v25);
        sub_100020384(7004, v27, *(&v27 + 1), 0);
        swift_willThrow();
      }

      *&v27 = v13;
      *(&v27 + 1) = v36;
      LOBYTE(v29) = 2;
      swift_beginAccess();

      sub_10002D0A4(&v27, 0xD000000000000016, 0x800000010034CF60);
      swift_endAccess();
      swift_willThrow();

      goto LABEL_11;
    }

    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    v10 = 7003;
    goto LABEL_9;
  }

  if (v33)
  {
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    v31(v30, v16);
    if (!v2)
    {
      v17 = sub_100004074(&qword_1003A2D60, &qword_1002C6E20);
      if (swift_dynamicCast())
      {
        sub_100029790(&v27, a1);
        *(&v28 + 1) = v17;
        *&v27 = swift_allocObject();
        sub_10000CCE4(a1, v27 + 16);
        LOBYTE(v29) = 0;
        swift_beginAccess();
        sub_10002D0A4(&v27, 0xD000000000000016, 0x800000010034CF60);
        swift_endAccess();
      }

      else
      {
        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        sub_10000BD44(&v27, &qword_1003A3100, &qword_1002C7148);
        *&v27 = 0xD000000000000016;
        *(&v27 + 1) = 0x800000010034CF60;
        v26._countAndFlagsBits = 0x657065646E69203ALL;
        v26._object = 0xED0000746E65646ELL;
        String.append(_:)(v26);
        sub_100020384(7004, v27, *(&v27 + 1), 0);
        swift_willThrow();
      }
    }

    goto LABEL_11;
  }

  sub_100004074(&qword_1003A2D60, &qword_1002C6E20);
  if (swift_dynamicCast())
  {
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    sub_100029790(&v27, a1);
    sub_10000959C(&v31);
LABEL_11:
    swift_beginAccess();
    os_unfair_recursive_lock_unlock();
    swift_endAccess();
    return;
  }

  sub_10000959C(&v31);
  v31 = 0xD000000000000016;
  v32 = 0x800000010034CF60;
  v18._countAndFlagsBits = 8250;
  v18._object = 0xE200000000000000;
  String.append(_:)(v18);
  v19 = *(v1 + v5);
  if (*(v19 + 16))
  {
    v20 = *(v3 + v5);

    v21 = sub_1000F5A28(0xD000000000000016, 0x800000010034CF60);
    if (v22)
    {
      v23 = v21;
      sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

      sub_1000DC884(*(v19 + 56) + 40 * v23, &v27);

      v24._countAndFlagsBits = sub_1000DA088();
      String.append(_:)(v24);

      sub_1000F3008(&v27);
      v11 = v31;
      v12 = v32;
      v10 = 7004;
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000E8A64(uint64_t a1@<X8>)
{
  v3 = v1;
  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  v5 = OBJC_IVAR____TtC14softposreaderd5Depot_components;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (!*(v6 + 16))
  {
    goto LABEL_8;
  }

  v7 = *(v1 + v5);

  v8 = sub_1000F5A28(0xD00000000000001ELL, 0x800000010034CE30);
  if ((v9 & 1) == 0)
  {

LABEL_8:
    memset(v34, 0, sizeof(v34));
    v35 = -1;
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);
    v10 = 7002;
LABEL_9:
    v11 = 0xD00000000000001ELL;
    v12 = 0x800000010034CE30;
LABEL_10:
    sub_100020384(v10, v11, v12, 0);
    swift_willThrow();
    goto LABEL_11;
  }

  sub_1000DC884(*(v6 + 56) + 40 * v8, v34);
  sub_100065074(v34, &v31, qword_10039EEE0, &qword_1002C23D8);
  if (v33 > 1u)
  {
    if (v33 == 2)
    {
      sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

      v13 = v31;
      v14 = v32;
      v27 = 0u;
      v28 = 0u;
      LOBYTE(v29) = 3;
      swift_beginAccess();
      sub_10002D0A4(&v27, 0xD00000000000001ELL, 0x800000010034CE30);
      swift_endAccess();
      v36 = v14;
      v13(v30, v1);
      if (!v2)
      {
        v15 = sub_100004074(&qword_1003A2DA8, &qword_1002C6E68);
        if (swift_dynamicCast())
        {
          sub_100029790(&v27, a1);
          *(&v28 + 1) = v15;
          *&v27 = swift_allocObject();
          sub_10000CCE4(a1, v27 + 16);
          LOBYTE(v29) = 0;
          swift_beginAccess();
          sub_10002D0A4(&v27, 0xD00000000000001ELL, 0x800000010034CE30);
          swift_endAccess();

          goto LABEL_11;
        }

        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        sub_10000BD44(&v27, &qword_1003A30C0, &qword_1002C7108);
        *&v27 = 0xD00000000000001ELL;
        *(&v27 + 1) = 0x800000010034CE30;
        v25._countAndFlagsBits = 0x646E65706564203ALL;
        v25._object = 0xEB00000000746E65;
        String.append(_:)(v25);
        sub_100020384(7004, v27, *(&v27 + 1), 0);
        swift_willThrow();
      }

      *&v27 = v13;
      *(&v27 + 1) = v36;
      LOBYTE(v29) = 2;
      swift_beginAccess();

      sub_10002D0A4(&v27, 0xD00000000000001ELL, 0x800000010034CE30);
      swift_endAccess();
      swift_willThrow();

      goto LABEL_11;
    }

    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    v10 = 7003;
    goto LABEL_9;
  }

  if (v33)
  {
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    v31(v30, v16);
    if (!v2)
    {
      v17 = sub_100004074(&qword_1003A2DA8, &qword_1002C6E68);
      if (swift_dynamicCast())
      {
        sub_100029790(&v27, a1);
        *(&v28 + 1) = v17;
        *&v27 = swift_allocObject();
        sub_10000CCE4(a1, v27 + 16);
        LOBYTE(v29) = 0;
        swift_beginAccess();
        sub_10002D0A4(&v27, 0xD00000000000001ELL, 0x800000010034CE30);
        swift_endAccess();
      }

      else
      {
        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        sub_10000BD44(&v27, &qword_1003A30C0, &qword_1002C7108);
        *&v27 = 0xD00000000000001ELL;
        *(&v27 + 1) = 0x800000010034CE30;
        v26._countAndFlagsBits = 0x657065646E69203ALL;
        v26._object = 0xED0000746E65646ELL;
        String.append(_:)(v26);
        sub_100020384(7004, v27, *(&v27 + 1), 0);
        swift_willThrow();
      }
    }

    goto LABEL_11;
  }

  sub_100004074(&qword_1003A2DA8, &qword_1002C6E68);
  if (swift_dynamicCast())
  {
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    sub_100029790(&v27, a1);
    sub_10000959C(&v31);
LABEL_11:
    swift_beginAccess();
    os_unfair_recursive_lock_unlock();
    swift_endAccess();
    return;
  }

  sub_10000959C(&v31);
  v31 = 0xD00000000000001ELL;
  v32 = 0x800000010034CE30;
  v18._countAndFlagsBits = 8250;
  v18._object = 0xE200000000000000;
  String.append(_:)(v18);
  v19 = *(v1 + v5);
  if (*(v19 + 16))
  {
    v20 = *(v3 + v5);

    v21 = sub_1000F5A28(0xD00000000000001ELL, 0x800000010034CE30);
    if (v22)
    {
      v23 = v21;
      sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

      sub_1000DC884(*(v19 + 56) + 40 * v23, &v27);

      v24._countAndFlagsBits = sub_1000DA088();
      String.append(_:)(v24);

      sub_1000F3008(&v27);
      v11 = v31;
      v12 = v32;
      v10 = 7004;
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000E90C8(uint64_t a1@<X8>)
{
  v3 = v1;
  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  v5 = OBJC_IVAR____TtC14softposreaderd5Depot_components;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (!*(v6 + 16))
  {
    goto LABEL_8;
  }

  v7 = *(v1 + v5);

  v8 = sub_1000F5A28(0xD000000000000012, 0x800000010034CD60);
  if ((v9 & 1) == 0)
  {

LABEL_8:
    memset(v34, 0, sizeof(v34));
    v35 = -1;
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);
    v10 = 7002;
LABEL_9:
    v11 = 0xD000000000000012;
    v12 = 0x800000010034CD60;
LABEL_10:
    sub_100020384(v10, v11, v12, 0);
    swift_willThrow();
    goto LABEL_11;
  }

  sub_1000DC884(*(v6 + 56) + 40 * v8, v34);
  sub_100065074(v34, &v31, qword_10039EEE0, &qword_1002C23D8);
  if (v33 > 1u)
  {
    if (v33 == 2)
    {
      sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

      v13 = v31;
      v14 = v32;
      v27 = 0u;
      v28 = 0u;
      LOBYTE(v29) = 3;
      swift_beginAccess();
      sub_10002D0A4(&v27, 0xD000000000000012, 0x800000010034CD60);
      swift_endAccess();
      v36 = v14;
      v13(v30, v1);
      if (!v2)
      {
        v15 = sub_100004074(&qword_1003A2DD8, &qword_1002C6EA0);
        if (swift_dynamicCast())
        {
          sub_100029790(&v27, a1);
          *(&v28 + 1) = v15;
          *&v27 = swift_allocObject();
          sub_10000CCE4(a1, v27 + 16);
          LOBYTE(v29) = 0;
          swift_beginAccess();
          sub_10002D0A4(&v27, 0xD000000000000012, 0x800000010034CD60);
          swift_endAccess();

          goto LABEL_11;
        }

        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        sub_10000BD44(&v27, &qword_1003A30B8, &qword_1002C7100);
        *&v27 = 0xD000000000000012;
        *(&v27 + 1) = 0x800000010034CD60;
        v25._countAndFlagsBits = 0x646E65706564203ALL;
        v25._object = 0xEB00000000746E65;
        String.append(_:)(v25);
        sub_100020384(7004, v27, *(&v27 + 1), 0);
        swift_willThrow();
      }

      *&v27 = v13;
      *(&v27 + 1) = v36;
      LOBYTE(v29) = 2;
      swift_beginAccess();

      sub_10002D0A4(&v27, 0xD000000000000012, 0x800000010034CD60);
      swift_endAccess();
      swift_willThrow();

      goto LABEL_11;
    }

    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    v10 = 7003;
    goto LABEL_9;
  }

  if (v33)
  {
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    v31(v30, v16);
    if (!v2)
    {
      v17 = sub_100004074(&qword_1003A2DD8, &qword_1002C6EA0);
      if (swift_dynamicCast())
      {
        sub_100029790(&v27, a1);
        *(&v28 + 1) = v17;
        *&v27 = swift_allocObject();
        sub_10000CCE4(a1, v27 + 16);
        LOBYTE(v29) = 0;
        swift_beginAccess();
        sub_10002D0A4(&v27, 0xD000000000000012, 0x800000010034CD60);
        swift_endAccess();
      }

      else
      {
        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        sub_10000BD44(&v27, &qword_1003A30B8, &qword_1002C7100);
        *&v27 = 0xD000000000000012;
        *(&v27 + 1) = 0x800000010034CD60;
        v26._countAndFlagsBits = 0x657065646E69203ALL;
        v26._object = 0xED0000746E65646ELL;
        String.append(_:)(v26);
        sub_100020384(7004, v27, *(&v27 + 1), 0);
        swift_willThrow();
      }
    }

    goto LABEL_11;
  }

  sub_100004074(&qword_1003A2DD8, &qword_1002C6EA0);
  if (swift_dynamicCast())
  {
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    sub_100029790(&v27, a1);
    sub_10000959C(&v31);
LABEL_11:
    swift_beginAccess();
    os_unfair_recursive_lock_unlock();
    swift_endAccess();
    return;
  }

  sub_10000959C(&v31);
  v31 = 0xD000000000000012;
  v32 = 0x800000010034CD60;
  v18._countAndFlagsBits = 8250;
  v18._object = 0xE200000000000000;
  String.append(_:)(v18);
  v19 = *(v1 + v5);
  if (*(v19 + 16))
  {
    v20 = *(v3 + v5);

    v21 = sub_1000F5A28(0xD000000000000012, 0x800000010034CD60);
    if (v22)
    {
      v23 = v21;
      sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

      sub_1000DC884(*(v19 + 56) + 40 * v23, &v27);

      v24._countAndFlagsBits = sub_1000DA088();
      String.append(_:)(v24);

      sub_1000F3008(&v27);
      v11 = v31;
      v12 = v32;
      v10 = 7004;
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000E972C(uint64_t a1@<X8>)
{
  v3 = v1;
  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  v5 = OBJC_IVAR____TtC14softposreaderd5Depot_components;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (!*(v6 + 16))
  {
    goto LABEL_8;
  }

  v7 = *(v1 + v5);

  v8 = sub_1000F5A28(0xD000000000000019, 0x800000010034CD80);
  if ((v9 & 1) == 0)
  {

LABEL_8:
    memset(v34, 0, sizeof(v34));
    v35 = -1;
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);
    v10 = 7002;
LABEL_9:
    v11 = 0xD000000000000019;
    v12 = 0x800000010034CD80;
LABEL_10:
    sub_100020384(v10, v11, v12, 0);
    swift_willThrow();
    goto LABEL_11;
  }

  sub_1000DC884(*(v6 + 56) + 40 * v8, v34);
  sub_100065074(v34, &v31, qword_10039EEE0, &qword_1002C23D8);
  if (v33 > 1u)
  {
    if (v33 == 2)
    {
      sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

      v13 = v31;
      v14 = v32;
      v27 = 0u;
      v28 = 0u;
      LOBYTE(v29) = 3;
      swift_beginAccess();
      sub_10002D0A4(&v27, 0xD000000000000019, 0x800000010034CD80);
      swift_endAccess();
      v36 = v14;
      v13(v30, v1);
      if (!v2)
      {
        v15 = sub_100004074(&qword_1003A2DD0, &qword_1002C6E98);
        if (swift_dynamicCast())
        {
          sub_100029790(&v27, a1);
          *(&v28 + 1) = v15;
          *&v27 = swift_allocObject();
          sub_10000CCE4(a1, v27 + 16);
          LOBYTE(v29) = 0;
          swift_beginAccess();
          sub_10002D0A4(&v27, 0xD000000000000019, 0x800000010034CD80);
          swift_endAccess();

          goto LABEL_11;
        }

        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        sub_10000BD44(&v27, &qword_1003A3098, &qword_1002C70E0);
        *&v27 = 0xD000000000000019;
        *(&v27 + 1) = 0x800000010034CD80;
        v25._countAndFlagsBits = 0x646E65706564203ALL;
        v25._object = 0xEB00000000746E65;
        String.append(_:)(v25);
        sub_100020384(7004, v27, *(&v27 + 1), 0);
        swift_willThrow();
      }

      *&v27 = v13;
      *(&v27 + 1) = v36;
      LOBYTE(v29) = 2;
      swift_beginAccess();

      sub_10002D0A4(&v27, 0xD000000000000019, 0x800000010034CD80);
      swift_endAccess();
      swift_willThrow();

      goto LABEL_11;
    }

    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    v10 = 7003;
    goto LABEL_9;
  }

  if (v33)
  {
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    v31(v30, v16);
    if (!v2)
    {
      v17 = sub_100004074(&qword_1003A2DD0, &qword_1002C6E98);
      if (swift_dynamicCast())
      {
        sub_100029790(&v27, a1);
        *(&v28 + 1) = v17;
        *&v27 = swift_allocObject();
        sub_10000CCE4(a1, v27 + 16);
        LOBYTE(v29) = 0;
        swift_beginAccess();
        sub_10002D0A4(&v27, 0xD000000000000019, 0x800000010034CD80);
        swift_endAccess();
      }

      else
      {
        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        sub_10000BD44(&v27, &qword_1003A3098, &qword_1002C70E0);
        *&v27 = 0xD000000000000019;
        *(&v27 + 1) = 0x800000010034CD80;
        v26._countAndFlagsBits = 0x657065646E69203ALL;
        v26._object = 0xED0000746E65646ELL;
        String.append(_:)(v26);
        sub_100020384(7004, v27, *(&v27 + 1), 0);
        swift_willThrow();
      }
    }

    goto LABEL_11;
  }

  sub_100004074(&qword_1003A2DD0, &qword_1002C6E98);
  if (swift_dynamicCast())
  {
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    sub_100029790(&v27, a1);
    sub_10000959C(&v31);
LABEL_11:
    swift_beginAccess();
    os_unfair_recursive_lock_unlock();
    swift_endAccess();
    return;
  }

  sub_10000959C(&v31);
  v31 = 0xD000000000000019;
  v32 = 0x800000010034CD80;
  v18._countAndFlagsBits = 8250;
  v18._object = 0xE200000000000000;
  String.append(_:)(v18);
  v19 = *(v1 + v5);
  if (*(v19 + 16))
  {
    v20 = *(v3 + v5);

    v21 = sub_1000F5A28(0xD000000000000019, 0x800000010034CD80);
    if (v22)
    {
      v23 = v21;
      sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

      sub_1000DC884(*(v19 + 56) + 40 * v23, &v27);

      v24._countAndFlagsBits = sub_1000DA088();
      String.append(_:)(v24);

      sub_1000F3008(&v27);
      v11 = v31;
      v12 = v32;
      v10 = 7004;
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000E9D90(uint64_t a1@<X8>)
{
  v3 = v1;
  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  v5 = OBJC_IVAR____TtC14softposreaderd5Depot_components;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (!*(v6 + 16))
  {
    goto LABEL_8;
  }

  v7 = *(v1 + v5);

  v8 = sub_1000F5A28(0xD000000000000015, 0x800000010034CD20);
  if ((v9 & 1) == 0)
  {

LABEL_8:
    memset(v34, 0, sizeof(v34));
    v35 = -1;
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);
    v10 = 7002;
LABEL_9:
    v11 = 0xD000000000000015;
    v12 = 0x800000010034CD20;
LABEL_10:
    sub_100020384(v10, v11, v12, 0);
    swift_willThrow();
    goto LABEL_11;
  }

  sub_1000DC884(*(v6 + 56) + 40 * v8, v34);
  sub_100065074(v34, &v31, qword_10039EEE0, &qword_1002C23D8);
  if (v33 > 1u)
  {
    if (v33 == 2)
    {
      sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

      v13 = v31;
      v14 = v32;
      v27 = 0u;
      v28 = 0u;
      LOBYTE(v29) = 3;
      swift_beginAccess();
      sub_10002D0A4(&v27, 0xD000000000000015, 0x800000010034CD20);
      swift_endAccess();
      v36 = v14;
      v13(v30, v1);
      if (!v2)
      {
        v15 = sub_100004074(&qword_1003A2DE8, &qword_1002C6EB0);
        if (swift_dynamicCast())
        {
          sub_100029790(&v27, a1);
          *(&v28 + 1) = v15;
          *&v27 = swift_allocObject();
          sub_10000CCE4(a1, v27 + 16);
          LOBYTE(v29) = 0;
          swift_beginAccess();
          sub_10002D0A4(&v27, 0xD000000000000015, 0x800000010034CD20);
          swift_endAccess();

          goto LABEL_11;
        }

        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        sub_10000BD44(&v27, &qword_1003A30F8, &qword_1002C7140);
        *&v27 = 0xD000000000000015;
        *(&v27 + 1) = 0x800000010034CD20;
        v25._countAndFlagsBits = 0x646E65706564203ALL;
        v25._object = 0xEB00000000746E65;
        String.append(_:)(v25);
        sub_100020384(7004, v27, *(&v27 + 1), 0);
        swift_willThrow();
      }

      *&v27 = v13;
      *(&v27 + 1) = v36;
      LOBYTE(v29) = 2;
      swift_beginAccess();

      sub_10002D0A4(&v27, 0xD000000000000015, 0x800000010034CD20);
      swift_endAccess();
      swift_willThrow();

      goto LABEL_11;
    }

    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    v10 = 7003;
    goto LABEL_9;
  }

  if (v33)
  {
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    v31(v30, v16);
    if (!v2)
    {
      v17 = sub_100004074(&qword_1003A2DE8, &qword_1002C6EB0);
      if (swift_dynamicCast())
      {
        sub_100029790(&v27, a1);
        *(&v28 + 1) = v17;
        *&v27 = swift_allocObject();
        sub_10000CCE4(a1, v27 + 16);
        LOBYTE(v29) = 0;
        swift_beginAccess();
        sub_10002D0A4(&v27, 0xD000000000000015, 0x800000010034CD20);
        swift_endAccess();
      }

      else
      {
        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        sub_10000BD44(&v27, &qword_1003A30F8, &qword_1002C7140);
        *&v27 = 0xD000000000000015;
        *(&v27 + 1) = 0x800000010034CD20;
        v26._countAndFlagsBits = 0x657065646E69203ALL;
        v26._object = 0xED0000746E65646ELL;
        String.append(_:)(v26);
        sub_100020384(7004, v27, *(&v27 + 1), 0);
        swift_willThrow();
      }
    }

    goto LABEL_11;
  }

  sub_100004074(&qword_1003A2DE8, &qword_1002C6EB0);
  if (swift_dynamicCast())
  {
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    sub_100029790(&v27, a1);
    sub_10000959C(&v31);
LABEL_11:
    swift_beginAccess();
    os_unfair_recursive_lock_unlock();
    swift_endAccess();
    return;
  }

  sub_10000959C(&v31);
  v31 = 0xD000000000000015;
  v32 = 0x800000010034CD20;
  v18._countAndFlagsBits = 8250;
  v18._object = 0xE200000000000000;
  String.append(_:)(v18);
  v19 = *(v1 + v5);
  if (*(v19 + 16))
  {
    v20 = *(v3 + v5);

    v21 = sub_1000F5A28(0xD000000000000015, 0x800000010034CD20);
    if (v22)
    {
      v23 = v21;
      sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

      sub_1000DC884(*(v19 + 56) + 40 * v23, &v27);

      v24._countAndFlagsBits = sub_1000DA088();
      String.append(_:)(v24);

      sub_1000F3008(&v27);
      v11 = v31;
      v12 = v32;
      v10 = 7004;
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000EA3F4(uint64_t a1@<X8>)
{
  v3 = v1;
  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  v5 = OBJC_IVAR____TtC14softposreaderd5Depot_components;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (!*(v6 + 16))
  {
    goto LABEL_8;
  }

  v7 = *(v1 + v5);

  v8 = sub_1000F5A28(0xD000000000000010, 0x800000010034CE90);
  if ((v9 & 1) == 0)
  {

LABEL_8:
    memset(v34, 0, sizeof(v34));
    v35 = -1;
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);
    v10 = 7002;
LABEL_9:
    v11 = 0xD000000000000010;
    v12 = 0x800000010034CE90;
LABEL_10:
    sub_100020384(v10, v11, v12, 0);
    swift_willThrow();
    goto LABEL_11;
  }

  sub_1000DC884(*(v6 + 56) + 40 * v8, v34);
  sub_100065074(v34, &v31, qword_10039EEE0, &qword_1002C23D8);
  if (v33 > 1u)
  {
    if (v33 == 2)
    {
      sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

      v13 = v31;
      v14 = v32;
      v27 = 0u;
      v28 = 0u;
      LOBYTE(v29) = 3;
      swift_beginAccess();
      sub_10002D0A4(&v27, 0xD000000000000010, 0x800000010034CE90);
      swift_endAccess();
      v36 = v14;
      v13(v30, v1);
      if (!v2)
      {
        v15 = sub_100004074(&qword_1003A2D90, &qword_1002C6E50);
        if (swift_dynamicCast())
        {
          sub_100029790(&v27, a1);
          *(&v28 + 1) = v15;
          *&v27 = swift_allocObject();
          sub_10000CCE4(a1, v27 + 16);
          LOBYTE(v29) = 0;
          swift_beginAccess();
          sub_10002D0A4(&v27, 0xD000000000000010, 0x800000010034CE90);
          swift_endAccess();

          goto LABEL_11;
        }

        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        sub_10000BD44(&v27, &qword_1003A30E8, &qword_1002C7130);
        *&v27 = 0xD000000000000010;
        *(&v27 + 1) = 0x800000010034CE90;
        v25._countAndFlagsBits = 0x646E65706564203ALL;
        v25._object = 0xEB00000000746E65;
        String.append(_:)(v25);
        sub_100020384(7004, v27, *(&v27 + 1), 0);
        swift_willThrow();
      }

      *&v27 = v13;
      *(&v27 + 1) = v36;
      LOBYTE(v29) = 2;
      swift_beginAccess();

      sub_10002D0A4(&v27, 0xD000000000000010, 0x800000010034CE90);
      swift_endAccess();
      swift_willThrow();

      goto LABEL_11;
    }

    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    v10 = 7003;
    goto LABEL_9;
  }

  if (v33)
  {
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    v31(v30, v16);
    if (!v2)
    {
      v17 = sub_100004074(&qword_1003A2D90, &qword_1002C6E50);
      if (swift_dynamicCast())
      {
        sub_100029790(&v27, a1);
        *(&v28 + 1) = v17;
        *&v27 = swift_allocObject();
        sub_10000CCE4(a1, v27 + 16);
        LOBYTE(v29) = 0;
        swift_beginAccess();
        sub_10002D0A4(&v27, 0xD000000000000010, 0x800000010034CE90);
        swift_endAccess();
      }

      else
      {
        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        sub_10000BD44(&v27, &qword_1003A30E8, &qword_1002C7130);
        *&v27 = 0xD000000000000010;
        *(&v27 + 1) = 0x800000010034CE90;
        v26._countAndFlagsBits = 0x657065646E69203ALL;
        v26._object = 0xED0000746E65646ELL;
        String.append(_:)(v26);
        sub_100020384(7004, v27, *(&v27 + 1), 0);
        swift_willThrow();
      }
    }

    goto LABEL_11;
  }

  sub_100004074(&qword_1003A2D90, &qword_1002C6E50);
  if (swift_dynamicCast())
  {
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    sub_100029790(&v27, a1);
    sub_10000959C(&v31);
LABEL_11:
    swift_beginAccess();
    os_unfair_recursive_lock_unlock();
    swift_endAccess();
    return;
  }

  sub_10000959C(&v31);
  v31 = 0xD000000000000010;
  v32 = 0x800000010034CE90;
  v18._countAndFlagsBits = 8250;
  v18._object = 0xE200000000000000;
  String.append(_:)(v18);
  v19 = *(v1 + v5);
  if (*(v19 + 16))
  {
    v20 = *(v3 + v5);

    v21 = sub_1000F5A28(0xD000000000000010, 0x800000010034CE90);
    if (v22)
    {
      v23 = v21;
      sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

      sub_1000DC884(*(v19 + 56) + 40 * v23, &v27);

      v24._countAndFlagsBits = sub_1000DA088();
      String.append(_:)(v24);

      sub_1000F3008(&v27);
      v11 = v31;
      v12 = v32;
      v10 = 7004;
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000EAA58(uint64_t a1@<X8>)
{
  v3 = v1;
  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  v5 = OBJC_IVAR____TtC14softposreaderd5Depot_components;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (!*(v6 + 16))
  {
    goto LABEL_8;
  }

  v7 = *(v1 + v5);

  v8 = sub_1000F5A28(0xD00000000000001FLL, 0x800000010034CEB0);
  if ((v9 & 1) == 0)
  {

LABEL_8:
    memset(v34, 0, sizeof(v34));
    v35 = -1;
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);
    v10 = 7002;
LABEL_9:
    v11 = 0xD00000000000001FLL;
    v12 = 0x800000010034CEB0;
LABEL_10:
    sub_100020384(v10, v11, v12, 0);
    swift_willThrow();
    goto LABEL_11;
  }

  sub_1000DC884(*(v6 + 56) + 40 * v8, v34);
  sub_100065074(v34, &v31, qword_10039EEE0, &qword_1002C23D8);
  if (v33 > 1u)
  {
    if (v33 == 2)
    {
      sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

      v13 = v31;
      v14 = v32;
      v27 = 0u;
      v28 = 0u;
      LOBYTE(v29) = 3;
      swift_beginAccess();
      sub_10002D0A4(&v27, 0xD00000000000001FLL, 0x800000010034CEB0);
      swift_endAccess();
      v36 = v14;
      v13(v30, v1);
      if (!v2)
      {
        v15 = sub_100004074(&qword_1003A2D88, &qword_1002C6E48);
        if (swift_dynamicCast())
        {
          sub_100029790(&v27, a1);
          *(&v28 + 1) = v15;
          *&v27 = swift_allocObject();
          sub_10000CCE4(a1, v27 + 16);
          LOBYTE(v29) = 0;
          swift_beginAccess();
          sub_10002D0A4(&v27, 0xD00000000000001FLL, 0x800000010034CEB0);
          swift_endAccess();

          goto LABEL_11;
        }

        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        sub_10000BD44(&v27, &qword_1003A30E0, &qword_1002C7128);
        *&v27 = 0xD00000000000001FLL;
        *(&v27 + 1) = 0x800000010034CEB0;
        v25._countAndFlagsBits = 0x646E65706564203ALL;
        v25._object = 0xEB00000000746E65;
        String.append(_:)(v25);
        sub_100020384(7004, v27, *(&v27 + 1), 0);
        swift_willThrow();
      }

      *&v27 = v13;
      *(&v27 + 1) = v36;
      LOBYTE(v29) = 2;
      swift_beginAccess();

      sub_10002D0A4(&v27, 0xD00000000000001FLL, 0x800000010034CEB0);
      swift_endAccess();
      swift_willThrow();

      goto LABEL_11;
    }

    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    v10 = 7003;
    goto LABEL_9;
  }

  if (v33)
  {
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    v31(v30, v16);
    if (!v2)
    {
      v17 = sub_100004074(&qword_1003A2D88, &qword_1002C6E48);
      if (swift_dynamicCast())
      {
        sub_100029790(&v27, a1);
        *(&v28 + 1) = v17;
        *&v27 = swift_allocObject();
        sub_10000CCE4(a1, v27 + 16);
        LOBYTE(v29) = 0;
        swift_beginAccess();
        sub_10002D0A4(&v27, 0xD00000000000001FLL, 0x800000010034CEB0);
        swift_endAccess();
      }

      else
      {
        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        sub_10000BD44(&v27, &qword_1003A30E0, &qword_1002C7128);
        *&v27 = 0xD00000000000001FLL;
        *(&v27 + 1) = 0x800000010034CEB0;
        v26._countAndFlagsBits = 0x657065646E69203ALL;
        v26._object = 0xED0000746E65646ELL;
        String.append(_:)(v26);
        sub_100020384(7004, v27, *(&v27 + 1), 0);
        swift_willThrow();
      }
    }

    goto LABEL_11;
  }

  sub_100004074(&qword_1003A2D88, &qword_1002C6E48);
  if (swift_dynamicCast())
  {
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    sub_100029790(&v27, a1);
    sub_10000959C(&v31);
LABEL_11:
    swift_beginAccess();
    os_unfair_recursive_lock_unlock();
    swift_endAccess();
    return;
  }

  sub_10000959C(&v31);
  v31 = 0xD00000000000001FLL;
  v32 = 0x800000010034CEB0;
  v18._countAndFlagsBits = 8250;
  v18._object = 0xE200000000000000;
  String.append(_:)(v18);
  v19 = *(v1 + v5);
  if (*(v19 + 16))
  {
    v20 = *(v3 + v5);

    v21 = sub_1000F5A28(0xD00000000000001FLL, 0x800000010034CEB0);
    if (v22)
    {
      v23 = v21;
      sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

      sub_1000DC884(*(v19 + 56) + 40 * v23, &v27);

      v24._countAndFlagsBits = sub_1000DA088();
      String.append(_:)(v24);

      sub_1000F3008(&v27);
      v11 = v31;
      v12 = v32;
      v10 = 7004;
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000EB0BC(uint64_t a1@<X8>)
{
  v3 = v1;
  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  v5 = OBJC_IVAR____TtC14softposreaderd5Depot_components;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (!*(v6 + 16))
  {
    goto LABEL_8;
  }

  v7 = *(v1 + v5);

  v8 = sub_1000F5A28(0xD00000000000001CLL, 0x800000010034CF40);
  if ((v9 & 1) == 0)
  {

LABEL_8:
    memset(v34, 0, sizeof(v34));
    v35 = -1;
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);
    v10 = 7002;
LABEL_9:
    v11 = 0xD00000000000001CLL;
    v12 = 0x800000010034CF40;
LABEL_10:
    sub_100020384(v10, v11, v12, 0);
    swift_willThrow();
    goto LABEL_11;
  }

  sub_1000DC884(*(v6 + 56) + 40 * v8, v34);
  sub_100065074(v34, &v31, qword_10039EEE0, &qword_1002C23D8);
  if (v33 > 1u)
  {
    if (v33 == 2)
    {
      sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

      v13 = v31;
      v14 = v32;
      v27 = 0u;
      v28 = 0u;
      LOBYTE(v29) = 3;
      swift_beginAccess();
      sub_10002D0A4(&v27, 0xD00000000000001CLL, 0x800000010034CF40);
      swift_endAccess();
      v36 = v14;
      v13(v30, v1);
      if (!v2)
      {
        v15 = sub_100004074(&qword_1003A2D68, &qword_1002C6E28);
        if (swift_dynamicCast())
        {
          sub_100029790(&v27, a1);
          *(&v28 + 1) = v15;
          *&v27 = swift_allocObject();
          sub_10000CCE4(a1, v27 + 16);
          LOBYTE(v29) = 0;
          swift_beginAccess();
          sub_10002D0A4(&v27, 0xD00000000000001CLL, 0x800000010034CF40);
          swift_endAccess();

          goto LABEL_11;
        }

        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        sub_10000BD44(&v27, &qword_1003A30D8, &qword_1002C7120);
        *&v27 = 0xD00000000000001CLL;
        *(&v27 + 1) = 0x800000010034CF40;
        v25._countAndFlagsBits = 0x646E65706564203ALL;
        v25._object = 0xEB00000000746E65;
        String.append(_:)(v25);
        sub_100020384(7004, v27, *(&v27 + 1), 0);
        swift_willThrow();
      }

      *&v27 = v13;
      *(&v27 + 1) = v36;
      LOBYTE(v29) = 2;
      swift_beginAccess();

      sub_10002D0A4(&v27, 0xD00000000000001CLL, 0x800000010034CF40);
      swift_endAccess();
      swift_willThrow();

      goto LABEL_11;
    }

    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    v10 = 7003;
    goto LABEL_9;
  }

  if (v33)
  {
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    v31(v30, v16);
    if (!v2)
    {
      v17 = sub_100004074(&qword_1003A2D68, &qword_1002C6E28);
      if (swift_dynamicCast())
      {
        sub_100029790(&v27, a1);
        *(&v28 + 1) = v17;
        *&v27 = swift_allocObject();
        sub_10000CCE4(a1, v27 + 16);
        LOBYTE(v29) = 0;
        swift_beginAccess();
        sub_10002D0A4(&v27, 0xD00000000000001CLL, 0x800000010034CF40);
        swift_endAccess();
      }

      else
      {
        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        sub_10000BD44(&v27, &qword_1003A30D8, &qword_1002C7120);
        *&v27 = 0xD00000000000001CLL;
        *(&v27 + 1) = 0x800000010034CF40;
        v26._countAndFlagsBits = 0x657065646E69203ALL;
        v26._object = 0xED0000746E65646ELL;
        String.append(_:)(v26);
        sub_100020384(7004, v27, *(&v27 + 1), 0);
        swift_willThrow();
      }
    }

    goto LABEL_11;
  }

  sub_100004074(&qword_1003A2D68, &qword_1002C6E28);
  if (swift_dynamicCast())
  {
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    sub_100029790(&v27, a1);
    sub_10000959C(&v31);
LABEL_11:
    swift_beginAccess();
    os_unfair_recursive_lock_unlock();
    swift_endAccess();
    return;
  }

  sub_10000959C(&v31);
  v31 = 0xD00000000000001CLL;
  v32 = 0x800000010034CF40;
  v18._countAndFlagsBits = 8250;
  v18._object = 0xE200000000000000;
  String.append(_:)(v18);
  v19 = *(v1 + v5);
  if (*(v19 + 16))
  {
    v20 = *(v3 + v5);

    v21 = sub_1000F5A28(0xD00000000000001CLL, 0x800000010034CF40);
    if (v22)
    {
      v23 = v21;
      sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

      sub_1000DC884(*(v19 + 56) + 40 * v23, &v27);

      v24._countAndFlagsBits = sub_1000DA088();
      String.append(_:)(v24);

      sub_1000F3008(&v27);
      v11 = v31;
      v12 = v32;
      v10 = 7004;
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000EB720(uint64_t a1@<X8>)
{
  v3 = v1;
  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  v5 = OBJC_IVAR____TtC14softposreaderd5Depot_components;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (!*(v6 + 16))
  {
    goto LABEL_8;
  }

  v7 = *(v1 + v5);

  v8 = sub_1000F5A28(0xD000000000000019, 0x800000010034CF20);
  if ((v9 & 1) == 0)
  {

LABEL_8:
    memset(v34, 0, sizeof(v34));
    v35 = -1;
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);
    v10 = 7002;
LABEL_9:
    v11 = 0xD000000000000019;
    v12 = 0x800000010034CF20;
LABEL_10:
    sub_100020384(v10, v11, v12, 0);
    swift_willThrow();
    goto LABEL_11;
  }

  sub_1000DC884(*(v6 + 56) + 40 * v8, v34);
  sub_100065074(v34, &v31, qword_10039EEE0, &qword_1002C23D8);
  if (v33 > 1u)
  {
    if (v33 == 2)
    {
      sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

      v13 = v31;
      v14 = v32;
      v27 = 0u;
      v28 = 0u;
      LOBYTE(v29) = 3;
      swift_beginAccess();
      sub_10002D0A4(&v27, 0xD000000000000019, 0x800000010034CF20);
      swift_endAccess();
      v36 = v14;
      v13(v30, v1);
      if (!v2)
      {
        v15 = sub_100004074(&qword_1003A2D70, &qword_1002C6E30);
        if (swift_dynamicCast())
        {
          sub_100029790(&v27, a1);
          *(&v28 + 1) = v15;
          *&v27 = swift_allocObject();
          sub_10000CCE4(a1, v27 + 16);
          LOBYTE(v29) = 0;
          swift_beginAccess();
          sub_10002D0A4(&v27, 0xD000000000000019, 0x800000010034CF20);
          swift_endAccess();

          goto LABEL_11;
        }

        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        sub_10000BD44(&v27, &qword_1003A30D0, &qword_1002C7118);
        *&v27 = 0xD000000000000019;
        *(&v27 + 1) = 0x800000010034CF20;
        v25._countAndFlagsBits = 0x646E65706564203ALL;
        v25._object = 0xEB00000000746E65;
        String.append(_:)(v25);
        sub_100020384(7004, v27, *(&v27 + 1), 0);
        swift_willThrow();
      }

      *&v27 = v13;
      *(&v27 + 1) = v36;
      LOBYTE(v29) = 2;
      swift_beginAccess();

      sub_10002D0A4(&v27, 0xD000000000000019, 0x800000010034CF20);
      swift_endAccess();
      swift_willThrow();

      goto LABEL_11;
    }

    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    v10 = 7003;
    goto LABEL_9;
  }

  if (v33)
  {
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    v31(v30, v16);
    if (!v2)
    {
      v17 = sub_100004074(&qword_1003A2D70, &qword_1002C6E30);
      if (swift_dynamicCast())
      {
        sub_100029790(&v27, a1);
        *(&v28 + 1) = v17;
        *&v27 = swift_allocObject();
        sub_10000CCE4(a1, v27 + 16);
        LOBYTE(v29) = 0;
        swift_beginAccess();
        sub_10002D0A4(&v27, 0xD000000000000019, 0x800000010034CF20);
        swift_endAccess();
      }

      else
      {
        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        sub_10000BD44(&v27, &qword_1003A30D0, &qword_1002C7118);
        *&v27 = 0xD000000000000019;
        *(&v27 + 1) = 0x800000010034CF20;
        v26._countAndFlagsBits = 0x657065646E69203ALL;
        v26._object = 0xED0000746E65646ELL;
        String.append(_:)(v26);
        sub_100020384(7004, v27, *(&v27 + 1), 0);
        swift_willThrow();
      }
    }

    goto LABEL_11;
  }

  sub_100004074(&qword_1003A2D70, &qword_1002C6E30);
  if (swift_dynamicCast())
  {
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    sub_100029790(&v27, a1);
    sub_10000959C(&v31);
LABEL_11:
    swift_beginAccess();
    os_unfair_recursive_lock_unlock();
    swift_endAccess();
    return;
  }

  sub_10000959C(&v31);
  v31 = 0xD000000000000019;
  v32 = 0x800000010034CF20;
  v18._countAndFlagsBits = 8250;
  v18._object = 0xE200000000000000;
  String.append(_:)(v18);
  v19 = *(v1 + v5);
  if (*(v19 + 16))
  {
    v20 = *(v3 + v5);

    v21 = sub_1000F5A28(0xD000000000000019, 0x800000010034CF20);
    if (v22)
    {
      v23 = v21;
      sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

      sub_1000DC884(*(v19 + 56) + 40 * v23, &v27);

      v24._countAndFlagsBits = sub_1000DA088();
      String.append(_:)(v24);

      sub_1000F3008(&v27);
      v11 = v31;
      v12 = v32;
      v10 = 7004;
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000EBD84(uint64_t a1@<X8>)
{
  v3 = v1;
  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  v5 = OBJC_IVAR____TtC14softposreaderd5Depot_components;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (!*(v6 + 16))
  {
    goto LABEL_8;
  }

  v7 = *(v1 + v5);

  v8 = sub_1000F5A28(0xD00000000000001CLL, 0x800000010034CD40);
  if ((v9 & 1) == 0)
  {

LABEL_8:
    memset(v34, 0, sizeof(v34));
    v35 = -1;
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);
    v10 = 7002;
LABEL_9:
    v11 = 0xD00000000000001CLL;
    v12 = 0x800000010034CD40;
LABEL_10:
    sub_100020384(v10, v11, v12, 0);
    swift_willThrow();
    goto LABEL_11;
  }

  sub_1000DC884(*(v6 + 56) + 40 * v8, v34);
  sub_100065074(v34, &v31, qword_10039EEE0, &qword_1002C23D8);
  if (v33 > 1u)
  {
    if (v33 == 2)
    {
      sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

      v13 = v31;
      v14 = v32;
      v27 = 0u;
      v28 = 0u;
      LOBYTE(v29) = 3;
      swift_beginAccess();
      sub_10002D0A4(&v27, 0xD00000000000001CLL, 0x800000010034CD40);
      swift_endAccess();
      v36 = v14;
      v13(v30, v1);
      if (!v2)
      {
        v15 = sub_100004074(&qword_1003A2DE0, &qword_1002C6EA8);
        if (swift_dynamicCast())
        {
          sub_100029790(&v27, a1);
          *(&v28 + 1) = v15;
          *&v27 = swift_allocObject();
          sub_10000CCE4(a1, v27 + 16);
          LOBYTE(v29) = 0;
          swift_beginAccess();
          sub_10002D0A4(&v27, 0xD00000000000001CLL, 0x800000010034CD40);
          swift_endAccess();

          goto LABEL_11;
        }

        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        sub_10000BD44(&v27, &qword_1003A3120, &qword_1002C7178);
        *&v27 = 0xD00000000000001CLL;
        *(&v27 + 1) = 0x800000010034CD40;
        v25._countAndFlagsBits = 0x646E65706564203ALL;
        v25._object = 0xEB00000000746E65;
        String.append(_:)(v25);
        sub_100020384(7004, v27, *(&v27 + 1), 0);
        swift_willThrow();
      }

      *&v27 = v13;
      *(&v27 + 1) = v36;
      LOBYTE(v29) = 2;
      swift_beginAccess();

      sub_10002D0A4(&v27, 0xD00000000000001CLL, 0x800000010034CD40);
      swift_endAccess();
      swift_willThrow();

      goto LABEL_11;
    }

    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    v10 = 7003;
    goto LABEL_9;
  }

  if (v33)
  {
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    v31(v30, v16);
    if (!v2)
    {
      v17 = sub_100004074(&qword_1003A2DE0, &qword_1002C6EA8);
      if (swift_dynamicCast())
      {
        sub_100029790(&v27, a1);
        *(&v28 + 1) = v17;
        *&v27 = swift_allocObject();
        sub_10000CCE4(a1, v27 + 16);
        LOBYTE(v29) = 0;
        swift_beginAccess();
        sub_10002D0A4(&v27, 0xD00000000000001CLL, 0x800000010034CD40);
        swift_endAccess();
      }

      else
      {
        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        sub_10000BD44(&v27, &qword_1003A3120, &qword_1002C7178);
        *&v27 = 0xD00000000000001CLL;
        *(&v27 + 1) = 0x800000010034CD40;
        v26._countAndFlagsBits = 0x657065646E69203ALL;
        v26._object = 0xED0000746E65646ELL;
        String.append(_:)(v26);
        sub_100020384(7004, v27, *(&v27 + 1), 0);
        swift_willThrow();
      }
    }

    goto LABEL_11;
  }

  sub_100004074(&qword_1003A2DE0, &qword_1002C6EA8);
  if (swift_dynamicCast())
  {
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    sub_100029790(&v27, a1);
    sub_10000959C(&v31);
LABEL_11:
    swift_beginAccess();
    os_unfair_recursive_lock_unlock();
    swift_endAccess();
    return;
  }

  sub_10000959C(&v31);
  v31 = 0xD00000000000001CLL;
  v32 = 0x800000010034CD40;
  v18._countAndFlagsBits = 8250;
  v18._object = 0xE200000000000000;
  String.append(_:)(v18);
  v19 = *(v1 + v5);
  if (*(v19 + 16))
  {
    v20 = *(v3 + v5);

    v21 = sub_1000F5A28(0xD00000000000001CLL, 0x800000010034CD40);
    if (v22)
    {
      v23 = v21;
      sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

      sub_1000DC884(*(v19 + 56) + 40 * v23, &v27);

      v24._countAndFlagsBits = sub_1000DA088();
      String.append(_:)(v24);

      sub_1000F3008(&v27);
      v11 = v31;
      v12 = v32;
      v10 = 7004;
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000EC3E8(uint64_t a1@<X8>)
{
  v3 = v1;
  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  v5 = OBJC_IVAR____TtC14softposreaderd5Depot_components;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (!*(v6 + 16))
  {
    goto LABEL_8;
  }

  v7 = *(v1 + v5);

  v8 = sub_1000F5A28(0xD000000000000019, 0x800000010034CBB0);
  if ((v9 & 1) == 0)
  {

LABEL_8:
    memset(v34, 0, sizeof(v34));
    v35 = -1;
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);
    v10 = 7002;
LABEL_9:
    v11 = 0xD000000000000019;
    v12 = 0x800000010034CBB0;
LABEL_10:
    sub_100020384(v10, v11, v12, 0);
    swift_willThrow();
    goto LABEL_11;
  }

  sub_1000DC884(*(v6 + 56) + 40 * v8, v34);
  sub_100065074(v34, &v31, qword_10039EEE0, &qword_1002C23D8);
  if (v33 > 1u)
  {
    if (v33 == 2)
    {
      sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

      v13 = v31;
      v14 = v32;
      v27 = 0u;
      v28 = 0u;
      LOBYTE(v29) = 3;
      swift_beginAccess();
      sub_10002D0A4(&v27, 0xD000000000000019, 0x800000010034CBB0);
      swift_endAccess();
      v36 = v14;
      v13(v30, v1);
      if (!v2)
      {
        v15 = sub_100004074(&qword_1003A2D40, &qword_1002C6E00);
        if (swift_dynamicCast())
        {
          sub_100029790(&v27, a1);
          *(&v28 + 1) = v15;
          *&v27 = swift_allocObject();
          sub_10000CCE4(a1, v27 + 16);
          LOBYTE(v29) = 0;
          swift_beginAccess();
          sub_10002D0A4(&v27, 0xD000000000000019, 0x800000010034CBB0);
          swift_endAccess();

          goto LABEL_11;
        }

        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        sub_10000BD44(&v27, &qword_1003A30C8, &qword_1002C7110);
        *&v27 = 0xD000000000000019;
        *(&v27 + 1) = 0x800000010034CBB0;
        v25._countAndFlagsBits = 0x646E65706564203ALL;
        v25._object = 0xEB00000000746E65;
        String.append(_:)(v25);
        sub_100020384(7004, v27, *(&v27 + 1), 0);
        swift_willThrow();
      }

      *&v27 = v13;
      *(&v27 + 1) = v36;
      LOBYTE(v29) = 2;
      swift_beginAccess();

      sub_10002D0A4(&v27, 0xD000000000000019, 0x800000010034CBB0);
      swift_endAccess();
      swift_willThrow();

      goto LABEL_11;
    }

    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    v10 = 7003;
    goto LABEL_9;
  }

  if (v33)
  {
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    v31(v30, v16);
    if (!v2)
    {
      v17 = sub_100004074(&qword_1003A2D40, &qword_1002C6E00);
      if (swift_dynamicCast())
      {
        sub_100029790(&v27, a1);
        *(&v28 + 1) = v17;
        *&v27 = swift_allocObject();
        sub_10000CCE4(a1, v27 + 16);
        LOBYTE(v29) = 0;
        swift_beginAccess();
        sub_10002D0A4(&v27, 0xD000000000000019, 0x800000010034CBB0);
        swift_endAccess();
      }

      else
      {
        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        sub_10000BD44(&v27, &qword_1003A30C8, &qword_1002C7110);
        *&v27 = 0xD000000000000019;
        *(&v27 + 1) = 0x800000010034CBB0;
        v26._countAndFlagsBits = 0x657065646E69203ALL;
        v26._object = 0xED0000746E65646ELL;
        String.append(_:)(v26);
        sub_100020384(7004, v27, *(&v27 + 1), 0);
        swift_willThrow();
      }
    }

    goto LABEL_11;
  }

  sub_100004074(&qword_1003A2D40, &qword_1002C6E00);
  if (swift_dynamicCast())
  {
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    sub_100029790(&v27, a1);
    sub_10000959C(&v31);
LABEL_11:
    swift_beginAccess();
    os_unfair_recursive_lock_unlock();
    swift_endAccess();
    return;
  }

  sub_10000959C(&v31);
  v31 = 0xD000000000000019;
  v32 = 0x800000010034CBB0;
  v18._countAndFlagsBits = 8250;
  v18._object = 0xE200000000000000;
  String.append(_:)(v18);
  v19 = *(v1 + v5);
  if (*(v19 + 16))
  {
    v20 = *(v3 + v5);

    v21 = sub_1000F5A28(0xD000000000000019, 0x800000010034CBB0);
    if (v22)
    {
      v23 = v21;
      sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

      sub_1000DC884(*(v19 + 56) + 40 * v23, &v27);

      v24._countAndFlagsBits = sub_1000DA088();
      String.append(_:)(v24);

      sub_1000F3008(&v27);
      v11 = v31;
      v12 = v32;
      v10 = 7004;
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}