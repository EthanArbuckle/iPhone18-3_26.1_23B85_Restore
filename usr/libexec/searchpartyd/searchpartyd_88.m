uint64_t sub_10093A8E4(uint64_t a1)
{
  v2 = type metadata accessor for String.Encoding();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for PropertyListEncoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  dispatch thunk of PropertyListEncoder.outputFormat.setter();
  v7 = *(a1 + 136);
  v8 = *(a1 + 144);
  v9 = Data.trimmed.getter();
  v11 = v10;
  *&v61 = v9;
  *(&v61 + 1) = v10;
  static String.Encoding.utf8.getter();
  sub_100165078();
  v12 = String.init<A>(bytes:encoding:)();
  v47 = v11;
  v46 = v9;
  if (!v13)
  {
    v12 = Data.hexString.getter();
  }

  v14 = v12;
  v15 = v13;
  v48 = *(a1 + 120);
  sub_1000E0A3C();
  v16 = DataProtocol.intValue.getter();
  v54 = *(a1 + 104);
  v17 = DataProtocol.intValue.getter();
  v19 = *(a1 + 320);
  v18 = *(a1 + 328);
  *&v55 = 0;
  *(&v55 + 1) = v16;
  v20 = *(a1 + 336);
  v21 = *(a1 + 344);
  *&v56 = v17;
  *(&v56 + 1) = &off_101608300;
  *&v57 = v14;
  *(&v57 + 1) = v15;
  v58 = xmmword_10138FDA0;
  *&v59 = v19;
  *(&v59 + 1) = v18;
  *&v60 = v20;
  *(&v60 + 1) = v21;
  v61 = v55;
  v62 = v56;
  v65 = v59;
  v66 = v60;
  v63 = v57;
  v64 = xmmword_10138FDA0;
  sub_100017D5C(v19, v18);
  sub_100017D5C(v20, v21);
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_1000076D4(v22, qword_10177C418);
  sub_1001650CC(&v55, &v48);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  sub_100165128(&v55);
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *&v54 = v26;
    *v25 = 136315138;
    sub_1001650CC(&v55, &v48);
    sub_10107D964();
    v28 = v27;
    v30 = v29;
    sub_100165128(&v55);
    v31 = sub_1000136BC(v28, v30, &v54);

    *(v25 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v23, v24, "BAARKProperties %s", v25, 0xCu);
    sub_100007BAC(v26);
  }

  v50 = v63;
  v51 = v64;
  v52 = v65;
  v53 = v66;
  v48 = v61;
  v49 = v62;
  sub_10016517C();
  v32 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v34 = v33;
  v35 = *(a1 + 216);
  v36 = *(a1 + 208);
  sub_100017D5C(v36, v35);
  sub_100017D5C(v36, v35);
  sub_100017D5C(v32, v34);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.debug.getter();
  sub_100016590(v36, v35);
  sub_100016590(v32, v34);
  if (os_log_type_enabled(v37, v38))
  {
    v45 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *&v54 = v44;
    *v45 = 136315138;
    *&v48 = v36;
    *(&v48 + 1) = v35;
    *&v49 = v32;
    *(&v49 + 1) = v34;
    sub_100017D5C(v36, v35);
    sub_100017D5C(v32, v34);
    v39 = String.init<A>(describing:)();
    v41 = sub_1000136BC(v39, v40, &v54);

    *(v45 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v37, v38, "BAARequestPayload %s", v45, 0xCu);
    sub_100007BAC(v44);
  }

  *&v48 = v36;
  *(&v48 + 1) = v35;
  *&v49 = v32;
  *(&v49 + 1) = v34;
  sub_1001651D0();
  v42 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  sub_100016590(v46, v47);

  sub_100165128(&v55);
  sub_100016590(v36, v35);
  sub_100016590(v32, v34);
  return v42;
}

uint64_t sub_10093AF34(uint64_t a1)
{
  v2 = type metadata accessor for String.Encoding();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for PropertyListEncoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  dispatch thunk of PropertyListEncoder.outputFormat.setter();
  v7 = *(a1 + 112);
  v8 = *(a1 + 120);
  v9 = Data.trimmed.getter();
  v11 = v10;
  *&v61 = v9;
  *(&v61 + 1) = v10;
  static String.Encoding.utf8.getter();
  sub_100165078();
  v12 = String.init<A>(bytes:encoding:)();
  v47 = v11;
  v46 = v9;
  if (!v13)
  {
    v12 = Data.hexString.getter();
  }

  v14 = v12;
  v15 = v13;
  v48 = *(a1 + 96);
  sub_1000E0A3C();
  v16 = DataProtocol.intValue.getter();
  v54 = *(a1 + 80);
  v17 = DataProtocol.intValue.getter();
  v19 = *(a1 + 208);
  v18 = *(a1 + 216);
  *&v55 = 0;
  *(&v55 + 1) = v16;
  v20 = *(a1 + 224);
  v21 = *(a1 + 232);
  *&v56 = v17;
  *(&v56 + 1) = &off_1016083C0;
  *&v57 = v14;
  *(&v57 + 1) = v15;
  v58 = xmmword_10138FDA0;
  *&v59 = v19;
  *(&v59 + 1) = v18;
  *&v60 = v20;
  *(&v60 + 1) = v21;
  v61 = v55;
  v62 = v56;
  v65 = v59;
  v66 = v60;
  v63 = v57;
  v64 = xmmword_10138FDA0;
  sub_100017D5C(v19, v18);
  sub_100017D5C(v20, v21);
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_1000076D4(v22, qword_10177C418);
  sub_1001650CC(&v55, &v48);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  sub_100165128(&v55);
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *&v54 = v26;
    *v25 = 136315138;
    sub_1001650CC(&v55, &v48);
    sub_10107D964();
    v28 = v27;
    v30 = v29;
    sub_100165128(&v55);
    v31 = sub_1000136BC(v28, v30, &v54);

    *(v25 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v23, v24, "BAARKProperties %s", v25, 0xCu);
    sub_100007BAC(v26);
  }

  v50 = v63;
  v51 = v64;
  v52 = v65;
  v53 = v66;
  v48 = v61;
  v49 = v62;
  sub_10016517C();
  v32 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v34 = v33;
  v35 = *(a1 + 152);
  v36 = *(a1 + 144);
  sub_100017D5C(v36, v35);
  sub_100017D5C(v36, v35);
  sub_100017D5C(v32, v34);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.debug.getter();
  sub_100016590(v36, v35);
  sub_100016590(v32, v34);
  if (os_log_type_enabled(v37, v38))
  {
    v45 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *&v54 = v44;
    *v45 = 136315138;
    *&v48 = v36;
    *(&v48 + 1) = v35;
    *&v49 = v32;
    *(&v49 + 1) = v34;
    sub_100017D5C(v36, v35);
    sub_100017D5C(v32, v34);
    v39 = String.init<A>(describing:)();
    v41 = sub_1000136BC(v39, v40, &v54);

    *(v45 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v37, v38, "BAARequestPayload %s", v45, 0xCu);
    sub_100007BAC(v44);
  }

  *&v48 = v36;
  *(&v48 + 1) = v35;
  *&v49 = v32;
  *(&v49 + 1) = v34;
  sub_1001651D0();
  v42 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  sub_100016590(v46, v47);

  sub_100165128(&v55);
  sub_100016590(v36, v35);
  sub_100016590(v32, v34);
  return v42;
}

uint64_t sub_10093B584(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v84 = a2;
  v85 = a3;
  v76 = a1;
  v7 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v86 = &v73 - v9;
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v82 = *(v10 - 8);
  v83 = v10;
  v11 = *(v82 + 64);
  __chkstk_darwin(v10);
  v81 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for OS_dispatch_queue.Attributes();
  v13 = *(*(v79 - 8) + 64);
  __chkstk_darwin(v79);
  v80 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v78 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v77 = &v73 - v20;
  v21 = type metadata accessor for FMNAccountType();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for AirPodsUnpairEndPoint();
  v26 = *(*(v75 - 8) + 64);
  v27 = __chkstk_darwin(v75);
  v29 = &v73 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v31 = &v73 - v30;
  v32 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32);
  v35 = &v73 - v34;
  v36 = swift_allocObject();
  *(v36 + 16) = a4;
  *(v36 + 24) = a5;
  v87 = v36;
  v37 = objc_opt_self();

  v74 = a5;
  v38 = [v37 defaultStore];
  if (v38)
  {
    v39 = v38;
    v40 = [v38 aa_primaryAppleAccount];

    if (v40)
    {

      static os_log_type_t.default.getter();
      if (qword_1016950C8 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_101385D80;
      sub_1000D2A70(v76, v35, &qword_1016980D0, &unk_10138F3B0);
      v42 = String.init<A>(describing:)();
      v44 = v43;
      *(v41 + 56) = &type metadata for String;
      *(v41 + 64) = sub_100008C00();
      *(v41 + 32) = v42;
      *(v41 + 40) = v44;
      os_log(_:dso:log:_:_:)();

      v45 = enum case for FMNAccountType.w2Accessory(_:);
      v46 = *(v22 + 104);
      v46(v25, enum case for FMNAccountType.w2Accessory(_:), v21);
      type metadata accessor for AccountURLComponents();
      swift_allocObject();
      *v31 = sub_1010B32C8(v25);
      v46(&v31[*(v75 + 20)], v45, v21);
      v47 = type metadata accessor for SearchPartyURLSessionFactory(0);
      v48 = *(v47 + 48);
      v49 = *(v47 + 52);
      swift_allocObject();
      v50 = type metadata accessor for FMNMockingPreferences();
      (*(*(v50 - 8) + 56))(v77, 1, 1, v50);
      v51 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
      v52 = type metadata accessor for ServerInteractionController(0);
      v53 = *(v52 + 48);
      v54 = *(v52 + 52);
      v55 = swift_allocObject();
      sub_10093C940(v31, v29, type metadata accessor for AirPodsUnpairEndPoint);
      v56 = sub_10062156C(v29, v51, v55);
      sub_1000BC488();
      static DispatchQoS.unspecified.getter();
      v88 = _swiftEmptyArrayStorage;
      sub_10093C818(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
      sub_1000BC4D4(&unk_101695580, &qword_101385D90);
      sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v82 + 104))(v81, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v83);
      v57 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v58 = type metadata accessor for TaskPriority();
      v59 = v86;
      (*(*(v58 - 8) + 56))(v86, 1, 1, v58);
      v60 = swift_allocObject();
      *(v60 + 16) = 0;
      *(v60 + 24) = 0;
      v61 = v84;
      v62 = v85;
      v63 = v84[3];
      *(v60 + 64) = v84[2];
      *(v60 + 80) = v63;
      *(v60 + 96) = v61[4];
      v64 = v61[1];
      *(v60 + 32) = *v61;
      *(v60 + 48) = v64;
      *(v60 + 112) = v62;
      *(v60 + 120) = v57;
      v65 = v87;
      *(v60 + 128) = sub_10093E444;
      *(v60 + 136) = v65;
      *(v60 + 144) = v56;
      sub_1009399EC(v61, &v88);

      v66 = v57;

      sub_10025EDD4(0, 0, v59, &unk_1013C82B8, v60);

      sub_10093C9A8(v31, type metadata accessor for AirPodsUnpairEndPoint);
    }

    else
    {
      if (qword_1016950D0 != -1)
      {
        swift_once();
      }

      v67 = type metadata accessor for Logger();
      sub_1000076D4(v67, qword_10177C418);
      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&_mh_execute_header, v68, v69, "iCloud not signed in: Skip pairing lock removal.", v70, 2u);
      }

      swift_beginAccess();
      v71 = *(a4 + 16);
      *(a4 + 16) = 0;

      dispatch_group_leave(v74);
    }
  }

  else
  {

    __break(1u);
  }

  return result;
}

void sub_10093BEA0(uint64_t a1, _OWORD *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v88 = a2;
  v89 = a3;
  v78 = a1;
  v9 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v90 = &v74 - v11;
  v12 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v86 = *(v12 - 8);
  v87 = v12;
  v13 = *(v86 + 64);
  __chkstk_darwin(v12);
  v85 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for OS_dispatch_queue.Attributes();
  v15 = *(*(v83 - 8) + 64);
  __chkstk_darwin(v83);
  v84 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v82 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v80 = &v74 - v22;
  v23 = type metadata accessor for FMNAccountType();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = &v74 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for AirPodsUnpairEndPoint();
  v28 = *(*(v77 - 8) + 64);
  v29 = __chkstk_darwin(v77);
  v79 = &v74 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v81 = (&v74 - v31);
  v32 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32);
  v35 = &v74 - v34;
  v36 = swift_allocObject();
  v36[2] = a4;
  v36[3] = a5;
  v36[4] = a6;
  v37 = objc_opt_self();
  v75 = a4;
  v76 = a5;

  v38 = [v37 defaultStore];
  if (v38)
  {
    v39 = v38;
    v40 = [v38 aa_primaryAppleAccount];

    if (v40)
    {

      static os_log_type_t.default.getter();
      if (qword_1016950C8 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_101385D80;
      sub_1000D2A70(v78, v35, &qword_1016980D0, &unk_10138F3B0);
      v42 = String.init<A>(describing:)();
      v44 = v43;
      *(v41 + 56) = &type metadata for String;
      *(v41 + 64) = sub_100008C00();
      *(v41 + 32) = v42;
      *(v41 + 40) = v44;
      os_log(_:dso:log:_:_:)();

      v45 = enum case for FMNAccountType.w2Accessory(_:);
      v46 = *(v24 + 104);
      v46(v27, enum case for FMNAccountType.w2Accessory(_:), v23);
      type metadata accessor for AccountURLComponents();
      swift_allocObject();
      v47 = sub_1010B32C8(v27);
      v48 = v81;
      *v81 = v47;
      v46((v48 + *(v77 + 20)), v45, v23);
      v49 = type metadata accessor for SearchPartyURLSessionFactory(0);
      v50 = *(v49 + 48);
      v51 = *(v49 + 52);
      swift_allocObject();
      v52 = type metadata accessor for FMNMockingPreferences();
      (*(*(v52 - 8) + 56))(v80, 1, 1, v52);
      v53 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
      v54 = type metadata accessor for ServerInteractionController(0);
      v55 = *(v54 + 48);
      v56 = *(v54 + 52);
      v57 = swift_allocObject();
      v58 = v79;
      sub_10093C940(v48, v79, type metadata accessor for AirPodsUnpairEndPoint);
      v59 = sub_10062156C(v58, v53, v57);
      sub_1000BC488();
      static DispatchQoS.unspecified.getter();
      v91 = _swiftEmptyArrayStorage;
      sub_10093C818(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
      sub_1000BC4D4(&unk_101695580, &qword_101385D90);
      sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v86 + 104))(v85, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v87);
      v60 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v61 = type metadata accessor for TaskPriority();
      v62 = v90;
      (*(*(v61 - 8) + 56))(v90, 1, 1, v61);
      v63 = swift_allocObject();
      *(v63 + 16) = 0;
      *(v63 + 24) = 0;
      v64 = v88;
      v65 = v89;
      v66 = v88[3];
      *(v63 + 64) = v88[2];
      *(v63 + 80) = v66;
      *(v63 + 96) = v64[4];
      v67 = v64[1];
      *(v63 + 32) = *v64;
      *(v63 + 48) = v67;
      *(v63 + 112) = v65;
      *(v63 + 120) = v60;
      *(v63 + 128) = sub_10093E438;
      *(v63 + 136) = v36;
      *(v63 + 144) = v59;
      sub_1009399EC(v64, &v91);

      v68 = v60;

      sub_10025EDD4(0, 0, v62, &unk_1013C82B0, v63);

      sub_10093C9A8(v48, type metadata accessor for AirPodsUnpairEndPoint);
    }

    else
    {
      if (qword_1016950D0 != -1)
      {
        swift_once();
      }

      v69 = type metadata accessor for Logger();
      sub_1000076D4(v69, qword_10177C418);
      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        *v72 = 0;
        _os_log_impl(&_mh_execute_header, v70, v71, "iCloud not signed in: Skip pairing lock removal.", v72, 2u);
      }

      Transaction.capture()();
      swift_beginAccess();
      v73 = *(a6 + 16);
      *(a6 + 16) = 0;

      dispatch_group_leave(v75);
    }
  }

  else
  {

    __break(1u);
  }
}

uint64_t sub_10093C818(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10093C898()
{
  result = qword_1016AECD8;
  if (!qword_1016AECD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AECD8);
  }

  return result;
}

unint64_t sub_10093C8EC()
{
  result = qword_1016AECE0;
  if (!qword_1016AECE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AECE0);
  }

  return result;
}

uint64_t sub_10093C940(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10093C9A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10093CA08()
{
  result = qword_1016AECF0;
  if (!qword_1016AECF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AECF0);
  }

  return result;
}

unint64_t sub_10093CA5C()
{
  result = qword_1016AECF8;
  if (!qword_1016AECF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AECF8);
  }

  return result;
}

unint64_t sub_10093CAB0()
{
  result = qword_1016AED00;
  if (!qword_1016AED00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AED00);
  }

  return result;
}

uint64_t sub_10093CB04(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[32];
  v7 = v1[33];
  v8 = v1[34];
  v9 = v1[35];
  v10 = v1[36];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100014744;

  return sub_100937F54(a1, v4, v5, (v1 + 4), v6, v7, v8, v9);
}

uint64_t sub_10093CC28(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x644974726170 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74617453636E7973 && a2 == 0xEA00000000007375 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657264644163616DLL && a2 == 0xEA00000000007373 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x54676E6972696170 && a2 == 0xEB00000000657079)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_10093CD98(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684628325 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x644970696863 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6449616E6D66 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x49746375646F7270 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6449726F646E6576 && a2 == 0xE800000000000000)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_10093CF98(const void *a1, uint64_t a2)
{
  v107[3] = &type metadata for AirPodsSWPairingCheckData;
  v107[4] = &off_10163E128;
  v4 = swift_allocObject();
  v107[0] = v4;
  memcpy(v4 + 2, a1, 0x150uLL);
  v105 = type metadata accessor for AirPodsSWPairingLockCheckResponse();
  v106 = &off_101657920;
  v5 = sub_1000280DC(v104);
  sub_10093C940(a2, v5, type metadata accessor for AirPodsSWPairingLockCheckResponse);
  sub_10093DC08(a1, v102);
  if (qword_1016950E0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177C448);
  sub_10001F280(v107, v102);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v100 = v10;
    *v9 = 136315138;
    v11 = sub_1000035D0(v102, v103);
    v12 = v11[34];
    v13 = v11[35];
    sub_100017D5C(v12, v13);
    v14 = Data.hexString.getter();
    v16 = v15;
    sub_100016590(v12, v13);
    sub_100007BAC(v102);
    v17 = sub_1000136BC(v14, v16, &v100);

    *(v9 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v7, v8, "nonce: %s", v9, 0xCu);
    sub_100007BAC(v10);
  }

  else
  {

    sub_100007BAC(v102);
  }

  sub_10001F280(v104, v102);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v100 = v21;
    *v20 = 136315138;
    v22 = sub_1000035D0(v102, v103);
    v23 = *v22;
    v24 = v22[1];
    sub_100017D5C(*v22, v24);
    v25 = Data.hexString.getter();
    v27 = v26;
    sub_100016590(v23, v24);
    sub_100007BAC(v102);
    v28 = sub_1000136BC(v25, v27, &v100);

    *(v20 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v18, v19, "serialNumber: %s", v20, 0xCu);
    sub_100007BAC(v21);
  }

  else
  {

    sub_100007BAC(v102);
  }

  sub_10001F280(v104, v102);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v100 = v32;
    *v31 = 136315138;
    v33 = sub_1000035D0(v102, v103);
    v34 = v33[2];
    v35 = v33[3];
    sub_100017D5C(v34, v35);
    v36 = Data.hexString.getter();
    v38 = v37;
    sub_100016590(v34, v35);
    sub_100007BAC(v102);
    v39 = sub_1000136BC(v36, v38, &v100);

    *(v31 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v29, v30, "altSerialNumber: %s", v31, 0xCu);
    sub_100007BAC(v32);
  }

  else
  {

    sub_100007BAC(v102);
  }

  sub_10001F280(v107, v102);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v100 = v43;
    *v42 = 136315138;
    v44 = sub_1000035D0(v102, v103);
    v45 = v44[24];
    v46 = v44[25];
    sub_100017D5C(v45, v46);
    v47 = Data.hexString.getter();
    v49 = v48;
    sub_100016590(v45, v46);
    sub_100007BAC(v102);
    v50 = sub_1000136BC(v47, v49, &v100);

    *(v42 + 4) = v50;
    _os_log_impl(&_mh_execute_header, v40, v41, "SeedK1: %s", v42, 0xCu);
    sub_100007BAC(v43);
  }

  else
  {

    sub_100007BAC(v102);
  }

  sub_10001F280(v107, v102);
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v100 = v54;
    *v53 = 136315138;
    v55 = sub_1000035D0(v102, v103);
    v56 = *v55;
    v57 = v55[1];
    sub_100017D5C(*v55, v57);
    v58 = Data.hexString.getter();
    v60 = v59;
    sub_100016590(v56, v57);
    sub_100007BAC(v102);
    v61 = sub_1000136BC(v58, v60, &v100);

    *(v53 + 4) = v61;
    _os_log_impl(&_mh_execute_header, v51, v52, "H1 (hashed C2): %s", v53, 0xCu);
    sub_100007BAC(v54);
  }

  else
  {

    sub_100007BAC(v102);
  }

  sub_10001F280(v104, v102);
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v100 = v65;
    *v64 = 136315138;
    v66 = sub_1000035D0(v102, v103);
    v67 = v66[4];
    v68 = v66[5];
    sub_100017D5C(v67, v68);
    v69 = Data.hexString.getter();
    v71 = v70;
    sub_100016590(v67, v68);
    sub_100007BAC(v102);
    v72 = sub_1000136BC(v69, v71, &v100);

    *(v64 + 4) = v72;
    _os_log_impl(&_mh_execute_header, v62, v63, "SeedS: %s", v64, 0xCu);
    sub_100007BAC(v65);
  }

  else
  {

    sub_100007BAC(v102);
  }

  v74 = v4[37];
  v100 = v4[36];
  v73 = v100;
  v101 = v74;
  v75 = sub_1000035D0(v104, v105);
  v76 = *v75;
  v77 = v75[1];
  sub_100017D5C(v73, v74);
  sub_100017D5C(v76, v77);
  Data.append(_:)();
  sub_100016590(v76, v77);
  v78 = sub_1000035D0(v104, v105);
  v79 = v78[2];
  v80 = v78[3];
  sub_100017D5C(v79, v80);
  Data.append(_:)();
  sub_100016590(v79, v80);
  v81 = v4[26];
  v82 = v4[27];
  sub_100017D5C(v81, v82);
  Data.append(_:)();
  sub_100016590(v81, v82);
  v84 = v4[2];
  v83 = v4[3];
  sub_100017D5C(v84, v83);
  Data.append(_:)();
  sub_100016590(v84, v83);
  v85 = sub_1000035D0(v104, v105);
  v86 = v85[4];
  v87 = v85[5];
  sub_100017D5C(v86, v87);
  Data.append(_:)();
  sub_100016590(v86, v87);
  v88 = v100;
  v89 = v101;
  sub_100017D5C(v100, v101);
  v90 = Logger.logObject.getter();
  v91 = static os_log_type_t.debug.getter();
  sub_100016590(v88, v89);
  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v102[0] = v93;
    *v92 = 136315138;
    v94 = Data.hexString.getter();
    v96 = sub_1000136BC(v94, v95, v102);

    *(v92 + 4) = v96;
    _os_log_impl(&_mh_execute_header, v90, v91, "dataForSignatureVerification: %s", v92, 0xCu);
    sub_100007BAC(v93);
  }

  swift_beginAccess();
  v97 = v100;
  v98 = v101;
  sub_100017D5C(v100, v101);
  sub_100016590(v97, v98);
  sub_100007BAC(v107);
  sub_100007BAC(v104);
  return v97;
}

uint64_t sub_10093DAF4(uint64_t a1)
{
  v16 = *(v1 + 16);
  v14 = *(v1 + 24);
  v4 = *(v1 + 368);
  v5 = *(v1 + 376);
  v6 = *(v1 + 384);
  v7 = *(v1 + 392);
  v13 = *(v1 + 400);
  v8 = *(v1 + 416);
  v9 = *(v1 + 424);
  v10 = *(v1 + 432);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100014744;

  return sub_10092C15C(a1, v16, v14, v1 + 32, v4, v5, v6, v7);
}

uint64_t sub_10093DEE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[30];
  v7 = v1[31];
  v8 = v1[32];
  v9 = v1[33];
  v10 = v1[34];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100014650;

  return sub_1009350AC(a1, v4, v5, (v1 + 4), v6, v7, v8, v9);
}

uint64_t sub_10093E170(uint64_t a1)
{
  v4 = *(v1 + 24);
  v14 = *(v1 + 16);
  v5 = *(v1 + 352);
  v6 = *(v1 + 360);
  v7 = *(v1 + 368);
  v8 = *(v1 + 376);
  v13 = *(v1 + 384);
  v10 = *(v1 + 400);
  v9 = *(v1 + 408);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100014744;

  return sub_100930448(a1, v14, v4, v1 + 32, v5, v6, v7, v8);
}

