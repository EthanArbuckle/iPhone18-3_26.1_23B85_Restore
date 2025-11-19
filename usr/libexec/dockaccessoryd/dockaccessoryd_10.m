uint64_t sub_100164FA8(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v51 = a1;
  v43 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v43 - 8);
  v3 = v2[8];
  __chkstk_darwin(v43);
  v45 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for DispatchQoS();
  v5 = *(v42 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v42);
  v48 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002A6780 != -1)
  {
LABEL_21:
    swift_once();
  }

  v8 = qword_1002B1CF0;
  sub_1001F1EF0(_swiftEmptyArrayStorage);

  v9 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__clientLock;
  v10 = *(v8 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__clientLock);

  os_unfair_lock_lock(v10 + 4);

  v11 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyBatteryClients;
  swift_beginAccess();
  v12 = *(v8 + v11);
  v50 = v8;
  v13 = *(v8 + v9);

  os_unfair_lock_unlock(v13 + 4);

  v14 = 0;
  v15 = 1 << *(v12 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v12 + 64);
  v49 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__txnLock;
  v46 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_txn;
  v18 = (v15 + 63) >> 6;
  v41 = v53;
  v40 = v2 + 1;
  v39 = (v5 + 8);
  while (v17)
  {
LABEL_11:
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v21 = *(v12 + 56) + ((v14 << 10) | (16 * v20));
    if (*v21)
    {
      v22 = *(v21 + 8);
      v2 = *v21;
      v5 = v22;
      v23 = [v2 remoteObjectProxy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_100095274(&qword_1002A91F8, &qword_10023F050);
      if (swift_dynamicCast())
      {
        v24 = v54;
        sub_100095B94(0, &qword_1002A7270, NSObject_ptr);
        v25 = v5;
        v5 = static NSObject.== infix(_:_:)();

        if (v5)
        {
          v44 = v24;
          v26 = v50;
          v27 = *(v50 + v49);

          os_unfair_lock_lock(v27 + 4);

          v28 = *(v26 + v46);
          if (v28)
          {
            v29 = *(v28 + 24);
            if (v29)
            {
              v53[2] = sub_1000BABC4;
              v53[3] = v28;
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = 1107296256;
              v53[0] = sub_100147FC8;
              v53[1] = &unk_100279430;
              v38 = v28;
              v37 = _Block_copy(aBlock);
              swift_retain_n();
              v36 = v29;
              static DispatchQoS.unspecified.getter();
              v54 = _swiftEmptyArrayStorage;
              v35 = sub_10016947C(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags);
              sub_100095274(&unk_1002A6B60, qword_10023AE10);
              sub_1000E4D54(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
              v30 = v43;
              dispatch thunk of SetAlgebra.init<A>(_:)();
              v31 = v37;
              v32 = v36;
              OS_dispatch_queue.async(group:qos:flags:execute:)();
              _Block_release(v31);

              (*v40)(v45, v30);
              (*v39)(v48, v42);
            }
          }

          v33 = *(v50 + v49);

          os_unfair_lock_unlock(v33 + 4);

          v5 = v44;
          [v44 batteryStateDataWithInfo:v51 data:v47];
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v19 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_21;
    }

    if (v19 >= v18)
    {
    }

    v17 = *(v12 + 64 + 8 * v19);
    ++v14;
    if (v17)
    {
      v14 = v19;
      goto LABEL_11;
    }
  }
}

void sub_1001655C8(void *a1, uint64_t a2)
{
  v437 = a1;
  v420 = type metadata accessor for ComponentType();
  v3 = *(v420 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v420);
  v419 = &v406 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100095274(&unk_1002A9330, &qword_10023DEE0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v406 - v8;
  v10 = type metadata accessor for TrajectoryCommand.Progress();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v429 = (&v406 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v444 = type metadata accessor for Logger();
  v14 = *(*(v444 - 8) + 64);
  v15 = __chkstk_darwin(v444);
  v425 = &v406 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v426 = &v406 - v18;
  v19 = __chkstk_darwin(v17);
  v418 = &v406 - v20;
  v21 = __chkstk_darwin(v19);
  v430 = &v406 - v22;
  v23 = __chkstk_darwin(v21);
  v424 = &v406 - v24;
  v25 = __chkstk_darwin(v23);
  v26 = __chkstk_darwin(v25);
  v28 = &v406 - v27;
  v29 = __chkstk_darwin(v26);
  __chkstk_darwin(v29);
  v435 = &v406 - v34;
  if (!a2)
  {
    return;
  }

  v447 = *(a2 + 16);
  if (!v447)
  {
    return;
  }

  v35 = 0;
  v36 = 0;
  v436 = OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_manager;
  v446 = a2 + 32;
  v440 = (v30 + 16);
  v441 = OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger;
  v439 = (v30 + 8);
  v417 = "com.apple.dockaccessoryd.server";
  v421 = (v11 + 48);
  v412 = (v11 + 8);
  v413 = (v11 + 32);
  v411 = enum case for ComponentType.Battery(_:);
  v410 = (v3 + 104);
  v409 = (v3 + 8);
  *&v33 = 136315138;
  v434 = v33;
  *&v33 = 138412290;
  v416 = v33;
  *&v33 = 136316162;
  v408 = v33;
  v422 = v9;
  v423 = v10;
  v414 = v31;
  v445 = v28;
  v433 = v32;
  while (2)
  {
    v450 = v35;
    sub_100095B34(v446 + 32 * v35, v458);
    sub_100095B34(v458, &v454);
    v37 = sub_100095B94(0, &qword_1002A92F0, off_100271C60);
    v38 = swift_dynamicCast();
    v451 = v37;
    if ((v38 & 1) == 0)
    {
      goto LABEL_59;
    }

    v39 = v452;
    v40 = [v452 cbCharacteristic];
    if (!v40)
    {
      goto LABEL_311;
    }

    v41 = v40;
    v42 = sub_100095B94(0, &qword_1002A7270, NSObject_ptr);
    v43 = [v41 UUID];

    if (qword_1002A6728 != -1)
    {
      swift_once();
    }

    v44 = static NSObject.== infix(_:_:)();

    if ((v44 & 1) == 0)
    {

      goto LABEL_59;
    }

    if ([v39 value])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v452 = 0u;
      v453 = 0u;
    }

    v45 = v435;
    v454 = v452;
    v455 = v453;
    if (!*(&v453 + 1))
    {
      sub_100095808(v458);

      sub_100095C84(&v454, &qword_1002A9210, &unk_10023BE70);
      return;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_100095808(v458);

      return;
    }

    v448 = v36;
    v443 = __dst;
    v46 = __dst & 1;
    v47 = *v440;
    v48 = v444;
    (*v440)(v45, v449 + v441, v444);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    v51 = os_log_type_enabled(v49, v50);
    v438 = v39;
    v431 = v46;
    v432 = v42;
    if (v51)
    {
      v52 = swift_slowAlloc();
      v53 = v48;
      v54 = swift_slowAlloc();
      *&v454 = v54;
      *v52 = v434;
      if (v46)
      {
        v55 = 0x64656C62616E45;
      }

      else
      {
        v55 = 0x64656C6261736944;
      }

      if (v46)
      {
        v56 = 0xE700000000000000;
      }

      else
      {
        v56 = 0xE800000000000000;
      }

      v57 = sub_1000952D4(v55, v56, &v454);

      *(v52 + 4) = v57;
      _os_log_impl(&_mh_execute_header, v49, v50, "Tracking is %s!", v52, 0xCu);
      sub_100095808(v54);
      v48 = v53;
    }

    v58 = *v439;
    (*v439)(v45, v48);
    v59 = v433;
    v47(v433, v449 + v441, v48);
    v60 = v59;
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();
    v63 = os_log_type_enabled(v61, v62);
    v64 = v443;
    if (v63)
    {
      v65 = swift_slowAlloc();
      v66 = v48;
      v67 = swift_slowAlloc();
      *&v454 = v67;
      *v65 = v434;
      if ((v64 >> 1))
      {
        v68 = 1701736260;
      }

      else
      {
        v68 = 0x656E6F44746F4ELL;
      }

      if ((v64 >> 1))
      {
        v69 = 0xE400000000000000;
      }

      else
      {
        v69 = 0xE700000000000000;
      }

      v64 = sub_1000952D4(v68, v69, &v454);

      *(v65 + 4) = v64;
      LOBYTE(v64) = v443;
      _os_log_impl(&_mh_execute_header, v61, v62, "Startup done is %s!", v65, 0xCu);
      sub_100095808(v67);

      v70 = v60;
      v71 = v66;
    }

    else
    {

      v70 = v60;
      v71 = v48;
    }

    v58(v70, v71);
    v72 = v437;
    v73 = v438;
    v28 = v445;
    v36 = v448;
    if ((v64 & 2) != 0)
    {
      if (qword_1002A6780 != -1)
      {
        swift_once();
      }

      v74 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
      sub_1000E0C3C();

      v72 = v437;
    }

    v75 = *(v449 + v436);
    if (!v75)
    {

      v456 = 0;
      v454 = 0u;
      v455 = 0u;
LABEL_58:
      sub_100095C84(&v454, &unk_1002A6F40, &unk_10023BE90);
      goto LABEL_59;
    }

    if (!v72)
    {
      goto LABEL_317;
    }

    v76 = v75;
    v77 = [v72 identifier];
    if (!v77)
    {
      goto LABEL_316;
    }

    v78 = v77;
    v442 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v80 = v79;

    v81 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
    v82 = *&v76[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
    OS_dispatch_semaphore.wait()();

    v83 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
    swift_beginAccess();
    v84 = *&v76[v83];
    v85 = *(v84 + 16);
    if (!v85)
    {

LABEL_57:
      v98 = *&v76[v81];
      OS_dispatch_semaphore.signal()();

      v456 = 0;
      v454 = 0u;
      v455 = 0u;
      goto LABEL_58;
    }

    v443 = v80;
    v427 = v81;
    v428 = v76;
    v86 = v84 + 32;

    v87 = 0;
    while (1)
    {
      if (v87 >= *(v84 + 16))
      {
        __break(1u);
LABEL_306:
        __break(1u);
LABEL_307:
        __break(1u);
LABEL_308:
        __break(1u);
LABEL_309:
        __break(1u);
LABEL_310:
        __break(1u);
LABEL_311:
        __break(1u);
LABEL_312:
        __break(1u);
LABEL_313:
        __break(1u);
LABEL_314:
        __break(1u);
LABEL_315:
        __break(1u);
LABEL_316:
        __break(1u);
LABEL_317:
        __break(1u);
      }

      sub_1000A097C(v86, &v452);
      v88 = *(*sub_1000A09E0(&v452, *(&v453 + 1)) + 32);
      if (!v88)
      {
        goto LABEL_44;
      }

      v89 = v88;
      v90 = [v89 identifier];
      if (v90)
      {
        break;
      }

LABEL_43:

LABEL_44:
      ++v87;
      sub_100095808(&v452);
      v86 += 40;
      if (v85 == v87)
      {

        v28 = v445;
        v81 = v427;
        v76 = v428;
        goto LABEL_57;
      }
    }

    v91 = v90;
    v92 = v36;
    v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v95 = v94;

    if (v93 != v442 || v95 != v443)
    {
      v97 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v36 = v92;
      if (v97)
      {

        goto LABEL_92;
      }

      goto LABEL_43;
    }

LABEL_92:

    v141 = v428;
    v142 = *&v428[v427];
    OS_dispatch_semaphore.signal()();

    sub_1000A097C(&v452, &v454);
    sub_100095808(&v452);
    v28 = v445;
    if (!*(&v455 + 1))
    {

      v36 = v92;
      goto LABEL_58;
    }

    sub_100095274(&unk_1002A7A90, &unk_10023C960);
    type metadata accessor for DaemonAccessory();
    v36 = v92;
    if (swift_dynamicCast())
    {
      v143 = v452;
      if (qword_1002A6780 != -1)
      {
        swift_once();
      }

      v144 = qword_1002B1CF0;
      v145 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
      v146 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

      os_unfair_lock_lock(v146 + 4);

      v147 = *(v144 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
      v148 = *(v144 + v145);
      v149 = v147;

      os_unfair_lock_unlock(v148 + 4);

      if (v147)
      {
        v150 = dispatch thunk of DockCoreAccessory.info.getter();
        v151 = *(v143 + 24);
        v152 = static NSObject.== infix(_:_:)();

        v153 = v438;
        if (v152)
        {
          v154 = v431;
          *(v143 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_trackingEnabled) = v431;
          sub_100189E44(v154);
        }
      }

      else
      {
      }
    }

    else
    {
    }

LABEL_59:
    sub_100095B34(v458, &v454);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_110;
    }

    v99 = v452;
    v100 = [v452 cbCharacteristic];
    if (!v100)
    {
      goto LABEL_312;
    }

    v101 = v100;
    sub_100095B94(0, &qword_1002A7270, NSObject_ptr);
    v102 = [v101 UUID];

    if (qword_1002A6748 != -1)
    {
      swift_once();
    }

    v103 = static NSObject.== infix(_:_:)();

    if ((v103 & 1) == 0)
    {
LABEL_75:

      goto LABEL_110;
    }

    if ([v99 value])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v452 = 0u;
      v453 = 0u;
    }

    v454 = v452;
    v455 = v453;
    if (!*(&v453 + 1))
    {

      v133 = &qword_1002A9210;
      v134 = &unk_10023BE70;
LABEL_109:
      sub_100095C84(&v454, v133, v134);
      goto LABEL_110;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_75;
    }

    v104 = __dst;
    v105 = objc_opt_self();
    v438 = *(&v104 + 1);
    v432 = v104;
    isa = Data._bridgeToObjectiveC()().super.isa;
    *&v454 = 0;
    v107 = [v105 parsedFromData:isa error:&v454];

    v108 = v107;
    v109 = v454;
    if (!v108)
    {
      v135 = v454;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      goto LABEL_89;
    }

    v110 = *(v449 + v436);
    if (!v110)
    {
      v155 = v454;

      sub_1000A0D2C(v432, v438);
      v456 = 0;
      v454 = 0u;
      v455 = 0u;
LABEL_108:
      v133 = &unk_1002A6F40;
      v134 = &unk_10023BE90;
      goto LABEL_109;
    }

    v431 = v108;
    v111 = v437;
    if (!v437)
    {
      goto LABEL_322;
    }

    v112 = v110;
    v113 = v109;
    v114 = [v111 identifier];
    if (!v114)
    {
      goto LABEL_321;
    }

    v115 = v114;
    v442 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v117 = v116;

    v427 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
    v118 = *&v112[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
    OS_dispatch_semaphore.wait()();

    v119 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
    swift_beginAccess();
    v428 = v112;
    v120 = *&v112[v119];
    v121 = *(v120 + 16);
    if (!v121)
    {

LABEL_107:
      v156 = v428;
      v157 = *&v428[v427];
      OS_dispatch_semaphore.signal()();

      sub_1000A0D2C(v432, v438);
      v456 = 0;
      v454 = 0u;
      v455 = 0u;
      v28 = v445;
      goto LABEL_108;
    }

    v443 = v117;
    v448 = v36;
    v122 = v120 + 32;

    v123 = 0;
    while (1)
    {
      if (v123 >= *(v120 + 16))
      {
        goto LABEL_306;
      }

      sub_1000A097C(v122, &v452);
      v124 = *(*sub_1000A09E0(&v452, *(&v453 + 1)) + 32);
      if (!v124)
      {
        goto LABEL_77;
      }

      v125 = v124;
      v126 = [v125 identifier];
      if (v126)
      {
        break;
      }

LABEL_76:

LABEL_77:
      ++v123;
      sub_100095808(&v452);
      v122 += 40;
      if (v121 == v123)
      {

        v36 = v448;
        goto LABEL_107;
      }
    }

    v127 = v126;
    v128 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v130 = v129;

    if (v128 != v442 || v130 != v443)
    {
      v132 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v132)
      {

        goto LABEL_245;
      }

      goto LABEL_76;
    }

LABEL_245:

    v322 = v428;
    v323 = *&v428[v427];
    OS_dispatch_semaphore.signal()();

    sub_1000A097C(&v452, &v454);
    sub_100095808(&v452);
    v28 = v445;
    v36 = v448;
    v324 = v431;
    if (!*(&v455 + 1))
    {

      sub_1000A0D2C(v432, v438);
      goto LABEL_108;
    }

    sub_100095274(&unk_1002A7A90, &unk_10023C960);
    type metadata accessor for DaemonAccessory();
    if (swift_dynamicCast())
    {
      v325 = v452;
      v326 = *(v449 + v436);
      if (v326)
      {
        v327 = *(v326 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_firmwareUpdateManager);
        sub_10014BB80(v325, v324);
        if (v36)
        {

LABEL_89:
          v36 = 0;
          (*v440)(v426, v449 + v441, v444);
          swift_errorRetain();
          v136 = Logger.logObject.getter();
          v137 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v136, v137))
          {
            v138 = swift_slowAlloc();
            v139 = swift_slowAlloc();
            *v138 = v416;
            swift_errorRetain();
            v140 = _swift_stdlib_bridgeErrorToNSError();
            *(v138 + 4) = v140;
            *v139 = v140;
            _os_log_impl(&_mh_execute_header, v136, v137, "error parsing firmware update readiness %@", v138, 0xCu);
            sub_100095C84(v139, &unk_1002A6F60, &unk_10023C4E0);

            sub_1000A0D2C(v432, v438);
          }

          else
          {

            sub_1000A0D2C(v432, v438);
          }

          (*v439)(v426, v444);
        }

        else
        {

          sub_1000A0D2C(v432, v438);
        }
      }

      else
      {

        sub_1000A0D2C(v432, v438);
      }
    }

    else
    {

      sub_1000A0D2C(v432, v438);
    }

LABEL_110:
    sub_100095B34(v458, &v454);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_150;
    }

    v158 = v452;
    v159 = [v452 cbCharacteristic];
    if (!v159)
    {
      goto LABEL_313;
    }

    v160 = v159;
    sub_100095B94(0, &qword_1002A7270, NSObject_ptr);
    v161 = [v160 UUID];

    if (qword_1002A6750 != -1)
    {
      swift_once();
    }

    v162 = static NSObject.== infix(_:_:)();

    if ((v162 & 1) == 0)
    {
LABEL_126:

      goto LABEL_150;
    }

    if ([v158 value])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v452 = 0u;
      v453 = 0u;
    }

    v454 = v452;
    v455 = v453;
    if (!*(&v453 + 1))
    {

      v192 = &qword_1002A9210;
      v193 = &unk_10023BE70;
LABEL_149:
      sub_100095C84(&v454, v192, v193);
      goto LABEL_150;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_126;
    }

    v163 = __dst;
    v164 = objc_opt_self();
    v438 = *(&v163 + 1);
    v432 = v163;
    v165 = Data._bridgeToObjectiveC()().super.isa;
    *&v454 = 0;
    v166 = [v164 parsedFromData:v165 error:&v454];

    v167 = v166;
    v168 = v454;
    if (!v167)
    {
      v194 = v454;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      goto LABEL_140;
    }

    v169 = *(v449 + v436);
    if (!v169)
    {
      v200 = v454;

      sub_1000A0D2C(v432, v438);
      v456 = 0;
      v454 = 0u;
      v455 = 0u;
LABEL_148:
      v192 = &unk_1002A6F40;
      v193 = &unk_10023BE90;
      goto LABEL_149;
    }

    v431 = v167;
    v170 = v437;
    if (!v437)
    {
      goto LABEL_320;
    }

    v171 = v169;
    v172 = v168;
    v173 = [v170 identifier];
    if (!v173)
    {
      goto LABEL_319;
    }

    v174 = v173;
    v442 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v176 = v175;

    v427 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
    v177 = *&v171[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
    OS_dispatch_semaphore.wait()();

    v178 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
    swift_beginAccess();
    v428 = v171;
    v179 = *&v171[v178];
    v180 = *(v179 + 16);
    if (!v180)
    {

LABEL_147:
      v201 = v428;
      v202 = *&v428[v427];
      OS_dispatch_semaphore.signal()();

      sub_1000A0D2C(v432, v438);
      v456 = 0;
      v454 = 0u;
      v455 = 0u;
      v28 = v445;
      goto LABEL_148;
    }

    v443 = v176;
    v448 = v36;
    v181 = v179 + 32;

    v182 = 0;
    while (1)
    {
      if (v182 >= *(v179 + 16))
      {
        goto LABEL_307;
      }

      sub_1000A097C(v181, &v452);
      v183 = *(*sub_1000A09E0(&v452, *(&v453 + 1)) + 32);
      if (!v183)
      {
        goto LABEL_128;
      }

      v184 = v183;
      v185 = [v184 identifier];
      if (v185)
      {
        break;
      }

LABEL_127:

LABEL_128:
      ++v182;
      sub_100095808(&v452);
      v181 += 40;
      if (v180 == v182)
      {

        v36 = v448;
        goto LABEL_147;
      }
    }

    v186 = v185;
    v187 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v189 = v188;

    if (v187 != v442 || v189 != v443)
    {
      v191 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v191)
      {

        goto LABEL_251;
      }

      goto LABEL_127;
    }

LABEL_251:

    v328 = v428;
    v329 = *&v428[v427];
    OS_dispatch_semaphore.signal()();

    sub_1000A097C(&v452, &v454);
    sub_100095808(&v452);
    v28 = v445;
    v36 = v448;
    v330 = v431;
    if (!*(&v455 + 1))
    {

      sub_1000A0D2C(v432, v438);
      goto LABEL_148;
    }

    sub_100095274(&unk_1002A7A90, &unk_10023C960);
    type metadata accessor for DaemonAccessory();
    if (swift_dynamicCast())
    {
      v331 = v452;
      v332 = *(v449 + v436);
      if (v332)
      {
        v333 = *(v332 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_firmwareUpdateManager);
        sub_10014C008(v331, v330);
        if (v36)
        {

LABEL_140:
          v36 = 0;
          (*v440)(v425, v449 + v441, v444);
          swift_errorRetain();
          v195 = Logger.logObject.getter();
          v196 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v195, v196))
          {
            v197 = swift_slowAlloc();
            v198 = swift_slowAlloc();
            *v197 = v416;
            swift_errorRetain();
            v199 = _swift_stdlib_bridgeErrorToNSError();
            *(v197 + 4) = v199;
            *v198 = v199;
            _os_log_impl(&_mh_execute_header, v195, v196, "error parsing firmware update update status %@", v197, 0xCu);
            sub_100095C84(v198, &unk_1002A6F60, &unk_10023C4E0);

            sub_1000A0D2C(v432, v438);
          }

          else
          {

            sub_1000A0D2C(v432, v438);
          }

          (*v439)(v425, v444);
        }

        else
        {

          sub_1000A0D2C(v432, v438);
        }
      }

      else
      {

        sub_1000A0D2C(v432, v438);
      }
    }

    else
    {

      sub_1000A0D2C(v432, v438);
    }

