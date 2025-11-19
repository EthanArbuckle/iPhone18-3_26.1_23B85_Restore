uint64_t sub_10015BF88()
{
  v127 = v0;
  v1 = *(v0 + 568);
  *(v0 + 304) = v1;
  swift_errorRetain();
  sub_100068FC4(&unk_100503F80, &qword_100409CF0);
  v2 = swift_dynamicCast();
  v3 = *(v0 + 520);
  if (v2)
  {

    v5 = *(v0 + 232);
    v4 = *(v0 + 240);
    v6 = *(v0 + 248);
    sub_10015CCB4(v5, v4, *(v0 + 248));
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    sub_10015CCF0(v5, v4, v6);
    v124 = v5;
    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 496);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v126[0] = v11;
      *v10 = 136315650;
      v12 = sub_100157174(v5, v4, v6);
      v14 = sub_1002FFA0C(v12, v13, v126);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2048;
      *(v10 + 14) = v9;
      *(v10 + 22) = 2048;
      *(v10 + 24) = 3;
      _os_log_impl(&_mh_execute_header, v7, v8, "Connection error %s : attempt %ld of %ld", v10, 0x20u);
      sub_1000752F4(v11);
    }

    v15 = *(v0 + 520);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = *(v0 + 448);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *(v0 + 328) = v20;
      *v19 = 136315138;
      swift_beginAccess();
      if (URLRequest.allHTTPHeaderFields.getter())
      {
        swift_endAccess();
        v21 = Dictionary.debugDescription.getter();
        v23 = v22;
      }

      else
      {
        v21 = 0x3E656E6F6E3CLL;
        swift_endAccess();
        v23 = 0xE600000000000000;
      }

      v45 = sub_1002FFA0C(v21, v23, (v0 + 328));

      *(v19 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v16, v17, "Request headers: %s", v19, 0xCu);
      sub_1000752F4(v20);
    }

    v46 = *(v0 + 488);
    sub_10015CC60();
    v47 = swift_allocError();
    *v48 = v124;
    *(v48 + 8) = v4;
    *(v48 + 16) = v6;

    v49 = *(v0 + 304);
  }

  else
  {
    v24 = *(v0 + 304);

    swift_errorRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = *(v0 + 496);
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v126[0] = v29;
      *v28 = 136315650;
      swift_getErrorValue();
      v31 = *(v0 + 64);
      v30 = *(v0 + 72);
      v32 = *(v0 + 80);
      v33 = Error.localizedDescription.getter();
      v35 = sub_1002FFA0C(v33, v34, v126);

      *(v28 + 4) = v35;
      *(v28 + 12) = 2048;
      *(v28 + 14) = v27;
      *(v28 + 22) = 2048;
      *(v28 + 24) = 3;
      _os_log_impl(&_mh_execute_header, v25, v26, "URL Session error %s : attempt %ld of %ld", v28, 0x20u);
      sub_1000752F4(v29);
    }

    v36 = *(v0 + 520);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = *(v0 + 448);
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *(v0 + 312) = v41;
      *v40 = 136315138;
      swift_beginAccess();
      if (URLRequest.allHTTPHeaderFields.getter())
      {
        swift_endAccess();
        v42 = Dictionary.debugDescription.getter();
        v44 = v43;
      }

      else
      {
        v42 = 0x3E656E6F6E3CLL;
        swift_endAccess();
        v44 = 0xE600000000000000;
      }

      v50 = sub_1002FFA0C(v42, v44, (v0 + 312));

      *(v40 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v37, v38, "Request headers: %s", v40, 0xCu);
      sub_1000752F4(v41);
    }

    v51 = *(v0 + 488);
    sub_10015CC60();
    v47 = swift_allocError();
    *v52 = v1;
    *(v52 + 8) = 0;
    *(v52 + 16) = 2;
  }

  v53 = *(v0 + 496);
  if (v53 == 3)
  {
    swift_willThrow();
    v54 = *(v0 + 440);
    v55 = *(v0 + 416);
    v57 = *(v0 + 384);
    v56 = *(v0 + 392);
    (*(*(v0 + 432) + 8))(*(v0 + 448), *(v0 + 424));

    v58 = *(v0 + 8);

    return v58();
  }

  else
  {
    *(v0 + 488) = v47;
    *(v0 + 496) = v53 + 1;
    if (*(v0 + 249) == 1)
    {
      v60 = *(v0 + 448);
      swift_beginAccess();
      v61 = swift_task_alloc();
      *(v0 + 504) = v61;
      *v61 = v0;
      v61[1] = sub_10015A5AC;
      v62 = *(v0 + 448);

      return sub_100157E24(v62);
    }

    else
    {
      v63 = *(v0 + 448);
      v65 = *(v0 + 408);
      v64 = *(v0 + 416);
      v66 = *(v0 + 400);
      UUID.init()();
      v67 = UUID.uuidString.getter();
      v69 = v68;
      (*(v65 + 8))(v64, v66);
      *(v0 + 256) = v67;
      *(v0 + 264) = v69;
      *(v0 + 272) = 45;
      *(v0 + 280) = 0xE100000000000000;
      *(v0 + 288) = 0;
      *(v0 + 296) = 0xE000000000000000;
      v123 = sub_10012512C();
      v70 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v72 = v71;

      swift_beginAccess();
      v73._countAndFlagsBits = 0x7365757165722D78;
      v73._object = 0xEC00000064692D74;
      v74.value._countAndFlagsBits = v70;
      v74.value._object = v72;
      URLRequest.setValue(_:forHTTPHeaderField:)(v74, v73);
      swift_endAccess();

      if (qword_1005019F8 != -1)
      {
        swift_once();
      }

      v75 = type metadata accessor for Logger();
      *(v0 + 520) = sub_1000958E4(v75, qword_10051B2F0);
      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = *(v0 + 448);
        v79 = *(v0 + 392);
        v80 = *(v0 + 368);
        v81 = *(v0 + 376);
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        *(v0 + 352) = v83;
        *v82 = 136315138;
        swift_beginAccess();
        URLRequest.url.getter();
        v84 = (*(v81 + 48))(v79, 1, v80);
        v85 = *(v0 + 392);
        if (v84)
        {
          sub_10015CD2C(*(v0 + 392));
          swift_endAccess();
          v86 = 0xE400000000000000;
          v87 = 1701736302;
        }

        else
        {
          v89 = *(v0 + 376);
          v88 = *(v0 + 384);
          v125 = *(v0 + 368);
          (*(v89 + 16))(v88, v85);
          sub_10015CD2C(v85);
          swift_endAccess();
          v90 = URL.absoluteString.getter();
          v86 = v91;
          (*(v89 + 8))(v88, v125);
          v87 = v90;
        }

        v92 = sub_1002FFA0C(v87, v86, (v0 + 352));

        *(v82 + 4) = v92;
        _os_log_impl(&_mh_execute_header, v76, v77, "Request URL: %s", v82, 0xCu);
        sub_1000752F4(v83);
      }

      v93 = Logger.logObject.getter();
      v94 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v93, v94))
      {
        v95 = *(v0 + 448);
        v96 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        *(v0 + 344) = v97;
        *v96 = 136315138;
        swift_beginAccess();
        if (URLRequest.allHTTPHeaderFields.getter())
        {
          swift_endAccess();
          v98 = Dictionary.debugDescription.getter();
          v100 = v99;
        }

        else
        {
          v98 = 0x3E656E6F6E3CLL;
          swift_endAccess();
          v100 = 0xE600000000000000;
        }

        v101 = sub_1002FFA0C(v98, v100, (v0 + 344));

        *(v96 + 4) = v101;
        _os_log_impl(&_mh_execute_header, v93, v94, "Request headers: %s", v96, 0xCu);
        sub_1000752F4(v97);
      }

      v102 = Logger.logObject.getter();
      v103 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v102, v103))
      {
        v104 = *(v0 + 448);
        v105 = swift_slowAlloc();
        v106 = swift_slowAlloc();
        *(v0 + 336) = v106;
        *v105 = 136315138;
        swift_beginAccess();
        v107 = URLRequest.httpBody.getter();
        if (v108 >> 60 == 15)
        {
          countAndFlagsBits = 0x3E656E6F6E3CLL;
          swift_endAccess();
          object = 0xE600000000000000;
        }

        else
        {
          v111 = v107;
          v112 = v108;
          swift_endAccess();
          v113 = Data.base64EncodedString(options:)(0);
          countAndFlagsBits = v113._countAndFlagsBits;
          object = v113._object;
          sub_10006A2D0(v111, v112);
        }

        v114 = sub_1002FFA0C(countAndFlagsBits, object, (v0 + 336));

        *(v105 + 4) = v114;
        _os_log_impl(&_mh_execute_header, v102, v103, "Request body: %s", v105, 0xCu);
        sub_1000752F4(v106);
      }

      v116 = *(v0 + 456);
      v115 = *(v0 + 464);
      v117 = *(v0 + 440);
      v118 = *(v0 + 448);
      v119 = *(v0 + 424);
      *(v0 + 528) = [objc_opt_self() sharedSession];
      v116(v117, v118, v119);
      v120 = async function pointer to NSURLSession.data(for:delegate:)[1];
      v121 = swift_task_alloc();
      *(v0 + 536) = v121;
      *v121 = v0;
      v121[1] = sub_10015ADE0;
      v122 = *(v0 + 440);

      return NSURLSession.data(for:delegate:)(v122, 0);
    }
  }
}

unint64_t sub_10015CC60()
{
  result = qword_100504D38;
  if (!qword_100504D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100504D38);
  }

  return result;
}

uint64_t sub_10015CCB4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
    if (a3 != 1)
    {
      if (a3 == 2)
      {
        return swift_errorRetain();
      }

      return result;
    }
  }

  if (a3 == 3 || a3 == 4)
  {
  }

  return result;
}

uint64_t sub_10015CCF0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
    if (a3 != 1)
    {
      if (a3 == 2)
      {
      }

      return result;
    }
  }

  if (a3 == 3 || a3 == 4)
  {
  }

  return result;
}

uint64_t sub_10015CD2C(uint64_t a1)
{
  v2 = sub_100068FC4(&unk_10050BEA0, &unk_10040F450);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10015CDAC(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 4)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

__n128 sub_10015CDC8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10015CDDC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10015CE24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_10015CE68(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 16) = a2;
  return result;
}

id sub_10015CEA0()
{
  v0 = type metadata accessor for SEKeySyncManager();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_10015CFD4();
  qword_10051B308 = result;
  return result;
}

id sub_10015CEE0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_10015CFD4();
}

id sub_10015CFD4()
{
  ObjectType = swift_getObjectType();
  swift_defaultActor_initialize();
  String.init(cString:)();
  Logger.init(subsystem:category:)();
  v1 = &v0[OBJC_IVAR____TtC10seserviced16SEKeySyncManager_ptcViewName];
  *v1 = 0x4354502D4553;
  v1[1] = 0xE600000000000000;
  v2 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager_keychainWrapper;
  *&v0[v2] = [objc_opt_self() sharedInstance];
  v3 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager_caStatisticsActivity;
  v4 = objc_allocWithZone(NSBackgroundActivityScheduler);
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 initWithIdentifier:v5];

  *&v0[v3] = v6;
  *&v0[OBJC_IVAR____TtC10seserviced16SEKeySyncManager_recoveryPending] = &_swiftEmptySetSingleton;
  *&v0[OBJC_IVAR____TtC10seserviced16SEKeySyncManager_notificationTokens] = &_swiftEmptySetSingleton;
  v0[OBJC_IVAR____TtC10seserviced16SEKeySyncManager_preconditionsMet] = 2;
  v0[OBJC_IVAR____TtC10seserviced16SEKeySyncManager_allViewsSynchronized] = 2;
  v0[OBJC_IVAR____TtC10seserviced16SEKeySyncManager_stopped] = 0;
  v0[OBJC_IVAR____TtC10seserviced16SEKeySyncManager_notifiedPassdOfFidoViewSynced] = 0;
  v14 = 2;
  v12 = 0;
  v13 = 1;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  type metadata accessor for SESPeerIdentityData(0);
  sub_100188AF0(&qword_100504E20, type metadata accessor for SESPeerIdentityData);
  sub_100188AF0(&qword_100504E28, type metadata accessor for SESPeerIdentityData);
  UserDefaultBackedCodableOptional.init(suiteName:key:)();
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  sub_100068FC4(&qword_100502458, &qword_10040C1F0);
  UserDefaultBackedOptional.init(suiteName:key:internalOnly:)();
  UserDefaultBackedOptional.init(suiteName:key:internalOnly:)();
  *&v0[OBJC_IVAR____TtC10seserviced16SEKeySyncManager_syncProgressState] = 0;
  v7 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager_state;
  sub_100068FC4(&qword_100504FA0, &qword_10040C568);
  v8 = swift_allocObject();
  *(v8 + 48) = 0;
  *(v8 + 16) = xmmword_1004098E0;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *&v0[v7] = v8;
  *&v0[OBJC_IVAR____TtC10seserviced16SEKeySyncManager_secureElementInfo] = 0;
  v11.receiver = v0;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, "init");
}

uint64_t sub_10015D4C4()
{
  if (qword_100501A08 != -1)
  {
    swift_once();
  }

  v1 = qword_10051B308;
  *(v0 + 16) = qword_10051B308;

  return _swift_task_switch(sub_10015D55C, v1, 0);
}

uint64_t sub_10015D55C()
{
  v1 = *(v0 + 16);
  sub_10015D5BC();
  v2 = *(v0 + 8);

  return v2();
}

void sub_10015D5BC()
{
  v1 = v0;
  v2 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v60 - v4;
  v6 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v60 - v9;
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009393C(0, &qword_100501E50, OS_dispatch_queue_ptr);
  (*(v12 + 104))(v15, enum case for DispatchQoS.QoSClass.default(_:), v11);
  v16 = static OS_dispatch_queue.global(qos:)();
  (*(v12 + 8))(v15, v11);
  v71 = sub_10018D808;
  v72 = v1;
  aBlock = _NSConcreteStackBlock;
  v68 = 1107296256;
  v69 = sub_100193978;
  v70 = &unk_1004C97C8;
  v17 = _Block_copy(&aBlock);

  os_state_add_handler();
  _Block_release(v17);

  v18 = *(v1 + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_caStatisticsActivity);
  [v18 setPreregistered:1];
  v71 = sub_10018D828;
  v72 = v1;
  aBlock = _NSConcreteStackBlock;
  v68 = 1107296256;
  v69 = sub_10022ECB0;
  v70 = &unk_1004C97F0;
  v19 = _Block_copy(&aBlock);

  [v18 scheduleWithBlock:v19];
  _Block_release(v19);
  (*(v7 + 16))(v10, v1 + OBJC_IVAR____TtC10seserviced16SEKeySyncManager__disableKeySync, v6);
  UserDefaultBacked.wrappedValue.getter();
  v20 = *(v7 + 8);
  v64 = v6;
  v20(v10, v6);
  if (aBlock == 1)
  {
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "KEY SYNC DISABLED BY INTERNAL SETTING", v23, 2u);
    }
  }

  else
  {
    v24 = swift_allocObject();
    *(v24 + 16) = &_swiftEmptySetSingleton;
    v25 = objc_opt_self();
    v26 = String._bridgeToObjectiveC()();
    LODWORD(v25) = [v25 isFirstLaunchAfterBootForKey:v26];

    if (v25)
    {
      sub_1000D7BA4(&aBlock, 7);
      *&v66 = 0;
      swift_beginAccess();
      sub_100068FC4(&qword_100504EE8, &qword_10040C430);
      UserDefaultBackedOptional.wrappedValue.setter();
      swift_endAccess();
      v66 = xmmword_1004098E0;
      swift_beginAccess();
      sub_100068FC4(&qword_100504F98, &unk_10040C540);
      UserDefaultBackedOptional.wrappedValue.setter();
      swift_endAccess();
    }

    v65 = v24 + 16;
    v61 = v24;
    v62 = v5;
    if (qword_100501A10 != -1)
    {
LABEL_28:
      swift_once();
    }

    v27 = off_100504D60;
    v28 = off_100504D60 + 64;
    v29 = 1 << *(off_100504D60 + 32);
    v30 = -1;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    v31 = v30 & *(off_100504D60 + 8);
    v63 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager__recoveryRequiredPref;
    v32 = (v29 + 63) >> 6;

    v33 = 0;
    while (v31)
    {
LABEL_16:
      v35 = __clz(__rbit64(v31));
      v31 &= v31 - 1;
      v36 = v35 | (v33 << 6);
      v37 = (v27[6] + 16 * v36);
      v38 = *v37;
      v39 = v37[1];
      v40 = *(v27[7] + v36);
      v41 = objc_opt_self();

      v42 = String._bridgeToObjectiveC()();

      LODWORD(v39) = [v41 registerDelegate:v1 forEvent:v42];

      if (v39)
      {
        sub_1000D7BA4(&aBlock, v40);
        if (v40 == 2)
        {
          LOBYTE(v66) = 1;
          swift_beginAccess();
          UserDefaultBacked.wrappedValue.setter();
          swift_endAccess();
        }
      }
    }

    while (1)
    {
      v34 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v34 >= v32)
      {
        break;
      }

      v31 = *&v28[8 * v34];
      ++v33;
      if (v31)
      {
        v33 = v34;
        goto LABEL_16;
      }
    }

    v43 = objc_opt_self();
    v44 = String._bridgeToObjectiveC()();
    LODWORD(v43) = [v43 registerAlarm:v44 handler:v1];

    v45 = v65;
    if (v43)
    {
      sub_1000D7BA4(&aBlock, 8);
    }

    v46 = v61;

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      aBlock = v50;
      *v49 = 136315138;
      swift_beginAccess();
      v51 = *(v46 + 16);

      sub_100188FC4();
      v52 = Set.description.getter();
      v54 = v53;

      v55 = sub_1002FFA0C(v52, v54, &aBlock);

      *(v49 + 4) = v55;
      _os_log_impl(&_mh_execute_header, v47, v48, "KeySyncStartup: all pending triggers %s", v49, 0xCu);
      sub_1000752F4(v50);

      v45 = v65;
    }

    else
    {
    }

    v56 = v62;
    swift_beginAccess();
    if (*(*v45 + 16))
    {
      v57 = type metadata accessor for TaskPriority();
      (*(*(v57 - 8) + 56))(v56, 1, 1, v57);
      v58 = sub_100188AF0(&qword_100504FD0, type metadata accessor for SEKeySyncManager);
      v59 = swift_allocObject();
      v59[2] = v1;
      v59[3] = v58;
      v59[4] = v1;
      v59[5] = v46;
      swift_retain_n();

      sub_1001F9BE8(0, 0, v56, &unk_10040C610, v59);
    }
  }
}

uint64_t sub_10015E034(uint64_t a1, uint64_t a2)
{
  v3 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v14 - v5;

  v7 = dispatch_semaphore_create(0);
  sub_100068FC4(&qword_100504FD8, &qword_10040C628);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v8;
  v10[5] = sub_10018DA80;
  v10[6] = a2;
  v10[7] = v7;

  v11 = v7;
  sub_1001F9BE8(0, 0, v6, &unk_10040C638, v10);

  OS_dispatch_semaphore.wait()();

  v12 = *(v8 + 16);

  return v12;
}

uint64_t sub_10015ECFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v13 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a3;
  v11[5] = a1;
  v11[6] = a2;

  sub_1001F9BE8(0, 0, v9, &unk_10040C620, v11);
}

uint64_t sub_10015EE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = swift_task_alloc();
  v6[4] = v7;
  *v7 = v6;
  v7[1] = sub_10015EEB8;

  return sub_1002857E4();
}

uint64_t sub_10015EEB8()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return _swift_task_switch(sub_10015EFB4, 0, 0);
}

uint64_t sub_10015EFB4()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))(1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10015F01C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return _swift_task_switch(sub_10015F03C, a4, 0);
}

uint64_t sub_10015F03C()
{
  v1 = v0[6];
  swift_beginAccess();
  v2 = *(v1 + 16);
  v0[7] = v2;

  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_10015F104;
  v4 = v0[5];

  return sub_10015F214(v2);
}

uint64_t sub_10015F104()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_10015F214(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return _swift_task_switch(sub_10015F234, v1, 0);
}

void sub_10015F234()
{
  v1 = *(v0 + 88);
  if (*(v1 + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_stopped) == 1)
  {
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "KeySync machinery is stopped", v4, 2u);
    }

LABEL_19:
    v18 = *(v0 + 8);

    v18();
  }

  else
  {
    v5 = 0;
    v6 = *(v0 + 80);
    v7 = -1 << *(v6 + 32);
    if (-v7 < 64)
    {
      v8 = ~(-1 << -v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v6 + 56);
    v10 = (63 - v7) >> 6;
    do
    {
      if (!v9)
      {
        while (1)
        {
          v11 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            break;
          }

          if (v11 >= v10)
          {
            goto LABEL_17;
          }

          v9 = *(v6 + 56 + 8 * v11);
          ++v5;
          if (v9)
          {
            v5 = v11;
            goto LABEL_15;
          }
        }

        __break(1u);
        return;
      }

      v11 = v5;
LABEL_15:
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
    }

    while (*(*(v6 + 48) + (v12 | (v11 << 6))) != 2);
    *(v0 + 168) = 1;
    swift_beginAccess();
    sub_100068FC4(&unk_100504880, &unk_10040A5B0);
    UserDefaultBacked.wrappedValue.setter();
    swift_endAccess();
    v1 = *(v0 + 88);
LABEL_17:
    v13 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager_syncProgressState;
    *(v0 + 96) = OBJC_IVAR____TtC10seserviced16SEKeySyncManager_syncProgressState;
    v14 = *(v1 + v13);
    if (v14)
    {
      v15 = *(v0 + 80);

      v16 = sub_100163840(v15, v14);
      v17 = *(v1 + v13);
      *(v1 + v13) = v16;

      goto LABEL_19;
    }

    *(v1 + v13) = &_swiftEmptySetSingleton;
    v19 = objc_opt_self();
    v20 = String._bridgeToObjectiveC()();
    [v19 clearAlarm:v20];

    *(v0 + 104) = OBJC_IVAR____TtC10seserviced16SEKeySyncManager_logger;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Sync progress -- checking triggers", v23, 2u);
    }

    v24 = swift_task_alloc();
    *(v0 + 112) = v24;
    *v24 = v0;
    v24[1] = sub_10015F598;
    v25 = *(v0 + 80);
    v26 = *(v0 + 88);

    sub_100163C4C(v25);
  }
}

uint64_t sub_10015F598(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 112);
  v5 = *v2;
  *(*v2 + 170) = a1;

  v6 = *(v3 + 88);
  if (v1)
  {
    v7 = sub_10015FEB4;
  }

  else
  {
    v7 = sub_10015F6CC;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10015F6CC()
{
  v29 = v0;
  v1 = *(v0 + 104);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 88);
    v6 = *(v0 + 96);
    v8 = *(v0 + 80);
    v9 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v9 = 136446722;
    sub_100188FC4();
    v10 = Set.description.getter();
    v12 = sub_1002FFA0C(v10, v11, &v26);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2082;
    if (*(v7 + v6))
    {
      v27 = 0;
      v28 = 0xE000000000000000;

      _StringGuts.grow(_:)(23);

      v27 = 0xD000000000000015;
      v28 = 0x8000000100464D10;
      v13._countAndFlagsBits = Set.description.getter();
      String.append(_:)(v13);

      v14 = v27;
      v15 = v28;
    }

    else
    {
      v15 = 0xE400000000000000;
      v14 = 1701602409;
    }

    v16 = *(v0 + 170);
    v17 = sub_1002FFA0C(v14, v15, &v26);

    *(v9 + 14) = v17;
    *(v9 + 22) = 1024;
    *(v9 + 24) = v16 & 1;
    _os_log_impl(&_mh_execute_header, v4, v5, "Request to synchronize for reason %{public}s in state %{public}s - shouldSync %{BOOL}d", v9, 0x1Cu);
    swift_arrayDestroy();
  }

  if (*(v0 + 170))
  {
    v18 = *(v0 + 88) + *(v0 + 104);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Sync Progress -- checking preconditions", v21, 2u);
    }

    v22 = swift_task_alloc();
    *(v0 + 120) = v22;
    *v22 = v0;
    v22[1] = sub_10015FA24;
    v23 = *(v0 + 88);

    return sub_100164AD8();
  }

  else
  {
    sub_10016391C(*(v0 + 88));
    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_10015FA24(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 120);
  v7 = *v3;
  v5[16] = a1;
  v5[17] = a2;
  v5[18] = v2;

  v8 = v4[11];
  if (v2)
  {
    v9 = sub_1001600A8;
  }

  else
  {
    v9 = sub_10015FB5C;
  }

  return _swift_task_switch(v9, v8, 0);
}

void sub_10015FB5C()
{
  v1 = v0[17];
  if (v1 >> 60 == 15)
  {
    v2 = v0[16];
    v3 = v0[11];
    *(v3 + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_preconditionsMet) = 0;
    v4 = *(v3 + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_state);
    os_unfair_lock_lock((v4 + 48));
    v5 = *(v4 + 16);
    v6 = *(v4 + 24);
    *(v4 + 16) = v2;
    *(v4 + 24) = v1;
    sub_10006A2D0(v5, v6);
    v7 = *(v4 + 40);
    *(v4 + 40) = 0;

    v8 = *(v4 + 32);
    *(v4 + 32) = 0;

    os_unfair_lock_unlock((v4 + 48));
    sub_10016391C(v3);
    v9 = v0[1];

    v9();
  }

  else
  {
    v10 = v0[18];
    v11 = v0[16];
    v12 = *(v0[11] + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_state);
    v13 = swift_task_alloc();
    *(v13 + 16) = v11;
    *(v13 + 24) = v1;
    os_unfair_lock_lock((v12 + 48));
    sub_10018C72C((v12 + 16));
    os_unfair_lock_unlock((v12 + 48));
    if (!v10)
    {
      v14 = v0[11];

      *(v14 + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_preconditionsMet) = 1;
      v15 = swift_task_alloc();
      v0[19] = v15;
      *v15 = v0;
      v15[1] = sub_10015FD20;
      v17 = v0[16];
      v16 = v0[17];
      v18 = v0[11];

      sub_100165468(v17, v16);
    }
  }
}