uint64_t sub_10093E44C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 304);
  v7 = *(v1 + 312);
  v8 = *(v1 + 320);
  v9 = *(v1 + 328);
  v13 = *(v1 + 336);
  v10 = *(v1 + 352);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100014744;

  return sub_100936718(a1, v4, v5, v1 + 32, v6, v7, v8, v9);
}

uint64_t sub_10093E600(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10093E6D4(uint64_t a1)
{
  v17 = *(v1 + 16);
  v15 = *(v1 + 24);
  v4 = *(v1 + 384);
  v5 = *(v1 + 392);
  v6 = *(v1 + 400);
  v7 = *(v1 + 408);
  v13 = *(v1 + 432);
  v14 = *(v1 + 416);
  v8 = *(v1 + 448);
  v9 = *(v1 + 456);
  v10 = *(v1 + 464);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100014744;

  return sub_1009287B4(a1, v17, v15, v1 + 32, v4, v5, v6, v7);
}

uint64_t sub_10093E86C(uint64_t a1)
{
  v2 = *(v1 + 400);
  v3 = *(v1 + 408);
  return sub_10092950C(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), (v1 + 48));
}

uint64_t sub_10093E9D4(void (*a1)(void))
{
  v3 = *(v1 + 24);

  a1(*(v1 + 32));

  return _swift_deallocObject(v1, 40);
}

__n128 sub_10093EAAC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t sub_10093EAE8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 208))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10093EB44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 200) = 0;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 208) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 208) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_10093EBE4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 320))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 168);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10093EC2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 312) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 320) = 1;
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
      *(result + 168) = (a2 - 1);
      return result;
    }

    *(result + 320) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10093ECD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 336))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 168);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10093ED18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 328) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 336) = 1;
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
      *(result + 168) = (a2 - 1);
      return result;
    }

    *(result + 336) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10093EDC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

uint64_t sub_10093EDFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 224))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10093EE58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 224) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 224) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_10093EF4C()
{
  sub_1002359B8(319, &qword_10169A330);
  if (v0 <= 0x3F)
  {
    sub_10093F030(319, &qword_1016B1C20, &type metadata accessor for UUID);
    if (v1 <= 0x3F)
    {
      sub_1002359B8(319, &qword_1016BD350);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10093F030(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_10093F09C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 272))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10093F0F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 264) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 272) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 272) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_10093F1A4()
{
  result = qword_1016AEDD8;
  if (!qword_1016AEDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AEDD8);
  }

  return result;
}

unint64_t sub_10093F1FC()
{
  result = qword_1016AEDE0;
  if (!qword_1016AEDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AEDE0);
  }

  return result;
}

unint64_t sub_10093F254()
{
  result = qword_1016AEDE8;
  if (!qword_1016AEDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AEDE8);
  }

  return result;
}

unint64_t sub_10093F2A8()
{
  result = qword_1016AEDF8;
  if (!qword_1016AEDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AEDF8);
  }

  return result;
}

unint64_t sub_10093F2FC()
{
  result = qword_1016AEE00;
  if (!qword_1016AEE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AEE00);
  }

  return result;
}

unint64_t sub_10093F350()
{
  result = qword_1016AEE10;
  if (!qword_1016AEE10)
  {
    sub_1000BC580(&qword_1016AEE08, &qword_1013CA1E8);
    sub_10093C818(&qword_1016AEE18, type metadata accessor for AirPodsUnpairData.DeviceUnpairData);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AEE10);
  }

  return result;
}

unint64_t sub_10093F404()
{
  result = qword_1016AEE28;
  if (!qword_1016AEE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AEE28);
  }

  return result;
}

unint64_t sub_10093F48C()
{
  result = qword_1016AEE30;
  if (!qword_1016AEE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AEE30);
  }

  return result;
}

unint64_t sub_10093F4E4()
{
  result = qword_1016AEE38;
  if (!qword_1016AEE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AEE38);
  }

  return result;
}

unint64_t sub_10093F53C()
{
  result = qword_1016AEE40;
  if (!qword_1016AEE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AEE40);
  }

  return result;
}

unint64_t sub_10093F594()
{
  result = qword_1016AEE48;
  if (!qword_1016AEE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AEE48);
  }

  return result;
}

unint64_t sub_10093F5EC()
{
  result = qword_1016AEE50;
  if (!qword_1016AEE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AEE50);
  }

  return result;
}

unint64_t sub_10093F644()
{
  result = qword_1016AEE58;
  if (!qword_1016AEE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AEE58);
  }

  return result;
}

unint64_t sub_10093F69C()
{
  result = qword_1016AEE60;
  if (!qword_1016AEE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AEE60);
  }

  return result;
}

unint64_t sub_10093F6F0()
{
  result = qword_1016AEE68;
  if (!qword_1016AEE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AEE68);
  }

  return result;
}

uint64_t sub_10093F8F4()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return swift_deallocClassInstance();
}

void *sub_10093F960(uint64_t a1, uint64_t a2)
{
  v2[6] = a2;
  v2[4] = _swiftEmptyArrayStorage;
  v2[5] = a1;
  v3 = sub_1000BC4D4(&qword_1016AF068, &qword_1013CA5E8);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();

  v2[2] = CurrentValueSubject.init(_:)();

  v6 = CurrentValueSubject.eraseToAnyCurrentValuePublisher()();

  v2[3] = v6;
  return v2;
}

id sub_10093FA28()
{
  v1 = v0;
  My = type metadata accessor for Feature.FindMy();
  v17 = My;
  v18 = sub_10004521C();
  v3 = sub_1000280DC(&v16._countAndFlagsBits);
  (*(*(My - 8) + 104))(v3, enum case for Feature.FindMy.spPlaySoundAll(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(&v16._countAndFlagsBits);
  if (My)
  {
    static os_log_type_t.default.getter();
    if (qword_101694760 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_21;
  }

  v4 = v1[6];
  AnyCurrentValuePublisher.value.getter();
  if (LOBYTE(v16._countAndFlagsBits) == 1)
  {
    result = MobileGestalt_get_current_device();
    if (!result)
    {
      __break(1u);
      goto LABEL_24;
    }

    v6 = result;
    v7 = MobileGestalt_copy_productType_obj();

    if (v7)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v8 = String.lowercased()();

    v16 = v8;
    sub_100940340();
    sub_1000DF96C();
    static PartialMatchCase<>.first(containing:)();

    if ((v15 & 1) == 0)
    {
      static os_log_type_t.default.getter();
      if (qword_101694760 == -1)
      {
        goto LABEL_19;
      }

      goto LABEL_22;
    }
  }

  v9 = v1[5];
  AnyCurrentValuePublisher.value.getter();
  if (v16._countAndFlagsBits != 1)
  {
    goto LABEL_16;
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v10 = result;
    v11 = MobileGestalt_copy_productType_obj();

    if (v11)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v12 = String.lowercased()();

    v16 = v12;
    sub_100940340();
    sub_1000DF96C();
    static PartialMatchCase<>.first(containing:)();

    if (v15)
    {
LABEL_16:
      static os_log_type_t.default.getter();
      if (qword_101694760 == -1)
      {
LABEL_17:
        os_log(_:dso:log:_:_:)();
        v13 = v1[2];
        LOBYTE(v16._countAndFlagsBits) = 0;
        return CurrentValueSubject.send(_:)();
      }

LABEL_21:
      swift_once();
      goto LABEL_17;
    }

    static os_log_type_t.default.getter();
    if (qword_101694760 == -1)
    {
LABEL_19:
      os_log(_:dso:log:_:_:)();
      v14 = v1[2];
      LOBYTE(v16._countAndFlagsBits) = 1;
      return CurrentValueSubject.send(_:)();
    }

LABEL_22:
    swift_once();
    goto LABEL_19;
  }

LABEL_24:
  __break(1u);
  return result;
}

id sub_10093FE18()
{
  v1 = v0;
  v2 = *(v0 + 48);
  AnyCurrentValuePublisher.publisher.getter();
  swift_allocObject();
  swift_weakInit();
  sub_1000BC4D4(&unk_1016B2A90, &unk_10138CBC0);
  sub_1000041A4(&qword_101697B80, &unk_1016B2A90, &unk_10138CBC0);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  sub_1000BC4D4(&qword_101697BB0, &qword_1013C1790);
  sub_1000041A4(&qword_101697BB8, &qword_101697BB0, &qword_1013C1790);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  v3 = *(v1 + 40);
  AnyCurrentValuePublisher.publisher.getter();
  swift_allocObject();
  swift_weakInit();
  sub_1000BC4D4(&qword_10169B790, &unk_101395270);
  sub_1000041A4(&qword_10169B798, &qword_10169B790, &unk_101395270);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  return sub_10093FA28();
}

uint64_t sub_100940080()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10093FA28();
  }

  return result;
}

Swift::Int sub_1009400D8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10094013C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100940188@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10160C9C0, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_100940204()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);
}

uint64_t sub_100940234()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  return swift_deallocClassInstance();
}

unint64_t sub_1009402E4()
{
  result = qword_1016AF060;
  if (!qword_1016AF060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AF060);
  }

  return result;
}

unint64_t sub_100940340()
{
  result = qword_1016AF070;
  if (!qword_1016AF070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AF070);
  }

  return result;
}

unint64_t sub_1009403EC()
{
  result = qword_1016AF088;
  if (!qword_1016AF088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AF088);
  }

  return result;
}

unint64_t sub_100940444()
{
  result = qword_1016AF090;
  if (!qword_1016AF090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AF090);
  }

  return result;
}

unint64_t sub_10094049C()
{
  result = qword_1016AF098;
  if (!qword_1016AF098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AF098);
  }

  return result;
}

uint64_t sub_1009404F0()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177B718);
  sub_1000076D4(v0, qword_10177B718);
  return Logger.init(subsystem:category:)();
}

NSString sub_10094059C()
{
  result = String._bridgeToObjectiveC()();
  qword_10177B730 = result;
  return result;
}

uint64_t sub_1009405D4()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v47 = v1;
  v48 = v2;
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v46 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS.QoSClass();
  v42 = *(v5 - 8);
  v43 = v5;
  v6 = *(v42 + 64);
  __chkstk_darwin(v5);
  v41 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v10 = type metadata accessor for DispatchQoS();
  v44 = *(v10 - 8);
  v45 = v10;
  v11 = *(v44 + 64);
  __chkstk_darwin(v10);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v14 = *(v38 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v38);
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 16) = _swiftEmptyArrayStorage;
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v35[2] = "erver response. Error - %@";
  v37 = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v36 = *(v14 + 104);
  v36(v17);
  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  v35[1] = sub_100946848(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
  v35[0] = sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  v40 = &protocol conformance descriptor for [A];
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v18 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v19 = v38;
  v20 = v39;
  *(v39 + 24) = v18;
  (v36)(v17, v37, v19);
  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v21 = v13;
  *(v20 + 32) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  PressuredExitTransactionManager.init()();
  *(v20 + OBJC_IVAR____TtC12searchpartyd27ServerConfigurationProvider_rolesUpdateInProgress) = 0;
  *(v20 + OBJC_IVAR____TtC12searchpartyd27ServerConfigurationProvider_configurationUpdateInProgress) = 0;
  *(v20 + OBJC_IVAR____TtC12searchpartyd27ServerConfigurationProvider_macConfigUpdateInProgress) = 0;
  v22 = swift_allocObject();
  v22[2] = v20;
  v22[3] = sub_100940DB4;
  v22[4] = 0;

  unsafeFromAsyncTask<A>(_:)();

  v23 = [objc_opt_self() defaultCenter];
  v24 = swift_allocObject();
  swift_weakInit();
  v54 = sub_100946838;
  v55 = v24;
  aBlock = _NSConcreteStackBlock;
  v51 = 1107296256;
  v52 = sub_100F0FA50;
  v53 = &unk_10163ED68;
  v25 = _Block_copy(&aBlock);

  v26 = [v23 addObserverForName:NSCurrentLocaleDidChangeNotification object:0 queue:0 usingBlock:v25];
  _Block_release(v25);
  swift_unknownObjectRelease();

  v28 = v41;
  v27 = v42;
  v29 = v43;
  (*(v42 + 104))(v41, enum case for DispatchQoS.QoSClass.default(_:), v43);
  v30 = static OS_dispatch_queue.global(qos:)();
  (*(v27 + 8))(v28, v29);
  v54 = sub_100946840;
  v55 = v20;
  aBlock = _NSConcreteStackBlock;
  v51 = 1107296256;
  v52 = sub_100006684;
  v53 = &unk_10163ED90;
  v31 = _Block_copy(&aBlock);

  static DispatchQoS.unspecified.getter();
  v49 = _swiftEmptyArrayStorage;
  sub_100946848(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v33 = v46;
  v32 = v47;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v31);

  (*(v48 + 8))(v33, v32);
  (*(v44 + 8))(v21, v45);

  return v20;
}

uint64_t sub_100940DB4()
{
  if (qword_101694AC8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000076D4(v0, qword_10177B718);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Language change notification received. Exiting at next opportunity.", v3, 2u);
  }

  return _xpc_transaction_exit_clean();
}

uint64_t sub_100940E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v5 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  v4[5] = swift_task_alloc();
  v6 = async function pointer to daemon.getter[1];
  v7 = swift_task_alloc();
  v4[6] = v7;
  *v7 = v4;
  v7[1] = sub_100940F6C;

  return daemon.getter();
}

uint64_t sub_100940F6C(uint64_t a1)
{
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = a1;

  type metadata accessor for Daemon();
  sub_100946848(&qword_1016969E0, &type metadata accessor for Daemon);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1009410C4, v5, v4);
}

uint64_t sub_1009410C4()
{
  v1 = *(v0 + 56);
  *(v0 + 64) = Daemon.darwinNotificationHandler.getter();

  return _swift_task_switch(sub_100941138, 0, 0);
}

uint64_t sub_100941138()
{
  if (qword_101694AD0 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = qword_10177B730;
  v3 = swift_allocObject();
  v0[9] = v3;
  swift_weakInit();
  v4 = *(&async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:) + 1);
  v8 = (&async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:) + async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:));

  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_100941270;
  v6 = v0[8];

  return v8(v2, &unk_1013CA848, v3);
}

uint64_t sub_100941270(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 88) = a1;

  return _swift_task_switch(sub_100941394, 0, 0);
}

uint64_t sub_100941394()
{
  v1 = v0[11];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  v5 = type metadata accessor for TaskPriority();
  v0[12] = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 56);
  v0[13] = v7;
  v0[14] = (v6 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v7(v2, 1, 1, v5);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v1;

  sub_100BB9ADC(0, 0, v2, &unk_1013CA858, v8);

  sub_10022D788(v2);
  v9 = swift_allocObject();
  v0[15] = v9;
  *(v9 + 16) = v4;
  *(v9 + 24) = v3;
  v10 = *(&async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:) + 1);
  v14 = (&async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:) + async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:));

  v11 = swift_task_alloc();
  v0[16] = v11;
  *v11 = v0;
  v11[1] = sub_10094155C;
  v12 = v0[8];

  return v14(0xD00000000000002BLL, 0x80000001013662A0, &unk_1013CA868, v9);
}

uint64_t sub_10094155C(uint64_t a1)
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 136) = a1;

  return _swift_task_switch(sub_10094167C, 0, 0);
}

uint64_t sub_10094167C()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 24);
  (*(v0 + 104))(v4, 1, 1, *(v0 + 96));
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v1;

  sub_100BB9ADC(0, 0, v4, &unk_1013CA878, v6);

  sub_10022D788(v4);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  *(v0 + 144) = v8;
  v10 = swift_allocObject();
  *(v0 + 152) = v10;
  *(v10 + 16) = v5;
  *(v10 + 24) = v3;
  v11 = *(&async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:) + 1);
  v15 = (&async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:) + async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:));

  v12 = swift_task_alloc();
  *(v0 + 160) = v12;
  *v12 = v0;
  v12[1] = sub_100941818;
  v13 = *(v0 + 64);

  return v15(v7, v9, &unk_1013CA888, v10);
}

uint64_t sub_100941818(uint64_t a1)
{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 144);
  v6 = *v1;
  *(*v1 + 168) = a1;

  return _swift_task_switch(sub_100941954, 0, 0);
}

uint64_t sub_100941954()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 136);
  v3 = *(v0 + 112);
  v4 = *(v0 + 88);
  v5 = *(v0 + 64);
  v6 = *(v0 + 40);
  (*(v0 + 104))(v6, 1, 1, *(v0 + 96));
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v1;

  sub_100BB9ADC(0, 0, v6, &unk_1013CA898, v7);

  sub_10022D788(v6);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100941A88()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100941FE8();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100941B14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return _swift_task_switch(sub_100941B34, 0, 0);
}

uint64_t sub_100941B34()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100941B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return _swift_task_switch(sub_100946D0C, 0, 0);
}

uint64_t sub_100941BB8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100941FE8();
  }

  return result;
}

uint64_t sub_100941C10(uint64_t a1)
{
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v36 - v8;
  v10 = [objc_opt_self() standardUserDefaults];
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 stringForKey:v11];

  if (v12)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  static Locale.current.getter();
  v16 = Locale.languageCode.getter();
  v18 = v17;
  v19 = *(v3 + 8);
  result = v19(v9, v2);
  if (v18)
  {
    if (v15)
    {
      if (v16 == v13 && v18 == v15)
      {
      }

      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v22)
      {
      }
    }

    else
    {
    }
  }

  else if (!v15)
  {
    return result;
  }

  v37 = v13;
  if (qword_101694AC8 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_1000076D4(v23, qword_10177B718);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v36[0] = swift_slowAlloc();
    v40 = v36[0];
    *v26 = 136446466;
    static Locale.current.getter();
    v27 = Locale.languageCode.getter();
    v36[1] = a1;
    v29 = v28;
    v19(v7, v2);
    v38 = v27;
    v39 = v29;
    sub_1000BC4D4(&qword_1016A0AC0, &unk_1013926A0);
    v30 = String.init<A>(describing:)();
    v32 = sub_1000136BC(v30, v31, &v40);

    *(v26 + 4) = v32;
    *(v26 + 12) = 2082;
    v38 = v37;
    v39 = v15;
    v33 = String.init<A>(describing:)();
    v35 = sub_1000136BC(v33, v34, &v40);

    *(v26 + 14) = v35;
    _os_log_impl(&_mh_execute_header, v24, v25, "Current locale (%{public}s) does not match last one we know (%{public}s). Updating configuration.", v26, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  return sub_100941FE8();
}

uint64_t sub_100941FE8()
{
  v1 = v0;
  v2 = type metadata accessor for SystemInfo.DeviceLockState();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v22[-v8];
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *(v1 + 24);
  *v14 = v15;
  (*(v11 + 104))(v14, enum case for DispatchPredicate.notOnQueue(_:), v10);
  v16 = v15;
  v17 = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v14, v10);
  if ((v17 & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  static SystemInfo.lockState.getter();
  (*(v3 + 104))(v7, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v2);
  sub_100946848(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState);
  v18 = dispatch thunk of static Equatable.== infix(_:_:)();
  v19 = *(v3 + 8);
  v19(v7, v2);
  v19(v9, v2);
  if (v18)
  {
    static os_log_type_t.default.getter();
    if (qword_101695008 == -1)
    {
      return os_log(_:dso:log:_:_:)();
    }

    goto LABEL_10;
  }

  OS_dispatch_queue.sync<A>(execute:)();
  if (v22[15] == 1)
  {
    type metadata accessor for Transaction();
    static Transaction.named<A>(_:with:)();
    v20 = sub_100945DA0();
    *&v22[-32] = __chkstk_darwin(v20);
    *&v22[-24] = v1;
    *&v22[-16] = v16;
    static Transaction.named<A>(_:with:)();
  }

  static os_log_type_t.default.getter();
  if (qword_101695008 != -1)
  {
LABEL_10:
    swift_once();
  }

  return os_log(_:dso:log:_:_:)();
}

uint64_t sub_100942414(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a3;
  v7[4] = a4;

  v8 = a4;
  Future.addFailure(block:)();

  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a3;
  v9[4] = v8;

  v10 = v8;
  Future.addSuccess(block:)();
}

uint64_t sub_100942514(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v28 = a4;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v6 - 8);
  v7 = *(v27 + 64);
  __chkstk_darwin(v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v25 = *(v10 - 8);
  v26 = v10;
  v11 = *(v25 + 64);
  __chkstk_darwin(v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  Transaction.capture()();
  v24[1] = static os_log_type_t.error.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10138BBE0;
  aBlock[0] = *a3;
  sub_1000BC4D4(&qword_1016AF250, &qword_1013CA810);
  v15 = String.init<A>(describing:)();
  v17 = v16;
  *(v14 + 56) = &type metadata for String;
  v18 = sub_100008C00();
  *(v14 + 64) = v18;
  *(v14 + 32) = v15;
  *(v14 + 40) = v17;
  aBlock[0] = a1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v19 = String.init<A>(describing:)();
  *(v14 + 96) = &type metadata for String;
  *(v14 + 104) = v18;
  *(v14 + 72) = v19;
  *(v14 + 80) = v20;
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v21 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  aBlock[4] = sub_100946D04;
  aBlock[5] = a3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10163EC28;
  v22 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_100946848(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v27 + 8))(v9, v6);
  (*(v25 + 8))(v13, v26);
}

uint64_t sub_100942904(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v37 = a3;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v40 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for DispatchQoS();
  v39 = *(v41 - 8);
  v8 = *(v39 + 64);
  __chkstk_darwin(v41);
  v38 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Locale();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  Transaction.capture()();
  static Locale.current.getter();
  v16 = Locale.languageCode.getter();
  v18 = v17;
  (*(v11 + 8))(v14, v10);
  if (v18)
  {
    v19 = v16;
  }

  else
  {
    v19 = 0x6E776F6E6B6E75;
  }

  if (!v18)
  {
    v18 = 0xE700000000000000;
  }

  if (qword_101694AC8 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_1000076D4(v20, qword_10177B718);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    aBlock[0] = v36;
    *v23 = 136446466;
    *(v23 + 4) = sub_1000136BC(v19, v18, aBlock);
    *(v23 + 12) = 2080;
    v42 = v15;

    v24 = String.init<A>(describing:)();
    v35 = v21;
    v26 = sub_1000136BC(v24, v25, aBlock);

    *(v23 + 14) = v26;
    v21 = v35;
    _os_log_impl(&_mh_execute_header, v35, v22, "Received [%{public}s] roles from server %s", v23, 0x16u);
    swift_arrayDestroy();
  }

  v27 = v37;
  sub_1009453BC(v15, 2, v37);
  v28 = [objc_opt_self() standardUserDefaults];
  v29 = String._bridgeToObjectiveC()();

  v30 = String._bridgeToObjectiveC()();
  [v28 setObject:v29 forKey:v30];

  aBlock[4] = sub_10094615C;
  aBlock[5] = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10163EB60;
  v31 = _Block_copy(aBlock);

  v32 = v38;
  static DispatchQoS.unspecified.getter();
  v42 = _swiftEmptyArrayStorage;
  sub_100946848(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v33 = v40;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v31);
  (*(v5 + 8))(v33, v4);
  (*(v39 + 8))(v32, v41);
}

uint64_t sub_100942EE0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  sub_10094627C();
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = v4;
  v5[4] = a2;

  v6 = v4;

  Future.addFailure(block:)();

  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = v6;

  v8 = v6;

  Future.addSuccess(block:)();
}

uint64_t sub_100942FF4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v7 - 8);
  v8 = *(v29 + 64);
  __chkstk_darwin(v7);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v27 = *(v11 - 8);
  v28 = v11;
  v12 = *(v27 + 64);
  __chkstk_darwin(v11);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Transaction.capture()();
  if (qword_101694AC8 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000076D4(v15, qword_10177B718);
  swift_errorRetain();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v26[1] = a3;
    v19 = v18;
    v20 = swift_slowAlloc();
    v30 = a1;
    aBlock[0] = v20;
    *v19 = 136446210;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v21 = String.init<A>(describing:)();
    v23 = sub_1000136BC(v21, v22, aBlock);

    *(v19 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v16, v17, "Unable to update server config due to %{public}s", v19, 0xCu);
    sub_100007BAC(v20);
  }

  aBlock[4] = sub_100946D08;
  aBlock[5] = a4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10163ED18;
  v24 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v30 = _swiftEmptyArrayStorage;
  sub_100946848(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);
  (*(v29 + 8))(v10, v7);
  (*(v27 + 8))(v14, v28);
}