LABEL_150:
    sub_100095B34(v458, &v454);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_191;
    }

    v203 = v452;
    v204 = [v452 cbCharacteristic];
    if (!v204)
    {
      goto LABEL_314;
    }

    v205 = v204;
    sub_100095B94(0, &qword_1002A7270, NSObject_ptr);
    v206 = [v205 UUID];

    if (qword_1002A6730 != -1)
    {
      swift_once();
    }

    v207 = static NSObject.== infix(_:_:)();

    if ((v207 & 1) == 0)
    {
      goto LABEL_165;
    }

    if ([v203 value])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v452 = 0u;
      v453 = 0u;
    }

    v454 = v452;
    v455 = v453;
    if (!*(&v453 + 1))
    {

      sub_100095C84(&v454, &qword_1002A9210, &unk_10023BE70);
      goto LABEL_191;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_165:

      goto LABEL_191;
    }

    v448 = v36;
    v442 = *(&__dst + 1);
    v208 = __dst;
    v209 = v28;
    v210 = *v440;
    (*v440)(v209, v449 + v441, v444);
    v211 = Logger.logObject.getter();
    v212 = static os_log_type_t.debug.getter();
    v213 = os_log_type_enabled(v211, v212);
    v443 = v208;
    if (v213)
    {
      v214 = swift_slowAlloc();
      v215 = swift_slowAlloc();
      *&v454 = v215;
      *v214 = v434;
      *(v214 + 4) = sub_1000952D4(0xD00000000000004BLL, v417 | 0x8000000000000000, &v454);
      _os_log_impl(&_mh_execute_header, v211, v212, "%s Decoding trajectory status from ADK", v214, 0xCu);
      sub_100095808(v215);

      v208 = v443;
    }

    v216 = *v439;
    (*v439)(v209, v444);
    v217 = v442;
    sub_1000A0CD8(v208, v442);
    v218 = v422;
    TrajectoryCommand.Progress.init(data:)();
    v219 = v423;
    v220 = (*v421)(v218, 1, v423);
    v36 = v448;
    if (v220 == 1)
    {

      sub_1000A0D2C(v208, v217);
      sub_100095C84(v218, &unk_1002A9330, &qword_10023DEE0);
      goto LABEL_164;
    }

    (*v413)(v429, v218, v219);
    v221 = v414;
    v210(v414, v449 + v441, v444);
    v222 = v221;
    v223 = Logger.logObject.getter();
    v224 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v223, v224))
    {
      v225 = swift_slowAlloc();
      v226 = swift_slowAlloc();
      *&v454 = v226;
      *v225 = v434;
      *(v225 + 4) = sub_1000952D4(0xD00000000000004BLL, v417 | 0x8000000000000000, &v454);
      _os_log_impl(&_mh_execute_header, v223, v224, "%s Received trajectory status from ADK", v225, 0xCu);
      sub_100095808(v226);
    }

    v216(v222, v444);
    v227 = v442;
    v228 = v443;
    v229 = v437;
    v230 = *(v449 + v436);
    v231 = v423;
    if (!v230)
    {

      sub_1000A0D2C(v228, v227);
      (*v412)(v429, v231);
      v456 = 0;
      v454 = 0u;
      v455 = 0u;
      goto LABEL_190;
    }

    if (!v437)
    {
      goto LABEL_326;
    }

    v232 = v230;
    v233 = [v229 identifier];
    if (!v233)
    {
      goto LABEL_325;
    }

    v234 = v233;
    v432 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v438 = v235;

    v428 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
    v236 = *&v232[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
    OS_dispatch_semaphore.wait()();

    v237 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
    swift_beginAccess();
    v431 = v232;
    v238 = *&v232[v237];
    v239 = *(v238 + 16);
    if (!v239)
    {

LABEL_188:
      v251 = v431;
      v252 = *&v428[v431];
      OS_dispatch_semaphore.signal()();

      sub_1000A0D2C(v228, v227);
      v456 = 0;
      v454 = 0u;
      v455 = 0u;
      v36 = v448;
LABEL_189:
      (*v412)(v429, v231);
LABEL_190:
      sub_100095C84(&v454, &unk_1002A6F40, &unk_10023BE90);
      v28 = v445;
      goto LABEL_191;
    }

    v240 = v238 + 32;

    v241 = 0;
    while (1)
    {
      if (v241 >= *(v238 + 16))
      {
        goto LABEL_308;
      }

      sub_1000A097C(v240, &v452);
      v242 = *(*sub_1000A09E0(&v452, *(&v453 + 1)) + 32);
      if (!v242)
      {
        goto LABEL_175;
      }

      v243 = v242;
      v244 = [v243 identifier];
      if (v244)
      {
        break;
      }

LABEL_174:

      v228 = v443;
LABEL_175:
      ++v241;
      sub_100095808(&v452);
      v240 += 40;
      if (v239 == v241)
      {

        v231 = v423;
        v227 = v442;
        goto LABEL_188;
      }
    }

    v245 = v244;
    v246 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v248 = v247;

    if (v246 != v432 || v248 != v438)
    {
      v250 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v250)
      {

        goto LABEL_257;
      }

      goto LABEL_174;
    }

LABEL_257:

    v334 = v431;
    v335 = *&v428[v431];
    OS_dispatch_semaphore.signal()();

    sub_1000A097C(&v452, &v454);
    sub_100095808(&v452);
    v231 = v423;
    v36 = v448;
    v337 = v442;
    v336 = v443;
    if (!*(&v455 + 1))
    {

      sub_1000A0D2C(v336, v337);
      goto LABEL_189;
    }

    sub_100095274(&unk_1002A7A90, &unk_10023C960);
    type metadata accessor for DaemonAccessory();
    v338 = swift_dynamicCast();
    if (v338)
    {
      v438 = &v406;
      v339 = v452;
      v340 = *(v452 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_callbackLock);
      v341 = __chkstk_darwin(v338);
      v342 = v429;
      *(&v406 - 2) = v429;
      *(&v406 - 1) = v339;
      __chkstk_darwin(v341);
      *(&v406 - 2) = sub_1001698F0;
      *(&v406 - 1) = v343;

      os_unfair_lock_lock(v340 + 4);
      sub_1000F003C(v344);
      os_unfair_lock_unlock(v340 + 4);

      sub_1000A0D2C(v443, v337);

      (*v412)(v342, v231);
    }

    else
    {
      (*v412)(v429, v231);

      sub_1000A0D2C(v336, v337);
    }

LABEL_164:
    v28 = v445;
LABEL_191:
    sub_100095B34(v458, &v454);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_100095808(v458);
      goto LABEL_5;
    }

    v253 = v452;
    if ([v452 value])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v452 = 0u;
      v453 = 0u;
    }

    v454 = v452;
    v455 = v453;
    if (!*(&v453 + 1))
    {
      sub_100095808(v458);

      sub_100095C84(&v454, &qword_1002A9210, &unk_10023BE70);
LABEL_204:
      v28 = v445;
      goto LABEL_5;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_100095808(v458);

      goto LABEL_204;
    }

    v443 = *(&__dst + 1);
    v451 = __dst;
    v254 = [v253 cbCharacteristic];
    if (!v254)
    {
      goto LABEL_315;
    }

    v255 = v254;
    v256 = [v254 UUID];

    v257 = [v256 data];
    v258 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v260 = v259;

    sub_1001A36A0(12, v258, v260, &v452);
    v261 = v452;
    v262 = sub_100095274(&unk_1002A7B10, &unk_10023F3A0);
    *(&v455 + 1) = v262;
    v456 = sub_1000E4D54(&qword_1002A9C30, &unk_1002A7B10, &unk_10023F3A0);
    *&v454 = &off_100274C28;
    v263 = sub_1000A09E0(&v454, v262);
    v264 = *v263;
    v265 = *(*v263 + 16);
    if (v265)
    {
      if (v265 <= 0xE)
      {
        *(&__dst + 6) = 0;
        *&__dst = 0;
        BYTE14(__dst) = v265;
        memcpy(&__dst, (v264 + 32), v265);
        v272 = __dst;
        v273 = v415 & 0xF00000000000000 | DWORD2(__dst) | ((WORD6(__dst) | (BYTE14(__dst) << 16)) << 32);
        v415 = v273;
      }

      else
      {
        v266 = v36;
        v267 = type metadata accessor for __DataStorage();
        v268 = *(v267 + 48);
        v269 = *(v267 + 52);
        swift_allocObject();
        v270 = __DataStorage.init(bytes:length:)();
        v271 = v270;
        if (v265 >= 0x7FFFFFFF)
        {
          type metadata accessor for Data.RangeReference();
          v272 = swift_allocObject();
          *(v272 + 16) = 0;
          *(v272 + 24) = v265;
          v273 = v271 | 0x8000000000000000;
        }

        else
        {
          v272 = v265 << 32;
          v273 = v270 | 0x4000000000000000;
        }

        v36 = v266;
      }
    }

    else
    {
      v272 = 0;
      v273 = 0xC000000000000000;
    }

    sub_100095808(&v454);
    v274 = sub_1001ACC84(v261, *(&v261 + 1), v272, v273);
    sub_1000A0D2C(v272, v273);
    sub_1000A0D2C(v261, *(&v261 + 1));

    if ((v274 & 1) == 0)
    {
      sub_100095808(v458);

      sub_1000A0D2C(v451, v443);
      v28 = v445;
      goto LABEL_5;
    }

    v275 = [v253 cbCharacteristic];
    if (v275)
    {
      v276 = v275;
      v277 = [v275 UUID];

      v278 = sub_10013C30C();
      if (qword_1002A6760 != -1)
      {
        swift_once();
      }

      if (v278 != sub_10013C30C())
      {
        sub_100095808(v458);

        sub_1000A0D2C(v451, v443);
        goto LABEL_204;
      }

      v279 = v424;
      v280 = v444;
      v431 = *v440;
      (v431)(v424, v449 + v441, v444);
      v281 = v451;
      v282 = v443;
      sub_1000A0CD8(v451, v443);
      v283 = Logger.logObject.getter();
      v284 = static os_log_type_t.default.getter();
      sub_1000A0D2C(v281, v282);
      if (os_log_type_enabled(v283, v284))
      {
        v285 = swift_slowAlloc();
        v286 = swift_slowAlloc();
        *&v454 = v286;
        *v285 = v434;
        v287 = sub_10013B46C(v281, v282);
        v289 = sub_1000952D4(v287, v288, &v454);

        *(v285 + 4) = v289;
        _os_log_impl(&_mh_execute_header, v283, v284, "Sensor Data: %s", v285, 0xCu);
        sub_100095808(v286);

        v290 = *v439;
        v291 = v424;
        v292 = v444;
      }

      else
      {

        v290 = *v439;
        v291 = v279;
        v292 = v280;
      }

      v432 = v290;
      v290(v291, v292);
      (v431)(v430, v449 + v441, v444);
      v293 = v253;
      v294 = Logger.logObject.getter();
      v295 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v294, v295))
      {
        v296 = swift_slowAlloc();
        v297 = swift_slowAlloc();
        *v296 = v416;
        *(v296 + 4) = v293;
        *v297 = v293;
        v298 = v293;
        _os_log_impl(&_mh_execute_header, v294, v295, "Characteristic: %@", v296, 0xCu);
        sub_100095C84(v297, &unk_1002A6F60, &unk_10023C4E0);
      }

      v438 = v293;

      v432(v430, v444);
      v299 = *(v449 + v436);
      v28 = v445;
      if (!v299)
      {

        sub_1000A0D2C(v451, v443);
        sub_100095808(v458);
        v456 = 0;
        v454 = 0u;
        v455 = 0u;
        goto LABEL_242;
      }

      v300 = v437;
      if (!v437)
      {
        goto LABEL_324;
      }

      v301 = v299;
      v302 = [v300 identifier];
      if (!v302)
      {
        goto LABEL_323;
      }

      v303 = v302;
      v442 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v305 = v304;

      v428 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
      v306 = *(v301 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem);
      OS_dispatch_semaphore.wait()();

      v307 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
      swift_beginAccess();
      v308 = *(v301 + v307);
      v309 = *(v308 + 16);
      if (!v309)
      {

        goto LABEL_240;
      }

      v427 = v301;
      v310 = v308 + 32;

      v311 = 0;
      while (2)
      {
        if (v311 >= *(v308 + 16))
        {
          goto LABEL_309;
        }

        sub_1000A097C(v310, &v452);
        v312 = *(*sub_1000A09E0(&v452, *(&v453 + 1)) + 32);
        if (!v312)
        {
          goto LABEL_227;
        }

        v448 = v36;
        v313 = v312;
        v314 = [v313 identifier];
        if (!v314)
        {
          goto LABEL_226;
        }

        v315 = v314;
        v316 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v318 = v317;

        if (v316 != v442 || v318 != v305)
        {
          v320 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v320)
          {

            goto LABEL_261;
          }

LABEL_226:

          v36 = v448;
LABEL_227:
          ++v311;
          sub_100095808(&v452);
          v310 += 40;
          if (v309 != v311)
          {
            continue;
          }

          v28 = v445;
          v301 = v427;
LABEL_240:
          v321 = *&v428[v301];
          OS_dispatch_semaphore.signal()();
          sub_1000A0D2C(v451, v443);

          v456 = 0;
          v454 = 0u;
          v455 = 0u;
LABEL_241:
          sub_100095808(v458);
LABEL_242:
          sub_100095C84(&v454, &unk_1002A6F40, &unk_10023BE90);
          goto LABEL_5;
        }

        break;
      }

LABEL_261:

      v345 = v427;
      v346 = *&v428[v427];
      OS_dispatch_semaphore.signal()();

      sub_1000A097C(&v452, &v454);
      sub_100095808(&v452);
      v28 = v445;
      v347 = v451;
      if (!*(&v455 + 1))
      {

        sub_1000A0D2C(v347, v443);
        v36 = v448;
        goto LABEL_241;
      }

      sub_100095274(&unk_1002A7A90, &unk_10023C960);
      type metadata accessor for DaemonAccessory();
      v348 = swift_dynamicCast();
      v36 = v448;
      if ((v348 & 1) == 0)
      {
        sub_100095808(v458);

        sub_1000A0D2C(v347, v443);
        goto LABEL_5;
      }

      v349 = v452;
      v350 = [(os_log_t *)v438 service];
      if (!v350)
      {
        goto LABEL_328;
      }

      v351 = v350;
      v352 = [v350 type];

      if (!v352)
      {
        goto LABEL_327;
      }

      v442 = [objc_opt_self() UUIDWithString:v352];

      v354 = v419;
      v353 = v420;
      (*v410)(v419, v411, v420);
      v355 = OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_sensorInfoMap;
      swift_beginAccess();
      v356 = *(v349 + v355);

      v357 = sub_1001A3650(v354, v356);

      (*v409)(v354, v353);
      if (!v357)
      {
        v374 = v443;
        v375 = v451;
LABEL_298:
        sub_100095808(v458);

        sub_1000A0D2C(v375, v374);

        goto LABEL_5;
      }

      v427 = v349;
      v358 = *(v357 + 16);
      if (v358)
      {
        v359 = 0;
        v360 = v357 + 48;
        v406 = (v358 - 1);
        v361 = _swiftEmptyArrayStorage;
        v407 = v357 + 48;
        do
        {
          v428 = v361;
          v362 = (v360 + 24 * v359);
          v363 = v359;
          while (1)
          {
            if (v363 >= *(v357 + 16))
            {
              goto LABEL_310;
            }

            v365 = *(v362 - 2);
            v364 = *(v362 - 1);
            v359 = (&v363->isa + 1);
            v366 = *v362;
            sub_100095B94(0, &qword_1002A7270, NSObject_ptr);

            v367 = v366;
            if (static NSObject.== infix(_:_:)())
            {
              break;
            }

            v362 += 3;
            v363 = (v363 + 1);
            if (v358 == v359)
            {
              v361 = v428;
              goto LABEL_293;
            }
          }

          v368 = v428;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v454 = v368;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1001D7208(0, *(v368 + 2) + 1, 1);
            v368 = v454;
          }

          v371 = *(v368 + 2);
          v370 = *(v368 + 3);
          v372 = (v371 + 1);
          if (v371 >= v370 >> 1)
          {
            v428 = (v371 + 1);
            sub_1001D7208((v370 > 1), v371 + 1, 1);
            v372 = v428;
            v368 = v454;
          }

          *(v368 + 2) = v372;
          v373 = &v368[24 * v371];
          *(v373 + 4) = v365;
          *(v373 + 5) = v364;
          *(v373 + 6) = v367;
          v360 = v407;
          v361 = v368;
        }

        while (v406 != v363);
      }

      else
      {
        v361 = _swiftEmptyArrayStorage;
      }

LABEL_293:

      if (!*(v361 + 2))
      {

        v28 = v445;
        v36 = v448;
        v374 = v443;
        v375 = v451;
        goto LABEL_298;
      }

      v376 = *(v361 + 4);
      v377 = *(v361 + 5);
      v378 = *(v361 + 6);

      v428 = v378;

      v379 = objc_allocWithZone(type metadata accessor for AccessoryBatteryState());

      v380 = v451;
      v381 = v443;
      sub_1000A0CD8(v451, v443);

      v382 = AccessoryBatteryState.init(data:name:)();
      v28 = v445;
      if (v382)
      {
        v383 = v382;
        v384 = v418;
        (v431)(v418, v449 + v441, v444);
        v385 = v383;
        sub_1000A0CD8(v380, v381);

        v431 = v385;
        v386 = Logger.logObject.getter();
        v387 = static os_log_type_t.default.getter();

        sub_1000A0D2C(v380, v381);
        LODWORD(v407) = v387;
        if (os_log_type_enabled(v386, v387))
        {
          v388 = swift_slowAlloc();
          *&v454 = swift_slowAlloc();
          *v388 = v408;
          v389 = sub_1000952D4(v376, v377, &v454);
          v406 = v386;
          v390 = v389;

          *(v388 + 4) = v390;
          *(v388 + 12) = 2080;
          v391 = sub_10013B46C(v380, v381);
          v393 = sub_1000952D4(v391, v392, &v454);

          *(v388 + 14) = v393;
          *(v388 + 22) = 2048;
          v394 = v431;
          AccessoryBatteryState.batteryPercent.getter();
          *(v388 + 24) = v395;
          *(v388 + 32) = 1024;
          LOBYTE(v393) = AccessoryBatteryState.lowBattery.getter();

          *(v388 + 34) = v393 & 1;
          *(v388 + 38) = 2080;
          v396 = v444;
          *&v452 = AccessoryBatteryState.chargeState.getter();
          v397 = String.init<A>(describing:)();
          v399 = sub_1000952D4(v397, v398, &v454);

          *(v388 + 40) = v399;
          v400 = v406;
          _os_log_impl(&_mh_execute_header, v406, v407, "Got battery data for '%s': %s -> %f, %{BOOL}d, %s", v388, 0x30u);
          swift_arrayDestroy();

          v401 = v418;
          v402 = v396;
        }

        else
        {

          v403 = v431;

          v401 = v384;
          v402 = v444;
        }

        v432(v401, v402);
        v404 = *(v427 + 24);
        v405 = v431;
        sub_100164FA8(v404, v431);

        sub_1000A0D2C(v380, v381);
        sub_100095808(v458);
        v36 = v448;
      }

      else
      {
        sub_100095808(v458);

        sub_1000A0D2C(v380, v381);

        swift_bridgeObjectRelease_n();
        v36 = v448;
      }

LABEL_5:
      v35 = v450 + 1;
      if (v450 + 1 == v447)
      {
        return;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_319:
  __break(1u);
LABEL_320:
  __break(1u);
LABEL_321:
  __break(1u);
LABEL_322:
  __break(1u);
LABEL_323:
  __break(1u);
LABEL_324:
  __break(1u);
LABEL_325:
  __break(1u);
LABEL_326:
  __break(1u);
LABEL_327:
  __break(1u);
LABEL_328:
  __break(1u);
}

uint64_t sub_1001688C0(uint64_t a1, uint64_t a2)
{
  v47 = a1;
  v48 = a2;
  v43 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v43 - 8);
  v3 = v2[8];
  __chkstk_darwin(v43);
  v42 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for DispatchQoS();
  v5 = *(v41 - 8);
  v6 = v5[8];
  __chkstk_darwin(v41);
  v44 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002A6780 != -1)
  {
LABEL_19:
    swift_once();
  }

  v8 = qword_1002B1CF0;
  v50 = qword_1002B1CF0;
  sub_1001F1BBC(_swiftEmptyArrayStorage);

  v9 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__clientLock;
  v10 = *(v8 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__clientLock);

  os_unfair_lock_lock(v10 + 4);

  v11 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyEventClients;
  swift_beginAccess();
  v12 = *(v8 + v11);
  v13 = *(v8 + v9);

  os_unfair_lock_unlock(v13 + 4);
  v14 = v12;

  v15 = 0;
  v16 = v12 + 64;
  v17 = 1 << *(v12 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v12 + 64);
  v49 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__txnLock;
  v45 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_txn;
  v20 = (v17 + 63) >> 6;
  v40 = v52;
  v39 = v2 + 1;
  v38 = (v5 + 1);
  v5 = &qword_1002A91F0;
  for (i = v12; v19; v5 = &qword_1002A91F0)
  {
LABEL_11:
    while (1)
    {
      v22 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v23 = *(*(v14 + 56) + ((v15 << 9) | (8 * v22)));
      v2 = [v23 remoteObjectProxy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_100095274(&qword_1002A91F0, qword_10023DDA0);
      if (swift_dynamicCast())
      {
        break;
      }

      if (!v19)
      {
        goto LABEL_7;
      }
    }

    v24 = v53;
    v2 = v50;
    v25 = *(v50 + v49);

    os_unfair_lock_lock(v25 + 4);

    v26 = *(v2 + v45);
    if (v26)
    {
      v27 = *(v26 + 24);
      if (v27)
      {
        v52[2] = sub_1000BAAE0;
        v52[3] = v26;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        v52[0] = sub_100147FC8;
        v52[1] = &unk_100279318;
        v36 = _Block_copy(aBlock);
        swift_retain_n();
        v35 = v27;
        static DispatchQoS.unspecified.getter();
        v53 = _swiftEmptyArrayStorage;
        v34 = sub_10016947C(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags);
        v37 = v24;
        sub_100095274(&unk_1002A6B60, qword_10023AE10);
        sub_1000E4D54(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
        v28 = v42;
        v29 = v43;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v2 = v36;
        v30 = v35;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v2);

        v31 = v28;
        v24 = v37;
        (*v39)(v31, v29);
        (*v38)(v44, v41);
      }
    }

    v32 = *(v50 + v49);

    os_unfair_lock_unlock(v32 + 4);

    [v24 systemEventDataWithInfo:v47 data:v48];
    swift_unknownObjectRelease();

    v14 = i;
  }

  while (1)
  {
LABEL_7:
    v21 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_19;
    }

    if (v21 >= v20)
    {
    }

    v19 = *(v16 + 8 * v21);
    ++v15;
    if (v19)
    {
      v15 = v21;
      goto LABEL_11;
    }
  }
}

uint64_t sub_100168E74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100168E8C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v32 = a2;
  v11 = type metadata accessor for DockAccessorySWAuth.AuthRetry(0);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v34[3] = type metadata accessor for AccessoryServer();
  v34[4] = &off_1002792F0;
  v34[0] = a1;
  Logger.init(subsystem:category:)();
  v16 = OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_authManager;
  *(a6 + v16) = [objc_allocWithZone(DockAuthManager) init];
  v17 = OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_manager;
  *(a6 + v17) = [objc_opt_self() sharedManager];
  v18 = a6 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_delegate;
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0;
  v19 = OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_tokenUUID;
  v20 = type metadata accessor for UUID();
  v21 = *(v20 - 8);
  (*(v21 + 16))(a6 + v19, a3, v20);
  v22 = (a6 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_token);
  *v22 = a4;
  v22[1] = a5;
  sub_1000A097C(v34, v33);
  swift_beginAccess();
  sub_1000A0CD8(a4, a5);
  sub_100169218(v33, v18);
  swift_endAccess();
  v23 = v32;
  *(a6 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_accessoryServer) = v32;
  v24 = type metadata accessor for Transaction();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  v27 = swift_allocObject();
  *(v27 + 48) = 0;
  *(v27 + 24) = 0;
  *(v27 + 32) = 0;
  *(v27 + 16) = 0;
  swift_unknownObjectWeakInit();
  *(v27 + 80) = 0;
  *(v27 + 88) = 1;
  v28 = v23;
  Logger.init(subsystem:category:)();
  *(v27 + 64) = 0xD00000000000001FLL;
  *(v27 + 72) = 0x80000001002336C0;
  *(v27 + 48) = 0;
  *(v27 + 56) = 0x4024000000000000;
  swift_unknownObjectWeakAssign();
  v29 = &v15[*(v12 + 44)];
  UUID.init()();
  (*(v21 + 8))(a3, v20);
  sub_100095808(v34);
  *v15 = v27;
  *(v15 + 1) = 0;
  v15[16] = 0;
  *(v15 + 3) = 0;
  *(v15 + 4) = 0xE000000000000000;
  *(v15 + 5) = 0;
  *&v15[*(v12 + 48)] = xmmword_10023BF90;
  v30 = OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_retry;
  sub_100169288(v15, a6 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_retry);
  swift_beginAccess();
  *(*(a6 + v30) + 48) = &off_10027A888;
  swift_unknownObjectWeakAssign();
  return a6;
}