uint64_t sub_10015FD20()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = v0;

  v5 = *(v2 + 88);
  if (v0)
  {
    v6 = sub_10016027C;
  }

  else
  {
    v6 = sub_10015FE4C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10015FE4C()
{
  sub_10006A2D0(v0[16], v0[17]);
  sub_10016391C(v0[11]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_10015FEB4()
{
  v21 = v0;
  v1 = *(v0 + 170);
  sub_10018C6D8();
  v2 = swift_allocError();
  *v3 = v1;
  v4 = *(v0 + 104);
  v5 = *(v0 + 88);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v11 = *(v0 + 40);
    v10 = *(v0 + 48);
    v12 = *(v0 + 56);
    v13 = Error.localizedDescription.getter();
    v15 = sub_1002FFA0C(v13, v14, &v20);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "Sync Progress -- ended with error %s", v8, 0xCu);
    sub_1000752F4(v9);
  }

  v16 = *(v0 + 88);
  *(v0 + 64) = v2;
  swift_errorRetain();
  sub_100068FC4(&unk_100503F80, &qword_100409CF0);
  if (swift_dynamicCast())
  {
    v17 = *(v0 + 169);
  }

  else
  {
    v17 = 28;
  }

  sub_100180988(v17, 0);

  sub_10016391C(*(v0 + 88));
  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1001600A8()
{
  v19 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v9 = *(v0 + 40);
    v8 = *(v0 + 48);
    v10 = *(v0 + 56);
    v11 = Error.localizedDescription.getter();
    v13 = sub_1002FFA0C(v11, v12, &v18);

    *(v6 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Sync Progress -- ended with error %s", v6, 0xCu);
    sub_1000752F4(v7);
  }

  v14 = *(v0 + 88);
  *(v0 + 64) = v1;
  swift_errorRetain();
  sub_100068FC4(&unk_100503F80, &qword_100409CF0);
  if (swift_dynamicCast())
  {
    v15 = *(v0 + 169);
  }

  else
  {
    v15 = 28;
  }

  sub_100180988(v15, 0);

  sub_10016391C(*(v0 + 88));
  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_10016027C()
{
  v19 = v0;
  sub_10006A2D0(*(v0 + 128), *(v0 + 136));
  v1 = *(v0 + 160);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v9 = *(v0 + 40);
    v8 = *(v0 + 48);
    v10 = *(v0 + 56);
    v11 = Error.localizedDescription.getter();
    v13 = sub_1002FFA0C(v11, v12, &v18);

    *(v6 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Sync Progress -- ended with error %s", v6, 0xCu);
    sub_1000752F4(v7);
  }

  v14 = *(v0 + 88);
  *(v0 + 64) = v1;
  swift_errorRetain();
  sub_100068FC4(&unk_100503F80, &qword_100409CF0);
  if (swift_dynamicCast())
  {
    v15 = *(v0 + 169);
  }

  else
  {
    v15 = 28;
  }

  sub_100180988(v15, 0);

  sub_10016391C(*(v0 + 88));
  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_100160458@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v3 = *(*v1 + 16);
  if (v2 == v3)
  {
    *(a1 + 64) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 72) = 2;
    return result;
  }

  if (v2 >= v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = *v1 + 72 * v2;
  v13 = *(v4 + 32);
  v5 = *(v4 + 48);
  v6 = *(v4 + 64);
  v7 = *(v4 + 80);
  v17 = *(v4 + 96);
  v15 = v6;
  v16 = v7;
  v14 = v5;
  v1[1] = v2 + 1;
  v8 = v1[2];
  if (__OFADD__(v8, 1))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v1[2] = v8 + 1;
  *a1 = v8;
  v9 = v13;
  *(a1 + 24) = v14;
  v10 = v16;
  *(a1 + 40) = v15;
  *(a1 + 56) = v10;
  *(a1 + 72) = v17;
  *(a1 + 8) = v9;
  return sub_10018C628(&v13, v12);
}

void sub_10016051C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v20 - v8;
  if (qword_100501A10 != -1)
  {
    swift_once();
  }

  v10 = off_100504D60;
  if (*(off_100504D60 + 2) && (v11 = sub_10008C908(a1, a2), (v12 & 1) != 0))
  {
    v13 = *(v10[7] + v11);
    v14 = type metadata accessor for TaskPriority();
    (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    *(v15 + 32) = v3;
    *(v15 + 40) = v13;

    sub_1001608B4(0, 0, v9, &unk_10040C5E8, v15);

    sub_100075768(v9, &qword_100504250, &qword_10040D610);
  }

  else
  {

    v20 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v21 = v18;
      *v17 = 136446210;
      *(v17 + 4) = sub_1002FFA0C(a1, a2, &v21);
      _os_log_impl(&_mh_execute_header, v20, v16, "Ignorning unknown notification: %{public}s", v17, 0xCu);
      sub_1000752F4(v18);
    }

    else
    {
      v19 = v20;
    }
  }
}

uint64_t sub_1001607B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 49) = a5;
  *(v5 + 56) = a4;
  return _swift_task_switch(sub_1001607D8, 0, 0);
}

uint64_t sub_1001607D8()
{
  v1 = *(v0 + 49);
  sub_100068FC4(&qword_100504ED0, &qword_10040C3D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004098F0;
  *(inited + 32) = v1;
  v3 = sub_1000B3934(inited);
  *(v0 + 64) = v3;
  swift_setDeallocating();
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_10018DF70;
  v5 = *(v0 + 56);

  return sub_10015F214(v3);
}

uint64_t sub_1001608B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_1000938D4(a3, v27 - v11, &qword_100504250, &qword_10040D610);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100075768(v12, &qword_100504250, &qword_10040D610);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_100160BDC(uint64_t a1, unint64_t a2, char *a3)
{
  v4 = v3;
  v8 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v23 - v10;
  v12 = *(v3 + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_state);
  v23[2] = a1;
  v23[3] = a2;
  v24 = v3;
  os_unfair_lock_lock(v12 + 12);
  sub_10018D1A0(&v12[4], v27);
  os_unfair_lock_unlock(v12 + 12);
  v26 = v28;
  v25[2] = v27[2];
  v25[3] = v27[3];
  v25[0] = v27[0];
  v25[1] = v27[1];
  if (v28 == 2)
  {
    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = v4;

    sub_1001F9BE8(0, 0, v11, &unk_10040C580, v14);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v29[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_1002FFA0C(a1, a2, v29);
      _os_log_impl(&_mh_execute_header, v15, v16, "Falling back to listing SE for %s", v17, 0xCu);
      sub_1000752F4(v18);
    }

    v19 = sub_1001A2ED8(a3);
    sub_10016203C(a1, a2, v19, v29);

    if (v30 == 2)
    {
      return 0;
    }

    v20 = v29[0];
    sub_100069E2C(v29[0], v29[1]);
    v21 = v29;
  }

  else
  {
    v20 = *&v25[0];
    sub_100069E2C(*&v25[0], *(&v25[0] + 1));
    v21 = v25;
  }

  sub_100075768(v21, &qword_100504FA8, &qword_10040C588);
  return v20;
}

__n128 sub_100160EF0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    v105 = *(v4 + 16);
    if (v105)
    {
      v92 = a1;
      v5 = 0;
      v6 = (v4 + 72);
      v96 = *(a1 + 24);
      while (1)
      {
        if (v5 >= *(v4 + 16))
        {
          goto LABEL_107;
        }

        v103 = *(v6 - 5);
        v7 = *(v6 - 3);
        v8 = *(v6 - 2);
        v9 = *v6;
        log = *(v6 - 8);
        v10 = *(v6 - 4);

        v11 = v8;
        sub_100069E2C(v7, v8);
        v12 = v9;
        v13 = [v12 viewName];
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        if (v14 == a2 && v16 == a3)
        {
          break;
        }

        v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v18)
        {
          goto LABEL_16;
        }

        ++v5;

        sub_10006A178(v7, v11);

        v6 += 6;
        v4 = v96;
        if (v105 == v5)
        {
          v19 = 0;
          v20 = 0;
          v94 = 0;
          v95 = 0;
          v21 = 0;
          LODWORD(v4) = 0;
          v22 = 0;
          v23 = 0xF000000000000000;
          goto LABEL_20;
        }
      }

LABEL_16:
      v24 = v10;

      v21 = v7;
      sub_100069E2C(v7, v11);
      v22 = v12;
      v25 = v12;
      v95 = v24;

      v94 = v11;
      sub_10006A178(v7, v11);
      v26 = [v25 currentTLK];

      if (v26)
      {
        v27 = [v26 tlkUUID];

        v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v28;
      }

      else
      {
        v19 = 0;
        v23 = 0xF000000000000000;
      }

      v20 = v103;
      LODWORD(v4) = log;
LABEL_20:
      a1 = v92;
      goto LABEL_21;
    }

    v19 = 0;
    v20 = 0;
    v94 = 0;
    v95 = 0;
    v21 = 0;
    LODWORD(v4) = 0;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v94 = 0;
    v95 = 0;
    v21 = 0;
  }

  v22 = 0;
  v23 = 0xF000000000000000;
LABEL_21:
  v104 = v20;
  v29 = *(a1 + 16);
  v91 = v22;
  v93 = v23;
  v97 = v21;
  if (!v29)
  {
    v65 = v22;
    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    v119 = 2;
    goto LABEL_99;
  }

  loga = v4;
  if (!*(v29 + 16))
  {
LABEL_91:
    v65 = v91;
    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    v119 = 2;
    goto LABEL_98;
  }

  v30 = *(v29 + 16);
  v31 = 0;
  if (v19)
  {
    v32 = 0;
  }

  else
  {
    v32 = v23 == 0xC000000000000000;
  }

  v33 = !v32;
  v86 = v33;
  v89 = v23 >> 62;
  v34 = (v29 + 32);
  v35 = __OFSUB__(HIDWORD(v19), v19);
  v83 = v35;
  v84 = HIDWORD(v19) - v19;
  v85 = BYTE6(v23);
  v106 = v23 >> 60;
  v87 = *(a1 + 16);
  while (1)
  {
    if (v31 >= *(v29 + 16))
    {
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
    }

    v108[0] = *v34;
    v36 = v34[1];
    v37 = v34[2];
    v38 = v34[3];
    v109 = *(v34 + 64);
    v108[2] = v37;
    v108[3] = v38;
    v108[1] = v36;
    v111 = v34[1];
    v112 = v34[2];
    v113 = v34[3];
    v114 = *(v34 + 64);
    v110 = *v34;
    v39 = *(&v108[0] + 1);
    v40 = *&v108[0];
    if (*(&v108[0] + 1) >> 60 == 15)
    {
      if (v106 > 0xE)
      {
        v66 = v23;
        v65 = v91;
        sub_100069E2C(*&v108[0], *(&v108[0] + 1));
        sub_10018C628(v108, &v115);
        sub_10006A2BC(v19, v66);
        sub_10006A2D0(v40, v39);
        goto LABEL_97;
      }

      goto LABEL_34;
    }

    if (v106 <= 0xE)
    {
      break;
    }

LABEL_34:
    sub_100069E2C(*&v108[0], *(&v108[0] + 1));
    sub_10006A2BC(v19, v23);
    sub_10006A2D0(v40, v39);
    sub_10006A2D0(v19, v23);
LABEL_35:
    ++v31;
    v34 = (v34 + 72);
    if (v30 == v31)
    {
      goto LABEL_91;
    }
  }

  v41 = *(&v108[0] + 1) >> 62;
  if (*(&v108[0] + 1) >> 62 != 3)
  {
    v43 = v89;
    if (v41 <= 1)
    {
      if (v41)
      {
        LODWORD(v46) = DWORD1(v108[0]) - LODWORD(v108[0]);
        if (__OFSUB__(DWORD1(v108[0]), v108[0]))
        {
          goto LABEL_110;
        }

        v46 = v46;
        if (v89 > 1)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v46 = BYTE14(v108[0]);
        if (v89 > 1)
        {
          goto LABEL_62;
        }
      }

      goto LABEL_58;
    }

    if (v41 == 2)
    {
      v48 = *(*&v108[0] + 16);
      v47 = *(*&v108[0] + 24);
      v49 = __OFSUB__(v47, v48);
      v46 = v47 - v48;
      if (v49)
      {
        goto LABEL_111;
      }

      if (v89 > 1)
      {
        goto LABEL_62;
      }

      goto LABEL_58;
    }

LABEL_61:
    v46 = 0;
    if (v43 > 1)
    {
LABEL_62:
      if (v43 != 2)
      {
        if (!v46)
        {
LABEL_94:
          sub_100069E2C(*&v108[0], *(&v108[0] + 1));
          sub_10018C628(v108, &v115);
          sub_10006A2BC(v19, v23);
          sub_10006A2D0(v19, v23);
          goto LABEL_95;
        }

        goto LABEL_70;
      }

      v52 = *(v19 + 16);
      v51 = *(v19 + 24);
      v49 = __OFSUB__(v51, v52);
      v50 = v51 - v52;
      if (v49)
      {
        goto LABEL_109;
      }

LABEL_64:
      if (v46 == v50)
      {
        if (v46 < 1)
        {
          goto LABEL_94;
        }

        if (v41 > 1)
        {
          if (v41 != 2)
          {
            memset(v107, 0, 14);
            sub_100069E2C(*&v108[0], *(&v108[0] + 1));
            sub_100069E2C(v40, v39);
            sub_10018C628(v108, &v115);
            sub_10006A2BC(v19, v23);
            v53 = v107;
            goto LABEL_85;
          }

          v54 = v19;
          v55 = *(*&v108[0] + 16);
          v56 = *(*&v108[0] + 24);
          sub_100069E2C(*&v108[0], *(&v108[0] + 1));
          sub_100069E2C(v40, v39);
          sub_10018C628(v108, &v115);
          v82 = v54;
          sub_10006A2BC(v54, v23);
          v57 = __DataStorage._bytes.getter();
          if (v57)
          {
            v58 = __DataStorage._offset.getter();
            if (__OFSUB__(v55, v58))
            {
              goto LABEL_114;
            }

            v57 += v55 - v58;
          }

          if (__OFSUB__(v56, v55))
          {
            goto LABEL_113;
          }

          __DataStorage._length.getter();
          v53 = v57;
        }

        else
        {
          if (!v41)
          {
            v107[0] = *&v108[0];
            LODWORD(v107[1]) = DWORD2(v108[0]);
            WORD2(v107[1]) = WORD6(v108[0]);
            sub_100069E2C(*&v108[0], *(&v108[0] + 1));
            sub_100069E2C(v40, v39);
            sub_10018C628(v108, &v115);
            sub_10006A2BC(v19, v23);
            v53 = v107;
LABEL_85:
            v63 = v19;
            goto LABEL_89;
          }

          v82 = v19;
          if (*&v108[0] >> 32 < SLODWORD(v108[0]))
          {
            goto LABEL_112;
          }

          sub_100069E2C(*&v108[0], *(&v108[0] + 1));
          sub_100069E2C(v40, v39);
          sub_10018C628(v108, &v115);
          sub_10006A2BC(v19, v93);
          v59 = __DataStorage._bytes.getter();
          if (v59)
          {
            v60 = v59;
            v61 = __DataStorage._offset.getter();
            if (__OFSUB__(v40, v61))
            {
              goto LABEL_115;
            }

            v62 = (v40 - v61 + v60);
          }

          else
          {
            v62 = 0;
          }

          __DataStorage._length.getter();
          v53 = v62;
        }

        v19 = v82;
        v63 = v82;
        v23 = v93;
LABEL_89:
        sub_10019F024(v53, v63, v23, &v115);
        sub_10006A178(v40, v39);
        sub_10006A2D0(v19, v23);
        v64 = v115;
        sub_10006A2D0(v40, v39);
        if (v64)
        {
          goto LABEL_96;
        }

        goto LABEL_90;
      }

LABEL_70:
      sub_100069E2C(*&v108[0], *(&v108[0] + 1));
      sub_10018C628(v108, &v115);
      sub_10006A2BC(v19, v23);
      sub_10006A2D0(v19, v23);
      sub_10006A2D0(v40, v39);
LABEL_90:
      sub_10018C684(v108);
      v29 = v87;
      goto LABEL_35;
    }

LABEL_58:
    v50 = v85;
    if (v43)
    {
      v50 = v84;
      if (v83)
      {
        goto LABEL_108;
      }
    }

    goto LABEL_64;
  }

  if (*&v108[0])
  {
    v42 = 0;
  }

  else
  {
    v42 = *(&v108[0] + 1) == 0xC000000000000000;
  }

  v43 = v89;
  v45 = !v42 || v89 < 3;
  if ((v45 | v86))
  {
    goto LABEL_61;
  }

  sub_100069E2C(0, 0xC000000000000000);
  sub_10018C628(v108, &v115);
  sub_10006A2BC(0, 0xC000000000000000);
  sub_10006A2D0(0, 0xC000000000000000);
  v40 = 0;
LABEL_95:
  sub_10006A2D0(v40, v39);
LABEL_96:
  v65 = v91;
LABEL_97:
  v117 = v112;
  v118 = v113;
  v119 = v114;
  v115 = v110;
  v116 = v111;
LABEL_98:
  v21 = v97;
  LODWORD(v4) = loga;
LABEL_99:
  v67 = v4;
  sub_1000938D4(&v115, &v110, &qword_100504FA8, &qword_10040C588);
  sub_10006A2BC(v19, v93);
  sub_1000938D4(&v115, &v110, &qword_100504FA8, &qword_10040C588);
  sub_10018D53C(v104, v95, v21, v94, v67, v65);

  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.info.getter();

  sub_10006A2D0(v19, v93);
  if (os_log_type_enabled(v68, v69))
  {
    v90 = v69;
    logb = v68;
    v70 = swift_slowAlloc();
    *&v108[0] = swift_slowAlloc();
    *v70 = 136315906;
    *(v70 + 4) = sub_1002FFA0C(a2, a3, v108);
    *(v70 + 12) = 1024;
    *(v70 + 14) = v95 != 0;
    sub_10018D59C(v104, v95, v97, v94, v67, v65);
    *(v70 + 18) = 2080;
    if (v93 >> 60 == 15)
    {
      v71 = v67;
      v72 = 0xE500000000000000;
      v73 = 0x3E6C696E3CLL;
    }

    else
    {
      sub_100069E2C(v19, v93);
      sub_100288640(4, v19, v93, &v110);
      v75 = *(&v110 + 1);
      v74 = v110;
      v107[0] = sub_100288788(v110, *(&v110 + 1));
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
      v73 = BidirectionalCollection<>.joined(separator:)();
      v72 = v76;
      v77 = v75;
      v71 = v67;
      sub_10006A178(v74, v77);
    }

    v78 = sub_1002FFA0C(v73, v72, v108);

    *(v70 + 20) = v78;
    *(v70 + 28) = 1024;
    v79 = v119 != 2;
    sub_100075768(&v115, &qword_100504FA8, &qword_10040C588);
    *(v70 + 30) = v79;
    sub_100075768(&v115, &qword_100504FA8, &qword_10040C588);
    _os_log_impl(&_mh_execute_header, logb, v90, "For view %s cachedView %{BOOL}d currentTLK %s loadedTLK %{BOOL}d", v70, 0x22u);
    swift_arrayDestroy();

    sub_10018D59C(v104, v95, v97, v94, v71, v91);
    sub_10006A2D0(v19, v93);
  }

  else
  {
    sub_100075768(&v115, &qword_100504FA8, &qword_10040C588);
    sub_100075768(&v115, &qword_100504FA8, &qword_10040C588);
    sub_10018D59C(v104, v95, v97, v94, v67, v65);
    sub_10018D59C(v104, v95, v97, v94, v67, v65);

    sub_10006A2D0(v19, v93);
  }

  v80 = v118;
  *(a4 + 32) = v117;
  *(a4 + 48) = v80;
  *(a4 + 64) = v119;
  result = v116;
  *a4 = v115;
  *(a4 + 16) = result;
  return result;
}

uint64_t sub_100161B88()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000C288C;

  return sub_100161C18();
}

uint64_t sub_100161C38()
{
  v1 = *(v0 + 16) + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_logger;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Asking CK to synchronize everything", v4, 2u);
  }

  v5 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_100161D88;
  v7 = *(v0 + 16);

  return withTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_100161D88()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return _swift_task_switch(sub_100161E84, 0, 0);
}

uint64_t sub_100161E84()
{
  v1 = sub_1000B3934(&off_1004C4678);
  v0[4] = v1;
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_100161F2C;
  v3 = v0[2];

  return sub_10015F214(v1);
}

uint64_t sub_100161F2C()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_10016203C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_10018C318(a1, a2, v67);
  v7 = 0uLL;
  if (v68)
  {
    v50 = a4;
    v8 = *(a3 + 16);
    if (v8)
    {
      v9 = 0;
      v10 = v69;
      v11 = v70;
      v12 = v71;
      v13 = (a3 + 32);
      if (v69)
      {
        v14 = 0;
      }

      else
      {
        v14 = v70 == 0xC000000000000000;
      }

      v15 = !v14;
      v58 = v15;
      v16 = v70 >> 62;
      v17 = __OFSUB__(HIDWORD(v69), v69);
      v54 = v17;
      v56 = BYTE6(v70);
      while (1)
      {
        v19 = v13[3];
        v64 = v13[2];
        v65 = v19;
        v66 = *(v13 + 64);
        v20 = v13[1];
        v62 = *v13;
        v63 = v20;
        v21 = *(&v65 + 1) >> 62;
        if (*(&v65 + 1) >> 62 == 3)
        {
          break;
        }

        if (v21 > 1)
        {
          if (v21 != 2)
          {
            goto LABEL_39;
          }

          v27 = *(v65 + 16);
          v26 = *(v65 + 24);
          v28 = __OFSUB__(v26, v27);
          v25 = v26 - v27;
          if (v28)
          {
            goto LABEL_74;
          }

          if (v16 <= 1)
          {
            goto LABEL_36;
          }
        }

        else if (v21)
        {
          LODWORD(v25) = DWORD1(v65) - v65;
          if (__OFSUB__(DWORD1(v65), v65))
          {
            goto LABEL_73;
          }

          v25 = v25;
          if (v16 <= 1)
          {
LABEL_36:
            v29 = v56;
            if (v16)
            {
              v29 = HIDWORD(v10) - v10;
              if (v54)
              {
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
LABEL_78:
                __break(1u);
              }
            }

            goto LABEL_42;
          }
        }

        else
        {
          v25 = BYTE14(v65);
          if (v16 <= 1)
          {
            goto LABEL_36;
          }
        }

LABEL_40:
        if (v16 != 2)
        {
          if (v25)
          {
            goto LABEL_16;
          }

LABEL_13:
          sub_10018C628(&v62, v61);
LABEL_14:
          v18 = v66;
          if (((v66 ^ v12) & 1) == 0)
          {
            v57 = v64;
            v59 = v65;
            v53 = v62;
            v55 = v63;
            result = sub_100075768(v67, &qword_100504FB0, &qword_10040C590);
            v46 = v57;
            v47 = v59;
            v7 = v53;
            v45 = v55;
            a4 = v50;
            goto LABEL_71;
          }

          goto LABEL_15;
        }

        v31 = *(v10 + 16);
        v30 = *(v10 + 24);
        v28 = __OFSUB__(v30, v31);
        v29 = v30 - v31;
        if (v28)
        {
          goto LABEL_72;
        }

LABEL_42:
        if (v25 != v29)
        {
          goto LABEL_16;
        }

        if (v25 < 1)
        {
          goto LABEL_13;
        }

        if (v21 > 1)
        {
          if (v21 == 2)
          {
            v51 = v9;
            v48 = v12;
            v32 = v11;
            v34 = *(v65 + 16);
            v33 = *(v65 + 24);
            sub_10018C628(&v62, v61);
            v35 = __DataStorage._bytes.getter();
            if (v35)
            {
              v36 = __DataStorage._offset.getter();
              if (__OFSUB__(v34, v36))
              {
                goto LABEL_77;
              }

              v35 += v34 - v36;
            }

            if (__OFSUB__(v33, v34))
            {
              goto LABEL_76;
            }

            __DataStorage._length.getter();
            v37 = v35;
            v11 = v32;
            v38 = v32;
            v9 = v51;
            sub_10019F024(v37, v10, v38, v61);
            v39 = v61[0];
            v12 = v48;
LABEL_63:
            if (v39)
            {
              goto LABEL_14;
            }

            goto LABEL_15;
          }

          *(v60 + 6) = 0;
          v60[0] = 0;
          sub_10018C628(&v62, v61);
        }

        else
        {
          if (v21)
          {
            v52 = v9;
            v40 = v12;
            v41 = v65;
            if (v65 >> 32 < v65)
            {
              goto LABEL_75;
            }

            v49 = v11;
            sub_10018C628(&v62, v61);
            v42 = __DataStorage._bytes.getter();
            if (v42)
            {
              v43 = __DataStorage._offset.getter();
              if (__OFSUB__(v41, v43))
              {
                goto LABEL_78;
              }

              v42 += v41 - v43;
            }

            v12 = v40;
            __DataStorage._length.getter();
            v44 = v42;
            v11 = v49;
            v9 = v52;
            sub_10019F024(v44, v10, v49, v61);
            v39 = v61[0];
            goto LABEL_63;
          }

          v60[0] = v65;
          LODWORD(v60[1]) = DWORD2(v65);
          WORD2(v60[1]) = WORD6(v65);
          sub_10018C628(&v62, v61);
        }

        sub_10019F024(v60, v10, v11, v61);
        if (v61[0])
        {
          goto LABEL_14;
        }

LABEL_15:
        sub_10018C684(&v62);
LABEL_16:
        v13 = (v13 + 72);
        if (!--v8)
        {
          goto LABEL_68;
        }
      }

      if (v65)
      {
        v22 = 0;
      }

      else
      {
        v22 = *(&v65 + 1) == 0xC000000000000000;
      }

      v24 = !v22 || v16 < 3;
      if (((v24 | v58) & 1) == 0)
      {
        goto LABEL_13;
      }

LABEL_39:
      v25 = 0;
      if (v16 <= 1)
      {
        goto LABEL_36;
      }

      goto LABEL_40;
    }

LABEL_68:
    result = sub_100075768(v67, &qword_100504FB0, &qword_10040C590);
    v18 = 2;
    v45 = 0uLL;
    v46 = 0uLL;
    v47 = 0uLL;
    a4 = v50;
    v7 = 0uLL;
  }

  else
  {
    v18 = 2;
    v45 = 0uLL;
    v46 = 0uLL;
    v47 = 0uLL;
  }

LABEL_71:
  *a4 = v7;
  *(a4 + 16) = v45;
  *(a4 + 32) = v46;
  *(a4 + 48) = v47;
  *(a4 + 64) = v18;
  return result;
}