uint64_t sub_1009433F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a4;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v41 = *(v6 - 8);
  v7 = *(v41 + 64);
  __chkstk_darwin(v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v39 = *(v10 - 8);
  v40 = v10;
  v11 = *(v39 + 64);
  __chkstk_darwin(v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ConfigurationResponse();
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v36 - v19;
  Transaction.capture()();
  if (qword_101694AC8 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_1000076D4(v21, qword_10177B718);
  sub_1009466B0(a1, v20, type metadata accessor for ConfigurationResponse);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v38 = v6;
    v25 = v24;
    v26 = swift_slowAlloc();
    v36 = a1;
    v27 = v26;
    aBlock[0] = v26;
    *v25 = 136315138;
    v37 = v13;
    v28 = v9;
    v29 = a3;
    sub_1009466B0(v20, v18, type metadata accessor for ConfigurationResponse);
    v30 = String.init<A>(describing:)();
    v32 = v31;
    sub_100946718(v20, type metadata accessor for ConfigurationResponse);
    v33 = sub_1000136BC(v30, v32, aBlock);

    *(v25 + 4) = v33;
    a3 = v29;
    v9 = v28;
    v13 = v37;
    _os_log_impl(&_mh_execute_header, v22, v23, "Received server config %s", v25, 0xCu);
    sub_100007BAC(v27);
    a1 = v36;

    v6 = v38;
  }

  else
  {

    sub_100946718(v20, type metadata accessor for ConfigurationResponse);
  }

  sub_100945710(a1, 1, a3);
  aBlock[4] = sub_100946660;
  aBlock[5] = a3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10163ECA0;
  v34 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v43 = _swiftEmptyArrayStorage;
  sub_100946848(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v34);
  (*(v41 + 8))(v9, v6);
  (*(v39 + 8))(v13, v40);
}

uint64_t sub_1009438EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_101697DE8, &unk_1013CA800);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = aBlock - v8;
  sub_10001F280(a1, aBlock);
  swift_allocObject();
  swift_weakInit();
  sub_1000BC4D4(&qword_1016AF248, &unk_10140B900);
  Subscription.init(subscriber:unsubscribeBlock:)();
  v10 = *(v2 + 32);
  (*(v6 + 16))(v9, a2, v5);
  v11 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  (*(v6 + 32))(v12 + v11, v9, v5);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_100945CA4;
  *(v13 + 24) = v12;
  aBlock[4] = sub_10040B9F8;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013FE14;
  aBlock[3] = &unk_10163EAE8;
  v14 = _Block_copy(aBlock);

  dispatch_sync(v10, v14);
  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100943B8C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100943DB0(a1);
  }

  return result;
}

uint64_t sub_100943C10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_101697DE8, &unk_1013CA800);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - v7;
  (*(v5 + 16))(&v14 - v7, a2, v4);
  swift_beginAccess();
  v9 = *(a1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 16) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_100A5E3C0(0, v9[2] + 1, 1, v9);
    *(a1 + 16) = v9;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = sub_100A5E3C0(v11 > 1, v12 + 1, 1, v9);
  }

  v9[2] = v12 + 1;
  (*(v5 + 32))(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12, v8, v4);
  *(a1 + 16) = v9;
  return swift_endAccess();
}

uint64_t sub_100943DB0(uint64_t a1)
{
  v3 = sub_1000BC4D4(&qword_101697DE8, &unk_1013CA800);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = aBlock - v6;
  v8 = *(v1 + 32);
  (*(v4 + 16))(aBlock - v6, a1, v3);
  v9 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  (*(v4 + 32))(v10 + v9, v7, v3);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_100945C50;
  *(v11 + 24) = v10;
  aBlock[4] = sub_1000D2FB0;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013FE14;
  aBlock[3] = &unk_10163EA48;
  v12 = _Block_copy(aBlock);

  dispatch_sync(v8, v12);
  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100943FE8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v8[2] = a2;

  v5 = sub_10013DE8C(sub_100945C68, v8, v4);
  v6 = *(a1 + 16);
  *(a1 + 16) = v5;
}

BOOL sub_100944074()
{
  sub_1000BC4D4(&qword_101697DE8, &unk_1013CA800);
  sub_1000041A4(&qword_1016AF240, &qword_101697DE8, &unk_1013CA800);
  return (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0;
}

uint64_t sub_100944118(uint64_t a1, uint64_t a2, int a3)
{
  v61 = a3;
  v60 = a2;
  v62 = type metadata accessor for DispatchWorkItemFlags();
  v44 = *(v62 - 8);
  v3 = *(v44 + 64);
  __chkstk_darwin(v62);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v66 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1000BC4D4(&qword_101697DE8, &unk_1013CA800);
  v15 = *(v65 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v65);
  v64 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v63 = &v42 - v18;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v59 = v11;
    v20 = result;
    swift_beginAccess();
    v21 = *(v20 + 16);

    v22 = v21;

    v23 = *(v21 + 16);
    if (v23)
    {
      v57 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
      v25 = *(v15 + 16);
      v24 = v15 + 16;
      v56 = v25;
      v26 = *(v24 + 64);
      v42 = v22;
      v27 = v22 + ((v26 + 32) & ~v26);
      v54 = (v12 + 104);
      v53 = (v12 + 8);
      v52 = *(v24 + 56);
      v50 = v5;
      v49 = (v24 + 16);
      v48 = enum case for DispatchQoS.QoSClass.default(_:);
      v55 = v26;
      v47 = (v26 + 16) & ~v26;
      v46 = (v16 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
      v45 = v69;
      v44 += 8;
      v43 = (v7 + 8);
      v58 = v6;
      v51 = v24;
      do
      {
        v28 = v63;
        v29 = v65;
        v56(v63, v27, v65);
        v30 = v66;
        v31 = v59;
        (*v54)(v66, v48, v59);
        v32 = static OS_dispatch_queue.global(qos:)();
        (*v53)(v30, v31);
        v33 = *v49;
        v34 = v64;
        (*v49)(v64, v28, v29);
        sub_10001F280(v60, &v70);
        v35 = v46;
        v36 = swift_allocObject();
        v33((v36 + v47), v34, v29);
        sub_10000A748(&v70, v36 + v35);
        *(v36 + v35 + 40) = v61;
        v69[2] = sub_10094617C;
        v69[3] = v36;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        v69[0] = sub_100006684;
        v69[1] = &unk_10163EC00;
        v37 = _Block_copy(aBlock);
        static DispatchQoS.unspecified.getter();
        v67 = _swiftEmptyArrayStorage;
        sub_100946848(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
        sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
        v38 = v50;
        v39 = v62;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        v40 = v37;
        v41 = v58;
        _Block_release(v40);

        (*v44)(v38, v39);
        (*v43)(v10, v41);

        v27 += v52;
        --v23;
      }

      while (v23);
    }
  }

  return result;
}

uint64_t sub_100944808(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1000BC4D4(&qword_101697DE8, &unk_1013CA800);
  Subscription.subscriber.getter();
  v5 = *sub_1000035D0(v10, v10[3]);
  v6 = a2[3];
  v7 = a2[4];
  v8 = sub_1000035D0(a2, v6);
  sub_1001503B4(v8, a3, 1, 0, 0, v5, v6, v7);
  return sub_100007BAC(v10);
}

uint64_t sub_1009448AC(uint64_t a1, uint64_t a2)
{
  v48 = a2;
  v47 = type metadata accessor for ConfigurationResponse();
  v3 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for String.Encoding();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = FMNServerInteractionController.FMNResponseFields.data.getter();
  v15 = v14;
  static String.Encoding.utf8.getter();
  v16 = String.init(data:encoding:)();
  v18 = v17;
  sub_100016590(v13, v15);
  p_weak_ivar_lyt = &BeaconKeyManager.weak_ivar_lyt;
  if (v18)
  {
    if (qword_101694AC8 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000076D4(v20, qword_10177B718);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v46 = a1;
      v25 = v5;
      v26 = v24;
      v49[0] = v24;
      *v23 = 136315138;
      v27 = sub_1000136BC(v16, v18, v49);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v21, v22, "serverConfiguration raw data: %s", v23, 0xCu);
      sub_100007BAC(v26);
      v5 = v25;
      a1 = v46;

      p_weak_ivar_lyt = (&BeaconKeyManager + 56);
    }

    else
    {
    }
  }

  if (p_weak_ivar_lyt[345] != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_1000076D4(v28, qword_10177B718);
  (*(v7 + 16))(v10, a1, v6);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v49[0] = v32;
    *v31 = 136315138;
    sub_100946848(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v5;
    v36 = v35;
    (*(v7 + 8))(v10, v6);
    v37 = sub_1000136BC(v33, v36, v49);
    v5 = v34;

    *(v31 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v29, v30, "serverConfiguration: %s", v31, 0xCu);
    sub_100007BAC(v32);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  v38 = type metadata accessor for JSONDecoder();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  v41 = FMNServerInteractionController.FMNResponseFields.data.getter();
  v43 = v42;
  sub_100946848(qword_1016AF270, type metadata accessor for ConfigurationResponse);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_100016590(v41, v43);
  Future.finish(result:)();

  return sub_100946718(v5, type metadata accessor for ConfigurationResponse);
}

uint64_t sub_100944F04()
{
  static os_log_type_t.error.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_101385D80;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v1 = String.init<A>(describing:)();
  v3 = v2;
  *(v0 + 56) = &type metadata for String;
  *(v0 + 64) = sub_100008C00();
  *(v0 + 32) = v1;
  *(v0 + 40) = v3;
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v4 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  return Future.finish(error:)();
}

uint64_t sub_100945028()
{
  v0 = type metadata accessor for JSONDecoder();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  v3 = FMNServerInteractionController.FMNResponseFields.data.getter();
  v5 = v4;
  sub_100946228();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_100016590(v3, v5);
  Future.finish(result:)();
}

uint64_t sub_10094517C()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC12searchpartyd27ServerConfigurationProvider_transactionManager;
  v3 = type metadata accessor for PressuredExitTransactionManager();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ServerConfigurationProvider()
{
  result = qword_1016AF0E0;
  if (!qword_1016AF0E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100945284()
{
  result = type metadata accessor for PressuredExitTransactionManager();
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

uint64_t sub_100945364(uint64_t a1)
{
  result = sub_100946848(&qword_1016AF238, type metadata accessor for ServerConfigurationProvider);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1009453BC(uint64_t a1, char a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v6 - 8);
  v7 = *(v20 + 64);
  __chkstk_darwin(v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v10 = *(v19 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v19);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[3] = &type metadata for RolesResponse;
  v24[4] = &off_101630380;
  v24[0] = a1;
  v18[1] = *(a3 + 32);
  v14 = swift_allocObject();
  swift_weakInit();
  sub_10001F280(v24, v23);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  sub_10000A748(v23, v15 + 24);
  *(v15 + 64) = a2;
  aBlock[4] = sub_10094616C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10163EBB0;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_100946848(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v20 + 8))(v9, v6);
  (*(v10 + 8))(v13, v19);

  return sub_100007BAC(v24);
}

uint64_t sub_100945710(uint64_t a1, char a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v6 - 8);
  v7 = *(v21 + 64);
  __chkstk_darwin(v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v10 = *(v20 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v20);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[3] = type metadata accessor for ConfigurationResponse();
  v25[4] = &off_10163E450;
  v14 = sub_1000280DC(v25);
  sub_1009466B0(a1, v14, type metadata accessor for ConfigurationResponse);
  v19[1] = *(a3 + 32);
  v15 = swift_allocObject();
  swift_weakInit();
  sub_10001F280(v25, v24);
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  sub_10000A748(v24, v16 + 24);
  *(v16 + 64) = a2;
  aBlock[4] = sub_100946D38;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10163ECF0;
  v17 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_100946848(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v21 + 8))(v9, v6);
  (*(v10 + 8))(v13, v20);

  return sub_100007BAC(v25);
}

void sub_100945A80(uint64_t a1)
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v2 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v3 = sub_101073B58(v8);

  if (v3 != a1)
  {
    v4 = CFNotificationCenterGetDarwinNotifyCenter();
    if (v4)
    {
      v5 = v4;
      if (qword_101694AD0 != -1)
      {
        swift_once();
      }

      v6 = qword_10177B730;
      sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
      v7 = static OS_os_log.default.getter();
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      CFNotificationCenterPostNotification(v5, v6, 0, 0, 1u);
    }

    else
    {
      static os_log_type_t.error.getter();
      sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
      v5 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();
    }
  }
}

uint64_t sub_100945CBC(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(sub_1000BC4D4(&qword_101697DE8, &unk_1013CA800) - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

void sub_100945D40(_BYTE *a1@<X8>)
{
  v2 = OBJC_IVAR____TtC12searchpartyd27ServerConfigurationProvider_rolesUpdateInProgress;
  if (*(v1 + OBJC_IVAR____TtC12searchpartyd27ServerConfigurationProvider_rolesUpdateInProgress))
  {
    *a1 = 0;
  }

  else if (*(v1 + OBJC_IVAR____TtC12searchpartyd27ServerConfigurationProvider_configurationUpdateInProgress))
  {
    *a1 = 0;
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC12searchpartyd27ServerConfigurationProvider_configurationUpdateInProgress) = 1;
    *(v1 + v2) = 1;
    *a1 = 1;
  }
}

uint64_t sub_100945DA0()
{
  v0 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v39 = &v38 - v2;
  v3 = type metadata accessor for FMNAccountType();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RoleCategoriesEndpoint();
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v38 - v14;
  v16 = sub_1000BC4D4(&qword_1016AF258, &qword_1013CA818);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = Future.init()();
  v20 = enum case for FMNAccountType.searchParty(_:);
  v21 = *(v4 + 104);
  v21(v7, enum case for FMNAccountType.searchParty(_:), v3);
  type metadata accessor for AccountURLComponents();
  swift_allocObject();
  *v15 = sub_1010B32C8(v7);
  v21(&v15[*(v9 + 28)], v20, v3);
  v22 = type metadata accessor for SearchPartyURLSessionFactory(0);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v25 = type metadata accessor for FMNMockingPreferences();
  (*(*(v25 - 8) + 56))(v39, 1, 1, v25);
  v26 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
  v27 = type metadata accessor for ServerInteractionController(0);
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  v30 = swift_allocObject();
  sub_1009466B0(v15, v13, type metadata accessor for RoleCategoriesEndpoint);
  v31 = sub_100623E5C(v13, v26, v30);
  sub_100946718(v15, type metadata accessor for RoleCategoriesEndpoint);
  sub_1013166B0();
  v33 = v32;
  v35 = v34;
  sub_1008B4A24(v36, v32, v34, v31);

  sub_100016590(v33, v35);

  Future.addFailure(block:)();

  Future.addSuccess(block:)();

  return v19;
}

uint64_t sub_10094617C()
{
  v1 = *(sub_1000BC4D4(&qword_101697DE8, &unk_1013CA800) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = *(v3 + 40);

  return sub_100944808(v0 + v2, v3, v4);
}

unint64_t sub_100946228()
{
  result = qword_1016AF260;
  if (!qword_1016AF260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AF260);
  }

  return result;
}

uint64_t sub_10094627C()
{
  v0 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v39 = &v38 - v2;
  v3 = type metadata accessor for FMNAccountType();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ConfigurationEndpoint();
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v38 - v14;
  v16 = sub_1000BC4D4(&qword_1016AF268, &unk_1013CA820);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = Future.init()();
  v20 = enum case for FMNAccountType.searchParty(_:);
  v21 = *(v4 + 104);
  v21(v7, enum case for FMNAccountType.searchParty(_:), v3);
  type metadata accessor for AccountURLComponents();
  swift_allocObject();
  *v15 = sub_1010B32C8(v7);
  v21(&v15[*(v9 + 28)], v20, v3);
  v22 = type metadata accessor for SearchPartyURLSessionFactory(0);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v25 = type metadata accessor for FMNMockingPreferences();
  (*(*(v25 - 8) + 56))(v39, 1, 1, v25);
  v26 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
  v27 = type metadata accessor for ServerInteractionController(0);
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  v30 = swift_allocObject();
  sub_1009466B0(v15, v13, type metadata accessor for ConfigurationEndpoint);
  v31 = sub_100624274(v13, v26, v30);
  sub_100946718(v15, type metadata accessor for ConfigurationEndpoint);
  sub_1013166B0();
  v33 = v32;
  v35 = v34;
  sub_1008B4A24(v36, v32, v34, v31);

  sub_100016590(v33, v35);

  Future.addFailure(block:)();

  Future.addSuccess(block:)();

  return v19;
}

uint64_t sub_10094660C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_100946670()
{
  v1 = *(v0 + 16);

  sub_100007BAC((v0 + 24));

  return _swift_deallocObject(v0, 65);
}

uint64_t sub_1009466B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100946718(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100946784(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014650;

  return sub_100940E9C(a1, v4, v5, v6);
}

uint64_t sub_100946848(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100946890(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_100941A68(a1, v1);
}

uint64_t sub_100946928()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014650;

  return sub_1002ECF7C();
}

uint64_t sub_1009469DC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_100941B14(a1, v5, v4);
}

uint64_t sub_100946A84()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_100264040();
}

uint64_t sub_100946B38(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_100941B98(a1, v5, v4);
}

uint64_t sub_100946BE0(void (*a1)(void))
{
  a1(*(v1 + 16));
  v2 = *(v1 + 32);

  return _swift_deallocObject(v1, 40);
}

uint64_t sub_100946C28()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_100264040();
}

uint64_t sub_100946D3C()
{
  *(v1 + 24) = v0;
  v2 = async function pointer to daemon.getter[1];
  v3 = swift_task_alloc();
  *(v1 + 32) = v3;
  *v3 = v1;
  v3[1] = sub_100946DD0;

  return daemon.getter();
}

uint64_t sub_100946DD0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 32);
  v12 = *v1;
  *(v3 + 40) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 48) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_1000195D0(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_1000195D0(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_100946FAC;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100946FAC(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 48);
  v7 = *v2;

  v8 = *(v4 + 40);
  if (v1)
  {
    a1 = *(v5 + 24);

    v9 = sub_1009473A4;
  }

  else
  {

    *(v5 + 56) = a1;
    v9 = sub_100947104;
  }

  return _swift_task_switch(v9, a1, 0);
}

uint64_t sub_100947104()
{
  v1 = *(v0 + 56);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  v4 = type metadata accessor for BeaconKeyManager(0);
  *v3 = v0;
  v3[1] = sub_1009471E4;
  v5 = *(v0 + 56);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_1000D27E4, v5, v4);
}

uint64_t sub_1009471E4()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return _swift_task_switch(sub_1009472FC, v2, 0);
}

uint64_t sub_1009472FC()
{
  v1 = v0[3];
  v0[9] = v0[2];
  return _swift_task_switch(sub_10094731C, v1, 0);
}

uint64_t sub_10094731C()
{
  v1 = v0[9];
  v2 = v0[7];

  v3 = *(v1 + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_1009473A4()
{
  v9 = v0;
  if (qword_1016954A8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177CDA0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1000136BC(0xD000000000000013, 0x80000001013662D0, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s No BeaconStore available!", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v6 = *(v0 + 8);

  return v6(0);
}

uint64_t sub_10094751C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Date();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = type metadata accessor for BeaconIdentifier();
  v3[8] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v3[12] = v9;
  v10 = *(v9 - 8);
  v3[13] = v10;
  v3[14] = *(v10 + 64);
  v3[15] = swift_task_alloc();
  v11 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v3[16] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v13 = type metadata accessor for OwnedBeaconRecord();
  v3[18] = v13;
  v14 = *(v13 - 8);
  v3[19] = v14;
  v15 = *(v14 + 64) + 15;
  v3[20] = swift_task_alloc();
  v16 = async function pointer to daemon.getter[1];
  v17 = swift_task_alloc();
  v3[21] = v17;
  *v17 = v3;
  v17[1] = sub_100947754;

  return daemon.getter();
}

uint64_t sub_100947754(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 168);
  v12 = *v1;
  v3[22] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[23] = v6;
  v7 = type metadata accessor for Daemon();
  v3[24] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_1000195D0(&qword_1016AA400, &type metadata accessor for Daemon);
  v3[25] = v9;
  v10 = sub_1000195D0(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_100947934;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100947934(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 184);
  v6 = *v2;
  *(v4 + 208) = a1;
  *(v4 + 216) = v1;

  if (v1)
  {
    v7 = *(v4 + 32);
    v8 = sub_100948BA4;
  }

  else
  {
    v9 = *(v4 + 176);
    v10 = *(v4 + 64);

    *(v4 + 304) = *(v10 + 20);
    v8 = sub_100947A78;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100947A78()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 120);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  (*(v4 + 16))(v2, *(v0 + 24) + *(v0 + 304), v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v0 + 224) = v6;
  *(v6 + 16) = v1;
  (*(v4 + 32))(v6 + v5, v2, v3);
  v7 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v8 = swift_task_alloc();
  *(v0 + 232) = v8;
  *v8 = v0;
  v8[1] = sub_100947BE0;
  v10 = *(v0 + 128);
  v9 = *(v0 + 136);

  return unsafeBlocking<A>(context:_:)(v9, 0xD000000000000010, 0x800000010134A8C0, sub_1000D2DB4, v6, v10);
}

uint64_t sub_100947BE0()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);
  v3 = *(*v0 + 32);
  v5 = *v0;

  return _swift_task_switch(sub_100947D0C, v3, 0);
}

uint64_t sub_100947D0C()
{
  v44 = v0;
  v1 = v0[17];
  if ((*(v0[19] + 48))(v1, 1, v0[18]) == 1)
  {
    sub_100948E18(v1);
    if (qword_1016954A8 != -1)
    {
      swift_once();
    }

    v2 = v0[9];
    v3 = v0[3];
    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177CDA0);
    sub_100429A68(v3, v2);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = v0[12];
      v9 = v0[8];
      v8 = v0[9];
      v10 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v10 = 136315651;
      *(v10 + 4) = sub_1000136BC(0xD000000000000010, 0x80000001013662F0, &v41);
      *(v10 + 12) = 2160;
      *(v10 + 14) = 1752392040;
      *(v10 + 22) = 2081;
      sub_1000195D0(&qword_101696930, &type metadata accessor for UUID);
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v43 = v11;
      v12._countAndFlagsBits = 47;
      v12._object = 0xE100000000000000;
      String.append(_:)(v12);
      v13 = v8 + *(v9 + 20);
      v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v14);

      v15 = v42;
      v16 = v43;
      sub_100948E80(v8, type metadata accessor for BeaconIdentifier);
      v17 = sub_1000136BC(v15, v16, &v41);

      *(v10 + 24) = v17;
      _os_log_impl(&_mh_execute_header, v5, v6, "%s no beacon record for %{private,mask.hash}s. Looking up standalone beacons...", v10, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      v34 = v0[9];

      sub_100948E80(v34, type metadata accessor for BeaconIdentifier);
    }

    v35 = async function pointer to daemon.getter[1];
    v36 = swift_task_alloc();
    v0[31] = v36;
    *v36 = v0;
    v36[1] = sub_10094866C;

    return daemon.getter();
  }

  else
  {
    sub_10002ABDC(v1, v0[20], type metadata accessor for OwnedBeaconRecord);
    if (qword_1016954A8 != -1)
    {
      swift_once();
    }

    v18 = v0[11];
    v19 = v0[3];
    v20 = type metadata accessor for Logger();
    sub_1000076D4(v20, qword_10177CDA0);
    sub_100429A68(v19, v18);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = v0[11];
      v24 = v0[12];
      v25 = v0[8];
      v26 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v26 = 136315651;
      *(v26 + 4) = sub_1000136BC(0xD000000000000010, 0x80000001013662F0, &v41);
      *(v26 + 12) = 2160;
      *(v26 + 14) = 1752392040;
      *(v26 + 22) = 2081;
      sub_1000195D0(&qword_101696930, &type metadata accessor for UUID);
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v43 = v27;
      v28._countAndFlagsBits = 47;
      v28._object = 0xE100000000000000;
      String.append(_:)(v28);
      v29 = v23 + *(v25 + 20);
      v30._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v30);

      v31 = v42;
      v32 = v43;
      sub_100948E80(v23, type metadata accessor for BeaconIdentifier);
      v33 = sub_1000136BC(v31, v32, &v41);

      *(v26 + 24) = v33;
      _os_log_impl(&_mh_execute_header, v21, v22, "%s found beacon record for %{private,mask.hash}s!", v26, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      v37 = v0[11];

      sub_100948E80(v37, type metadata accessor for BeaconIdentifier);
    }

    v38 = swift_task_alloc();
    v0[30] = v38;
    *v38 = v0;
    v38[1] = sub_10094830C;
    v39 = v0[20];

    return sub_100D5F8B4();
  }
}

uint64_t sub_10094830C(char a1)
{
  v2 = *(*v1 + 240);
  v3 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 308) = a1;

  return _swift_task_switch(sub_100948424, v3, 0);
}