uint64_t sub_100169218(uint64_t a1, uint64_t a2)
{
  v4 = sub_100095274(&qword_1002A9BF8, &qword_10023EA00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100169288(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DockAccessorySWAuth.AuthRetry(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001692F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10009862C;

  return sub_100157798(a1, v4, v5, v6, v7, v8);
}

void sub_1001693B8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, uint64_t))
{
  if (a4 != 2)
  {
    a8(a2, a3);

    a8(a5, a6);
  }
}

uint64_t sub_10016942C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10016947C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1001694C4(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_auth))
  {
    v2 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_auth);

    sub_1001B38D8();
  }

  sub_1000B346C();
  v5 = swift_allocError();
  *v6 = 6;
  sub_100153E88(0, v5);

  v7 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_manager);
  if (v7)
  {
    if (a1)
    {
      v5 = v7;
      result = [a1 identifier];
      if (result)
      {
        v8 = result;
        v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v11 = v10;

        v12 = swift_allocError();
        *v13 = 6;
        v14 = sub_1001F29A8(_swiftEmptyArrayStorage);
        if (*&v5[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_proxCard])
        {
          v5[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingState] = 0;
          v15 = *&v5[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_server];
          sub_100156798(v9, v11, 6, v14, v12);

          goto LABEL_13;
        }

        goto LABEL_12;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  if (a1)
  {
    goto LABEL_13;
  }

  __break(1u);
LABEL_12:

LABEL_13:
  v19 = 0;
  v16 = [a1 stopPairingWithError:&v19];
  v17 = v19;
  if (v16)
  {

    return v17;
  }

  else
  {
    v18 = v19;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_100169790(const char *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v1 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger, v3);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, a1, v10, 2u);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_10016990C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10016995C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000A139C;

  return sub_10015C264(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100169A24()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100169A64()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100169B04()
{
  v1[3] = v0;
  v2 = type metadata accessor for Logger();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return (_swift_task_switch)(sub_100169BFC, 0, 0);
}

uint64_t sub_100169BFC()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];
  v5 = OBJC_IVAR____TtC14dockaccessoryd27AccessoryDiagnosticsSession_logger;
  v0[8] = OBJC_IVAR____TtC14dockaccessoryd27AccessoryDiagnosticsSession_logger;
  v6 = *(v3 + 16);
  v0[9] = v6;
  v0[10] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4 + v5, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Shutting down", v9, 2u);
  }

  v10 = v0[7];
  v11 = v0[4];
  v12 = v0[5];
  v13 = v0[3];

  v14 = *(v12 + 8);
  v0[11] = v14;
  v14(v10, v11);
  v15 = *(v13 + 32);
  v0[12] = v15;
  if (v15)
  {
    v15;
    v16 = swift_task_alloc();
    v0[13] = v16;
    *v16 = v0;
    v16[1] = sub_10016A0E4;

    return sub_1000FADB4();
  }

  else
  {
    v18 = v0[3];
    *(v18 + 32) = 0;
    if (*(v18 + 40))
    {
      v19 = v0[3];
      v20 = type metadata accessor for Errors();
      sub_10016EFDC(&qword_1002A6F50, &type metadata accessor for Errors);
      v21 = swift_allocError();
      *v22 = 0;
      v22[1] = 0xE000000000000000;
      (*(*(v20 - 8) + 104))(v22, enum case for Errors.OperationCancelled(_:), v20);
      sub_10016CFFC(v21);
    }

    v23 = v0[3];
    v24 = v23[15];
    v23[14] = 0;
    v23[15] = 0;

    v25 = v23[16];
    if (v25)
    {
      v0[2] = 0;
      v26 = [v25 closeAndReturnError:v0 + 2];
      v27 = v0[2];
      if (v26)
      {
        v28 = v27;
      }

      else
      {
        v30 = v0[9];
        v29 = v0[10];
        v31 = v0[8];
        v32 = v0[6];
        v34 = v0[3];
        v33 = v0[4];
        v35 = v27;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        v30(v32, v34 + v31, v33);

        swift_errorRetain();
        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v36, v37))
        {
          v38 = v0[3];
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          *v39 = 138412546;
          Strong = swift_weakLoadStrong();
          if (Strong)
          {
            v42 = *(Strong + 24);

            v43 = v42;
          }

          else
          {
            v42 = 0;
            v43 = 0;
          }

          *(v39 + 4) = v42;
          *v40 = v43;
          *(v39 + 12) = 2112;
          swift_errorRetain();
          v44 = _swift_stdlib_bridgeErrorToNSError();
          *(v39 + 14) = v44;
          v40[1] = v44;
          _os_log_impl(&_mh_execute_header, v36, v37, "Failed to close file for accessory: %@ with error: %@'", v39, 0x16u);
          sub_100095274(&unk_1002A6F60, &unk_10023C4E0);
          swift_arrayDestroy();
        }

        else
        {
        }

        v45 = v0[5] + 8;
        (v0[11])(v0[6], v0[4]);
      }
    }

    v46 = v0[6];
    v47 = v0[7];
    v48 = v23[16];
    v23[16] = 0;

    v49 = v0[1];

    return v49();
  }
}

uint64_t sub_10016A0E4()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return (_swift_task_switch)(sub_10016A224, 0, 0);
}

uint64_t sub_10016A224()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 32);
  *(v1 + 32) = 0;

  if (*(v1 + 40))
  {
    v3 = *(v0 + 24);
    v4 = type metadata accessor for Errors();
    sub_10016EFDC(&qword_1002A6F50, &type metadata accessor for Errors);
    v5 = swift_allocError();
    *v6 = 0;
    v6[1] = 0xE000000000000000;
    (*(*(v4 - 8) + 104))(v6, enum case for Errors.OperationCancelled(_:), v4);
    sub_10016CFFC(v5);
  }

  v7 = *(v0 + 24);
  v8 = v7[15];
  v7[14] = 0;
  v7[15] = 0;

  v9 = v7[16];
  if (v9)
  {
    *(v0 + 16) = 0;
    v10 = [v9 closeAndReturnError:v0 + 16];
    v11 = *(v0 + 16);
    if (v10)
    {
      v12 = v11;
    }

    else
    {
      v14 = *(v0 + 72);
      v13 = *(v0 + 80);
      v15 = *(v0 + 64);
      v16 = *(v0 + 48);
      v18 = *(v0 + 24);
      v17 = *(v0 + 32);
      v19 = v11;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v14(v16, v18 + v15, v17);

      swift_errorRetain();
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = *(v0 + 24);
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *v23 = 138412546;
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v26 = *(Strong + 24);

          v27 = v26;
        }

        else
        {
          v26 = 0;
          v27 = 0;
        }

        *(v23 + 4) = v26;
        *v24 = v27;
        *(v23 + 12) = 2112;
        swift_errorRetain();
        v28 = _swift_stdlib_bridgeErrorToNSError();
        *(v23 + 14) = v28;
        v24[1] = v28;
        _os_log_impl(&_mh_execute_header, v20, v21, "Failed to close file for accessory: %@ with error: %@'", v23, 0x16u);
        sub_100095274(&unk_1002A6F60, &unk_10023C4E0);
        swift_arrayDestroy();
      }

      else
      {
      }

      v29 = *(v0 + 40) + 8;
      (*(v0 + 88))(*(v0 + 48), *(v0 + 32));
    }
  }

  v30 = *(v0 + 48);
  v31 = *(v0 + 56);
  v32 = v7[16];
  v7[16] = 0;

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_10016A5A0()
{
  v1 = [*(v0 + 56) format];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 value];

    if (!v3)
    {
      return 7367034;
    }
  }

  result = [*(v0 + 56) format];
  if (result)
  {
    v5 = result;
    v6 = [result value];

    if (v6 == 1)
    {
      return 7633012;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10016A660(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return (_swift_task_switch)(sub_10016A680, 0, 0);
}

uint64_t sub_10016A680()
{
  v1 = *(v0 + 104);
  Strong = swift_weakLoadStrong();
  *(v0 + 112) = Strong;
  if (!Strong)
  {
    v32 = type metadata accessor for Errors();
    sub_10016EFDC(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    *v33 = 0xD000000000000010;
    v33[1] = 0x8000000100230B70;
    (*(*(v32 - 8) + 104))(v33, enum case for Errors.AccessoryServerNil(_:), v32);
    swift_willThrow();
    goto LABEL_10;
  }

  v3 = Strong;
  v4 = *(Strong + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_dataStreamController);
  if (!v4 || ([v4 canAcceptBulkSendListeners] & 1) == 0)
  {
    v5 = *(v3 + 40);
    OS_dispatch_queue.sync<A>(execute:)();

    if (*(v0 + 136) == 1)
    {
      v6 = type metadata accessor for Errors();
      sub_10016EFDC(&qword_1002A6F50, &type metadata accessor for Errors);
      swift_allocError();
      v8 = v7;
      _StringGuts.grow(_:)(53);
      v9._countAndFlagsBits = 0xD000000000000033;
      v9._object = 0x8000000100233980;
      String.append(_:)(v9);
      v10 = *(v3 + 24);
      v11 = [v10 description];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v15._countAndFlagsBits = v12;
      v15._object = v14;
      String.append(_:)(v15);

      *v8 = 0;
      v8[1] = 0xE000000000000000;
      (*(*(v6 - 8) + 104))(v8, enum case for Errors.OperationNotSupported(_:), v6);
      swift_willThrow();

LABEL_10:
      v34 = *(v0 + 8);

      return v34();
    }
  }

  v16 = *(v0 + 96);
  v17 = *(v0 + 104);
  v18 = v17[3];

  v38 = v18;
  v36 = sub_10010669C();
  v19 = v17[9];
  v39 = v17[8];
  v37 = type metadata accessor for AccessoryDataStreamAdapter();
  v20 = objc_allocWithZone(v37);
  swift_weakInit();
  v21 = &v20[OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_delegate];
  *(v21 + 4) = 0;
  *v21 = 0u;
  *(v21 + 1) = 0u;
  *&v20[OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_currentBulkSendSession] = 0;
  v22 = &v20[OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_pendingOpenSessionCallback];
  *v22 = 0;
  v22[1] = 0;
  v20[OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_transportReady] = 0;
  v20[OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_didBulkSendFail] = 0;
  v20[OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_didBulkSendComplete] = 0;

  Logger.init(subsystem:category:)();
  swift_weakAssign();
  *&v20[OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_workQueue] = v38;
  *&v20[OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_metadata] = v36;
  v23 = &v20[OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_fileType];
  *v23 = 0xD000000000000014;
  v23[1] = 0x8000000100233920;
  v24 = &v20[OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_reason];
  *v24 = v39;
  v24[1] = v19;
  *(v0 + 80) = v20;
  *(v0 + 88) = v37;
  v25 = objc_msgSendSuper2((v0 + 80), "init");

  v26 = v17[4];
  v17[4] = v25;
  v27 = v25;

  *(v0 + 40) = type metadata accessor for AccessoryDiagnosticsSession();
  *(v0 + 48) = &off_1002794F8;
  *(v0 + 16) = v17;
  v28 = OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_delegate;
  swift_beginAccess();

  sub_10016F118(v0 + 16, v27 + v28);
  swift_endAccess();

  v29 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v30 = swift_task_alloc();
  *(v0 + 120) = v30;
  *v30 = v0;
  v30[1] = sub_10016AC20;
  v31 = *(v0 + 104);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v30, 0, 0, 0xD000000000000010, 0x8000000100233960, sub_10016F188, v31, &type metadata for () + 8);
}

uint64_t sub_10016AC20()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_10016AD98;
  }

  else
  {
    v3 = sub_10016AD34;
  }

  return (_swift_task_switch)(v3, 0, 0);
}

uint64_t sub_10016AD34()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10016AD98()
{
  v1 = v0[14];

  v2 = v0[16];
  v3 = v0[1];

  return v3();
}

void sub_10016ADFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100095274(&qword_1002A9F70, &qword_10023EB70);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - v7;
  v9 = *(a2 + 32);
  if (v9)
  {
    (*(v5 + 16))(v8, a1, v4);
    v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v11 = (v6 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    v12 = swift_allocObject();
    (*(v5 + 32))(v12 + v10, v8, v4);
    *(v12 + v11) = a2;
    v13 = v9;

    sub_1000FB4C0(sub_10016F238, v12);
  }
}

uint64_t sub_10016AF9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v15[1] = a2;
    swift_errorRetain();
    sub_100095274(&qword_1002A9F70, &qword_10023EB70);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    (*(v7 + 16))(v10, a4 + OBJC_IVAR____TtC14dockaccessoryd27AccessoryDiagnosticsSession_logger, v6);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Diagnostics data stream was setup successfully", v14, 2u);
    }

    (*(v7 + 8))(v10, v6);
    *(a4 + 104) = 1;
    *(a4 + 96) = 1;
    sub_100095274(&qword_1002A9F70, &qword_10023EB70);
    return CheckedContinuation.resume(returning:)();
  }
}

void sub_10016B16C(uint64_t a1, uint64_t a2)
{
  if (!*(v2 + 32))
  {
    v8 = type metadata accessor for Errors();
    sub_10016EFDC(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    v10 = v9;
    v11 = 0x80000001002338B0;
    v12 = 0xD000000000000017;
LABEL_7:
    *v9 = v12;
    v9[1] = v11;
    (*(*(v8 - 8) + 104))(v10, enum case for Errors.CommunicationFailure(_:), v8);
    goto LABEL_8;
  }

  if ((*(v2 + 104) & 1) == 0)
  {
    v8 = type metadata accessor for Errors();
    sub_10016EFDC(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    v10 = v9;
    v11 = 0x80000001002338D0;
    v12 = 0xD00000000000001FLL;
    goto LABEL_7;
  }

  if (*(v2 + 40))
  {
    v3 = type metadata accessor for Errors();
    sub_10016EFDC(&qword_1002A6F50, &type metadata accessor for Errors);
    v4 = swift_allocError();
    *v5 = 0xD000000000000027;
    v5[1] = 0x80000001002338F0;
    v6 = *(*(v3 - 8) + 104);
    v6(v5, enum case for Errors.OperationInProgress(_:), v3);
    sub_10016CFFC(v4);

    swift_allocError();
    *v7 = 0xD000000000000027;
    v7[1] = 0x80000001002338F0;
    v6(v7, enum case for Errors.CommunicationFailure(_:), v3);
LABEL_8:
    swift_willThrow();
    return;
  }

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  v13 = *(v2 + 24);

  v14 = v13;
  sub_100095274(&qword_1002A7168, &qword_10023C3C0);
  OS_dispatch_queue.sync<A>(execute:)();
}

void sub_10016B468(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = v3;
    sub_1000FB5F0();
  }

  *a2 = v3 == 0;
}

uint64_t sub_10016B4BC(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for String.Encoding();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v64 = type metadata accessor for Logger();
  v6 = *(v64 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v64);
  v9 = __chkstk_darwin(v8);
  v11 = &v62 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v62 - v13;
  __chkstk_darwin(v12);
  v16 = &v62 - v15;
  v17 = v1[17];
  if (v17 && (*(v17 + 57) & 1) != 0)
  {
    v18 = 1;
  }

  else
  {
    if (!v1[16])
    {
      v19 = sub_10016BD0C();
      if (v19)
      {
        v20 = v1[16];
        v1[16] = v19;
      }

      else
      {
        (*(v6 + 16))(v16, v1 + OBJC_IVAR____TtC14dockaccessoryd27AccessoryDiagnosticsSession_logger, v64);
        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.error.getter();
        v63 = v21;
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          *v23 = 0;
          v24 = v22;
          v25 = v63;
          _os_log_impl(&_mh_execute_header, v63, v24, "error creating file handle", v23, 2u);
        }

        else
        {
        }

        (*(v6 + 8))(v16, v64);
      }
    }

    v18 = 0;
  }

  v26 = v2[11];
  v27 = [a1 length];
  if ((v27 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_38;
  }

  if (__CFADD__(v26, v27))
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v2[10] < v26 + v27)
  {
    v28 = v64;
    (*(v6 + 16))(v14, v2 + OBJC_IVAR____TtC14dockaccessoryd27AccessoryDiagnosticsSession_logger, v64);

    v29 = a1;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 134218496;
      *(v32 + 4) = v2[11];
      *(v32 + 12) = 2048;
      *(v32 + 14) = [v29 length];

      *(v32 + 22) = 2048;
      *(v32 + 24) = v2[10];

      _os_log_impl(&_mh_execute_header, v30, v31, "Diagnostics exceeded max size (written: %llu, new data: %ld, max: %llu", v32, 0x20u);
    }

    else
    {

      v30 = v29;
    }

    (*(v6 + 8))(v14, v28);
    return 0;
  }

  v33 = [a1 length];
  if ((v33 & 0x8000000000000000) != 0)
  {
    goto LABEL_39;
  }

  v34 = v2[11];
  v35 = __CFADD__(v34, v33);
  v36 = (v34 + v33);
  if (v35)
  {
LABEL_40:
    __break(1u);

    __break(1u);
    goto LABEL_41;
  }

  v2[11] = v36;
  if (v18)
  {
    v37 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;
    static String.Encoding.utf8.getter();
    v40 = String.init(data:encoding:)();
    v42 = v41;
    sub_1000A0D2C(v37, v39);
    if (v42)
    {
      v43 = v2[19];
      v65 = v2[18];
      v66 = v43;

      v44._countAndFlagsBits = v40;
      v44._object = v42;
      String.append(_:)(v44);

      v45 = v66;
      v46 = v2[19];
      v2[18] = v65;
      v2[19] = v45;

      return 1;
    }

    return 1;
  }

  v48 = v2[16];
  if (v48)
  {
    v65 = a1;
    sub_100095B94(0, &qword_1002A9270, NSData_ptr);
    sub_10016F078();
    v49 = v48;
    NSFileHandle.write<A>(contentsOf:)();

    return 1;
  }

  v50 = v64;
  (*(v6 + 16))(v11, v2 + OBJC_IVAR____TtC14dockaccessoryd27AccessoryDiagnosticsSession_logger, v64);

  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v65 = v55;
    *v53 = 138412546;
    result = swift_weakLoadStrong();
    if (result)
    {
      v56 = *(result + 24);

      v57 = v56;
    }

    else
    {
      v56 = 0;
      v57 = 0;
    }

    *(v53 + 4) = v56;
    *v54 = v57;
    *(v53 + 12) = 2080;
    v58 = v2[15];
    if (v58)
    {
      v59 = v2[14];
      v60 = v2[15];

      v61 = sub_1000952D4(v59, v58, &v65);

      *(v53 + 14) = v61;
      _os_log_impl(&_mh_execute_header, v51, v52, "Failed to create log file for accessory: %@ file path: %s", v53, 0x16u);
      sub_100095C84(v54, &unk_1002A6F60, &unk_10023C4E0);

      sub_100095808(v55);

      (*(v6 + 8))(v11, v64);
      return 0;
    }

LABEL_41:
    __break(1u);
    return result;
  }

  (*(v6 + 8))(v11, v50);
  return 0;
}

uint64_t sub_10016BD0C()
{
  v143 = type metadata accessor for Logger();
  v147 = *(v143 - 1);
  v0 = v147[8];
  v1 = __chkstk_darwin(v143);
  v120 = &v117 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v121 = &v117 - v3;
  v4 = sub_100095274(&qword_1002A9F58, &qword_10023EB68);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v142 = &v117 - v6;
  v141 = type metadata accessor for TimeZone();
  v140 = *(v141 - 8);
  v7 = *(v140 + 64);
  __chkstk_darwin(v141);
  v130 = &v117 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = type metadata accessor for Date.ISO8601FormatStyle.TimeZoneSeparator();
  v137 = *(v139 - 8);
  v9 = *(v137 + 64);
  __chkstk_darwin(v139);
  v148 = &v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for Date.ISO8601FormatStyle.TimeSeparator();
  v134 = *(v135 - 8);
  v11 = *(v134 + 64);
  __chkstk_darwin(v135);
  v146 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = type metadata accessor for Date.ISO8601FormatStyle.DateTimeSeparator();
  v131 = *(v132 - 8);
  v13 = *(v131 + 64);
  __chkstk_darwin(v132);
  v136 = &v117 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = type metadata accessor for Date.ISO8601FormatStyle.DateSeparator();
  v145 = *(v138 - 8);
  v15 = *(v145 + 64);
  v16 = __chkstk_darwin(v138);
  v127 = &v117 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v133 = &v117 - v18;
  v129 = type metadata accessor for Date.ISO8601FormatStyle();
  v128 = *(v129 - 8);
  v19 = *(v128 + 64);
  v20 = __chkstk_darwin(v129);
  v123 = &v117 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v125 = &v117 - v22;
  v126 = type metadata accessor for Date();
  v124 = *(v126 - 8);
  v23 = *(v124 + 64);
  __chkstk_darwin(v126);
  v144 = &v117 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for URL.DirectoryHint();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v29 = &v117 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for URL();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v33 = __chkstk_darwin(v30);
  v35 = &v117 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v37 = &v117 - v36;
  v38 = [objc_opt_self() defaultManager];
  v39 = [v38 URLsForDirectory:13 inDomains:1];
  v40 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v40 + 16))
  {

    return 0;
  }

  (*(v31 + 16))(v35, v40 + ((*(v31 + 80) + 32) & ~*(v31 + 80)), v30);

  v122 = v31;
  (*(v31 + 32))(v37, v35, v30);
  (*(v26 + 104))(v29, enum case for URL.DirectoryHint.isDirectory(_:), v25);
  sub_1000E3C10();
  URL.append<A>(components:directoryHint:)();
  (*(v26 + 8))(v29, v25);
  v150 = 0;
  URL.path(percentEncoded:)(1);
  v41 = String._bridgeToObjectiveC()();

  v42 = [v38 fileExistsAtPath:v41 isDirectory:&v150];

  v43 = v37;
  v45 = v147;
  v44 = v148;
  v46 = v146;
  v47 = v145;
  if (v42)
  {
    goto LABEL_5;
  }

  sub_100095274(&qword_1002A7B20, &unk_10023E940);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10023C170;
  *(inited + 32) = NSFilePosixPermissions;
  *(inited + 40) = 448;
  v49 = NSFilePosixPermissions;
  v50 = sub_1001F237C(inited);
  swift_setDeallocating();
  sub_100095C84(inited + 32, &qword_1002A7B28, &qword_10023CA00);
  URL._bridgeToObjectiveC()(v51);
  v53 = v52;
  sub_1001DAF74(v50);

  type metadata accessor for FileAttributeKey(0);
  sub_10016EFDC(&qword_1002A6D80, type metadata accessor for FileAttributeKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v152[0] = 0;
  v55 = [v38 createDirectoryAtURL:v53 withIntermediateDirectories:1 attributes:isa error:v152];

  if (!v55)
  {
    v92 = v152[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v93 = v120;
    v94 = v143;
    (v45[2])(v120, v149 + OBJC_IVAR____TtC14dockaccessoryd27AccessoryDiagnosticsSession_logger, v143);
    swift_errorRetain();
    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v95, v96))
    {

      (v45[1])(v93, v94);
LABEL_18:
      (*(v122 + 8))(v43, v30);
      return 0;
    }

    v97 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v121 = v30;
    v151._countAndFlagsBits = v98;
    *v97 = 136315394;
    swift_beginAccess();
    v99 = URL.path(percentEncoded:)(1);
    v100 = sub_1000952D4(v99._countAndFlagsBits, v99._object, &v151._countAndFlagsBits);
    v119 = v43;
    v101 = v100;

    *(v97 + 4) = v101;
    *(v97 + 12) = 2080;
    swift_getErrorValue();
    v102 = Error.localizedDescription.getter();
    v104 = sub_1000952D4(v102, v103, &v151._countAndFlagsBits);

    *(v97 + 14) = v104;
    _os_log_impl(&_mh_execute_header, v95, v96, "Unable to create file storage directory %s: %s", v97, 0x16u);
    swift_arrayDestroy();

    (v45[1])(v93, v143);
    (*(v122 + 8))(v119, v121);
    return 0;
  }

  v56 = v152[0];