void sub_1001625A8(uint64_t a1, unint64_t a2, char *a3)
{
  v8 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v119 - v10;
  sub_10026FF50(v139);
  *&v134 = a1;
  *(&v134 + 1) = a2;
  sub_100069E2C(a1, a2);
  v12 = sub_1001A93E0(&v134, v139);
  if (v4)
  {
    v148 = v140;
    v149 = v141;
    sub_10018C454(&v148);
    v132 = v142;
    sub_100075768(&v132, &qword_100504EC8, &qword_10040C3B0);
    sub_10006A178(v134, *(&v134 + 1));
    return;
  }

  v146 = v140;
  v147 = v141;
  v13 = v12;
  sub_10018C454(&v146);
  v131 = v142;
  sub_100075768(&v131, &qword_100504EC8, &qword_10040C3B0);
  sub_10006A178(v134, *(&v134 + 1));
  sub_1002700F8(v13, &v143);
  v14 = v144;
  v15 = v145;
  sub_100069E2C(v144, v145);
  sub_10018C4A8(&v143);
  v16 = *(v3 + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_state);
  os_unfair_lock_lock((v16 + 48));
  v17 = *(v16 + 32);

  os_unfair_lock_unlock((v16 + 48));
  v126 = v15;
  v123 = v14;
  if (v17)
  {
    v129 = 0;

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();

    v20 = os_log_type_enabled(v18, v19);
    v125 = v17;
    if (v20)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *&v134 = v22;
      *v21 = 136315138;
      v23 = Array.description.getter();
      v25 = sub_1002FFA0C(v23, v24, &v134);

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v18, v19, "Have (cached) TLKs %s", v21, 0xCu);
      sub_1000752F4(v22);
      v26 = v125;
    }

    else
    {
      v26 = v17;
    }

    v41 = v26[2];
    v42 = v129;
    if (!v41)
    {
      v32 = v123;
LABEL_73:

      v73 = 0;
LABEL_75:
      [objc_allocWithZone(NSNumber) initWithBool:v73];
      goto LABEL_77;
    }

    v43 = 0;
    v32 = v123;
    if (v123)
    {
      v44 = 0;
    }

    else
    {
      v44 = v15 == 0xC000000000000000;
    }

    v45 = !v44;
    LODWORD(v128) = v45;
    v46 = v15 >> 62;
    v47 = __OFSUB__(HIDWORD(v123), v123);
    LODWORD(v121) = v47;
    v120 = (HIDWORD(v123) - v123);
    v127 = BYTE6(v15);
    v48 = 4;
    v122 = v41;
    v124 = (v15 >> 62);
    while (1)
    {
      if (v43 >= v26[2])
      {
        __break(1u);
LABEL_147:
        __break(1u);
LABEL_148:
        __break(1u);
        goto LABEL_149;
      }

      v134 = *&v26[v48];
      v49 = *&v26[v48 + 2];
      v50 = *&v26[v48 + 4];
      v51 = *&v26[v48 + 6];
      v138 = v26[v48 + 8];
      v136 = v50;
      v137 = v51;
      v135 = v49;
      v52 = *(&v134 + 1) >> 62;
      if (*(&v134 + 1) >> 62 == 3)
      {
        break;
      }

      if (v52 > 1)
      {
        if (v52 != 2)
        {
          goto LABEL_45;
        }

        v58 = *(v134 + 16);
        v57 = *(v134 + 24);
        v59 = __OFSUB__(v57, v58);
        v56 = v57 - v58;
        if (v59)
        {
          goto LABEL_151;
        }

        if (v46 <= 1)
        {
          goto LABEL_42;
        }
      }

      else if (v52)
      {
        LODWORD(v56) = DWORD1(v134) - v134;
        if (__OFSUB__(DWORD1(v134), v134))
        {
          goto LABEL_150;
        }

        v56 = v56;
        if (v46 <= 1)
        {
LABEL_42:
          v60 = v127;
          if (v46)
          {
            v60 = v120;
            if (v121)
            {
              goto LABEL_148;
            }
          }

          goto LABEL_48;
        }
      }

      else
      {
        v56 = BYTE14(v134);
        if (v46 <= 1)
        {
          goto LABEL_42;
        }
      }

LABEL_46:
      if (v46 != 2)
      {
        if (!v56)
        {
          goto LABEL_74;
        }

        goto LABEL_21;
      }

      v62 = *(v32 + 16);
      v61 = *(v32 + 24);
      v59 = __OFSUB__(v61, v62);
      v60 = (v61 - v62);
      if (v59)
      {
        goto LABEL_147;
      }

LABEL_48:
      if (v56 == v60)
      {
        if (v56 < 1)
        {
          goto LABEL_74;
        }

        if (v52 > 1)
        {
          if (v52 != 2)
          {
            *&v130[6] = 0;
            *v130 = 0;
            sub_10018C628(&v134, v133);
            goto LABEL_70;
          }

          v63 = v32;
          v129 = v42;
          v64 = *(v134 + 16);
          v65 = *(v134 + 24);
          sub_10018C628(&v134, v133);
          v66 = __DataStorage._bytes.getter();
          if (v66)
          {
            v67 = __DataStorage._offset.getter();
            if (__OFSUB__(v64, v67))
            {
              goto LABEL_154;
            }

            v66 += v64 - v67;
          }

          if (__OFSUB__(v65, v64))
          {
            goto LABEL_153;
          }

          __DataStorage._length.getter();
          v68 = v66;
          v32 = v63;
        }

        else
        {
          if (!v52)
          {
            *v130 = v134;
            *&v130[8] = DWORD2(v134);
            *&v130[12] = WORD6(v134);
            sub_10018C628(&v134, v133);
            v41 = v122;
LABEL_70:
            sub_10019F024(v130, v32, v15, v133);
            sub_10018C684(&v134);
            if (v133[0])
            {
              goto LABEL_74;
            }

LABEL_71:
            v46 = v124;
            goto LABEL_21;
          }

          v129 = v42;
          v63 = v32;
          v69 = v134;
          if (v134 >> 32 < v134)
          {
            goto LABEL_152;
          }

          sub_10018C628(&v134, v133);
          v70 = __DataStorage._bytes.getter();
          if (v70)
          {
            v71 = __DataStorage._offset.getter();
            if (__OFSUB__(v69, v71))
            {
              goto LABEL_155;
            }

            v70 += v69 - v71;
          }

          v32 = v63;
          __DataStorage._length.getter();
          v68 = v70;
        }

        v15 = v126;
        v72 = v129;
        sub_10019F024(v68, v63, v126, v133);
        v42 = v72;
        sub_10018C684(&v134);
        v26 = v125;
        v41 = v122;
        if (v133[0])
        {
          goto LABEL_74;
        }

        goto LABEL_71;
      }

LABEL_21:
      ++v43;
      v48 += 9;
      if (v41 == v43)
      {
        goto LABEL_73;
      }
    }

    if (v134)
    {
      v53 = 0;
    }

    else
    {
      v53 = *(&v134 + 1) == 0xC000000000000000;
    }

    v55 = !v53 || v46 < 3;
    if (((v55 | v128) & 1) == 0)
    {
LABEL_74:

      v73 = 1;
      goto LABEL_75;
    }

LABEL_45:
    v56 = 0;
    if (v46 <= 1)
    {
      goto LABEL_42;
    }

    goto LABEL_46;
  }

  v127 = v16;
  v27 = type metadata accessor for TaskPriority();
  (*(*(v27 - 8) + 56))(v11, 1, 1, v27);
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  *(v28 + 32) = v3;
  *(v28 + 40) = 9;

  sub_1001F9BE8(0, 0, v11, &unk_10040C3C0, v28);

  v29 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager_logger;
  sub_100069E2C(v14, v15);
  v128 = v29;
  v129 = v3;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.info.getter();
  sub_10006A178(v14, v15);
  v32 = v14;
  if (os_log_type_enabled(v30, v31))
  {
    v33 = swift_slowAlloc();
    v124 = v33;
    v125 = swift_slowAlloc();
    v133[0] = v125;
    *v33 = 136315138;
    sub_100069E2C(v32, v15);
    sub_100288640(4, v32, v15, &v134);
    v34 = v134;
    *v130 = sub_100288788(v134, *(&v134 + 1));
    v121 = v30;
    LODWORD(v122) = v31;
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
    v35 = BidirectionalCollection<>.joined(separator:)();
    v37 = v36;
    sub_10006A178(v34, *(&v34 + 1));

    v38 = sub_1002FFA0C(v35, v37, v133);
    v32 = v123;

    v39 = v124;
    *(v124 + 1) = v38;
    v40 = v121;
    _os_log_impl(&_mh_execute_header, v121, v122, "Falling back to listing SE for %s", v39, 0xCu);
    sub_1000752F4(v125);
  }

  else
  {
  }

  v74 = sub_1001A2ED8(a3);

  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.info.getter();

  v77 = os_log_type_enabled(v75, v76);
  v124 = v74;
  if (v77)
  {
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    *&v134 = v79;
    *v78 = 136315138;
    v80 = Array.description.getter();
    v82 = sub_1002FFA0C(v80, v81, &v134);
    v74 = v124;

    *(v78 + 4) = v82;
    _os_log_impl(&_mh_execute_header, v75, v76, "Got TLKS %s", v78, 0xCu);
    sub_1000752F4(v79);
  }

  v83 = v127;
  __chkstk_darwin(v84);
  *(&v119 - 2) = v74;
  os_unfair_lock_lock(v83 + 12);
  sub_10018C5DC(&v83[4]);
  v85 = 0;
  os_unfair_lock_unlock(v83 + 12);
  v86 = *(v74 + 16);
  v15 = v126;
  if (!v86)
  {
LABEL_143:

    v118 = 0;
    goto LABEL_145;
  }

  v87 = 0;
  if (v32)
  {
    v88 = 0;
  }

  else
  {
    v88 = v126 == 0xC000000000000000;
  }

  v89 = !v88;
  LODWORD(v128) = v89;
  v90 = (v126 >> 62);
  v91 = __OFSUB__(HIDWORD(v32), v32);
  LODWORD(v121) = v91;
  v120 = (HIDWORD(v32) - v32);
  v127 = BYTE6(v126);
  v92 = 32;
  v122 = v86;
  v125 = (v126 >> 62);
  while (1)
  {
    if (v87 >= *(v74 + 16))
    {
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
    }

    v134 = *(v74 + v92);
    v93 = *(v74 + v92 + 16);
    v94 = *(v74 + v92 + 32);
    v95 = *(v74 + v92 + 48);
    v138 = *(v74 + v92 + 64);
    v136 = v94;
    v137 = v95;
    v135 = v93;
    v96 = *(&v134 + 1) >> 62;
    if (*(&v134 + 1) >> 62 == 3)
    {
      break;
    }

    if (v96 > 1)
    {
      if (v96 != 2)
      {
        goto LABEL_116;
      }

      v102 = *(v134 + 16);
      v101 = *(v134 + 24);
      v59 = __OFSUB__(v101, v102);
      v100 = v101 - v102;
      if (v59)
      {
        goto LABEL_159;
      }

      if (v90 <= 1)
      {
        goto LABEL_113;
      }
    }

    else if (v96)
    {
      LODWORD(v100) = DWORD1(v134) - v134;
      if (__OFSUB__(DWORD1(v134), v134))
      {
        goto LABEL_158;
      }

      v100 = v100;
      if (v90 <= 1)
      {
LABEL_113:
        v103 = v127;
        if (v90)
        {
          v103 = v120;
          if (v121)
          {
            goto LABEL_157;
          }
        }

        goto LABEL_119;
      }
    }

    else
    {
      v100 = BYTE14(v134);
      if (v90 <= 1)
      {
        goto LABEL_113;
      }
    }

LABEL_117:
    if (v90 != 2)
    {
      if (!v100)
      {
        goto LABEL_144;
      }

      goto LABEL_92;
    }

    v105 = *(v32 + 16);
    v104 = *(v32 + 24);
    v59 = __OFSUB__(v104, v105);
    v103 = (v104 - v105);
    if (v59)
    {
      goto LABEL_156;
    }

LABEL_119:
    if (v100 == v103)
    {
      if (v100 < 1)
      {
        goto LABEL_144;
      }

      if (v96 > 1)
      {
        if (v96 != 2)
        {
          *&v130[6] = 0;
          *v130 = 0;
          sub_10018C628(&v134, v133);
LABEL_141:
          sub_10019F024(v130, v32, v15, v133);
          sub_10018C684(&v134);
          if (v133[0])
          {
            goto LABEL_144;
          }

          goto LABEL_142;
        }

        v106 = v85;
        v107 = *(v134 + 16);
        v129 = *(v134 + 24);
        sub_10018C628(&v134, v133);
        v108 = __DataStorage._bytes.getter();
        if (v108)
        {
          v109 = __DataStorage._offset.getter();
          if (__OFSUB__(v107, v109))
          {
            goto LABEL_162;
          }

          v108 += v107 - v109;
        }

        if (__OFSUB__(v129, v107))
        {
          goto LABEL_161;
        }

        __DataStorage._length.getter();
        v110 = v108;
        v111 = v32;
        v15 = v126;
        v112 = v126;
        v113 = v106;
      }

      else
      {
        if (!v96)
        {
          *v130 = v134;
          *&v130[8] = DWORD2(v134);
          *&v130[12] = WORD6(v134);
          sub_10018C628(&v134, v133);
          v86 = v122;
          goto LABEL_141;
        }

        v129 = v85;
        v114 = v32;
        v115 = v134;
        if (v134 >> 32 < v134)
        {
          goto LABEL_160;
        }

        sub_10018C628(&v134, v133);
        v116 = __DataStorage._bytes.getter();
        if (v116)
        {
          v117 = __DataStorage._offset.getter();
          if (__OFSUB__(v115, v117))
          {
            goto LABEL_163;
          }

          v116 += v115 - v117;
        }

        v32 = v114;
        __DataStorage._length.getter();
        v110 = v116;
        v111 = v114;
        v15 = v126;
        v112 = v126;
        v113 = v129;
      }

      sub_10019F024(v110, v111, v112, v133);
      v85 = v113;
      sub_10018C684(&v134);
      v74 = v124;
      v86 = v122;
      if (v133[0])
      {
        goto LABEL_144;
      }

LABEL_142:
      v90 = v125;
    }

LABEL_92:
    ++v87;
    v92 += 72;
    if (v86 == v87)
    {
      goto LABEL_143;
    }
  }

  if (v134)
  {
    v97 = 0;
  }

  else
  {
    v97 = *(&v134 + 1) == 0xC000000000000000;
  }

  v99 = !v97 || v90 < 3;
  if ((v99 | v128))
  {
LABEL_116:
    v100 = 0;
    if (v90 <= 1)
    {
      goto LABEL_113;
    }

    goto LABEL_117;
  }

LABEL_144:

  v118 = 1;
LABEL_145:
  sub_10009393C(0, &qword_100504C80, NSNumber_ptr);
  NSNumber.init(BOOLeanLiteral:)(v118);
LABEL_77:
  sub_10006A178(v32, v15);
}

uint64_t sub_10016368C(uint64_t a1)
{
  if (!a1)
  {
    return 1701602409;
  }

  _StringGuts.grow(_:)(23);

  sub_100188FC4();
  v1._countAndFlagsBits = Set.description.getter();
  String.append(_:)(v1);

  return 0xD000000000000015;
}