uint64_t sub_100948424()
{
  v36 = *(v0 + 308);
  v1 = *(v0 + 208);
  v2 = *(v0 + 160);
  v3 = *(v0 + 144);
  v4 = *(v0 + 80);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v35 = v6;
  v7 = *(v0 + 40);
  v33 = v4;
  v34 = v7;
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);

  sub_100429A68(v9, v4);
  (*(v5 + 16))(v6, v2 + v3[8], v7);
  v10 = (v2 + v3[12]);
  v12 = *v10;
  v11 = v10[1];
  v13 = v3[10];
  v14 = (v2 + v3[9]);
  v15 = *v14;
  v16 = v14[1];
  v17 = *(v2 + v13);
  v18 = *(v2 + v13 + 8);
  sub_100017D5C(v12, v11);
  sub_100017D5C(v15, v16);
  sub_1002DBC68(v17, v18);
  sub_100948E80(v2, type metadata accessor for OwnedBeaconRecord);
  if (v36)
  {
    v19 = 2;
  }

  else
  {
    v19 = 0;
  }

  v37 = v19;
  sub_10002ABDC(v33, v8, type metadata accessor for BeaconIdentifier);
  v20 = type metadata accessor for KeyGenerationBeaconInfo();
  (*(v5 + 32))(v8 + v20[5], v35, v34);
  v21 = v8 + v20[6];
  *&v22 = v12;
  *(&v22 + 1) = v11;
  *&v23 = v15;
  *(&v23 + 1) = v16;
  *v21 = v22;
  *(v21 + 16) = v23;
  *(v21 + 32) = v17;
  *(v21 + 40) = v18;
  *(v8 + v20[7]) = v37;
  (*(*(v20 - 1) + 56))(v8, 0, 1, v20);
  v24 = *(v0 + 160);
  v25 = *(v0 + 136);
  v26 = *(v0 + 120);
  v28 = *(v0 + 80);
  v27 = *(v0 + 88);
  v29 = *(v0 + 72);
  v30 = *(v0 + 56);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_10094866C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 248);
  v5 = *v1;
  v3[32] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[33] = v7;
  v8 = type metadata accessor for BeaconKeyService();
  v9 = sub_1000195D0(&unk_1016B1090, type metadata accessor for BeaconKeyService);
  *v7 = v5;
  v7[1] = sub_100948820;
  v10 = v3[25];
  v11 = v3[24];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_100948820(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 264);
  v6 = *v2;
  v4[34] = a1;
  v4[35] = v1;

  if (v1)
  {
    v7 = v4[4];

    return _swift_task_switch(sub_100948C70, v7, 0);
  }

  else
  {
    v8 = v4[32];

    v9 = swift_task_alloc();
    v4[36] = v9;
    *v9 = v6;
    v9[1] = sub_1009489AC;
    v10 = v4[2];
    v11 = v4[3];

    return sub_10098F404(v10, v11);
  }
}

uint64_t sub_1009489AC()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v4 = *v1;
  *(*v1 + 296) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = sub_100948D44;
  }

  else
  {
    v6 = sub_100948AD8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100948AD8()
{
  v1 = v0[34];
  v2 = v0[26];

  v3 = v0[20];
  v4 = v0[17];
  v5 = v0[15];
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[9];
  v9 = v0[7];

  v10 = v0[1];

  return v10();
}

uint64_t sub_100948BA4()
{
  v1 = v0[27];
  v2 = v0[22];
  v3 = v0[20];
  v4 = v0[17];
  v5 = v0[15];
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[9];
  v9 = v0[7];

  v10 = v0[1];

  return v10();
}

uint64_t sub_100948C70()
{
  v1 = v0[26];

  v2 = v0[35];
  v3 = v0[32];
  v4 = v0[20];
  v5 = v0[17];
  v6 = v0[15];
  v8 = v0[10];
  v7 = v0[11];
  v9 = v0[9];
  v10 = v0[7];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100948D44()
{
  v1 = v0[26];

  v2 = v0[37];
  v3 = v0[34];
  v4 = v0[20];
  v5 = v0[17];
  v6 = v0[15];
  v8 = v0[10];
  v7 = v0[11];
  v9 = v0[9];
  v10 = v0[7];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100948E18(uint64_t a1)
{
  v2 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100948E80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100948F40(uint64_t a1, int a2)
{
  v46 = a2;
  v45 = type metadata accessor for UUID();
  v4 = *(v45 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v45);
  v44 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SimpleBeaconUpdateService.BeaconEntityChange(0);
  v42 = *(v7 - 8);
  v43 = v7;
  v8 = *(v42 + 64);
  __chkstk_darwin(v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  if (!v11)
  {
    return v12;
  }

  v34 = v2;
  v50 = _swiftEmptyArrayStorage;
  sub_101125468(0, v11, 0);
  v12 = v50;
  v13 = a1 + 56;
  v14 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v16 = v4;
  v17 = result;
  v18 = 0;
  v40 = a1 + 56;
  v41 = v16;
  v38 = v16 + 8;
  v39 = v16 + 16;
  v35 = a1 + 64;
  v36 = v11;
  v37 = a1;
  while ((v17 & 0x8000000000000000) == 0 && v17 < 1 << *(a1 + 32))
  {
    if ((*(v13 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
    {
      goto LABEL_21;
    }

    v47 = v18;
    v48 = *(a1 + 36);
    v49 = v17 >> 6;
    v20 = v41;
    v21 = *(a1 + 48) + *(v41 + 72) * v17;
    v22 = *(v41 + 16);
    v23 = v44;
    v24 = v45;
    v22(v44, v21, v45);
    v22(v10, v23, v24);
    swift_storeEnumTagMultiPayload();
    (*(v20 + 8))(v23, v24);
    v50 = v12;
    v26 = v12[2];
    v25 = v12[3];
    if (v26 >= v25 >> 1)
    {
      sub_101125468(v25 > 1, v26 + 1, 1);
      v12 = v50;
    }

    v12[2] = v26 + 1;
    result = sub_100986170(v10, v12 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v26, type metadata accessor for SimpleBeaconUpdateService.BeaconEntityChange);
    a1 = v37;
    v19 = 1 << *(v37 + 32);
    v13 = v40;
    if (v17 >= v19)
    {
      goto LABEL_22;
    }

    v27 = *(v40 + 8 * v49);
    if ((v27 & (1 << v17)) == 0)
    {
      goto LABEL_23;
    }

    if (v48 != *(v37 + 36))
    {
      goto LABEL_24;
    }

    v28 = v27 & (-2 << (v17 & 0x3F));
    if (v28)
    {
      v19 = __clz(__rbit64(v28)) | v17 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v29 = v49 << 6;
      v30 = v49 + 1;
      v31 = (v35 + 8 * v49);
      while (v30 < (v19 + 63) >> 6)
      {
        v33 = *v31++;
        v32 = v33;
        v29 += 64;
        ++v30;
        if (v33)
        {
          result = sub_10040BA00(v17, v48, 0);
          v19 = __clz(__rbit64(v32)) + v29;
          goto LABEL_4;
        }
      }

      result = sub_10040BA00(v17, v48, 0);
    }

LABEL_4:
    v18 = v47 + 1;
    v17 = v19;
    if (v47 + 1 == v36)
    {
      return v12;
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

uint64_t sub_100949310()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177B740);
  sub_1000076D4(v0, qword_10177B740);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100949390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = *a3;
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  v8 = *(a3 + 64);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a3 + 48);
  v20 = *(a3 + 32);
  v19 = v14;
  XPCSession.identifier.getter();
  swift_beginAccess();

  sub_1009871D4(a3, v29);
  v15 = *(a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(a1 + 72);
  v28 = v8;
  v29[0] = v17;
  *(a1 + 72) = 0x8000000000000000;
  v22 = a2;
  v23 = v21;
  v24 = v6;
  v25 = v7 & 1;
  v26 = v20;
  v27 = v19;
  sub_100FFFAD4(&v22, v13, isUniquelyReferenced_nonNull_native);
  (*(v10 + 8))(v13, v9);
  *(a1 + 72) = v29[0];
  return swift_endAccess();
}

void sub_10094953C()
{
  v1 = v0;
  if (qword_101694AD8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177B740);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "All sessions went away.", v5, 2u);
  }

  v6 = *(v1 + 40);
  if (v6)
  {
    v7 = *(v1 + 48);

    v6(v8);

    sub_1000BB27C(v6);
  }
}

uint64_t sub_10094965C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v9 = *(v17 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v17);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *(v2 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  *(v13 + 24) = a1;
  aBlock[4] = sub_100988D7C;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10163FC30;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_100985CA0(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v5 + 8))(v8, v4);
  (*(v9 + 8))(v12, v17);
}

uint64_t sub_100949938(uint64_t a1, void *a2)
{
  v4 = *a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v37 - v11;
  XPCSession.identifier.getter();
  swift_beginAccess();
  v13 = *(a1 + 72);

  swift_getTupleTypeMetadata2();
  sub_100985CA0(&qword_1016967B0, &type metadata accessor for UUID);
  Dictionary.subscript.getter();

  v16 = *(v6 + 8);
  v15 = v6 + 8;
  v14 = v16;
  v45 = v5;
  result = v16(v12, v5);
  v52 = v47;
  v53 = v48;
  v54 = v49;
  v55 = v50;
  v56 = v51;
  if (v47)
  {
    v41 = v14;
    v44 = v15;
    v38 = *(&v53 + 1);
    v39 = v53;
    XPCSession.identifier.getter();
    memset(v46, 0, 80);
    swift_beginAccess();
    type metadata accessor for Dictionary();
    v43 = a1;
    Dictionary.subscript.setter();
    swift_endAccess();
    v18 = a2;
    if (qword_101694AD8 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000076D4(v19, qword_10177B740);

    v20 = type metadata accessor for Optional();
    v21 = *(v20 - 8);
    (*(v21 + 16))(v46, &v52, v20);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    v24 = *(v21 + 8);
    v24(&v52, v20);
    v25 = os_log_type_enabled(v22, v23);
    v42 = v18;
    v40 = v10;
    if (v25)
    {
      v26 = swift_slowAlloc();
      v37 = v24;
      v27 = v26;
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v46[0] = v29;
      *v27 = 138543618;
      v30 = XPCSession.connection.getter();
      *(v27 + 4) = v30;
      *v28 = v30;
      *(v27 + 12) = 2082;
      if (v38)
      {
        v31 = v39;
      }

      else
      {
        v31 = 0x6E776F6E6B6E75;
      }

      if (v38)
      {
        v32 = v38;
      }

      else
      {
        v32 = 0xE700000000000000;
      }

      v33 = sub_1000136BC(v31, v32, v46);

      *(v27 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v22, v23, "Session went away %{public}@- bundle: %{public}s", v27, 0x16u);
      sub_10000B3A8(v28, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v29);

      v24 = v37;
    }

    v34 = *(v43 + 56);
    if (v34)
    {
      v35 = *(v43 + 64);

      v36 = v40;
      XPCSession.identifier.getter();
      v34(v36);
      sub_1000BB27C(v34);
      v24(&v52, v20);
      return v41(v36, v45);
    }

    else
    {
      return (v24)(&v52, v20);
    }
  }

  return result;
}

uint64_t sub_100949E4C()
{
  v1 = type metadata accessor for OS_dispatch_queue.Attributes();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v3 = type metadata accessor for DispatchQoS();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 56) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 72) = _swiftEmptyDictionarySingleton;
  v11[0] = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v6 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v5);
  static DispatchQoS.unspecified.getter();
  v11[1] = _swiftEmptyArrayStorage;
  sub_100985CA0(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v0 + 80) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  return sub_100F04FA4();
}

void sub_10094A0E0()
{
  v1 = v0[6];
  sub_1000BB27C(v0[5]);
  v2 = v0[8];
  sub_1000BB27C(v0[7]);
  v3 = v0[9];

  v4 = v0[10];
}

uint64_t sub_10094A120()
{
  v0 = sub_1010D71A8();
  v1 = *(v0 + 48);
  sub_1000BB27C(*(v0 + 40));
  v2 = *(v0 + 64);
  sub_1000BB27C(*(v0 + 56));
  v3 = *(v0 + 72);

  return v0;
}

uint64_t sub_10094A16C()
{
  sub_10094A120();

  return swift_deallocClassInstance();
}

uint64_t sub_10094A1B4()
{
  if (*v0)
  {
    result = 0x6E61685465726F6DLL;
  }

  else
  {
    result = 6647407;
  }

  *v0;
  return result;
}

void *sub_10094A1F0()
{
  v1 = v0;
  v2 = type metadata accessor for URL.DirectoryHint();
  v62 = *(v2 - 8);
  v63 = v2;
  v3 = *(v62 + 64);
  __chkstk_darwin(v2);
  v59 = v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL();
  v60 = *(v5 - 8);
  v61 = v5;
  v6 = *(v60 + 64);
  v7 = __chkstk_darwin(v5);
  v57 = v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v58 = v51 - v9;
  v56 = type metadata accessor for OS_dispatch_queue.Attributes();
  v10 = *(*(v56 - 8) + 64);
  __chkstk_darwin(v56);
  v55 = v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v54 = v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v15 = *(v52 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v52);
  v53 = v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for UUID();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v20 = sub_1000BC4D4(&qword_101698E38, &unk_101395BA0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = v51 - v22;
  swift_defaultActor_initialize();
  v0[14] = 0xD000000000000019;
  v0[15] = 0x80000001013CA9B0;
  sub_1000BC4D4(&qword_1016AFA50, &qword_1013CB0E0);
  swift_allocObject();
  v0[16] = sub_100949E4C();
  v0[17] = 0;
  v0[18] = 0;
  v0[19] = 0;
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v24 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  sub_1010749F0(v64);

  v51[1] = sub_1000BC4D4(&qword_1016B1270, &qword_101390A00);
  v1[20] = AsyncKeyedThrottle.__allocating_init(throttleInterval:)();
  type metadata accessor for WorkItemQueue();
  WorkItemQueue.WarningOptions.init(verbose:queueDepthWarningLevel:queueTimeWarningLevel:runTimeWarningLevel:)();
  v25 = type metadata accessor for WorkItemQueue.WarningOptions();
  v26 = *(*(v25 - 8) + 56);
  v26(v23, 0, 1, v25);
  UUID.init()();
  v1[21] = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
  WorkItemQueue.WarningOptions.init(verbose:queueDepthWarningLevel:queueTimeWarningLevel:runTimeWarningLevel:)();
  v26(v23, 0, 1, v25);
  UUID.init()();
  v27 = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
  v1[23] = 0;
  v1[24] = 0;
  v1[22] = v27;
  *(v1 + 200) = 2;
  v1[27] = 0;
  v1[28] = 0;
  v1[26] = _swiftEmptyDictionarySingleton;
  v28 = sub_1000BC4D4(&qword_1016AFA58, &unk_1013CB0E8);
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v1[29] = AsyncStreamProvider.init()();
  v51[0] = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  *(v1 + 15) = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 17) = 0u;
  *(v1 + 18) = 0u;
  v1[38] = 0;
  (*(v15 + 104))(v53, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v52);
  static DispatchQoS.unspecified.getter();
  v64 = _swiftEmptyArrayStorage;
  sub_100985CA0(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v1[39] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v31 = OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_cachedUnifiedBeacons;
  *(v1 + v31) = sub_10090A7A8(_swiftEmptyArrayStorage);
  *(v1 + OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_cachedUnifiedBeaconsStale) = 1;
  v32 = OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_sessionUpdateTasks;
  *(v1 + v32) = sub_10090A998(_swiftEmptyArrayStorage);
  *(v1 + OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_connectedStateClients) = &_swiftEmptySetSingleton;
  *(v1 + OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_ephemeralBeaconSessions) = _swiftEmptyDictionarySingleton;
  v33 = OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_cacheWriteThrottle;
  *(v1 + v33) = AsyncKeyedThrottle.__allocating_init(throttleInterval:)();
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v34 = v61;
  v35 = sub_1000076D4(v61, qword_10177BA58);
  v36 = v60;
  v37 = v57;
  (*(v60 + 16))(v57, v35, v34);
  v64 = 0xD000000000000019;
  v65 = 0x80000001013668C0;
  v39 = v62;
  v38 = v63;
  v40 = v59;
  (*(v62 + 104))(v59, enum case for URL.DirectoryHint.inferFromPath(_:), v63);
  sub_1000DF96C();
  v41 = v58;
  URL.appending<A>(path:directoryHint:)();
  (*(v39 + 8))(v40, v38);
  (*(v36 + 8))(v37, v34);
  (*(v36 + 32))(v1 + OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_cachedUnifiedBeaconsURL, v41, v34);
  v42 = v1[16];
  v43 = swift_allocObject();
  swift_weakInit();
  v44 = *(v42 + 40);
  v45 = *(v42 + 48);
  *(v42 + 40) = sub_100988D84;
  *(v42 + 48) = v43;

  sub_1000BB27C(v44);

  v46 = v1[16];
  v47 = swift_allocObject();
  swift_weakInit();

  v48 = *(v46 + 56);
  v49 = *(v46 + 64);
  *(v46 + 56) = sub_100988D8C;
  *(v46 + 64) = v47;

  sub_1000BB27C(v48);

  return v1;
}

uint64_t sub_10094AB3C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 168);

    dispatch thunk of WorkItemQueue.enqueue(_:)();
  }

  return result;
}

uint64_t sub_10094ABF0()
{
  v1 = *(v0 + 16);
  sub_100956B24();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10094AC54(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
    (*(v3 + 16))(&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
    v12 = (*(v3 + 80) + 40) & ~*(v3 + 80);
    v13 = swift_allocObject();
    *(v13 + 2) = 0;
    *(v13 + 3) = 0;
    *(v13 + 4) = v10;
    (*(v3 + 32))(&v13[v12], &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
    sub_10025EDD4(0, 0, v8, &unk_1013CB100, v13);
  }

  return result;
}

uint64_t sub_10094AE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_10094AE74, a4, 0);
}

uint64_t sub_10094AE74()
{
  v1 = v0[2];
  sub_10095C694(v0[3]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_10094AED4()
{
  v1[2] = v0;
  v2 = type metadata accessor for ThrottledDarwinPoster();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = async function pointer to daemon.getter[1];
  v6 = swift_task_alloc();
  v1[6] = v6;
  *v6 = v1;
  v6[1] = sub_10094AFC4;

  return daemon.getter();
}

uint64_t sub_10094AFC4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 48);
  v12 = *v1;
  *(v3 + 56) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 64) = v6;
  v7 = type metadata accessor for Daemon();
  UnlockService = type metadata accessor for FirstUnlockService();
  v9 = sub_100985CA0(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100985CA0(&qword_10169BD10, &type metadata accessor for FirstUnlockService);
  *v6 = v12;
  v6[1] = sub_10094B1A0;

  return ActorServiceDaemon.getService<A>()(v7, UnlockService, v9, v10);
}

uint64_t sub_10094B1A0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = v4[2];

    return _swift_task_switch(sub_10094B574, v7, 0);
  }

  else
  {
    v8 = v4[7];
    v4[10] = a1;

    v9 = *(&async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock() + 1);
    v12 = (&async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock() + async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock());
    v10 = swift_task_alloc();
    v4[11] = v10;
    *v10 = v6;
    v10[1] = sub_10094B348;

    return v12();
  }
}

uint64_t sub_10094B348()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return _swift_task_switch(sub_10094B458, v2, 0);
}

uint64_t sub_10094B458()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  v6 = *(v0[2] + 176);

  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v7 = SPSimpleBeaconUpdateInterfaceReconnectNotification;
  ThrottledDarwinPoster.init(name:rateLimit:)();
  ThrottledDarwinPoster.post(bypassRateLimit:)(0);
  (*(v4 + 8))(v3, v5);

  v8 = v0[5];

  v9 = v0[1];

  return v9();
}

uint64_t sub_10094B574()
{
  v1 = v0[7];

  v2 = v0[9];
  v3 = v0[5];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10094B5E0@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v2 = type metadata accessor for Keychain.DataProtectionClass();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SymmetricKeySize();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = type metadata accessor for SymmetricKey();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = static Keychain.data(account:service:)();
  if (!v1)
  {
    v20 = v2;
    v21 = v3;
    v16 = v24;
    if (v15 >> 60 == 15)
    {
      static SymmetricKeySize.bits256.getter();
      SymmetricKey.init(size:)();
      v17 = v10;
      (*(v10 + 16))(v16, v13, v9);
      SymmetricKey.withUnsafeBytes<A>(_:)();
      v18 = v20;
      v19 = v21;
      (*(v21 + 104))(v6, enum case for Keychain.DataProtectionClass.c(_:), v20);
      sub_1000E0A3C();
      static Keychain.set<A>(data:account:service:dataProtectionClass:)();
      (*(v19 + 8))(v6, v18);
      sub_100016590(v22, v23);
      return (*(v17 + 8))(v13, v9);
    }

    else
    {
      v22 = result;
      v23 = v15;
      return SymmetricKey.init<A>(data:)();
    }
  }

  return result;
}

uint64_t sub_10094B978()
{
  v1 = *(v0 + 24);
  v2 = objc_autoreleasePoolPush();
  sub_10094BA24(v1, (v0 + 16));
  objc_autoreleasePoolPop(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10094BA24(uint64_t a1, char **a2)
{
  v62 = a2;
  v3 = type metadata accessor for SymmetricKey();
  v56 = *(v3 - 8);
  v57 = v3;
  v4 = *(v56 + 64);
  __chkstk_darwin(v3);
  v58 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AES.GCM.SealedBox();
  v59 = *(v6 - 8);
  v60 = v6;
  v7 = *(v59 + 64);
  __chkstk_darwin(v6);
  v61 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ContinuousClock.Instant();
  v64 = *(v9 - 8);
  v65 = v9;
  v10 = *(v64 + 64);
  v11 = __chkstk_darwin(v9);
  v55 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v46 - v12;
  v14 = type metadata accessor for ContinuousClock();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  __chkstk_darwin(v17);
  v19 = &v46 - v18;
  ContinuousClock.init()();
  ContinuousClock.now.getter();
  v20 = v63;
  v21 = Data.init(contentsOf:options:)();
  if (v20)
  {
    (*(v64 + 8))(v13, v65);
    result = (*(v15 + 8))(v19, v14);
    *v62 = v20;
  }

  else
  {
    v49 = v16;
    v50 = v10;
    v51 = a1;
    v52 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    v63 = v13;
    v53 = v19;
    v54 = v14;
    v24 = v21;
    v25 = v22;
    sub_100017D5C(v21, v22);
    sub_10094C128(v24, v25);
    v47 = v24;
    v48 = v25;
    v26 = v58;
    sub_10094B5E0(v58);
    v27 = v15;
    v28 = static AES.GCM.open(_:using:)();
    v30 = v29;
    v31 = v28;
    (*(v56 + 8))(v26, v57);
    v32 = type metadata accessor for PropertyListDecoder();
    v33 = *(v32 + 48);
    v34 = *(v32 + 52);
    swift_allocObject();
    PropertyListDecoder.init()();
    sub_1000BC4D4(&qword_1016AF960, &qword_1013CAE00);
    sub_100988A90(&qword_1016AFA30, sub_100988B08);
    v58 = v31;
    v35 = v30;
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    v36 = v64;
    v37 = v51;
    v38 = *(v51 + 168);
    v56 = v66;
    v57 = v38;
    v39 = v54;
    (*(v27 + 16))(v52, v53, v54);
    v40 = *(v36 + 16);
    v62 = 0;
    v40(v55, v63, v65);
    v41 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v42 = (v49 + *(v36 + 80) + v41) & ~*(v36 + 80);
    v43 = swift_allocObject();
    v44 = v56;
    *(v43 + 16) = v37;
    *(v43 + 24) = v44;
    (*(v27 + 32))(v43 + v41, v52, v39);
    v45 = v65;
    (*(v36 + 32))(v43 + v42, v55, v65);

    dispatch thunk of WorkItemQueue.enqueue(_:)();

    sub_100016590(v58, v35);
    sub_100016590(v47, v48);
    (*(v59 + 8))(v61, v60);
    (*(v36 + 8))(v63, v45);
    return (*(v27 + 8))(v53, v54);
  }

  return result;
}

uint64_t sub_10094C128(uint64_t a1, unint64_t a2)
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
      if (v6 >= 28)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 >= 28)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_100016590(a1, a2);
      v7 = type metadata accessor for CryptoKitError();
      sub_100985CA0(&unk_1016AFA40, &type metadata accessor for CryptoKitError);
      swift_allocError();
      (*(*(v7 - 8) + 104))(v8, enum case for CryptoKitError.incorrectParameterSize(_:), v7);
      return swift_willThrow();
    }

    goto LABEL_35;
  }

  if (BYTE6(a2) < 0x1CuLL)
  {
    goto LABEL_8;
  }