LABEL_5:
  v57 = v149;
  v58 = sub_10016A5A0();
  if (!v59)
  {
    v87 = v121;
    v88 = v143;
    (v45[2])(v121, v57 + OBJC_IVAR____TtC14dockaccessoryd27AccessoryDiagnosticsSession_logger, v143);
    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      *v91 = 0;
      _os_log_impl(&_mh_execute_header, v89, v90, "FileType not supported", v91, 2u);
    }

    (v45[1])(v87, v88);
    goto LABEL_18;
  }

  v120 = v58;
  v143 = v59;
  v119 = v43;
  v121 = v30;
  v147 = v38;
  static Date.now.getter();
  v60 = *(v47 + 104);
  v118 = enum case for Date.ISO8601FormatStyle.DateSeparator.dash(_:);
  v61 = v47;
  v62 = v138;
  v117 = v60;
  v60(v133);
  (*(v131 + 104))(v136, enum case for Date.ISO8601FormatStyle.DateTimeSeparator.standard(_:), v132);
  (*(v134 + 104))(v46, enum case for Date.ISO8601FormatStyle.TimeSeparator.colon(_:), v135);
  (*(v137 + 104))(v44, enum case for Date.ISO8601FormatStyle.TimeZoneSeparator.omitted(_:), v139);
  v63 = v142;
  TimeZone.init(secondsFromGMT:)();
  v64 = v140;
  v65 = v141;
  result = (*(v140 + 48))(v63, 1, v141);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v64 + 32))(v130, v63, v65);
    v67 = v123;
    Date.ISO8601FormatStyle.init(dateSeparator:dateTimeSeparator:timeSeparator:timeZoneSeparator:includingFractionalSeconds:timeZone:)();
    v68 = v127;
    v117(v127, v118, v62);
    v69 = v125;
    Date.ISO8601FormatStyle.dateSeparator(_:)();
    (*(v61 + 8))(v68, v62);
    v70 = *(v128 + 8);
    v71 = v67;
    v72 = v129;
    v70(v71, v129);
    sub_10016EFDC(&qword_1002A9F60, &type metadata accessor for Date.ISO8601FormatStyle);
    v73 = v144;
    Date.formatted<A>(_:)();
    v70(v69, v72);
    (*(v124 + 8))(v73, v126);
    v74 = v152[0];
    v75 = v152[1];
    v76 = v119;
    v77 = URL.path(percentEncoded:)(1);
    v152[0] = 0;
    v152[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(20);

    strcpy(v152, "diagnostics_");
    BYTE5(v152[1]) = 0;
    HIWORD(v152[1]) = -5120;
    v78._countAndFlagsBits = v74;
    v78._object = v75;
    String.append(_:)(v78);

    v79._countAndFlagsBits = 95;
    v79._object = 0xE100000000000000;
    String.append(_:)(v79);
    v80 = v149;
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v82 = v76;
      v83 = *(Strong + 24);

      v84 = DockCoreInfo.description.getter();
      v86 = v85;

      v76 = v82;
    }

    else
    {
      v86 = 0xE300000000000000;
      v84 = 7104878;
    }

    v105 = v122;
    v106._countAndFlagsBits = v84;
    v106._object = v86;
    String.append(_:)(v106);

    v107._countAndFlagsBits = 46;
    v107._object = 0xE100000000000000;
    String.append(_:)(v107);
    v108._countAndFlagsBits = v120;
    v108._object = v143;
    String.append(_:)(v108);

    v151 = v77;
    v151._countAndFlagsBits = String.init<A>(_:)();
    v151._object = v109;
    String.append<A>(contentsOf:)();

    countAndFlagsBits = v151._countAndFlagsBits;
    object = v151._object;
    v112 = String._bridgeToObjectiveC()();
    v113 = v147;
    [v147 createFileAtPath:v112 contents:0 attributes:0];

    v114 = String._bridgeToObjectiveC()();
    v115 = [objc_opt_self() fileHandleForWritingAtPath:v114];

    v116 = *(v80 + 120);
    *(v80 + 112) = countAndFlagsBits;
    *(v80 + 120) = object;

    (*(v105 + 8))(v76, v121);
    return v115;
  }

  return result;
}

uint64_t sub_10016CE30(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1 >= 0 && *(v2 + 96) == a1;
  v10 = v9;
  if (v9)
  {
    *(v2 + 96) = a1 + 1;
  }

  else
  {
    (*(v5 + 16))(v8, v2 + OBJC_IVAR____TtC14dockaccessoryd27AccessoryDiagnosticsSession_logger, v4);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v14 = swift_slowAlloc();
      *v14 = 134218240;
      *(v14 + 4) = a1;
      *(v14 + 12) = 2048;
      *(v14 + 14) = *(v2 + 96);

      _os_log_impl(&_mh_execute_header, v11, v12, "Invalid data sequence number received: %ld expected: %llu", v14, 0x16u);
    }

    else
    {
    }

    (*(v5 + 8))(v8, v4);
  }

  return v10;
}

uint64_t sub_10016CFFC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2 + OBJC_IVAR____TtC14dockaccessoryd27AccessoryDiagnosticsSession_logger, v4);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    if (a1)
    {
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      v14 = v13;
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    *(v11 + 4) = v13;
    *v12 = v14;
    _os_log_impl(&_mh_execute_header, v9, v10, "Calling completion handler with error: %@", v11, 0xCu);
    sub_100095C84(v12, &unk_1002A6F60, &unk_10023C4E0);
  }

  result = (*(v5 + 8))(v8, v4);
  v16 = *(v2 + 40);
  if (v16)
  {
    v17 = *(v2 + 48);
    *(v2 + 40) = 0;
    *(v2 + 48) = 0;
    v16(a1, 0, 0);
    return sub_1000BAA84(v16);
  }

  return result;
}

uint64_t sub_10016D218()
{
  swift_weakDestroy();

  v1 = *(v0 + 48);
  sub_1000BAA84(*(v0 + 40));

  v2 = *(v0 + 72);

  v3 = *(v0 + 120);

  v4 = *(v0 + 136);

  v5 = *(v0 + 152);

  v6 = OBJC_IVAR____TtC14dockaccessoryd27AccessoryDiagnosticsSession_logger;
  v7 = type metadata accessor for Logger();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  return v0;
}

uint64_t sub_10016D2C8()
{
  sub_10016D218();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AccessoryDiagnosticsSession()
{
  result = qword_1002A9C98;
  if (!qword_1002A9C98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10016D374()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

unint64_t sub_10016D4D0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_10016DA54(a1, a2, v6);
}

unint64_t sub_10016D548(int a1)
{
  v3 = *(v1 + 40);
  v4 = static Hasher._hash(seed:bytes:count:)();

  return sub_10016DB0C(a1, v4);
}

unint64_t sub_10016D590(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return sub_10016DB78(a1, v4);
}

unint64_t sub_10016D5D4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for UUID();
  sub_10016EFDC(&qword_1002A9810, &type metadata accessor for UUID);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_10016E058(a1, v5, &type metadata accessor for UUID, &qword_1002A8728, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
}

unint64_t sub_10016D6A8(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10016DC3C(a1, v4);
}

unint64_t sub_10016D6F0(uint64_t a1)
{
  v3 = *(v1 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10016DD04(a1, v4);
}

unint64_t sub_10016D780(uint64_t a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  v4 = *(a1 + 24);
  NSObject.hash(into:)();

  v5 = Hasher._finalize()();

  return sub_10016DE08(a1, v5);
}

unint64_t sub_10016D7F8(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_10016DF1C(a1, v4, &qword_1002A9A88, NSUUID_ptr);
}

unint64_t sub_10016D848(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_10016DF1C(a1, v4, &unk_1002A9C50, CBUUID_ptr);
}

unint64_t sub_10016D898(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  v4 = static Hasher._hash(seed:bytes:count:)();

  return sub_10016DFE8(a1, v4);
}

unint64_t sub_10016D8E0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for ComponentType();
  sub_10016EFDC(&qword_1002A9F48, &type metadata accessor for ComponentType);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_10016E058(a1, v5, &type metadata accessor for ComponentType, &qword_1002A9F50, &type metadata accessor for ComponentType, &protocol conformance descriptor for ComponentType);
}

unint64_t sub_10016D9B4(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_10016DF1C(a1, v4, &qword_1002A9840, CBService_ptr);
}

unint64_t sub_10016DA04(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_10016DF1C(a1, v4, &unk_1002A9830, CBCharacteristic_ptr);
}

unint64_t sub_10016DA54(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_10016DB0C(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_10016DB78(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for DockCoreInfo();
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

unint64_t sub_10016DC3C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1000FF250(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10016F024(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10016DD04(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
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

unint64_t sub_10016DE08(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v8 = ~v4;
    v9 = type metadata accessor for DockCoreInfo();
    do
    {
      v10 = *(*(*(v6 + 48) + 8 * v5) + 24);
      v11 = *(a1 + 24);
      v15[3] = v9;
      v15[0] = v11;

      v12 = v10;
      v13 = v11;
      LOBYTE(v10) = DockCoreInfo.isEqual(_:)();

      sub_100095C84(v15, &qword_1002A9210, &unk_10023BE70);
      if (v10)
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10016DF1C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_100095B94(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = static NSObject.== infix(_:_:)();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_10016DFE8(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_10016E058(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
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
      sub_10016EFDC(v24, v25);
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

uint64_t sub_10016E1F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_weakInit();
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 64) = 0x74736F6E67616964;
  *(v3 + 72) = 0xEF61746144736369;
  *(v3 + 80) = 5242880;
  *(v3 + 88) = 0;
  *(v3 + 96) = 0;
  *(v3 + 104) = 0;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0;
  *(v3 + 152) = 0xE000000000000000;
  Logger.init(subsystem:category:)();
  swift_weakAssign();
  *(v3 + 24) = a2;
  *(v3 + 56) = a3;
  return v3;
}

uint64_t sub_10016E2DC()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC14dockaccessoryd27AccessoryDiagnosticsSession_logger, v2);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v12 = *(Strong + 24);

      v13 = v12;
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    *(v9 + 4) = v12;
    *v10 = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to read data for accessory: %@", v9, 0xCu);
    sub_100095C84(v10, &unk_1002A6F60, &unk_10023C4E0);
  }

  result = (*(v3 + 8))(v6, v2);
  if (*(v1 + 40))
  {
    v15 = type metadata accessor for Errors();
    sub_10016EFDC(&qword_1002A6F50, &type metadata accessor for Errors);
    v16 = swift_allocError();
    *v17 = 0x722064656C696166;
    v17[1] = 0xEB00000000646165;
    (*(*(v15 - 8) + 104))(v17, enum case for Errors.CommunicationFailure(_:), v15);
    sub_10016CFFC(v16);
  }

  return result;
}

uint64_t sub_10016E5A0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v35 - v11;
  __chkstk_darwin(v10);
  v14 = &v35 - v13;
  if (*(a1 + 16) && (v15 = sub_10016D4D0(1635017060, 0xE400000000000000), (v16 & 1) != 0) && (sub_100095B34(*(a1 + 56) + 32 * v15, v37), sub_100095B94(0, &qword_1002A9270, NSData_ptr), (swift_dynamicCast() & 1) != 0))
  {
    v17 = v36;
    if (*(a1 + 16))
    {
      v18 = sub_10016D4D0(0x617461646174656DLL, 0xE800000000000000);
      if (v19)
      {
        sub_100095B34(*(a1 + 56) + 32 * v18, v37);
        sub_100095274(&qword_1002A9F40, &qword_10023EB60);
        if (swift_dynamicCast())
        {
          v20 = v36;
          if (*(v36 + 2) && (v21 = sub_10016D4D0(0xD000000000000012, 0x8000000100233890), (v22 & 1) != 0))
          {
            sub_100095B34(v20[7] + 32 * v21, v37);

            sub_100095B94(0, &qword_1002A7AB0, NSNumber_ptr);
            if (swift_dynamicCast())
            {
              v23 = v36;
              if (sub_10016CE30([v36 integerValue]))
              {
              }

              else
              {
                (*(v5 + 16))(v14, v2 + OBJC_IVAR____TtC14dockaccessoryd27AccessoryDiagnosticsSession_logger, v4);
                v32 = Logger.logObject.getter();
                v33 = static os_log_type_t.info.getter();
                if (os_log_type_enabled(v32, v33))
                {
                  v34 = swift_slowAlloc();
                  *v34 = 0;
                  _os_log_impl(&_mh_execute_header, v32, v33, "unexpected sequence number but still accept it", v34, 2u);
                }

                (*(v5 + 8))(v14, v4);
              }
            }
          }

          else
          {
          }
        }
      }
    }

    (*(v5 + 16))(v12, v2 + OBJC_IVAR____TtC14dockaccessoryd27AccessoryDiagnosticsSession_logger, v4);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Data frame received", v31, 2u);
    }

    (*(v5 + 8))(v12, v4);
    v27 = sub_10016B4BC(v17);
  }

  else
  {
    (*(v5 + 16))(v9, v2 + OBJC_IVAR____TtC14dockaccessoryd27AccessoryDiagnosticsSession_logger, v4);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "No data present in frame", v26, 2u);
    }

    (*(v5 + 8))(v9, v4);
    v27 = 0;
  }

  return v27 & 1;
}

uint64_t sub_10016EA60()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v44 - v9;
  __chkstk_darwin(v8);
  v12 = &v44 - v11;
  if (*(v1 + 5))
  {
    v13 = *(v1 + 17);
    if (v13)
    {
LABEL_3:
      v14 = *(v13 + 57);
      goto LABEL_8;
    }
  }

  else
  {
    (*(v3 + 16))(&v44 - v11, &v1[OBJC_IVAR____TtC14dockaccessoryd27AccessoryDiagnosticsSession_logger], v2);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Data read completed but no completion handler", v17, 2u);
    }

    (*(v3 + 8))(v12, v2);
    v13 = *(v1 + 17);
    if (v13)
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
LABEL_8:
  v18 = *(v1 + 16);
  if (v18)
  {
    v19 = v14;
  }

  else
  {
    v19 = 1;
  }

  v20 = *(v3 + 16);
  if ((v14 & 1) != 0 || v18)
  {
    v20(v7, &v1[OBJC_IVAR____TtC14dockaccessoryd27AccessoryDiagnosticsSession_logger], v2);

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v45 = v19;
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v33 = *(Strong + 24);
        v44 = Strong;
        v34 = v33;

        v35 = v34;
      }

      else
      {
        v34 = 0;
        v35 = 0;
      }

      *(v30 + 4) = v34;
      *v31 = v35;
      _os_log_impl(&_mh_execute_header, v28, v29, "Data read completed for accessory: %@", v30, 0xCu);
      sub_100095C84(v31, &unk_1002A6F60, &unk_10023C4E0);

      v19 = v45;
    }

    result = (*(v3 + 8))(v7, v2);
    v37 = *(v1 + 5);
    if (v37)
    {
      v38 = *(v1 + 6);
      *(v1 + 5) = 0;
      *(v1 + 6) = 0;
      if (v19)
      {
        v40 = *(v1 + 18);
        v39 = *(v1 + 19);
      }

      else
      {
        v40 = *(v1 + 14);
        v39 = *(v1 + 15);
      }

      v37(0, v40, v39);

      return sub_1000BAA84(v37);
    }
  }

  else
  {
    v20(v10, &v1[OBJC_IVAR____TtC14dockaccessoryd27AccessoryDiagnosticsSession_logger], v2);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      v25 = swift_weakLoadStrong();
      if (v25)
      {
        v26 = *(v25 + 24);

        v27 = v26;
      }

      else
      {
        v26 = 0;
        v27 = 0;
      }

      *(v23 + 4) = v26;
      *v24 = v27;
      _os_log_impl(&_mh_execute_header, v21, v22, "Data read completed for accessory: %@ but file path not present", v23, 0xCu);
      sub_100095C84(v24, &unk_1002A6F60, &unk_10023C4E0);
    }

    (*(v3 + 8))(v10, v2);
    v41 = type metadata accessor for Errors();
    sub_10016EFDC(&qword_1002A6F50, &type metadata accessor for Errors);
    v42 = swift_allocError();
    *v43 = 0x656C6966206C696ELL;
    v43[1] = 0xEF656C646E616820;
    (*(*(v41 - 8) + 104))(v43, enum case for Errors.CommunicationFailure(_:), v41);
    sub_10016CFFC(v42);
  }

  return result;
}

uint64_t sub_10016EFDC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10016F078()
{
  result = qword_1002A9F68;
  if (!qword_1002A9F68)
  {
    sub_100095B94(255, &qword_1002A9270, NSData_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A9F68);
  }

  return result;
}

uint64_t sub_10016F118(uint64_t a1, uint64_t a2)
{
  v4 = sub_100095274(&unk_1002A8890, &unk_10023FAF0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10016F190()
{
  v1 = sub_100095274(&qword_1002A9F70, &qword_10023EB70);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10016F238(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_100095274(&qword_1002A9F70, &qword_10023EB70) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10016AF9C(a1, a2, v2 + v6, v7);
}

void sub_10016F328(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a2;
  *a2 = 0;
  *(a2 + 8) = &_swiftEmptyArrayStorage;
  v27 = *(type metadata accessor for JarvisEventHistory(0) + 24);
  Logger.init(subsystem:category:)();
  v4 = *(a1 + 16);
  if (v4)
  {
    *v3 = *(a1 + 32);
  }

  v24 = &_swiftEmptyArrayStorage;
  v5 = 1;
  v26 = a1;
  v25 = v4;
LABEL_4:
  v6 = v5;
  while (v6 < v4)
  {
    v7 = v6 + 9;
    if (__OFADD__(v6, 9))
    {
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      return;
    }

    if (v4 < v7)
    {

      osloga = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(osloga, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, osloga, v22, "buffer is incomplete, this is not expected. Not processing jarvis report further", v23, 2u);
      }

      return;
    }

    if (v5 < 0)
    {
      goto LABEL_35;
    }

    v8 = *(a1 + 16);
    if (v6 >= v8)
    {
      goto LABEL_36;
    }

    if (__OFSUB__(v7, 1))
    {
      goto LABEL_37;
    }

    if (v6 + 8 <= v6)
    {
      goto LABEL_38;
    }

    if (v8 < v7)
    {
      goto LABEL_39;
    }

    if (v7 < 0)
    {
      goto LABEL_40;
    }

    oslog = *(a1 + v6 + 32);
    if (v8 == 8)
    {

      v9 = a1;
    }

    else
    {
      sub_1001C9ED8(a1, a1 + 32, v6 + 1, (2 * v7) | 1);
      v9 = v17;
    }

    v10 = sub_10013B7B8(v9);

    v11 = mach_continuous_time();
    v12 = v11 - v10;
    if (v11 < v10)
    {
      goto LABEL_41;
    }

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = v3;
      v16 = swift_slowAlloc();
      *v16 = 134218752;
      *(v16 + 4) = v10;
      *(v16 + 12) = 2048;
      *(v16 + 14) = mach_continuous_time();
      *(v16 + 22) = 2048;
      *(v16 + 24) = v12;
      *(v16 + 32) = 256;
      *(v16 + 34) = oslog;
      _os_log_impl(&_mh_execute_header, v13, v14, "time is %llu, current time is %llu, ticks = %llu event is %hhu", v16, 0x23u);
      v3 = v15;
      v4 = v25;
      a1 = v26;
    }

    v6 += 9;
    if (v10)
    {
      v18 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_100103230(0, *(v24 + 2) + 1, 1, v24);
      }

      v20 = *(v18 + 2);
      v19 = *(v18 + 3);
      if (v20 >= v19 >> 1)
      {
        v18 = sub_100103230((v19 > 1), v20 + 1, 1, v18);
      }

      *(v18 + 2) = v20 + 1;
      v21 = &v18[16 * v20];
      v21[32] = oslog;
      *(v21 + 5) = v12;
      v24 = v18;
      *(v3 + 8) = v18;
      v5 = v7;
      goto LABEL_4;
    }
  }
}

id DockDetector.startupValidator.getter()
{
  v1 = OBJC_IVAR____TtC14dockaccessoryd12DockDetector_startupValidator;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void DockDetector.startupValidator.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14dockaccessoryd12DockDetector_startupValidator;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

char *DockDetector.init(workQueue:)(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC14dockaccessoryd12DockDetector_startupValidator;
  v5 = objc_allocWithZone(type metadata accessor for MotionValidator());
  *&v1[v4] = MotionValidator.init(type:interval:)(0, 0.1);
  Logger.init(subsystem:category:)();
  v6 = OBJC_IVAR____TtC14dockaccessoryd12DockDetector_hidManager;
  *&v2[v6] = IOHIDManagerCreate(kCFAllocatorDefault, 0);
  *&v2[OBJC_IVAR____TtC14dockaccessoryd12DockDetector_jarvis] = 0;
  *&v2[OBJC_IVAR____TtC14dockaccessoryd12DockDetector_jarvisTimer] = 0;
  *&v2[OBJC_IVAR____TtC14dockaccessoryd12DockDetector_jarvisInterval] = 0x3FC999999999999ALL;
  *&v2[OBJC_IVAR____TtC14dockaccessoryd12DockDetector_jarvisLastDockedTimeout] = 0x4000000000000000;
  *&v2[OBJC_IVAR____TtC14dockaccessoryd12DockDetector_jarvisLastUndockedTimeout] = 0x4014000000000000;
  *&v2[OBJC_IVAR____TtC14dockaccessoryd12DockDetector_jarvisTimeThreshold] = 0x404E000000000000;
  v7 = OBJC_IVAR____TtC14dockaccessoryd12DockDetector_dockStatus;
  v8 = enum case for DockStatus.Undocked(_:);
  v9 = type metadata accessor for DockStatus();
  (*(*(v9 - 8) + 104))(&v2[v7], v8, v9);
  *&v2[OBJC_IVAR____TtC14dockaccessoryd12DockDetector_jarvisReportLength] = 91;
  v10 = &v2[OBJC_IVAR____TtC14dockaccessoryd12DockDetector_jarvisCallback];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v2[OBJC_IVAR____TtC14dockaccessoryd12DockDetector_clockTimebase] = 0;
  *&v2[OBJC_IVAR____TtC14dockaccessoryd12DockDetector_kJarvisReportID] = 2;
  *&v2[OBJC_IVAR____TtC14dockaccessoryd12DockDetector_workQueue] = a1;
  v11 = a1;
  *&v2[OBJC_IVAR____TtC14dockaccessoryd12DockDetector_reportBuffer] = swift_slowAlloc();
  v16.receiver = v2;
  v16.super_class = type metadata accessor for DockDetector(0);
  v12 = objc_msgSendSuper2(&v16, "init");
  v13 = OBJC_IVAR____TtC14dockaccessoryd12DockDetector_clockTimebase;
  swift_beginAccess();
  v14 = v12;
  mach_timebase_info(&v12[v13]);
  swift_endAccess();

  return v14;
}

id DockDetector.__deallocating_deinit()
{
  IOHIDManagerClose(*&v0[OBJC_IVAR____TtC14dockaccessoryd12DockDetector_hidManager], 0);
  v1 = *&v0[OBJC_IVAR____TtC14dockaccessoryd12DockDetector_jarvisTimer];
  *&v0[OBJC_IVAR____TtC14dockaccessoryd12DockDetector_jarvisTimer] = 0;

  v3.receiver = v0;
  v3.super_class = type metadata accessor for DockDetector(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_10016FC24()
{
  v1 = v0;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Setting up Jarvis detection", v4, 2u);
  }

  sub_1001F3BCC(&off_100274ED0);
  sub_100095274(&qword_1002AC670, &qword_10023EC08);
  swift_arrayDestroy();
  matching = Dictionary._bridgeToObjectiveC()().super.isa;

  v5 = OBJC_IVAR____TtC14dockaccessoryd12DockDetector_hidManager;
  IOHIDManagerSetDeviceMatching(*(v1 + OBJC_IVAR____TtC14dockaccessoryd12DockDetector_hidManager), matching);
  v6 = IOHIDManagerCopyDevices(*(v1 + v5));
  if (v6)
  {
    v7 = v6;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      type metadata accessor for IOHIDDevice(0);
      sub_1001713E8(&unk_1002A6B40, type metadata accessor for IOHIDDevice);
      static Set._conditionallyBridgeFromObjectiveC(_:result:)();
    }
  }

  v8 = sub_1001C9F98(&_swiftEmptySetSingleton);

  if ((v8 & 0x8000000000000000) != 0 || (v8 & 0x4000000000000000) != 0)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_11;
    }

LABEL_16:

    v10 = 0;
    goto LABEL_17;
  }

  if (!*(v8 + 16))
  {
    goto LABEL_16;
  }