uint64_t sub_10016373C(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_1000D78B8(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100163840(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_1000D7BA4(&v11, *(*(v2 + 48) + (v10 | (v9 << 6)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_10016391C(uint64_t a1)
{
  v2 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v19 - v4;
  v6 = objc_opt_self();
  v7 = String._bridgeToObjectiveC()();
  [v6 setFirstLaunchAfterBootDoneForKey:v7];

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 136315138;
    if (*(a1 + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_syncProgressState))
    {
      v20 = 0;
      v21 = 0xE000000000000000;

      _StringGuts.grow(_:)(23);

      v20 = 0xD000000000000015;
      v21 = 0x8000000100464D10;
      sub_100188FC4();
      v12._countAndFlagsBits = Set.description.getter();
      String.append(_:)(v12);

      v13 = v20;
      v14 = v21;
    }

    else
    {
      v14 = 0xE400000000000000;
      v13 = 1701602409;
    }

    v15 = sub_1002FFA0C(v13, v14, &v22);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "Sync completed %s", v10, 0xCu);
    sub_1000752F4(v11);
  }

  v16 = *(a1 + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_syncProgressState);
  if (v16)
  {
    *(a1 + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_syncProgressState) = 0;
    if (*(v16 + 16))
    {
      v17 = type metadata accessor for TaskPriority();
      (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
      v18 = swift_allocObject();
      v18[2] = 0;
      v18[3] = 0;
      v18[4] = v16;
      sub_1001608B4(0, 0, v5, &unk_10040C558, v18);

      sub_100075768(v5, &qword_100504250, &qword_10040D610);
    }

    else
    {
    }
  }
}

uint64_t sub_100163C4C(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_100068FC4(&qword_100504F98, &unk_10040C540);
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_100163D18, v1, 0);
}

uint64_t sub_100163D18()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v1 + 32);
  *(v0 + 160) = v3;
  v4 = 1 << v3;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v1 + 56);
  *(v0 + 96) = OBJC_IVAR____TtC10seserviced16SEKeySyncManager__lastDSIDCanSync;

  swift_beginAccess();
  if (!v6)
  {
    v9 = 0;
    v8 = *(v0 + 56);
    while (1)
    {
      v7 = v9 + 1;
      if (v9 + 1 >= ((1 << *(v0 + 160)) + 63) >> 6)
      {
        break;
      }

      v6 = *(v8 + 8 * v9++ + 64);
      if (v6)
      {
        goto LABEL_9;
      }
    }

    v11 = 0;
    goto LABEL_12;
  }

  v7 = 0;
  v8 = *(v0 + 56);
LABEL_9:
  *(v0 + 104) = v6;
  *(v0 + 112) = v7;
  v10 = *(*(v8 + 48) + (__clz(__rbit64(v6)) | (v7 << 6)));
  if ((v10 - 2) < 0xA)
  {

    v11 = 1;
LABEL_12:
    v12 = *(v0 + 88);

    v13 = *(v0 + 8);

    return v13(v11);
  }

  if (v10)
  {
    v17 = swift_task_alloc();
    *(v0 + 152) = v17;
    *v17 = v0;
    v17[1] = sub_10016475C;
    v18 = *(v0 + 64);

    return sub_1001879D0();
  }

  else
  {
    v15 = swift_task_alloc();
    *(v0 + 120) = v15;
    *v15 = v0;
    v15[1] = sub_100163F38;
    v16 = *(v0 + 64);

    return sub_10016BBF8(0);
  }
}

uint64_t sub_100163F38(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v6 = *(*v3 + 120);
  v7 = *v3;
  *(v5 + 128) = a1;
  *(v5 + 136) = a2;
  *(v5 + 144) = v2;

  if (v2)
  {
    *(v5 + 163) = a1;
    v8 = *(v5 + 64);
    v9 = sub_100164A64;
  }

  else
  {
    v8 = *(v5 + 64);
    v9 = sub_100164068;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100164068()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  (*(v4 + 16))(v2, *(v0 + 64) + *(v0 + 96), v3);
  UserDefaultBackedOptional.wrappedValue.getter();
  v5 = (*(v4 + 8))(v2, v3);
  v8 = *(v0 + 40);
  v9 = *(v0 + 48);
  if (v1 >> 60 != 15)
  {
    if (v9 >> 60 == 15)
    {
      goto LABEL_5;
    }

    v13 = *(v0 + 136);
    v14 = v13 >> 62;
    v15 = v9 >> 62;
    if (v13 >> 62 == 3)
    {
      v16 = 0;
      if (v13 == 0xC000000000000000 && !*(v0 + 128) && v9 >> 62 == 3)
      {
        v16 = 0;
        if (!v8 && v9 == 0xC000000000000000)
        {
          v17 = 0;
          v18 = 0xC000000000000000;
LABEL_34:
          sub_10006A2D0(v17, v18);
          v29 = 0;
          goto LABEL_35;
        }
      }
    }

    else if (v14)
    {
      if (v14 == 1)
      {
        v19 = *(v0 + 128);
        v20 = *(v0 + 132);
        v21 = __OFSUB__(v20, v19);
        LODWORD(v16) = v20 - v19;
        if (v21)
        {
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        v16 = v16;
      }

      else
      {
        v22 = *(*(v0 + 128) + 16);
        v23 = *(*(v0 + 128) + 24);
        v21 = __OFSUB__(v23, v22);
        v16 = v23 - v22;
        if (v21)
        {
LABEL_43:
          __break(1u);
          return _swift_task_switch(v5, v6, v7);
        }
      }
    }

    else
    {
      v16 = BYTE6(v13);
    }

    if (v15 > 1)
    {
      if (v15 != 2)
      {
        if (!v16)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }

      v25 = *(v8 + 16);
      v24 = *(v8 + 24);
      v21 = __OFSUB__(v24, v25);
      v26 = v24 - v25;
      if (!v21)
      {
        if (v16 != v26)
        {
          goto LABEL_32;
        }

        goto LABEL_29;
      }

      __break(1u);
    }

    else
    {
      if (!v15)
      {
        if (v16 != BYTE6(v9))
        {
          goto LABEL_32;
        }

        goto LABEL_29;
      }

      if (!__OFSUB__(HIDWORD(v8), v8))
      {
        if (v16 == HIDWORD(v8) - v8)
        {
LABEL_29:
          if (v16 >= 1)
          {
            v27 = *(v0 + 144);
            v28 = *(v0 + 128);
            sub_10006A2BC(*(v0 + 40), *(v0 + 48));
            sub_10006A2BC(v28, v13);
            sub_10006A2BC(v8, v9);
            LOBYTE(v27) = sub_10008C678(v28, v13, v8, v9);
            sub_10006A2D0(v28, v13);
            sub_10006A2D0(v8, v9);
            sub_10006A2D0(v8, v9);
            v29 = v27 ^ 1;
LABEL_35:
            *(v0 + 161) = v29 & 1;
            v10 = *(v0 + 64);
            sub_10006A2D0(*(v0 + 128), *(v0 + 136));
            v11 = sub_100164344;
            goto LABEL_36;
          }

LABEL_33:
          v17 = *(v0 + 40);
          v18 = *(v0 + 48);
          goto LABEL_34;
        }

LABEL_32:
        sub_10006A2D0(*(v0 + 40), *(v0 + 48));
        v29 = 1;
        goto LABEL_35;
      }
    }

    __break(1u);
    goto LABEL_42;
  }

  if (v9 >> 60 != 15)
  {
LABEL_5:
    v12 = *(v0 + 64);
    sub_10006A2D0(*(v0 + 128), *(v0 + 136));
    sub_10006A2D0(v8, v9);
    v5 = sub_100164520;
    v6 = v12;
    goto LABEL_37;
  }

  v10 = *(v0 + 64);
  sub_10006A2D0(*(v0 + 128), *(v0 + 136));
  v11 = sub_100164590;
LABEL_36:
  v5 = v11;
  v6 = v10;
LABEL_37:
  v7 = 0;

  return _swift_task_switch(v5, v6, v7);
}

void sub_100164344()
{
  if (*(v0 + 161))
  {
    v1 = *(v0 + 56);
LABEL_10:

    v7 = 1;
LABEL_11:
    v8 = *(v0 + 88);

    v9 = *(v0 + 8);

    v9(v7);
    return;
  }

  v2 = *(v0 + 112);
  v3 = (*(v0 + 104) - 1) & *(v0 + 104);
  if (v3)
  {
    v4 = *(v0 + 56);
LABEL_9:
    *(v0 + 104) = v3;
    *(v0 + 112) = v2;
    v6 = *(*(v4 + 48) + (__clz(__rbit64(v3)) | (v2 << 6)));
    if ((v6 - 2) >= 0xA)
    {
      if (v6)
      {
        v12 = swift_task_alloc();
        *(v0 + 152) = v12;
        *v12 = v0;
        v12[1] = sub_10016475C;
        v13 = *(v0 + 64);

        sub_1001879D0();
      }

      else
      {
        v10 = swift_task_alloc();
        *(v0 + 120) = v10;
        *v10 = v0;
        v10[1] = sub_100163F38;
        v11 = *(v0 + 64);

        sub_10016BBF8(0);
      }

      return;
    }

    goto LABEL_10;
  }

  while (1)
  {
    v5 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    v4 = *(v0 + 56);
    if (v5 >= (((1 << *(v0 + 160)) + 63) >> 6))
    {

      v7 = 0;
      goto LABEL_11;
    }

    v3 = *(v4 + 8 * v5 + 56);
    ++v2;
    if (v3)
    {
      v2 = v5;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_100164520()
{
  v1 = v0[7];

  v2 = v0[11];

  v3 = v0[1];

  return v3(1);
}

void sub_100164590()
{
  v1 = *(v0 + 112);
  v2 = (*(v0 + 104) - 1) & *(v0 + 104);
  if (v2)
  {
    v3 = *(v0 + 56);
LABEL_7:
    *(v0 + 104) = v2;
    *(v0 + 112) = v1;
    v5 = *(*(v3 + 48) + (__clz(__rbit64(v2)) | (v1 << 6)));
    if ((v5 - 2) >= 0xA)
    {
      if (v5)
      {
        v11 = swift_task_alloc();
        *(v0 + 152) = v11;
        *v11 = v0;
        v11[1] = sub_10016475C;
        v12 = *(v0 + 64);

        sub_1001879D0();
      }

      else
      {
        v9 = swift_task_alloc();
        *(v0 + 120) = v9;
        *v9 = v0;
        v9[1] = sub_100163F38;
        v10 = *(v0 + 64);

        sub_10016BBF8(0);
      }
    }

    else
    {

      v6 = 1;
LABEL_10:
      v7 = *(v0 + 88);

      v8 = *(v0 + 8);

      v8(v6);
    }
  }

  else
  {
    while (1)
    {
      v4 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      v3 = *(v0 + 56);
      if (v4 >= (((1 << *(v0 + 160)) + 63) >> 6))
      {

        v6 = 0;
        goto LABEL_10;
      }

      v2 = *(v3 + 8 * v4 + 56);
      ++v1;
      if (v2)
      {
        v1 = v4;
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

uint64_t sub_10016475C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 152);
  v6 = *v2;
  *(*v2 + 162) = a1;

  if (v1)
  {
    *(v4 + 163) = a1;
    v7 = *(v4 + 64);
    v8 = sub_100164A64;
  }

  else
  {
    v7 = *(v4 + 64);
    v8 = sub_100164888;
  }

  return _swift_task_switch(v8, v7, 0);
}

void sub_100164888()
{
  if (*(v0 + 162))
  {
    v1 = *(v0 + 56);
LABEL_10:

    v7 = 1;
LABEL_11:
    v8 = *(v0 + 88);

    v9 = *(v0 + 8);

    v9(v7);
    return;
  }

  v2 = *(v0 + 112);
  v3 = (*(v0 + 104) - 1) & *(v0 + 104);
  if (v3)
  {
    v4 = *(v0 + 56);
LABEL_9:
    *(v0 + 104) = v3;
    *(v0 + 112) = v2;
    v6 = *(*(v4 + 48) + (__clz(__rbit64(v3)) | (v2 << 6)));
    if ((v6 - 2) >= 0xA)
    {
      if (v6)
      {
        v12 = swift_task_alloc();
        *(v0 + 152) = v12;
        *v12 = v0;
        v12[1] = sub_10016475C;
        v13 = *(v0 + 64);

        sub_1001879D0();
      }

      else
      {
        v10 = swift_task_alloc();
        *(v0 + 120) = v10;
        *v10 = v0;
        v10[1] = sub_100163F38;
        v11 = *(v0 + 64);

        sub_10016BBF8(0);
      }

      return;
    }

    goto LABEL_10;
  }

  while (1)
  {
    v5 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    v4 = *(v0 + 56);
    if (v5 >= (((1 << *(v0 + 160)) + 63) >> 6))
    {

      v7 = 0;
      goto LABEL_11;
    }

    v3 = *(v4 + 8 * v5 + 56);
    ++v2;
    if (v3)
    {
      v2 = v5;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_100164A64()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);

  v3 = *(v0 + 8);
  v4 = *(v0 + 163);

  return v3(v4);
}

uint64_t sub_100164AD8()
{
  *(v1 + 24) = v0;
  v2 = swift_task_alloc();
  *(v1 + 32) = v2;
  *v2 = v1;
  v2[1] = sub_100164B98;

  return sub_10016BBF8(1);
}

uint64_t sub_100164B98(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 32);
  v7 = *v3;
  *(v5 + 40) = a1;
  *(v5 + 48) = a2;

  v8 = *(v4 + 24);
  if (v2)
  {
    v9 = sub_1001652F0;
  }

  else
  {
    v9 = sub_100164CF8;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100164CF8()
{
  if (v0[6] >> 60 == 15)
  {
    v1 = v0[5];
    v2 = v0[1];

    return v2(v1);
  }

  else
  {
    if (qword_100501A40 != -1)
    {
      swift_once();
    }

    v4 = swift_task_alloc();
    v0[7] = v4;
    *v4 = v0;
    v4[1] = sub_100164E44;
    v5 = v0[3];

    return sub_10016C130();
  }
}

uint64_t sub_100164E44(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v5 = *v2;
  *(*v2 + 64) = a1;

  v6 = *(v3 + 24);
  if (v1)
  {
    v7 = sub_10016539C;
  }

  else
  {
    v7 = sub_100164FA4;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100164FA4(uint64_t a1, const char *a2)
{
  v3 = *(v2 + 24);
  v4 = sub_1001316C4(*(v2 + 64), a2);
  if (v4 != 35)
  {
    v13 = v4;
    v14 = *(v2 + 24) + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_logger;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Sync Progress -- disabling Key Sync due to SLAM error", v17, 2u);
    }

    v18 = *(v2 + 64);
    v20 = *(v2 + 40);
    v19 = *(v2 + 48);
    v21 = *(v2 + 24);

    v22 = objc_opt_self();
    v23 = String._bridgeToObjectiveC()();
    [v22 deregisterAlarm:v23];

    *(v21 + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_stopped) = 1;
    v24 = *(v21 + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_syncProgressState);
    *(v21 + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_syncProgressState) = &_swiftEmptySetSingleton;

    sub_10018C6D8();
    swift_allocError();
    *v25 = v13;
    swift_willThrow();

    v11 = v20;
    v12 = v19;
    goto LABEL_7;
  }

  *(v2 + 16) = 0;
  v5 = sub_100053B8C(*(v2 + 64), (v2 + 16));
  v6 = *(v2 + 16);
  if (v6)
  {
    v7 = *(v2 + 64);
    v9 = *(v2 + 40);
    v8 = *(v2 + 48);
    v10 = *(v2 + 16);
    swift_willThrow();
    v6;

    v11 = v9;
    v12 = v8;
LABEL_7:
    sub_10006A2D0(v11, v12);
    v26 = *(v2 + 8);

    return v26();
  }

  if (v5)
  {
    v28 = *(v2 + 64);
    v30 = *(v2 + 40);
    v29 = *(v2 + 48);
  }

  else
  {
    v31 = *(v2 + 24) + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_logger;
    v28 = Logger.logObject.getter();
    v32 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v28, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v28, v32, "Sync Progress -- not continuing because SE not paired", v33, 2u);
    }

    v35 = *(v2 + 40);
    v34 = *(v2 + 48);

    sub_10006A2D0(v35, v34);
    v30 = 0;
    v29 = 0xF000000000000000;
  }

  v36 = *(v2 + 8);

  return v36(v30, v29);
}

uint64_t sub_1001652F0()
{
  v1 = *(v0 + 40);
  sub_10018C6D8();
  swift_allocError();
  *v2 = v1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10016539C()
{
  v1 = v0[8];
  v3 = v0[5];
  v2 = v0[6];
  sub_10018C6D8();
  swift_allocError();
  *v4 = v1;
  sub_10006A2D0(v3, v2);
  v5 = v0[1];

  return v5();
}

uint64_t sub_100165468(uint64_t a1, uint64_t a2)
{
  v3[74] = v2;
  v3[73] = a2;
  v3[72] = a1;
  v4 = sub_100068FC4(&qword_100504EE0, &qword_10040C408);
  v3[75] = v4;
  v5 = *(v4 - 8);
  v3[76] = v5;
  v6 = *(v5 + 64) + 15;
  v3[77] = swift_task_alloc();
  v7 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  v3[78] = v7;
  v8 = *(v7 - 8);
  v3[79] = v8;
  v9 = *(v8 + 64) + 15;
  v3[80] = swift_task_alloc();
  v10 = *(*(type metadata accessor for SESPeerIdentityData(0) - 8) + 64) + 15;
  v3[81] = swift_task_alloc();

  return _swift_task_switch(sub_1001655D0, v2, 0);
}

uint64_t sub_1001655D0()
{
  v1 = v0[74];
  v0[82] = OBJC_IVAR____TtC10seserviced16SEKeySyncManager_logger;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Sync progress -- loading views & TLKS", v4, 2u);
  }

  v5 = v0[74];

  v6 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager_secureElementInfo;
  v0[83] = OBJC_IVAR____TtC10seserviced16SEKeySyncManager_secureElementInfo;
  v7 = *(v5 + v6);
  if (v7)
  {
    v0[86] = v7;
    v8 = v7;
    v9 = swift_task_alloc();
    v0[87] = v9;
    *v9 = v0;
    v9[1] = sub_1001658B8;
    v10 = v0[74];
    v11 = v0[73];
    v12 = v0[72];

    return sub_10016C5E0(v12, v11);
  }

  else
  {
    v14 = swift_task_alloc();
    v0[84] = v14;
    *v14 = v0;
    v14[1] = sub_100165784;
    v15 = v0[74];

    return sub_10016C130();
  }
}

uint64_t sub_100165784(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 672);
  v5 = *v2;
  *(*v2 + 680) = a1;

  v6 = *(v3 + 592);
  if (v1)
  {
    v7 = sub_100165ADC;
  }

  else
  {
    v7 = sub_1001659F4;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1001658B8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 696);
  v7 = *v3;
  v5[88] = a1;
  v5[89] = a2;
  v5[90] = v2;

  v8 = v4[74];
  if (v2)
  {
    v9 = sub_10016B3AC;
  }

  else
  {
    v9 = sub_100165B84;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1001659F4(uint64_t a1, const char *a2)
{
  v3 = v2[85];
  v4 = v2[83];
  v5 = v2[74];
  v6 = sub_1003AF3C4(v3, a2);

  v7 = *(v5 + v4);
  *(v5 + v4) = v6;
  v8 = v6;

  v2[86] = v8;
  v9 = swift_task_alloc();
  v2[87] = v9;
  *v9 = v2;
  v9[1] = sub_1001658B8;
  v10 = v2[74];
  v11 = v2[73];
  v12 = v2[72];

  return sub_10016C5E0(v12, v11);
}

uint64_t sub_100165ADC()
{
  v1 = v0[85];
  sub_10018C6D8();
  swift_allocError();
  *v2 = v1;
  v3 = v0[81];
  v4 = v0[80];
  v5 = v0[77];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100165B84()
{
  v1 = v0[82];
  v2 = v0[74];
  v0[68] = v0[88];
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Sync progress -- initial views and TLKs loaded", v5, 2u);
  }

  v6 = v0[90];
  v7 = v0[89];
  v8 = v0[86];
  v9 = v0[74];

  v10 = sub_10016CBF8(v7, v8);
  if (v6)
  {
    v11 = v0[89];
    v12 = v0[88];
    v13 = v0[86];

    v14 = v0[81];
    v15 = v0[80];
    v16 = v0[77];

    v17 = v0[1];
LABEL_7:

    return v17();
  }

  if (v10)
  {
    v18 = v0[89];
    v19 = v0[88];
    v20 = v0[86];
    v21 = v0[74];

    v22 = objc_opt_self();
    v23 = String._bridgeToObjectiveC()();
    [v22 deregisterAlarm:v23];

    *(v21 + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_stopped) = 1;

    v24 = v0[81];
    v25 = v0[80];
    v26 = v0[77];

    v17 = v0[1];
    goto LABEL_7;
  }

  v28 = swift_task_alloc();
  v0[91] = v28;
  *v28 = v0;
  v28[1] = sub_100165E04;
  v29 = v0[81];
  v30 = v0[74];
  v31 = v0[73];
  v32 = v0[72];

  return sub_10016EA88(v29, v32, v31, v0 + 241);
}

uint64_t sub_100165E04()
{
  v2 = *v1;
  v3 = *(*v1 + 728);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 712);
    v6 = *(v2 + 592);
    *(v2 + 244) = *(v2 + 241);

    return _swift_task_switch(sub_100165F90, v6, 0);
  }

  else
  {
    v7 = swift_task_alloc();
    *(v2 + 736) = v7;
    *v7 = v4;
    v7[1] = sub_100166050;
    v8 = *(v2 + 648);
    v9 = *(v2 + 592);
    v10 = *(v2 + 584);
    v11 = *(v2 + 576);

    return sub_10016F7E8(v11, v10, v8);
  }
}

uint64_t sub_100165F90()
{
  v1 = *(v0 + 244);
  v2 = *(v0 + 704);
  v3 = *(v0 + 688);
  sub_10018C6D8();
  swift_allocError();
  *v4 = v1;

  v5 = *(v0 + 648);
  v6 = *(v0 + 640);
  v7 = *(v0 + 616);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100166050(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 736);
  v10 = *v2;
  *(*v2 + 744) = a1;

  if (v1)
  {
    v5 = *(v3 + 712);
    v6 = *(v3 + 592);

    v7 = sub_10016B45C;
    v8 = v6;
  }

  else
  {
    v8 = *(v3 + 592);
    v7 = sub_100166178;
  }

  return _swift_task_switch(v7, v8, 0);
}

void sub_100166178()
{
  v1 = *(v0 + 744);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v50 = *(v0 + 744);
    }

    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    sub_10019F4A4(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
      goto LABEL_31;
    }

    v3 = *(v0 + 744);
    if ((v3 & 0xC000000000000001) != 0)
    {
      v4 = 0;
      do
      {
        v5 = *(v0 + 744);
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v6 = [swift_unknownObjectRetain() peerIdentifier];
        v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v9 = v8;

        swift_unknownObjectRelease_n();
        v11 = _swiftEmptyArrayStorage[2];
        v10 = _swiftEmptyArrayStorage[3];
        if (v11 >= v10 >> 1)
        {
          sub_10019F4A4((v10 > 1), v11 + 1, 1);
        }

        ++v4;
        _swiftEmptyArrayStorage[2] = v11 + 1;
        v12 = &_swiftEmptyArrayStorage[2 * v11];
        v12[4] = v7;
        v12[5] = v9;
      }

      while (v2 != v4);
    }

    else
    {
      v13 = (v3 + 32);
      do
      {
        v14 = *v13;
        v15 = [v14 peerIdentifier];
        v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;

        v20 = _swiftEmptyArrayStorage[2];
        v19 = _swiftEmptyArrayStorage[3];
        if (v20 >= v19 >> 1)
        {
          sub_10019F4A4((v19 > 1), v20 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v20 + 1;
        v21 = &_swiftEmptyArrayStorage[2 * v20];
        v21[4] = v16;
        v21[5] = v18;
        ++v13;
        --v2;
      }

      while (v2);
    }
  }

  v22 = *(v0 + 656);
  v23 = *(v0 + 592);
  *(v0 + 552) = _swiftEmptyArrayStorage;
  swift_beginAccess();
  sub_100068FC4(&qword_100504EE8, &qword_10040C430);
  UserDefaultBackedOptional.wrappedValue.setter();
  swift_endAccess();
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "Sync progress -- identity aligned with Octagon", v26, 2u);
  }

  v27 = *(v0 + 712);

  v28 = *(v27 + 16);
  *(v0 + 752) = v28;
  if (v28)
  {
    v29 = *(v0 + 712);
    *(v0 + 245) = 0;
    *(v0 + 760) = 0;
    if (*(v29 + 16))
    {
      v31 = *(v29 + 32);
      v30 = *(v29 + 40);
      *(v0 + 768) = v30;
      v32 = *(v29 + 48);
      *(v0 + 776) = v32;
      v33 = *(v29 + 56);
      *(v0 + 784) = v33;
      v34 = *(v29 + 64);
      v35 = *(v29 + 72);
      *(v0 + 792) = v35;
      *(v0 + 208) = v31;
      *(v0 + 216) = v30;
      *(v0 + 224) = v32;
      *(v0 + 232) = v33;
      *(v0 + 240) = v34;

      sub_100069E2C(v32, v33);
      v36 = v35;
      v37 = swift_task_alloc();
      *(v0 + 800) = v37;
      *v37 = v0;
      v37[1] = sub_100166624;
      v38 = *(v0 + 648);
      v39 = *(v0 + 592);
      v40 = *(v0 + 584);
      v41 = *(v0 + 576);

      sub_1001710AC(v0 + 208, v36, v38, v41, v40);
      return;
    }

LABEL_31:
    __break(1u);
    return;
  }

  v42 = *(v0 + 592) + *(v0 + 656);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 67109120;
    _os_log_impl(&_mh_execute_header, v43, v44, "Sync progress -- anyTLKProposed %{BOOL}d", v45, 8u);
  }

  v46 = *(v0 + 712);
  v47 = *(v0 + 704);
  *(v0 + 840) = v47;
  *(v0 + 832) = v46;
  v48 = swift_task_alloc();
  *(v0 + 848) = v48;
  *v48 = v0;
  v48[1] = sub_100166C84;
  v49 = *(v0 + 592);

  sub_100171FB0(v46, v47);
}

uint64_t sub_100166624(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 800);
  v11 = *v2;
  *(*v2 + 246) = a1;

  if (v1)
  {
    v5 = v3[93];
    v6 = v3[89];
    v7 = v3[74];

    v8 = sub_10016B544;
    v9 = v7;
  }

  else
  {
    v9 = v3[74];
    v8 = sub_100166758;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_100166758()
{
  v1 = *(v0 + 246);
  v2 = *(v0 + 784);
  v3 = *(v0 + 776);
  v4 = *(v0 + 768);
  v5 = *(v0 + 245);
  v6 = *(v0 + 760);
  v7 = *(v0 + 752);

  result = sub_10006A178(v3, v2);
  v9 = v5 | v1;
  if (v6 + 1 == v7)
  {
    v10 = *(v0 + 592) + *(v0 + 656);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 67109120;
      *(v13 + 4) = v9 & 1;
      _os_log_impl(&_mh_execute_header, v11, v12, "Sync progress -- anyTLKProposed %{BOOL}d", v13, 8u);
    }

    v14 = *(v0 + 712);
    if (v9)
    {
      v15 = *(v0 + 712);

      v16 = swift_task_alloc();
      *(v0 + 808) = v16;
      *v16 = v0;
      v16[1] = sub_100166A84;
      v17 = *(v0 + 592);
      v18 = *(v0 + 584);
      v19 = *(v0 + 576);

      return sub_10016C5E0(v19, v18);
    }

    else
    {
      v35 = *(v0 + 704);
      *(v0 + 840) = v35;
      *(v0 + 832) = v14;
      v36 = swift_task_alloc();
      *(v0 + 848) = v36;
      *v36 = v0;
      v36[1] = sub_100166C84;
      v37 = *(v0 + 592);

      return sub_100171FB0(v14, v35);
    }
  }

  else
  {
    v20 = *(v0 + 760) + 1;
    *(v0 + 245) = v9 & 1;
    *(v0 + 760) = v20;
    v21 = *(v0 + 712);
    if (v20 >= *(v21 + 16))
    {
      __break(1u);
    }

    else
    {
      v22 = v21 + 48 * v20;
      v24 = *(v22 + 32);
      v23 = *(v22 + 40);
      *(v0 + 768) = v23;
      v25 = *(v22 + 48);
      *(v0 + 776) = v25;
      v26 = *(v22 + 56);
      *(v0 + 784) = v26;
      v27 = *(v22 + 64);
      v28 = *(v22 + 72);
      *(v0 + 792) = v28;
      *(v0 + 208) = v24;
      *(v0 + 216) = v23;
      *(v0 + 224) = v25;
      *(v0 + 232) = v26;
      *(v0 + 240) = v27;

      sub_100069E2C(v25, v26);
      v29 = v28;
      v30 = swift_task_alloc();
      *(v0 + 800) = v30;
      *v30 = v0;
      v30[1] = sub_100166624;
      v31 = *(v0 + 648);
      v32 = *(v0 + 592);
      v33 = *(v0 + 584);
      v34 = *(v0 + 576);

      return sub_1001710AC(v0 + 208, v29, v31, v34, v33);
    }
  }

  return result;
}

uint64_t sub_100166A84(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v6 = *(*v3 + 808);
  v7 = *v3;
  *(*v3 + 816) = a1;

  if (v2)
  {
    v8 = v5[93];
    v9 = v5[74];

    v10 = sub_10016B664;
    v11 = v9;
  }

  else
  {
    v11 = v5[74];
    v5[103] = a2;
    v10 = sub_100166BC4;
  }

  return _swift_task_switch(v10, v11, 0);
}

uint64_t sub_100166BC4()
{
  v1 = v0[102];
  v2 = v0[88];

  v0[68] = v1;
  v3 = v0[103];
  v4 = v0[102];
  v0[105] = v4;
  v0[104] = v3;
  v5 = swift_task_alloc();
  v0[106] = v5;
  *v5 = v0;
  v5[1] = sub_100166C84;
  v6 = v0[74];

  return sub_100171FB0(v3, v4);
}

uint64_t sub_100166C84(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 848);
  v6 = *v2;
  *(*v2 + 856) = v1;

  if (v1)
  {
    v7 = *(v4 + 832);
    v8 = *(v4 + 744);
    v9 = *(v4 + 592);

    v10 = sub_10016B74C;
    v11 = v9;
  }

  else
  {
    v11 = *(v4 + 592);
    *(v4 + 247) = a1 & 1;
    v10 = sub_100166DD4;
  }

  return _swift_task_switch(v10, v11, 0);
}

void sub_100166DD4()
{
  if (*(v0 + 247))
  {
    v1 = *(v0 + 832);

    v2 = swift_task_alloc();
    *(v0 + 864) = v2;
    *v2 = v0;
    v2[1] = sub_100167C34;
    v3 = *(v0 + 592);
    v4 = *(v0 + 584);
    v5 = *(v0 + 576);

    sub_10016C5E0(v5, v4);
    return;
  }

  v6 = *(v0 + 832);
  v165 = *(v0 + 840);
  *(v0 + 896) = v165;
  *(v0 + 888) = v6;
  v7 = *(v6 + 16);
  v171 = v6;
  if (v7)
  {
    v8 = 0;
    v170 = *(v6 + 16);
    v163 = v7 - 1;
    v9 = v6 + 72;
    v167 = _swiftEmptyArrayStorage;
    v162 = v6 + 72;
    do
    {
      v10 = (v9 + 48 * v8);
      v11 = v8;
      while (1)
      {
        if (v11 >= *(v6 + 16))
        {
          __break(1u);
          goto LABEL_82;
        }

        v13 = *(v10 - 5);
        v12 = *(v10 - 4);
        v14 = *(v10 - 3);
        v15 = *(v10 - 2);
        v16 = *(v10 - 8);
        v8 = v11 + 1;
        v17 = *v10;

        sub_100069E2C(v14, v15);
        v18 = v17;
        if (sub_10018A070(v18, (v0 + 544)))
        {
          break;
        }

        sub_10006A178(v14, v15);

        v10 += 6;
        ++v11;
        v6 = v171;
        if (v170 == v8)
        {
          goto LABEL_19;
        }
      }

      v19 = v167;
      v179 = v167;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10019F6A4(0, v167[2] + 1, 1);
        v19 = v167;
      }

      v21 = v19[2];
      v20 = v19[3];
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        v168 = v21 + 1;
        v161 = v19[2];
        sub_10019F6A4((v20 > 1), v21 + 1, 1);
        v22 = v168;
        v21 = v161;
        v19 = v179;
      }

      v19[2] = v22;
      v167 = v19;
      v23 = &v19[6 * v21];
      v23[4] = v13;
      v23[5] = v12;
      v23[6] = v14;
      v23[7] = v15;
      *(v23 + 64) = v16;
      v23[9] = v18;
      v9 = v162;
      v6 = v171;
    }

    while (v163 != v11);
  }

  else
  {
    v167 = _swiftEmptyArrayStorage;
  }

LABEL_19:
  *(v0 + 904) = v167;
  v24 = *(v0 + 656);
  v25 = *(v0 + 592);

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 134217984;
    *(v28 + 4) = v167[2];

    _os_log_impl(&_mh_execute_header, v26, v27, "Sync progress - handling %ld absent views", v28, 0xCu);
  }

  else
  {
  }

  v29 = v167[2];
  *(v0 + 912) = v29;
  if (v29)
  {
    v30 = *(v0 + 592);
    *(v0 + 920) = OBJC_IVAR____TtC10seserviced16SEKeySyncManager__recoveryForce;
    swift_beginAccess();
    *(v0 + 281) = 0;
    *(v0 + 928) = 0;
    v31 = *(v0 + 904);
    if (*(v31 + 16))
    {
      v32 = *(v0 + 920);
      v33 = *(v0 + 640);
      v34 = *(v0 + 632);
      v35 = *(v0 + 624);
      v36 = *(v0 + 592);
      v37 = *(v31 + 32);
      *(v0 + 936) = v37;
      v38 = *(v31 + 40);
      *(v0 + 944) = v38;
      v39 = *(v31 + 48);
      *(v0 + 952) = v39;
      v40 = *(v31 + 56);
      *(v0 + 960) = v40;
      v41 = *(v31 + 64);
      v42 = *(v31 + 72);
      *(v0 + 968) = v42;
      *(v0 + 248) = v37;
      *(v0 + 256) = v38;
      *(v0 + 264) = v39;
      *(v0 + 272) = v40;
      *(v0 + 280) = v41;
      (*(v34 + 16))(v33, v36 + v32, v35);

      sub_100069E2C(v39, v40);
      v43 = v42;
      UserDefaultBacked.wrappedValue.getter();
      (*(v34 + 8))(v33, v35);
      if (*(v0 + 242))
      {
        v44 = *(v0 + 960);
        v45 = *(v0 + 952);
        v46 = *(v0 + 944);
        v47 = *(v0 + 744);

        sub_100069E2C(v45, v44);
        sub_10006A178(v45, v44);
        v48 = swift_task_alloc();
        *(v0 + 992) = v48;
        *v48 = v0;
        v48[1] = sub_1001690B4;
        v49 = *(v0 + 968);
        v50 = *(v0 + 944);
        v51 = *(v0 + 936);
        v52 = *(v0 + 688);
        v53 = *(v0 + 648);
        v54 = *(v0 + 592);
        v55 = *(v0 + 584);
        v56 = *(v0 + 576);

        sub_100177110(v51, v50, v49, v47, v53, v52, v56, v55);
      }

      else
      {
        v72 = swift_task_alloc();
        *(v0 + 976) = v72;
        *v72 = v0;
        v72[1] = sub_100168B50;
        v73 = *(v0 + 648);
        v74 = *(v0 + 592);

        sub_10018A71C(v0 + 248, v43, v73);
      }

      return;
    }

    goto LABEL_85;
  }

  *(v0 + 1032) = v165;
  *(v0 + 1024) = v6;
  v57 = *(v6 + 16);
  *(v0 + 1040) = v57;
  if (v57)
  {
    v58 = 0;
    v59 = v6 + 72;
    v60 = _swiftEmptyArrayStorage;
    v169 = v6 + 72;
LABEL_30:
    v61 = (v59 + 48 * v58);
    v62 = v58;
    while (v62 < *(v6 + 16))
    {
      v63 = *(v61 - 4);
      v64 = *(v61 - 3);
      v65 = *(v61 - 2);
      v66 = *(v61 - 8);
      v67 = *v61;
      *(v0 + 288) = *(v61 - 5);
      *(v0 + 296) = v63;
      *(v0 + 304) = v64;
      *(v0 + 312) = v65;
      v58 = v62 + 1;
      *(v0 + 320) = v66;

      sub_100069E2C(v64, v65);
      v68 = v67;
      sub_100177DE4(v68, v0 + 288, (v0 + 544), (v0 + 16));
      v175 = *(v0 + 16);
      v176 = *(v0 + 32);
      v177 = *(v0 + 48);
      v178 = *(v0 + 64);

      sub_10006A178(v64, v65);

      if (*(v0 + 40))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v60 = sub_10012F8FC(0, v60[2] + 1, 1, v60);
        }

        v6 = v171;
        v59 = v169;
        v70 = v60[2];
        v69 = v60[3];
        if (v70 >= v69 >> 1)
        {
          v60 = sub_10012F8FC((v69 > 1), v70 + 1, 1, v60);
        }

        v60[2] = v70 + 1;
        v71 = &v60[8 * v70];
        v71[4] = v177;
        v71[5] = v178;
        v71[2] = v175;
        v71[3] = v176;
        if (v57 - 1 != v62)
        {
          goto LABEL_30;
        }

        goto LABEL_45;
      }

      v61 += 6;
      ++v62;
      v6 = v171;
      if (v57 == v58)
      {
        goto LABEL_45;
      }
    }

LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v60 = _swiftEmptyArrayStorage;
LABEL_45:
  *(v0 + 1048) = v60;
  v75 = *(v0 + 904);
  v76 = *(v0 + 656);
  v77 = *(v0 + 592);

  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    *v80 = 134217984;
    *(v80 + 4) = v60[2];

    _os_log_impl(&_mh_execute_header, v78, v79, "Sync progress - handling %ld present views", v80, 0xCu);
  }

  else
  {
  }

  if (v60[2])
  {
    *(v0 + 1056) = 0;
    v81 = *(v0 + 1048);
    v82 = *(v0 + 744);
    v83 = v81[2];
    v84 = v81[3];
    v85 = v81[5];
    *(v0 + 112) = v81[4];
    *(v0 + 128) = v85;
    *(v0 + 80) = v83;
    *(v0 + 96) = v84;
    v86 = *(v0 + 136);
    *(v0 + 1064) = v86;
    v87 = *(v0 + 96);
    v88 = *(v0 + 104);
    *(v0 + 1072) = v87;
    *(v0 + 1080) = v88;
    v89 = *(v0 + 112);
    v90 = *(v0 + 128);
    *(v0 + 328) = v87;
    *(v0 + 336) = v88;
    *(v0 + 344) = v89;
    *(v0 + 360) = v90;
    v172 = *(v0 + 80);
    *(v0 + 1104) = v172;
    *(v0 + 1088) = v89;
    sub_1000938D4(v0 + 80, v0 + 144, &qword_100504340, &qword_10040C460);
    v91 = swift_task_alloc();
    *(v0 + 1120) = v91;
    *v91 = v0;
    v91[1] = sub_10016A95C;
    v92 = *(v0 + 648);
    v93 = *(v0 + 592);
    v94 = *(v0 + 584);
    v95 = *(v0 + 576);

    sub_100178310(v95, v94, v172, *(&v172 + 1), v0 + 328, v86, v92, v82);
  }

  else
  {
    v96 = *(v0 + 1048);
    v97 = *(v0 + 1024);
    v98 = *(v0 + 744);

    v173 = v97;
    v99 = (v97 + 72);
    v100 = -1;
    do
    {
      ++v100;
      v101 = *(v0 + 1040);
      if (v100 == v101)
      {
        break;
      }

      if (v100 >= *(*(v0 + 1024) + 16))
      {
        goto LABEL_83;
      }

      v102 = v99 + 6;
      v103 = *v99;
      v105 = *(v99 - 3);
      v104 = *(v99 - 2);
      v106 = *(v99 - 4);

      sub_100069E2C(v105, v104);
      v107 = v103;
      v108 = sub_10018BCF4(v107, (v0 + 544));

      sub_10006A178(v105, v104);

      v99 = v102;
    }

    while ((v108 & 1) != 0);
    v109 = *(v0 + 656);
    v110 = *(v0 + 592);
    v111 = objc_opt_self();
    v112 = String._bridgeToObjectiveC()();
    v113 = [v111 isAlarmSet:v112];

    v114 = Logger.logObject.getter();
    v115 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v114, v115))
    {
      v166 = v115;
      v116 = *(v0 + 616);
      v117 = *(v0 + 608);
      v118 = *(v0 + 600);
      v164 = *(v0 + 592);
      v119 = swift_slowAlloc();
      *v119 = 67109632;
      *(v119 + 4) = v100 == v101;
      *(v119 + 8) = 1024;
      *(v119 + 10) = v113;
      *(v119 + 14) = 2048;
      v120 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager__errorCount;
      swift_beginAccess();
      (*(v117 + 16))(v116, v164 + v120, v118);
      UserDefaultBacked.wrappedValue.getter();
      (*(v117 + 8))(v116, v118);
      *(v119 + 16) = *(v0 + 568);

      _os_log_impl(&_mh_execute_header, v114, v166, "Sync progress -- completed w/ haveAllViewsOnSE %{BOOL}d retryInFlight %{BOOL}d errorCount %ld", v119, 0x18u);
    }

    else
    {
      v121 = *(v0 + 592);
    }

    *(*(v0 + 592) + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_allViewsSynchronized) = v100 == v101;
    if (v100 == v101)
    {
      v122 = *(v0 + 624);
      v123 = *(v0 + 592);
      *(v0 + 243) = 0;
      swift_beginAccess();
      UserDefaultBacked.wrappedValue.setter();
      swift_endAccess();
      if ((v113 & 1) == 0)
      {
        v124 = *(v0 + 616);
        v125 = *(v0 + 608);
        v126 = *(v0 + 600);
        v127 = *(v0 + 592);
        v128 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager__errorCount;
        swift_beginAccess();
        (*(v125 + 16))(v124, v127 + v128, v126);
        UserDefaultBacked.wrappedValue.getter();
        (*(v125 + 8))(v124, v126);
        if (*(v0 + 560) >= 1)
        {
          v129 = *(v0 + 600);
          swift_beginAccess();
          v130 = UserDefaultBacked.wrappedValue.modify();
          if (__OFSUB__(*v131, 1))
          {
LABEL_86:
            __break(1u);
            return;
          }

          --*v131;
          v130(v0 + 368, 0);
          swift_endAccess();
        }
      }
    }

    v132 = 0x4354502D4553;
    v133 = (v173 + 72);
    v134 = -1;
    while (1)
    {
      if (++v134 == *(v0 + 1040))
      {
        v148 = *(v0 + 1032);
        v149 = *(v0 + 1024);
        v150 = *(v0 + 648);

        sub_10018CE30(v150, type metadata accessor for SESPeerIdentityData);
        goto LABEL_78;
      }

      if (v134 >= *(*(v0 + 1024) + 16))
      {
        goto LABEL_84;
      }

      v136 = *(v133 - 4);
      v135 = *(v133 - 3);
      v137 = *(v133 - 2);
      v138 = *v133;

      v174 = v135;
      sub_100069E2C(v135, v137);
      v139 = v138;
      v140 = [v139 viewName];
      v141 = v132;
      v142 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v144 = v143;

      if (v142 == v141 && v144 == 0xE600000000000000)
      {
        break;
      }

      v132 = v141;
      v133 += 6;
      v146 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_10006A178(v174, v137);

      if (v146)
      {
        v147 = *(v0 + 1024);
        goto LABEL_75;
      }
    }

    v151 = *(v0 + 1024);

    sub_10006A178(v174, v137);