LABEL_11:
  v29[3] = &type metadata for Data;
  v29[4] = &protocol witness table for Data;
  v29[0] = a1;
  v29[1] = a2;
  v10 = sub_1000035D0(v29, &type metadata for Data);
  v11 = *v10;
  v12 = v10[1];
  v13 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v13 != 2)
    {
      memset(v27, 0, 14);
      v15 = v27;
      v14 = v27;
      goto LABEL_33;
    }

    v16 = *(v11 + 16);
    v17 = *(v11 + 24);
    v18 = __DataStorage._bytes.getter();
    if (v18)
    {
      v19 = __DataStorage._offset.getter();
      v11 = v16 - v19;
      if (__OFSUB__(v16, v19))
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v18 += v11;
    }

    v5 = __OFSUB__(v17, v16);
    v20 = v17 - v16;
    if (!v5)
    {
      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_21;
  }

  if (v13)
  {
LABEL_21:
    v21 = v11;
    v22 = v11 >> 32;
    v20 = v22 - v21;
    if (v22 >= v21)
    {
      v18 = __DataStorage._bytes.getter();
      if (!v18)
      {
LABEL_25:
        v24 = __DataStorage._length.getter();
        if (v24 >= v20)
        {
          v25 = v20;
        }

        else
        {
          v25 = v24;
        }

        v26 = (v25 + v18);
        if (v18)
        {
          v14 = v26;
        }

        else
        {
          v14 = 0;
        }

        v15 = v18;
        goto LABEL_33;
      }

      v23 = __DataStorage._offset.getter();
      if (!__OFSUB__(v21, v23))
      {
        v18 += v21 - v23;
        goto LABEL_25;
      }

LABEL_38:
      __break(1u);
    }

    goto LABEL_36;
  }

  v27[0] = *v10;
  LOWORD(v27[1]) = v12;
  BYTE2(v27[1]) = BYTE2(v12);
  BYTE3(v27[1]) = BYTE3(v12);
  BYTE4(v27[1]) = BYTE4(v12);
  BYTE5(v27[1]) = BYTE5(v12);
  v14 = v27 + BYTE6(v12);
  v15 = v27;
LABEL_33:
  sub_100267F80(v15, v14, &v28);
  sub_100007BAC(v29);
  return AES.GCM.SealedBox.init(combined:)();
}

uint64_t sub_10094C438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v6 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v4[6] = v6;
  v7 = *(v6 - 8);
  v4[7] = v7;
  v8 = *(v7 + 64) + 15;
  v4[8] = swift_task_alloc();
  v9 = type metadata accessor for ContinuousClock.Instant();
  v4[9] = v9;
  v10 = *(v9 - 8);
  v4[10] = v10;
  v11 = *(v10 + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();

  return _swift_task_switch(sub_10094C574, a1, 0);
}

uint64_t sub_10094C574()
{
  v1 = *(v0 + 16);
  sub_10094C944(*(v0 + 24));

  return _swift_task_switch(sub_10094C5DC, 0, 0);
}

uint64_t sub_10094C5DC()
{
  v39 = v0;
  v1 = v0[13];
  v2 = v0[4];
  ContinuousClock.now.getter();
  if (qword_101694AD8 != -1)
  {
    swift_once();
  }

  v3 = v0[12];
  v4 = v0[13];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[9];
  v8 = v0[5];
  v9 = type metadata accessor for Logger();
  sub_1000076D4(v9, qword_10177B740);
  v10 = *(v6 + 16);
  v10(v3, v8, v7);
  v10(v5, v4, v7);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  v13 = os_log_type_enabled(v11, v12);
  v15 = v0[12];
  v14 = v0[13];
  v16 = v0[10];
  v17 = v0[11];
  v18 = v0[9];
  if (v13)
  {
    v37 = v0[13];
    v19 = v0[7];
    v20 = v0[8];
    v35 = v0[6];
    v36 = v12;
    v21 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v21 = 136315394;
    *(v21 + 4) = sub_1000136BC(0xD00000000000001ALL, 0x8000000101366850, &v38);
    *(v21 + 12) = 2082;
    static Duration.UnitsFormatStyle.Unit.milliseconds.getter();
    sub_100985CA0(&qword_1016C11E0, &type metadata accessor for ContinuousClock.Instant);
    log = v11;
    v22 = static Duration.description<A>(_:_:units:)();
    v24 = v23;
    (*(v19 + 8))(v20, v35);
    v25 = *(v16 + 8);
    v25(v17, v18);
    v25(v15, v18);
    v26 = sub_1000136BC(v22, v24, &v38);

    *(v21 + 14) = v26;
    _os_log_impl(&_mh_execute_header, log, v36, "%s duration: %{public}s", v21, 0x16u);
    swift_arrayDestroy();

    v25(v37, v18);
  }

  else
  {

    v27 = *(v16 + 8);
    v27(v17, v18);
    v27(v15, v18);
    v27(v14, v18);
  }

  v29 = v0[12];
  v28 = v0[13];
  v30 = v0[11];
  v31 = v0[8];

  v32 = v0[1];

  return v32();
}

uint64_t sub_10094C944(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000BC4D4(&qword_1016ADE80, &unk_1013C55E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23 - v7;
  sub_10097C58C(0xD000000000000028, 0x8000000101366820);
  v9 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v24 = v1;
    v25[0] = _swiftEmptyArrayStorage;
    sub_101125428(0, v9, 0);
    v10 = v25[0];
    v11 = (a1 + 40);
    do
    {
      v12 = *v11;
      v13 = &v8[*(v4 + 48)];
      v14 = *(v11 - 1);
      v15 = [v14 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      *v13 = v14;
      *(v13 + 1) = v12;
      v25[0] = v10;
      v17 = v10[2];
      v16 = v10[3];
      if (v17 >= v16 >> 1)
      {
        sub_101125428(v16 > 1, v17 + 1, 1);
        v10 = v25[0];
      }

      v11 += 2;
      v10[2] = v17 + 1;
      sub_1000D2AD8(v8, v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v17, &qword_1016ADE80, &unk_1013C55E0);
      --v9;
    }

    while (v9);
    v2 = v24;
  }

  if (v10[2])
  {
    sub_1000BC4D4(&unk_1016AFA20, &qword_1013CB0B0);
    v18 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v18 = _swiftEmptyDictionarySingleton;
  }

  v25[0] = v18;
  sub_100988558(v10, 1, v25);

  v19 = v25[0];
  v20 = OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_cachedUnifiedBeacons;
  swift_beginAccess();
  v21 = *(v2 + v20);
  *(v2 + v20) = v19;
}

uint64_t sub_10094CBB4(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return _swift_task_switch(sub_10094CBD4, 0, 0);
}

uint64_t sub_10094CBD4()
{
  isa = v0[3].isa;
  v1 = v0[4].isa;
  v3 = objc_autoreleasePoolPush();
  sub_10094CDB0(isa, v1, v0 + 2);
  objc_autoreleasePoolPop(v3);
  v4 = v0[1].isa;

  return v4(1);
}

uint64_t sub_10094CDB0(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v90 = a3;
  v91 = a1;
  v82 = a2;
  v3 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v78 = *(v3 - 8);
  v79 = v3;
  v4 = *(v78 + 64);
  __chkstk_darwin(v3);
  v77 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_1016AF958, &qword_1013CADF8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v85 = &v71 - v8;
  v9 = type metadata accessor for SymmetricKey();
  v86 = *(v9 - 8);
  v87 = v9;
  v10 = *(v86 + 64);
  __chkstk_darwin(v9);
  v89 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AES.GCM.SealedBox();
  v83 = *(v12 - 8);
  v84 = v12;
  v13 = *(v83 + 64);
  __chkstk_darwin(v12);
  v88 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ContinuousClock.Instant();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v80 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v81 = &v71 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v71 - v23;
  __chkstk_darwin(v22);
  v26 = &v71 - v25;
  v27 = type metadata accessor for ContinuousClock();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v31 = &v71 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  ContinuousClock.init()();
  ContinuousClock.now.getter();
  v32 = type metadata accessor for PropertyListEncoder();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  v35 = PropertyListEncoder.init()();
  v92[0] = v91;
  sub_1000BC4D4(&qword_1016AF960, &qword_1013CAE00);
  sub_100988A90(&qword_1016AF968, sub_100986A60);
  v36 = v93;
  v37 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v36)
  {

    (*(v16 + 8))(v26, v15);
    result = (*(v28 + 8))(v31, v27);
    v90->isa = v36;
  }

  else
  {
    v91 = v35;
    v92[0] = v37;
    v74 = v24;
    v75 = v26;
    v76 = v28;
    v93 = v27;
    v92[1] = v38;
    v40 = v89;
    v41 = v38;
    v42 = v37;
    sub_10094B5E0(v89);
    v73 = v42;
    v72 = v41;
    v43 = type metadata accessor for AES.GCM.Nonce();
    v44 = v85;
    (*(*(v43 - 8) + 56))(v85, 1, 1, v43);
    sub_1000E0A3C();
    v45 = v88;
    static AES.GCM.seal<A>(_:using:nonce:)();
    v46 = v76;
    v71 = v31;
    sub_10000B3A8(v44, &qword_1016AF958, &qword_1013CADF8);
    (*(v86 + 8))(v40, v87);
    v47 = AES.GCM.SealedBox.combined.getter();
    if (v48 >> 60 == 15)
    {
      sub_100016590(v73, v72);

      (*(v83 + 8))(v45, v84);
      (*(v16 + 8))(v75, v15);
      return (*(v46 + 8))(v71, v93);
    }

    else
    {
      v49 = v47;
      v50 = v48;
      Data.write(to:excludeFromBackup:options:)();
      v89 = 0;
      v86 = v49;
      v87 = v50;
      v51 = v74;
      ContinuousClock.now.getter();
      if (qword_101694AD8 != -1)
      {
        swift_once();
      }

      v52 = type metadata accessor for Logger();
      sub_1000076D4(v52, qword_10177B740);
      v53 = v16;
      v54 = *(v16 + 16);
      v55 = v81;
      v54(v81, v75, v15);
      v56 = v80;
      v85 = v15;
      v54(v80, v51, v15);
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.default.getter();
      v90 = v57;
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v92[0] = v82;
        *v59 = 136315394;
        *(v59 + 4) = sub_1000136BC(0xD000000000000020, 0x8000000101366680, v92);
        *(v59 + 12) = 2082;
        v60 = v77;
        static Duration.UnitsFormatStyle.Unit.milliseconds.getter();
        sub_100985CA0(&qword_1016C11E0, &type metadata accessor for ContinuousClock.Instant);
        v61 = v85;
        v62 = static Duration.description<A>(_:_:units:)();
        v64 = v63;
        (*(v78 + 8))(v60, v79);
        v65 = *(v53 + 8);
        v65(v56, v61);
        v65(v55, v61);
        v66 = sub_1000136BC(v62, v64, v92);

        *(v59 + 14) = v66;
        v67 = v90;
        _os_log_impl(&_mh_execute_header, v90, v58, "%s duration: %{public}s", v59, 0x16u);
        swift_arrayDestroy();

        sub_100016590(v73, v72);

        sub_100006654(v86, v87);

        v65(v74, v61);
        (*(v83 + 8))(v88, v84);
        v65(v75, v61);
      }

      else
      {
        sub_100016590(v73, v72);

        sub_100006654(v86, v87);

        v68 = *(v16 + 8);
        v69 = v56;
        v70 = v85;
        v68(v69, v85);
        v68(v55, v70);
        v68(v51, v70);
        (*(v83 + 8))(v88, v84);
        v68(v75, v70);
      }

      return (*(v76 + 8))(v71, v93);
    }
  }

  return result;
}

uint64_t sub_10094D8A0()
{
  v1 = *(v0 + 16);
  sub_10094C944(_swiftEmptyArrayStorage);

  return _swift_task_switch(sub_10094D910, 0, 0);
}

uint64_t sub_10094D910()
{
  v1 = *(*(v0 + 16) + 176);

  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10094D9AC(uint64_t a1)
{
  *(v1 + 24) = a1;

  return _swift_task_switch(sub_10094DA3C, 0, 0);
}

uint64_t sub_10094DA3C()
{
  v1 = v0[3];
  v2 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_cachedUnifiedBeaconsURL);
  v4 = v3;
  v0[2] = 0;
  v5 = [v2 removeItemAtURL:v3 error:v0 + 2];

  v6 = v0[2];
  if (v5)
  {
    v11 = v0[1];
    v7 = v6;
    v8 = v11;
  }

  else
  {
    v9 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v8 = v0[1];
  }

  return v8();
}

uint64_t sub_10094DB94(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(type metadata accessor for UUID() - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_10094DC24, v1, 0);
}

uint64_t sub_10094DC24()
{
  if (*(v0[2] + 16))
  {
    v1 = async function pointer to daemon.getter[1];
    v2 = swift_task_alloc();
    v0[5] = v2;
    *v2 = v0;
    v2[1] = sub_10094DCF8;

    return daemon.getter();
  }

  else
  {
    v3 = v0[4];

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_10094DCF8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v12 = *v1;
  *(v3 + 48) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 56) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100985CA0(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100985CA0(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_10094DED4;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10094DED4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;

  if (v1)
  {

    v7 = v4[6];

    v8 = v4[4];

    v9 = *(v6 + 8);

    return v9();
  }

  else
  {
    v11 = v4[6];
    v12 = v4[3];

    v4[8] = a1;

    return _swift_task_switch(sub_10094E03C, v12, 0);
  }
}

uint64_t sub_10094E03C()
{
  v1 = v0[8];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];
  v5 = *(v3 + 168);
  type metadata accessor for WorkItemQueue.WorkItem();
  v6 = swift_allocObject();
  v6[2] = v3;
  v6[3] = v4;
  v6[4] = v1;

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v7 = v0[4];

  v8 = v0[1];

  return v8();
}

uint64_t sub_10094E168(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_10094E188, v1, 0);
}

uint64_t sub_10094E188()
{
  if (*(v0[2] + 16))
  {
    v1 = async function pointer to daemon.getter[1];
    v2 = swift_task_alloc();
    v0[4] = v2;
    *v2 = v0;
    v2[1] = sub_10094E254;

    return daemon.getter();
  }

  else
  {
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_10094E254(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 32);
  v12 = *v1;
  *(v3 + 40) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 48) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100985CA0(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100985CA0(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_10094E430;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10094E430(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;

  if (v1)
  {

    v7 = v4[5];

    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    v10 = v4[5];
    v11 = v4[3];

    v4[7] = a1;

    return _swift_task_switch(sub_10094E598, v11, 0);
  }
}

uint64_t sub_10094E598()
{
  v1 = v0[7];
  v3 = v0[2];
  v2 = v0[3];
  type metadata accessor for Transaction();
  v4 = swift_allocObject();
  v4[2] = v3;
  v4[3] = v1;
  v4[4] = v2;

  static Transaction.asyncTask(name:block:)();

  v5 = v0[1];

  return v5();
}

uint64_t sub_10094E68C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_100014744;

  return sub_10095C98C(a5, a6);
}

uint64_t sub_10094E738()
{
  v1[6] = v0;
  v2 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v3 = *(*(sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980) - 8) + 64) + 15;
  v1[8] = swift_task_alloc();
  v4 = sub_1000BC4D4(&unk_1016AF9B0, &unk_1013CAF20);
  v1[9] = v4;
  v5 = *(v4 - 8);
  v1[10] = v5;
  v6 = *(v5 + 64) + 15;
  v1[11] = swift_task_alloc();

  return _swift_task_switch(sub_10094E874, v0, 0);
}

uint64_t sub_10094E874()
{
  v1 = *(v0 + 48);
  sub_100956B24();
  v2 = async function pointer to daemon.getter[1];
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *v3 = v0;
  v3[1] = sub_10094E90C;

  return daemon.getter();
}

uint64_t sub_10094E90C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  v12 = *v1;
  v3[13] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[14] = v6;
  v7 = type metadata accessor for Daemon();
  v3[15] = v7;
  v8 = type metadata accessor for LegacyServiceContainer();
  v3[16] = v8;
  v9 = sub_100985CA0(&qword_1016AA400, &type metadata accessor for Daemon);
  v3[17] = v9;
  v10 = sub_100985CA0(&unk_101698D70, type metadata accessor for LegacyServiceContainer);
  v3[18] = v10;
  *v6 = v12;
  v6[1] = sub_10094EB00;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10094EB00(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;
  v4[19] = a1;
  v4[20] = v1;

  if (v1)
  {
    v7 = v4[13];

    v8 = async function pointer to daemon.getter[1];
    v9 = swift_task_alloc();
    v4[22] = v9;
    *v9 = v6;
    v9[1] = sub_10094F118;

    return daemon.getter();
  }

  else
  {

    return _swift_task_switch(sub_10094EC94, a1, 0);
  }
}

uint64_t sub_10094EC94()
{
  v1 = v0[19];
  v2 = v0[20];
  sub_10001B108();
  v0[21] = v3;
  v4 = v0[15];
  v5 = v0[13];
  if (v2)
  {

    sub_100985CA0(&qword_1016969E0, &type metadata accessor for Daemon);
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
    v9 = sub_10094F074;
  }

  else
  {
    sub_100985CA0(&qword_1016969E0, &type metadata accessor for Daemon);
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v10;
    v9 = sub_10094EDBC;
  }

  return _swift_task_switch(v9, v6, v8);
}

uint64_t sub_10094EDBC()
{
  v1 = v0[19];
  v2 = v0[13];
  v3 = v0[6];

  return _swift_task_switch(sub_10094EE34, v3, 0);
}

uint64_t sub_10094EE34()
{
  v0[5] = *(v0[21] + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_connectableDevicesChangedSubject);
  v1 = v0[6];
  swift_allocObject();
  swift_weakInit();

  sub_1000BC4D4(&qword_1016AF9D8, &unk_1013D37E0);
  sub_1000041A4(&unk_1016AF9E0, &qword_1016AF9D8, &unk_1013D37E0);
  v2 = Publisher<>.sink(receiveValue:)();

  v3 = *(v1 + 136);
  *(v1 + 136) = v2;

  if (qword_101694AD8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177B740);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[21];
  if (v7)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Subscribed to connectableDeviceCount changes.", v9, 2u);
  }

  v10 = async function pointer to daemon.getter[1];
  v11 = swift_task_alloc();
  v0[22] = v11;
  *v11 = v0;
  v11[1] = sub_10094F118;

  return daemon.getter();
}

uint64_t sub_10094F074()
{
  v1 = v0[19];
  v2 = v0[13];

  v3 = async function pointer to daemon.getter[1];
  v4 = swift_task_alloc();
  v0[22] = v4;
  *v4 = v0;
  v4[1] = sub_10094F118;

  return daemon.getter();
}

uint64_t sub_10094F118(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 176);
  v5 = *v1;
  v3[23] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[24] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100985CA0(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v7 = v5;
  v7[1] = sub_10094F2CC;
  v10 = v3[17];
  v11 = v3[15];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_10094F2CC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 192);
  v6 = *v2;
  v4[25] = a1;

  v7 = v4[23];
  if (v1)
  {

    v8 = v4[11];
    v10 = v4[7];
    v9 = v4[8];

    v11 = *(v6 + 8);

    return v11();
  }

  else
  {

    return _swift_task_switch(sub_10094F468, a1, 0);
  }
}

uint64_t sub_10094F468()
{
  v1 = v0[6];
  v2 = *(v0[25] + 128);
  v0[26] = sub_100A96C40();

  return _swift_task_switch(sub_10094F4DC, v1, 0);
}

uint64_t sub_10094F4DC()
{
  v12 = v0[11];
  v16 = v0[10];
  v1 = v0[8];
  v14 = v0[25];
  v15 = v0[9];
  v13 = v0[6];
  v0[2] = v0[26];
  v2 = *(v13 + 312);
  v0[3] = v2;
  v3 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v11 = v2;
  sub_1000BC4D4(&qword_101698DA0, &unk_101390950);
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  sub_1000041A4(&qword_101698DA8, &qword_101698DA0, &unk_101390950);
  sub_100009D18(&qword_1016AF9C0, &qword_101695570, OS_dispatch_queue_ptr);
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v1, &unk_1016B0FE0, &unk_101391980);

  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v14;
  sub_1000041A4(&unk_1016AF9C8, &unk_1016AF9B0, &unk_1013CAF20);

  v6 = Publisher<>.sink(receiveValue:)();

  (*(v16 + 8))(v12, v15);
  v7 = *(v13 + 144);
  *(v13 + 144) = v6;

  v8 = async function pointer to daemon.getter[1];
  v9 = swift_task_alloc();
  v0[27] = v9;
  *v9 = v0;
  v9[1] = sub_10094F7D0;

  return daemon.getter();
}

uint64_t sub_10094F7D0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 216);
  v5 = *v1;
  v3[28] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[29] = v7;
  v8 = type metadata accessor for CloudStorageService();
  v9 = sub_100985CA0(&unk_1016AA520, type metadata accessor for CloudStorageService);
  *v7 = v5;
  v7[1] = sub_10094F984;
  v10 = v3[17];
  v11 = v3[15];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_10094F984(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 232);
  v5 = *v2;
  *(*v2 + 240) = a1;

  v6 = *(v3 + 224);
  v7 = *(v3 + 48);
  if (v1)
  {

    v8 = sub_10095088C;
  }

  else
  {

    v8 = sub_10094FAE8;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10094FAE8()
{
  v1 = v0[6];
  v2 = v0[30];
  if (!*(v1 + 184))
  {
    v3 = v0[25];
    v4 = v0[7];
    v5 = v0[30];
    v6 = type metadata accessor for TaskPriority();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v5;
    v7[5] = v1;
    v7[6] = v3;

    v8 = sub_100BB9ADC(0, 0, v4, &unk_1013CAF50, v7);

    sub_10000B3A8(v4, &qword_101698C00, &qword_10138B570);
    v9 = *(v1 + 184);
    *(v1 + 184) = v8;
  }

  if (qword_101694AD8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  v0[31] = sub_1000076D4(v10, qword_10177B740);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Subscribed to record changes.", v13, 2u);
  }

  v14 = v0[25];

  return _swift_task_switch(sub_10094FD04, v14, 0);
}

uint64_t sub_10094FD04()
{
  v1 = v0[6];
  v0[32] = *(*(v0[25] + 128) + OBJC_IVAR____TtC12searchpartyd11BeaconStore_recordDeletedPublisher);

  return _swift_task_switch(sub_10094FD8C, v1, 0);
}

uint64_t sub_10094FD8C()
{
  v0[4] = v0[32];
  v1 = v0[31];
  v2 = v0[25];
  v3 = v0[6];
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v2;

  sub_1000BC4D4(&qword_1016B2880, &qword_1013CAF30);
  sub_1000041A4(&qword_101698DC0, &qword_1016B2880, &qword_1013CAF30);
  v6 = Publisher<>.sink(receiveValue:)();

  v7 = *(v3 + 152);
  *(v3 + 152) = v6;

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Subscribed to record deletions.", v10, 2u);
  }

  v11 = async function pointer to daemon.getter[1];
  v12 = swift_task_alloc();
  v0[33] = v12;
  *v12 = v0;
  v12[1] = sub_10094FF90;

  return daemon.getter();
}

uint64_t sub_10094FF90(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 264);
  v5 = *v1;
  v3[34] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[35] = v7;
  *v7 = v5;
  v7[1] = sub_10095011C;
  v8 = v3[18];
  v9 = v3[17];
  v10 = v3[16];
  v11 = v3[15];

  return ActorServiceDaemon.getService<A>()(v11, v10, v9, v8);
}

uint64_t sub_10095011C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 280);
  v6 = *v2;
  v4[36] = a1;
  v4[37] = v1;

  if (v1)
  {
    v7 = v4[34];

    v8 = v4[6];
    v9 = sub_100950730;
  }

  else
  {
    v9 = sub_100950260;
    v8 = a1;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100950260()
{
  v1 = v0[36];
  v2 = v0[37];
  sub_10001B108();
  v0[38] = v3;
  v4 = v0[34];
  v5 = v0[15];
  if (v2)
  {

    sub_100985CA0(&qword_1016969E0, &type metadata accessor for Daemon);
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
    v9 = sub_1009506BC;
  }

  else
  {
    sub_100985CA0(&qword_1016969E0, &type metadata accessor for Daemon);
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v10;
    v9 = sub_100950388;
  }

  return _swift_task_switch(v9, v6, v8);
}

uint64_t sub_100950388()
{
  v1 = v0[36];
  v2 = v0[34];
  v3 = v0[6];

  return _swift_task_switch(sub_100950400, v3, 0);
}

uint64_t sub_100950400()
{
  v29 = v0;
  v1 = v0[6];
  if (*(v1 + 192))
  {
    v2 = v0[31];
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[38];
    v7 = v0[25];
    if (!v5)
    {
      goto LABEL_7;
    }

    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v28 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1000136BC(0x6269726373627573, 0xEB00000000292865, &v28);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s productInfoUpdateTask already exists!", v8, 0xCu);
    sub_100007BAC(v9);
  }

  else
  {
    v10 = v0[38];
    v11 = v0[31];
    v12 = v0[25];
    v13 = v0[7];
    v14 = type metadata accessor for TaskPriority();
    (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v10;
    v15[5] = v1;
    v15[6] = v12;

    v16 = sub_100BB9ADC(0, 0, v13, &unk_1013CAF40, v15);
    sub_10000B3A8(v13, &qword_101698C00, &qword_10138B570);
    v17 = *(v1 + 192);
    *(v1 + 192) = v16;

    v3 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    v19 = os_log_type_enabled(v3, v18);
    v20 = v0[38];
    v21 = v0[25];
    if (!v19)
    {
      goto LABEL_7;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v3, v18, "Subscribed to product info updates.", v22, 2u);
  }

LABEL_7:

  v23 = v0[11];
  v24 = v0[7];
  v25 = v0[8];

  v26 = v0[1];

  return v26();
}

uint64_t sub_1009506BC()
{
  v1 = v0[36];
  v2 = v0[34];

  v3 = v0[6];

  return _swift_task_switch(sub_100950730, v3, 0);
}

uint64_t sub_100950730()
{
  v14 = v0;
  v1 = v0[31];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[25];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1000136BC(0x6269726373627573, 0xEB00000000292865, &v13);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s Unable to retrieve BeaconManagerService!", v6, 0xCu);
    sub_100007BAC(v7);
  }

  v8 = v0[11];
  v9 = v0[7];
  v10 = v0[8];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10095088C()
{
  if (qword_101694AD8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 248) = sub_1000076D4(v1, qword_10177B740);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Subscribed to record changes.", v4, 2u);
  }

  v5 = *(v0 + 200);

  return _swift_task_switch(sub_10094FD04, v5, 0);
}

uint64_t sub_1009509B0(uint64_t *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = *(result + 168);
    v7 = result;
    type metadata accessor for WorkItemQueue.WorkItem();
    v8 = swift_allocObject();
    *(v8 + 16) = v4;
    *(v8 + 24) = v7;

    UUID.init()();
    WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
    dispatch thunk of WorkItemQueue.enqueue(_:)();
  }

  return result;
}