LABEL_11:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*(v8 + 16))
    {
      __break(1u);
      return;
    }

    v9 = *(v8 + 32);
  }

  v10 = v9;

LABEL_17:
  v11 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd12DockDetector_jarvis);
  *(v1 + OBJC_IVAR____TtC14dockaccessoryd12DockDetector_jarvis) = v10;

  IOHIDManagerOpen(*(v1 + v5), 0);
}

BOOL sub_10016FEA0()
{
  v1 = OBJC_IVAR____TtC14dockaccessoryd12DockDetector_jarvisTimer;
  v2 = *&v0[OBJC_IVAR____TtC14dockaccessoryd12DockDetector_jarvisTimer];
  if (v2)
  {
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Another instance of Jarvis monitoring is running, this is unusual - not starting another instance", v5, 2u);
    }
  }

  else
  {
    sub_10016FC24();
    v6 = *&v0[OBJC_IVAR____TtC14dockaccessoryd12DockDetector_workQueue];
    *(swift_allocObject() + 16) = v0;
    objc_allocWithZone(type metadata accessor for RepeatingTimer());
    v7 = v6;
    v8 = v0;
    v9 = RepeatingTimer.init(interval:fireOnce:queue:_:)();
    v3 = *&v0[v1];
    *&v0[v1] = v9;
  }

  return v2 == 0;
}

void sub_10016FFE4(uint64_t a1)
{
  v2 = type metadata accessor for DockStatus();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for JarvisEventHistory(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd12DockDetector_jarvis);
  if (v11)
  {
    pReportLength = 91;
    v12 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd12DockDetector_reportBuffer);
    v13 = v11;
    if (IOHIDDeviceGetReport(v13, kIOHIDReportTypeFeature, 2, v12, &pReportLength))
    {
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        v17 = "Failed to get HID device report";
LABEL_20:
        _os_log_impl(&_mh_execute_header, v14, v15, v17, v16, 2u);

        goto LABEL_21;
      }

      goto LABEL_21;
    }

    if (pReportLength != 91)
    {
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        v17 = "Report length is not valid";
        goto LABEL_20;
      }

LABEL_21:

LABEL_22:
      return;
    }

    if (*v12 != 2)
    {
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        v17 = "Report doesn't contain valid report ID";
        goto LABEL_20;
      }

      goto LABEL_21;
    }

    v25 = sub_1001F7A30(91, 0);
    v26 = *(v12 + 16);
    v25[2] = *v12;
    v25[3] = v26;
    v28 = *(v12 + 48);
    v27 = *(v12 + 64);
    v29 = *(v12 + 32);
    *(v25 + 107) = *(v12 + 75);
    v25[5] = v28;
    v25[6] = v27;
    v25[4] = v29;
    sub_10016F328(v25, v10);
    v30 = OBJC_IVAR____TtC14dockaccessoryd12DockDetector_jarvisTimer;
    v31 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd12DockDetector_jarvisTimer);
    if (v31)
    {
      v32 = v31;
      dispatch thunk of RepeatingTimer.timeSinceInit()();
      v34 = v33;

      v35 = sub_10017072C(v10, INFINITY);
      if (v34 > 5.0)
      {
        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          *v38 = 0;
          v39 = "Jarvis: monitoring done, not docked but still connecting";
LABEL_26:
          _os_log_impl(&_mh_execute_header, v36, v37, v39, v38, 2u);

          goto LABEL_27;
        }

        goto LABEL_27;
      }

      if (v34 > 2.0 && v35)
      {
        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          *v38 = 0;
          v39 = "Jarvis: monitoring done, docked and connecting";
          goto LABEL_26;
        }

LABEL_27:

        (*(v3 + 104))(v6, enum case for DockStatus.Docked(_:), v2);
        v40 = OBJC_IVAR____TtC14dockaccessoryd12DockDetector_dockStatus;
        swift_beginAccess();
        (*(v3 + 40))(a1 + v40, v6, v2);
        swift_endAccess();
        v41 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd12DockDetector_jarvisCallback);
        if (!v41)
        {
LABEL_34:
          v48 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd12DockDetector_hidManager);
          IOHIDManagerClose(v48, 0);

          sub_10017138C(v10);
          v13 = *(a1 + v30);
          *(a1 + v30) = 0;
          goto LABEL_22;
        }

        v42 = a1 + OBJC_IVAR____TtC14dockaccessoryd12DockDetector_jarvisCallback;
LABEL_33:
        v47 = *(v42 + 8);

        v41(1);
        sub_1000BABC8(v41, v47);
        goto LABEL_34;
      }
    }

    if (!sub_10017072C(v10, 60.0))
    {
      sub_10017138C(v10);
      goto LABEL_22;
    }

    (*(v3 + 104))(v6, enum case for DockStatus.Docked(_:), v2);
    v43 = OBJC_IVAR____TtC14dockaccessoryd12DockDetector_dockStatus;
    swift_beginAccess();
    (*(v3 + 40))(a1 + v43, v6, v2);
    swift_endAccess();
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "Jarvis: docked", v46, 2u);
    }

    v42 = a1 + OBJC_IVAR____TtC14dockaccessoryd12DockDetector_jarvisCallback;
    v41 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd12DockDetector_jarvisCallback);
    if (!v41)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "No Jarvis detector found, docked and connecting", v20, 2u);
  }

  (*(v3 + 104))(v6, enum case for DockStatus.Docked(_:), v2);
  v21 = OBJC_IVAR____TtC14dockaccessoryd12DockDetector_dockStatus;
  swift_beginAccess();
  (*(v3 + 40))(a1 + v21, v6, v2);
  swift_endAccess();
  v22 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd12DockDetector_jarvisCallback);
  if (v22)
  {
    v23 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd12DockDetector_jarvisCallback + 8);

    v22(1);
    sub_1000BABC8(v22, v23);
  }

  IOHIDManagerClose(*(a1 + OBJC_IVAR____TtC14dockaccessoryd12DockDetector_hidManager), 0);
  v24 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd12DockDetector_jarvisTimer);
  *(a1 + OBJC_IVAR____TtC14dockaccessoryd12DockDetector_jarvisTimer) = 0;
}

BOOL sub_10017072C(uint64_t a1, double a2)
{
  v3 = *(a1 + 8);
  if (!*(v3 + 16))
  {
    return 1;
  }

  if (*(v3 + 32) != 1)
  {
    return 0;
  }

  v5 = *(v3 + 40);
  v6 = (v2 + OBJC_IVAR____TtC14dockaccessoryd12DockDetector_clockTimebase);
  swift_beginAccess();
  LODWORD(v7) = *v6;
  LODWORD(v8) = v6[1];
  v9 = v5 * v7 / v8 / 1000000000.0;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "Secs since last Jarvis event is %f", v12, 0xCu);
  }

  return v9 < a2;
}

uint64_t DockDetector.newStatus(_:monitorJarvisCallback:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a2;
  v28 = a3;
  v29 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v29 - 8);
  v5 = *(v32 + 64);
  __chkstk_darwin(v29);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v30 = *(v8 - 8);
  v31 = v8;
  v9 = *(v30 + 64);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DockStatus();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = *&v3[OBJC_IVAR____TtC14dockaccessoryd12DockDetector_workQueue];
  (*(v13 + 16))(&v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v12);
  v16 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v3;
  (*(v13 + 32))(v17 + v16, &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  v18 = (v17 + ((v14 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  v20 = v27;
  v19 = v28;
  *v18 = v27;
  v18[1] = v19;
  aBlock[4] = sub_1001710C0;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147FC8;
  aBlock[3] = &unk_100279568;
  v21 = _Block_copy(aBlock);
  v22 = v15;
  v23 = v3;
  sub_1000C6F30(v20);
  static DispatchQoS.unspecified.getter();
  v33 = &_swiftEmptyArrayStorage;
  sub_1001713E8(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags);
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_1000BAB30();
  v24 = v29;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);

  (*(v32 + 8))(v7, v24);
  (*(v30 + 8))(v11, v31);
}

void sub_100170C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a4;
  v30 = a3;
  v6 = type metadata accessor for DockStatus();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v28 - v12;
  v14 = OBJC_IVAR____TtC14dockaccessoryd12DockDetector_dockStatus;
  swift_beginAccess();
  v15 = *(v7 + 16);
  v31 = v14;
  v32 = v15;
  v15(v13, a1 + v14, v6);
  sub_1001713E8(&qword_1002AA030, &type metadata accessor for DockStatus);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v16 = *(v7 + 8);
  v16(v13, v6);
  if (v33 == v34)
  {
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Dock status has not changed, returning", v19, 2u);
    }

    return;
  }

  v32(v11, a2, v6);
  v20 = (*(v7 + 88))(v11, v6);
  if (v20 == enum case for DockStatus.Undocked(_:))
  {
LABEL_6:
    (*(v7 + 104))(v13, v20, v6);
    v21 = v31;
    swift_beginAccess();
    (*(v7 + 40))(a1 + v21, v13, v6);
    swift_endAccess();
    IOHIDManagerClose(*(a1 + OBJC_IVAR____TtC14dockaccessoryd12DockDetector_hidManager), 0);
    v22 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd12DockDetector_jarvisTimer);
    *(a1 + OBJC_IVAR____TtC14dockaccessoryd12DockDetector_jarvisTimer) = 0;

    return;
  }

  if (v20 != enum case for DockStatus.DockedRSSI(_:))
  {
    if (v20 != enum case for DockStatus.Docked(_:))
    {
      v16(v11, v6);
      return;
    }

    goto LABEL_6;
  }

  (*(v7 + 104))(v13, v20, v6);
  v23 = v31;
  swift_beginAccess();
  (*(v7 + 40))(a1 + v23, v13, v6);
  swift_endAccess();
  v24 = v30;
  if (v30 && sub_10016FEA0())
  {
    v25 = (a1 + OBJC_IVAR____TtC14dockaccessoryd12DockDetector_jarvisCallback);
    v26 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd12DockDetector_jarvisCallback);
    v27 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd12DockDetector_jarvisCallback + 8);
    *v25 = v24;
    v25[1] = v29;
    sub_1000BABC8(v26, v27);
  }
}

uint64_t sub_100170FDC()
{
  v1 = type metadata accessor for DockStatus();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
    v6 = *(v0 + v5 + 8);
  }

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

void sub_1001710C0()
{
  v1 = *(type metadata accessor for DockStatus() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  sub_100170C00(v3, v0 + v2, v5, v6);
}

uint64_t sub_100171154(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001711D4()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for DockStatus();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1001712F4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100171354(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10017138C(uint64_t a1)
{
  v2 = type metadata accessor for JarvisEventHistory(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001713E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100171454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Logger();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100171514(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Logger();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1001715B8()
{
  sub_10017164C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Logger();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10017164C()
{
  if (!qword_1002AA0A0)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1002AA0A0);
    }
  }
}

uint64_t sub_10017169C(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (*(a2 + 16))
    {
      sub_1000B5150(v2, v13, &qword_1002AA4C8, &unk_10023EDF0);
      v9 = *(v8 + 24);

      if (v9)
      {
        sub_100171820(v8, a2, v13, a1);
      }

      else
      {
        sub_100138F54();
        if (!v4)
        {
          sub_100171820(v8, a2, v13, a1);
          sub_1001396D0();
        }
      }

      sub_100095C84(v13, &qword_1002AA4C8, &unk_10023EDF0);
    }

    else
    {
      sub_1000B346C();
      swift_allocError();
      *v12 = 2;
      swift_willThrow();
    }
  }

  else
  {
    sub_1000B346C();
    swift_allocError();
    *v10 = 2;
    return swift_willThrow();
  }
}

uint64_t sub_100171820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32[3] = a4;
  v7 = sub_10017D180(0x3F, 0xE100000000000000, *(a2 + 16));
  v8 = sub_100171B08(v7);
  v10 = v9;

  _StringGuts.grow(_:)(32);

  strcpy(v32, "INSERT INTO ");
  BYTE5(v32[1]) = 0;
  HIWORD(v32[1]) = -5120;
  v11 = *(*a3 + 16);
  v12 = *(*a3 + 24);

  v13._countAndFlagsBits = v11;
  v13._object = v12;
  String.append(_:)(v13);

  v14._countAndFlagsBits = 10272;
  v14._object = 0xE200000000000000;
  String.append(_:)(v14);
  v15._countAndFlagsBits = sub_100171B08(a2);
  String.append(_:)(v15);

  v16._countAndFlagsBits = 0x5345554C41562029;
  v16._object = 0xEA00000000002820;
  String.append(_:)(v16);
  v17._countAndFlagsBits = v8;
  v17._object = v10;
  String.append(_:)(v17);

  v18._countAndFlagsBits = 15145;
  v18._object = 0xE200000000000000;
  String.append(_:)(v18);
  v19 = v32[0];
  v20 = v32[1];
  type metadata accessor for DBStatement();
  inited = swift_initStackObject();
  *(inited + 16) = 0;
  swift_weakInit();
  swift_weakAssign();

  v22 = sub_1001399BC(v19, v20);

  *(inited + 16) = v22;
  if (!v22)
  {
    sub_100139F18();
    swift_allocError();
    *v30 = 1;
LABEL_7:
    *(v30 + 4) = 2;
    swift_willThrow();
    goto LABEL_8;
  }

  v24 = *(a1 + 16);
  __chkstk_darwin(v23);
  OS_dispatch_queue.sync<A>(execute:)();
  if ((v32[0] & 1) == 0)
  {
    sub_100139F18();
    swift_allocError();
    *v30 = 2;
    goto LABEL_7;
  }

  v25 = sub_100138000(101);
  if (v26)
  {
    v27 = HIDWORD(v25);
    LODWORD(v32[0]) = v25;
    BYTE4(v32[0]) = BYTE4(v25);
    v28 = v25;
    sub_100139F18();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v29 = v28;
    *(v29 + 4) = v27;
  }

LABEL_8:
  swift_setDeallocating();
  return sub_100137E54();
}

uint64_t sub_100171B08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 40);
  do
  {
    v6 = *(v4 - 1);
    v5 = *v4;
    v8 = result;

    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    String.append(_:)(v7);

    String.append<A>(contentsOf:)();
    swift_bridgeObjectRelease_n();

    result = v8;
    v4 += 2;
    --v1;
  }

  while (v1);
  return result;
}

void *sub_100171C2C()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1000B5150(v0, v7, &unk_1002AA510, &unk_10023EE08);
    if (*(v4 + 24))
    {
      v2 = sub_100171D78(v4, v7);
    }

    else
    {
      sub_100138F54();
      if (!v1)
      {
        v2 = sub_100171D78(v4, v7);
        sub_1001396D0();
      }
    }

    sub_100095C84(v7, &unk_1002AA510, &unk_10023EE08);
  }

  else
  {
    sub_1000B346C();
    swift_allocError();
    *v5 = 2;
    swift_willThrow();
  }

  return v2;
}

void *sub_100171D78(uint64_t a1, uint64_t a2)
{
  v4 = _swiftEmptyArrayStorage;
  v26 = _swiftEmptyArrayStorage;
  _StringGuts.grow(_:)(16);

  strcpy(v25, "SELECT * FROM ");
  HIBYTE(v25[1]) = -18;
  v5 = *(*a2 + 16);
  v6 = *(*a2 + 24);

  v7._countAndFlagsBits = v5;
  v7._object = v6;
  String.append(_:)(v7);

  v8 = v25[0];
  v9 = v25[1];
  type metadata accessor for DBStatement();
  inited = swift_initStackObject();
  *(inited + 16) = 0;
  swift_weakInit();
  swift_weakAssign();

  v11 = sub_1001399BC(v8, v9);

  *(inited + 16) = v11;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    while (1)
    {
      if (!*(inited + 16))
      {

        v18 = 0x200000001;
        goto LABEL_13;
      }

      if ((*(Strong + 24) & 1) == 0)
      {

        goto LABEL_12;
      }

      v13 = *(Strong + 16);
      OS_dispatch_queue.sync<A>(execute:)();

      if (LODWORD(v25[0]) != 100)
      {
        v18 = LODWORD(v25[0]) | &_mh_execute_header;
        goto LABEL_13;
      }

      v15 = *(inited + 16);
      v16 = *(a1 + 16);
      __chkstk_darwin(v14);
      sub_100095274(&unk_1002AA520, &qword_10023EE18);
      OS_dispatch_queue.sync<A>(execute:)();
      if (!v25[0])
      {
        break;
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v17 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v4 = v26;
      Strong = swift_weakLoadStrong();
      if (!Strong)
      {
        goto LABEL_12;
      }
    }

    sub_1000B346C();
    v19 = swift_allocError();
    *v22 = 2;
    swift_willThrow();
  }

  else
  {
LABEL_12:
    v18 = 0x200000000;
LABEL_13:
    LODWORD(v25[0]) = v18;
    BYTE4(v25[0]) = BYTE4(v18);
    sub_100139F18();
    swift_willThrowTypedImpl();
    v19 = swift_allocError();
    *v20 = v18;
    *(v20 + 4) = BYTE4(v18);
  }

  v25[0] = v19;
  swift_errorRetain();
  sub_100095274(&qword_1002A7268, &unk_10023C680);
  if (swift_dynamicCast() && v24 == 1 && v23 == 101)
  {

    swift_setDeallocating();
    sub_100137E54();
  }

  else
  {

    swift_willThrow();
    swift_setDeallocating();
    sub_100137E54();
  }

  return v4;
}

void sub_100172148(unint64_t a1, const void *a2, const void *a3)
{
  v7 = sub_1001762B8(a2, a3, 1);
  if (v7 >> 62)
  {
    v29 = v7;
    v30 = _CocoaArrayWrapper.endIndex.getter();
    v7 = v29;
    if (v30)
    {
LABEL_3:
      if ((v7 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_30:
          swift_once();
LABEL_14:
          v22 = type metadata accessor for Logger();
          sub_100093DE8(v22, qword_1002AA0E0);

          v23 = Logger.logObject.getter();
          v24 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v23, v24))
          {
            v25 = swift_slowAlloc();
            v31[0] = swift_slowAlloc();
            *v25 = 136315394;
            *(v25 + 4) = sub_1000952D4(a2, a3, v31);
            *(v25 + 12) = 2080;
            if (a1)
            {
              v26 = v3;
            }

            else
            {
              v26 = 0x206E776F6E6B6E55;
            }

            if (a1)
            {
              v27 = a1;
            }

            else
            {
              v27 = 0xED0000726F727245;
            }

            v28 = sub_1000952D4(v26, v27, v31);

            *(v25 + 14) = v28;
            _os_log_impl(&_mh_execute_header, v23, v24, "Unable to update peer key state number for %s: %s", v25, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          return;
        }

        v8 = *(v7 + 32);
      }

      *(v8 + 128) = a1;
      sub_100095274(&qword_1002AA4D8, &unk_10023FAE0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10023C170;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 40) = v10;
      v11 = *(v8 + 96);
      v12 = *(v8 + 104);
      *(inited + 72) = &type metadata for Data;
      *(inited + 48) = v11;
      *(inited + 56) = v12;
      sub_1000A0CD8(v11, v12);
      sub_1001F2468(inited);
      swift_setDeallocating();
      sub_100095C84(inited + 32, &qword_1002AA4E0, &qword_10023EE00);
      v13 = swift_initStackObject();
      *(v13 + 16) = xmmword_10023C170;
      *(v13 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v13 + 40) = v14;
      v15 = sub_10017565C();
      *(v13 + 72) = &type metadata for String;
      *(v13 + 48) = v15;
      *(v13 + 56) = v16;
      sub_1001F2468(v13);
      swift_setDeallocating();
      sub_100095C84(v13 + 32, &qword_1002AA4E0, &qword_10023EE00);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v18 = Dictionary._bridgeToObjectiveC()().super.isa;

      v19 = SecItemUpdate(isa, v18);

      if (!v19)
      {

        return;
      }

      v20 = SecCopyErrorMessageString(v19, 0);
      if (v20)
      {
        v21 = v20;
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v31[0] = 0;
          v31[1] = 0;
          static String._conditionallyBridgeFromObjectiveC(_:result:)();
        }
      }

      v3 = 0;
      a1 = 0;
      if (qword_1002A6770 == -1)
      {
        goto LABEL_14;
      }

      goto LABEL_30;
    }
  }

  else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }
}

void sub_1001725C4(uint64_t a1, unint64_t a2, const void *a3, const void *a4)
{
  v9 = sub_1001762B8(a3, a4, 1);
  if (v9 >> 62)
  {
    v32 = v9;
    v33 = _CocoaArrayWrapper.endIndex.getter();
    v9 = v32;
    if (v33)
    {
LABEL_3:
      if ((v9 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_30:
          swift_once();
LABEL_14:
          v25 = type metadata accessor for Logger();
          sub_100093DE8(v25, qword_1002AA0E0);

          v26 = Logger.logObject.getter();
          v27 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            v34[0] = swift_slowAlloc();
            *v28 = 136315394;
            *(v28 + 4) = sub_1000952D4(a3, a4, v34);
            *(v28 + 12) = 2080;
            if (a2)
            {
              v29 = v4;
            }

            else
            {
              v29 = 0x206E776F6E6B6E55;
            }

            if (a2)
            {
              v30 = a2;
            }

            else
            {
              v30 = 0xED0000726F727245;
            }

            v31 = sub_1000952D4(v29, v30, v34);

            *(v28 + 14) = v31;
            _os_log_impl(&_mh_execute_header, v26, v27, "Unable to update peer key state number for %s: %s", v28, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          return;
        }

        v10 = *(v9 + 32);
      }

      v11 = v10[18];
      v10[17] = a1;
      v10[18] = a2;

      sub_100095274(&qword_1002AA4D8, &unk_10023FAE0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10023C170;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 40) = v13;
      v14 = v10[12];
      v15 = v10[13];
      *(inited + 72) = &type metadata for Data;
      *(inited + 48) = v14;
      *(inited + 56) = v15;
      sub_1000A0CD8(v14, v15);
      sub_1001F2468(inited);
      swift_setDeallocating();
      sub_100095C84(inited + 32, &qword_1002AA4E0, &qword_10023EE00);
      v16 = swift_initStackObject();
      *(v16 + 16) = xmmword_10023C170;
      *(v16 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v16 + 40) = v17;
      v18 = sub_10017565C();
      *(v16 + 72) = &type metadata for String;
      *(v16 + 48) = v18;
      *(v16 + 56) = v19;
      sub_1001F2468(v16);
      swift_setDeallocating();
      sub_100095C84(v16 + 32, &qword_1002AA4E0, &qword_10023EE00);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v21 = Dictionary._bridgeToObjectiveC()().super.isa;

      v22 = SecItemUpdate(isa, v21);

      if (!v22)
      {

        return;
      }

      v23 = SecCopyErrorMessageString(v22, 0);
      if (v23)
      {
        v24 = v23;
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v34[0] = 0;
          v34[1] = 0;
          static String._conditionallyBridgeFromObjectiveC(_:result:)();
        }
      }

      v4 = 0;
      a2 = 0;
      if (qword_1002A6770 == -1)
      {
        goto LABEL_14;
      }

      goto LABEL_30;
    }
  }

  else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }
}

uint64_t sub_100172A58()
{
  v0 = type metadata accessor for Logger();
  sub_100093D84(v0, qword_1002AA0E0);
  sub_100093DE8(v0, qword_1002AA0E0);
  return Logger.init(subsystem:category:)();
}

_OWORD *sub_100172AD0(uint64_t a1, unint64_t a2, char a3)
{
  v6 = type metadata accessor for String.Encoding();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2)
    {
      return &_swiftEmptyArrayStorage;
    }

    v9 = *(a1 + 16);
    v10 = *(a1 + 24);