LABEL_75:

    v152 = *(v0 + 592);
    v153 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager_notifiedPassdOfFidoViewSynced;
    v154 = *(v0 + 1032);
    v155 = *(v0 + 688);
    v156 = *(v0 + 648);
    if (*(v152 + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_notifiedPassdOfFidoViewSynced) == 1)
    {
      sub_10018CE30(*(v0 + 648), type metadata accessor for SESPeerIdentityData);
    }

    else
    {
      notify_post("com.apple.seserviced.keysync.fido.tlk.synced");

      sub_10018CE30(v156, type metadata accessor for SESPeerIdentityData);
      *(v152 + v153) = 1;
    }

LABEL_78:

    v157 = *(v0 + 648);
    v158 = *(v0 + 640);
    v159 = *(v0 + 616);

    v160 = *(v0 + 8);

    v160();
  }
}

uint64_t sub_100167C34(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v6 = *(*v3 + 864);
  v7 = *v3;
  *(*v3 + 872) = a1;

  if (v2)
  {
    v8 = v5[93];
    v9 = v5[74];

    v10 = sub_10016B804;
    v11 = v9;
  }

  else
  {
    v11 = v5[74];
    v5[110] = a2;
    v10 = sub_100167D74;
  }

  return _swift_task_switch(v10, v11, 0);
}

void sub_100167D74()
{
  v1 = *(v0 + 872);
  v2 = *(v0 + 840);

  *(v0 + 544) = v1;
  v3 = *(v0 + 880);
  v162 = *(v0 + 872);
  *(v0 + 896) = v162;
  *(v0 + 888) = v3;
  v4 = *(v3 + 16);
  v168 = v3;
  if (v4)
  {
    v5 = 0;
    v167 = *(v3 + 16);
    v160 = v4 - 1;
    v6 = v3 + 72;
    v164 = _swiftEmptyArrayStorage;
    v159 = v3 + 72;
    do
    {
      v7 = (v6 + 48 * v5);
      v8 = v5;
      while (1)
      {
        if (v8 >= *(v3 + 16))
        {
          __break(1u);
          goto LABEL_78;
        }

        v10 = *(v7 - 5);
        v9 = *(v7 - 4);
        v11 = *(v7 - 3);
        v12 = *(v7 - 2);
        v13 = *(v7 - 8);
        v5 = v8 + 1;
        v14 = *v7;

        sub_100069E2C(v11, v12);
        v15 = v14;
        if (sub_10018A070(v15, (v0 + 544)))
        {
          break;
        }

        sub_10006A178(v11, v12);

        v7 += 6;
        ++v8;
        v3 = v168;
        if (v167 == v5)
        {
          goto LABEL_15;
        }
      }

      v16 = v164;
      v176 = v164;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10019F6A4(0, v164[2] + 1, 1);
        v16 = v164;
      }

      v18 = v16[2];
      v17 = v16[3];
      v19 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        v165 = v18 + 1;
        v158 = v16[2];
        sub_10019F6A4((v17 > 1), v18 + 1, 1);
        v19 = v165;
        v18 = v158;
        v16 = v176;
      }

      v16[2] = v19;
      v164 = v16;
      v20 = &v16[6 * v18];
      v20[4] = v10;
      v20[5] = v9;
      v20[6] = v11;
      v20[7] = v12;
      *(v20 + 64) = v13;
      v20[9] = v15;
      v6 = v159;
      v3 = v168;
    }

    while (v160 != v8);
  }

  else
  {
    v164 = _swiftEmptyArrayStorage;
  }

LABEL_15:
  *(v0 + 904) = v164;
  v21 = *(v0 + 656);
  v22 = *(v0 + 592);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 134217984;
    *(v25 + 4) = v164[2];

    _os_log_impl(&_mh_execute_header, v23, v24, "Sync progress - handling %ld absent views", v25, 0xCu);
  }

  else
  {
  }

  v26 = v164[2];
  *(v0 + 912) = v26;
  if (v26)
  {
    v27 = *(v0 + 592);
    *(v0 + 920) = OBJC_IVAR____TtC10seserviced16SEKeySyncManager__recoveryForce;
    swift_beginAccess();
    *(v0 + 281) = 0;
    *(v0 + 928) = 0;
    v28 = *(v0 + 904);
    if (*(v28 + 16))
    {
      v29 = *(v0 + 920);
      v30 = *(v0 + 640);
      v31 = *(v0 + 632);
      v32 = *(v0 + 624);
      v33 = *(v0 + 592);
      v34 = *(v28 + 32);
      *(v0 + 936) = v34;
      v35 = *(v28 + 40);
      *(v0 + 944) = v35;
      v36 = *(v28 + 48);
      *(v0 + 952) = v36;
      v37 = *(v28 + 56);
      *(v0 + 960) = v37;
      v38 = *(v28 + 64);
      v39 = *(v28 + 72);
      *(v0 + 968) = v39;
      *(v0 + 248) = v34;
      *(v0 + 256) = v35;
      *(v0 + 264) = v36;
      *(v0 + 272) = v37;
      *(v0 + 280) = v38;
      (*(v31 + 16))(v30, v33 + v29, v32);

      sub_100069E2C(v36, v37);
      v40 = v39;
      UserDefaultBacked.wrappedValue.getter();
      (*(v31 + 8))(v30, v32);
      if (*(v0 + 242))
      {
        v41 = *(v0 + 960);
        v42 = *(v0 + 952);
        v43 = *(v0 + 944);
        v44 = *(v0 + 744);

        sub_100069E2C(v42, v41);
        sub_10006A178(v42, v41);
        v45 = swift_task_alloc();
        *(v0 + 992) = v45;
        *v45 = v0;
        v45[1] = sub_1001690B4;
        v46 = *(v0 + 968);
        v47 = *(v0 + 944);
        v48 = *(v0 + 936);
        v49 = *(v0 + 688);
        v50 = *(v0 + 648);
        v51 = *(v0 + 592);
        v52 = *(v0 + 584);
        v53 = *(v0 + 576);

        sub_100177110(v48, v47, v46, v44, v50, v49, v53, v52);
      }

      else
      {
        v69 = swift_task_alloc();
        *(v0 + 976) = v69;
        *v69 = v0;
        v69[1] = sub_100168B50;
        v70 = *(v0 + 648);
        v71 = *(v0 + 592);

        sub_10018A71C(v0 + 248, v40, v70);
      }

      return;
    }

    goto LABEL_81;
  }

  *(v0 + 1032) = v162;
  *(v0 + 1024) = v3;
  v54 = *(v3 + 16);
  *(v0 + 1040) = v54;
  if (v54)
  {
    v55 = 0;
    v56 = v3 + 72;
    v57 = _swiftEmptyArrayStorage;
    v166 = v3 + 72;
LABEL_26:
    v58 = (v56 + 48 * v55);
    v59 = v55;
    while (v59 < *(v3 + 16))
    {
      v60 = *(v58 - 4);
      v61 = *(v58 - 3);
      v62 = *(v58 - 2);
      v63 = *(v58 - 8);
      v64 = *v58;
      *(v0 + 288) = *(v58 - 5);
      *(v0 + 296) = v60;
      *(v0 + 304) = v61;
      *(v0 + 312) = v62;
      v55 = v59 + 1;
      *(v0 + 320) = v63;

      sub_100069E2C(v61, v62);
      v65 = v64;
      sub_100177DE4(v65, v0 + 288, (v0 + 544), (v0 + 16));
      v172 = *(v0 + 16);
      v173 = *(v0 + 32);
      v174 = *(v0 + 48);
      v175 = *(v0 + 64);

      sub_10006A178(v61, v62);

      if (*(v0 + 40))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v57 = sub_10012F8FC(0, v57[2] + 1, 1, v57);
        }

        v3 = v168;
        v56 = v166;
        v67 = v57[2];
        v66 = v57[3];
        if (v67 >= v66 >> 1)
        {
          v57 = sub_10012F8FC((v66 > 1), v67 + 1, 1, v57);
        }

        v57[2] = v67 + 1;
        v68 = &v57[8 * v67];
        v68[4] = v174;
        v68[5] = v175;
        v68[2] = v172;
        v68[3] = v173;
        if (v54 - 1 != v59)
        {
          goto LABEL_26;
        }

        goto LABEL_41;
      }

      v58 += 6;
      ++v59;
      v3 = v168;
      if (v54 == v55)
      {
        goto LABEL_41;
      }
    }

LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v57 = _swiftEmptyArrayStorage;
LABEL_41:
  *(v0 + 1048) = v57;
  v72 = *(v0 + 904);
  v73 = *(v0 + 656);
  v74 = *(v0 + 592);

  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    *v77 = 134217984;
    *(v77 + 4) = v57[2];

    _os_log_impl(&_mh_execute_header, v75, v76, "Sync progress - handling %ld present views", v77, 0xCu);
  }

  else
  {
  }

  if (v57[2])
  {
    *(v0 + 1056) = 0;
    v78 = *(v0 + 1048);
    v79 = *(v0 + 744);
    v80 = v78[2];
    v81 = v78[3];
    v82 = v78[5];
    *(v0 + 112) = v78[4];
    *(v0 + 128) = v82;
    *(v0 + 80) = v80;
    *(v0 + 96) = v81;
    v83 = *(v0 + 136);
    *(v0 + 1064) = v83;
    v84 = *(v0 + 96);
    v85 = *(v0 + 104);
    *(v0 + 1072) = v84;
    *(v0 + 1080) = v85;
    v86 = *(v0 + 112);
    v87 = *(v0 + 128);
    *(v0 + 328) = v84;
    *(v0 + 336) = v85;
    *(v0 + 344) = v86;
    *(v0 + 360) = v87;
    v169 = *(v0 + 80);
    *(v0 + 1104) = v169;
    *(v0 + 1088) = v86;
    sub_1000938D4(v0 + 80, v0 + 144, &qword_100504340, &qword_10040C460);
    v88 = swift_task_alloc();
    *(v0 + 1120) = v88;
    *v88 = v0;
    v88[1] = sub_10016A95C;
    v89 = *(v0 + 648);
    v90 = *(v0 + 592);
    v91 = *(v0 + 584);
    v92 = *(v0 + 576);

    sub_100178310(v92, v91, v169, *(&v169 + 1), v0 + 328, v83, v89, v79);
  }

  else
  {
    v93 = *(v0 + 1048);
    v94 = *(v0 + 1024);
    v95 = *(v0 + 744);

    v170 = v94;
    v96 = (v94 + 72);
    v97 = -1;
    do
    {
      ++v97;
      v98 = *(v0 + 1040);
      if (v97 == v98)
      {
        break;
      }

      if (v97 >= *(*(v0 + 1024) + 16))
      {
        goto LABEL_79;
      }

      v99 = v96 + 6;
      v100 = *v96;
      v102 = *(v96 - 3);
      v101 = *(v96 - 2);
      v103 = *(v96 - 4);

      sub_100069E2C(v102, v101);
      v104 = v100;
      v105 = sub_10018BCF4(v104, (v0 + 544));

      sub_10006A178(v102, v101);

      v96 = v99;
    }

    while ((v105 & 1) != 0);
    v106 = *(v0 + 656);
    v107 = *(v0 + 592);
    v108 = objc_opt_self();
    v109 = String._bridgeToObjectiveC()();
    v110 = [v108 isAlarmSet:v109];

    v111 = Logger.logObject.getter();
    v112 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v111, v112))
    {
      v163 = v112;
      v113 = *(v0 + 616);
      v114 = *(v0 + 608);
      v115 = *(v0 + 600);
      v161 = *(v0 + 592);
      v116 = swift_slowAlloc();
      *v116 = 67109632;
      *(v116 + 4) = v97 == v98;
      *(v116 + 8) = 1024;
      *(v116 + 10) = v110;
      *(v116 + 14) = 2048;
      v117 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager__errorCount;
      swift_beginAccess();
      (*(v114 + 16))(v113, v161 + v117, v115);
      UserDefaultBacked.wrappedValue.getter();
      (*(v114 + 8))(v113, v115);
      *(v116 + 16) = *(v0 + 568);

      _os_log_impl(&_mh_execute_header, v111, v163, "Sync progress -- completed w/ haveAllViewsOnSE %{BOOL}d retryInFlight %{BOOL}d errorCount %ld", v116, 0x18u);
    }

    else
    {
      v118 = *(v0 + 592);
    }

    *(*(v0 + 592) + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_allViewsSynchronized) = v97 == v98;
    if (v97 == v98)
    {
      v119 = *(v0 + 624);
      v120 = *(v0 + 592);
      *(v0 + 243) = 0;
      swift_beginAccess();
      UserDefaultBacked.wrappedValue.setter();
      swift_endAccess();
      if ((v110 & 1) == 0)
      {
        v121 = *(v0 + 616);
        v122 = *(v0 + 608);
        v123 = *(v0 + 600);
        v124 = *(v0 + 592);
        v125 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager__errorCount;
        swift_beginAccess();
        (*(v122 + 16))(v121, v124 + v125, v123);
        UserDefaultBacked.wrappedValue.getter();
        (*(v122 + 8))(v121, v123);
        if (*(v0 + 560) >= 1)
        {
          v126 = *(v0 + 600);
          swift_beginAccess();
          v127 = UserDefaultBacked.wrappedValue.modify();
          if (__OFSUB__(*v128, 1))
          {
LABEL_82:
            __break(1u);
            return;
          }

          --*v128;
          v127(v0 + 368, 0);
          swift_endAccess();
        }
      }
    }

    v129 = 0x4354502D4553;
    v130 = (v170 + 72);
    v131 = -1;
    while (1)
    {
      if (++v131 == *(v0 + 1040))
      {
        v145 = *(v0 + 1032);
        v146 = *(v0 + 1024);
        v147 = *(v0 + 648);

        sub_10018CE30(v147, type metadata accessor for SESPeerIdentityData);
        goto LABEL_74;
      }

      if (v131 >= *(*(v0 + 1024) + 16))
      {
        goto LABEL_80;
      }

      v133 = *(v130 - 4);
      v132 = *(v130 - 3);
      v134 = *(v130 - 2);
      v135 = *v130;

      v171 = v132;
      sub_100069E2C(v132, v134);
      v136 = v135;
      v137 = [v136 viewName];
      v138 = v129;
      v139 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v141 = v140;

      if (v139 == v138 && v141 == 0xE600000000000000)
      {
        break;
      }

      v129 = v138;
      v130 += 6;
      v143 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_10006A178(v171, v134);

      if (v143)
      {
        v144 = *(v0 + 1024);
        goto LABEL_71;
      }
    }

    v148 = *(v0 + 1024);

    sub_10006A178(v171, v134);

LABEL_71:

    v149 = *(v0 + 592);
    v150 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager_notifiedPassdOfFidoViewSynced;
    v151 = *(v0 + 1032);
    v152 = *(v0 + 688);
    v153 = *(v0 + 648);
    if (*(v149 + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_notifiedPassdOfFidoViewSynced) == 1)
    {
      sub_10018CE30(*(v0 + 648), type metadata accessor for SESPeerIdentityData);
    }

    else
    {
      notify_post("com.apple.seserviced.keysync.fido.tlk.synced");

      sub_10018CE30(v153, type metadata accessor for SESPeerIdentityData);
      *(v149 + v150) = 1;
    }

LABEL_74:

    v154 = *(v0 + 648);
    v155 = *(v0 + 640);
    v156 = *(v0 + 616);

    v157 = *(v0 + 8);

    v157();
  }
}

uint64_t sub_100168B50(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 976);
  v13 = *v2;
  *(*v2 + 984) = v1;

  if (v1)
  {
    v6 = *(v4 + 904);
    v7 = *(v4 + 888);
    v8 = *(v4 + 744);
    v9 = *(v4 + 592);

    v10 = sub_100168FCC;
    v11 = v9;
  }

  else
  {
    v11 = *(v4 + 592);
    *(v4 + 282) = a1 & 1;
    v10 = sub_100168CA4;
  }

  return _swift_task_switch(v10, v11, 0);
}

void sub_100168CA4()
{
  if ((*(v0 + 282) & 1) == 0)
  {
    goto LABEL_8;
  }

  v1 = *(v0 + 968);
  v2 = *(v0 + 960);
  v3 = *(v0 + 952);
  v4 = *(v0 + 944);
  v5 = *(v0 + 928);
  v6 = *(v0 + 912);

  sub_10006A178(v3, v2);

  if (v5 + 1 == v6)
  {
    v7 = *(v0 + 888);

    v8 = swift_task_alloc();
    *(v0 + 1000) = v8;
    *v8 = v0;
    v8[1] = sub_100169E98;
    v9 = *(v0 + 592);
    v10 = *(v0 + 584);
    v11 = *(v0 + 576);

    sub_10016C5E0(v11, v10);
    return;
  }

  v12 = *(v0 + 928) + 1;
  *(v0 + 281) = 1;
  *(v0 + 928) = v12;
  v13 = *(v0 + 904);
  if (v12 >= *(v13 + 16))
  {
    __break(1u);
    return;
  }

  v14 = *(v0 + 920);
  v15 = *(v0 + 640);
  v16 = *(v0 + 632);
  v17 = *(v0 + 624);
  v18 = *(v0 + 592);
  v19 = v13 + 48 * v12;
  v20 = *(v19 + 32);
  *(v0 + 936) = v20;
  v21 = *(v19 + 40);
  *(v0 + 944) = v21;
  v22 = *(v19 + 48);
  *(v0 + 952) = v22;
  v23 = *(v19 + 56);
  *(v0 + 960) = v23;
  v24 = *(v19 + 64);
  v25 = *(v19 + 72);
  *(v0 + 968) = v25;
  *(v0 + 248) = v20;
  *(v0 + 256) = v21;
  *(v0 + 264) = v22;
  *(v0 + 272) = v23;
  *(v0 + 280) = v24;
  (*(v16 + 16))(v15, v18 + v14, v17);

  sub_100069E2C(v22, v23);
  v26 = v25;
  UserDefaultBacked.wrappedValue.getter();
  (*(v16 + 8))(v15, v17);
  if ((*(v0 + 242) & 1) == 0)
  {
    v40 = swift_task_alloc();
    *(v0 + 976) = v40;
    *v40 = v0;
    v40[1] = sub_100168B50;
    v41 = *(v0 + 648);
    v42 = *(v0 + 592);

    sub_10018A71C(v0 + 248, v26, v41);
  }

  else
  {
LABEL_8:
    v27 = *(v0 + 960);
    v28 = *(v0 + 952);
    v29 = *(v0 + 944);
    v30 = *(v0 + 744);

    sub_100069E2C(v28, v27);
    sub_10006A178(v28, v27);
    v31 = swift_task_alloc();
    *(v0 + 992) = v31;
    *v31 = v0;
    v31[1] = sub_1001690B4;
    v32 = *(v0 + 968);
    v33 = *(v0 + 944);
    v34 = *(v0 + 936);
    v35 = *(v0 + 688);
    v36 = *(v0 + 648);
    v37 = *(v0 + 592);
    v38 = *(v0 + 584);
    v39 = *(v0 + 576);

    sub_100177110(v34, v33, v32, v30, v36, v35, v39, v38);
  }
}

uint64_t sub_100168FCC()
{
  v1 = *(v0 + 968);
  v2 = *(v0 + 960);
  v3 = *(v0 + 952);
  v4 = *(v0 + 944);
  v5 = *(v0 + 896);
  v6 = *(v0 + 648);

  sub_10006A178(v3, v2);

  sub_10018CE30(v6, type metadata accessor for SESPeerIdentityData);

  v7 = *(v0 + 984);
  v8 = *(v0 + 648);
  v9 = *(v0 + 640);
  v10 = *(v0 + 616);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1001690B4(char a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 992);
  v7 = *v2;

  v8 = *(v4 + 944);
  if (v1)
  {
    v9 = *(v5 + 904);
    v10 = *(v5 + 888);
    v11 = *(v5 + 744);
    v12 = *(v5 + 592);
    *(v5 + 283) = a1;

    v13 = sub_10016B8EC;
    v14 = v12;
  }

  else
  {
    v15 = *(v5 + 592);

    v13 = sub_100169234;
    v14 = v15;
  }

  return _swift_task_switch(v13, v14, 0);
}