uint64_t sub_100950AF8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100950B18, 0, 0);
}

uint64_t sub_100950B18()
{
  v2 = v0[2];
  v1 = v0[3];
  type metadata accessor for Transaction();
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = async function pointer to static Transaction.named<A>(_:with:)[1];
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1008D5658;

  return static Transaction.named<A>(_:with:)();
}

uint64_t sub_100950C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return _swift_task_switch(sub_100950C28, a3, 0);
}

uint64_t sub_100950C50()
{
  v1 = *(v0 + 40);
  if (v1 == 2 || (((*(v0 + 16) > 1) ^ v1) & 1) != 0)
  {
    if (qword_101694AD8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177B740);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Updating sessions for connectableDeviceCount changes.", v7, 2u);
    }

    v8 = *(v0 + 24);

    return _swift_task_switch(sub_100950DC8, v8, 0);
  }

  else
  {
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_100950DC8()
{
  v1 = v0[3];
  sub_10095699C(v0[2] > 1);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_100950E68;
  v3 = v0[3];

  return sub_10095D31C();
}

uint64_t sub_100950E68()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100950F60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v232 = a3;
  v4 = sub_1000BC4D4(&unk_101698BC0, &qword_10138C440);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v225 = &v207 - v6;
  v233 = type metadata accessor for MemberSharingCircle();
  v224 = *(v233 - 8);
  v7 = *(v224 + 64);
  __chkstk_darwin(v233);
  v227 = &v207 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v229 = &v207 - v11;
  v230 = type metadata accessor for OwnerSharingCircle();
  v228 = *(v230 - 8);
  v12 = *(v228 + 64);
  __chkstk_darwin(v230);
  v226 = &v207 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000BC4D4(&qword_10169E328, &unk_10139D740);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v210 = &v207 - v16;
  found = type metadata accessor for NotifyWhenFoundRecord();
  v209 = *(found - 8);
  v17 = *(v209 + 64);
  __chkstk_darwin(found);
  v19 = &v207 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000BC4D4(&unk_1016AFA10, &qword_1013CB000);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v214 = &v207 - v22;
  v216 = type metadata accessor for SafeLocation();
  v213 = *(v216 - 8);
  v23 = *(v213 + 64);
  __chkstk_darwin(v216);
  v215 = &v207 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1000BC4D4(&unk_1016A99E0, &qword_1013A07B0);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v28 = &v207 - v27;
  v218 = type metadata accessor for LostModeRecord();
  v217 = *(v218 - 8);
  v29 = *(v217 + 64);
  __chkstk_darwin(v218);
  v219 = &v207 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31 - 8);
  v34 = &v207 - v33;
  v221 = type metadata accessor for BeaconNamingRecord();
  v220 = *(v221 - 8);
  v35 = *(v220 + 64);
  v36 = __chkstk_darwin(v221);
  v38 = &v207 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v222 = &v207 - v39;
  v236 = type metadata accessor for UUID();
  v234 = *(v236 - 8);
  v40 = *(v234 + 64);
  __chkstk_darwin(v236);
  v235 = &v207 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1000BC4D4(&qword_10169F328, &unk_1013CB040);
  v43 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42 - 8);
  v45 = &v207 - v44;
  v46 = type metadata accessor for KeyAlignmentRecord();
  v47 = *(v46 - 8);
  v48 = *(v47 + 64);
  __chkstk_darwin(v46);
  v50 = &v207 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v231 = result;
  if (!result)
  {
    return result;
  }

  v208 = v19;
  sub_10001F280(a1, &v239);
  v52 = sub_1000BC4D4(&unk_101698D60, &unk_1013A37E0);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  v53 = swift_dynamicCast();
  v54 = a1;
  v223 = v52;
  if (v53)
  {
    sub_10000A748(v237, &v242);
    if (qword_101694AD8 != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    sub_1000076D4(v55, qword_10177B740);
    sub_10001F280(&v242, &v239);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.default.getter();
    v58 = os_log_type_enabled(v56, v57);
    v59 = v235;
    v60 = v236;
    v61 = v231;
    v212 = a1;
    if (v58)
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *&v237[0] = v63;
      *v62 = 141558275;
      *(v62 + 4) = 1752392040;
      *(v62 + 12) = 2081;
      v65 = v240;
      v64 = v241;
      sub_1000035D0(&v239, v240);
      (*(*(*(v64 + 8) + 8) + 32))(v65);
      sub_100985CA0(&qword_101696930, &type metadata accessor for UUID);
      v66 = dispatch thunk of CustomStringConvertible.description.getter();
      v68 = v67;
      v69 = v234;
      (*(v234 + 8))(v59, v60);
      sub_100007BAC(&v239);
      v70 = sub_1000136BC(v66, v68, v237);

      *(v62 + 14) = v70;
      _os_log_impl(&_mh_execute_header, v56, v57, "Updating sessions for BeaconRecord changes. Beacon: %{private,mask.hash}s.", v62, 0x16u);
      sub_100007BAC(v63);

      v71 = v233;
    }

    else
    {

      sub_100007BAC(&v239);
      v71 = v233;
      v69 = v234;
    }

    v90 = sub_10088D968(&v242);
    sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
    v91 = *(v69 + 72);
    v92 = (*(v69 + 80) + 32) & ~*(v69 + 80);
    v93 = swift_allocObject();
    *(v93 + 16) = xmmword_101385D80;
    v95 = v243;
    v94 = v244;
    sub_1000035D0(&v242, v243);
    (*(*(*(v94 + 8) + 8) + 32))(v95);
    v96 = (v69 + 8);
    v88 = v230;
    if (v90)
    {
      v97 = sub_100B05044(v93);
      swift_setDeallocating();
      (*v96)(v93 + v92, v236);
      swift_deallocClassInstance();
      v98 = *(v61 + 168);
      type metadata accessor for WorkItemQueue.WorkItem();
      v99 = swift_allocObject();
      v99[2] = v61;
      v99[3] = v97;
      v78 = v232;
      v99[4] = v232;

      UUID.init()();
      WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
      dispatch thunk of WorkItemQueue.enqueue(_:)();
    }

    else
    {
      v117 = sub_10000954C(v93);
      swift_setDeallocating();
      (*v96)(v93 + v92, v236);
      swift_deallocClassInstance();
      type metadata accessor for Transaction();
      v118 = swift_allocObject();
      v78 = v232;
      v118[2] = v117;
      v118[3] = v78;
      v118[4] = v61;

      static Transaction.asyncTask(name:block:)();
    }

    v89 = v229;

    sub_100007BAC(&v242);
    v54 = v212;
    goto LABEL_34;
  }

  v238 = 0;
  memset(v237, 0, sizeof(v237));
  sub_10000B3A8(v237, &qword_101696920, &unk_10138B200);
  sub_10001F280(a1, &v242);
  v72 = swift_dynamicCast();
  v73 = *(v47 + 56);
  if (v72)
  {
    v73(v45, 0, 1, v46);
    sub_100986170(v45, v50, type metadata accessor for KeyAlignmentRecord);
    if (qword_101694AD8 != -1)
    {
      swift_once();
    }

    v212 = a1;
    v74 = type metadata accessor for Logger();
    sub_1000076D4(v74, qword_10177B740);
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.default.getter();
    v77 = os_log_type_enabled(v75, v76);
    v78 = v232;
    v79 = v236;
    v61 = v231;
    if (v77)
    {
      v80 = swift_slowAlloc();
      *v80 = 0;
      _os_log_impl(&_mh_execute_header, v75, v76, "Updating sessions for KeySyncRecord changes.", v80, 2u);
    }

    sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
    v81 = v234;
    v82 = *(v234 + 72);
    v83 = (*(v234 + 80) + 32) & ~*(v234 + 80);
    v84 = swift_allocObject();
    *(v84 + 16) = xmmword_101385D80;
    (*(v81 + 16))(v84 + v83, &v50[*(v46 + 24)], v79);
    v85 = sub_100B05044(v84);
    swift_setDeallocating();
    (*(v81 + 8))(v84 + v83, v79);
    swift_deallocClassInstance();
    v86 = *(v61 + 168);
    type metadata accessor for WorkItemQueue.WorkItem();
    v87 = swift_allocObject();
    v87[2] = v61;
    v87[3] = v85;
    v87[4] = v78;

    UUID.init()();
    WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
    dispatch thunk of WorkItemQueue.enqueue(_:)();

    sub_100988488(v50, type metadata accessor for KeyAlignmentRecord);
    v88 = v230;
    v54 = v212;
    v89 = v229;
    goto LABEL_33;
  }

  v73(v45, 1, 1, v46);
  sub_10000B3A8(v45, &qword_10169F328, &unk_1013CB040);
  sub_10001F280(a1, &v242);
  v100 = v221;
  v101 = swift_dynamicCast();
  v102 = *(v220 + 56);
  if (v101)
  {
    v102(v34, 0, 1, v100);
    v103 = v222;
    sub_100986170(v34, v222, type metadata accessor for BeaconNamingRecord);
    if (qword_101694AD8 != -1)
    {
      swift_once();
    }

    v104 = a1;
    v105 = type metadata accessor for Logger();
    sub_1000076D4(v105, qword_10177B740);
    sub_1009863FC(v103, v38, type metadata accessor for BeaconNamingRecord);
    v106 = Logger.logObject.getter();
    v107 = static os_log_type_t.default.getter();
    v108 = os_log_type_enabled(v106, v107);
    v109 = v236;
    if (v108)
    {
      v110 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      v242 = v111;
      *v110 = 141558275;
      *(v110 + 4) = 1752392040;
      *(v110 + 12) = 2081;
      v112 = *(v100 + 24);
      sub_100985CA0(&qword_101696930, &type metadata accessor for UUID);
      v113 = dispatch thunk of CustomStringConvertible.description.getter();
      v115 = v114;
      sub_100988488(v38, type metadata accessor for BeaconNamingRecord);
      v116 = sub_1000136BC(v113, v115, &v242);

      *(v110 + 14) = v116;
      _os_log_impl(&_mh_execute_header, v106, v107, "Updating sessions for Beacon Name changes. Beacon: %{private,mask.hash}s", v110, 0x16u);
      sub_100007BAC(v111);
    }

    else
    {

      sub_100988488(v38, type metadata accessor for BeaconNamingRecord);
    }

    v78 = v232;
    sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
    v137 = v234;
    v138 = *(v234 + 72);
    v139 = (*(v234 + 80) + 32) & ~*(v234 + 80);
    v140 = swift_allocObject();
    *(v140 + 16) = xmmword_101385D80;
    v141 = *(v100 + 24);
    v142 = v222;
    (*(v137 + 16))(v140 + v139, v222 + v141, v109);
    v143 = sub_100B05044(v140);
    swift_setDeallocating();
    (*(v137 + 8))(v140 + v139, v109);
    swift_deallocClassInstance();
    v61 = v231;
    v144 = *(v231 + 168);
    type metadata accessor for WorkItemQueue.WorkItem();
    v145 = swift_allocObject();
    v145[2] = v61;
    v145[3] = v143;
    v145[4] = v78;

    UUID.init()();
    WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
    dispatch thunk of WorkItemQueue.enqueue(_:)();

    sub_100988488(v142, type metadata accessor for BeaconNamingRecord);
    v54 = v104;
    v89 = v229;
  }

  else
  {
    v102(v34, 1, 1, v100);
    sub_10000B3A8(v34, &unk_1016B29E0, &unk_1013B70E0);
    sub_10001F280(a1, &v242);
    v119 = v218;
    v120 = swift_dynamicCast();
    v121 = *(v217 + 56);
    v78 = v232;
    v89 = v229;
    if (v120)
    {
      v121(v28, 0, 1, v119);
      sub_100986170(v28, v219, type metadata accessor for LostModeRecord);
      v61 = v231;
      if (qword_101694AD8 != -1)
      {
        swift_once();
      }

      v212 = v54;
      v122 = type metadata accessor for Logger();
      sub_1000076D4(v122, qword_10177B740);
      v123 = Logger.logObject.getter();
      v124 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v123, v124))
      {
        v125 = swift_slowAlloc();
        *v125 = 0;
        _os_log_impl(&_mh_execute_header, v123, v124, "Updating sessions for Lost Mode changes.", v125, 2u);
      }

      sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
      v126 = v234;
      v127 = *(v234 + 72);
      v128 = (*(v234 + 80) + 32) & ~*(v234 + 80);
      v129 = swift_allocObject();
      *(v129 + 16) = xmmword_101385D80;
      v130 = *(v119 + 24);
      v131 = v219;
      v132 = v236;
      (*(v126 + 16))(v129 + v128, v219 + v130, v236);
      v133 = sub_100B05044(v129);
      swift_setDeallocating();
      (*(v126 + 8))(v129 + v128, v132);
      swift_deallocClassInstance();
      v134 = *(v61 + 168);
      type metadata accessor for WorkItemQueue.WorkItem();
      v135 = swift_allocObject();
      v135[2] = v61;
      v135[3] = v133;
      v135[4] = v78;

      UUID.init()();
      WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
      dispatch thunk of WorkItemQueue.enqueue(_:)();

      v136 = type metadata accessor for LostModeRecord;
    }

    else
    {
      v121(v28, 1, 1, v119);
      sub_10000B3A8(v28, &unk_1016A99E0, &qword_1013A07B0);
      sub_10001F280(v54, &v242);
      v177 = v214;
      v178 = v216;
      v179 = swift_dynamicCast();
      v180 = *(v213 + 56);
      v71 = v233;
      v61 = v231;
      if (v179)
      {
        v180(v177, 0, 1, v178);
        sub_100986170(v177, v215, type metadata accessor for SafeLocation);
        if (qword_101694AD8 != -1)
        {
          swift_once();
        }

        v181 = type metadata accessor for Logger();
        sub_1000076D4(v181, qword_10177B740);
        v182 = Logger.logObject.getter();
        v183 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v182, v183))
        {
          v184 = swift_slowAlloc();
          *v184 = 0;
          _os_log_impl(&_mh_execute_header, v182, v183, "Updating sessions for Safe Location changes.", v184, 2u);
        }

        v185 = v215;
        v186 = *(v215 + *(v216 + 52));

        v188 = sub_10000954C(v187);

        v189 = *(v61 + 168);
        type metadata accessor for WorkItemQueue.WorkItem();
        v190 = swift_allocObject();
        v190[2] = v61;
        v190[3] = v188;
        v190[4] = v78;

        UUID.init()();
        WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
        dispatch thunk of WorkItemQueue.enqueue(_:)();

        sub_100988488(v185, type metadata accessor for SafeLocation);
        goto LABEL_32;
      }

      v180(v177, 1, 1, v178);
      sub_10000B3A8(v177, &unk_1016AFA10, &qword_1013CB000);
      sub_10001F280(v54, &v242);
      v191 = v210;
      v192 = found;
      v193 = swift_dynamicCast();
      v194 = *(v209 + 56);
      if ((v193 & 1) == 0)
      {
        v194(v191, 1, 1, v192);
        sub_10000B3A8(v191, &qword_10169E328, &unk_10139D740);
        v88 = v230;
        goto LABEL_34;
      }

      v194(v191, 0, 1, v192);
      sub_100986170(v191, v208, type metadata accessor for NotifyWhenFoundRecord);
      if (qword_101694AD8 != -1)
      {
        swift_once();
      }

      v212 = v54;
      v195 = type metadata accessor for Logger();
      sub_1000076D4(v195, qword_10177B740);
      v196 = Logger.logObject.getter();
      v197 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v196, v197))
      {
        v198 = swift_slowAlloc();
        *v198 = 0;
        _os_log_impl(&_mh_execute_header, v196, v197, "Updating sessions for NotifyWhenFound changes.", v198, 2u);
      }

      sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
      v199 = v234;
      v200 = *(v234 + 72);
      v201 = (*(v234 + 80) + 32) & ~*(v234 + 80);
      v202 = swift_allocObject();
      *(v202 + 16) = xmmword_101385D80;
      v131 = v208;
      v203 = v236;
      (*(v199 + 16))(v202 + v201, &v208[*(found + 24)], v236);
      v204 = sub_100B05044(v202);
      swift_setDeallocating();
      (*(v199 + 8))(v202 + v201, v203);
      swift_deallocClassInstance();
      v205 = *(v61 + 168);
      type metadata accessor for WorkItemQueue.WorkItem();
      v206 = swift_allocObject();
      v206[2] = v61;
      v206[3] = v204;
      v206[4] = v78;

      UUID.init()();
      WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
      dispatch thunk of WorkItemQueue.enqueue(_:)();

      v136 = type metadata accessor for NotifyWhenFoundRecord;
    }

    sub_100988488(v131, v136);
    v54 = v212;
  }

LABEL_32:
  v88 = v230;
LABEL_33:
  v71 = v233;
LABEL_34:
  sub_10001F280(v54, &v242);
  v146 = swift_dynamicCast();
  v147 = *(v228 + 56);
  if (v146)
  {
    v147(v89, 0, 1, v88);
    v148 = v226;
    sub_100986170(v89, v226, type metadata accessor for OwnerSharingCircle);
    if (qword_101694AD8 != -1)
    {
      swift_once();
    }

    v149 = type metadata accessor for Logger();
    sub_1000076D4(v149, qword_10177B740);
    v150 = Logger.logObject.getter();
    v151 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v150, v151))
    {
      v152 = swift_slowAlloc();
      *v152 = 0;
      _os_log_impl(&_mh_execute_header, v150, v151, "Updating sessions for sharing changes [OwnerSharingCircle].", v152, 2u);
    }

    sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
    v153 = v234;
    v154 = *(v234 + 72);
    v155 = (*(v234 + 80) + 32) & ~*(v234 + 80);
    v156 = swift_allocObject();
    *(v156 + 16) = xmmword_101385D80;
    v157 = v236;
    (*(v153 + 16))(v156 + v155, v148 + *(v88 + 24), v236);
    v158 = sub_100B05044(v156);
    swift_setDeallocating();
    (*(v153 + 8))(v156 + v155, v157);
    swift_deallocClassInstance();
    v159 = *(v61 + 168);
    type metadata accessor for WorkItemQueue.WorkItem();
    v160 = swift_allocObject();
    v160[2] = v61;
    v160[3] = v158;
    v160[4] = v78;

    UUID.init()();
    WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
    dispatch thunk of WorkItemQueue.enqueue(_:)();

    v161 = type metadata accessor for OwnerSharingCircle;
LABEL_46:
    sub_100988488(v148, v161);
  }

  v147(v89, 1, 1, v88);
  sub_10000B3A8(v89, &unk_1016AFA00, &qword_10138C4D0);
  sub_10001F280(v54, &v242);
  v162 = v225;
  if (swift_dynamicCast())
  {
    (*(v224 + 56))(v162, 0, 1, v71);
    sub_100986170(v162, v227, type metadata accessor for MemberSharingCircle);
    if (qword_101694AD8 != -1)
    {
      swift_once();
    }

    v163 = type metadata accessor for Logger();
    sub_1000076D4(v163, qword_10177B740);
    v164 = Logger.logObject.getter();
    v165 = static os_log_type_t.default.getter();
    v166 = os_log_type_enabled(v164, v165);
    v167 = v234;
    if (v166)
    {
      v168 = swift_slowAlloc();
      *v168 = 0;
      _os_log_impl(&_mh_execute_header, v164, v165, "Updating sessions for sharing changes [MemberSharingCircle].", v168, 2u);
    }

    sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
    v169 = *(v167 + 72);
    v170 = (*(v167 + 80) + 32) & ~*(v167 + 80);
    v171 = swift_allocObject();
    *(v171 + 16) = xmmword_101385D80;
    v172 = *(v71 + 24);
    v148 = v227;
    v173 = v236;
    (*(v167 + 16))(v171 + v170, v227 + v172, v236);
    v174 = sub_100B05044(v171);
    swift_setDeallocating();
    (*(v167 + 8))(v171 + v170, v173);
    swift_deallocClassInstance();
    v175 = *(v61 + 168);
    type metadata accessor for WorkItemQueue.WorkItem();
    v176 = swift_allocObject();
    v176[2] = v61;
    v176[3] = v174;
    v176[4] = v78;

    UUID.init()();
    WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
    dispatch thunk of WorkItemQueue.enqueue(_:)();

    v161 = type metadata accessor for MemberSharingCircle;
    goto LABEL_46;
  }

  (*(v224 + 56))(v162, 1, 1, v71);
  return sub_10000B3A8(v162, &unk_101698BC0, &qword_10138C440);
}

uint64_t sub_100953080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a4;
  v8 = type metadata accessor for UUID();
  v6[15] = v8;
  v9 = *(v8 - 8);
  v6[16] = v9;
  v10 = *(v9 + 64) + 15;
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v11 = *(*(sub_1000BC4D4(&qword_1016A9A30, &unk_1013BD120) - 8) + 64) + 15;
  v6[21] = swift_task_alloc();
  v12 = type metadata accessor for LocalFindableAccessoryRecord();
  v6[22] = v12;
  v13 = *(v12 - 8);
  v6[23] = v13;
  v14 = *(v13 + 64) + 15;
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v15 = type metadata accessor for CloudStorageStore.State(0);
  v6[26] = v15;
  v16 = *(v15 - 8);
  v6[27] = v16;
  v17 = *(v16 + 64) + 15;
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v18 = *(*(sub_1000BC4D4(&qword_1016AA530, &unk_1013CAF90) - 8) + 64) + 15;
  v6[30] = swift_task_alloc();
  v19 = sub_1000BC4D4(&qword_1016AA538, &unk_1013BD130);
  v6[31] = v19;
  v20 = *(v19 - 8);
  v6[32] = v20;
  v21 = *(v20 + 64) + 15;
  v6[33] = swift_task_alloc();
  v22 = sub_1000BC4D4(&unk_1016AA540, &unk_1013CAFA0);
  v6[34] = v22;
  v23 = *(v22 - 8);
  v6[35] = v23;
  v24 = *(v23 + 64) + 15;
  v6[36] = swift_task_alloc();
  v25 = sub_1000BC4D4(&qword_1016B2F50, &unk_1013BD140);
  v6[37] = v25;
  v26 = *(v25 - 8);
  v6[38] = v26;
  v27 = *(v26 + 64) + 15;
  v6[39] = swift_task_alloc();

  return _swift_task_switch(sub_1009533E4, a4, 0);
}

uint64_t sub_1009533E4()
{
  v1 = *(*(v0 + 96) + 128);
  *(v0 + 320) = v1;
  return _swift_task_switch(sub_100953408, v1, 0);
}

uint64_t sub_100953408()
{
  v1 = v0[40];
  v2 = v0[36];
  v4 = v0[32];
  v3 = v0[33];
  v5 = v0[31];
  v6 = v0[26];
  swift_allocObject();
  swift_weakInit();
  (*(v4 + 104))(v3, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v5);
  AsyncStream.init(_:bufferingPolicy:_:)();

  return _swift_task_switch(sub_100953510, 0, 0);
}

uint64_t sub_100953510()
{
  v1 = v0[39];
  v3 = v0[35];
  v2 = v0[36];
  v4 = v0[34];
  AsyncStream.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v0[41] = 0;
  v5 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v6 = swift_task_alloc();
  v0[42] = v6;
  *v6 = v0;
  v6[1] = sub_1009535F0;
  v7 = v0[39];
  v8 = v0[37];
  v9 = v0[30];

  return AsyncStream.Iterator.next(isolation:)(v9, 0, 0, v8);
}

uint64_t sub_1009535F0()
{
  v1 = *(*v0 + 336);
  v3 = *v0;

  return _swift_task_switch(sub_1009536EC, 0, 0);
}