LABEL_8:
    if (v9 != v10)
    {
      goto LABEL_9;
    }

    return &_swiftEmptyArrayStorage;
  }

  if (v8)
  {
    v9 = a1;
    v10 = a1 >> 32;
    goto LABEL_8;
  }

  if ((a2 & 0xFF000000000000) == 0)
  {
    return &_swiftEmptyArrayStorage;
  }

LABEL_9:
  v42 = a1;
  v43 = a2;
  static String.Encoding.utf8.getter();
  sub_10017E9A8();
  v11 = String.init<A>(bytes:encoding:)();
  if (!v12)
  {
    return &_swiftEmptyArrayStorage;
  }

  v13 = v12;
  if (a3)
  {
    v14 = sub_10013B844(v11, v12);
    v16 = v15;

    if (v16 >> 60 != 15)
    {
      sub_100095274(&unk_1002AA540, &unk_10023EE28);
      result = swift_allocObject();
      result[1] = xmmword_10023C170;
      *(result + 4) = v14;
      *(result + 5) = v16;
      return result;
    }

    return &_swiftEmptyArrayStorage;
  }

  v42 = 43;
  v43 = 0xE100000000000000;
  __chkstk_darwin(v11);
  *&v41[-16] = &v42;
  v19 = sub_10017B660(0x7FFFFFFFFFFFFFFFLL, 1, sub_10017EA54, &v41[-32], v18, v13, v41);
  if (v19[2] != 2)
  {
    goto LABEL_15;
  }

  v20 = v19[4];
  v21 = v19[5];
  v22 = v19[6];
  v23 = v19[7];
  v24 = v19;

  v25 = static String._fromSubstring(_:)();
  v27 = v26;

  v28 = sub_10013B844(v25, v27);
  v30 = v29;

  if (v30 >> 60 == 15)
  {
LABEL_15:

    return &_swiftEmptyArrayStorage;
  }

  if (v24[2] < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v31 = v24[8];
    v32 = v24[9];
    v33 = v24[10];
    v34 = v24[11];

    v35 = static String._fromSubstring(_:)();
    v37 = v36;

    v38 = sub_10013B844(v35, v37);
    v40 = v39;

    if (v40 >> 60 == 15)
    {
      sub_1000A452C(v28, v30);
      return &_swiftEmptyArrayStorage;
    }

    sub_100095274(&unk_1002AA540, &unk_10023EE28);
    result = swift_allocObject();
    result[1] = xmmword_10023AAC0;
    *(result + 4) = v28;
    *(result + 5) = v30;
    *(result + 6) = v38;
    *(result + 7) = v40;
  }

  return result;
}

Swift::Int sub_100172DEC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*&aIpkd[8 * v1]);
  return Hasher._finalize()();
}

Swift::Int sub_100172E74()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*&aIpkd[8 * v1]);
  return Hasher._finalize()();
}

uint64_t *sub_100172EC0@<X0>(uint64_t *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (*result == 1684762729)
  {
    v3 = 0;
  }

  else
  {
    v3 = 3;
  }

  if (v2 == 1684762731)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (v2 == 1684759156)
  {
    v5 = 2;
  }

  else
  {
    v5 = v4;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_100172F20(sqlite3_stmt *a1)
{
  v2 = v1;
  v4 = sub_100095274(&qword_1002A7AF0, &qword_10023C9D0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v98 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtCC14dockaccessoryd17AccessoryKeystore24AccessoryPeripheralEntry_peripheralIdentifier;
  v17 = *(v12 + 56);
  v17(v1 + OBJC_IVAR____TtCC14dockaccessoryd17AccessoryKeystore24AccessoryPeripheralEntry_peripheralIdentifier, 1, 1, v11);
  *(v1 + OBJC_IVAR____TtCC14dockaccessoryd17AccessoryKeystore24AccessoryPeripheralEntry_sessionId) = 0;
  *(v1 + OBJC_IVAR____TtCC14dockaccessoryd17AccessoryKeystore24AccessoryPeripheralEntry_version) = 0;
  if (!sqlite3_column_text(a1, 1))
  {
    if (qword_1002A6770 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100093DE8(v30, qword_1002AA0E0);
    v22 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v22, v31))
    {
      goto LABEL_28;
    }

    v32 = swift_slowAlloc();
    *v32 = 0;
    v33 = "Unable to read identifier";
LABEL_26:
    _os_log_impl(&_mh_execute_header, v22, v31, v33, v32, 2u);
    goto LABEL_27;
  }

  v101 = v15;
  v102 = v12;
  if (!sqlite3_column_text(a1, 2))
  {
    if (qword_1002A6770 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_100093DE8(v34, qword_1002AA0E0);
    v22 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v22, v31))
    {
      goto LABEL_28;
    }

    v32 = swift_slowAlloc();
    *v32 = 0;
    v33 = "Unable to read peripheral identifier";
    goto LABEL_26;
  }

  v18 = sqlite3_column_text(a1, 3);
  if (!v18)
  {
    if (qword_1002A6770 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_100093DE8(v35, qword_1002AA0E0);
    v22 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v22, v31))
    {
      goto LABEL_28;
    }

    v32 = swift_slowAlloc();
    *v32 = 0;
    v33 = "Unable to read session Id";
    goto LABEL_26;
  }

  v100 = v18;
  v19 = sqlite3_column_text(a1, 4);
  if (!v19)
  {
    if (qword_1002A6770 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_100093DE8(v36, qword_1002AA0E0);
    v22 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v22, v31))
    {
      goto LABEL_28;
    }

    v32 = swift_slowAlloc();
    *v32 = 0;
    v33 = "Unable to read version";
    goto LABEL_26;
  }

  v98[1] = v19;
  v99 = v1;
  String.init(cString:)();
  UUID.init(uuidString:)();

  v20 = v102;
  if ((*(v102 + 48))(v10, 1, v11) == 1)
  {
    sub_100095C84(v10, &qword_1002A7AF0, &qword_10023C9D0);
    if (qword_1002A6770 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100093DE8(v21, qword_1002AA0E0);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    v24 = os_log_type_enabled(v22, v23);
    v2 = v99;
    if (!v24)
    {
      goto LABEL_28;
    }

    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v104 = v26;
    *v25 = 136315138;
    v27 = String.init(cString:)();
    v29 = sub_1000952D4(v27, v28, &v104);

    *(v25 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v22, v23, "Invalid UUID %s", v25, 0xCu);
    sub_100095808(v26);

LABEL_27:

LABEL_28:

    sub_100095C84(v2 + OBJC_IVAR____TtCC14dockaccessoryd17AccessoryKeystore24AccessoryPeripheralEntry_peripheralIdentifier, &qword_1002A7AF0, &qword_10023C9D0);
    type metadata accessor for AccessoryKeystore.AccessoryPeripheralEntry();
    v37 = *(*v2 + 48);
    v38 = *(*v2 + 52);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v40 = v101;
  (*(v20 + 32))(v101, v10, v11);
  (*(v20 + 16))(v8, v40, v11);
  v17(v8, 0, 1, v11);
  v41 = v99;
  swift_beginAccess();
  sub_10017E7A8(v8, v41 + v16);
  swift_endAccess();
  *(v41 + 16) = String.init(cString:)();
  *(v41 + 24) = v42;
  result = String.init(cString:)();
  v44 = HIBYTE(v43) & 0xF;
  v45 = result & 0xFFFFFFFFFFFFLL;
  if ((v43 & 0x2000000000000000) != 0)
  {
    v46 = HIBYTE(v43) & 0xF;
  }

  else
  {
    v46 = result & 0xFFFFFFFFFFFFLL;
  }

  if (v46)
  {
    v47 = &unk_1002B1000;
    if ((v43 & 0x1000000000000000) != 0)
    {
      v51 = sub_10017C5E4(result, v43, 10);
      v68 = v95;

      v48 = v101;
LABEL_98:
      if (v68)
      {
        v69 = 0;
      }

      else
      {
        v69 = v51;
      }

      goto LABEL_101;
    }

    v48 = v101;
    if ((v43 & 0x2000000000000000) == 0)
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (v43 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
        v45 = v97;
      }

      v49 = *result;
      if (v49 == 43)
      {
        if (v45 >= 1)
        {
          v59 = v45 - 1;
          if (v59)
          {
            if (result)
            {
              v51 = 0;
              v60 = (result + 1);
              while (1)
              {
                v61 = *v60 - 48;
                if (v61 > 9)
                {
                  goto LABEL_85;
                }

                if (!is_mul_ok(v51, 0xAuLL))
                {
                  goto LABEL_85;
                }

                v54 = __CFADD__(10 * v51, v61);
                v51 = 10 * v51 + v61;
                if (v54)
                {
                  goto LABEL_85;
                }

                ++v60;
                if (!--v59)
                {
                  goto LABEL_87;
                }
              }
            }

            goto LABEL_86;
          }

          goto LABEL_85;
        }

        goto LABEL_179;
      }

      if (v49 != 45)
      {
        if (v45)
        {
          if (result)
          {
            v51 = 0;
            while (1)
            {
              v65 = *result - 48;
              if (v65 > 9)
              {
                goto LABEL_85;
              }

              if (!is_mul_ok(v51, 0xAuLL))
              {
                goto LABEL_85;
              }

              v54 = __CFADD__(10 * v51, v65);
              v51 = 10 * v51 + v65;
              if (v54)
              {
                goto LABEL_85;
              }

              ++result;
              if (!--v45)
              {
                goto LABEL_87;
              }
            }
          }

          goto LABEL_86;
        }

LABEL_85:
        v51 = 0;
        v103 = 1;
LABEL_97:
        v68 = v103;

        goto LABEL_98;
      }

      if (v45 >= 1)
      {
        v50 = v45 - 1;
        if (v50)
        {
          if (result)
          {
            v51 = 0;
            v52 = (result + 1);
            while (1)
            {
              v53 = *v52 - 48;
              if (v53 > 9)
              {
                goto LABEL_85;
              }

              if (!is_mul_ok(v51, 0xAuLL))
              {
                goto LABEL_85;
              }

              v54 = 10 * v51 >= v53;
              v51 = 10 * v51 - v53;
              if (!v54)
              {
                goto LABEL_85;
              }

              ++v52;
              if (!--v50)
              {
                goto LABEL_87;
              }
            }
          }

LABEL_86:
          v51 = 0;
LABEL_87:
          v103 = 0;
          goto LABEL_97;
        }

        goto LABEL_85;
      }

      __break(1u);
LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
      goto LABEL_180;
    }

    v104 = result;
    v105 = v43 & 0xFFFFFFFFFFFFFFLL;
    if (result == 43)
    {
      if (!v44)
      {
LABEL_180:
        __break(1u);
LABEL_181:
        __break(1u);
LABEL_182:
        __break(1u);
LABEL_183:
        __break(1u);
        goto LABEL_184;
      }

      v62 = v44 - 1;
      if (v62)
      {
        v51 = 0;
        v63 = &v104 + 1;
        while (1)
        {
          v64 = *v63 - 48;
          if (v64 > 9)
          {
            break;
          }

          if (!is_mul_ok(v51, 0xAuLL))
          {
            break;
          }

          v54 = __CFADD__(10 * v51, v64);
          v51 = 10 * v51 + v64;
          if (v54)
          {
            break;
          }

          v58 = 0;
          ++v63;
          if (!--v62)
          {
            goto LABEL_96;
          }
        }
      }
    }

    else if (result == 45)
    {
      if (!v44)
      {
        goto LABEL_178;
      }

      v55 = v44 - 1;
      if (v55)
      {
        v51 = 0;
        v56 = &v104 + 1;
        while (1)
        {
          v57 = *v56 - 48;
          if (v57 > 9)
          {
            break;
          }

          if (!is_mul_ok(v51, 0xAuLL))
          {
            break;
          }

          v54 = 10 * v51 >= v57;
          v51 = 10 * v51 - v57;
          if (!v54)
          {
            break;
          }

          v58 = 0;
          ++v56;
          if (!--v55)
          {
            goto LABEL_96;
          }
        }
      }
    }

    else if (v44)
    {
      v51 = 0;
      v66 = &v104;
      while (1)
      {
        v67 = *v66 - 48;
        if (v67 > 9)
        {
          break;
        }

        if (!is_mul_ok(v51, 0xAuLL))
        {
          break;
        }

        v54 = __CFADD__(10 * v51, v67);
        v51 = 10 * v51 + v67;
        if (v54)
        {
          break;
        }

        v58 = 0;
        v66 = (v66 + 1);
        if (!--v44)
        {
          goto LABEL_96;
        }
      }
    }

    v51 = 0;
    v58 = 1;
LABEL_96:
    v103 = v58;
    goto LABEL_97;
  }

  v69 = 0;
  v47 = &unk_1002B1000;
  v48 = v101;
LABEL_101:
  *(v41 + OBJC_IVAR____TtCC14dockaccessoryd17AccessoryKeystore24AccessoryPeripheralEntry_sessionId) = v69;
  result = String.init(cString:)();
  v71 = v70;
  v72 = HIBYTE(v70) & 0xF;
  v73 = result & 0xFFFFFFFFFFFFLL;
  if ((v71 & 0x2000000000000000) != 0)
  {
    v74 = v72;
  }

  else
  {
    v74 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v74)
  {
    (*(v102 + 8))(v48, v11);

    v94 = 0;
LABEL_170:
    result = v41;
    *(v41 + v47[411]) = v94;
    return result;
  }

  if ((v71 & 0x1000000000000000) != 0)
  {
    v77 = sub_10017C5E4(result, v71, 10);
    v93 = v96;
LABEL_167:
    (*(v102 + 8))(v48, v11);

    if (v93)
    {
      v94 = 0;
    }

    else
    {
      v94 = v77;
    }

    goto LABEL_170;
  }

  if ((v71 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v71 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v75 = *result;
    if (v75 == 43)
    {
      if (v73 >= 1)
      {
        v84 = v73 - 1;
        if (v73 != 1)
        {
          if (result)
          {
            v77 = 0;
            v85 = (result + 1);
            while (1)
            {
              v86 = *v85 - 48;
              if (v86 > 9)
              {
                goto LABEL_165;
              }

              if (!is_mul_ok(v77, 0xAuLL))
              {
                goto LABEL_165;
              }

              v54 = __CFADD__(10 * v77, v86);
              v77 = 10 * v77 + v86;
              if (v54)
              {
                goto LABEL_165;
              }

              v80 = 0;
              ++v85;
              if (!--v84)
              {
                goto LABEL_166;
              }
            }
          }

          goto LABEL_157;
        }

        goto LABEL_165;
      }

      goto LABEL_183;
    }

    if (v75 != 45)
    {
      if (v73)
      {
        if (result)
        {
          v77 = 0;
          while (1)
          {
            v90 = *result - 48;
            if (v90 > 9)
            {
              goto LABEL_165;
            }

            if (!is_mul_ok(v77, 0xAuLL))
            {
              goto LABEL_165;
            }

            v54 = __CFADD__(10 * v77, v90);
            v77 = 10 * v77 + v90;
            if (v54)
            {
              goto LABEL_165;
            }

            v80 = 0;
            ++result;
            if (!--v73)
            {
              goto LABEL_166;
            }
          }
        }

        goto LABEL_157;
      }

LABEL_165:
      v77 = 0;
      v80 = 1;
      goto LABEL_166;
    }

    if (v73 >= 1)
    {
      v76 = v73 - 1;
      if (v73 != 1)
      {
        if (result)
        {
          v77 = 0;
          v78 = (result + 1);
          while (1)
          {
            v79 = *v78 - 48;
            if (v79 > 9)
            {
              goto LABEL_165;
            }

            if (!is_mul_ok(v77, 0xAuLL))
            {
              goto LABEL_165;
            }

            v54 = 10 * v77 >= v79;
            v77 = 10 * v77 - v79;
            if (!v54)
            {
              goto LABEL_165;
            }

            v80 = 0;
            ++v78;
            if (!--v76)
            {
              goto LABEL_166;
            }
          }
        }

LABEL_157:
        v77 = 0;
        v80 = 0;
LABEL_166:
        v103 = v80;
        v93 = v80;
        goto LABEL_167;
      }

      goto LABEL_165;
    }

    goto LABEL_181;
  }

  v104 = result;
  v105 = v71 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v72)
      {
        v77 = 0;
        v91 = &v104;
        while (1)
        {
          v92 = *v91 - 48;
          if (v92 > 9)
          {
            break;
          }

          if (!is_mul_ok(v77, 0xAuLL))
          {
            break;
          }

          v54 = __CFADD__(10 * v77, v92);
          v77 = 10 * v77 + v92;
          if (v54)
          {
            break;
          }

          v80 = 0;
          v91 = (v91 + 1);
          if (!--v72)
          {
            goto LABEL_166;
          }
        }
      }

      goto LABEL_165;
    }

    if (v72)
    {
      v81 = v72 - 1;
      if (v81)
      {
        v77 = 0;
        v82 = &v104 + 1;
        while (1)
        {
          v83 = *v82 - 48;
          if (v83 > 9)
          {
            break;
          }

          if (!is_mul_ok(v77, 0xAuLL))
          {
            break;
          }

          v54 = 10 * v77 >= v83;
          v77 = 10 * v77 - v83;
          if (!v54)
          {
            break;
          }

          v80 = 0;
          ++v82;
          if (!--v81)
          {
            goto LABEL_166;
          }
        }
      }

      goto LABEL_165;
    }

    goto LABEL_182;
  }

  if (v72)
  {
    v87 = v72 - 1;
    if (v87)
    {
      v77 = 0;
      v88 = &v104 + 1;
      while (1)
      {
        v89 = *v88 - 48;
        if (v89 > 9)
        {
          break;
        }

        if (!is_mul_ok(v77, 0xAuLL))
        {
          break;
        }

        v54 = __CFADD__(10 * v77, v89);
        v77 = 10 * v77 + v89;
        if (v54)
        {
          break;
        }

        v80 = 0;
        ++v88;
        if (!--v87)
        {
          goto LABEL_166;
        }
      }
    }

    goto LABEL_165;
  }

LABEL_184:
  __break(1u);
  return result;
}

uint64_t sub_100173C18(uint64_t a1, uint64_t a2)
{
  v5 = sub_100095274(&qword_1002A7AF0, &qword_10023C9D0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v54 - v10;
  v62 = a1;
  v12 = sqlite3_bind_parameter_count(*(a1 + 16));
  v13 = v12;
  v63 = *(a2 + 16);
  if (v63 != v12)
  {
    if (qword_1002A6770 != -1)
    {
      goto LABEL_66;
    }

    goto LABEL_44;
  }

  if (v12 < 1)
  {
    goto LABEL_65;
  }

  v58 = v9;
  v55 = OBJC_IVAR____TtCC14dockaccessoryd17AccessoryKeystore24AccessoryPeripheralEntry_version;
  v56 = OBJC_IVAR____TtCC14dockaccessoryd17AccessoryKeystore24AccessoryPeripheralEntry_sessionId;
  v61 = a2 + 32;
  v64 = OBJC_IVAR____TtCC14dockaccessoryd17AccessoryKeystore24AccessoryPeripheralEntry_peripheralIdentifier;
  swift_beginAccess();
  v14 = 1;
  v60 = v2;
  v59 = v13;
  v57 = v11;
  while (1)
  {
    v15 = v14;
    if (v14 == v13)
    {
      v14 = 0;
    }

    else
    {
      if (v14 == 0x7FFFFFFF)
      {
        goto LABEL_64;
      }

      ++v14;
    }

    v16 = v15 - 1;
    if (__OFSUB__(v15, 1))
    {
      break;
    }

    if (v16 < 0 || v63 <= v16)
    {
      goto LABEL_63;
    }

    v66 = v15;
    v17 = (v61 + 16 * v16);
    v19 = *v17;
    v18 = v17[1];
    v20 = *v17 == 0x7265687069726570 && v18 == 0xEC00000064496C61;
    if (v20 || (v21 = *v17, v22 = v17[1], (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      v65 = v14;
      sub_1000B5150(v2 + v64, v11, &qword_1002A7AF0, &qword_10023C9D0);
      v23 = type metadata accessor for UUID();
      v24 = v11;
      v25 = *(v23 - 8);
      v26 = *(v25 + 48);
      if (v26(v11, 1, v23) == 1)
      {
        sub_100095C84(v11, &qword_1002A7AF0, &qword_10023C9D0);
      }

      else
      {

        v27 = v64;
        sub_100095C84(v24, &qword_1002A7AF0, &qword_10023C9D0);
        v28 = v2 + v27;
        v29 = v58;
        sub_1000B5150(v28, v58, &qword_1002A7AF0, &qword_10023C9D0);
        if (v26(v29, 1, v23) == 1)
        {
          __break(1u);
LABEL_68:
          swift_once();
LABEL_41:
          v41 = type metadata accessor for Logger();
          sub_100093DE8(v41, qword_1002AA0E0);
          v42 = Logger.logObject.getter();
          v43 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v42, v43))
          {
            v44 = swift_slowAlloc();
            *v44 = 0;
            v45 = "Unable to bind version";
            goto LABEL_59;
          }

          goto LABEL_60;
        }

        UUID.uuidString.getter();
        (*(v25 + 8))(v29, v23);
        v11 = v57;
      }

      v18 = String._bridgeToObjectiveC()();

      v30 = *(v62 + 16);
      v31 = [v18 UTF8String];
      if (sqlite3_bind_text(v30, v66, v31, -1, 0))
      {
        if (qword_1002A6770 != -1)
        {
          swift_once();
        }

        v51 = type metadata accessor for Logger();
        sub_100093DE8(v51, qword_1002AA0E0);
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          *v44 = 0;
          v45 = "Unable to bind peripheral UUID";
          goto LABEL_59;
        }

        goto LABEL_60;
      }

      v2 = v60;
      v13 = v59;
      v14 = v65;
    }

    else
    {
      v32 = v19 == 0x696669746E656469 && v18 == 0xEA00000000007265;
      if (v32 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v33 = *(v2 + 16);
        v34 = *(v2 + 24);
        v18 = String._bridgeToObjectiveC()();
        v35 = *(v62 + 16);
        v36 = [v18 UTF8String];
        if (sqlite3_bind_text(v35, v66, v36, -1, 0))
        {
          if (qword_1002A6770 != -1)
          {
            swift_once();
          }

          v52 = type metadata accessor for Logger();
          sub_100093DE8(v52, qword_1002AA0E0);
          v42 = Logger.logObject.getter();
          v43 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v42, v43))
          {
            v44 = swift_slowAlloc();
            *v44 = 0;
            v45 = "Unable to bind identifier";
            goto LABEL_59;
          }

          goto LABEL_60;
        }
      }

      else if (v19 == 0x496E6F6973736573 && v18 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v67 = *(v2 + v56);
        sub_1000A44D8();
        String.init<A>(_:radix:uppercase:)();
        v18 = String._bridgeToObjectiveC()();

        v37 = *(v62 + 16);
        v38 = [v18 UTF8String];
        if (sqlite3_bind_text(v37, v66, v38, -1, 0))
        {
          if (qword_1002A6770 != -1)
          {
            swift_once();
          }

          v53 = type metadata accessor for Logger();
          sub_100093DE8(v53, qword_1002AA0E0);
          v42 = Logger.logObject.getter();
          v43 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v42, v43))
          {
            v44 = swift_slowAlloc();
            *v44 = 0;
            v45 = "Unable to bind sessionId";
LABEL_59:
            _os_log_impl(&_mh_execute_header, v42, v43, v45, v44, 2u);
          }

LABEL_60:

          return 0;
        }
      }

      else
      {
        if ((v19 != 0x6E6F6973726576 || v18 != 0xE700000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_29;
        }

        v67 = *(v2 + v55);
        sub_10017E8D0();
        String.init<A>(_:radix:uppercase:)();
        v18 = String._bridgeToObjectiveC()();

        v39 = *(v62 + 16);
        v40 = [v18 UTF8String];
        if (sqlite3_bind_text(v39, v66, v40, -1, 0))
        {
          if (qword_1002A6770 == -1)
          {
            goto LABEL_41;
          }

          goto LABEL_68;
        }
      }
    }