void sub_100169234()
{
  v1 = *(v0 + 968);
  v2 = *(v0 + 960);
  v3 = *(v0 + 952);
  v4 = *(v0 + 944);
  v5 = *(v0 + 928);
  v6 = *(v0 + 912);

  sub_10006A178(v3, v2);

  if (v5 + 1 != v6)
  {
    v12 = *(v0 + 928) + 1;
    *(v0 + 928) = v12;
    v13 = *(v0 + 904);
    if (v12 < *(v13 + 16))
    {
      v14 = *(v0 + 920);
      v15 = *(v0 + 640);
      v16 = *(v0 + 632);
      v17 = *(v0 + 624);
      v18 = *(v0 + 592);
      v19 = v13 + 48 * v12;
      v20 = *(v19 + 32);
      *(v0 + 936) = v20;
      v21 = *(v19 + 40);
      *(v0 + 944) = v21;
      v22 = *(v19 + 48);
      *(v0 + 952) = v22;
      v23 = *(v19 + 56);
      *(v0 + 960) = v23;
      v24 = *(v19 + 64);
      v25 = *(v19 + 72);
      *(v0 + 968) = v25;
      *(v0 + 248) = v20;
      *(v0 + 256) = v21;
      *(v0 + 264) = v22;
      *(v0 + 272) = v23;
      *(v0 + 280) = v24;
      (*(v16 + 16))(v15, v18 + v14, v17);

      sub_100069E2C(v22, v23);
      v26 = v25;
      UserDefaultBacked.wrappedValue.getter();
      (*(v16 + 8))(v15, v17);
      if (*(v0 + 242))
      {
        v27 = *(v0 + 960);
        v28 = *(v0 + 952);
        v29 = *(v0 + 944);
        v30 = *(v0 + 744);

        sub_100069E2C(v28, v27);
        sub_10006A178(v28, v27);
        v31 = swift_task_alloc();
        *(v0 + 992) = v31;
        *v31 = v0;
        v31[1] = sub_1001690B4;
        v32 = *(v0 + 968);
        v33 = *(v0 + 944);
        v34 = *(v0 + 936);
        v35 = *(v0 + 688);
        v36 = *(v0 + 648);
        v37 = *(v0 + 592);
        v38 = *(v0 + 584);
        v39 = *(v0 + 576);

        sub_100177110(v34, v33, v32, v30, v36, v35, v39, v38);
      }

      else
      {
        v56 = swift_task_alloc();
        *(v0 + 976) = v56;
        *v56 = v0;
        v56[1] = sub_100168B50;
        v57 = *(v0 + 648);
        v58 = *(v0 + 592);

        sub_10018A71C(v0 + 248, v26, v57);
      }

      return;
    }

LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  if (*(v0 + 281))
  {
    v7 = *(v0 + 888);

    v8 = swift_task_alloc();
    *(v0 + 1000) = v8;
    *v8 = v0;
    v8[1] = sub_100169E98;
    v9 = *(v0 + 592);
    v10 = *(v0 + 584);
    v11 = *(v0 + 576);

    sub_10016C5E0(v11, v10);
    return;
  }

  v40 = *(v0 + 888);
  *(v0 + 1024) = v40;
  v41 = v40;
  v42 = *(v40 + 16);
  *(v0 + 1040) = v42;
  if (v42)
  {
    v43 = 0;
    v44 = v40 + 72;
    v148 = _swiftEmptyArrayStorage;
    v147 = v40 + 72;
    while (2)
    {
      v45 = (v44 + 48 * v43);
      v46 = v43;
      while (1)
      {
        if (v46 >= *(v41 + 16))
        {
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
          goto LABEL_67;
        }

        v47 = *(v45 - 4);
        v48 = *(v45 - 3);
        v49 = *(v45 - 2);
        v50 = *(v45 - 8);
        v51 = *v45;
        *(v0 + 288) = *(v45 - 5);
        *(v0 + 296) = v47;
        *(v0 + 304) = v48;
        *(v0 + 312) = v49;
        v43 = v46 + 1;
        *(v0 + 320) = v50;

        sub_100069E2C(v48, v49);
        v52 = v51;
        sub_100177DE4(v52, v0 + 288, (v0 + 544), (v0 + 16));
        v152 = *(v0 + 16);
        v153 = *(v0 + 32);
        v154 = *(v0 + 48);
        v155 = *(v0 + 64);

        sub_10006A178(v48, v49);

        if (*(v0 + 40))
        {
          break;
        }

        v45 += 6;
        ++v46;
        if (v42 == v43)
        {
          goto LABEL_28;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v148 = sub_10012F8FC(0, v148[2] + 1, 1, v148);
      }

      v54 = v148[2];
      v53 = v148[3];
      if (v54 >= v53 >> 1)
      {
        v148 = sub_10012F8FC((v53 > 1), v54 + 1, 1, v148);
      }

      v148[2] = v54 + 1;
      v55 = &v148[8 * v54];
      v55[4] = v154;
      v55[5] = v155;
      v55[2] = v152;
      v55[3] = v153;
      v44 = v147;
      if (v42 - 1 != v46)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v148 = _swiftEmptyArrayStorage;
  }

LABEL_28:
  *(v0 + 1048) = v148;
  v59 = *(v0 + 904);
  v60 = *(v0 + 656);
  v61 = *(v0 + 592);

  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    *v64 = 134217984;
    *(v64 + 4) = v148[2];

    _os_log_impl(&_mh_execute_header, v62, v63, "Sync progress - handling %ld present views", v64, 0xCu);
  }

  else
  {
  }

  if (v148[2])
  {
    *(v0 + 1056) = 0;
    v65 = *(v0 + 1048);
    v66 = *(v0 + 744);
    v67 = v65[2];
    v68 = v65[3];
    v69 = v65[5];
    *(v0 + 112) = v65[4];
    *(v0 + 128) = v69;
    *(v0 + 80) = v67;
    *(v0 + 96) = v68;
    v70 = *(v0 + 136);
    *(v0 + 1064) = v70;
    v71 = *(v0 + 96);
    v72 = *(v0 + 104);
    *(v0 + 1072) = v71;
    *(v0 + 1080) = v72;
    v73 = *(v0 + 112);
    v74 = *(v0 + 128);
    *(v0 + 328) = v71;
    *(v0 + 336) = v72;
    *(v0 + 344) = v73;
    *(v0 + 360) = v74;
    v149 = *(v0 + 80);
    *(v0 + 1104) = v149;
    *(v0 + 1088) = v73;
    sub_1000938D4(v0 + 80, v0 + 144, &qword_100504340, &qword_10040C460);
    v75 = swift_task_alloc();
    *(v0 + 1120) = v75;
    *v75 = v0;
    v75[1] = sub_10016A95C;
    v76 = *(v0 + 648);
    v77 = *(v0 + 592);
    v78 = *(v0 + 584);
    v79 = *(v0 + 576);

    sub_100178310(v79, v78, v149, *(&v149 + 1), v0 + 328, v70, v76, v66);
    return;
  }

  v80 = *(v0 + 1048);
  v81 = *(v0 + 1024);
  v82 = *(v0 + 744);

  v150 = v81;
  v83 = (v81 + 72);
  v84 = -1;
  do
  {
    ++v84;
    v85 = *(v0 + 1040);
    if (v84 == v85)
    {
      break;
    }

    if (v84 >= *(*(v0 + 1024) + 16))
    {
      goto LABEL_65;
    }

    v86 = v83 + 6;
    v87 = *v83;
    v89 = *(v83 - 3);
    v88 = *(v83 - 2);
    v90 = *(v83 - 4);

    sub_100069E2C(v89, v88);
    v91 = v87;
    v92 = sub_10018BCF4(v91, (v0 + 544));

    sub_10006A178(v89, v88);

    v83 = v86;
  }

  while ((v92 & 1) != 0);
  v93 = *(v0 + 656);
  v94 = *(v0 + 592);
  v95 = objc_opt_self();
  v96 = String._bridgeToObjectiveC()();
  v97 = [v95 isAlarmSet:v96];

  v98 = Logger.logObject.getter();
  v99 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v98, v99))
  {
    v146 = v99;
    v100 = *(v0 + 616);
    v101 = *(v0 + 608);
    v102 = *(v0 + 600);
    v145 = *(v0 + 592);
    v103 = swift_slowAlloc();
    *v103 = 67109632;
    *(v103 + 4) = v84 == v85;
    *(v103 + 8) = 1024;
    *(v103 + 10) = v97;
    *(v103 + 14) = 2048;
    v104 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager__errorCount;
    swift_beginAccess();
    (*(v101 + 16))(v100, v145 + v104, v102);
    UserDefaultBacked.wrappedValue.getter();
    (*(v101 + 8))(v100, v102);
    *(v103 + 16) = *(v0 + 568);

    _os_log_impl(&_mh_execute_header, v98, v146, "Sync progress -- completed w/ haveAllViewsOnSE %{BOOL}d retryInFlight %{BOOL}d errorCount %ld", v103, 0x18u);
  }

  else
  {
    v105 = *(v0 + 592);
  }

  *(*(v0 + 592) + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_allViewsSynchronized) = v84 == v85;
  if (v84 != v85)
  {
    goto LABEL_47;
  }

  v106 = *(v0 + 624);
  v107 = *(v0 + 592);
  *(v0 + 243) = 0;
  swift_beginAccess();
  UserDefaultBacked.wrappedValue.setter();
  swift_endAccess();
  if (v97)
  {
    goto LABEL_47;
  }

  v108 = *(v0 + 616);
  v109 = *(v0 + 608);
  v110 = *(v0 + 600);
  v111 = *(v0 + 592);
  v112 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager__errorCount;
  swift_beginAccess();
  (*(v109 + 16))(v108, v111 + v112, v110);
  UserDefaultBacked.wrappedValue.getter();
  (*(v109 + 8))(v108, v110);
  if (*(v0 + 560) < 1)
  {
    goto LABEL_47;
  }

  v113 = *(v0 + 600);
  swift_beginAccess();
  v114 = UserDefaultBacked.wrappedValue.modify();
  if (__OFSUB__(*v115, 1))
  {
LABEL_68:
    __break(1u);
    return;
  }

  --*v115;
  v114(v0 + 368, 0);
  swift_endAccess();
LABEL_47:
  v116 = 0x4354502D4553;
  v117 = (v150 + 72);
  v118 = -1;
  while (1)
  {
    if (++v118 == *(v0 + 1040))
    {
      v132 = *(v0 + 1032);
      v133 = *(v0 + 1024);
      v134 = *(v0 + 648);

      sub_10018CE30(v134, type metadata accessor for SESPeerIdentityData);
      goto LABEL_61;
    }

    if (v118 >= *(*(v0 + 1024) + 16))
    {
      goto LABEL_66;
    }

    v120 = *(v117 - 4);
    v119 = *(v117 - 3);
    v121 = *(v117 - 2);
    v122 = *v117;

    v151 = v119;
    sub_100069E2C(v119, v121);
    v123 = v122;
    v124 = [v123 viewName];
    v125 = v116;
    v126 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v128 = v127;

    if (v126 == v125 && v128 == 0xE600000000000000)
    {
      break;
    }

    v116 = v125;
    v117 += 6;
    v130 = _stringCompareWithSmolCheck(_:_:expecting:)();

    sub_10006A178(v151, v121);

    if (v130)
    {
      v131 = *(v0 + 1024);
      goto LABEL_58;
    }
  }

  v135 = *(v0 + 1024);

  sub_10006A178(v151, v121);

LABEL_58:

  v136 = *(v0 + 592);
  v137 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager_notifiedPassdOfFidoViewSynced;
  v138 = *(v0 + 1032);
  v139 = *(v0 + 688);
  v140 = *(v0 + 648);
  if (*(v136 + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_notifiedPassdOfFidoViewSynced) == 1)
  {
    sub_10018CE30(*(v0 + 648), type metadata accessor for SESPeerIdentityData);
  }

  else
  {
    notify_post("com.apple.seserviced.keysync.fido.tlk.synced");

    sub_10018CE30(v140, type metadata accessor for SESPeerIdentityData);
    *(v136 + v137) = 1;
  }

LABEL_61:

  v141 = *(v0 + 648);
  v142 = *(v0 + 640);
  v143 = *(v0 + 616);

  v144 = *(v0 + 8);

  v144();
}

uint64_t sub_100169E98(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v6 = *(*v3 + 1000);
  v7 = *v3;
  *(*v3 + 1008) = a1;

  if (v2)
  {
    v8 = v5[113];
    v9 = v5[93];
    v10 = v5[74];

    v11 = sub_10016BA0C;
    v12 = v10;
  }

  else
  {
    v12 = v5[74];
    v5[127] = a2;
    v11 = sub_100169FE4;
  }

  return _swift_task_switch(v11, v12, 0);
}

void sub_100169FE4()
{
  v1 = *(v0 + 1008);
  v2 = *(v0 + 896);

  *(v0 + 544) = v1;
  v3 = *(v0 + 1016);
  *(v0 + 1032) = *(v0 + 1008);
  *(v0 + 1024) = v3;
  v4 = *(v3 + 16);
  *(v0 + 1040) = v4;
  if (v4)
  {
    v5 = 0;
    v6 = v3 + 72;
    v106 = _swiftEmptyArrayStorage;
    while (2)
    {
      v7 = (v6 + 48 * v5);
      v8 = v5;
      while (1)
      {
        if (v8 >= *(v3 + 16))
        {
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

        v9 = *(v7 - 4);
        v10 = *(v7 - 3);
        v11 = *(v7 - 2);
        v12 = *(v7 - 8);
        v13 = *v7;
        *(v0 + 288) = *(v7 - 5);
        *(v0 + 296) = v9;
        *(v0 + 304) = v10;
        *(v0 + 312) = v11;
        v5 = v8 + 1;
        *(v0 + 320) = v12;

        sub_100069E2C(v10, v11);
        v14 = v13;
        sub_100177DE4(v14, v0 + 288, (v0 + 544), (v0 + 16));
        v110 = *(v0 + 16);
        v111 = *(v0 + 32);
        v112 = *(v0 + 48);
        v113 = *(v0 + 64);

        sub_10006A178(v10, v11);

        if (*(v0 + 40))
        {
          break;
        }

        v7 += 6;
        ++v8;
        if (v4 == v5)
        {
          goto LABEL_15;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v106 = sub_10012F8FC(0, v106[2] + 1, 1, v106);
      }

      v16 = v106[2];
      v15 = v106[3];
      if (v16 >= v15 >> 1)
      {
        v106 = sub_10012F8FC((v15 > 1), v16 + 1, 1, v106);
      }

      v106[2] = v16 + 1;
      v17 = &v106[8 * v16];
      v17[4] = v112;
      v17[5] = v113;
      v17[2] = v110;
      v17[3] = v111;
      v6 = v3 + 72;
      if (v4 - 1 != v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v106 = _swiftEmptyArrayStorage;
  }

LABEL_15:
  *(v0 + 1048) = v106;
  v18 = *(v0 + 904);
  v19 = *(v0 + 656);
  v20 = *(v0 + 592);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 134217984;
    *(v23 + 4) = v106[2];

    _os_log_impl(&_mh_execute_header, v21, v22, "Sync progress - handling %ld present views", v23, 0xCu);
  }

  else
  {
  }

  if (v106[2])
  {
    *(v0 + 1056) = 0;
    v24 = *(v0 + 1048);
    v25 = *(v0 + 744);
    v26 = v24[2];
    v27 = v24[3];
    v28 = v24[5];
    *(v0 + 112) = v24[4];
    *(v0 + 128) = v28;
    *(v0 + 80) = v26;
    *(v0 + 96) = v27;
    v29 = *(v0 + 136);
    *(v0 + 1064) = v29;
    v30 = *(v0 + 96);
    v31 = *(v0 + 104);
    *(v0 + 1072) = v30;
    *(v0 + 1080) = v31;
    v32 = *(v0 + 112);
    v33 = *(v0 + 128);
    *(v0 + 328) = v30;
    *(v0 + 336) = v31;
    *(v0 + 344) = v32;
    *(v0 + 360) = v33;
    v107 = *(v0 + 80);
    *(v0 + 1104) = v107;
    *(v0 + 1088) = v32;
    sub_1000938D4(v0 + 80, v0 + 144, &qword_100504340, &qword_10040C460);
    v34 = swift_task_alloc();
    *(v0 + 1120) = v34;
    *v34 = v0;
    v34[1] = sub_10016A95C;
    v35 = *(v0 + 648);
    v36 = *(v0 + 592);
    v37 = *(v0 + 584);
    v38 = *(v0 + 576);

    sub_100178310(v38, v37, v107, *(&v107 + 1), v0 + 328, v29, v35, v25);
  }

  else
  {
    v39 = *(v0 + 1048);
    v40 = *(v0 + 1024);
    v41 = *(v0 + 744);

    v108 = v40;
    v42 = (v40 + 72);
    v43 = -1;
    do
    {
      ++v43;
      v44 = *(v0 + 1040);
      if (v43 == v44)
      {
        break;
      }

      if (v43 >= *(*(v0 + 1024) + 16))
      {
        goto LABEL_52;
      }

      v45 = v42 + 6;
      v46 = *v42;
      v48 = *(v42 - 3);
      v47 = *(v42 - 2);
      v49 = *(v42 - 4);

      sub_100069E2C(v48, v47);
      v50 = v46;
      v51 = sub_10018BCF4(v50, (v0 + 544));

      sub_10006A178(v48, v47);

      v42 = v45;
    }

    while ((v51 & 1) != 0);
    v52 = *(v0 + 656);
    v53 = *(v0 + 592);
    v54 = objc_opt_self();
    v55 = String._bridgeToObjectiveC()();
    v56 = [v54 isAlarmSet:v55];

    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v105 = v58;
      v59 = *(v0 + 616);
      v60 = *(v0 + 608);
      v61 = *(v0 + 600);
      v104 = *(v0 + 592);
      v62 = swift_slowAlloc();
      *v62 = 67109632;
      *(v62 + 4) = v43 == v44;
      *(v62 + 8) = 1024;
      *(v62 + 10) = v56;
      *(v62 + 14) = 2048;
      v63 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager__errorCount;
      swift_beginAccess();
      (*(v60 + 16))(v59, v104 + v63, v61);
      UserDefaultBacked.wrappedValue.getter();
      (*(v60 + 8))(v59, v61);
      *(v62 + 16) = *(v0 + 568);

      _os_log_impl(&_mh_execute_header, v57, v105, "Sync progress -- completed w/ haveAllViewsOnSE %{BOOL}d retryInFlight %{BOOL}d errorCount %ld", v62, 0x18u);
    }

    else
    {
      v64 = *(v0 + 592);
    }

    *(*(v0 + 592) + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_allViewsSynchronized) = v43 == v44;
    if (v43 == v44)
    {
      v65 = *(v0 + 624);
      v66 = *(v0 + 592);
      *(v0 + 243) = 0;
      swift_beginAccess();
      UserDefaultBacked.wrappedValue.setter();
      swift_endAccess();
      if ((v56 & 1) == 0)
      {
        v67 = *(v0 + 616);
        v68 = *(v0 + 608);
        v69 = *(v0 + 600);
        v70 = *(v0 + 592);
        v71 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager__errorCount;
        swift_beginAccess();
        (*(v68 + 16))(v67, v70 + v71, v69);
        UserDefaultBacked.wrappedValue.getter();
        (*(v68 + 8))(v67, v69);
        if (*(v0 + 560) >= 1)
        {
          v72 = *(v0 + 600);
          swift_beginAccess();
          v73 = UserDefaultBacked.wrappedValue.modify();
          if (__OFSUB__(*v74, 1))
          {
LABEL_54:
            __break(1u);
            return;
          }

          --*v74;
          v73(v0 + 368, 0);
          swift_endAccess();
        }
      }
    }

    v75 = 0x4354502D4553;
    v76 = (v108 + 72);
    v77 = -1;
    while (1)
    {
      if (++v77 == *(v0 + 1040))
      {
        v91 = *(v0 + 1032);
        v92 = *(v0 + 1024);
        v93 = *(v0 + 648);

        sub_10018CE30(v93, type metadata accessor for SESPeerIdentityData);
        goto LABEL_48;
      }

      if (v77 >= *(*(v0 + 1024) + 16))
      {
        goto LABEL_53;
      }

      v79 = *(v76 - 4);
      v78 = *(v76 - 3);
      v80 = *(v76 - 2);
      v81 = *v76;

      v109 = v78;
      sub_100069E2C(v78, v80);
      v82 = v81;
      v83 = [v82 viewName];
      v84 = v75;
      v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v87 = v86;

      if (v85 == v84 && v87 == 0xE600000000000000)
      {
        break;
      }

      v75 = v84;
      v76 += 6;
      v89 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_10006A178(v109, v80);

      if (v89)
      {
        v90 = *(v0 + 1024);
        goto LABEL_45;
      }
    }

    v94 = *(v0 + 1024);

    sub_10006A178(v109, v80);

LABEL_45:

    v95 = *(v0 + 592);
    v96 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager_notifiedPassdOfFidoViewSynced;
    v97 = *(v0 + 1032);
    v98 = *(v0 + 688);
    v99 = *(v0 + 648);
    if (*(v95 + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_notifiedPassdOfFidoViewSynced) == 1)
    {
      sub_10018CE30(*(v0 + 648), type metadata accessor for SESPeerIdentityData);
    }

    else
    {
      notify_post("com.apple.seserviced.keysync.fido.tlk.synced");

      sub_10018CE30(v99, type metadata accessor for SESPeerIdentityData);
      *(v95 + v96) = 1;
    }

LABEL_48:

    v100 = *(v0 + 648);
    v101 = *(v0 + 640);
    v102 = *(v0 + 616);

    v103 = *(v0 + 8);

    v103();
  }
}

uint64_t sub_10016A95C()
{
  v2 = *(*v1 + 1120);
  v3 = *v1;
  v3[141] = v0;

  if (v0)
  {
    v4 = v3[131];
    v5 = v3[128];
    v6 = v3[93];
    v7 = v3[74];

    return _swift_task_switch(sub_10016BAF4, v7, 0);
  }

  else
  {
    v8 = swift_task_alloc();
    v3[142] = v8;
    *v8 = v3;
    v8[1] = sub_10016AB18;
    v9 = v3[139];
    v10 = v3[138];
    v11 = v3[135];
    v12 = v3[81];
    v13 = v3[74];
    v14 = v3[73];
    v15 = v3[72];
    v16 = v3[134];

    return sub_10017F3F0(v16, v11, v10, v9, v15, v14, v12);
  }
}

uint64_t sub_10016AB18()
{
  v1 = *(*v0 + 1136);
  v2 = *(*v0 + 592);
  v4 = *v0;

  return _swift_task_switch(sub_10016AC28, v2, 0);
}

void sub_10016AC28()
{
  v1 = *(v0 + 1112);
  v2 = *(v0 + 1104);
  v3 = *(v0 + 1096);
  v4 = *(v0 + 1088);
  v5 = *(v0 + 1080);
  v6 = *(v0 + 1056);
  v7 = *(v0 + 1048);

  sub_10006A178(v4, v3);
  sub_10006A178(v2, v1);
  v8 = *(v7 + 16);
  if (v6 + 1 == v8)
  {
    v9 = *(v0 + 1048);
    v10 = *(v0 + 1024);
    v11 = *(v0 + 744);

    v91 = v10;
    v12 = (v10 + 72);
    v13 = -1;
    do
    {
      ++v13;
      v14 = *(v0 + 1040);
      if (v13 == v14)
      {
        break;
      }

      if (v13 >= *(*(v0 + 1024) + 16))
      {
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v15 = v12 + 6;
      v16 = *v12;
      v18 = *(v12 - 3);
      v17 = *(v12 - 2);
      v19 = *(v12 - 4);

      sub_100069E2C(v18, v17);
      v20 = v16;
      v21 = sub_10018BCF4(v20, (v0 + 544));

      sub_10006A178(v18, v17);

      v12 = v15;
    }

    while ((v21 & 1) != 0);
    v22 = *(v0 + 656);
    v23 = *(v0 + 592);
    v24 = objc_opt_self();
    v25 = String._bridgeToObjectiveC()();
    v26 = [v24 isAlarmSet:v25];

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v90 = v28;
      v29 = *(v0 + 616);
      v30 = *(v0 + 608);
      v31 = *(v0 + 600);
      v89 = *(v0 + 592);
      v32 = swift_slowAlloc();
      *v32 = 67109632;
      *(v32 + 4) = v13 == v14;
      *(v32 + 8) = 1024;
      *(v32 + 10) = v26;
      *(v32 + 14) = 2048;
      v33 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager__errorCount;
      swift_beginAccess();
      (*(v30 + 16))(v29, v89 + v33, v31);
      UserDefaultBacked.wrappedValue.getter();
      (*(v30 + 8))(v29, v31);
      *(v32 + 16) = *(v0 + 568);

      _os_log_impl(&_mh_execute_header, v27, v90, "Sync progress -- completed w/ haveAllViewsOnSE %{BOOL}d retryInFlight %{BOOL}d errorCount %ld", v32, 0x18u);
    }

    else
    {
      v50 = *(v0 + 592);
    }

    *(*(v0 + 592) + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_allViewsSynchronized) = v13 == v14;
    if (v13 == v14)
    {
      v51 = *(v0 + 624);
      v52 = *(v0 + 592);
      *(v0 + 243) = 0;
      swift_beginAccess();
      UserDefaultBacked.wrappedValue.setter();
      swift_endAccess();
      if ((v26 & 1) == 0)
      {
        v53 = *(v0 + 616);
        v54 = *(v0 + 608);
        v55 = *(v0 + 600);
        v56 = *(v0 + 592);
        v57 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager__errorCount;
        swift_beginAccess();
        (*(v54 + 16))(v53, v56 + v57, v55);
        UserDefaultBacked.wrappedValue.getter();
        (*(v54 + 8))(v53, v55);
        if (*(v0 + 560) >= 1)
        {
          v58 = *(v0 + 600);
          swift_beginAccess();
          v59 = UserDefaultBacked.wrappedValue.modify();
          if (__OFSUB__(*v60, 1))
          {
            goto LABEL_38;
          }

          --*v60;
          v59(v0 + 368, 0);
          swift_endAccess();
        }
      }
    }

    v61 = (v91 + 72);
    v62 = -1;
    v93 = v0;
    while (1)
    {
      if (++v62 == *(v0 + 1040))
      {
        v75 = *(v0 + 1032);
        v76 = *(v0 + 1024);
        v77 = *(v0 + 648);

        sub_10018CE30(v77, type metadata accessor for SESPeerIdentityData);
        goto LABEL_32;
      }

      if (v62 >= *(*(v0 + 1024) + 16))
      {
        goto LABEL_36;
      }

      v64 = *(v61 - 4);
      v63 = *(v61 - 3);
      v65 = *(v61 - 2);
      v66 = *v61;

      sub_100069E2C(v63, v65);
      v67 = v66;
      v68 = [v67 viewName];
      v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v71 = v70;

      if (v69 == 0x4354502D4553 && v71 == 0xE600000000000000)
      {
        break;
      }

      v61 += 6;
      v73 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_10006A178(v63, v65);

      v0 = v93;
      if (v73)
      {
        v74 = *(v93 + 1024);
        goto LABEL_29;
      }
    }

    v78 = *(v93 + 1024);

    v79 = v63;
    v0 = v93;
    sub_10006A178(v79, v65);

LABEL_29:

    v80 = *(v0 + 592);
    v81 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager_notifiedPassdOfFidoViewSynced;
    v82 = *(v0 + 1032);
    v83 = *(v0 + 688);
    v84 = *(v0 + 648);
    if (*(v80 + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_notifiedPassdOfFidoViewSynced) == 1)
    {
      sub_10018CE30(*(v0 + 648), type metadata accessor for SESPeerIdentityData);
    }

    else
    {
      notify_post("com.apple.seserviced.keysync.fido.tlk.synced");

      sub_10018CE30(v84, type metadata accessor for SESPeerIdentityData);
      *(v80 + v81) = 1;
    }

LABEL_32:

    v85 = *(v0 + 648);
    v86 = *(v0 + 640);
    v87 = *(v0 + 616);

    v88 = *(v0 + 8);

    v88();
  }

  else
  {
    v34 = *(v0 + 1056) + 1;
    *(v0 + 1056) = v34;
    if (v34 >= v8)
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    else
    {
      v35 = *(v0 + 744);
      v36 = (*(v0 + 1048) + (v34 << 6));
      v37 = v36[2];
      v38 = v36[3];
      v39 = v36[5];
      *(v0 + 112) = v36[4];
      *(v0 + 128) = v39;
      *(v0 + 80) = v37;
      *(v0 + 96) = v38;
      v40 = *(v0 + 136);
      *(v0 + 1064) = v40;
      v41 = *(v0 + 96);
      v42 = *(v0 + 104);
      *(v0 + 1072) = v41;
      *(v0 + 1080) = v42;
      v43 = *(v0 + 112);
      v44 = *(v0 + 128);
      *(v0 + 328) = v41;
      *(v0 + 336) = v42;
      *(v0 + 344) = v43;
      *(v0 + 360) = v44;
      v92 = *(v0 + 80);
      *(v0 + 1104) = v92;
      *(v0 + 1088) = v43;
      sub_1000938D4(v0 + 80, v0 + 144, &qword_100504340, &qword_10040C460);
      v45 = swift_task_alloc();
      *(v0 + 1120) = v45;
      *v45 = v0;
      v45[1] = sub_10016A95C;
      v46 = *(v0 + 648);
      v47 = *(v0 + 592);
      v48 = *(v0 + 584);
      v49 = *(v0 + 576);

      sub_100178310(v49, v48, v92, *(&v92 + 1), v0 + 328, v40, v46, v35);
    }
  }
}

uint64_t sub_10016B3AC()
{
  v1 = v0[88];
  v2 = v0[86];
  sub_10018C6D8();
  swift_allocError();
  *v3 = v1;

  v4 = v0[81];
  v5 = v0[80];
  v6 = v0[77];

  v7 = v0[1];

  return v7();
}

uint64_t sub_10016B45C()
{
  v1 = v0[93];
  v2 = v0[88];
  v3 = v0[86];
  v4 = v0[81];
  sub_10018C6D8();
  swift_allocError();
  *v5 = v1;

  sub_10018CE30(v4, type metadata accessor for SESPeerIdentityData);

  v6 = v0[81];
  v7 = v0[80];
  v8 = v0[77];

  v9 = v0[1];

  return v9();
}

uint64_t sub_10016B544()
{
  v1 = *(v0 + 246);
  v2 = *(v0 + 792);
  v3 = *(v0 + 784);
  v4 = *(v0 + 776);
  v5 = *(v0 + 768);
  v6 = *(v0 + 704);
  v7 = *(v0 + 688);
  v8 = *(v0 + 648);
  sub_10018C6D8();
  swift_allocError();
  *v9 = v1;

  sub_10006A178(v4, v3);
  sub_10018CE30(v8, type metadata accessor for SESPeerIdentityData);

  v10 = *(v0 + 648);
  v11 = *(v0 + 640);
  v12 = *(v0 + 616);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_10016B664()
{
  v1 = v0[102];
  v2 = v0[88];
  v3 = v0[86];
  v4 = v0[81];
  sub_10018C6D8();
  swift_allocError();
  *v5 = v1;

  sub_10018CE30(v4, type metadata accessor for SESPeerIdentityData);

  v6 = v0[81];
  v7 = v0[80];
  v8 = v0[77];

  v9 = v0[1];

  return v9();
}

uint64_t sub_10016B74C()
{
  v1 = *(v0 + 840);
  v2 = *(v0 + 648);

  sub_10018CE30(v2, type metadata accessor for SESPeerIdentityData);

  v3 = *(v0 + 856);
  v4 = *(v0 + 648);
  v5 = *(v0 + 640);
  v6 = *(v0 + 616);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10016B804()
{
  v1 = v0[109];
  v2 = v0[105];
  v3 = v0[86];
  v4 = v0[81];
  sub_10018C6D8();
  swift_allocError();
  *v5 = v1;

  sub_10018CE30(v4, type metadata accessor for SESPeerIdentityData);

  v6 = v0[81];
  v7 = v0[80];
  v8 = v0[77];

  v9 = v0[1];

  return v9();
}

uint64_t sub_10016B8EC()
{
  v1 = *(v0 + 283);
  v2 = *(v0 + 968);
  v3 = *(v0 + 960);
  v4 = *(v0 + 952);
  v5 = *(v0 + 944);
  v6 = *(v0 + 896);
  v7 = *(v0 + 688);
  v8 = *(v0 + 648);
  sub_10018C6D8();
  swift_allocError();
  *v9 = v1;

  sub_10006A178(v4, v3);

  sub_10018CE30(v8, type metadata accessor for SESPeerIdentityData);

  v10 = *(v0 + 648);
  v11 = *(v0 + 640);
  v12 = *(v0 + 616);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_10016BA0C()
{
  v1 = v0[126];
  v2 = v0[112];
  v3 = v0[86];
  v4 = v0[81];
  sub_10018C6D8();
  swift_allocError();
  *v5 = v1;

  sub_10018CE30(v4, type metadata accessor for SESPeerIdentityData);

  v6 = v0[81];
  v7 = v0[80];
  v8 = v0[77];

  v9 = v0[1];

  return v9();
}

uint64_t sub_10016BAF4()
{
  v1 = *(v0 + 1112);
  v2 = *(v0 + 1104);
  v3 = *(v0 + 1096);
  v4 = *(v0 + 1088);
  v5 = *(v0 + 1080);
  v6 = *(v0 + 1064);
  v7 = *(v0 + 1032);
  v8 = *(v0 + 648);

  sub_10006A178(v2, v1);

  sub_10006A178(v4, v3);
  sub_10018CE30(v8, type metadata accessor for SESPeerIdentityData);

  v9 = *(v0 + 1128);
  v10 = *(v0 + 648);
  v11 = *(v0 + 640);
  v12 = *(v0 + 616);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_10016BBF8(char a1)
{
  *(v2 + 168) = v1;
  *(v2 + 184) = a1;
  return _swift_task_switch(sub_10016BC1C, v1, 0);
}

uint64_t sub_10016BC1C()
{
  v1 = *(v0[21] + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_keychainWrapper);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10016BD44;
  v2 = swift_continuation_init();
  v0[17] = sub_100068FC4(&qword_100504F90, &qword_10040C538);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1001862CC;
  v0[13] = &unk_1004C9610;
  v0[14] = v2;
  [v1 canSyncSEKeys:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10016BD44()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 176) = v3;
  v4 = *(v1 + 168);
  if (v3)
  {
    v5 = sub_10016C090;
  }

  else
  {
    v5 = sub_10016BE64;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10016BE64()
{
  v15 = v0;
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  sub_10006A2BC(v3, v1);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  sub_10006A2D0(v3, v1);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 67109378;
    *(v6 + 4) = v2;
    *(v6 + 8) = 2080;
    *(v0 + 80) = v3;
    *(v0 + 88) = v1;
    sub_10006A2BC(v3, v1);
    sub_100068FC4(&qword_100502BF0, &qword_100409C88);
    v8 = String.init<A>(describing:)();
    v10 = sub_1002FFA0C(v8, v9, &v14);

    *(v6 + 10) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Sync Progress -- canSyncSEKeys %{BOOL}d %s", v6, 0x12u);
    sub_1000752F4(v7);
  }

  if (*(v0 + 184) == 1)
  {
    v11 = *(v0 + 168);
    *(v0 + 144) = v3;
    *(v0 + 152) = v1;
    swift_beginAccess();
    sub_10006A2BC(v3, v1);
    sub_10006A2BC(v3, v1);
    sub_100068FC4(&qword_100504F98, &unk_10040C540);
    UserDefaultBackedOptional.wrappedValue.setter();
    swift_endAccess();
    sub_10006A2D0(v3, v1);
  }

  v12 = *(v0 + 8);

  return v12(v3, v1);
}

uint64_t sub_10016C090()
{
  v1 = *(v0 + 176);
  swift_willThrow();
  *(v0 + 80) = 20;
  sub_10018C6D8();
  swift_willThrowTypedImpl();

  v2 = *(v0 + 8);

  return v2(20);
}

uint64_t sub_10016C150()
{
  v1 = objc_opt_self();
  v2 = String._bridgeToObjectiveC()();
  v0[24] = v2;
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_10016C2A0;
  v3 = swift_continuation_init();
  v0[17] = sub_100068FC4(&qword_100503460, &qword_10040B560);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1001861F4;
  v0[13] = &unk_1004C95E8;
  v0[14] = v3;
  sub_1003AF710(v1, v2, v0 + 10);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10016C2A0()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 200) = v3;
  v4 = *(v1 + 184);
  if (v3)
  {
    v5 = sub_10016C42C;
  }

  else
  {
    v5 = sub_10016C3C0;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10016C3C0()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10016C42C()
{
  v19 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 184);
  swift_willThrow();

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 200);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = *(v0 + 144);
    v9 = *(v0 + 152);
    v11 = *(v0 + 160);
    v12 = Error.localizedDescription.getter();
    v14 = sub_1002FFA0C(v12, v13, &v18);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to get SE : %s", v7, 0xCu);
    sub_1000752F4(v8);
  }

  v15 = *(v0 + 200);
  *(v0 + 80) = 4;
  sub_10018C6D8();
  swift_willThrowTypedImpl();

  v16 = *(v0 + 8);

  return v16(4);
}

uint64_t sub_10016C5E0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_10016C604, v2, 0);
}

uint64_t sub_10016C604()
{
  v1 = v0[4];
  v0[5] = OBJC_IVAR____TtC10seserviced16SEKeySyncManager_logger;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Refreshing SE contents", v4, 2u);
  }

  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_10016C71C;
  v6 = v0[4];

  return sub_1001856F4();
}

uint64_t sub_10016C71C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  *(*v2 + 56) = a1;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7(a1);
  }

  else
  {
    v9 = *(v4 + 32);

    return _swift_task_switch(sub_10016C870, v9, 0);
  }
}