uint64_t sub_1009536EC()
{
  v106 = v0;
  v1 = v0[30];
  if ((*(v0[27] + 48))(v1, 1, v0[26]) == 1)
  {
    v2 = v0[36];
    v3 = v0[33];
    v5 = v0[28];
    v4 = v0[29];
    v7 = v0[24];
    v6 = v0[25];
    v8 = v0[20];
    v94 = v0[19];
    v98 = v0[18];
    v101 = v0[17];
    (*(v0[38] + 8))(v0[39], v0[37]);

    v9 = v0[1];
LABEL_5:

    return v9();
  }

  v10 = v0[41];
  sub_100986170(v1, v0[29], type metadata accessor for CloudStorageStore.State);
  static Task<>.checkCancellation()();
  if (v10)
  {
    v11 = v0[38];
    v12 = v0[39];
    v14 = v0[36];
    v13 = v0[37];
    v15 = v0[33];
    v16 = v0[30];
    v17 = v0[28];
    v89 = v0[25];
    v90 = v0[24];
    v91 = v0[21];
    v93 = v0[20];
    v95 = v0[19];
    v99 = v0[18];
    v102 = v0[17];
    sub_100988488(v0[29], type metadata accessor for CloudStorageStore.State);
    (*(v11 + 8))(v12, v13);

    v9 = v0[1];
    goto LABEL_5;
  }

  v19 = v0[26];
  sub_1009863FC(v0[29], v0[28], type metadata accessor for CloudStorageStore.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v0[16] + 32))(v0[19], v0[28], v0[15]);
      if (qword_101694AD8 != -1)
      {
        swift_once();
      }

      v21 = v0[18];
      v22 = v0[19];
      v23 = v0[15];
      v24 = v0[16];
      v25 = type metadata accessor for Logger();
      sub_1000076D4(v25, qword_10177B740);
      v103 = *(v24 + 16);
      v103(v21, v22, v23);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      v28 = os_log_type_enabled(v26, v27);
      v29 = v0[18];
      v31 = v0[15];
      v30 = v0[16];
      if (v28)
      {
        v32 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v105[0] = v96;
        *v32 = 141558275;
        *(v32 + 4) = 1752392040;
        *(v32 + 12) = 2081;
        sub_100985CA0(&qword_101696930, &type metadata accessor for UUID);
        v33 = dispatch thunk of CustomStringConvertible.description.getter();
        v35 = v34;
        v100 = *(v30 + 8);
        v100(v29, v31);
        v36 = sub_1000136BC(v33, v35, v105);

        *(v32 + 14) = v36;
        _os_log_impl(&_mh_execute_header, v26, v27, "Updating sessions for local findable record deleted %{private,mask.hash}s.", v32, 0x16u);
        sub_100007BAC(v96);
      }

      else
      {

        v100 = *(v30 + 8);
        v100(v29, v31);
      }

      v57 = v0[19];
      v58 = v0[20];
      v97 = v0[29];
      v59 = v0[16];
      v60 = v0[17];
      v61 = v0[15];
      v92 = v0[14];
      v62 = v0[13];
      sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
      v63 = *(v59 + 72);
      v64 = (*(v59 + 80) + 32) & ~*(v59 + 80);
      v65 = swift_allocObject();
      v103(v65 + v64, v57, v61);
      sub_100985CA0(&qword_1016967B0, &type metadata accessor for UUID);
      v105[0] = Set.init(minimumCapacity:)();
      v103(v58, v65 + v64, v61);
      swift_setDeallocating();
      v100(v65 + v64, v61);
      swift_deallocClassInstance();
      sub_100DE8BCC(v60, v58);
      v100(v60, v61);
      v66 = v105[0];
      type metadata accessor for Transaction();
      v67 = swift_allocObject();
      v67[2] = v66;
      v67[3] = v92;
      v67[4] = v62;

      static Transaction.asyncTask(name:block:)();

      v100(v57, v61);
      v56 = v97;
    }

    else
    {
      v55 = v0[28];
      sub_100988488(v0[29], type metadata accessor for CloudStorageStore.State);
      v56 = v55;
    }

LABEL_25:
    sub_100988488(v56, type metadata accessor for CloudStorageStore.State);
    goto LABEL_26;
  }

  v37 = v0[21];
  v38 = v0[22];
  sub_10000A748(v0[28], (v0 + 2));
  sub_10001F280((v0 + 2), (v0 + 7));
  sub_1000BC4D4(&unk_1016AA550, &qword_1013CAFC0);
  if (swift_dynamicCast())
  {
    v39 = v0[25];
    v40 = v0[21];
    (*(v0[23] + 56))(v40, 0, 1, v0[22]);
    sub_100986170(v40, v39, type metadata accessor for LocalFindableAccessoryRecord);
    if (qword_101694AD8 != -1)
    {
      swift_once();
    }

    v41 = v0[24];
    v42 = v0[25];
    v43 = type metadata accessor for Logger();
    sub_1000076D4(v43, qword_10177B740);
    sub_1009863FC(v42, v41, type metadata accessor for LocalFindableAccessoryRecord);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    v46 = os_log_type_enabled(v44, v45);
    v47 = v0[24];
    if (v46)
    {
      v48 = v0[15];
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v105[0] = v50;
      *v49 = 141558275;
      *(v49 + 4) = 1752392040;
      *(v49 + 12) = 2081;
      sub_100985CA0(&qword_101696930, &type metadata accessor for UUID);
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      sub_100988488(v47, type metadata accessor for LocalFindableAccessoryRecord);
      v54 = sub_1000136BC(v51, v53, v105);

      *(v49 + 14) = v54;
      _os_log_impl(&_mh_execute_header, v44, v45, "Updating sessions for local findable record modified %{private,mask.hash}s.", v49, 0x16u);
      sub_100007BAC(v50);
    }

    else
    {

      sub_100988488(v47, type metadata accessor for LocalFindableAccessoryRecord);
    }

    v104 = v0[29];
    v72 = v0[25];
    v73 = v0[20];
    v74 = v0[15];
    v75 = v0[16];
    v77 = v0[13];
    v76 = v0[14];
    sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
    v78 = *(v75 + 72);
    v79 = (*(v75 + 80) + 32) & ~*(v75 + 80);
    v80 = swift_allocObject();
    *(v80 + 16) = xmmword_101385D80;
    (*(v75 + 16))(v80 + v79, v72, v74);
    v81 = sub_100B05044(v80);
    swift_setDeallocating();
    (*(v75 + 8))(v80 + v79, v74);
    swift_deallocClassInstance();
    v82 = *(v77 + 168);
    type metadata accessor for WorkItemQueue.WorkItem();
    v83 = swift_allocObject();
    v83[2] = v77;
    v83[3] = v81;
    v83[4] = v76;

    UUID.init()();
    WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
    dispatch thunk of WorkItemQueue.enqueue(_:)();

    sub_100988488(v72, type metadata accessor for LocalFindableAccessoryRecord);
    sub_100007BAC(v0 + 2);
    v56 = v104;
    goto LABEL_25;
  }

  v68 = v0[29];
  v69 = v0[22];
  v70 = v0[23];
  v71 = v0[21];
  sub_100007BAC(v0 + 2);
  sub_100988488(v68, type metadata accessor for CloudStorageStore.State);
  (*(v70 + 56))(v71, 1, 1, v69);
  sub_10000B3A8(v71, &qword_1016A9A30, &unk_1013BD120);
LABEL_26:
  v0[41] = 0;
  v84 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v85 = swift_task_alloc();
  v0[42] = v85;
  *v85 = v0;
  v85[1] = sub_1009535F0;
  v86 = v0[39];
  v87 = v0[37];
  v88 = v0[30];

  return AsyncStream.Iterator.next(isolation:)(v88, 0, 0, v87);
}

uint64_t sub_100954264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v203 = a3;
  v207 = a1;
  v3 = sub_1000BC4D4(&unk_101698BC0, &qword_10138C440);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v195 = &v176 - v5;
  v202 = type metadata accessor for MemberSharingCircle();
  v194 = *(v202 - 8);
  v6 = *(v194 + 64);
  __chkstk_darwin(v202);
  v197 = &v176 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v201 = &v176 - v10;
  v199 = type metadata accessor for OwnerSharingCircle();
  v198 = *(v199 - 8);
  v11 = *(v198 + 64);
  __chkstk_darwin(v199);
  v196 = &v176 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000BC4D4(&qword_10169E328, &unk_10139D740);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v181 = &v176 - v15;
  found = type metadata accessor for NotifyWhenFoundRecord();
  v180 = *(found - 8);
  v16 = *(v180 + 64);
  __chkstk_darwin(found);
  v18 = &v176 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000BC4D4(&unk_1016AFA10, &qword_1013CB000);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v184 = &v176 - v21;
  v185 = type metadata accessor for SafeLocation();
  v183 = *(v185 - 8);
  v22 = *(v183 + 64);
  __chkstk_darwin(v185);
  v186 = &v176 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1000BC4D4(&unk_1016A99E0, &qword_1013A07B0);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v188 = &v176 - v26;
  v191 = type metadata accessor for LostModeRecord();
  v187 = *(v191 - 8);
  v27 = *(v187 + 64);
  __chkstk_darwin(v191);
  v192 = &v176 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1000BC4D4(&unk_1016AF890, &qword_1013926D0);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  v189 = &v176 - v31;
  v32 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32 - 8);
  v190 = &v176 - v34;
  v205 = type metadata accessor for UUID();
  v206 = *(v205 - 8);
  v35 = *(v206 + 64);
  v36 = __chkstk_darwin(v205);
  v179 = &v176 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v36);
  v204 = &v176 - v39;
  __chkstk_darwin(v38);
  v178 = &v176 - v40;
  v41 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v42 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41 - 8);
  v44 = &v176 - v43;
  v45 = type metadata accessor for SharedBeaconRecord(0);
  v46 = *(v45 - 8);
  v47 = *(v46 + 64);
  __chkstk_darwin(v45);
  v49 = &v176 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  v51 = *(*(v50 - 8) + 64);
  __chkstk_darwin(v50 - 8);
  v53 = &v176 - v52;
  v54 = type metadata accessor for BeaconNamingRecord();
  v55 = *(v54 - 8);
  v56 = *(v55 + 64);
  __chkstk_darwin(v54);
  v58 = &v176 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v200 = result;
  if (!result)
  {
    return result;
  }

  v177 = v18;
  sub_10001F280(v207, v210);
  v60 = sub_1000BC4D4(&qword_101698D58, &unk_1013908E0);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  v61 = swift_dynamicCast();
  v193 = v60;
  if (v61)
  {
    sub_10000A748(v208, &v211);
    sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
    v62 = v206;
    v63 = *(v206 + 72);
    v64 = (*(v206 + 80) + 32) & ~*(v206 + 80);
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_101385D80;
    v67 = v212;
    v66 = v213;
    sub_1000035D0(&v211, v212);
    (*(*(*(v66 + 8) + 8) + 32))(v67);
    v68 = sub_10000954C(v65);
    swift_setDeallocating();
    v69 = *(v62 + 8);
    v69(v65 + v64, v205);
    swift_deallocClassInstance();
    *&v208[0] = v68;
    sub_10001F280(&v211, v210);
    v70 = swift_dynamicCast();
    v71 = *(v46 + 56);
    if ((v70 & 1) == 0)
    {
      v71(v44, 1, 1, v45);
      sub_10000B3A8(v44, &unk_101698C30, &unk_101392630);
      v79 = v203;
      v80 = v202;
      v81 = v200;
      v78 = v205;
      v84 = v199;
      v76 = v206;
LABEL_31:
      v133 = *&v208[0];
      type metadata accessor for Transaction();
      v134 = swift_allocObject();
      v134[2] = v133;
      v134[3] = v79;
      v134[4] = v81;

      static Transaction.asyncTask(name:block:)();

      sub_100007BAC(&v211);
LABEL_32:
      v97 = v207;
      v114 = v201;
      goto LABEL_33;
    }

    v71(v44, 0, 1, v45);
    sub_100986170(v44, v49, type metadata accessor for SharedBeaconRecord);
    v72 = v189;
    sub_1000D2A70(&v49[*(v45 + 80)], v189, &unk_1016AF890, &qword_1013926D0);
    v73 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
    v74 = (*(*(v73 - 8) + 48))(v72, 1, v73);
    v75 = v204;
    if (v74 == 1)
    {
      sub_100988488(v49, type metadata accessor for SharedBeaconRecord);
      sub_10000B3A8(v72, &unk_1016AF890, &qword_1013926D0);
      v76 = v206;
      v77 = v190;
      v78 = v205;
      (*(v206 + 56))(v190, 1, 1, v205);
      v79 = v203;
      v80 = v202;
      v81 = v200;
    }

    else
    {
      v115 = v72 + *(v73 + 20);
      v77 = v190;
      sub_1000D2A70(v115, v190, &qword_1016980D0, &unk_10138F3B0);
      sub_100988488(v72, type metadata accessor for SharedBeaconRecord.PropertyListContent);
      v76 = v206;
      v78 = v205;
      v116 = (*(v206 + 48))(v77, 1, v205);
      v79 = v203;
      v81 = v200;
      if (v116 != 1)
      {
        v130 = v75;
        v131 = v178;
        (*(v76 + 32))(v178, v77, v78);
        v132 = v179;
        (*(v76 + 16))(v179, v131, v78);
        sub_100DE8BCC(v130, v132);
        v69(v130, v78);
        v79 = v203;
        v69(v131, v78);
        sub_100988488(v49, type metadata accessor for SharedBeaconRecord);
        v80 = v202;
        goto LABEL_30;
      }

      sub_100988488(v49, type metadata accessor for SharedBeaconRecord);
      v80 = v202;
    }

    sub_10000B3A8(v77, &qword_1016980D0, &unk_10138F3B0);
LABEL_30:
    v84 = v199;
    goto LABEL_31;
  }

  v209 = 0;
  memset(v208, 0, sizeof(v208));
  sub_10000B3A8(v208, &qword_101696920, &unk_10138B200);
  sub_10001F280(v207, &v211);
  v82 = swift_dynamicCast();
  v83 = *(v55 + 56);
  if (v82)
  {
    v83(v53, 0, 1, v54);
    sub_100986170(v53, v58, type metadata accessor for BeaconNamingRecord);
    v81 = v200;
    v78 = v205;
    v84 = v199;
    v85 = v206;
    if (qword_101694AD8 != -1)
    {
      swift_once();
    }

    v86 = type metadata accessor for Logger();
    sub_1000076D4(v86, qword_10177B740);
    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.default.getter();
    v89 = os_log_type_enabled(v87, v88);
    v79 = v203;
    if (v89)
    {
      v90 = swift_slowAlloc();
      *v90 = 0;
      _os_log_impl(&_mh_execute_header, v87, v88, "Updating sessions for name record changes.", v90, 2u);
      v85 = v206;
    }

    sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
    v91 = *(v85 + 72);
    v92 = (*(v85 + 80) + 32) & ~*(v85 + 80);
    v93 = swift_allocObject();
    *(v93 + 16) = xmmword_101385D80;
    (*(v85 + 16))(v93 + v92, &v58[*(v54 + 24)], v78);
    v94 = sub_100B05044(v93);
    swift_setDeallocating();
    (*(v85 + 8))(v93 + v92, v78);
    swift_deallocClassInstance();
    v95 = *(v81 + 168);
    type metadata accessor for WorkItemQueue.WorkItem();
    v96 = swift_allocObject();
    v96[2] = v81;
    v96[3] = v94;
    v96[4] = v79;

    UUID.init()();
    v76 = v206;
    WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
    dispatch thunk of WorkItemQueue.enqueue(_:)();

    sub_100988488(v58, type metadata accessor for BeaconNamingRecord);
    v80 = v202;
    goto LABEL_32;
  }

  v83(v53, 1, 1, v54);
  sub_10000B3A8(v53, &unk_1016B29E0, &unk_1013B70E0);
  v97 = v207;
  sub_10001F280(v207, &v211);
  v98 = v188;
  v99 = v191;
  v100 = swift_dynamicCast();
  v101 = *(v187 + 56);
  v81 = v200;
  v78 = v205;
  v84 = v199;
  v76 = v206;
  if (v100)
  {
    v101(v98, 0, 1, v99);
    sub_100986170(v98, v192, type metadata accessor for LostModeRecord);
    v79 = v203;
    if (qword_101694AD8 != -1)
    {
      swift_once();
    }

    v102 = type metadata accessor for Logger();
    sub_1000076D4(v102, qword_10177B740);
    v103 = Logger.logObject.getter();
    v104 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      *v105 = 0;
      _os_log_impl(&_mh_execute_header, v103, v104, "Updating sessions for Lost Mode changes.", v105, 2u);
    }

    sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
    v106 = *(v76 + 72);
    v107 = (*(v76 + 80) + 32) & ~*(v76 + 80);
    v108 = swift_allocObject();
    *(v108 + 16) = xmmword_101385D80;
    v109 = *(v99 + 24);
    v110 = v192;
    (*(v76 + 16))(v108 + v107, v192 + v109, v78);
    v111 = sub_100B05044(v108);
    swift_setDeallocating();
    (*(v76 + 8))(v108 + v107, v78);
    swift_deallocClassInstance();
    v112 = *(v81 + 168);
    type metadata accessor for WorkItemQueue.WorkItem();
    v113 = swift_allocObject();
    v113[2] = v81;
    v113[3] = v111;
    v113[4] = v79;

    UUID.init()();
    v76 = v206;
    WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
    dispatch thunk of WorkItemQueue.enqueue(_:)();

    sub_100988488(v110, type metadata accessor for LostModeRecord);
    v97 = v207;
    v114 = v201;
  }

  else
  {
    v101(v98, 1, 1, v99);
    sub_10000B3A8(v98, &unk_1016A99E0, &qword_1013A07B0);
    sub_10001F280(v97, &v211);
    v117 = v184;
    v118 = v185;
    v119 = swift_dynamicCast();
    v120 = *(v183 + 56);
    v79 = v203;
    v80 = v202;
    if (v119)
    {
      v120(v117, 0, 1, v118);
      sub_100986170(v117, v186, type metadata accessor for SafeLocation);
      if (qword_101694AD8 != -1)
      {
        swift_once();
      }

      v121 = type metadata accessor for Logger();
      sub_1000076D4(v121, qword_10177B740);
      v122 = Logger.logObject.getter();
      v123 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v122, v123))
      {
        v124 = swift_slowAlloc();
        *v124 = 0;
        _os_log_impl(&_mh_execute_header, v122, v123, "Updating sessions for Safe Location changes.", v124, 2u);
      }

      v125 = *(v186 + *(v185 + 52));

      v127 = sub_10000954C(v126);

      v128 = *(v81 + 168);
      type metadata accessor for WorkItemQueue.WorkItem();
      v129 = swift_allocObject();
      v129[2] = v81;
      v129[3] = v127;
      v129[4] = v79;

      UUID.init()();
      WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
      dispatch thunk of WorkItemQueue.enqueue(_:)();

      sub_100988488(v186, type metadata accessor for SafeLocation);
      v76 = v206;
      goto LABEL_32;
    }

    v120(v117, 1, 1, v118);
    sub_10000B3A8(v117, &unk_1016AFA10, &qword_1013CB000);
    sub_10001F280(v97, &v211);
    v161 = v181;
    v162 = found;
    v163 = swift_dynamicCast();
    v164 = *(v180 + 56);
    v114 = v201;
    if (v163)
    {
      v164(v161, 0, 1, v162);
      sub_100986170(v161, v177, type metadata accessor for NotifyWhenFoundRecord);
      if (qword_101694AD8 != -1)
      {
        swift_once();
      }

      v165 = type metadata accessor for Logger();
      sub_1000076D4(v165, qword_10177B740);
      v166 = Logger.logObject.getter();
      v167 = static os_log_type_t.default.getter();
      v168 = os_log_type_enabled(v166, v167);
      v80 = v202;
      if (v168)
      {
        v169 = swift_slowAlloc();
        *v169 = 0;
        _os_log_impl(&_mh_execute_header, v166, v167, "Updating sessions for NotifyWhenFound deleted.", v169, 2u);
      }

      sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
      v170 = *(v76 + 72);
      v171 = (*(v76 + 80) + 32) & ~*(v76 + 80);
      v172 = swift_allocObject();
      *(v172 + 16) = xmmword_101385D80;
      (*(v76 + 16))(v172 + v171, &v177[*(found + 24)], v78);
      v173 = sub_100B05044(v172);
      swift_setDeallocating();
      (*(v76 + 8))(v172 + v171, v78);
      swift_deallocClassInstance();
      v174 = *(v81 + 168);
      type metadata accessor for WorkItemQueue.WorkItem();
      v175 = swift_allocObject();
      v175[2] = v81;
      v175[3] = v173;
      v175[4] = v79;

      UUID.init()();
      v76 = v206;
      WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
      dispatch thunk of WorkItemQueue.enqueue(_:)();

      sub_100988488(v177, type metadata accessor for NotifyWhenFoundRecord);
      goto LABEL_32;
    }

    v164(v161, 1, 1, v162);
    sub_10000B3A8(v161, &qword_10169E328, &unk_10139D740);
  }

  v80 = v202;
LABEL_33:
  sub_10001F280(v97, &v211);
  v135 = swift_dynamicCast();
  v136 = *(v198 + 56);
  if (v135)
  {
    v136(v114, 0, 1, v84);
    v137 = v196;
    sub_100986170(v114, v196, type metadata accessor for OwnerSharingCircle);
    if (qword_101694AD8 != -1)
    {
      swift_once();
    }

    v138 = type metadata accessor for Logger();
    sub_1000076D4(v138, qword_10177B740);
    v139 = Logger.logObject.getter();
    v140 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v139, v140))
    {
      v141 = swift_slowAlloc();
      *v141 = 0;
      _os_log_impl(&_mh_execute_header, v139, v140, "Updating sessions for sharing changes [OwnerSharingCircle].", v141, 2u);
    }

    sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
    v142 = *(v76 + 72);
    v143 = (*(v76 + 80) + 32) & ~*(v76 + 80);
    v144 = swift_allocObject();
    *(v144 + 16) = xmmword_101385D80;
    (*(v76 + 16))(v144 + v143, v137 + *(v84 + 24), v78);
    v145 = sub_100B05044(v144);
    swift_setDeallocating();
    (*(v76 + 8))(v144 + v143, v78);
    swift_deallocClassInstance();
    v146 = *(v81 + 168);
    type metadata accessor for WorkItemQueue.WorkItem();
    v147 = swift_allocObject();
    v147[2] = v81;
    v147[3] = v145;
    v147[4] = v79;

    UUID.init()();
    WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
    dispatch thunk of WorkItemQueue.enqueue(_:)();

    v148 = type metadata accessor for OwnerSharingCircle;
LABEL_45:
    sub_100988488(v137, v148);
  }

  v136(v114, 1, 1, v84);
  sub_10000B3A8(v114, &unk_1016AFA00, &qword_10138C4D0);
  sub_10001F280(v97, &v211);
  v149 = v195;
  if (swift_dynamicCast())
  {
    (*(v194 + 56))(v149, 0, 1, v80);
    sub_100986170(v149, v197, type metadata accessor for MemberSharingCircle);
    if (qword_101694AD8 != -1)
    {
      swift_once();
    }

    v150 = type metadata accessor for Logger();
    sub_1000076D4(v150, qword_10177B740);
    v151 = Logger.logObject.getter();
    v152 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v151, v152))
    {
      v153 = swift_slowAlloc();
      *v153 = 0;
      _os_log_impl(&_mh_execute_header, v151, v152, "Updating sessions for sharing changes [MemberSharingCircle].", v153, 2u);
    }

    sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
    v154 = *(v76 + 72);
    v155 = (*(v76 + 80) + 32) & ~*(v76 + 80);
    v156 = swift_allocObject();
    *(v156 + 16) = xmmword_101385D80;
    v157 = *(v80 + 24);
    v137 = v197;
    (*(v76 + 16))(v156 + v155, v197 + v157, v78);
    v158 = sub_100B05044(v156);
    swift_setDeallocating();
    (*(v76 + 8))(v156 + v155, v78);
    swift_deallocClassInstance();
    v159 = *(v81 + 168);
    type metadata accessor for WorkItemQueue.WorkItem();
    v160 = swift_allocObject();
    v160[2] = v81;
    v160[3] = v158;
    v160[4] = v79;

    UUID.init()();
    WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
    dispatch thunk of WorkItemQueue.enqueue(_:)();

    v148 = type metadata accessor for MemberSharingCircle;
    goto LABEL_45;
  }

  (*(v194 + 56))(v149, 1, 1, v80);
  return sub_10000B3A8(v149, &unk_101698BC0, &qword_10138C440);
}

uint64_t sub_10095607C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  v7 = type metadata accessor for UUID();
  v6[7] = v7;
  v8 = *(v7 - 8);
  v6[8] = v8;
  v9 = *(v8 + 64) + 15;
  v6[9] = swift_task_alloc();
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v10 = sub_1000BC4D4(&qword_1016AF9F0, &qword_1013CAFE8);
  v6[12] = v10;
  v11 = *(v10 - 8);
  v6[13] = v11;
  v12 = *(v11 + 64) + 15;
  v6[14] = swift_task_alloc();
  v13 = sub_1000BC4D4(&qword_1016AF9F8, &qword_1013CAFF0);
  v6[15] = v13;
  v14 = *(v13 - 8);
  v6[16] = v14;
  v15 = *(v14 + 64) + 15;
  v6[17] = swift_task_alloc();

  return _swift_task_switch(sub_100956228, 0, 0);
}