LABEL_29:
    if (v66 == v13)
    {
      return 1;
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  swift_once();
LABEL_44:
  v46 = type metadata accessor for Logger();
  sub_100093DE8(v46, qword_1002AA0E0);

  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 67109376;
    *(v49 + 4) = v13;
    *(v49 + 8) = 2048;
    *(v49 + 10) = v63;

    _os_log_impl(&_mh_execute_header, v47, v48, "SQL parameters list (%d) is not the same size as bound values (%ld)", v49, 0x12u);
  }

  else
  {
  }

  return 0;
}

char *sub_100174554(uint64_t a1)
{
  v3 = sub_100095274(&qword_1002A7AF0, &qword_10023C9D0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  __chkstk_darwin(v5);
  v8 = *(a1 + 16);
  if (v8)
  {
    v38 = v7;
    v39 = &v34 - v6;
    v35 = OBJC_IVAR____TtCC14dockaccessoryd17AccessoryKeystore24AccessoryPeripheralEntry_version;
    v36 = OBJC_IVAR____TtCC14dockaccessoryd17AccessoryKeystore24AccessoryPeripheralEntry_sessionId;
    v9 = OBJC_IVAR____TtCC14dockaccessoryd17AccessoryKeystore24AccessoryPeripheralEntry_peripheralIdentifier;
    swift_beginAccess();
    v10 = (a1 + 40);
    v11 = _swiftEmptyArrayStorage;
    v12 = &qword_1002A7AF0;
    v41 = v9;
    v37 = v1;
    while (1)
    {
      v14 = *(v10 - 1);
      v13 = *v10;
      if (v14 == 0x696669746E656469 && v13 == 0xEA00000000007265)
      {
        break;
      }

      v16 = *(v10 - 1);
      v17 = *v10;
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v24 = v14 == 0x7265687069726570 && v13 == 0xEC00000064496C61;
      if (!v24 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        if (v14 == 0x496E6F6973736573 && v13 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v42 = *(v1 + v36);
          sub_1000A44D8();
        }

        else
        {
          if ((v14 != 0x6E6F6973726576 || v13 != 0xE700000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_13;
          }

          v42 = *(v1 + v35);
          sub_10017E8D0();
        }

        v19 = String.init<A>(_:radix:uppercase:)();
        v18 = v33;
LABEL_9:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_100102844(0, *(v11 + 2) + 1, 1, v11);
        }

        v21 = *(v11 + 2);
        v20 = *(v11 + 3);
        v22 = v21 + 1;
        if (v21 < v20 >> 1)
        {
          goto LABEL_12;
        }

        goto LABEL_30;
      }

      v25 = v12;
      v26 = v39;
      sub_1000B5150(v1 + v9, v39, v25, &qword_10023C9D0);
      v27 = type metadata accessor for UUID();
      v40 = *(v27 - 8);
      v28 = *(v40 + 48);
      if (v28(v26, 1, v27) == 1)
      {
        sub_100095C84(v26, v25, &qword_10023C9D0);
        v12 = v25;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_100102844(0, *(v11 + 2) + 1, 1, v11);
        }

        v21 = *(v11 + 2);
        v29 = *(v11 + 3);
        v22 = v21 + 1;
        if (v21 >= v29 >> 1)
        {
          v11 = sub_100102844((v29 > 1), v21 + 1, 1, v11);
        }

        v19 = 0;
        v18 = 0xE000000000000000;
        goto LABEL_12;
      }

      sub_100095C84(v26, v25, &qword_10023C9D0);
      v30 = v38;
      sub_1000B5150(v1 + v41, v38, v25, &qword_10023C9D0);
      result = (v28)(v30, 1, v27);
      if (result == 1)
      {
        __break(1u);
        return result;
      }

      v19 = UUID.uuidString.getter();
      v18 = v32;
      (*(v40 + 8))(v30, v27);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_100102844(0, *(v11 + 2) + 1, 1, v11);
      }

      v12 = &qword_1002A7AF0;
      v21 = *(v11 + 2);
      v20 = *(v11 + 3);
      v22 = v21 + 1;
      v1 = v37;
      if (v21 < v20 >> 1)
      {
        goto LABEL_12;
      }

LABEL_30:
      v11 = sub_100102844((v20 > 1), v22, 1, v11);
LABEL_12:
      *(v11 + 2) = v22;
      v23 = &v11[16 * v21];
      *(v23 + 4) = v19;
      *(v23 + 5) = v18;
      v9 = v41;
LABEL_13:
      v10 += 2;
      if (!--v8)
      {
        return v11;
      }
    }

    v19 = *(v1 + 16);
    v18 = *(v1 + 24);

    goto LABEL_9;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100174A90()
{
  v1 = v0[3];

  sub_100095C84(v0 + OBJC_IVAR____TtCC14dockaccessoryd17AccessoryKeystore24AccessoryPeripheralEntry_peripheralIdentifier, &qword_1002A7AF0, &qword_10023C9D0);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_100174B0C(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = xmmword_10023BF90;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0xE000000000000000;
  *(v2 + 80) = 0;
  *(v2 + 88) = 0xE000000000000000;
  *(v2 + 96) = xmmword_10023BF90;
  *(v2 + 112) = 0;
  *(v2 + 120) = 0xE000000000000000;
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
  *(v2 + 144) = 0;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  *(v2 + 32) = [objc_opt_self() pairingIdentity];
  return v2;
}

uint64_t sub_100174B78(uint64_t a1)
{
  v2 = v1;
  *(v1 + 40) = xmmword_10023BF90;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0xE000000000000000;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0xE000000000000000;
  *(v1 + 96) = xmmword_10023BF90;
  *(v1 + 112) = 0;
  *(v1 + 120) = 0xE000000000000000;
  *(v1 + 128) = 0;
  *(v1 + 136) = 0;
  *(v1 + 144) = 0;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(a1 + 16))
  {

LABEL_15:

    if (qword_1002A6770 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100093DE8(v20, qword_1002AA0E0);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_20;
    }

    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = "Unable to parse key chain account";
LABEL_19:
    _os_log_impl(&_mh_execute_header, v21, v22, v24, v23, 2u);

LABEL_20:

LABEL_21:
    sub_1000A0D2C(*(v2 + 40), *(v2 + 48));
    v25 = *(v2 + 72);

    v26 = *(v2 + 88);

    sub_1000A0D2C(*(v2 + 96), *(v2 + 104));
    v27 = *(v2 + 120);

    v28 = *(v2 + 144);

    type metadata accessor for AccessoryKeystore.AccessoryKeyItem();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v6 = sub_10016D4D0(v4, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_100095B34(*(a1 + 56) + 32 * v6, v104);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_15;
  }

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(a1 + 16))
  {

LABEL_24:

    if (qword_1002A6770 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100093DE8(v30, qword_1002AA0E0);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_20;
    }

    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = "Unable to parse key chain value";
    goto LABEL_19;
  }

  v11 = sub_10016D4D0(v9, v10);
  v13 = v12;

  if ((v13 & 1) == 0)
  {
    goto LABEL_24;
  }

  sub_100095B34(*(a1 + 56) + 32 * v11, v104);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_24;
  }

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(a1 + 16))
  {

LABEL_30:

    if (qword_1002A6770 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_100093DE8(v31, qword_1002AA0E0);
    v21 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v21, v32))
    {
      goto LABEL_35;
    }

    v33 = swift_slowAlloc();
    *v33 = 0;
    v34 = "Unable to parse key chain item type";
    v35 = v32;
    v36 = v21;
    v37 = v33;
    v38 = 2;
LABEL_34:
    _os_log_impl(&_mh_execute_header, v36, v35, v34, v37, v38);

LABEL_35:
    sub_1000A0D2C(v102, v103);
    goto LABEL_20;
  }

  v16 = sub_10016D4D0(v14, v15);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_100095B34(*(a1 + 56) + 32 * v16, v104);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_30;
  }

  switch(v102)
  {
    case 1684759156:
      v19 = 2;
      break;
    case 1684762729:
      v19 = 0;
      break;
    case 1684762731:
      v19 = 1;
      break;
    default:

      if (qword_1002A6770 != -1)
      {
        swift_once();
      }

      v59 = type metadata accessor for Logger();
      sub_100093DE8(v59, qword_1002AA0E0);
      v21 = Logger.logObject.getter();
      v60 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v21, v60))
      {
        goto LABEL_35;
      }

      v61 = swift_slowAlloc();
      *v61 = 134217984;
      *(v61 + 4) = v102;
      v34 = "Unable to parse key chain item accessory key type: %ld";
      v35 = v60;
      v36 = v21;
      v37 = v61;
      v38 = 12;
      goto LABEL_34;
  }

  type metadata accessor for AccessoryKeystore.AccessoryKeyItem();
  inited = swift_initStackObject();

  sub_100174B0C(v102, v103);
  *(inited + 56) = v19;
  if (v19)
  {
    if (v19 == 1)
    {

      v40 = sub_100172AD0(v102, v103, 1);
      if (v40[2])
      {
        v99 = v103;
        v41 = v40[4];
        v42 = v40[5];
        sub_1000A0CD8(v41, v42);

        v43 = *(inited + 40);
        v44 = *(inited + 48);
        *(inited + 40) = v41;
        *(inited + 48) = v42;
        sub_1000A0D2C(v43, v44);
        goto LABEL_53;
      }

      sub_1000A0D2C(v102, v103);

      goto LABEL_79;
    }

    v99 = v103;

LABEL_53:
    v62 = *(inited + 24);
    *(v2 + 16) = *(inited + 16);
    *(v2 + 24) = v62;
    v63 = *(inited + 32);
    *(v2 + 32) = v63;
    v64 = *(inited + 40);
    v65 = *(inited + 48);
    v66 = *(v2 + 40);
    v67 = *(v2 + 48);
    *(v2 + 40) = v64;
    *(v2 + 48) = v65;

    v68 = v63;
    sub_1000A0CD8(v64, v65);
    sub_1000A0D2C(v66, v67);
    *(v2 + 56) = *(inited + 56);
    v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(a1 + 16))
    {
      v71 = sub_10016D4D0(v69, v70);
      v73 = v72;

      v74 = v99;
      if (v73)
      {
        sub_100095B34(*(a1 + 56) + 32 * v71, v104);
        if (swift_dynamicCast())
        {
          v75 = *(v2 + 72);
          *(v2 + 64) = v102;
          *(v2 + 72) = v103;
        }
      }
    }

    else
    {

      v74 = v99;
    }

    v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(a1 + 16))
    {
      v78 = sub_10016D4D0(v76, v77);
      v80 = v79;

      if ((v80 & 1) == 0 || (sub_100095B34(*(a1 + 56) + 32 * v78, v104), (swift_dynamicCast() & 1) == 0))
      {
LABEL_63:
        v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        if (*(a1 + 16))
        {
          v84 = sub_10016D4D0(v82, v83);
          v86 = v85;

          if (v86)
          {
            sub_100095B34(*(a1 + 56) + 32 * v84, v104);
            if (swift_dynamicCast())
            {
              v87 = *(v2 + 96);
              v88 = *(v2 + 104);
              *(v2 + 96) = v102;
              *(v2 + 104) = v103;
              sub_1000A0CD8(v102, v103);
              sub_1000A0D2C(v87, v88);
              sub_1000A0D2C(v102, v103);
            }
          }
        }

        else
        {
        }

        v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        if (*(a1 + 16))
        {
          v91 = sub_10016D4D0(v89, v90);
          v93 = v92;

          if (v93)
          {
            sub_100095B34(*(a1 + 56) + 32 * v91, v104);

            if (swift_dynamicCast())
            {
              sub_1001757B8(v102, v103);
            }

            sub_1000A0D2C(v102, v74);
            goto LABEL_77;
          }

          sub_1000A0D2C(v102, v74);
        }

        else
        {
          sub_1000A0D2C(v102, v74);
        }

LABEL_77:

        return v2;
      }

      v81 = *(v2 + 88);
      *(v2 + 80) = v102;
      *(v2 + 88) = v103;
    }

    goto LABEL_63;
  }

  v98 = inited;
  v45 = sub_100172AD0(v102, v103, 0);
  v46 = v45;
  if (!v45[2])
  {
    goto LABEL_74;
  }

  v47 = v45[4];
  v48 = v45[5];
  v100 = v47;
  v96 = v48;
  v94 = objc_allocWithZone(HMFPairingKey);
  sub_1000A0CD8(v47, v48);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v50 = [v94 initWithPairingKeyData:isa];

  result = sub_1000A0D2C(v100, v96);
  v97 = v50;
  if (!v50)
  {
LABEL_74:

    sub_1000A0D2C(v102, v103);

LABEL_79:

LABEL_80:

    goto LABEL_21;
  }

  if (v46[2] >= 2uLL)
  {
    v51 = v46[6];
    v52 = v46[7];
    sub_1000A0CD8(v51, v52);

    v101 = objc_allocWithZone(HMFPairingKey);
    v53 = Data._bridgeToObjectiveC()().super.isa;
    v95 = [v101 initWithPairingKeyData:v53];

    sub_1000A0D2C(v51, v52);
    if (!v95)
    {

      sub_1000A0D2C(v102, v103);

      goto LABEL_80;
    }

    v99 = v103;
    v54 = objc_allocWithZone(HAPPairingIdentity);
    v55 = v95;
    v56 = String._bridgeToObjectiveC()();

    v57 = [v54 initWithIdentifier:v56 publicKey:v97 privateKey:v55];

    inited = v98;
    v58 = *(v98 + 32);
    *(v98 + 32) = v57;

    goto LABEL_53;
  }

  __break(1u);
  return result;
}

uint64_t sub_10017565C()
{
  v13 = *(v0 + 112);
  v14 = *(v0 + 120);

  v1._countAndFlagsBits = 43;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  sub_100095274(&unk_1002A73A0, &qword_10023C670);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10023C170;
  v3 = *(v0 + 128);
  *(v2 + 56) = &type metadata for UInt16;
  *(v2 + 64) = &protocol witness table for UInt16;
  *(v2 + 32) = v3;
  v4 = String.init(format:_:)();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  result = v13;
  v9 = *(v0 + 144);
  if (v9)
  {
    v10 = *(v0 + 136);

    v11._countAndFlagsBits = 43;
    v11._object = 0xE100000000000000;
    String.append(_:)(v11);

    v12._countAndFlagsBits = v10;
    v12._object = v9;
    String.append(_:)(v12);

    return v13;
  }

  return result;
}

uint64_t sub_1001757B8(uint64_t a1, unint64_t a2)
{
  v5 = sub_100095274(&qword_1002A7AF0, &qword_10023C9D0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v99 - v11;
  __chkstk_darwin(v10);
  v14 = &v99 - v13;
  v15 = type metadata accessor for UUID();
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15);
  v18 = __chkstk_darwin(v17);
  v20 = &v99 - v19;
  v21 = __chkstk_darwin(v18);
  v25 = &v99 - v24;
  v26 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v26 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v26)
  {
    return 0;
  }

  v100 = v23;
  v101 = v2;
  v102 = v21;
  v103 = v22;
  v104[0] = 43;
  v104[1] = 0xE100000000000000;
  __chkstk_darwin(v21);
  *(&v99 - 2) = v104;

  v28 = sub_10017B660(0x7FFFFFFFFFFFFFFFLL, 1, sub_10017E860, (&v99 - 4), a1, a2, v27);
  v29 = v28;
  v30 = v28[2];
  if (!v30)
  {
    goto LABEL_16;
  }

  if (v30 == 2)
  {
    v42 = v28[4];
    v43 = v28[5];
    v44 = v28[6];
    v45 = v28[7];

    v46 = Substring.distance(from:to:)();

    if (v46 == 36)
    {
      v47 = v29[4];
      v48 = v29[5];
      v49 = v29[6];
      v50 = v29[7];

      static String._fromSubstring(_:)();

      UUID.init(uuidString:)();

      v51 = v102;
      v52 = v103;
      if ((*(v103 + 48))(v12, 1, v102) == 1)
      {

        sub_100095C84(v12, &qword_1002A7AF0, &qword_10023C9D0);
        return 0;
      }

      (*(v52 + 32))(v20, v12, v51);
      v68 = UUID.uuidString.getter();
      v69 = v101;
      v70 = *(v101 + 120);
      *(v101 + 112) = v68;
      *(v69 + 120) = v71;

      if (v29[2] >= 2uLL)
      {
        v72 = v29[8];
        v73 = v29[9];
        v75 = v29[10];
        v74 = v29[11];

        if ((v73 ^ v72) >> 14)
        {
          v76 = sub_10017CB68(v72, v73, v75, v74, 16);
          if ((v76 & 0x1000000) != 0)
          {
            v76 = sub_10017C000(v72, v73, v75, v74, 16);
          }

          (*(v103 + 8))(v20, v102);

          if ((v76 & 0x10000) == 0)
          {
            *(v69 + 128) = v76;
            return 1;
          }

          return 0;
        }

        goto LABEL_43;
      }

      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      (*(v103 + 8))(v20, v102);
    }

LABEL_16:

    return 0;
  }

  if (v30 != 1)
  {
    v53 = v28[4];
    v54 = v28[5];
    v55 = v28[6];
    v56 = v28[7];

    v57 = Substring.distance(from:to:)();

    if (v57 == 36)
    {
      v58 = v29[4];
      v59 = v29[5];
      v60 = v29[6];
      v61 = v29[7];

      static String._fromSubstring(_:)();
      v20 = v62;

      UUID.init(uuidString:)();

      v64 = v102;
      v63 = v103;
      if ((*(v103 + 48))(v9, 1, v102) == 1)
      {

        sub_100095C84(v9, &qword_1002A7AF0, &qword_10023C9D0);
        return 0;
      }

      (*(v63 + 32))(v100, v9, v64);
      v82 = UUID.uuidString.getter();
      v83 = v101;
      v84 = *(v101 + 120);
      *(v101 + 112) = v82;
      *(v83 + 120) = v85;

      if (v29[2] >= 2uLL)
      {
        v86 = v29[8];
        v87 = v29[9];
        if ((v87 ^ v86) >= 0x4000)
        {
          v89 = v29[10];
          v88 = v29[11];
          result = sub_10017CB68(v29[8], v29[9], v89, v88, 16);
          if ((result & 0x1000000) != 0)
          {

            v90 = sub_10017C000(v86, v87, v89, v88, 16);

            result = v90;
            if ((v90 & 0x10000) != 0)
            {
              goto LABEL_35;
            }
          }

          else if ((result & 0x10000) != 0)
          {
            goto LABEL_35;
          }

          *(v83 + 128) = result;
          if (v29[2] < 3uLL)
          {
            __break(1u);
            return result;
          }

          v91 = v29[12];
          v92 = v29[13];
          v93 = v29[14];
          v94 = v29[15];

          v95 = static String._fromSubstring(_:)();
          v97 = v96;

          (*(v103 + 8))(v100, v102);
          v98 = *(v83 + 144);
          *(v83 + 136) = v95;
          *(v83 + 144) = v97;
LABEL_39:

          return 1;
        }

LABEL_35:

        (*(v103 + 8))(v100, v64);
        return 0;
      }

      goto LABEL_42;
    }

    goto LABEL_16;
  }

  v31 = v28[4];
  v32 = v28[5];
  v33 = v28[6];
  v34 = v28[7];

  v35 = Substring.distance(from:to:)();

  v36 = v29[4];
  v37 = v29[5];
  v39 = v29[6];
  v38 = v29[7];

  if (v35 != 36)
  {
    if ((v37 ^ v36) >> 14)
    {
      v66 = sub_10017CB68(v36, v37, v39, v38, 16);
      if ((v66 & 0x1000000) != 0)
      {
        v66 = sub_10017C000(v36, v37, v39, v38, 16);
      }

      v67 = v66;

      if ((v67 & 0x10000) == 0)
      {
        *(v101 + 128) = v67;
        return 1;
      }

      return 0;
    }

    goto LABEL_16;
  }

  static String._fromSubstring(_:)();

  UUID.init(uuidString:)();

  v40 = v102;
  v41 = v103;
  if ((*(v103 + 48))(v14, 1, v102) != 1)
  {
    (*(v41 + 32))(v25, v14, v40);
    v77 = v101;
    v78 = UUID.uuidString.getter();
    v80 = v79;
    (*(v41 + 8))(v25, v40);
    v81 = *(v77 + 120);
    *(v77 + 112) = v78;
    *(v77 + 120) = v80;
    goto LABEL_39;
  }

  sub_100095C84(v14, &qword_1002A7AF0, &qword_10023C9D0);
  return 0;
}

uint64_t sub_100175FA8()
{
  v1 = *(v0 + 24);

  sub_1000A0D2C(*(v0 + 40), *(v0 + 48));
  v2 = *(v0 + 72);

  v3 = *(v0 + 88);

  sub_1000A0D2C(*(v0 + 96), *(v0 + 104));
  v4 = *(v0 + 120);

  v5 = *(v0 + 144);

  return v0;
}

uint64_t sub_100176000()
{
  sub_100175FA8();

  return swift_deallocClassInstance();
}

void *sub_100176034()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002A6770 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100093DE8(v7, qword_1002AA0E0);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Creating new controller key-pair!", v10, 2u);
  }

  UUID.init()();
  v11 = UUID.uuidString.getter();
  v13 = v12;
  (*(v3 + 8))(v6, v2);
  type metadata accessor for AccessoryKeystore.AccessoryKeyItem();
  v14 = swift_allocObject();
  sub_100174B0C(v11, v13);
  v15 = v14[9];
  v14[8] = 0xD000000000000018;
  v14[9] = 0x8000000100233E70;

  v16 = v14[11];
  v14[10] = 0xD00000000000002FLL;
  v14[11] = 0x8000000100233E90;

  if (sub_100177148(v14, 0, 0))
  {
    v17 = v14[3];
    v18 = (v1 + OBJC_IVAR____TtC14dockaccessoryd17AccessoryKeystore__activeController);
    v19 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd17AccessoryKeystore__activeController + 8);
    *v18 = v14[2];
    v18[1] = v17;
  }

  else
  {
    sub_1000B346C();
    swift_allocError();
    *v20 = 3;
    swift_willThrow();
  }

  return v14;
}