uint64_t sub_10016C870()
{
  v1 = v0[4] + v0[5];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Refreshing CK contents", v4, 2u);
  }

  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_10016C984;
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[2];

  return sub_100185AA8(v8, v6);
}

uint64_t sub_10016C984(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(v4 + 72) = a1;
  *(v4 + 80) = v1;

  v7 = *(v3 + 32);
  if (v1)
  {
    v8 = sub_10016CB90;
  }

  else
  {
    v8 = sub_10016CAB8;
  }

  return _swift_task_switch(v8, v7, 0);
}

void sub_10016CAB8()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[7];
  v4 = *(v0[4] + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_state);
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v1;
  os_unfair_lock_lock(v4 + 12);
  sub_10018D0B4(&v4[4]);
  os_unfair_lock_unlock(v4 + 12);
  if (!v2)
  {

    v6 = v0[1];
    v7 = v0[9];
    v8 = v0[7];

    v6(v8, v7);
  }
}

uint64_t sub_10016CB90()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 72);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_10016CBF8(uint64_t *a1, void *a2)
{
  v227 = a1;
  v224 = type metadata accessor for SESTLKShareData(0);
  isa = v224[-1].isa;
  v3 = *(isa + 8);
  v4 = __chkstk_darwin(v224);
  v206 = &v191 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v214 = &v191 - v7;
  __chkstk_darwin(v6);
  v217 = &v191 - v8;
  v9 = sub_100068FC4(&qword_100504F80, &qword_10040C510);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v213 = &v191 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v220 = &v191 - v14;
  __chkstk_darwin(v13);
  v16 = &v191 - v15;
  v17 = [a2 casdCertificate];
  v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21 = sub_100068FC4(&qword_100504F00, &qword_10040C480);
  v22 = swift_allocObject();
  v208 = xmmword_10040C130;
  *(v22 + 16) = xmmword_10040C130;
  strcpy((v22 + 32), "serialNumber");
  *(v22 + 45) = 0;
  *(v22 + 46) = -5120;
  *(v22 + 48) = 147;
  *(v22 + 56) = 0;
  *(v22 + 64) = 0u;
  *(v22 + 80) = -64;
  *(v22 + 88) = _swiftEmptyArrayStorage;
  strcpy((v22 + 96), "caIdentifier");
  *(v22 + 109) = 0;
  *(v22 + 110) = -5120;
  *(v22 + 112) = 66;
  *(v22 + 120) = 0;
  *(v22 + 128) = 0u;
  *(v22 + 144) = -64;
  *(v22 + 152) = _swiftEmptyArrayStorage;
  *(v22 + 160) = 0xD000000000000011;
  *(v22 + 168) = 0x8000000100464D60;
  *(v22 + 176) = 24352;
  *(v22 + 184) = 0;
  *(v22 + 192) = 0u;
  *(v22 + 208) = -64;
  *(v22 + 216) = _swiftEmptyArrayStorage;
  *(v22 + 224) = 0x656761735579656BLL;
  *(v22 + 232) = 0xE800000000000000;
  *(v22 + 240) = 149;
  *(v22 + 248) = 0;
  *(v22 + 256) = 0u;
  *(v22 + 272) = -64;
  *(v22 + 280) = _swiftEmptyArrayStorage;
  strcpy((v22 + 288), "effectiveDate");
  *(v22 + 302) = -4864;
  *(v22 + 304) = 37;
  *(v22 + 312) = 256;
  *(v22 + 320) = 0u;
  *(v22 + 336) = -64;
  *(v22 + 344) = _swiftEmptyArrayStorage;
  strcpy((v22 + 352), "expirationDate");
  *(v22 + 367) = -18;
  *(v22 + 368) = 24356;
  *(v22 + 376) = 256;
  *(v22 + 384) = 0u;
  *(v22 + 400) = -64;
  *(v22 + 408) = _swiftEmptyArrayStorage;
  *(v22 + 416) = 0x4E4944536163;
  *(v22 + 424) = 0xE600000000000000;
  *(v22 + 432) = 69;
  *(v22 + 440) = 0;
  *(v22 + 448) = 0u;
  *(v22 + 464) = -64;
  *(v22 + 472) = _swiftEmptyArrayStorage;
  *(v22 + 480) = 0xD000000000000011;
  *(v22 + 488) = 0x8000000100464D80;
  *(v22 + 496) = 83;
  *(v22 + 504) = 0;
  *(v22 + 512) = 0u;
  *(v22 + 528) = -64;
  *(v22 + 536) = _swiftEmptyArrayStorage;
  *(v22 + 544) = 0x654B63696C627570;
  *(v22 + 552) = 0xE900000000000079;
  *(v22 + 560) = 32585;
  *(v22 + 568) = 0;
  *(v22 + 576) = 0u;
  *(v22 + 592) = -64;
  *(v22 + 600) = _swiftEmptyArrayStorage;
  v244 = 32545;
  v245 = 0;
  v246 = v22;
  v247 = 0;
  v248 = 64;
  v249 = _swiftEmptyArrayStorage;
  *&v231 = v18;
  *(&v231 + 1) = v20;
  sub_100069E2C(v18, v20);
  v23 = v228;
  v24 = sub_1001A93E0(&v231, &v244);
  if (v23)
  {
    sub_10006A178(v18, v20);

    sub_10006A178(v231, *(&v231 + 1));
    return v25 & 1;
  }

  v199 = 0x8000000100464D80;
  v200 = 0x8000000100464D60;
  v201 = v21;
  v210 = v16;
  v26 = v24;

  sub_10006A178(v231, *(&v231 + 1));
  sub_1002A0074(v26, &v232);
  sub_10006A178(v18, v20);
  v216 = 0;
  v192 = v233;
  v193 = v234;
  sub_100069E2C(v233, v234);
  sub_10018C7D0(&v232);
  v28 = v227;
  v29 = *(v227 + 16);
  v30 = _swiftEmptyArrayStorage;
  if (v29)
  {
    *&v231 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v31 = (v28 + 72);
    v32 = 0xED00006574614465;
    do
    {
      v33 = *v31;
      v31 += 6;
      v34 = v33;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v35 = *(v231 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v29;
    }

    while (v29);
    v36 = v231;
  }

  else
  {
    v36 = _swiftEmptyArrayStorage;
    v32 = 0xED00006574614465;
  }

  v37 = 0xEC0000007265626DLL;
  v38 = isa;
  if (v36 >> 62)
  {
    goto LABEL_241;
  }

  v39 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v39)
  {
LABEL_242:

    sub_10006A178(v192, v193);
    v25 = 0;
    return v25 & 1;
  }

LABEL_12:
  v204 = v36;
  v205 = v36 & 0xC000000000000001;
  v197 = v36 + 32;
  v198 = v36 & 0xFFFFFFFFFFFFFF8;
  v219 = (v38 + 56);
  v202 = v39;
  v203 = (v38 + 48);
  v38 = 0;
  while (1)
  {
    if (v205)
    {
      v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v38 >= *(v198 + 16))
      {
        goto LABEL_238;
      }

      v40 = *(v197 + 8 * v38);
    }

    v41 = v40;
    v42 = __OFADD__(v38++, 1);
    if (v42)
    {
      __break(1u);
LABEL_230:
      __break(1u);
LABEL_231:
      __break(1u);
LABEL_232:
      __break(1u);
LABEL_233:
      __break(1u);
LABEL_234:
      __break(1u);
LABEL_235:
      __break(1u);
LABEL_236:
      __break(1u);
LABEL_237:
      __break(1u);
LABEL_238:
      __break(1u);
LABEL_239:
      __break(1u);
LABEL_240:
      __break(1u);
LABEL_241:
      v39 = _CocoaArrayWrapper.endIndex.getter();
      if (!v39)
      {
        goto LABEL_242;
      }

      goto LABEL_12;
    }

    v211 = v38;
    v43 = [v40 currentTLK];
    if (v43)
    {
      v44 = v43;
      v45 = [v43 tlkUUID];

      v46 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v225 = v47;
      v226 = v46;
    }

    else
    {
      v225 = 0xF000000000000000;
      v226 = 0;
    }

    v48 = [v41 tlkShares];
    sub_10009393C(0, &qword_100504EF8, SESTLKShare_ptr);
    v36 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v230 = v30;
    v227 = v36;
    if (v36 >> 62)
    {
      break;
    }

    v49 = *((v227 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v212 = v41;
    if (v49)
    {
      goto LABEL_25;
    }

LABEL_90:
    v79 = v30;
LABEL_91:

    v230 = v79;
    if ((v30 & 0x8000000000000000) != 0 || (v30 & 0x4000000000000000) != 0)
    {
      v80 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v80 = v30[2];
    }

    v223 = v225 >> 60;
    if (v80)
    {
      v41 = 0;
      v227 = v80;
      v228 = (v30 & 0xC000000000000001);
      if (v226)
      {
        v81 = 0;
      }

      else
      {
        v81 = v225 == 0xC000000000000000;
      }

      v82 = !v81;
      LODWORD(v221) = v82;
      v222 = v225 >> 62;
      v83 = __OFSUB__(HIDWORD(v226), v226);
      LODWORD(v209) = v83;
      v207 = HIDWORD(v226) - v226;
      v218 = BYTE6(v225);
      while (1)
      {
        if (v228)
        {
          v87 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v41 >= v30[2])
          {
            goto LABEL_212;
          }

          v87 = v30[v41 + 4];
        }

        v37 = v87;
        v32 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          goto LABEL_211;
        }

        v38 = [v87 tlkUUID];
        v88 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v36 = v89;

        if (v36 >> 60 == 15)
        {
          if (v223 > 0xE)
          {
            sub_10006A2BC(v226, v225);
            goto LABEL_150;
          }
        }

        else if (v223 <= 0xE)
        {
          v90 = v36 >> 62;
          if (v36 >> 62 == 3)
          {
            if (v88)
            {
              v91 = 0;
            }

            else
            {
              v91 = v36 == 0xC000000000000000;
            }

            v93 = !v91 || v222 < 3;
            if (((v93 | v221) & 1) == 0)
            {
              sub_10006A2BC(0, 0xC000000000000000);
              v99 = 0;
              v100 = 0xC000000000000000;
              goto LABEL_149;
            }

            v94 = 0;
LABEL_137:
            v95 = v222;
            if (v222 <= 1)
            {
              goto LABEL_138;
            }

LABEL_130:
            if (v95 == 2)
            {
              v97 = *(v226 + 16);
              v96 = *(v226 + 24);
              v42 = __OFSUB__(v96, v97);
              v98 = v96 - v97;
              if (v42)
              {
                goto LABEL_232;
              }

              goto LABEL_140;
            }

            if (!v94)
            {
LABEL_148:
              v108 = v225;
              v109 = v226;
              sub_10006A2BC(v226, v225);
              v99 = v109;
              v80 = v227;
              v100 = v108;
LABEL_149:
              sub_10006A2D0(v99, v100);
LABEL_150:
              sub_10006A2D0(v88, v36);
LABEL_151:
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              v36 = v230[2];
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
              goto LABEL_106;
            }

LABEL_146:
            v105 = v225;
            v106 = v226;
            sub_10006A2BC(v226, v225);
            v107 = v106;
            v80 = v227;
            sub_10006A2D0(v107, v105);
            sub_10006A2D0(v88, v36);
LABEL_147:

            goto LABEL_106;
          }

          v95 = v222;
          if (v90 <= 1)
          {
            if (v90)
            {
              LODWORD(v94) = HIDWORD(v88) - v88;
              if (__OFSUB__(HIDWORD(v88), v88))
              {
                goto LABEL_236;
              }

              v94 = v94;
              if (v222 <= 1)
              {
                goto LABEL_138;
              }
            }

            else
            {
              v94 = BYTE6(v36);
              if (v222 <= 1)
              {
                goto LABEL_138;
              }
            }

            goto LABEL_130;
          }

          if (v90 == 2)
          {
            v102 = *(v88 + 16);
            v101 = *(v88 + 24);
            v42 = __OFSUB__(v101, v102);
            v94 = v101 - v102;
            if (v42)
            {
              goto LABEL_237;
            }

            goto LABEL_137;
          }

          v94 = 0;
          if (v222 > 1)
          {
            goto LABEL_130;
          }

LABEL_138:
          v103 = v95;
          v98 = v218;
          if (v103)
          {
            v98 = v207;
            if (v209)
            {
              goto LABEL_233;
            }
          }

LABEL_140:
          if (v94 != v98)
          {
            goto LABEL_146;
          }

          if (v94 < 1)
          {
            goto LABEL_148;
          }

          if (v90 > 1)
          {
            if (v90 == 2)
            {
              v110 = *(v88 + 16);
              v195 = *(v88 + 24);
              v196 = v110;
              sub_10006A2BC(v226, v225);
              sub_100069E2C(v88, v36);
              v38 = v36 & 0x3FFFFFFFFFFFFFFFLL;
              v111 = __DataStorage._bytes.getter();
              if (v111)
              {
                v194 = v111;
                v38 = v36 & 0x3FFFFFFFFFFFFFFFLL;
                v112 = __DataStorage._offset.getter();
                v113 = v196;
                if (__OFSUB__(v196, v112))
                {
                  __break(1u);
LABEL_244:
                  __break(1u);
                }

                v194 += &v196[-v112];
              }

              else
              {
                v194 = 0;
                v113 = v196;
              }

              v196 = (v195 - v113);
              if (__OFSUB__(v195, v113))
              {
                goto LABEL_240;
              }

              __DataStorage._length.getter();
              v118 = v194;
              goto LABEL_172;
            }

            *(&v231 + 6) = 0;
            *&v231 = 0;
            v104 = v225;
            sub_10006A2BC(v226, v225);
            sub_100069E2C(v88, v36);
LABEL_166:
            v116 = v216;
            sub_10019F024(&v231, v226, v104, &v229);
            v216 = v116;
            sub_10006A178(v88, v36);
            sub_10006A2D0(v226, v104);
            v117 = v229;
          }

          else
          {
            if (!v90)
            {
              *&v231 = v88;
              WORD4(v231) = v36;
              BYTE10(v231) = BYTE2(v36);
              BYTE11(v231) = BYTE3(v36);
              BYTE12(v231) = BYTE4(v36);
              BYTE13(v231) = BYTE5(v36);
              v196 = &v231 + BYTE6(v36);
              v104 = v225;
              sub_10006A2BC(v226, v225);
              sub_100069E2C(v88, v36);
              goto LABEL_166;
            }

            v195 = v88;
            v196 = ((v88 >> 32) - v88);
            if (v88 >> 32 < v88)
            {
              goto LABEL_239;
            }

            sub_10006A2BC(v226, v225);
            sub_100069E2C(v88, v36);
            v114 = __DataStorage._bytes.getter();
            if (v114)
            {
              v194 = v114;
              v115 = __DataStorage._offset.getter();
              if (__OFSUB__(v195, v115))
              {
                goto LABEL_244;
              }

              v195 = v195 - v115 + v194;
            }

            else
            {
              v195 = 0;
            }

            __DataStorage._length.getter();
            v118 = v195;
LABEL_172:
            v119 = v225;
            v120 = v216;
            sub_10019F024(v118, v226, v225, &v231);
            v216 = v120;
            sub_10006A178(v88, v36);
            sub_10006A2D0(v226, v119);
            v117 = v231;
          }

          sub_10006A2D0(v88, v36);
          if (v117)
          {
            goto LABEL_151;
          }

          goto LABEL_147;
        }

        v84 = v225;
        v85 = v226;
        sub_10006A2BC(v226, v225);

        sub_10006A2D0(v88, v36);
        v86 = v85;
        v80 = v227;
        sub_10006A2D0(v86, v84);
LABEL_106:
        ++v41;
        v81 = v32 == v80;
        v32 = 0xED00006574614465;
        v37 = 0xEC0000007265626DLL;
        if (v81)
        {
          v41 = v230;
          goto LABEL_178;
        }
      }
    }

    v41 = _swiftEmptyArrayStorage;
LABEL_178:

    if ((v41 & 0x8000000000000000) != 0 || (v41 & 0x4000000000000000) != 0)
    {
      v121 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v121 = *(v41 + 16);
    }

    v36 = v216;
    if (v121)
    {
      v122 = 0;
      v222 = v41 & 0xC000000000000001;
      v227 = _swiftEmptyArrayStorage;
      v221 = v41;
      v218 = v121;
      while (1)
      {
        if (v222)
        {
          v123 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v122 >= *(v41 + 16))
          {
            goto LABEL_214;
          }

          v123 = *(v41 + 8 * v122 + 32);
        }

        v124 = v123;
        if (__OFADD__(v122, 1))
        {
          break;
        }

        v228 = (v122 + 1);
        v125 = type metadata accessor for PropertyListDecoder();
        v126 = *(v125 + 48);
        v127 = *(v125 + 52);
        swift_allocObject();
        PropertyListDecoder.init()();
        v128 = [v124 shareData];
        v129 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v131 = v130;

        sub_100188AF0(&qword_100504F40, type metadata accessor for SESTLKShareData);
        v132 = v220;
        v133 = v224;
        dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
        if (v36)
        {

          sub_10006A178(v129, v131);

          (*v219)(v132, 1, 1, v133);
          sub_100075768(v132, &qword_100504F80, &qword_10040C510);
          v36 = 0;
          v32 = 0xED00006574614465;
          v37 = 0xEC0000007265626DLL;
          v41 = v221;
        }

        else
        {
          v36 = 0;
          sub_10006A178(v129, v131);

          (*v219)(v132, 0, 1, v133);
          sub_10018CF04(v132, v217, type metadata accessor for SESTLKShareData);
          v134 = v227;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v134 = sub_10012F8D4(0, v134[2] + 1, 1, v134);
          }

          v32 = 0xED00006574614465;
          v41 = v221;
          v136 = v134[2];
          v135 = v134[3];
          v227 = v134;
          if (v136 >= v135 >> 1)
          {
            v227 = sub_10012F8D4(v135 > 1, v136 + 1, 1, v227);
          }

          v137 = v227;
          *(v227 + 16) = v136 + 1;
          sub_10018CF04(v217, v137 + ((*(isa + 80) + 32) & ~*(isa + 80)) + *(isa + 9) * v136, type metadata accessor for SESTLKShareData);
          v37 = 0xEC0000007265626DLL;
        }

        ++v122;
        if (v228 == v218)
        {
          goto LABEL_197;
        }
      }