uint64_t sub_100956228()
{
  v1 = v0[17];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];
  v5 = *(*(v0[4] + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_productInfoManager) + 16);
  OS_dispatch_queue.sync<A>(execute:)();
  AsyncStream.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v6 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v7 = swift_task_alloc();
  v0[18] = v7;
  *v7 = v0;
  v7[1] = sub_100956358;
  v8 = v0[17];
  v9 = v0[15];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, 0, 0, v9);
}

uint64_t sub_100956358()
{
  v1 = *(*v0 + 144);
  v3 = *v0;

  return _swift_task_switch(sub_100956454, 0, 0);
}

uint64_t sub_100956454()
{
  v47 = v0;
  if (!v0[2])
  {
LABEL_7:
    v6 = v0[14];
    v8 = v0[10];
    v7 = v0[11];
    v9 = v0[9];
    (*(v0[16] + 8))(v0[17], v0[15]);

    v10 = v0[1];

    return v10();
  }

  v1 = v0[3];

  if (static Task<>.isCancelled.getter())
  {

    if (qword_101694AD8 == -1)
    {
LABEL_4:
      v2 = type metadata accessor for Logger();
      sub_1000076D4(v2, qword_10177B740);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v3, v4, "Cancelling productInfoUpdateTask", v5, 2u);
      }

      goto LABEL_7;
    }

LABEL_23:
    swift_once();
    goto LABEL_4;
  }

  v45 = *(v1 + 16);
  if (v45)
  {
    v12 = 0;
    v44 = v1;
    while (v12 < *(v1 + 16))
    {
      v15 = v0[8];
      v16 = *(v15 + 16);
      v16(v0[11], v1 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v12, v0[7]);
      if (qword_101694AD8 != -1)
      {
        swift_once();
      }

      v17 = v0[11];
      v18 = v0[9];
      v19 = v0[7];
      v20 = type metadata accessor for Logger();
      sub_1000076D4(v20, qword_10177B740);
      v16(v18, v17, v19);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      v23 = os_log_type_enabled(v21, v22);
      v25 = v0[8];
      v24 = v0[9];
      v26 = v0[7];
      if (v23)
      {
        v27 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v46 = v43;
        *v27 = 141558275;
        *(v27 + 4) = 1752392040;
        *(v27 + 12) = 2081;
        sub_100985CA0(&qword_101696930, &type metadata accessor for UUID);
        v42 = v22;
        v28 = dispatch thunk of CustomStringConvertible.description.getter();
        v30 = v29;
        v13 = *(v25 + 8);
        v13(v24, v26);
        v31 = sub_1000136BC(v28, v30, &v46);

        *(v27 + 14) = v31;
        _os_log_impl(&_mh_execute_header, v21, v42, "Updating sessions for beacon with updated product info %{private,mask.hash}s.", v27, 0x16u);
        sub_100007BAC(v43);
      }

      else
      {

        v13 = *(v25 + 8);
        v13(v24, v26);
      }

      ++v12;
      v14 = v0[8] + 8;
      v13(v0[11], v0[7]);
      v1 = v44;
      if (v45 == v12)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_19:
  v32 = v0[10];
  v34 = v0[5];
  v33 = v0[6];
  v35 = sub_10000954C(v1);

  v36 = *(v34 + 168);
  type metadata accessor for WorkItemQueue.WorkItem();
  v37 = swift_allocObject();
  v37[2] = v34;
  v37[3] = v35;
  v37[4] = v33;

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v38 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v39 = swift_task_alloc();
  v0[18] = v39;
  *v39 = v0;
  v39[1] = sub_100956358;
  v40 = v0[17];
  v41 = v0[15];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, 0, 0, v41);
}

void sub_10095699C(char a1)
{
  *(v1 + 200) = a1 & 1;
  if (qword_101694AD8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177B740);
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;
    if (a1)
    {
      v7 = 0x6E61685465726F6DLL;
    }

    else
    {
      v7 = 6647407;
    }

    if (a1)
    {
      v8 = 0xEB00000000656E4FLL;
    }

    else
    {
      v8 = 0xE300000000000000;
    }

    v9 = sub_1000136BC(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, oslog, v4, "Stored last connectable device count %{public}s.", v5, 0xCu);
    sub_100007BAC(v6);
  }
}

void sub_100956B24()
{
  if (*(v0 + 272))
  {
    if (qword_101694AD8 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000076D4(v1, qword_10177B740);
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v2, "Keeping subscriptions for intent context.", v3, 2u);
    }

    return;
  }

  v4 = v0;
  v5 = *(*(v0 + 128) + 16);
  OS_dispatch_queue.sync<A>(execute:)();
  if (v32 != 1)
  {
    if (qword_101694AD8 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_1000076D4(v30, qword_10177B740);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v26, v27))
    {
      goto LABEL_38;
    }

    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = "Keeping subscriptions for connection pool.";
    goto LABEL_37;
  }

  *(v4 + OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_cachedUnifiedBeaconsStale) = 1;
  if (qword_101694AD8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177B740);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Unified beacons cached marked as stale.", v9, 2u);
  }

  if (*(v4 + 136))
  {
    *(v4 + 136) = 0;

    *(v4 + 200) = 2;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Unsubscribed from connectable devices change publisher.", v12, 2u);
    }
  }

  if (*(v4 + 144))
  {
    *(v4 + 144) = 0;

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Unsubscribed from recordPublisherSubject publisher.", v15, 2u);
    }
  }

  if (*(v4 + 152))
  {
    *(v4 + 152) = 0;

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Unsubscribed from beaconRecordDeletedSubject publisher.", v18, 2u);
    }
  }

  if (*(v4 + 184))
  {
    v19 = *(v4 + 184);

    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    Task.cancel()();

    v20 = *(v4 + 184);
    *(v4 + 184) = 0;

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Unsubscribed from localFindableRecordUpdateTask.", v23, 2u);
    }
  }

  if (*(v4 + 192))
  {
    v24 = *(v4 + 192);

    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    Task.cancel()();

    v25 = *(v4 + 192);
    *(v4 + 192) = 0;

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v26, v27))
    {
LABEL_38:

      return;
    }

    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = "Unsubscribed from productInfoUpdateTask.";
LABEL_37:
    _os_log_impl(&_mh_execute_header, v26, v27, v29, v28, 2u);

    goto LABEL_38;
  }
}

id sub_1009570CC(void *a1, uint64_t a2)
{
  v107 = type metadata accessor for String.Encoding();
  v5 = *(v107 - 1);
  v6 = *(v5 + 64);
  __chkstk_darwin(v107);
  v8 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for UUID();
  v9 = *(v104 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v104);
  v13 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v99 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v99 - v18;
  v20 = __chkstk_darwin(v17);
  v103 = &v99 - v21;
  __chkstk_darwin(v20);
  v106 = &v99 - v22;
  v23 = OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_cachedUnifiedBeacons;
  swift_beginAccess();
  v24 = *(v2 + v23);
  if (!*(v24 + 16))
  {
    return 0;
  }

  v25 = sub_1000210EC(a2);
  if ((v26 & 1) == 0)
  {

    return 0;
  }

  v101 = v19;
  v27 = *(v24 + 56) + 16 * v25;
  v28 = *(v27 + 8);
  v29 = a1;
  v30 = *v27;

  v31 = v29[6];
  if (*(v31 + 16))
  {
    v32 = [v30 serialNumber];
    if (v32)
    {
      v33 = v32;
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;

      v108 = v34;
      v109 = v36;
      __chkstk_darwin(v37);
      *(&v99 - 2) = &v108;
      LOBYTE(v33) = sub_1002EB538(sub_100987EE4, (&v99 - 4), v31);

      if (v33)
      {
        return v30;
      }
    }

    goto LABEL_19;
  }

  v102 = v9;
  v100 = v30;
  v38 = v29[7];
  v39 = *(v38 + 16);
  if (!v39)
  {
    v56 = *v29;
    v57 = v29;
    v58 = v29[4];
    if ((v56 & 0x2000) != 0)
    {
      if (sub_1005C8A30(a2, v58))
      {
        return v100;
      }

      return 0;
    }

    v59 = *(v58 + 16);
    v60 = v100;
    if (v59)
    {
      v61 = sub_1005C8A30(a2, v58);
      v62 = [v60 groupIdentifier];
      if (v62)
      {
        v63 = v60;
        v64 = v62;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v60 = v63;
        v65 = sub_1005C8A30(v16, v58);
        (*(v102 + 8))(v16, v104);
        if (v65 || v61)
        {
          goto LABEL_26;
        }

LABEL_51:

        return 0;
      }

      if (!v61)
      {
        goto LABEL_51;
      }
    }

LABEL_26:
    v66 = v57[5];
    if (*(v66 + 16))
    {

      if (qword_101694AD8 != -1)
      {
        swift_once();
      }

      v67 = type metadata accessor for Logger();
      sub_1000076D4(v67, qword_10177B740);
      v30 = v60;
      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.debug.getter();
      v70 = os_log_type_enabled(v68, v69);
      v71 = &selRef_initWithBeaconAdvertisements_searchResultMarker_error_;
      v72 = v104;
      if (v70)
      {
        v73 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        v108 = v107;
        *v73 = 134218242;
        *(v73 + 4) = [v30 productId];

        *(v73 + 12) = 2080;
        v74 = [v30 productUUID];
        v75 = v101;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        sub_100985CA0(&qword_101696930, &type metadata accessor for UUID);
        v76 = dispatch thunk of CustomStringConvertible.description.getter();
        v78 = v77;
        v79 = v102;
        (*(v102 + 8))(v75, v72);
        v80 = sub_1000136BC(v76, v78, &v108);

        *(v73 + 14) = v80;
        v71 = &selRef_initWithBeaconAdvertisements_searchResultMarker_error_;
        _os_log_impl(&_mh_execute_header, v68, v69, "Checking product UUID: %ld - %s.", v73, 0x16u);
        sub_100007BAC(v107);
      }

      else
      {

        v75 = v101;
        v79 = v102;
      }

      v83 = [v30 v71[372]];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      LOBYTE(v83) = sub_1005C8A30(v75, v66);
      (*(v79 + 8))(v75, v72);
      if ((v83 & 1) == 0)
      {
        goto LABEL_19;
      }

      return v30;
    }

    [v60 copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100008BB8(0, &qword_1016AF988, SPInternalSimpleBeacon_ptr);
    if (!swift_dynamicCast())
    {

      if (qword_101694AD8 != -1)
      {
        swift_once();
      }

      v84 = type metadata accessor for Logger();
      sub_1000076D4(v84, qword_10177B740);
      v85 = v102;
      v86 = v104;
      (*(v102 + 16))(v13, a2, v104);
      sub_1009871D4(v57, &v108);
      v87 = Logger.logObject.getter();
      v88 = static os_log_type_t.error.getter();
      sub_1007206EC(v57);
      if (os_log_type_enabled(v87, v88))
      {
        v107 = v60;
        v89 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        *v89 = 141558531;
        *(v89 + 4) = 1752392040;
        *(v89 + 12) = 2081;
        sub_100985CA0(&qword_101696930, &type metadata accessor for UUID);
        v90 = dispatch thunk of CustomStringConvertible.description.getter();
        v92 = v91;
        (*(v85 + 8))(v13, v86);
        v93 = sub_1000136BC(v90, v92, &v108);

        *(v89 + 14) = v93;
        *(v89 + 22) = 2082;
        if (v57[2])
        {
          v94 = v57[1];
          v95 = v57[2];
        }

        else
        {
          v95 = 0xE700000000000000;
          v94 = 0x6E776F6E6B6E75;
        }

        v98 = sub_1000136BC(v94, v95, &v108);

        *(v89 + 24) = v98;
        _os_log_impl(&_mh_execute_header, v87, v88, "Failed to filter beacon %{private,mask.hash}s for %{public}s.", v89, 0x20u);
        swift_arrayDestroy();
      }

      else
      {

        (*(v85 + 8))(v13, v86);
      }

      return 0;
    }

    v81 = v110;
    if ((v56 & 0x200) != 0)
    {
      if ((v28 & 0x200) != 0)
      {
        v96 = [v60 taskInformation];
        type metadata accessor for SPBeaconTaskName(0);
        sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
        sub_100985CA0(&qword_1016964D0, type metadata accessor for SPBeaconTaskName);
        static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v30 = v81;
        [v81 setTaskInformation:isa];

        [v81 setRawMetadata:0];
        return v30;
      }
    }

    else
    {

      if ((v28 & 0xFFFFFFFFFFFFFDFFLL) != 0)
      {
        if ((v56 & 0x80) != 0)
        {
          if (v56)
          {
            goto LABEL_39;
          }
        }

        else
        {
          [v81 setName:0];
          if (v56)
          {
LABEL_39:
            if ((v56 & 2) != 0)
            {
              goto LABEL_40;
            }

            goto LABEL_69;
          }
        }

        [v81 setManufacturerName:0];
        if ((v56 & 2) != 0)
        {
LABEL_40:
          if ((v56 & 4) != 0)
          {
            goto LABEL_41;
          }

          goto LABEL_70;
        }

LABEL_69:
        [v81 setModelName:0];
        if ((v56 & 4) != 0)
        {
LABEL_41:
          if ((v56 & 8) != 0)
          {
            goto LABEL_42;
          }

          goto LABEL_71;
        }

LABEL_70:
        [v81 setVendorId:0];
        if ((v56 & 8) != 0)
        {
LABEL_42:
          if ((v56 & 0x10) != 0)
          {
            goto LABEL_43;
          }

          goto LABEL_72;
        }

LABEL_71:
        [v81 setProductId:0];
        if ((v56 & 0x10) != 0)
        {
LABEL_43:
          if ((v56 & 0x20) != 0)
          {
            goto LABEL_44;
          }

          goto LABEL_73;
        }

LABEL_72:
        [v81 setSerialNumber:0];
        if ((v56 & 0x20) != 0)
        {
LABEL_44:
          if ((v56 & 0x40) != 0)
          {
            goto LABEL_45;
          }

          goto LABEL_74;
        }

LABEL_73:
        [v81 setConnectableDeviceCount:0];
        if ((v56 & 0x40) != 0)
        {
LABEL_45:
          if ((v56 & 0x100) != 0)
          {
            goto LABEL_46;
          }

          goto LABEL_75;
        }

LABEL_74:
        [v81 setBatteryLevel:0];
        if ((v56 & 0x100) != 0)
        {
LABEL_46:
          if ((v56 & 0x800) != 0)
          {
            goto LABEL_47;
          }

          goto LABEL_76;
        }

LABEL_75:
        [v81 setKeySyncRecord:0];
        if ((v56 & 0x800) != 0)
        {
LABEL_47:
          if ((v56 & 0x1000) != 0)
          {
LABEL_49:

            return v81;
          }

LABEL_48:
          sub_1009097B0(_swiftEmptyArrayStorage);
          type metadata accessor for SPBeaconTaskName(0);
          sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
          sub_100985CA0(&qword_1016964D0, type metadata accessor for SPBeaconTaskName);
          v82 = Dictionary._bridgeToObjectiveC()().super.isa;

          [v81 setTaskInformation:v82];

          goto LABEL_49;
        }

LABEL_76:
        [v81 setRawMetadata:0];
        if ((v56 & 0x1000) != 0)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      }
    }

    return 0;
  }

  v40 = (v5 + 8);
  v41 = v103;
  v105 = (v102 + 32);
  v42 = (v38 + 40);
  v43 = _swiftEmptyArrayStorage;
  do
  {
    v44 = *(v42 - 1);
    v45 = *v42;

    static String.Encoding.utf8.getter();
    v46 = String.data(using:allowLossyConversion:)();
    v48 = v47;
    (*v40)(v8, v107);
    if (v48 >> 60 == 15)
    {
    }

    else
    {
      v108 = v46;
      v109 = v48;
      sub_1000E0A3C();
      DataProtocol.stableUUID.getter();

      sub_100006654(v46, v48);
      v49 = *v105;
      v50 = v104;
      (*v105)(v106, v41, v104);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = sub_100A5BFE0(0, *(v43 + 2) + 1, 1, v43);
      }

      v52 = *(v43 + 2);
      v51 = *(v43 + 3);
      if (v52 >= v51 >> 1)
      {
        v43 = sub_100A5BFE0(v51 > 1, v52 + 1, 1, v43);
      }

      *(v43 + 2) = v52 + 1;
      v49(&v43[((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v52], v106, v50);
    }

    v42 += 2;
    --v39;
  }

  while (v39);
  v30 = v100;
  v53 = [v100 identifier];
  v54 = v101;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v53) = sub_1005C8A30(v54, v43);

  (*(v102 + 8))(v54, v104);
  if ((v53 & 1) == 0)
  {
LABEL_19:

    return 0;
  }

  return v30;
}

uint64_t sub_100957E68(uint64_t a1, uint64_t a2)
{
  v3[35] = a2;
  v3[36] = v2;
  v3[34] = a1;
  v4 = type metadata accessor for UUID();
  v3[37] = v4;
  v5 = *(v4 - 8);
  v3[38] = v5;
  v6 = *(v5 + 64) + 15;
  v3[39] = swift_task_alloc();

  return _swift_task_switch(sub_100957F2C, v2, 0);
}

uint64_t sub_100957F2C()
{
  v26 = v0;
  v1 = v0[35];
  v2 = v0[34];
  v0[40] = *(v0[36] + 128);
  v3 = sub_100011328(v2, v1);
  v0[41] = v3;
  if (v3)
  {
    v4 = v0[36];
    sub_100959EB0(v3, v0[35]);

    return _swift_task_switch(sub_1009581DC, 0, 0);
  }

  else
  {
    if (qword_101694AD8 != -1)
    {
      swift_once();
    }

    v5 = v0[34];
    v6 = v0[35];
    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_10177B740);
    sub_1009871D4(v6, (v0 + 2));
    v8 = v5;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    sub_1007206EC(v6);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = v0[34];
      v12 = v0[35];
      v13 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v13 = 136315394;
      v14 = [v11 debugDescription];
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      v18 = sub_1000136BC(v15, v17, &v25);

      *(v13 + 4) = v18;
      *(v13 + 12) = 2082;
      if (*(v12 + 16))
      {
        v19 = *(v0[35] + 8);
        v20 = *(v12 + 16);
      }

      else
      {
        v20 = 0xE700000000000000;
        v19 = 0x6E776F6E6B6E75;
      }

      v21 = sub_1000136BC(v19, v20, &v25);

      *(v13 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v9, v10, "Failed to add connection %s, bundle: %{public}s.", v13, 0x16u);
      swift_arrayDestroy();
    }

    v22 = v0[39];

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_1009581DC()
{
  v1 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v2 = swift_task_alloc();
  *(v0 + 336) = v2;
  v3 = sub_1000BC4D4(&qword_1016AF9A8, &qword_1013CAED8);
  *v2 = v0;
  v2[1] = sub_1009582CC;
  v4 = *(v0 + 320);

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 256, 0, 0, 0x736553636E797361, 0xED0000736E6F6973, sub_10098720C, v4, v3);
}

uint64_t sub_1009582CC()
{
  v1 = *(*v0 + 336);
  v3 = *v0;

  return _swift_task_switch(sub_1009583C8, 0, 0);
}

uint64_t sub_1009583C8()
{
  v1 = v0[36];
  v0[43] = v0[32];
  return _swift_task_switch(sub_1009583EC, v1, 0);
}

uint64_t sub_1009583EC()
{
  v1 = v0[43];
  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
    v3 = v0[43];
  }

  else
  {
    v2 = *(v1 + 16);
  }

  if (v2 == 1)
  {
    v4 = async function pointer to daemon.getter[1];
    v5 = swift_task_alloc();
    v0[44] = v5;
    *v5 = v0;
    v5[1] = sub_10095851C;

    return daemon.getter();
  }

  else
  {
    v6 = swift_task_alloc();
    v0[51] = v6;
    *v6 = v0;
    v6[1] = sub_100958BA8;
    v7 = v0[36];

    return sub_10094E738();
  }
}

uint64_t sub_10095851C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 352);
  v12 = *v1;
  v3[45] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[46] = v6;
  v7 = type metadata accessor for Daemon();
  v3[47] = v7;
  v8 = type metadata accessor for LegacyServiceContainer();
  v9 = sub_100985CA0(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100985CA0(&unk_101698D70, type metadata accessor for LegacyServiceContainer);
  *v6 = v12;
  v6[1] = sub_1009586FC;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1009586FC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 368);
  v6 = *v2;
  v4[48] = a1;
  v4[49] = v1;

  if (v1)
  {
    v7 = v4[45];

    v8 = swift_task_alloc();
    v4[51] = v8;
    *v8 = v6;
    v8[1] = sub_100958BA8;
    v9 = v4[36];

    return sub_10094E738();
  }

  else
  {

    return _swift_task_switch(sub_100958890, a1, 0);
  }
}

uint64_t sub_100958890()
{
  v1 = v0[48];
  v2 = v0[49];
  sub_10001B108();
  v0[50] = v3;
  v4 = v0[47];
  v5 = v0[45];
  if (v2)
  {

    sub_100985CA0(&qword_1016969E0, &type metadata accessor for Daemon);
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
    v9 = sub_100958B04;
  }

  else
  {
    sub_100985CA0(&qword_1016969E0, &type metadata accessor for Daemon);
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v10;
    v9 = sub_1009589B8;
  }

  return _swift_task_switch(v9, v6, v8);
}

uint64_t sub_1009589B8()
{
  v1 = v0[48];
  v2 = v0[45];
  v3 = v0[36];

  return _swift_task_switch(sub_100958A30, v3, 0);
}

uint64_t sub_100958A30()
{
  v1 = v0[36];
  v2 = *(v0[50] + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_connectableDevicesChangedSubject);
  CurrentValueSubject.value.getter();
  sub_10095699C(v0[33] > 1);

  v3 = swift_task_alloc();
  v0[51] = v3;
  *v3 = v0;
  v3[1] = sub_100958BA8;
  v4 = v0[36];

  return sub_10094E738();
}

uint64_t sub_100958B04()
{
  v1 = v0[48];
  v2 = v0[45];

  v3 = swift_task_alloc();
  v0[51] = v3;
  *v3 = v0;
  v3[1] = sub_100958BA8;
  v4 = v0[36];

  return sub_10094E738();
}

uint64_t sub_100958BA8()
{
  v1 = *(*v0 + 408);
  v2 = *(*v0 + 288);
  v4 = *v0;

  return _swift_task_switch(sub_100958CB8, v2, 0);
}

uint64_t sub_100958CB8()
{
  v1 = v0[35];
  if (*(*(v1 + 48) + 16) || *(*(v1 + 56) + 16))
  {
    v2 = v0[41];
    v4 = v0[38];
    v3 = v0[39];
    v6 = v0[36];
    v5 = v0[37];
    XPCSession.identifier.getter();
    v7 = OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_ephemeralBeaconSessions;
    swift_beginAccess();
    sub_1009871D4(v1, (v0 + 11));
    v8 = *(v6 + v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v6 + v7);
    *(v6 + v7) = 0x8000000000000000;
    sub_100FFF904(v1, v3, isUniquelyReferenced_nonNull_native);
    (*(v4 + 8))(v3, v5);
    *(v6 + v7) = v17;
    swift_endAccess();
    v10 = swift_task_alloc();
    v0[52] = v10;
    *v10 = v0;
    v10[1] = sub_100958E8C;
    v11 = v0[35];
    v12 = v0[36];

    return sub_100987214(v11);
  }

  else
  {
    v14 = v0[41];
    v15 = swift_task_alloc();
    v0[54] = v15;
    *v15 = v0;
    v15[1] = sub_100959124;
    v16 = v0[36];

    return sub_10095B808(v14);
  }
}

uint64_t sub_100958E8C()
{
  v1 = *v0;
  v2 = *(*v0 + 416);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 424) = v4;
  *v4 = v3;
  v4[1] = sub_100958FCC;
  v5 = *(v1 + 288);

  return sub_10097D024();
}

uint64_t sub_100958FCC()
{
  v1 = *v0;
  v2 = *(*v0 + 424);
  v3 = *v0;

  v4 = v1[41];
  v5 = swift_task_alloc();
  v1[54] = v5;
  *v5 = v3;
  v5[1] = sub_100959124;
  v6 = v1[36];

  return sub_10095B808(v4);
}

uint64_t sub_100959124()
{
  v1 = *(*v0 + 432);
  v2 = *(*v0 + 288);
  v4 = *v0;

  return _swift_task_switch(sub_100959234, v2, 0);
}

uint64_t sub_100959234()
{
  v1 = v0[41];
  v2 = v0[39];
  v4 = v0[35];
  v3 = v0[36];
  v5 = *(v3 + 168);
  type metadata accessor for WorkItemQueue.WorkItem();
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = *v4;
  v7 = *(v4 + 16);
  v8 = *(v4 + 32);
  v9 = *(v4 + 64);
  *(v6 + 72) = *(v4 + 48);
  *(v6 + 56) = v8;
  *(v6 + 40) = v7;
  *(v6 + 88) = v9;
  *(v6 + 96) = v1;
  sub_1009871D4(v4, (v0 + 20));

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v10 = v0[39];

  v11 = v0[1];

  return v11();
}