_OWORD *sub_1001762B8(const void *a1, const void *a2, char a3)
{
  sub_100095274(&qword_1002AA4D8, &unk_10023FAE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10023E990;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v8;
  type metadata accessor for CFString(0);
  v10 = v9;
  *(inited + 72) = v9;
  *(inited + 48) = kSecClassGenericPassword;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v11;
  v12 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd17AccessoryKeystore_keyGroup);
  v13 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd17AccessoryKeystore_keyGroup + 8);
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v12;
  *(inited + 104) = v13;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v14;
  v15 = *&aIpkd[8 * a3];
  v16 = objc_allocWithZone(NSNumber);
  v17 = kSecClassGenericPassword;

  v18 = [v16 initWithInteger:v15];
  *(inited + 168) = sub_10017E95C();
  *(inited + 144) = v18;
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v19;
  *(inited + 216) = &type metadata for Bool;
  *(inited + 192) = 1;
  *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 232) = v20;
  *(inited + 264) = &type metadata for Bool;
  *(inited + 240) = 1;
  *(inited + 272) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 280) = v21;
  *(inited + 312) = &type metadata for Bool;
  *(inited + 288) = 1;
  *(inited + 320) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 328) = v22;
  *(inited + 360) = v10;
  *(inited + 336) = kSecMatchLimitAll;
  v23 = kSecMatchLimitAll;
  v24 = sub_1001F2468(inited);
  swift_setDeallocating();
  sub_100095274(&qword_1002AA4E0, &qword_10023EE00);
  swift_arrayDestroy();
  if (a2)
  {
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;
    result[3] = &type metadata for String;
    result[0] = a1;
    result[1] = a2;
    sub_1000FEA30(result, v54);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v53 = v24;
    sub_1001EB278(v54, v25, v27, isUniquelyReferenced_nonNull_native);
  }

  result[0] = 0;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v30 = SecItemCopyMatching(isa, result);

  v31 = &_swiftEmptyArrayStorage;
  if (!v30)
  {
    if (!result[0])
    {
      goto LABEL_20;
    }

    *&v54[0] = result[0];
    swift_unknownObjectRetain();
    sub_100095274(&qword_1002A9F40, &qword_10023EB60);
    if (swift_dynamicCast())
    {
      if (qword_1002A6770 != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      sub_100093DE8(v32, qword_1002AA0E0);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&_mh_execute_header, v33, v34, "Found single keychain result for query.", v35, 2u);
      }

      type metadata accessor for AccessoryKeystore.AccessoryKeyItem();
      swift_allocObject();
      v36 = sub_100174B78(v53);
      if (v36)
      {
        v37 = v36;
        sub_100095274(&qword_1002A7390, &qword_10023BEF0);
        v31 = swift_allocObject();
        v31[1] = xmmword_10023BDA0;
        *(v31 + 4) = v37;
        goto LABEL_26;
      }

LABEL_25:
      v31 = &_swiftEmptyArrayStorage;
      goto LABEL_26;
    }

    if (!result[0] || (*&v54[0] = result[0], swift_unknownObjectRetain(), sub_100095274(&qword_1002AA530, &qword_10023EE20), (swift_dynamicCast() & 1) == 0))
    {
LABEL_20:
      if (qword_1002A6770 != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      sub_100093DE8(v43, qword_1002AA0E0);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&_mh_execute_header, v44, v45, "Could not find any keychain results for query.", v46, 2u);
      }

      goto LABEL_25;
    }

    if (qword_1002A6770 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_100093DE8(v38, qword_1002AA0E0);

    v39 = Logger.logObject.getter();
    LOBYTE(v40) = static os_log_type_t.info.getter();
    v41 = v53 >> 62;
    if (!os_log_type_enabled(v39, v40))
    {

      goto LABEL_28;
    }

    v24 = swift_slowAlloc();
    *v24 = 134217984;
    if (v41)
    {
      goto LABEL_47;
    }

    for (i = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      *(v24 + 4) = i;

      _os_log_impl(&_mh_execute_header, v39, v40, "Found keychain results for query: %ld", v24, 0xCu);

LABEL_28:
      *&v54[0] = &_swiftEmptyArrayStorage;
      if (v41)
      {
        v40 = _CocoaArrayWrapper.endIndex.getter();
        if (!v40)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v40 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v40)
        {
          goto LABEL_45;
        }
      }

      if (v40 >= 1)
      {
        break;
      }

      __break(1u);
LABEL_47:
      ;
    }

    v48 = 0;
    v51 = v40;
    do
    {
      if ((v53 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v49 = *(v53 + 8 * v48 + 32);
        swift_unknownObjectRetain();
      }

      swift_unknownObjectRetain();
      sub_100095274(&qword_1002A9F40, &qword_10023EB60);
      if (swift_dynamicCast())
      {
        type metadata accessor for AccessoryKeystore.AccessoryKeyItem();
        swift_allocObject();
        if (sub_100174B78(v52))
        {

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*&v54[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v54[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v50 = *((*&v54[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          swift_unknownObjectRelease();
          v31 = *&v54[0];
        }

        else
        {
          swift_unknownObjectRelease();
        }

        v40 = v51;
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v48;
    }

    while (v40 != v48);
LABEL_45:
  }

LABEL_26:
  swift_unknownObjectRelease();
  return v31;
}

uint64_t sub_100176ABC(uint64_t a1, char a2)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);

  v7 = sub_1001762B8(v5, v6, a2 & 1);

  if (!(v7 >> 62))
  {
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_47:

    return 0;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_47;
  }

LABEL_3:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_51:
      swift_once();
LABEL_30:
      v34 = type metadata accessor for Logger();
      sub_100093DE8(v34, qword_1002AA0E0);

      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v47[0] = swift_slowAlloc();
        *v37 = 136315650;
        if (a2)
        {
          v38 = 1919247728;
        }

        else
        {
          v38 = 0x676E6972696170;
        }

        if (a2)
        {
          v39 = 0xE400000000000000;
        }

        else
        {
          v39 = 0xE700000000000000;
        }

        v40 = sub_1000952D4(v38, v39, v47);

        *(v37 + 4) = v40;
        *(v37 + 12) = 2080;
        v42 = *(a1 + 16);
        v41 = *(a1 + 24);

        v43 = sub_1000952D4(v42, v41, v47);

        *(v37 + 14) = v43;
        *(v37 + 22) = 2080;
        if (v6)
        {
          v44 = v2;
        }

        else
        {
          v44 = 0x206E776F6E6B6E55;
        }

        if (v6)
        {
          v45 = v6;
        }

        else
        {
          v45 = 0xED0000726F727245;
        }

        v46 = sub_1000952D4(v44, v45, v47);

        *(v37 + 24) = v46;
        _os_log_impl(&_mh_execute_header, v35, v36, "Unable to update %s keychain item for identfier %s: %s", v37, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
      }

      return 0;
    }

    v8 = *(v7 + 32);
  }

  v9 = *(a1 + 16) == v8[2] && *(a1 + 24) == v8[3];
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {

    return 0;
  }

  sub_100095274(&qword_1002AA4D8, &unk_10023FAE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10023C170;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v11;
  v12 = v8[12];
  v13 = v8[13];
  *(inited + 72) = &type metadata for Data;
  *(inited + 48) = v12;
  *(inited + 56) = v13;
  sub_1000A0CD8(v12, v13);
  sub_1001F2468(inited);
  swift_setDeallocating();
  sub_100095C84(inited + 32, &qword_1002AA4E0, &qword_10023EE00);
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_10023C170;
  *(v14 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v14 + 40) = v15;
  v16 = sub_10017D21C(a1, a2 & 1);
  *(v14 + 72) = &type metadata for Data;
  *(v14 + 48) = v16;
  *(v14 + 56) = v17;
  sub_1001F2468(v14);
  swift_setDeallocating();
  sub_100095C84(v14 + 32, &qword_1002AA4E0, &qword_10023EE00);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v19 = Dictionary._bridgeToObjectiveC()().super.isa;

  v20 = SecItemUpdate(isa, v19);

  if (v20)
  {
    v21 = SecCopyErrorMessageString(v20, 0);
    if (v21)
    {
      v22 = v21;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v47[0] = 0;
        v47[1] = 0;
        static String._conditionallyBridgeFromObjectiveC(_:result:)();
      }
    }

    v2 = 0;
    v6 = 0;
    if (qword_1002A6770 == -1)
    {
      goto LABEL_30;
    }

    goto LABEL_51;
  }

  if (qword_1002A6770 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_100093DE8(v23, qword_1002AA0E0);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v47[0] = swift_slowAlloc();
    *v26 = 136315394;
    if (*(a1 + 56))
    {
      v27 = 1919247728;
    }

    else
    {
      v27 = 0x676E6972696170;
    }

    if (*(a1 + 56))
    {
      v28 = 0xE400000000000000;
    }

    else
    {
      v28 = 0xE700000000000000;
    }

    v29 = sub_1000952D4(v27, v28, v47);

    *(v26 + 4) = v29;
    *(v26 + 12) = 2080;
    v31 = *(a1 + 16);
    v30 = *(a1 + 24);

    v32 = sub_1000952D4(v31, v30, v47);

    *(v26 + 14) = v32;
    _os_log_impl(&_mh_execute_header, v24, v25, "Successfully updated %s keychain item for identfier %s", v26, 0x16u);
    swift_arrayDestroy();
  }

  return 1;
}

uint64_t sub_100177148(uint64_t a1, char a2, char a3)
{
  sub_100095274(&qword_1002AA4D8, &unk_10023FAE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10023BFA0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v7;
  type metadata accessor for CFString(0);
  v9 = v8;
  *(inited + 72) = v8;
  *(inited + 48) = kSecClassGenericPassword;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v10;
  v11 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd17AccessoryKeystore_keyGroup);
  v12 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd17AccessoryKeystore_keyGroup + 8);
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v11;
  *(inited + 104) = v12;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v13;
  *(inited + 168) = v9;
  *(inited + 144) = kSecAttrAccessibleAfterFirstUnlock;
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v14;
  v15 = *&aIpkd[8 * *(a1 + 56)];
  v16 = objc_allocWithZone(NSNumber);
  v17 = kSecClassGenericPassword;

  v18 = kSecAttrAccessibleAfterFirstUnlock;
  v19 = [v16 initWithInteger:v15];
  *(inited + 216) = sub_10017E95C();
  *(inited + 192) = v19;
  *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 232) = v20;
  v21 = *(a1 + 64);
  v22 = *(a1 + 72);
  *(inited + 264) = &type metadata for String;
  *(inited + 240) = v21;
  *(inited + 248) = v22;
  *(inited + 272) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 280) = v23;
  v24 = *(a1 + 80);
  v25 = *(a1 + 88);
  *(inited + 312) = &type metadata for String;
  *(inited + 288) = v24;
  *(inited + 296) = v25;
  *(inited + 320) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 328) = v26;
  v27 = *(a1 + 16);
  v28 = *(a1 + 24);
  *(inited + 360) = &type metadata for String;
  *(inited + 336) = v27;
  *(inited + 344) = v28;
  *(inited + 368) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 376) = v29;

  v30 = sub_10017D21C(a1, a2);
  *(inited + 408) = &type metadata for Data;
  *(inited + 384) = v30;
  *(inited + 392) = v31;
  sub_1001F2468(inited);
  swift_setDeallocating();
  sub_100095274(&qword_1002AA4E0, &qword_10023EE00);
  swift_arrayDestroy();
  if (a2)
  {
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;
    v71 = &type metadata for String;
    *&v70 = sub_10017565C();
    *(&v70 + 1) = v35;
    sub_1000FEA30(&v70, v69);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1001EB278(v69, v32, v34, isUniquelyReferenced_nonNull_native);
  }

  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v38 = SecItemAdd(isa, 0);

  if (v38)
  {
    if ((a3 & 1) != 0 && (v38 == -25296 || v38 == -25299))
    {
      v39 = sub_100176ABC(a1, a2 & 1);
      return v39 & 1;
    }

    v40 = SecCopyErrorMessageString(v38, 0);
    if (v40)
    {
      v41 = v40;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v70 = 0uLL;
        static String._conditionallyBridgeFromObjectiveC(_:result:)();

        v42 = *(&v70 + 1);
        if (*(&v70 + 1))
        {
          v43 = v70;
LABEL_19:
          if (qword_1002A6770 != -1)
          {
            swift_once();
          }

          v50 = type metadata accessor for Logger();
          sub_100093DE8(v50, qword_1002AA0E0);

          v51 = Logger.logObject.getter();
          v52 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v51, v52))
          {
            v53 = swift_slowAlloc();
            *&v70 = swift_slowAlloc();
            *v53 = 136315650;
            if (*(a1 + 56))
            {
              v54 = 0xE400000000000000;
              v55 = 1919247728;
            }

            else
            {
              v55 = 0x676E6972696170;
              v54 = 0xE700000000000000;
            }

            v56 = sub_1000952D4(v55, v54, &v70);

            *(v53 + 4) = v56;
            *(v53 + 12) = 2080;
            v58 = *(a1 + 16);
            v57 = *(a1 + 24);

            v59 = sub_1000952D4(v58, v57, &v70);

            *(v53 + 14) = v59;
            *(v53 + 22) = 2080;
            if (v42)
            {
              v60 = v43;
            }

            else
            {
              v60 = 0x206E776F6E6B6E55;
            }

            if (v42)
            {
              v61 = v42;
            }

            else
            {
              v61 = 0xED0000726F727245;
            }

            v62 = sub_1000952D4(v60, v61, &v70);

            *(v53 + 24) = v62;
            _os_log_impl(&_mh_execute_header, v51, v52, "Unable to add %s keychain item for identfier %s: %s", v53, 0x20u);
            swift_arrayDestroy();
          }

          else
          {
          }

          v39 = 0;
          return v39 & 1;
        }
      }

      else
      {
      }
    }

    v43 = 0;
    v42 = 0;
    goto LABEL_19;
  }

  if (qword_1002A6770 != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  sub_100093DE8(v44, qword_1002AA0E0);

  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *&v70 = swift_slowAlloc();
    *v47 = 136315394;
    if (*(a1 + 56))
    {
      v48 = 0xE400000000000000;
      v49 = 1919247728;
    }

    else
    {
      v49 = 0x676E6972696170;
      v48 = 0xE700000000000000;
    }

    v63 = sub_1000952D4(v49, v48, &v70);

    *(v47 + 4) = v63;
    *(v47 + 12) = 2080;
    v65 = *(a1 + 16);
    v64 = *(a1 + 24);

    v66 = sub_1000952D4(v65, v64, &v70);

    *(v47 + 14) = v66;
    _os_log_impl(&_mh_execute_header, v45, v46, "Successfully added %s keychain item for identfier %s", v47, 0x16u);
    swift_arrayDestroy();
  }

  v39 = 1;
  return v39 & 1;
}

uint64_t sub_100177864(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC14dockaccessoryd17AccessoryKeystore_peripherals;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (v6 >> 62)
  {
    goto LABEL_41;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v7)
  {
    v8 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_17:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          v7 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_3;
        }

        v9 = *(v6 + 8 * v8 + 32);

        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_17;
        }
      }

      v11 = *(v9 + 16) == a1 && *(v9 + 24) == a2;
      if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return v9;
      }

      ++v8;
    }

    while (v10 != v7);
  }

  v12 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd17AccessoryKeystore_table);
  v13 = qword_1002A66F0;

  if (v13 != -1)
  {
    swift_once();
  }

  swift_weakInit();
  v19[0] = v12;
  swift_weakAssign();
  v14 = sub_100171C2C();
  v2 = v14;
  if (v14 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (v6)
    {
      goto LABEL_24;
    }

LABEL_43:
    sub_100095C84(v19, &unk_1002AA510, &unk_10023EE08);

    return 0;
  }

  v6 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_43;
  }

LABEL_24:
  v15 = 0;
  while ((v2 & 0xC000000000000001) != 0)
  {
    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      goto LABEL_37;
    }

LABEL_28:
    v17 = *(v9 + 16) == a1 && *(v9 + 24) == a2;
    if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      goto LABEL_38;
    }

    ++v15;
    if (v16 == v6)
    {
      goto LABEL_43;
    }
  }

  if (v15 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_40;
  }

  v9 = *(v2 + 8 * v15 + 32);

  v16 = v15 + 1;
  if (!__OFADD__(v15, 1))
  {
    goto LABEL_28;
  }

LABEL_37:
  __break(1u);
LABEL_38:
  sub_100095C84(v19, &unk_1002AA510, &unk_10023EE08);

  return v9;
}

void sub_100177B54(const void *a1, const void *a2, char a3)
{
  v7 = sub_1001762B8(a1, a2, 1);
  v8 = v7;
  v32 = a2;
  if (v7 >> 62)
  {
LABEL_28:
    v9 = _CocoaArrayWrapper.endIndex.getter();
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
LABEL_3:
      v10 = 0;
      do
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v12 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            goto LABEL_26;
          }
        }

        else
        {
          if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_27;
          }

          v11 = *(v8 + 8 * v10 + 32);

          v12 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
LABEL_26:
            __break(1u);
LABEL_27:
            __break(1u);
            goto LABEL_28;
          }
        }

        v3 = *(v11 + 112);
        v4 = *(v11 + 120);
        v13 = HIBYTE(v4) & 0xF;
        if ((v4 & 0x2000000000000000) == 0)
        {
          v13 = v3 & 0xFFFFFFFFFFFFLL;
        }

        if (v13)
        {
          v14 = *(v11 + 120);
          swift_bridgeObjectRetain_n();
          v15 = sub_1001762B8(v3, v4, 0);

          if (v15 >> 62)
          {
            if (_CocoaArrayWrapper.endIndex.getter())
            {
LABEL_19:
              v33 = v15;

              if (qword_1002A6770 != -1)
              {
                goto LABEL_45;
              }

              goto LABEL_20;
            }
          }

          else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_19;
          }
        }

        else
        {
        }

        ++v10;
      }

      while (v12 != v9);
    }
  }

  if (qword_1002A6770 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100093DE8(v22, qword_1002AA0E0);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v34 = v3;
    *v25 = 136315138;
    *(v25 + 4) = sub_1000952D4(a1, v32, &v34);
    _os_log_impl(&_mh_execute_header, v23, v24, "Unable to find controller associated with accessory %s.  Returning default controller key-pair.", v25, 0xCu);
    sub_100095808(v3);
  }

  v26 = sub_1001762B8(0, 0, 0);
  if (v26 >> 62)
  {
    v28 = v26;
    v29 = _CocoaArrayWrapper.endIndex.getter();
    v26 = v28;
    if (v29)
    {
      goto LABEL_35;
    }

LABEL_40:

    if (a3)
    {
      sub_100176034();
    }

    else
    {
      sub_1000B346C();
      swift_allocError();
      *v30 = 1;
      swift_willThrow();
    }

    return;
  }

  if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_40;
  }

LABEL_35:
  if ((v26 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_38;
  }

  if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v27 = *(v26 + 32);

    goto LABEL_38;
  }

  __break(1u);
LABEL_45:
  swift_once();
LABEL_20:
  v16 = type metadata accessor for Logger();
  sub_100093DE8(v16, qword_1002AA0E0);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v19 = 136315394;
    v20 = sub_1000952D4(v3, v4, &v34);

    *(v19 + 4) = v20;
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_1000952D4(a1, v32, &v34);
    _os_log_impl(&_mh_execute_header, v17, v18, "Found controller %s for given accessory identifier: %s", v19, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  if ((v33 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();

    goto LABEL_38;
  }

  if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v21 = *(v33 + 32);

LABEL_38:

    return;
  }

  __break(1u);
}

uint64_t sub_1001780D0(const void *a1, const void *a2)
{
  v2 = sub_1001762B8(a1, a2, 1);
  v3 = v2;
  if (v2 >> 62)
  {
    goto LABEL_18;
  }

  result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result)
  {
    while (1)
    {
      v31 = result;
      if (result < 1)
      {
        break;
      }

      v36[8] = kSecValuePersistentRef;
      v32 = v3 & 0xC000000000000001;
      sub_100095274(&qword_1002A88B0, &qword_10023D3A0);
      v5 = 0;
      v6 = v31;
      while (1)
      {
        if (v32)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v7 = *(v3 + 8 * v5 + 32);
        }

        if (qword_1002A6770 != -1)
        {
          swift_once();
        }

        v8 = type metadata accessor for Logger();
        sub_100093DE8(v8, qword_1002AA0E0);

        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          v12 = swift_slowAlloc();
          v33 = v12;
          *v11 = 136315138;
          v13 = v7[2];
          v14 = v7[3];

          v15 = v3;
          v16 = sub_1000952D4(v13, v14, &v33);

          *(v11 + 4) = v16;
          v3 = v15;
          v6 = v31;
          _os_log_impl(&_mh_execute_header, v9, v10, "Removing accessory key item for %s", v11, 0xCu);
          sub_100095808(v12);
        }

        v36[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v36[1] = v17;
        v18 = v7[12];
        v19 = v7[13];
        v36[5] = &type metadata for Data;
        v36[2] = v18;
        v36[3] = v19;
        v20 = static _DictionaryStorage.allocate(capacity:)();
        sub_1000A0CD8(v18, v19);
        sub_1000B5150(v36, &v33, &qword_1002AA4E0, &qword_10023EE00);
        v21 = v33;
        v22 = v34;
        v23 = sub_10016D4D0(v33, v34);
        if (v24)
        {
          break;
        }

        v20[(v23 >> 6) + 8] |= 1 << v23;
        v25 = (v20[6] + 16 * v23);
        *v25 = v21;
        v25[1] = v22;
        sub_1000FEA30(&v35, (v20[7] + 32 * v23));
        v26 = v20[2];
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (v27)
        {
          goto LABEL_17;
        }

        ++v5;
        v20[2] = v28;
        sub_100095C84(v36, &qword_1002AA4E0, &qword_10023EE00);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        SecItemDelete(isa);

        if (v6 == v5)
        {
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      result = _CocoaArrayWrapper.endIndex.getter();
      if (!result)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    sub_1000B346C();
    swift_allocError();
    *v30 = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100178478(const void *a1, const void *a2)
{
  v2 = sub_1001762B8(a1, a2, 0);
  v3 = v2;
  if (v2 >> 62)
  {
    goto LABEL_18;
  }

  result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
  }

  while (1)
  {
    v30 = result;
    if (result < 1)
    {
      break;
    }

    v35[8] = kSecValuePersistentRef;
    v31 = v3 & 0xC000000000000001;
    sub_100095274(&qword_1002A88B0, &qword_10023D3A0);
    v5 = 0;
    v6 = v30;
    while (1)
    {
      if (v31)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v3 + 8 * v5 + 32);
      }

      if (qword_1002A6770 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_100093DE8(v8, qword_1002AA0E0);

      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v32 = v12;
        *v11 = 136315138;
        v13 = v7[2];
        v14 = v7[3];

        v15 = v3;
        v16 = sub_1000952D4(v13, v14, &v32);

        *(v11 + 4) = v16;
        v3 = v15;
        v6 = v30;
        _os_log_impl(&_mh_execute_header, v9, v10, "Removing controller key item for %s", v11, 0xCu);
        sub_100095808(v12);
      }

      v35[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35[1] = v17;
      v18 = v7[12];
      v19 = v7[13];
      v35[5] = &type metadata for Data;
      v35[2] = v18;
      v35[3] = v19;
      v20 = static _DictionaryStorage.allocate(capacity:)();
      sub_1000A0CD8(v18, v19);
      sub_1000B5150(v35, &v32, &qword_1002AA4E0, &qword_10023EE00);
      v21 = v32;
      v22 = v33;
      v23 = sub_10016D4D0(v32, v33);
      if (v24)
      {
        break;
      }

      v20[(v23 >> 6) + 8] |= 1 << v23;
      v25 = (v20[6] + 16 * v23);
      *v25 = v21;
      v25[1] = v22;
      sub_1000FEA30(&v34, (v20[7] + 32 * v23));
      v26 = v20[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_17;
      }

      ++v5;
      v20[2] = v28;
      sub_100095C84(v35, &qword_1002AA4E0, &qword_10023EE00);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      SecItemDelete(isa);

      if (v6 == v5)
      {
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
    }
  }

  __break(1u);
  return result;
}

id sub_1001787F0()
{
  v1 = &v0[OBJC_IVAR____TtC14dockaccessoryd17AccessoryKeystore_keyGroup];
  *v1 = 0xD000000000000020;
  *(v1 + 1) = 0x800000010022E6D0;
  v2 = OBJC_IVAR____TtC14dockaccessoryd17AccessoryKeystore_table;
  type metadata accessor for DBTable();
  v3 = swift_allocObject();
  *(v3 + 16) = 0x7265687069726550;
  *(v3 + 24) = 0xEB00000000736C61;
  *&v0[v2] = v3;
  *&v0[OBJC_IVAR____TtC14dockaccessoryd17AccessoryKeystore_peripherals] = _swiftEmptyArrayStorage;
  v4 = &v0[OBJC_IVAR____TtC14dockaccessoryd17AccessoryKeystore__activeController];
  *v4 = 0;
  *(v4 + 1) = 0xE000000000000000;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for AccessoryKeystore();
  return objc_msgSendSuper2(&v6, "init");
}

id sub_1001788E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccessoryKeystore();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AccessoryKeystore.AccessoryPeripheralEntry()
{
  result = qword_1002AA1C8;
  if (!qword_1002AA1C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100178A00()
{
  sub_100178AAC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100178AAC()
{
  if (!qword_1002AA1D8)
  {
    type metadata accessor for UUID();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1002AA1D8);
    }
  }
}

unint64_t sub_100178B28()
{
  if (qword_1002A6770 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100093DE8(v0, qword_1002AA0E0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Attempting to fetch local keychain identity...", v3, 2u);
  }

  result = sub_1001762B8(0, 0, 0);
  if (result >> 62)
  {
    v7 = result;
    v8 = _CocoaArrayWrapper.endIndex.getter();
    result = v7;
    if (v8)
    {
      goto LABEL_7;
    }

LABEL_12:

    sub_1000B346C();
    swift_allocError();
    *v9 = 1;
    return swift_willThrow();
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((result & 0xC000000000000001) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_10;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(result + 32);

LABEL_10:

    v6 = *(v5 + 32);

    return v6;
  }

  __break(1u);
  return result;
}