LABEL_213:
      __break(1u);
LABEL_214:
      __break(1u);
LABEL_215:
      __break(1u);
LABEL_216:
      __break(1u);
LABEL_217:

      v154 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager_logger;
      v155 = v192;
      sub_100069E2C(v192, v193);
      v32 = v225;
      v156 = v226;
      sub_10006A2BC(v226, v225);
      sub_100069E2C(v37, v41);
      v228 = v154;
      v38 = Logger.logObject.getter();
      v157 = static os_log_type_t.error.getter();
      sub_10006A2D0(v156, v32);
      sub_10006A178(v37, v41);
      sub_10006A178(v155, v193);
      LODWORD(v227) = v157;
      if (!os_log_type_enabled(v38, v157))
      {
        goto LABEL_222;
      }

      v224 = v38;
      v158 = swift_slowAlloc();
      v222 = swift_slowAlloc();
      *&v231 = v222;
      *v158 = 136315650;
      if (v223 <= 0xE)
      {
        v161 = v216;
        v230 = sub_100288788(v226, v32);
        sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
        sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
        v163 = BidirectionalCollection<>.joined(separator:)();
        v159 = v164;

        v160 = v163;
      }

      else
      {
        v159 = 0xE300000000000000;
        v160 = 7104878;
        v161 = v216;
      }

      v165 = sub_1002FFA0C(v160, v159, &v231);

      *(v158 + 4) = v165;
      *(v158 + 12) = 2080;
      v166 = sub_100288788(v37, v41);
      v223 = v161;
      v230 = v166;
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
      v167 = BidirectionalCollection<>.joined(separator:)();
      v169 = v168;

      v170 = sub_1002FFA0C(v167, v169, &v231);

      *(v158 + 14) = v170;
      *(v158 + 22) = 2080;
      v171 = v223;
      v172 = sub_100288788(v192, v193);
      v216 = v171;
      v230 = v172;
      v173 = BidirectionalCollection<>.joined(separator:)();
      v175 = v174;

      v176 = sub_1002FFA0C(v173, v175, &v231);

      *(v158 + 24) = v176;
      v177 = v224;
      _os_log_impl(&_mh_execute_header, v224, v227, "Found self share for UUID %s with CASDCA %s != myCASDCA %s", v158, 0x20u);
      swift_arrayDestroy();

      v162 = v214;
      v36 = v206;
      v32 = v225;
      goto LABEL_225;
    }

    v227 = _swiftEmptyArrayStorage;
LABEL_197:
    v216 = v36;

    if (*(v227 + 16))
    {
      v138 = v210;
      sub_10018D04C(v227 + ((*(isa + 80) + 32) & ~*(isa + 80)), v210, type metadata accessor for SESTLKShareData);
      v139 = 0;
    }

    else
    {
      v139 = 1;
      v138 = v210;
    }

    v140 = v139;
    v141 = v224;
    (*v219)(v138, v140, 1, v224);
    v142 = v213;
    sub_1000938D4(v138, v213, &qword_100504F80, &qword_10040C510);
    if ((*v203)(v142, 1, v141) == 1)
    {
      sub_100075768(v138, &qword_100504F80, &qword_10040C510);
      sub_10006A2D0(v226, v225);

      sub_100075768(v142, &qword_100504F80, &qword_10040C510);
      v30 = _swiftEmptyArrayStorage;
    }

    else
    {
      v143 = v214;
      sub_10018CF04(v142, v214, type metadata accessor for SESTLKShareData);
      v144 = *(v143 + 48);
      v145 = *(v143 + 56);
      v146 = swift_allocObject();
      *(v146 + 104) = v37 + 1785;
      *(v146 + 16) = v208;
      *(v146 + 32) = 0x754E6C6169726573;
      *(v146 + 40) = v37;
      *(v146 + 48) = 147;
      *(v146 + 56) = 0;
      *(v146 + 64) = 0u;
      *(v146 + 80) = -64;
      *(v146 + 88) = _swiftEmptyArrayStorage;
      *(v146 + 96) = 0x69746E6564496163;
      *(v146 + 112) = 66;
      *(v146 + 120) = 0;
      *(v146 + 128) = 0u;
      *(v146 + 144) = -64;
      *(v146 + 152) = _swiftEmptyArrayStorage;
      *(v146 + 160) = 0xD000000000000011;
      *(v146 + 168) = v200;
      *(v146 + 176) = 24352;
      *(v146 + 184) = 0;
      *(v146 + 192) = 0u;
      *(v146 + 208) = -64;
      *(v146 + 216) = _swiftEmptyArrayStorage;
      *(v146 + 224) = 0x656761735579656BLL;
      *(v146 + 232) = 0xE800000000000000;
      *(v146 + 240) = 149;
      *(v146 + 248) = 0;
      *(v146 + 256) = 0u;
      *(v146 + 272) = -64;
      *(v146 + 280) = _swiftEmptyArrayStorage;
      *(v146 + 288) = 0x7669746365666665;
      *(v146 + 296) = v32;
      *(v146 + 304) = 37;
      *(v146 + 312) = 256;
      *(v146 + 320) = 0u;
      *(v146 + 336) = -64;
      *(v146 + 344) = _swiftEmptyArrayStorage;
      strcpy((v146 + 352), "expirationDate");
      *(v146 + 367) = -18;
      v30 = _swiftEmptyArrayStorage;
      *(v146 + 368) = 24356;
      *(v146 + 376) = 256;
      *(v146 + 384) = 0u;
      *(v146 + 400) = -64;
      *(v146 + 408) = _swiftEmptyArrayStorage;
      *(v146 + 416) = 0x4E4944536163;
      *(v146 + 424) = 0xE600000000000000;
      *(v146 + 432) = 69;
      *(v146 + 440) = 0;
      *(v146 + 448) = 0u;
      *(v146 + 464) = -64;
      *(v146 + 472) = _swiftEmptyArrayStorage;
      *(v146 + 480) = 0xD000000000000011;
      *(v146 + 488) = v199;
      *(v146 + 496) = 83;
      *(v146 + 504) = 0;
      *(v146 + 512) = 0u;
      *(v146 + 528) = -64;
      *(v146 + 536) = _swiftEmptyArrayStorage;
      *(v146 + 544) = 0x654B63696C627570;
      *(v146 + 552) = 0xE900000000000079;
      *(v146 + 560) = 32585;
      *(v146 + 568) = 0;
      *(v146 + 576) = 0u;
      *(v146 + 592) = -64;
      *(v146 + 600) = _swiftEmptyArrayStorage;
      v238 = 32545;
      v239 = 0;
      v240 = v146;
      v241 = 0;
      v242 = 64;
      v243 = _swiftEmptyArrayStorage;
      *&v231 = v144;
      *(&v231 + 1) = v145;
      sub_100069E2C(v144, v145);
      v147 = v216;
      v148 = sub_1001A93E0(&v231, &v238);
      if (v147)
      {

        sub_10006A2D0(v226, v225);
        sub_10006A178(v231, *(&v231 + 1));
        sub_100075768(v210, &qword_100504F80, &qword_10040C510);
        v216 = 0;
        v151 = v214;
      }

      else
      {
        v149 = v148;

        sub_10006A178(v231, *(&v231 + 1));
        sub_1002A0074(v149, &v235);
        v150 = v212;
        v216 = 0;
        v37 = v236;
        v41 = v237;
        sub_100069E2C(v236, v237);
        sub_10018C7D0(&v235);
        v152 = sub_10008FB4C(v37, v41, v192, v193);
        v153 = v214;
        v36 = v206;
        if ((v152 & 1) == 0)
        {
          goto LABEL_217;
        }

        sub_100075768(v210, &qword_100504F80, &qword_10040C510);

        sub_10006A178(v37, v41);
        sub_10006A2D0(v226, v225);
        v151 = v153;
        v37 = 0xEC0000007265626DLL;
      }

      sub_10018CE30(v151, type metadata accessor for SESTLKShareData);
    }

    v36 = v204;
    v38 = v211;
    if (v211 == v202)
    {
      goto LABEL_242;
    }
  }

  v49 = _CocoaArrayWrapper.endIndex.getter();
  v212 = v41;
  if (!v49)
  {
    goto LABEL_90;
  }

LABEL_25:
  v30 = 0;
  v222 = v227 & 0xFFFFFFFFFFFFFF8;
  v223 = v227 & 0xC000000000000001;
  v221 = v49;
  while (1)
  {
    if (v223)
    {
      v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v52 = (v30 + 1);
      if (__OFADD__(v30, 1))
      {
        goto LABEL_209;
      }
    }

    else
    {
      if (v30 >= *(v222 + 16))
      {
        goto LABEL_210;
      }

      v51 = *(v227 + 8 * v30 + 32);
      v52 = (v30 + 1);
      if (__OFADD__(v30, 1))
      {
LABEL_209:
        __break(1u);
LABEL_210:
        __break(1u);
LABEL_211:
        __break(1u);
LABEL_212:
        __break(1u);
        goto LABEL_213;
      }
    }

    v228 = v52;
    v37 = v51;
    v53 = [v37 sourcePeerIdentifier];
    v54 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v55;

    v38 = [v37 targetPeerIdentifier];
    v32 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v56;

    v57 = v36 >> 62;
    v58 = v41 >> 62;
    if (v36 >> 62 == 3)
    {
      v59 = 0;
      if (!v54 && v36 == 0xC000000000000000 && v41 >> 62 == 3)
      {
        v59 = 0;
        if (!v32 && v41 == 0xC000000000000000)
        {
          sub_10006A178(0, 0xC000000000000000);
          v60 = 0;
          v61 = 0xC000000000000000;
          goto LABEL_60;
        }
      }

LABEL_48:
      if (v58 > 1)
      {
        goto LABEL_42;
      }

      goto LABEL_49;
    }

    if (v57 <= 1)
    {
      break;
    }

    if (v57 == 2)
    {
      v66 = *(v54 + 16);
      v65 = *(v54 + 24);
      v42 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      if (v42)
      {
        goto LABEL_221;
      }

      goto LABEL_48;
    }

    v59 = 0;
    if (v58 > 1)
    {
LABEL_42:
      if (v58 != 2)
      {
        if (!v59)
        {
          goto LABEL_59;
        }

        goto LABEL_27;
      }

      v63 = *(v32 + 16);
      v62 = *(v32 + 24);
      v42 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v42)
      {
        goto LABEL_216;
      }

      goto LABEL_51;
    }

LABEL_49:
    if (!v58)
    {
      v64 = BYTE6(v41);
LABEL_51:
      if (v59 == v64)
      {
        goto LABEL_55;
      }

      goto LABEL_27;
    }

    if (__OFSUB__(HIDWORD(v32), v32))
    {
      goto LABEL_215;
    }

    if (v59 == HIDWORD(v32) - v32)
    {
LABEL_55:
      if (v59 >= 1)
      {
        if (v57 > 1)
        {
          if (v57 == 2)
          {
            v67 = *(v54 + 16);
            v218 = *(v54 + 24);
            v38 = v36 & 0x3FFFFFFFFFFFFFFFLL;
            v68 = __DataStorage._bytes.getter();
            if (v68)
            {
              v209 = v68;
              v38 = v36 & 0x3FFFFFFFFFFFFFFFLL;
              v69 = __DataStorage._offset.getter();
              if (__OFSUB__(v67, v69))
              {
                goto LABEL_234;
              }

              v70 = v67 - v69 + v209;
            }

            else
            {
              v70 = 0;
            }

            if (__OFSUB__(v218, v67))
            {
              goto LABEL_231;
            }

            v218 = v70;
            __DataStorage._length.getter();
            v77 = v218;
            goto LABEL_81;
          }

          *(&v231 + 6) = 0;
          *&v231 = 0;
LABEL_75:
          v75 = v216;
          sub_10019F024(&v231, v32, v41, &v229);
          v216 = v75;
          sub_10006A178(v32, v41);
          sub_10006A178(v54, v36);

          v76 = v229;
        }

        else
        {
          if (!v57)
          {
            *&v231 = v54;
            WORD4(v231) = v36;
            BYTE10(v231) = BYTE2(v36);
            BYTE11(v231) = BYTE3(v36);
            BYTE12(v231) = BYTE4(v36);
            BYTE13(v231) = BYTE5(v36);
            goto LABEL_75;
          }

          if (v54 >> 32 < v54)
          {
            goto LABEL_230;
          }

          v209 = v54;
          v218 = (v54 >> 32) - v54;
          v71 = __DataStorage._bytes.getter();
          if (v71)
          {
            v72 = v71;
            v38 = v36 & 0x3FFFFFFFFFFFFFFFLL;
            v73 = __DataStorage._offset.getter();
            if (__OFSUB__(v209, v73))
            {
              goto LABEL_235;
            }

            v74 = v209 - v73 + v72;
          }

          else
          {
            v74 = 0;
          }

          __DataStorage._length.getter();
          v77 = v74;
LABEL_81:
          v78 = v216;
          sub_10019F024(v77, v32, v41, &v231);
          v216 = v78;
          sub_10006A178(v32, v41);
          sub_10006A178(v54, v36);

          v76 = v231;
        }

        v32 = 0xED00006574614465;
        v50 = v221;
        v41 = v228;
        if (!v76)
        {

          goto LABEL_28;
        }

LABEL_83:
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v36 = v230[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        goto LABEL_28;
      }

LABEL_59:
      sub_10006A178(v32, v41);
      v60 = v54;
      v61 = v36;
LABEL_60:
      sub_10006A178(v60, v61);

      v32 = 0xED00006574614465;
      v50 = v221;
      v41 = v228;
      goto LABEL_83;
    }

LABEL_27:
    sub_10006A178(v32, v41);
    sub_10006A178(v54, v36);

    v32 = 0xED00006574614465;
    v50 = v221;
    v41 = v228;
LABEL_28:
    v30 = (v30 + 1);
    v37 = 0xEC0000007265626DLL;
    if (v41 == v50)
    {
      v30 = v230;
      v79 = _swiftEmptyArrayStorage;
      goto LABEL_91;
    }
  }

  if (!v57)
  {
    v59 = BYTE6(v36);
    if (v58 > 1)
    {
      goto LABEL_42;
    }

    goto LABEL_49;
  }

  LODWORD(v59) = HIDWORD(v54) - v54;
  if (!__OFSUB__(HIDWORD(v54), v54))
  {
    v59 = v59;
    if (v58 > 1)
    {
      goto LABEL_42;
    }

    goto LABEL_49;
  }

  __break(1u);
LABEL_221:
  __break(1u);
LABEL_222:

  v162 = v214;
LABEL_225:
  sub_10018D04C(v162, v36, type metadata accessor for SESTLKShareData);
  v178 = v36;
  v179 = Logger.logObject.getter();
  v180 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v179, v180))
  {
    v181 = swift_slowAlloc();
    v182 = swift_slowAlloc();
    v183 = v178;
    v227 = v182;
    *&v231 = v182;
    *v181 = 136315138;
    v184 = sub_100289B6C(v182);
    v225 = v32;
    v185 = v184;
    v187 = v186;
    v228 = type metadata accessor for SESTLKShareData;
    sub_10018CE30(v183, type metadata accessor for SESTLKShareData);
    v188 = sub_1002FFA0C(v185, v187, &v231);

    *(v181 + 4) = v188;
    _os_log_impl(&_mh_execute_header, v179, v180, "Offending peer is %s", v181, 0xCu);
    sub_1000752F4(v227);

    sub_10006A178(v192, v193);
    sub_10006A178(v37, v41);
    sub_10006A2D0(v226, v225);
    sub_100075768(v210, &qword_100504F80, &qword_10040C510);
    v189 = v214;
    v190 = v228;
  }

  else
  {

    sub_10006A178(v192, v193);
    sub_10006A178(v37, v41);
    sub_10006A2D0(v226, v32);
    sub_10018CE30(v178, type metadata accessor for SESTLKShareData);
    sub_100075768(v210, &qword_100504F80, &qword_10040C510);
    v189 = v162;
    v190 = type metadata accessor for SESTLKShareData;
  }

  sub_10018CE30(v189, v190);
  v25 = 1;
  return v25 & 1;
}

uint64_t sub_10016EA88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[15] = v4;
  v5[16] = a4;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  v6 = sub_100068FC4(&qword_100504F78, &qword_10040C508);
  v5[17] = v6;
  v7 = *(v6 - 8);
  v5[18] = v7;
  v8 = *(v7 + 64) + 15;
  v5[19] = swift_task_alloc();
  v9 = *(*(sub_100068FC4(&qword_100504EF0, &unk_10040C470) - 8) + 64) + 15;
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v10 = type metadata accessor for SESPeerIdentityData(0);
  v5[23] = v10;
  v11 = *(v10 - 8);
  v5[24] = v11;
  v12 = *(v11 + 64) + 15;
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v13 = swift_task_alloc();
  v5[30] = v13;
  *v13 = v5;
  v13[1] = sub_10016EC64;

  return sub_10016C130();
}

uint64_t sub_10016EC64(uint64_t a1)
{
  v4 = *(*v2 + 240);
  v5 = *v2;
  v5[31] = a1;
  v5[32] = v1;

  if (v1)
  {
    v7 = v5[28];
    v6 = v5[29];
    v9 = v5[26];
    v8 = v5[27];
    v10 = v5[25];
    v12 = v5[21];
    v11 = v5[22];
    v13 = v5[20];
    v18 = v5[19];
    v14 = v5[16];

    *v14 = a1;
    v15 = v5[1];

    return v15();
  }

  else
  {
    v17 = v5[15];

    return _swift_task_switch(sub_10016EE34, v17, 0);
  }
}

uint64_t sub_10016EE34()
{
  v96 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = *(v0 + 104);
  v5 = sub_10017FB60(*(v0 + 248));
  v7 = v5;
  if (v1)
  {

    v93 = v7;
    goto LABEL_21;
  }

  v91 = v5;
  v92 = v6;
  v9 = *(v0 + 184);
  v8 = *(v0 + 192);
  v10 = *(v0 + 176);
  v12 = *(v0 + 144);
  v11 = *(v0 + 152);
  v13 = *(v0 + 136);
  v14 = *(v0 + 120);
  v15 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager__cachedLocalIdentity;
  swift_beginAccess();
  (*(v12 + 16))(v11, v14 + v15, v13);
  UserDefaultBackedCodableOptional.wrappedValue.getter();
  (*(v12 + 8))(v11, v13);
  if ((*(v8 + 48))(v10, 1, v9) == 1)
  {
    sub_100075768(*(v0 + 176), &qword_100504EF0, &unk_10040C470);
  }

  else
  {
    v16 = *(v0 + 232);
    sub_10018CF04(*(v0 + 176), v16, type metadata accessor for SESPeerIdentityData);
    v17 = v92;
    v18 = sub_10008FB4C(*v16, *(v16 + 8), v91, v92);
    v19 = *(v0 + 232);
    if (v18)
    {
      v20 = *(v0 + 224);
      v21 = *(v0 + 120);
      v22 = *(v0 + 96);
      sub_10018D04C(v19, v22, type metadata accessor for SESPeerIdentityData);
      sub_10018D04C(v22, v20, type metadata accessor for SESPeerIdentityData);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.info.getter();
      v25 = os_log_type_enabled(v23, v24);
      v26 = *(v0 + 224);
      if (v25)
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v95[0] = v28;
        *v27 = 136315138;
        v29 = sub_100289B6C(v28);
        v31 = v30;
        sub_10018CE30(v26, type metadata accessor for SESPeerIdentityData);
        v32 = sub_1002FFA0C(v29, v31, v95);

        *(v27 + 4) = v32;
        _os_log_impl(&_mh_execute_header, v23, v24, "Using cached identity for %s", v27, 0xCu);
        sub_1000752F4(v28);
        v17 = v92;
      }

      else
      {

        sub_10018CE30(v26, type metadata accessor for SESPeerIdentityData);
      }

      v49 = v91;
      sub_10018CE30(*(v0 + 232), type metadata accessor for SESPeerIdentityData);
      goto LABEL_15;
    }

    sub_10018CE30(v19, type metadata accessor for SESPeerIdentityData);
  }

  v33 = *(v0 + 120);
  sub_10017FD44(*(v0 + 248), (v0 + 264), *(v0 + 216));
  v94 = *(v0 + 208);
  v34 = *(v0 + 184);
  v35 = *(v0 + 192);
  v37 = *(v0 + 160);
  v36 = *(v0 + 168);
  v89 = *(v0 + 136);
  v90 = *(v0 + 120);
  v38 = *(v0 + 96);
  sub_10018CF04(*(v0 + 216), v38, type metadata accessor for SESPeerIdentityData);
  sub_10018D04C(v38, v36, type metadata accessor for SESPeerIdentityData);
  (*(v35 + 56))(v36, 0, 1, v34);
  sub_1000938D4(v36, v37, &qword_100504EF0, &unk_10040C470);
  swift_beginAccess();
  UserDefaultBackedCodableOptional.wrappedValue.setter();
  swift_endAccess();
  sub_100075768(v36, &qword_100504EF0, &unk_10040C470);
  sub_10018D04C(v38, v94, type metadata accessor for SESPeerIdentityData);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.info.getter();
  v41 = os_log_type_enabled(v39, v40);
  v42 = *(v0 + 208);
  if (v41)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v95[0] = v44;
    *v43 = 136315138;
    v45 = sub_100289B6C(v44);
    v47 = v46;
    sub_10018CE30(v42, type metadata accessor for SESPeerIdentityData);
    v48 = sub_1002FFA0C(v45, v47, v95);

    *(v43 + 4) = v48;
    _os_log_impl(&_mh_execute_header, v39, v40, "Created & cached device identity for %s", v43, 0xCu);
    sub_1000752F4(v44);
  }

  else
  {

    sub_10018CE30(v42, type metadata accessor for SESPeerIdentityData);
  }

  v49 = v91;
  v17 = v92;
LABEL_15:
  v50 = *(v0 + 120);
  if (sub_100180030(*(v0 + 96), *(v0 + 104), *(v0 + 112), v49, v17))
  {
    sub_10018D04C(*(v0 + 96), *(v0 + 200), type metadata accessor for SESPeerIdentityData);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.info.getter();
    v53 = os_log_type_enabled(v51, v52);
    v54 = *(v0 + 248);
    v55 = *(v0 + 200);
    if (v53)
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v95[0] = v57;
      *v56 = 136315138;
      v58 = sub_100289B6C(v57);
      v60 = v59;
      sub_10018CE30(v55, type metadata accessor for SESPeerIdentityData);
      v61 = sub_1002FFA0C(v58, v60, v95);

      *(v56 + 4) = v61;
      _os_log_impl(&_mh_execute_header, v51, v52, "Got SE identity: %s", v56, 0xCu);
      sub_1000752F4(v57);

      sub_10006A178(v49, v92);
    }

    else
    {
      sub_10006A178(v49, v17);

      sub_10018CE30(v55, type metadata accessor for SESPeerIdentityData);
    }

    v81 = *(v0 + 224);
    v80 = *(v0 + 232);
    v83 = *(v0 + 208);
    v82 = *(v0 + 216);
    v84 = *(v0 + 200);
    v86 = *(v0 + 168);
    v85 = *(v0 + 176);
    v88 = *(v0 + 152);
    v87 = *(v0 + 160);

    v78 = *(v0 + 8);
    goto LABEL_22;
  }

  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    *v64 = 0;
    _os_log_impl(&_mh_execute_header, v62, v63, "DSID mismatch!", v64, 2u);
  }

  v65 = *(v0 + 248);

  sub_1001A44E0(v65);
  v66 = *(v0 + 248);
  v67 = *(v0 + 96);
  v93 = 29;
  *(v0 + 265) = 29;
  sub_10018C6D8();
  swift_willThrowTypedImpl();
  sub_10006A178(v49, v17);

  sub_10018CE30(v67, type metadata accessor for SESPeerIdentityData);
LABEL_21:
  v69 = *(v0 + 224);
  v68 = *(v0 + 232);
  v71 = *(v0 + 208);
  v70 = *(v0 + 216);
  v72 = *(v0 + 200);
  v74 = *(v0 + 168);
  v73 = *(v0 + 176);
  v76 = *(v0 + 152);
  v75 = *(v0 + 160);
  v77 = *(v0 + 128);

  *v77 = v93;
  v78 = *(v0 + 8);
LABEL_22:

  return v78();
}

uint64_t sub_10016F7E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[72] = v3;
  v4[71] = a3;
  v4[70] = a2;
  v4[69] = a1;
  v5 = type metadata accessor for SESPeerIdentityData(0);
  v4[73] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[74] = swift_task_alloc();

  return _swift_task_switch(sub_10016F888, v3, 0);
}

uint64_t sub_10016F888()
{
  v1 = v0[70];
  v2 = v0[69];
  v3 = *(v0[72] + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_keychainWrapper);
  v0[75] = v3;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v0[76] = isa;
  v0[2] = v0;
  v0[7] = v0 + 50;
  v0[3] = sub_10016F9D4;
  v5 = swift_continuation_init();
  v0[33] = sub_100068FC4(&qword_100504F68, &unk_10040C4F8);
  v0[26] = _NSConcreteStackBlock;
  v0[27] = 1107296256;
  v0[28] = sub_100180E2C;
  v0[29] = &unk_1004C9548;
  v0[30] = v5;
  [v3 getSEPeerIdentityInfo:isa withCompletion:v0 + 26];

  return _swift_continuation_await(v0 + 2);
}