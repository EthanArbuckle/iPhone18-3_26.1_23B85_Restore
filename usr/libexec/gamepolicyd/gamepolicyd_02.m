void sub_10002D8D0(char a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v36 - v12;
  if (*(v3 + OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_deviceSupportsDynamicPowerSplitter) == 1 && (EmbeddedGameProcess.supportsDynamicPowerSplitter.getter() & 1) != 0)
  {
    v14 = EmbeddedGameProcess.processHandle.getter();
    v15 = [v14 pid];

    if (v15 != -1)
    {
      v16 = EmbeddedGameProcess.processHandle.getter();
      v17 = [v16 name];

      if (v17 || (v36[0] = 1701667175, v20 = EmbeddedGameProcess.processHandle.getter(), v21 = [v20 bundle], v20, v21) && (v17 = objc_msgSend(v21, "identifier"), v21, v17))
      {
        v36[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;
      }

      else
      {
        v19 = 0xE400000000000000;
      }

      v37 = 0;
      if ([a3 setGameModeOnProcess:a1 & 1 targetProcess:v15 options:0 error:&v37])
      {
        v22 = v37;
        static Logger.daemon.getter();

        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          *v25 = 136446466;
          if (a1)
          {
            v26 = 0x64656C62616E45;
          }

          else
          {
            v26 = 0x64656C6261736944;
          }

          if (a1)
          {
            v27 = 0xE700000000000000;
          }

          else
          {
            v27 = 0xE800000000000000;
          }

          v28 = sub_100034C38(v26, v27, &v37);

          *(v25 + 4) = v28;
          *(v25 + 12) = 2082;
          v29 = sub_100034C38(v36[0], v19, &v37);

          *(v25 + 14) = v29;
          _os_log_impl(&_mh_execute_header, v23, v24, "%{public}s DPS for %{public}s", v25, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        (*(v7 + 8))(v13, v6);
      }

      else
      {
        v30 = v37;

        _convertNSErrorToError(_:)();

        swift_willThrow();
        static Logger.daemon.getter();
        swift_errorRetain();
        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          *v33 = 138543362;
          swift_errorRetain();
          v35 = _swift_stdlib_bridgeErrorToNSError();
          *(v33 + 4) = v35;
          *v34 = v35;
          _os_log_impl(&_mh_execute_header, v31, v32, "Unable to set DPS for game: %{public}@", v33, 0xCu);
          sub_1000096E8(v34, &unk_100053C00, &qword_10003E810);
        }

        else
        {
        }

        (*(v7 + 8))(v11, v6);
      }
    }
  }
}

void sub_10002DD98(uint64_t a1, void *a2)
{
  v80 = a1;
  v4 = type metadata accessor for OSSignpostID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v67[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v67[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *(v2 + OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_queue);
  *v13 = v14;
  (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v13, v9);
  if ((v14 & 1) == 0)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    return;
  }

  v16 = [a2 state];
  if (!v16)
  {
    return;
  }

  v17 = v16;
  v18 = [v16 assertions];
  if (!v18)
  {
    goto LABEL_38;
  }

  v19 = v18;
  v71 = v8;
  v75 = v5;
  v76 = v4;
  v77 = v2;
  v20 = sub_100009748(0, &qword_1000552B8, RBSProcessAssertionInfo_ptr);
  sub_100039EB0();
  v21 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v74 = [v17 taskState];
  v72 = v17;
  v79 = v20;
  if ((v21 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v21 = v85;
    v22 = v86;
    v23 = v87;
    v24 = v88;
    v25 = v89;
  }

  else
  {
    v24 = 0;
    v26 = -1 << *(v21 + 32);
    v22 = v21 + 56;
    v23 = ~v26;
    v27 = -v26;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    else
    {
      v28 = -1;
    }

    v25 = v28 & *(v21 + 56);
  }

  v78 = 0;
  v73 = v23;
  v29 = (v23 + 64) >> 6;
  v70 = 0x8000000100042BF0;
  while (v21 < 0)
  {
    v33 = __CocoaSet.Iterator.next()();
    if (!v33)
    {
      goto LABEL_28;
    }

    v81 = v33;
    swift_dynamicCast();
    v32 = v83;
    if (!v83)
    {
      goto LABEL_28;
    }

LABEL_21:
    v34 = [v32 domain];
    if (v34)
    {
      v35 = v34;
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;

      v39._countAndFlagsBits = 0xD000000000000014;
      v39._object = 0x8000000100042BD0;
      if (String.hasPrefix(_:)(v39))
      {
        v83 = v36;
        v84 = v38;
        v81 = 0x6C61636F4649552DLL;
        v82 = 0xE800000000000000;
        v69 = sub_100009790();
        if (StringProtocol.contains<A>(_:)())
        {
          v68 = 1;
        }

        else
        {
          v83 = v36;
          v84 = v38;
          v81 = 0x6C61636F462DLL;
          v82 = 0xE600000000000000;
          v68 = StringProtocol.contains<A>(_:)();
        }

        v83 = v36;
        v84 = v38;
        v81 = 0xD000000000000010;
        v82 = v70;
        v40 = StringProtocol.contains<A>(_:)();

        v78 |= v68 | v40;
      }

      else
      {
      }
    }

    else
    {
    }
  }

  v30 = v24;
  v31 = v25;
  if (!v25)
  {
    while (1)
    {
      v24 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v24 >= v29)
      {
        goto LABEL_28;
      }

      v31 = *(v22 + 8 * v24);
      ++v30;
      if (v31)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_41;
  }

LABEL_17:
  v25 = (v31 - 1) & v31;
  v32 = *(*(v21 + 48) + ((v24 << 9) | (8 * __clz(__rbit64(v31)))));
  if (v32)
  {
    goto LABEL_21;
  }

LABEL_28:
  sub_10001B370();
  v41 = dispatch thunk of EmbeddedGameProcess.isRunningForeground.getter();
  if (v74 == 4)
  {
    dispatch thunk of EmbeddedGameProcess.isTerminated.getter();
  }

  v42 = v76;
  v43 = v75;
  dispatch thunk of EmbeddedGameProcess.isRunning.setter();
  dispatch thunk of EmbeddedGameProcess.isRunning.getter();
  dispatch thunk of EmbeddedGameProcess.isRunningForeground.setter();
  if ((v41 & 1) != (dispatch thunk of EmbeddedGameProcess.isRunningForeground.getter() & 1))
  {
    if (dispatch thunk of EmbeddedGameProcess.isRunningForeground.getter())
    {
      v78 = static os_signpost_type_t.begin.getter();
      v79 = static Logger.stateTracking.getter();
      v44 = EmbeddedGameProcess.processHandle.getter();
      v45 = [v44 pid];

      if ((v45 & 0x80000000) != 0)
      {
        goto LABEL_42;
      }

      v46 = v71;
      OSSignpostID.init(_:)();
      sub_100003870(&qword_1000552C8, &unk_10003F118);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_10003EFC0;
      v48 = EmbeddedGameProcess.bundleIdentifier.getter();
      v50 = v49;
      *(v47 + 56) = &type metadata for String;
      v51 = sub_100039F18();
      *(v47 + 64) = v51;
      *(v47 + 32) = v48;
      *(v47 + 40) = v50;
      v52 = EmbeddedGameProcess.genreIdentifier.getter();
      *(v47 + 96) = &type metadata for UInt64;
      *(v47 + 104) = &protocol witness table for UInt64;
      *(v47 + 72) = v52;
      v53 = EmbeddedGameProcess.hasGameGenreId.getter();
      *(v47 + 136) = &type metadata for Bool;
      *(v47 + 144) = &protocol witness table for Bool;
      *(v47 + 112) = v53 & 1;
      v54 = EmbeddedGameProcess.supportsGameMode.getter();
      *(v47 + 176) = &type metadata for Bool;
      *(v47 + 184) = &protocol witness table for Bool;
      *(v47 + 152) = v54 & 1;
      v55 = EmbeddedGameProcess.requiresiPhonePerformanceGamingTier.getter();
      *(v47 + 216) = &type metadata for Bool;
      *(v47 + 224) = &protocol witness table for Bool;
      *(v47 + 192) = v55 & 1;
      v56 = EmbeddedGameProcess.requiresIncreasedMemoryLimit.getter();
      *(v47 + 256) = &type metadata for Bool;
      *(v47 + 264) = &protocol witness table for Bool;
      *(v47 + 232) = v56 & 1;
      v57 = EmbeddedGameProcess.requiresIncreasedDebugMemoryLimit.getter();
      *(v47 + 296) = &type metadata for Bool;
      *(v47 + 304) = &protocol witness table for Bool;
      *(v47 + 272) = v57 & 1;
      EmbeddedGameProcess.semPreference.getter();
      v58 = SEMPolicy.description.getter();
      *(v47 + 336) = &type metadata for String;
      *(v47 + 344) = v51;
      *(v47 + 312) = v58;
      *(v47 + 320) = v59;
      v60 = EmbeddedGameProcess.supportsModelManagerAssertion.getter();
      *(v47 + 376) = &type metadata for Bool;
      *(v47 + 384) = &protocol witness table for Bool;
      *(v47 + 352) = v60 & 1;
      v61 = EmbeddedGameProcess.requiresModelManagerAssertion.getter();
      *(v47 + 416) = &type metadata for Bool;
      *(v47 + 424) = &protocol witness table for Bool;
      *(v47 + 392) = v61 & 1;
      v62 = dispatch thunk of EmbeddedGameProcess.supportsCameraJettisonS2R.getter();
      *(v47 + 456) = &type metadata for Bool;
      *(v47 + 464) = &protocol witness table for Bool;
      *(v47 + 432) = v62 & 1;
      v63 = v79;
      os_signpost(_:dso:log:name:signpostID:_:_:)();
    }

    else
    {
      static os_signpost_type_t.end.getter();
      v64 = static Logger.stateTracking.getter();
      v65 = EmbeddedGameProcess.processHandle.getter();
      v66 = [v65 pid];

      if ((v66 & 0x80000000) != 0)
      {
        goto LABEL_43;
      }

      v46 = v71;
      OSSignpostID.init(_:)();
      os_signpost(_:dso:log:name:signpostID:)();
    }

    (*(v43 + 8))(v46, v42);
  }

  sub_10002E554();
  v17 = v72;
LABEL_38:
}

uint64_t sub_10002E554()
{
  v1 = sub_100003870(&qword_1000552B0, &qword_10003F110);
  v2 = *(*(v1 - 1) + 64);
  __chkstk_darwin(v1);
  v4 = &v69 - v3;
  v5 = sub_100003870(&qword_100054428, &qword_10003E778);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v78 = &v69 - v7;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v69 = &v69 - v14;
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = (&v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v0 + OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_queue);
  *v19 = v20;
  (*(v16 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v15);
  v21 = v20;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  (*(v16 + 8))(v19, v15);
  if ((v20 & 1) == 0)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    swift_once();
    goto LABEL_29;
  }

  v70 = v13;
  v76 = v4;
  v22 = OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_gameProcesses;
  swift_beginAccess();
  v74 = v22;
  v75 = v0;
  v15 = *(v0 + v22);
  v77 = v1;
  v71 = v9;
  v72 = v8;
  if ((v15 & 0xC000000000000001) != 0)
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v4 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
  }

  else
  {
    v26 = -1 << *(v15 + 32);
    v24 = ~v26;
    v23 = v15 + 64;
    v27 = -v26;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    else
    {
      v28 = -1;
    }

    v25 = v28 & *(v15 + 64);
    v4 = v15;
  }

  v29 = 0;
  v73 = v24;
  v30 = (v24 + 64) >> 6;
  while (1)
  {
    v1 = v25;
    if ((v4 & 0x8000000000000000) == 0)
    {
      break;
    }

    v36 = __CocoaDictionary.Iterator.next()();
    if (!v36)
    {
      goto LABEL_23;
    }

    v38 = v37;
    v81 = v36;
    sub_100009748(0, &qword_100054450, RBSProcessIdentity_ptr);
    swift_dynamicCast();
    v35 = v85;
    v81 = v38;
    type metadata accessor for EmbeddedGameProcess();
    swift_dynamicCast();
    if (!v35)
    {
      goto LABEL_23;
    }

LABEL_18:

    v15 = dispatch thunk of EmbeddedGameProcess.isRunningForeground.getter();

    if (v15)
    {
      sub_10001B370();
      v39 = OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_identifiedGameTransaction;
      v1 = v75;
      if (*(v75 + OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_identifiedGameTransaction))
      {
        goto LABEL_28;
      }

      v40 = v69;
      static Logger.daemon.getter();
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&_mh_execute_header, v41, v42, "Foreground games identified - holding transaction", v43, 2u);
      }

      (*(v71 + 8))(v40, v72);
      v44 = os_transaction_create();
      v45 = *(v1 + v39);
      *(v1 + v39) = v44;
      goto LABEL_27;
    }
  }

  v31 = v29;
  v32 = v25;
  if (!v25)
  {
    while (1)
    {
      v29 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v29 >= v30)
      {
        goto LABEL_23;
      }

      v32 = *(v23 + 8 * v29);
      ++v31;
      if (v32)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_33;
  }

LABEL_14:
  v25 = (v32 - 1) & v32;
  v33 = (v29 << 9) | (8 * __clz(__rbit64(v32)));
  v34 = *(*(v4 + 56) + v33);
  v35 = *(*(v4 + 48) + v33);

  if (v35)
  {
    goto LABEL_18;
  }

LABEL_23:
  sub_10001B370();
  v46 = OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_identifiedGameTransaction;
  v1 = v75;
  if (!*(v75 + OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_identifiedGameTransaction))
  {
    goto LABEL_28;
  }

  v47 = v70;
  static Logger.daemon.getter();
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&_mh_execute_header, v48, v49, "Foreground games no longer identified - releasing transaction", v50, 2u);
  }

  (*(v71 + 8))(v47, v72);
  v51 = *(v1 + v46);
  *(v1 + v46) = 0;
LABEL_27:
  swift_unknownObjectRelease();
LABEL_28:
  type metadata accessor for GlobalPreferences();
  dispatch thunk of static GlobalPreferences.shared.getter();
  v15 = dispatch thunk of GlobalPreferences.gameModeEnabledList.getter();

  v85 = 0;
  v84 = 0;
  v83 = 0;
  v82 = 0;
  v80 = _swiftEmptyArrayStorage;
  v81 = _swiftEmptyArrayStorage;
  v79 = _swiftEmptyArrayStorage;
  v52 = *(v1 + v74);

  v4 = sub_100035D4C(v53);

  if (qword_100053488 != -1)
  {
    goto LABEL_34;
  }

LABEL_29:
  v54 = v1;

  v56 = v76;
  sub_100015D04(v55, v54, &v79, &v85, &v83, &v80, v15, &v81, v76, &v84, &v84 + 1, &v82);

  v57 = *v56;
  v58 = *(v56 + 1);
  v59 = v56[16];
  v60 = v56[*(v77 + 24)];
  sub_1000391EC(&v56[*(v77 + 20)], v78);
  v61 = OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_stateManager;
  v62 = *&v54[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_stateManager];
  v63 = v80;
  if (v80 >> 62)
  {
    v64 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v64 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v65 = v64 > 0;

  sub_10001CA20(v65, 0);

  v66 = *&v54[v61];

  sub_10001D13C(v65, 0);

  sub_100028314(v57, v60, v81, v63, v79, 0);
  v67 = v78;
  sub_10002A5E4(v78, v4, 0);
  sub_10002B738(v58, v4, 0);
  sub_10002CA74(v59, v4, 0);

  sub_1000096E8(v67, &qword_100054428, &qword_10003E778);
}

void sub_10002ED58()
{
  v1 = v0;
  v2 = type metadata accessor for GameModeStatus.Config();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = (v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v1 + OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_queue);
  *v11 = v12;
  (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v11, v7);
  if (v12)
  {
    if (qword_100053488 == -1)
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

  sub_10001C490(v14);

  v15 = OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_gameModeStatusConfig;
  swift_beginAccess();
  GameModeStatus.Config.enablementStrategy.setter();
  swift_endAccess();
  (*(v3 + 16))(v6, v1 + v15, v2);
  v16 = objc_allocWithZone(type metadata accessor for GameModeStatus());
  v17 = GameModeStatus.init(config:)();
  v18 = off_1000541F8;
  v19 = *(off_1000541F8 + 2);

  [v19 lock];
  v27 = v17;
  sub_1000189C8(v17, v18, v29);
  [v19 unlock];
  v20 = v29[0];
  if (!(v29[0] >> 62))
  {
    v21 = *((v29[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
      goto LABEL_5;
    }

LABEL_20:

    sub_10002E554();

    return;
  }

  v21 = _CocoaArrayWrapper.endIndex.getter();
  if (!v21)
  {
    goto LABEL_20;
  }

LABEL_5:
  if (v21 >= 1)
  {
    v26[1] = v18;
    v26[2] = v1;
    for (i = 0; i != v21; ++i)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v23 = *(v20 + 8 * i + 32);
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v25 = [*(Strong + 16) remoteObjectProxy];
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_100003870(&qword_100054458, &qword_10003E7B0);
        if (swift_dynamicCast())
        {
          [v28 updateStatus:v27 :0 :0 :0];
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    goto LABEL_20;
  }

  __break(1u);

  [v21 unlock];
  __break(1u);
}

void sub_10002F18C()
{
  v1 = type metadata accessor for ModelManagerGameAssertionStatus.Config();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v0 + OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_queue);
  *v10 = v11;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v10, v6);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (qword_100053488 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_10001C49C(v13);

  v14 = OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_modelManagerGameAssertionStatusConfig;
  swift_beginAccess();
  ModelManagerGameAssertionStatus.Config.policyStrategy.setter();
  swift_endAccess();
  (*(v2 + 16))(v5, v0 + v14, v1);
  v15 = objc_allocWithZone(type metadata accessor for ModelManagerGameAssertionStatus());
  v16 = ModelManagerGameAssertionStatus.init(config:)();

  sub_100018B80(v16);

  sub_10002E554();
}

void sub_10002F404()
{
  v1 = v0;
  v2 = type metadata accessor for SustainedExecutionStatus.Config();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = (v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v1 + OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_queue);
  *v11 = v12;
  (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v11, v7);
  if (v12)
  {
    if (qword_100053488 == -1)
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

  sub_10001C494(v14);

  v15 = OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_sustainedExecutionStatusConfig;
  swift_beginAccess();
  SustainedExecutionStatus.Config.enablementStrategy.setter();
  swift_endAccess();
  (*(v3 + 16))(v6, v1 + v15, v2);
  v16 = objc_allocWithZone(type metadata accessor for SustainedExecutionStatus());
  v17 = SustainedExecutionStatus.init(config:)();
  v18 = off_1000541F8;
  v19 = *(off_1000541F8 + 2);

  [v19 lock];
  v27 = v17;
  sub_100019904(v17, v18, v29);
  [v19 unlock];
  v20 = v29[0];
  if (!(v29[0] >> 62))
  {
    v21 = *((v29[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
      goto LABEL_5;
    }

LABEL_20:

    sub_10002E554();

    return;
  }

  v21 = _CocoaArrayWrapper.endIndex.getter();
  if (!v21)
  {
    goto LABEL_20;
  }

LABEL_5:
  if (v21 >= 1)
  {
    v26[1] = v18;
    v26[2] = v1;
    for (i = 0; i != v21; ++i)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v23 = *(v20 + 8 * i + 32);
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v25 = [*(Strong + 16) remoteObjectProxy];
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_100003870(&qword_100054458, &qword_10003E7B0);
        if (swift_dynamicCast())
        {
          [v28 updateStatus:0 :0 :v27 :0];
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    goto LABEL_20;
  }

  __break(1u);

  [v21 unlock];
  __break(1u);
}

void sub_10002F838()
{
  v1 = v0;
  v2 = type metadata accessor for DynamicSplitterStatus.Config();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = (v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v1 + OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_queue);
  *v11 = v12;
  (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v11, v7);
  if (v12)
  {
    if (qword_100053488 == -1)
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

  sub_10001C498(v14);

  v15 = OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_dynamicSplitterStatusConfig;
  swift_beginAccess();
  DynamicSplitterStatus.Config.enablementStrategy.setter();
  swift_endAccess();
  (*(v3 + 16))(v6, v1 + v15, v2);
  v16 = objc_allocWithZone(type metadata accessor for DynamicSplitterStatus());
  v17 = DynamicSplitterStatus.init(config:)();
  v18 = off_1000541F8;
  v19 = *(off_1000541F8 + 2);

  [v19 lock];
  v27 = v17;
  sub_100019ABC(v17, v18, v29);
  [v19 unlock];
  v20 = v29[0];
  if (!(v29[0] >> 62))
  {
    v21 = *((v29[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
      goto LABEL_5;
    }

LABEL_20:

    sub_10002E554();

    return;
  }

  v21 = _CocoaArrayWrapper.endIndex.getter();
  if (!v21)
  {
    goto LABEL_20;
  }

LABEL_5:
  if (v21 >= 1)
  {
    v26[1] = v18;
    v26[2] = v1;
    for (i = 0; i != v21; ++i)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v23 = *(v20 + 8 * i + 32);
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v25 = [*(Strong + 16) remoteObjectProxy];
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_100003870(&qword_100054458, &qword_10003E7B0);
        if (swift_dynamicCast())
        {
          [v28 updateStatus:0 :0 :0 :v27];
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    goto LABEL_20;
  }

  __break(1u);

  [v21 unlock];
  __break(1u);
}

uint64_t sub_10002FC6C()
{
  v97 = type metadata accessor for Date();
  v2 = *(v97 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v97);
  v96 = v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v95 = v89 - v7;
  __chkstk_darwin(v6);
  v94 = v89 - v8;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = (v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v0 + OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_queue);
  *v13 = v14;
  (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9);
  v15 = v14;
  v16 = _dispatchPreconditionTest(_:)();
  v18 = *(v10 + 8);
  v17 = v10 + 8;
  v18(v13, v9);
  if ((v16 & 1) == 0)
  {
    goto LABEL_84;
  }

  v19 = OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_gameProcesses;
  swift_beginAccess();
  v90 = v19;
  v20 = *(v0 + v19);
  v101 = &_swiftEmptyArrayStorage;
  v91 = v0;
  if ((v20 & 0xC000000000000001) != 0)
  {
    v21 = 0;
    v22 = 0;
    p_name = 0;
    v14 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
  }

  else
  {
    v23 = -1 << *(v20 + 32);
    v22 = ~v23;
    v21 = v20 + 64;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    p_name = v25 & *(v20 + 64);
    v14 = v20;
  }

  v26 = 0;
  v89[1] = v22;
  v17 = (v22 + 64) >> 6;
  v92 = (v2 + 8);
  v93 = v14;
  v27 = v94;
  if ((v14 & 0x8000000000000000) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  if (__CocoaDictionary.Iterator.next()())
  {
    v29 = v28;
    swift_unknownObjectRelease();
    v99 = v29;
    type metadata accessor for EmbeddedGameProcess();
    swift_dynamicCast();
    v30 = v26;
    v31 = p_name;
    if (v100)
    {
      while (1)
      {
        if (dispatch thunk of EmbeddedGameProcess.isGame.getter())
        {
          v98 = v31;
          dispatch thunk of EmbeddedGameProcess.lastFocused.getter();
          v35 = v96;
          static Date.now.getter();
          v36 = v95;
          Date.advanced(by:)();
          v37 = *v92;
          v38 = v97;
          (*v92)(v35, v97);
          LOBYTE(v35) = static Date.> infix(_:_:)();
          v37(v36, v38);
          v37(v27, v38);
          if (v35)
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v39 = v101[2];
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          else
          {
          }

          v26 = v30;
          p_name = v98;
          v14 = v93;
          if (v93 < 0)
          {
            goto LABEL_11;
          }
        }

        else
        {

          v26 = v30;
          p_name = v31;
          if (v14 < 0)
          {
            goto LABEL_11;
          }
        }

LABEL_14:
        v32 = v26;
        v33 = p_name;
        v30 = v26;
        if (!p_name)
        {
          break;
        }

LABEL_18:
        v31 = (v33 - 1) & v33;
        v34 = *(*(v14 + 56) + ((v30 << 9) | (8 * __clz(__rbit64(v33)))));

        if (!v34)
        {
          goto LABEL_25;
        }
      }

      while (1)
      {
        v30 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          break;
        }

        if (v30 >= v17)
        {
          goto LABEL_25;
        }

        v33 = *(v21 + 8 * v30);
        ++v32;
        if (v33)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      v67 = _CocoaArrayWrapper.endIndex.getter();
      if (v67)
      {
        goto LABEL_66;
      }

      goto LABEL_86;
    }
  }

LABEL_25:
  sub_10001B370();

  v101 = sub_100039324(v40);
  sub_100037268(&v101);

  v98 = v101;
  v41 = *(v91 + v90);
  v101 = &_swiftEmptyArrayStorage;
  v97 = 0;
  if ((v41 & 0xC000000000000001) != 0)
  {
    v42 = 0;
    v43 = 0;
    v17 = 0;
    v44 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
  }

  else
  {
    v45 = -1 << *(v41 + 32);
    v43 = ~v45;
    v42 = v41 + 64;
    v46 = -v45;
    if (v46 < 64)
    {
      v47 = ~(-1 << v46);
    }

    else
    {
      v47 = -1;
    }

    v17 = v47 & *(v41 + 64);
    v44 = v41;
  }

  v48 = 0;
  v14 = v43;
  p_name = (v43 + 64) >> 6;
  while ((v44 & 0x8000000000000000) == 0)
  {
    v49 = v48;
    v50 = v17;
    for (i = v48; !v50; ++v49)
    {
      i = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        goto LABEL_80;
      }

      if (i >= p_name)
      {
        goto LABEL_46;
      }

      v50 = *(v42 + 8 * i);
    }

    v52 = (v50 - 1) & v50;
    v53 = *(*(v44 + 56) + ((i << 9) | (8 * __clz(__rbit64(v50)))));

    if (!v53)
    {
      goto LABEL_46;
    }

LABEL_43:
    if (dispatch thunk of EmbeddedGameProcess.isGame.getter() & 1) != 0 && (dispatch thunk of EmbeddedGameProcess.isRunning.getter())
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v56 = v101[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }

    v48 = i;
    v17 = v52;
  }

  if (__CocoaDictionary.Iterator.next()())
  {
    v55 = v54;
    swift_unknownObjectRelease();
    v99 = v55;
    type metadata accessor for EmbeddedGameProcess();
    swift_dynamicCast();
    i = v48;
    v52 = v17;
    if (v100)
    {
      goto LABEL_43;
    }
  }

LABEL_46:
  sub_10001B370();

  v101 = sub_100039324(v57);
  v58 = v97;
  sub_100037268(&v101);
  if (v58)
  {

    __break(1u);
    return result;
  }

  v14 = v101;
  v59 = *(v91 + OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_keyboardFocusTarget);
  if (!v59)
  {
LABEL_61:
    v17 = v14 & 0x4000000000000000;
    goto LABEL_63;
  }

  p_name = &stru_100051FF8.name;
  LODWORD(v60) = [v59 pid];
  v17 = v14 & 0x4000000000000000;
  if (v14 < 0 || v17)
  {
    goto LABEL_106;
  }

  v61 = *(v14 + 16);
  if (v61)
  {
    goto LABEL_51;
  }

LABEL_63:
  while (2)
  {
    if (v14 < 0 || v17)
    {
      goto LABEL_85;
    }

    v67 = *(v14 + 16);
    if (v67)
    {
LABEL_66:
      v68 = 0;
      v69 = &_swiftEmptyArrayStorage;
      while (1)
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          p_name = v68 + 1;
          if (__OFADD__(v68, 1))
          {
            goto LABEL_81;
          }
        }

        else
        {
          if (v68 >= *(v14 + 16))
          {
            goto LABEL_82;
          }

          v70 = *(v14 + 8 * v68 + 32);

          p_name = v68 + 1;
          if (__OFADD__(v68, 1))
          {
            goto LABEL_81;
          }
        }

        v71 = EmbeddedGameProcess.bundleIdentifier.getter();
        v73 = v72;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v69 = sub_100023ABC(0, *(v69 + 2) + 1, 1, v69);
        }

        v17 = *(v69 + 2);
        v74 = *(v69 + 3);
        if (v17 >= v74 >> 1)
        {
          v69 = sub_100023ABC((v74 > 1), v17 + 1, 1, v69);
        }

        *(v69 + 2) = v17 + 1;
        v75 = &v69[16 * v17];
        *(v75 + 4) = v71;
        *(v75 + 5) = v73;
        ++v68;
        if (p_name == v67)
        {
          goto LABEL_87;
        }
      }
    }

LABEL_86:
    v69 = &_swiftEmptyArrayStorage;
LABEL_87:

    if (*(v69 + 2))
    {
      v66 = *(v69 + 4);
      v76 = *(v69 + 5);

      goto LABEL_112;
    }

    v77 = v98;
    if ((v98 & 0x8000000000000000) == 0 && (v98 & 0x4000000000000000) == 0)
    {
      v60 = *(v98 + 16);
      if (v60)
      {
        goto LABEL_92;
      }

LABEL_109:
      v14 = &_swiftEmptyArrayStorage;
LABEL_110:

      if (!*(v14 + 16))
      {

        return 0;
      }

      v66 = *(v14 + 32);
      v87 = *(v14 + 40);

LABEL_112:

      return v66;
    }

    v17 = v98;
    v60 = _CocoaArrayWrapper.endIndex.getter();
    v77 = v17;
    if (!v60)
    {
      goto LABEL_109;
    }

LABEL_92:
    v78 = 0;
    v79 = v77 & 0xC000000000000001;
    v14 = &_swiftEmptyArrayStorage;
    while (2)
    {
      if (v79)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v81 = v78 + 1;
        if (__OFADD__(v78, 1))
        {
          break;
        }

        goto LABEL_96;
      }

      if (v78 >= *(v77 + 16))
      {
        goto LABEL_105;
      }

      v80 = *(v77 + 8 * v78 + 32);

      v81 = v78 + 1;
      if (!__OFADD__(v78, 1))
      {
LABEL_96:
        v82 = EmbeddedGameProcess.bundleIdentifier.getter();
        v84 = v83;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_100023ABC(0, *(v14 + 16) + 1, 1, v14);
        }

        v17 = *(v14 + 16);
        v85 = *(v14 + 24);
        if (v17 >= v85 >> 1)
        {
          v14 = sub_100023ABC((v85 > 1), v17 + 1, 1, v14);
        }

        *(v14 + 16) = v17 + 1;
        v86 = v14 + 16 * v17;
        *(v86 + 32) = v82;
        *(v86 + 40) = v84;
        ++v78;
        v77 = v98;
        if (v81 == v60)
        {
          goto LABEL_110;
        }

        continue;
      }

      break;
    }

    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    v61 = _CocoaArrayWrapper.endIndex.getter();
    if (!v61)
    {
      continue;
    }

    break;
  }

LABEL_51:
  v97 = v17;
  v62 = 0;
  while (1)
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      v17 = v62 + 1;
      if (__OFADD__(v62, 1))
      {
        goto LABEL_60;
      }
    }

    else
    {
      if (v62 >= *(v14 + 16))
      {
        goto LABEL_83;
      }

      v63 = *(v14 + 8 * v62 + 32);

      v17 = v62 + 1;
      if (__OFADD__(v62, 1))
      {
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }
    }

    v64 = EmbeddedGameProcess.processHandle.getter();
    v65 = [v64 *(p_name + 1944)];

    if (v65 == v60)
    {
      break;
    }

    ++v62;
    if (v17 == v61)
    {
      v17 = v97;
      goto LABEL_63;
    }
  }

  v66 = EmbeddedGameProcess.bundleIdentifier.getter();

  return v66;
}

uint64_t sub_1000306C0(int a1, int a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v84 = a4;
  v85 = a3;
  v81 = a2;
  v80 = a1;
  v82 = type metadata accessor for Logger();
  v83 = *(v82 - 8);
  v5 = *(v83 + 64);
  v6 = __chkstk_darwin(v82);
  v78 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v78 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v78 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v78 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v78 - v18;
  v20 = __chkstk_darwin(v17);
  v79 = &v78 - v21;
  __chkstk_darwin(v20);
  v23 = &v78 - v22;
  v24 = type metadata accessor for DispatchPredicate();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = (&v78 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = *(v4 + OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_queue);
  *v28 = v29;
  (*(v25 + 104))(v28, enum case for DispatchPredicate.onQueue(_:), v24);
  v30 = v29;
  LOBYTE(v29) = _dispatchPreconditionTest(_:)();
  result = (*(v25 + 8))(v28, v24);
  if (v29)
  {
    v32 = sub_10002FC6C();
    v35 = v33;
    if (*(v4 + OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_dashboardVisible) == 1)
    {

      static Logger.agent.getter();
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&_mh_execute_header, v36, v37, "Hiding game overlay...", v38, 2u);
      }

      (*(v83 + 8))(v23, v82);
LABEL_6:
      v39 = objc_opt_self();
      v40 = String._bridgeToObjectiveC()();
      [v39 launchOverlayForGameBundleId:v40];

LABEL_34:
      v51 = 1;
      goto LABEL_35;
    }

    if (v33)
    {
      if (v34)
      {
        v41 = v32;
        static Logger.daemon.getter();

        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          aBlock = v45;
          *v44 = 136380675;
          *(v44 + 4) = sub_100034C38(v41, v35, &aBlock);
          _os_log_impl(&_mh_execute_header, v42, v43, "Showing game overlay for %{private}s...", v44, 0xCu);
          sub_100003964(v45);
        }

        (*(v83 + 8))(v16, v82);
        v46 = objc_opt_self();
        v47 = String._bridgeToObjectiveC()();

        [v46 launchOverlayForGameBundleId:v47];
LABEL_33:

        goto LABEL_34;
      }

      if (v81)
      {
        v53 = v32;
        v54 = v79;
        static Logger.daemon.getter();

        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          aBlock = v58;
          *v57 = 136380675;
          *(v57 + 4) = sub_100034C38(v53, v35, &aBlock);
          _os_log_impl(&_mh_execute_header, v55, v56, "Focusing game %{private}s", v57, 0xCu);
          sub_100003964(v58);
        }

        (*(v83 + 8))(v54, v82);
        sub_100003870(&qword_100055278, &qword_10003F0D8);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10003E2E0;
        aBlock = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v87 = v60;
        AnyHashable.init<A>(_:)();
        *(inited + 96) = &type metadata for Bool;
        *(inited + 72) = 1;
        aBlock = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v87 = v61;
        AnyHashable.init<A>(_:)();
        *(inited + 168) = &type metadata for Bool;
        *(inited + 144) = 1;
        sub_100039B10(inited);
        swift_setDeallocating();
        sub_100003870(&qword_100055280, &qword_10003F0E0);
        swift_arrayDestroy();
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v47 = [objc_opt_self() optionsWithDictionary:isa];

        v63 = [objc_opt_self() serviceWithDefaultShellEndpoint];
        if (v63)
        {
          v64 = v63;
          v65 = String._bridgeToObjectiveC()();
          v66 = swift_allocObject();
          *(v66 + 16) = v53;
          *(v66 + 24) = v35;
          v90 = sub_100039C84;
          v91 = v66;
          aBlock = _NSConcreteStackBlock;
          v87 = 1107296256;
          v88 = sub_100031568;
          v89 = &unk_10004E7C8;
          v67 = _Block_copy(&aBlock);

          [v64 openApplication:v65 withOptions:v47 completion:v67];

          _Block_release(v67);
          v47 = v65;
        }

        else
        {
        }

        goto LABEL_33;
      }

      static Logger.daemon.getter();
      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        *v73 = 0;
        _os_log_impl(&_mh_execute_header, v71, v72, "Not showing game overlay. Fallback to app argument not set and game isn't focused.", v73, 2u);
      }

      (*(v83 + 8))(v19, v82);
    }

    else
    {
      if ((v80 & 1) == 0)
      {
        static Logger.daemon.getter();
        v68 = Logger.logObject.getter();
        v69 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          *v70 = 0;
          _os_log_impl(&_mh_execute_header, v68, v69, "Showing game overlay...", v70, 2u);
        }

        (*(v83 + 8))(v13, v82);
        goto LABEL_6;
      }

      if (v81)
      {
        static Logger.daemon.getter();
        v48 = Logger.logObject.getter();
        v49 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          *v50 = 0;
          _os_log_impl(&_mh_execute_header, v48, v49, "Launching Games app...", v50, 2u);
        }

        (*(v83 + 8))(v10, v82);
        [objc_opt_self() launchApp];
        v51 = 1;
        v52 = 1;
        return v85(v51, v52);
      }

      v74 = v78;
      static Logger.daemon.getter();
      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        *v77 = 0;
        _os_log_impl(&_mh_execute_header, v75, v76, "Show overlay command ignored.", v77, 2u);
      }

      (*(v83 + 8))(v74, v82);
    }

    v51 = 0;
LABEL_35:
    v52 = 0;
    return v85(v51, v52);
  }

  __break(1u);
  return result;
}

void sub_1000311DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v29 - v13;
  if (a2)
  {
    swift_errorRetain();
    static Logger.daemon.getter();
    swift_errorRetain();

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v31 = a3;
      v18 = v17;
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v30 = v7;
      v21 = v20;
      v32 = v20;
      *v18 = 136380931;
      *(v18 + 4) = sub_100034C38(v31, a4, &v32);
      *(v18 + 12) = 2112;
      swift_errorRetain();
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 14) = v22;
      *v19 = v22;
      _os_log_impl(&_mh_execute_header, v15, v16, "Unable to focus game for %{private}s. %@", v18, 0x16u);
      sub_1000096E8(v19, &unk_100053C00, &qword_10003E810);

      sub_100003964(v21);
      v7 = v30;

      a3 = v31;
    }

    else
    {
    }

    (*(v8 + 8))(v14, v7);
  }

  static Logger.daemon.getter();

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v32 = v26;
    *v25 = 136380675;
    *(v25 + 4) = sub_100034C38(a3, a4, &v32);
    _os_log_impl(&_mh_execute_header, v23, v24, "Showing game overlay for %{private}s...", v25, 0xCu);
    sub_100003964(v26);
  }

  (*(v8 + 8))(v12, v7);
  v27 = objc_opt_self();
  v28 = String._bridgeToObjectiveC()();
  [v27 launchOverlayForGameBundleId:v28];
}

void sub_100031568(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void sub_1000315F4()
{
  v1 = type metadata accessor for GameModeStatus.Config();
  v36 = *(v1 - 8);
  v37 = v1;
  v2 = *(v36 + 64);
  __chkstk_darwin(v1);
  v34 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_gameProcesses;
  swift_beginAccess();
  v35 = v0;
  v5 = *(v0 + v4);
  v40 = &_swiftEmptyArrayStorage;
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
  }

  else
  {
    v10 = -1 << *(v5 + 32);
    v7 = ~v10;
    v6 = v5 + 64;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v8 = v12 & *(v5 + 64);
    v9 = v5;
  }

  v13 = 0;
  while ((v9 & 0x8000000000000000) == 0)
  {
    v14 = v13;
    v15 = v8;
    v16 = v13;
    if (!v8)
    {
      while (1)
      {
        v16 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v16 >= ((v7 + 64) >> 6))
        {
          goto LABEL_21;
        }

        v15 = *(v6 + 8 * v16);
        ++v14;
        if (v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_31;
    }

LABEL_15:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v9 + 56) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));

    if (!v18)
    {
      goto LABEL_21;
    }

LABEL_19:
    if (dispatch thunk of EmbeddedGameProcess.isRunningForeground.getter())
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v21 = *(v40 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }

    v13 = v16;
    v8 = v17;
  }

  if (__CocoaDictionary.Iterator.next()())
  {
    v20 = v19;
    swift_unknownObjectRelease();
    v38 = v20;
    type metadata accessor for EmbeddedGameProcess();
    swift_dynamicCast();
    v16 = v13;
    v17 = v8;
    if (v39)
    {
      goto LABEL_19;
    }
  }

LABEL_21:
  sub_10001B370();
  v7 = v40;
  if ((v40 & 0x8000000000000000) == 0 && (v40 & 0x4000000000000000) == 0)
  {
    if (*(v40 + 16))
    {
      goto LABEL_24;
    }

LABEL_32:

    return;
  }

LABEL_31:
  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_32;
  }

LABEL_24:
  if ((v7 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_27:

    v23 = EmbeddedGameProcess.bundleIdentifier.getter();
    v25 = v24;

    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    v26 = OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_gameModeStatusConfig;
    v27 = v35;
    swift_beginAccess();
    v28 = v36;
    v29 = v27 + v26;
    v30 = v34;
    v31 = v37;
    (*(v36 + 16))(v34, v29, v37);
    GameModeStatus.Config.enabled.getter();
    (*(v28 + 8))(v30, v31);
    sub_100003870(&qword_100055270, " Y");
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_10003EB50;
    *(v32 + 32) = v23;
    *(v32 + 40) = v25;
    dispatch thunk of GlobalPreferences.setGameModeEnabled(_:bundleIdentifiers:)();

    v33 = [objc_opt_self() defaultCenter];
    if (qword_100053480 != -1)
    {
      swift_once();
    }

    [v33 postNotificationName:qword_100056600 object:0];
  }

  else
  {
    if (*(v7 + 16))
    {
      v22 = *(v7 + 32);

      goto LABEL_27;
    }

    __break(1u);
  }
}

uint64_t sub_100031A3C()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v63 = *(v1 - 8);
  v64 = v1;
  v2 = *(v63 + 64);
  __chkstk_darwin(v1);
  v61 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for DispatchQoS();
  v60 = *(v62 - 8);
  v4 = *(v60 + 64);
  __chkstk_darwin(v62);
  v59 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = [v6 defaultCenter];
  if (qword_100053460 != -1)
  {
    swift_once();
  }

  v8 = qword_1000565E0;
  v9 = OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_operationQueue;
  v10 = *&v0[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_operationQueue];
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v70 = sub_100035904;
  v71 = v11;
  aBlock = _NSConcreteStackBlock;
  v67 = 1107296256;
  v68 = sub_100032448;
  v69 = &unk_10004E4D0;
  v12 = _Block_copy(&aBlock);
  v13 = v10;

  v14 = [v7 addObserverForName:v8 object:0 queue:v13 usingBlock:v12];
  _Block_release(v12);
  swift_unknownObjectRelease();

  v15 = [v6 defaultCenter];
  if (qword_100053468 != -1)
  {
    swift_once();
  }

  v16 = qword_1000565E8;
  v17 = *&v0[v9];
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v70 = sub_10003593C;
  v71 = v18;
  aBlock = _NSConcreteStackBlock;
  v67 = 1107296256;
  v68 = sub_100032448;
  v69 = &unk_10004E4F8;
  v19 = _Block_copy(&aBlock);
  v20 = v17;

  v21 = [v15 addObserverForName:v16 object:0 queue:v20 usingBlock:v19];
  _Block_release(v19);
  swift_unknownObjectRelease();

  v22 = [v6 defaultCenter];
  if (qword_100053470 != -1)
  {
    swift_once();
  }

  v23 = qword_1000565F0;
  v24 = *&v0[v9];
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v70 = sub_100035974;
  v71 = v25;
  aBlock = _NSConcreteStackBlock;
  v67 = 1107296256;
  v68 = sub_100032448;
  v69 = &unk_10004E520;
  v26 = _Block_copy(&aBlock);
  v27 = v24;

  v28 = [v22 addObserverForName:v23 object:0 queue:v27 usingBlock:v26];
  _Block_release(v26);
  swift_unknownObjectRelease();

  v29 = [v6 defaultCenter];
  if (qword_100053478 != -1)
  {
    swift_once();
  }

  v30 = qword_1000565F8;
  v31 = *&v0[v9];
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v70 = sub_1000359AC;
  v71 = v32;
  aBlock = _NSConcreteStackBlock;
  v67 = 1107296256;
  v68 = sub_100032448;
  v69 = &unk_10004E548;
  v33 = _Block_copy(&aBlock);
  v34 = v31;

  v35 = [v29 addObserverForName:v30 object:0 queue:v34 usingBlock:v33];
  _Block_release(v33);
  swift_unknownObjectRelease();

  v36 = [v6 defaultCenter];
  if (qword_100053480 != -1)
  {
    swift_once();
  }

  v37 = qword_100056600;
  v38 = *&v0[v9];
  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v70 = sub_1000359E4;
  v71 = v39;
  aBlock = _NSConcreteStackBlock;
  v67 = 1107296256;
  v68 = sub_100032448;
  v69 = &unk_10004E570;
  v40 = _Block_copy(&aBlock);
  v41 = v38;

  v42 = [v36 addObserverForName:v37 object:0 queue:v41 usingBlock:v40];
  _Block_release(v40);
  swift_unknownObjectRelease();

  v43 = *&v0[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_queue];
  v44 = swift_allocObject();
  *(v44 + 16) = v0;
  v70 = sub_100035A54;
  v71 = v44;
  aBlock = _NSConcreteStackBlock;
  v67 = 1107296256;
  v68 = sub_100024520;
  v69 = &unk_10004E5C0;
  v45 = _Block_copy(&aBlock);
  v46 = v43;
  v47 = v0;
  v48 = v59;
  static DispatchQoS.unspecified.getter();
  v65 = _swiftEmptyArrayStorage;
  sub_100038D38(&qword_100053B08, &type metadata accessor for DispatchWorkItemFlags);
  sub_100003870(&unk_1000551B0, &unk_10003E7A0);
  sub_10003B0A0(&qword_100053B10, &unk_1000551B0, &unk_10003E7A0);
  v49 = v61;
  v50 = v64;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v45);

  (*(v63 + 8))(v49, v50);
  (*(v60 + 8))(v48, v62);

  v51 = *&v47[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_processMonitor];
  v52 = swift_allocObject();
  *(v52 + 16) = v47;
  v53 = swift_allocObject();
  *(v53 + 16) = sub_100035A5C;
  *(v53 + 24) = v52;
  v70 = sub_100035A74;
  v71 = v53;
  aBlock = _NSConcreteStackBlock;
  v67 = 1107296256;
  v68 = sub_10003B1C4;
  v69 = &unk_10004E638;
  v54 = _Block_copy(&aBlock);
  v55 = v47;
  v56 = v51;

  [v56 updateConfiguration:v54];

  _Block_release(v54);
  LOBYTE(v54) = swift_isEscapingClosureAtFileLocation();

  if (v54)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100032448(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

void sub_10003253C(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    a2();
  }
}

uint64_t sub_100032598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = *(result + OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_queue);
    v25 = v7;
    v26 = v11;
    v18 = result;
    v24 = v17;

    v19 = v12;
    v20 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    aBlock[4] = a3;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100024520;
    aBlock[3] = a4;
    v22 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v27 = &_swiftEmptyArrayStorage;
    sub_100038D38(&qword_100053B08, &type metadata accessor for DispatchWorkItemFlags);
    sub_100003870(&unk_1000551B0, &unk_10003E7A0);
    sub_10003B0A0(&qword_100053B10, &unk_1000551B0, &unk_10003E7A0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v23 = v24;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v22);

    (*(v25 + 8))(v10, v6);
    (*(v19 + 8))(v15, v26);
  }

  return result;
}

void sub_1000328D8()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = (&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_queue);
    *v4 = v7;
    (*(v1 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v0);
    v8 = v7;
    LOBYTE(v7) = _dispatchPreconditionTest(_:)();
    (*(v1 + 8))(v4, v0);
    if (v7)
    {
      sub_10002E554();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_100032A20()
{
  v0 = sub_100003870(&qword_100054428, &qword_10003E778);
  v1 = *(*(v0 - 8) + 64);
  v2 = __chkstk_darwin(v0 - 8);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v18 - v5;
  if (qword_100053488 != -1)
  {
    swift_once();
  }

  sub_10001C4BC(v18, v7);

  v8 = ModeEnablementStrategy.rawValue.getter();
  v9 = v8 == ModeEnablementStrategy.rawValue.getter();
  sub_100028314(v9, 0, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, 1);
  if (v19 == 2)
  {
    v10 = &enum case for ModelManagerGameAssertionPolicy.standardGameMode(_:);
  }

  else
  {
    if (v19 != 3)
    {
      v14 = type metadata accessor for ModelManagerGameAssertionPolicy();
      (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
      goto LABEL_9;
    }

    v10 = &enum case for ModelManagerGameAssertionPolicy.aaaGameMode(_:);
  }

  v11 = *v10;
  v12 = type metadata accessor for ModelManagerGameAssertionPolicy();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v4, v11, v12);
  (*(v13 + 56))(v4, 0, 1, v12);
LABEL_9:
  sub_1000391EC(v4, v6);
  sub_10002A5E4(v6, _swiftEmptyArrayStorage, 1);
  ModeEnablementStrategy.rawValue.getter();
  ModeEnablementStrategy.rawValue.getter();
  sub_10002B738(0, _swiftEmptyArrayStorage, 1);
  v15 = ModeEnablementStrategy.rawValue.getter();
  v16 = v15 == ModeEnablementStrategy.rawValue.getter();
  sub_10002CA74(v16, _swiftEmptyArrayStorage, 1);
  sub_10001B150(v18);
  return sub_1000096E8(v6, &qword_100054428, &qword_10003E778);
}

void sub_100032CD8(void *a1, uint64_t a2)
{
  sub_100003870(&qword_100054B30, &unk_10003EBF0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10003EB40;
  *(v4 + 32) = [objc_opt_self() predicateMatchingProcessTypeApplication];
  sub_100009748(0, &unk_100055230, RBSProcessPredicate_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a1 setPredicates:isa];

  [a1 setStateDescriptor:*(a2 + OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_assertionDescriptor)];
  [a1 setEvents:1];
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8[4] = sub_100035A9C;
  v8[5] = v6;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100033DA8;
  v8[3] = &unk_10004E660;
  v7 = _Block_copy(v8);

  [a1 setUpdateHandler:v7];
  _Block_release(v7);
}

uint64_t sub_100032E84(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = *(result + OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_queue);
    v26 = v12;
    v19 = result;
    v25 = v18;

    v20 = swift_allocObject();
    v20[2] = a4;
    v20[3] = a2;
    v20[4] = a3;
    aBlock[4] = sub_100035AEC;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100024520;
    aBlock[3] = &unk_10004E6B0;
    v21 = _Block_copy(aBlock);

    v22 = a2;
    v23 = a3;
    static DispatchQoS.unspecified.getter();
    v27 = _swiftEmptyArrayStorage;
    sub_100038D38(&qword_100053B08, &type metadata accessor for DispatchWorkItemFlags);
    sub_100003870(&unk_1000551B0, &unk_10003E7A0);
    sub_10003B0A0(&qword_100053B10, &unk_1000551B0, &unk_10003E7A0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v24 = v25;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v21);

    (*(v8 + 8))(v11, v7);
    (*(v13 + 8))(v16, v26);
  }

  return result;
}

void sub_1000331A4(uint64_t a1, void *a2, void *a3)
{
  v5 = type metadata accessor for Date();
  v112 = *(v5 - 8);
  v6 = *(v112 + 64);
  __chkstk_darwin(v5);
  v8 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v104 - v16;
  v18 = __chkstk_darwin(v15);
  v113 = &v104 - v19;
  __chkstk_darwin(v18);
  v21 = &v104 - v20;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    v111 = v10;
    v24 = [a2 identity];
    v25 = [a3 exitEvent];
    if (v25)
    {

      v26 = OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_gameProcesses;
      swift_beginAccess();
      v27 = *&v23[v26];

      v28 = sub_100026338(v24, v27);

      if (v28)
      {
        dispatch thunk of EmbeddedGameProcess.isTerminated.setter();
        dispatch thunk of EmbeddedGameProcess.isRunning.setter();
        dispatch thunk of EmbeddedGameProcess.isRunningForeground.setter();
        v29 = objc_opt_self();
        v116[0] = 0;
        v30 = [v29 createClient:v116];
        if (v30)
        {
          v31 = v30;
          v32 = v116[0];
          sub_10002D8D0(0, v28, v31);
          swift_unknownObjectRelease();
        }

        else
        {
          v39 = v116[0];
          _convertNSErrorToError(_:)();

          swift_willThrow();
          static Logger.daemon.getter();
          swift_errorRetain();
          v40 = Logger.logObject.getter();
          v41 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v40, v41))
          {
            v42 = swift_slowAlloc();
            v110 = v9;
            v43 = v42;
            v44 = v24;
            v45 = swift_slowAlloc();
            *v43 = 138543362;
            swift_errorRetain();
            v46 = _swift_stdlib_bridgeErrorToNSError();
            *(v43 + 4) = v46;
            *v45 = v46;
            _os_log_impl(&_mh_execute_header, v40, v41, "Unable to set game mode for exiting game process %{public}@", v43, 0xCu);
            sub_1000096E8(v45, &unk_100053C00, &qword_10003E810);
            v24 = v44;

            v9 = v110;
          }

          else
          {
          }

          (*(v111 + 8))(v14, v9);
        }
      }

      swift_beginAccess();
      v47 = sub_1000382A8(v24);
      swift_endAccess();

      swift_beginAccess();
      v48 = v24;
      sub_100038440(v48);
      swift_endAccess();

      sub_10002E554();
    }

    else
    {
      v109 = a3;
      v110 = v9;
      v33 = OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_ignoredProcesses;
      swift_beginAccess();
      v34 = *&v23[v33];

      v35 = sub_1000264E0(v24, v34);

      if (v35)
      {
      }

      else
      {
        v108 = v33;
        v36 = OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_gameProcesses;
        swift_beginAccess();
        v37 = *&v23[v36];

        v38 = sub_100026338(v24, v37);

        if (v38)
        {
          sub_10002DD98(v38, v109);
        }

        else
        {
          v107 = v24;
          v49 = type metadata accessor for EmbeddedGameProcess();
          v50 = *(v49 + 48);
          v51 = *(v49 + 52);
          swift_allocObject();
          v52 = a2;
          v53 = EmbeddedGameProcess.init(process:)();
          if (v53)
          {
            v54 = v53;
            v108 = v49;
            static Logger.daemon.getter();

            v55 = Logger.logObject.getter();
            v56 = static os_log_type_t.default.getter();

            v57 = os_log_type_enabled(v55, v56);
            v58 = v111;
            v106 = v54;
            if (v57)
            {
              v59 = swift_slowAlloc();
              v105 = swift_slowAlloc();
              v114 = v54;
              v115[0] = v105;
              *v59 = 136446210;
              sub_100038D38(&qword_100055240, &type metadata accessor for EmbeddedGameProcess);
              v60 = dispatch thunk of CustomStringConvertible.description.getter();
              v62 = sub_100034C38(v60, v61, v115);

              *(v59 + 4) = v62;
              _os_log_impl(&_mh_execute_header, v55, v56, "Identified app %{public}s", v59, 0xCu);
              sub_100003964(v105);

              v63 = v111;
            }

            else
            {

              v63 = v58;
            }

            v72 = *(v63 + 8);
            v72(v21, v110);
            v73 = *&v23[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_keyboardFocusTarget];
            if (v73 && (v74 = [v73 pid], v75 = EmbeddedGameProcess.processHandle.getter(), v76 = objc_msgSend(v75, "pid"), v75, v77 = v76 == v74, v78 = v110, v77))
            {
              static Date.now.getter();
              v79 = v106;
              dispatch thunk of EmbeddedGameProcess.lastFocused.setter();
              v80 = v113;
              static Logger.daemon.getter();

              v81 = Logger.logObject.getter();
              v82 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v81, v82))
              {
                v83 = swift_slowAlloc();
                LODWORD(v109) = v82;
                v84 = v83;
                v85 = swift_slowAlloc();
                v114 = v79;
                v115[0] = v85;
                *v84 = 136380931;
                sub_100038D38(&qword_100055240, &type metadata accessor for EmbeddedGameProcess);
                v86 = dispatch thunk of CustomStringConvertible.description.getter();
                v88 = sub_100034C38(v86, v87, v115);

                *(v84 + 4) = v88;
                *(v84 + 12) = 2081;
                dispatch thunk of EmbeddedGameProcess.lastFocused.getter();
                sub_100038D38(&qword_100055248, &type metadata accessor for Date);
                v89 = dispatch thunk of CustomStringConvertible.description.getter();
                v91 = v90;
                (*(v112 + 8))(v8, v5);
                v92 = sub_100034C38(v89, v91, v115);

                *(v84 + 14) = v92;
                _os_log_impl(&_mh_execute_header, v81, v109, "Newly identified app was focused. Last played for %{private}s == %{private}s", v84, 0x16u);
                swift_arrayDestroy();

                v72(v113, v110);
              }

              else
              {

                v72(v80, v78);
              }
            }

            else
            {
              swift_beginAccess();
              v93 = v36;
              v94 = *&v23[v36];
              if ((v94 & 0xC000000000000001) != 0)
              {
                if (v94 < 0)
                {
                  v95 = *&v23[v36];
                }

                else
                {
                  v95 = v94 & 0xFFFFFFFFFFFFFF8;
                }

                v96 = v107;
                v97 = v107;
                v98 = v106;

                v99 = __CocoaDictionary.count.getter();
                v100 = v109;
                if (__OFADD__(v99, 1))
                {
                  __break(1u);
                }

                *&v23[v93] = sub_10003858C(v95, v99 + 1);
              }

              else
              {
                v101 = *&v23[v36];
                v96 = v107;
                v102 = v107;
                v98 = v106;

                v100 = v109;
              }

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v114 = *&v23[v93];
              sub_100038BBC(v98, v96, isUniquelyReferenced_nonNull_native);
              *&v23[v93] = v114;

              swift_endAccess();
              sub_10002DD98(v98, v100);
            }
          }

          else
          {
            static Logger.daemon.getter();
            v64 = v107;
            v65 = Logger.logObject.getter();
            v66 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v65, v66))
            {
              v67 = swift_slowAlloc();
              v68 = swift_slowAlloc();
              *v67 = 138543362;
              *(v67 + 4) = v64;
              *v68 = v64;
              v69 = v64;
              _os_log_impl(&_mh_execute_header, v65, v66, "Ignoring process %{public}@", v67, 0xCu);
              sub_1000096E8(v68, &unk_100053C00, &qword_10003E810);
            }

            (*(v111 + 8))(v17, v110);
            swift_beginAccess();
            v70 = v64;
            sub_100035F4C(&v114, v70);
            v71 = v114;
            swift_endAccess();
          }
        }
      }
    }
  }
}

void sub_100033DA8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v11 = a2;
  v9 = a3;
  v10 = a4;
  v8(v11, v9, v10);
}

uint64_t sub_100033E48(char a1, char a2, uint64_t a3, uint64_t a4)
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
  v17 = *&v4[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_queue];
  v18 = swift_allocObject();
  *(v18 + 16) = v4;
  *(v18 + 24) = a1;
  *(v18 + 25) = a2;
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;
  aBlock[4] = sub_100035898;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100024520;
  aBlock[3] = &unk_10004E480;
  v19 = _Block_copy(aBlock);
  v20 = v17;
  v21 = v4;

  static DispatchQoS.unspecified.getter();
  v26 = &_swiftEmptyArrayStorage;
  sub_100038D38(&qword_100053B08, &type metadata accessor for DispatchWorkItemFlags);
  sub_100003870(&unk_1000551B0, &unk_10003E7A0);
  sub_10003B0A0(&qword_100053B10, &unk_1000551B0, &unk_10003E7A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v25 + 8))(v12, v9);
  (*(v13 + 8))(v16, v24);
}

void sub_100034148(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_opt_self() userInitiated];
  [a1 setServiceQuality:v6];

  [a1 setInterface:a2];
  [a1 setInterfaceTarget:a3];
  v16 = nullsub_1;
  v17 = 0;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_1000343AC;
  v15 = &unk_10004E868;
  v7 = _Block_copy(&v12);
  [a1 setActivationHandler:v7];
  _Block_release(v7);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = sub_10003B088;
  v17 = v8;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_1000343AC;
  v15 = &unk_10004E890;
  v9 = _Block_copy(&v12);

  [a1 setInterruptionHandler:v9];
  _Block_release(v9);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = sub_10003B090;
  v17 = v10;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_1000343AC;
  v15 = &unk_10004E8B8;
  v11 = _Block_copy(&v12);

  [a1 setInvalidationHandler:v11];
  _Block_release(v11);
}

void sub_1000343AC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_100034414()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_connection;
    v3 = *(Strong + OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_connection);
    if (v3)
    {
      [v3 invalidate];
      v4 = *&v1[v2];
    }

    else
    {
      v4 = 0;
    }

    *&v1[v2] = 0;
  }
}

void sub_10003449C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *&Strong[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_connection];
    *&Strong[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_connection] = 0;
  }
}

uint64_t sub_1000344FC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  swift_unknownObjectRetain();
  v4(a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_100034550(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v7 - 8);
  v8 = *(v24 + 64);
  __chkstk_darwin(v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v11 = *(v23 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v23);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *&v3[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_queue];
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = v3;
  aBlock[4] = sub_1000357D8;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100024520;
  aBlock[3] = &unk_10004E430;
  v17 = _Block_copy(aBlock);
  v18 = v15;

  v19 = a3;
  v20 = v3;
  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_100038D38(&qword_100053B08, &type metadata accessor for DispatchWorkItemFlags);
  sub_100003870(&unk_1000551B0, &unk_10003E7A0);
  sub_10003B0A0(&qword_100053B10, &unk_1000551B0, &unk_10003E7A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v24 + 8))(v10, v7);
  (*(v11 + 8))(v14, v23);
}

uint64_t sub_100034848(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.daemon.getter();

  v13 = a3;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();

  p_name = &stru_100051FF8.name;
  if (os_log_type_enabled(v14, v15))
  {
    v17 = swift_slowAlloc();
    v21 = a4;
    v18 = v17;
    v19 = swift_slowAlloc();
    v22 = v19;
    *v18 = 136315394;
    *(v18 + 4) = sub_100034C38(a1, a2, &v22);
    *(v18 + 12) = 1024;
    *(v18 + 14) = [v13 BOOLValue];

    _os_log_impl(&_mh_execute_header, v14, v15, "setGameModeForBundleIdentifier(%s enabled:%{BOOL}d)", v18, 0x12u);
    sub_100003964(v19);
    p_name = (&stru_100051FF8 + 8);
  }

  else
  {
  }

  (*(v9 + 8))(v12, v8);
  type metadata accessor for GlobalPreferences();
  dispatch thunk of static GlobalPreferences.shared.getter();
  [v13 p_name[210]];
  dispatch thunk of GlobalPreferences.setGameModeEnabled(_:bundleIdentifier:)();

  return sub_10002E554();
}

uint64_t sub_100034B20(uint64_t a1, uint64_t a2)
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

void *sub_100034BB0(uint64_t a1, uint64_t a2)
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

  sub_100003870(&qword_100054B30, &unk_10003EBF0);
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

uint64_t sub_100034C38(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100034D04(v11, 0, 0, 1, a1, a2);
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
    sub_1000357FC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100003964(v11);
  return v7;
}

unint64_t sub_100034D04(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100034E10(a5, a6);
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

char *sub_100034E10(uint64_t a1, unint64_t a2)
{
  v4 = sub_100034E5C(a1, a2);
  sub_100034F8C(&off_10004D6D0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100034E5C(uint64_t a1, unint64_t a2)
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

  v6 = sub_100035078(v5, 0);
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
        v7 = sub_100035078(v10, 0);
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

uint64_t sub_100034F8C(uint64_t result)
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

  result = sub_1000350EC(result, v12, 1, v3);
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

void *sub_100035078(uint64_t a1, uint64_t a2)
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

  sub_100003870(&qword_1000551C0, &unk_10003F0B8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000350EC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003870(&qword_1000551C0, &unk_10003F0B8);
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

unint64_t sub_1000351E0(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return sub_1000352E0(a1, v4);
}

unint64_t sub_100035224(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_1000353B4(a1, a2, v6);
}

unint64_t sub_10003529C(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10003546C(a1, v4);
}

unint64_t sub_1000352E0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_100009748(0, &qword_100054450, RBSProcessIdentity_ptr);
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

unint64_t sub_1000353B4(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_10003546C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100039C8C(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100039CE8(v8);
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

char *sub_100035534(char *a1, int64_t a2, char a3)
{
  result = sub_100035AF8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100035554(void *a1, int64_t a2, char a3)
{
  result = sub_100035C04(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t type metadata accessor for EmbeddedGameProcessMonitor()
{
  result = qword_100055198;
  if (!qword_100055198)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000355C8()
{
  result = type metadata accessor for GameModeStatus.Config();
  if (v1 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = type metadata accessor for ModelManagerGameAssertionStatus.Config();
    if (v2 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      result = type metadata accessor for SustainedExecutionStatus.Config();
      if (v3 <= 0x3F)
      {
        v7 = *(result - 8) + 64;
        result = type metadata accessor for DynamicSplitterStatus.Config();
        if (v4 <= 0x3F)
        {
          v8 = *(result - 8) + 64;
          return swift_updateClassMetadata2();
        }
      }
    }
  }

  return result;
}

uint64_t sub_100035790()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000357E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000357FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100035858()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100035898()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 25);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 16);
  return sub_1000306C0(v1, v2, v3, v4);
}

uint64_t sub_1000358CC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100035A1C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100035A74()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100035AA4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 40, 7);
}

char *sub_100035AF8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003870(&qword_100055270, " Y");
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

void *sub_100035C04(void *result, int64_t a2, char a3, void *a4)
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
    sub_100003870(&qword_100055408, &qword_10003F160);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100003870(&unk_100055410, &qword_10003F168);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t *sub_100035D4C(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = __CocoaDictionary.count.getter();
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v3 = sub_100034BB0(v2, 0);

    v1 = sub_100039810(&v5, v3 + 4, v2, v1);
    sub_10001B370();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = *(v1 + 16);
    if (!v2)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v3;
}

uint64_t sub_100035DFC(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_100036880(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100035F4C(void *a1, void *a2)
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

      sub_100009748(0, &qword_100054450, RBSProcessIdentity_ptr);
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

    v20 = sub_100036184(v7, result + 1);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      sub_1000365D4(v21 + 1);
    }

    v19 = v8;
    sub_1000367FC(v19, v20);

    *v3 = v20;
    goto LABEL_16;
  }

  sub_100009748(0, &qword_100054450, RBSProcessIdentity_ptr);
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
    sub_100036A00(v19, v13, isUniquelyReferenced_nonNull_native);
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

Swift::Int sub_100036184(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100003870(&unk_100055260, &qword_10003F0D0);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_100009748(0, &qword_100054450, RBSProcessIdentity_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1000365D4(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_100036374(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100003870(&qword_100055400, &qword_10003F158);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1000365D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100003870(&unk_100055260, &qword_10003F0D0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v6 + 40));
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_1000367FC(uint64_t a1, uint64_t a2)
{
  NSObject._rawHashValue(seed:)(*(a2 + 40));
  v4 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

Swift::Int sub_100036880(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100036374(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100036B70();
      goto LABEL_16;
    }

    sub_100036E1C(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100036A00(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1000365D4(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_100036CCC();
      goto LABEL_12;
    }

    sub_100037054(v6 + 1);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_100009748(0, &qword_100054450, RBSProcessIdentity_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void *sub_100036B70()
{
  v1 = v0;
  sub_100003870(&qword_100055400, &qword_10003F158);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_100036CCC()
{
  v1 = v0;
  sub_100003870(&unk_100055260, &qword_10003F0D0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_100036E1C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100003870(&qword_100055400, &qword_10003F158);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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
    *v2 = v6;
  }

  return result;
}

uint64_t sub_100037054(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100003870(&unk_100055260, &qword_10003F0D0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = NSObject._rawHashValue(seed:)(v17);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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
    *v2 = v6;
  }

  return result;
}

uint64_t sub_100037268(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_100039A04(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1000372E4(v6);
  return specialized ContiguousArray._endMutation()();
}

Swift::Int sub_1000372E4(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for EmbeddedGameProcess();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1000375DC(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1000373E8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1000373E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v34 = type metadata accessor for Date();
  v8 = *(*(v34 - 8) + 64);
  v9 = __chkstk_darwin(v34);
  v33 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v14 = &v28 - v13;
  v29 = a2;
  if (a3 != a2)
  {
    v15 = (v12 + 8);
    v35 = *a4;
    v16 = v35 + 8 * a3 - 8;
    v17 = a1 - a3;
LABEL_5:
    v31 = v16;
    v32 = a3;
    v18 = *(v35 + 8 * a3);
    v30 = v17;
    v19 = v16;
    while (1)
    {
      v20 = *v19;

      dispatch thunk of EmbeddedGameProcess.lastFocused.getter();
      v21 = v33;
      dispatch thunk of EmbeddedGameProcess.lastFocused.getter();
      v22 = static Date.> infix(_:_:)();
      v23 = *v15;
      v24 = v21;
      v25 = v34;
      (*v15)(v24, v34);
      v23(v14, v25);

      if ((v22 & 1) == 0)
      {
LABEL_4:
        a3 = v32 + 1;
        v16 = v31 + 8;
        v17 = v30 - 1;
        if (v32 + 1 == v29)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v35)
      {
        break;
      }

      v26 = *v19;
      *v19 = v19[1];
      v19[1] = v26;
      --v19;
      if (__CFADD__(v17++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000375DC(int64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v107 = a1;
  v116 = type metadata accessor for Date();
  v9 = *(*(v116 - 8) + 64);
  v10 = __chkstk_darwin(v116);
  v115 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v10);
  v114 = &v101 - v14;
  v15 = a3[1];
  if (v15 < 1)
  {
    v17 = &_swiftEmptyArrayStorage;
LABEL_88:
    v18 = *v107;
    if (!*v107)
    {
      goto LABEL_127;
    }

    a4 = v17;
    v5 = a3;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_121:
      result = sub_100038294(a4);
    }

    v117 = result;
    v97 = *(result + 16);
    if (v97 >= 2)
    {
      while (*v5)
      {
        a4 = *(result + 16 * v97);
        v98 = result;
        v99 = *(result + 16 * (v97 - 1) + 40);
        sub_100037DC4((*v5 + 8 * a4), (*v5 + 8 * *(result + 16 * (v97 - 1) + 32)), (*v5 + 8 * v99), v18);
        if (v6)
        {
        }

        if (v99 < a4)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v98 = sub_100038294(v98);
        }

        if (v97 - 2 >= *(v98 + 2))
        {
          goto LABEL_115;
        }

        v100 = &v98[16 * v97];
        *v100 = a4;
        v100[1] = v99;
        v117 = v98;
        sub_100038208(v97 - 1);
        result = v117;
        v97 = v117[2];
        if (v97 <= 1)
        {
        }
      }

      goto LABEL_125;
    }
  }

  v16 = 0;
  v113 = (v13 + 8);
  v17 = &_swiftEmptyArrayStorage;
  v106 = a4;
  v102 = a3;
  while (1)
  {
    v18 = v16++;
    if (v16 < v15)
    {
      v111 = v15;
      v104 = v17;
      v105 = v6;
      v19 = *a3;
      v20 = *(*a3 + 8 * v16);
      v110 = 8 * v18;
      v21 = (v19 + 8 * v18);
      v22 = *v21;
      v5 = (v21 + 2);

      v23 = v114;
      dispatch thunk of EmbeddedGameProcess.lastFocused.getter();
      v24 = v115;
      dispatch thunk of EmbeddedGameProcess.lastFocused.getter();
      LODWORD(v112) = static Date.> infix(_:_:)();
      v25 = *v113;
      v26 = v116;
      (*v113)(v24, v116);
      v25(v23, v26);

      v103 = v18;
      v27 = v18 + 2;
      while (1)
      {
        v16 = v111;
        if (v111 == v27)
        {
          break;
        }

        v29 = *(v5 - 8);
        v28 = *v5;

        v30 = v114;
        dispatch thunk of EmbeddedGameProcess.lastFocused.getter();
        v31 = v115;
        dispatch thunk of EmbeddedGameProcess.lastFocused.getter();
        v32 = static Date.> infix(_:_:)() & 1;
        v33 = v31;
        v34 = v116;
        v25(v33, v116);
        v25(v30, v34);

        ++v27;
        v5 += 8;
        if ((v112 & 1) != v32)
        {
          v16 = v27 - 1;
          break;
        }
      }

      v17 = v104;
      v6 = v105;
      a4 = v106;
      v18 = v103;
      v35 = v110;
      if (v112)
      {
        if (v16 < v103)
        {
          goto LABEL_118;
        }

        a3 = v102;
        if (v103 < v16)
        {
          v36 = 8 * v16 - 8;
          v37 = v16;
          v38 = v103;
          do
          {
            if (v38 != --v37)
            {
              v40 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v39 = *(v40 + v35);
              *(v40 + v35) = *(v40 + v36);
              *(v40 + v36) = v39;
            }

            ++v38;
            v36 -= 8;
            v35 += 8;
          }

          while (v38 < v37);
        }
      }

      else
      {
        a3 = v102;
      }
    }

    v41 = a3[1];
    if (v16 < v41)
    {
      if (__OFSUB__(v16, v18))
      {
        goto LABEL_117;
      }

      if (v16 - v18 < a4)
      {
        v42 = v18 + a4;
        if (__OFADD__(v18, a4))
        {
          goto LABEL_119;
        }

        if (v42 >= v41)
        {
          v42 = a3[1];
        }

        if (v42 < v18)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v16 != v42)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v16 < v18)
    {
      goto LABEL_116;
    }

    v53 = v17;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v17 = v53;
    }

    else
    {
      result = sub_10002406C(0, v53[2] + 1, 1, v53);
      v17 = result;
    }

    v5 = v17[2];
    v54 = v17[3];
    a4 = v5 + 1;
    if (v5 >= v54 >> 1)
    {
      result = sub_10002406C((v54 > 1), v5 + 1, 1, v17);
      v17 = result;
    }

    v17[2] = a4;
    v55 = &v17[2 * v5];
    *(v55 + 4) = v18;
    *(v55 + 5) = v16;
    v56 = *v107;
    if (!*v107)
    {
      goto LABEL_126;
    }

    if (v5)
    {
      while (1)
      {
        v18 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v57 = v17[4];
          v58 = v17[5];
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_56:
          if (v60)
          {
            goto LABEL_105;
          }

          v73 = &v17[2 * a4];
          v75 = *v73;
          v74 = v73[1];
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_108;
          }

          v79 = &v17[2 * v18 + 4];
          v81 = *v79;
          v80 = v79[1];
          v67 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v67)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v77, v82))
          {
            goto LABEL_112;
          }

          if (v77 + v82 >= v59)
          {
            if (v59 < v82)
            {
              v18 = a4 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v83 = &v17[2 * a4];
        v85 = *v83;
        v84 = v83[1];
        v67 = __OFSUB__(v84, v85);
        v77 = v84 - v85;
        v78 = v67;
LABEL_70:
        if (v78)
        {
          goto LABEL_107;
        }

        v86 = &v17[2 * v18];
        v88 = *(v86 + 4);
        v87 = *(v86 + 5);
        v67 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v67)
        {
          goto LABEL_110;
        }

        if (v89 < v77)
        {
          goto LABEL_3;
        }

LABEL_77:
        v5 = v18 - 1;
        if (v18 - 1 >= a4)
        {
          __break(1u);
LABEL_101:
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
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v94 = v17;
        a4 = v17[2 * v5 + 4];
        v95 = v17[2 * v18 + 5];
        sub_100037DC4((*a3 + 8 * a4), (*a3 + 8 * v17[2 * v18 + 4]), (*a3 + 8 * v95), v56);
        if (v6)
        {
        }

        if (v95 < a4)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = sub_100038294(v94);
        }

        if (v5 >= *(v94 + 2))
        {
          goto LABEL_102;
        }

        v96 = &v94[16 * v5];
        *(v96 + 4) = a4;
        *(v96 + 5) = v95;
        v117 = v94;
        result = sub_100038208(v18);
        v17 = v117;
        a4 = v117[2];
        if (a4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v61 = &v17[2 * a4 + 4];
      v62 = *(v61 - 64);
      v63 = *(v61 - 56);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_103;
      }

      v66 = *(v61 - 48);
      v65 = *(v61 - 40);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_104;
      }

      v68 = &v17[2 * a4];
      v70 = *v68;
      v69 = v68[1];
      v67 = __OFSUB__(v69, v70);
      v71 = v69 - v70;
      if (v67)
      {
        goto LABEL_106;
      }

      v67 = __OFADD__(v59, v71);
      v72 = v59 + v71;
      if (v67)
      {
        goto LABEL_109;
      }

      if (v72 >= v64)
      {
        v90 = &v17[2 * v18 + 4];
        v92 = *v90;
        v91 = v90[1];
        v67 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v67)
        {
          goto LABEL_113;
        }

        if (v59 < v93)
        {
          v18 = a4 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v15 = a3[1];
    a4 = v106;
    if (v16 >= v15)
    {
      goto LABEL_88;
    }
  }

  v104 = v17;
  v105 = v6;
  v112 = *a3;
  v43 = (v112 + 8 * v16 - 8);
  v103 = v18;
  v44 = v18 - v16;
  v108 = v42;
LABEL_29:
  v110 = v43;
  v111 = v16;
  v45 = *(v112 + 8 * v16);
  v109 = v44;
  while (1)
  {
    v46 = *v43;

    v5 = v114;
    dispatch thunk of EmbeddedGameProcess.lastFocused.getter();
    v47 = v115;
    dispatch thunk of EmbeddedGameProcess.lastFocused.getter();
    a4 = static Date.> infix(_:_:)();
    v48 = *v113;
    v49 = v47;
    v50 = v116;
    (*v113)(v49, v116);
    v48(v5, v50);

    if ((a4 & 1) == 0)
    {
LABEL_28:
      v16 = v111 + 1;
      v43 = (v110 + 8);
      v44 = v109 - 1;
      if (v111 + 1 != v108)
      {
        goto LABEL_29;
      }

      v16 = v108;
      v17 = v104;
      v6 = v105;
      a3 = v102;
      v18 = v103;
      goto LABEL_36;
    }

    if (!v112)
    {
      break;
    }

    v51 = *v43;
    *v43 = v43[1];
    v43[1] = v51;
    --v43;
    if (__CFADD__(v44++, 1))
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
  return result;
}

uint64_t sub_100037DC4(char *a1, char *a2, char *a3, char *a4)
{
  v53 = a4;
  v51 = type metadata accessor for Date();
  v7 = *(v51 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v51);
  v50 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v49 = &v44 - v11;
  v12 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v12 = a2 - a1;
  }

  v13 = v12 >> 3;
  v14 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 3;
  if (v13 >= v14 >> 3)
  {
    if (v53 != a2 || &a2[8 * v15] <= v53)
    {
      memmove(v53, a2, 8 * v15);
    }

    v52 = &v53[8 * v15];
    if (a3 - a2 >= 8 && a2 > a1)
    {
      v45 = (v7 + 8);
      v48 = a1;
      do
      {
        v44 = a2;
        v28 = a2 - 8;
        v29 = a3 - 8;
        v30 = v52;
        v46 = a2 - 8;
        while (1)
        {
          v47 = v29;
          v31 = v29 + 8;
          v32 = *(v30 - 1);
          v30 -= 8;
          v33 = *v28;

          v34 = v49;
          dispatch thunk of EmbeddedGameProcess.lastFocused.getter();
          v35 = v50;
          dispatch thunk of EmbeddedGameProcess.lastFocused.getter();
          v36 = static Date.> infix(_:_:)();
          v37 = *v45;
          v38 = v35;
          v39 = v51;
          (*v45)(v38, v51);
          v37(v34, v39);

          if (v36)
          {
            break;
          }

          v40 = v47;
          if (v31 != v52)
          {
            *v47 = *v30;
          }

          v29 = v40 - 8;
          v52 = v30;
          v28 = v46;
          if (v30 <= v53)
          {
            v52 = v30;
            a2 = v44;
            goto LABEL_39;
          }
        }

        a3 = v47;
        v41 = v48;
        v42 = v46;
        if (v31 != v44)
        {
          *v47 = *v46;
        }

        if (v52 <= v53)
        {
          break;
        }

        a2 = v42;
      }

      while (v42 > v41);
      a2 = v42;
    }
  }

  else
  {
    if (v53 != a1 || &a1[8 * v13] <= v53)
    {
      memmove(v53, a1, 8 * v13);
    }

    v52 = &v53[8 * v13];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v16 = (v7 + 8);
      while (1)
      {
        v48 = a1;
        v17 = *a2;
        v18 = *v53;

        v19 = v49;
        dispatch thunk of EmbeddedGameProcess.lastFocused.getter();
        v20 = v50;
        dispatch thunk of EmbeddedGameProcess.lastFocused.getter();
        v21 = static Date.> infix(_:_:)();
        v22 = *v16;
        v23 = v20;
        v24 = v51;
        (*v16)(v23, v51);
        v22(v19, v24);

        if ((v21 & 1) == 0)
        {
          break;
        }

        v25 = a2;
        v26 = v48;
        v27 = v48 == a2;
        a2 += 8;
        if (!v27)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v26 + 8;
        if (v53 >= v52 || a2 >= a3)
        {
          goto LABEL_20;
        }
      }

      v25 = v53;
      v26 = v48;
      v53 += 8;
      if (v48 == v25)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v26 = *v25;
      goto LABEL_18;
    }

LABEL_20:
    a2 = a1;
  }

LABEL_39:
  if (a2 != v53 || a2 >= &v53[(v52 - v53 + (v52 - v53 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(a2, v53, 8 * ((v52 - v53) / 8));
  }

  return 1;
}

uint64_t sub_100038208(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100038294(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1000382A8(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    v5 = *v1;

    v6 = a1;
    v7 = __CocoaSet.contains(_:)();

    if (v7)
    {
      v8 = sub_100038EE4();

      return v8;
    }

    return 0;
  }

  v10 = v1;
  sub_100009748(0, &qword_100054450, RBSProcessIdentity_ptr);
  v11 = NSObject._rawHashValue(seed:)(*(v3 + 40));
  v12 = -1 << *(v3 + 32);
  v13 = v11 & ~v12;
  if (((*(v3 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
    return 0;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v3 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v3 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      return 0;
    }
  }

  v17 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v10;
  v21 = *v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100036CCC();
    v19 = v21;
  }

  v20 = *(*(v19 + 48) + 8 * v13);
  sub_10003904C(v13);
  result = v20;
  *v10 = v21;
  return result;
}

uint64_t sub_100038440(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = *v1;
    v14 = sub_1000351E0(a1);
    if (v15)
    {
      v3 = v14;
      v16 = *v2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v2;
      v19 = *v2;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_100038A30(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_100038D80();
      v8 = v19;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = __CocoaDictionary.lookup(_:)();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = __CocoaDictionary.count.getter();
  v8 = sub_10003858C(v4, v7);

  v9 = sub_1000351E0(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_100038A30(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

Swift::Int sub_10003858C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100003870(&unk_100055250, &qword_10003F0C8);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_100009748(0, &qword_100054450, RBSProcessIdentity_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        type metadata accessor for EmbeddedGameProcess();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1000387C0(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

uint64_t sub_1000387C0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100003870(&unk_100055250, &qword_10003F0C8);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
      }

      result = NSObject._rawHashValue(seed:)(*(v8 + 40));
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void sub_100038A30(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = NSObject._rawHashValue(seed:)(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

uint64_t sub_100038BBC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1000351E0(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1000387C0(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_1000351E0(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_100009748(0, &qword_100054450, RBSProcessIdentity_ptr);
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_retain_x1();
      }
    }

    else
    {
      v16 = v8;
      sub_100038D80();
      v8 = v16;
    }
  }

  v19 = *v4;
  if ((v14 & 1) == 0)
  {
    v19[(v8 >> 6) + 8] |= 1 << v8;
    *(v19[6] + 8 * v8) = a2;
    *(v19[7] + 8 * v8) = a1;
    v23 = v19[2];
    v12 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v12)
    {
      v19[2] = v24;

      return _objc_retain_x1();
    }

    goto LABEL_17;
  }

  v20 = v19[7];
  v21 = *(v20 + 8 * v8);
  *(v20 + 8 * v8) = a1;
}

uint64_t sub_100038D38(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_100038D80()
{
  v1 = v0;
  sub_100003870(&unk_100055250, &qword_10003F0C8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_100038EE4()
{
  v1 = v0;
  v2 = *v0;

  v3 = __CocoaSet.count.getter();
  v4 = swift_unknownObjectRetain();
  v5 = sub_100036184(v4, v3);
  v15 = v5;
  v6 = *(v5 + 40);

  v7 = NSObject._rawHashValue(seed:)(v6);
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_100009748(0, &qword_100054450, RBSProcessIdentity_ptr);
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);
      v12 = static NSObject.== infix(_:_:)();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v5 + 48) + 8 * v9);
  sub_10003904C(v9);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    *v1 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10003904C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = NSObject._rawHashValue(seed:)(v11);

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_16:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1000391EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003870(&qword_100054428, &qword_10003E778);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_100039324(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
LABEL_7:

    return &_swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_100034BB0(v3, 0);
  sub_10003955C(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1000393B8(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_10003B0A0(&qword_1000553F8, &qword_1000553F0, &qword_10003F150);
          for (i = 0; i != v6; ++i)
          {
            sub_100003870(&qword_1000553F0, &qword_10003F150);
            v9 = sub_100039700(v13, i, a3);
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
        type metadata accessor for GameModeCCUIStatusBundleInfo();
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

uint64_t sub_10003955C(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_10003B0A0(&unk_1000552A0, &qword_100055298, qword_10003F0F8);
          for (i = 0; i != v6; ++i)
          {
            sub_100003870(&qword_100055298, qword_10003F0F8);
            v9 = sub_100039788(v13, i, a3);
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
        type metadata accessor for EmbeddedGameProcess();
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

void (*sub_100039700(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
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
    return sub_100039780;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_100039788(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
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
    *v3 = v5;
    return sub_100039808;
  }

  __break(1u);
  return result;
}

uint64_t sub_100039810(uint64_t result, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v19 = -1 << *(v4 + 32);
    v8 = v4 + 64;
    v9 = ~v19;
    v20 = -v19;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v10 = v21 & *(v4 + 64);
    v23 = v9;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v15 = 0;
    a3 = 0;
    goto LABEL_32;
  }

  result = __CocoaDictionary.makeIterator()();
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = result | 0x8000000000000000;
  v23 = 0;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v15 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v24 = a3;
  a3 = 0;
  v11 = 0;
  v12 = (v9 + 64) >> 6;
  v13 = 1;
  while (1)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      if (!__CocoaDictionary.Iterator.next()())
      {
        goto LABEL_31;
      }

      swift_unknownObjectRelease();
      type metadata accessor for EmbeddedGameProcess();
      swift_dynamicCast();
      result = v25;
      v15 = v11;
      if (!v25)
      {
        goto LABEL_32;
      }

      goto LABEL_17;
    }

    v14 = v11;
    if (!v10)
    {
      break;
    }

    v15 = v11;
LABEL_13:
    v16 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v17 = *(*(v4 + 56) + ((v15 << 9) | (8 * v16)));

    if (!result)
    {
      goto LABEL_32;
    }

LABEL_17:
    *a2 = result;
    a3 = v24;
    if (v13 == v24)
    {
LABEL_31:
      v15 = v11;
      goto LABEL_32;
    }

    ++a2;
    a3 = v13;
    if (__OFADD__(v13++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v15 >= v12)
    {
      break;
    }

    v10 = *(v8 + 8 * v15);
    ++v14;
    if (v10)
    {
      v11 = v15;
      goto LABEL_13;
    }
  }

  v10 = 0;
  if (v12 <= v11 + 1)
  {
    v22 = v11 + 1;
  }

  else
  {
    v22 = v12;
  }

  v15 = v22 - 1;
LABEL_32:
  *v7 = v4;
  v7[1] = v8;
  v7[2] = v23;
  v7[3] = v15;
  v7[4] = v10;
  return a3;
}

unint64_t sub_100039A18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003870(&unk_100055250, &qword_10003F0C8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_1000351E0(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
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

unint64_t sub_100039B10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003870(&qword_100055288, &qword_10003F0E8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100039F6C(v4, v13, &qword_100055280, &qword_10003F0E0);
      result = sub_10003529C(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1000096B8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
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

uint64_t sub_100039C4C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100039D3C(uint64_t a1, uint64_t a2)
{
  v4 = SEMPolicy.rawValue.getter();
  if (v4 == SEMPolicy.rawValue.getter())
  {
    v5 = 0;
  }

  else
  {
    v6 = SEMPolicy.rawValue.getter();
    if (v6 == SEMPolicy.rawValue.getter())
    {
      v5 = 1;
    }

    else
    {
      v7 = SEMPolicy.rawValue.getter();
      if (v7 == SEMPolicy.rawValue.getter())
      {
        v5 = 2;
      }

      else
      {
        v8 = SEMPolicy.rawValue.getter();
        if (v8 == SEMPolicy.rawValue.getter())
        {
          v5 = 3;
        }

        else
        {
          v5 = 0x7FFFFFFFFFFFFFFFLL;
        }
      }
    }
  }

  v9 = SEMPolicy.rawValue.getter();
  if (v9 == SEMPolicy.rawValue.getter())
  {
    v10 = 0;
  }

  else
  {
    v11 = SEMPolicy.rawValue.getter();
    if (v11 == SEMPolicy.rawValue.getter())
    {
      v10 = 1;
    }

    else
    {
      v12 = SEMPolicy.rawValue.getter();
      if (v12 == SEMPolicy.rawValue.getter())
      {
        v10 = 2;
      }

      else
      {
        v13 = SEMPolicy.rawValue.getter();
        if (v13 != SEMPolicy.rawValue.getter())
        {
          return a1;
        }

        v10 = 3;
      }
    }
  }

  if (v10 < v5)
  {
    return a2;
  }

  return a1;
}

unint64_t sub_100039EB0()
{
  result = qword_1000552C0;
  if (!qword_1000552C0)
  {
    sub_100009748(255, &qword_1000552B8, RBSProcessAssertionInfo_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000552C0);
  }

  return result;
}

unint64_t sub_100039F18()
{
  result = qword_1000552D0;
  if (!qword_1000552D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000552D0);
  }

  return result;
}

uint64_t sub_100039F6C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003870(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_100039FD4()
{
  result = qword_1000552F8;
  if (!qword_1000552F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000552F8);
  }

  return result;
}

uint64_t sub_10003A028(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(*(v8 - 8) + 64);
  result = __chkstk_darwin(v8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v14 = *&v1[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_queue];
    v20 = v11;
    v21 = result;
    v15 = swift_allocObject();
    *(v15 + 16) = v1;
    *(v15 + 24) = a1;
    aBlock[4] = sub_10003B098;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100024520;
    aBlock[3] = &unk_10004E908;
    v16 = _Block_copy(aBlock);
    v19 = a1;
    v17 = v14;
    v18 = v1;
    static DispatchQoS.unspecified.getter();
    v22 = _swiftEmptyArrayStorage;
    sub_100038D38(&qword_100053B08, &type metadata accessor for DispatchWorkItemFlags);
    sub_100003870(&unk_1000551B0, &unk_10003E7A0);
    sub_10003B0A0(&qword_100053B10, &unk_1000551B0, &unk_10003E7A0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v16);

    (*(v4 + 8))(v7, v3);
    (*(v20 + 8))(v13, v21);
  }

  return result;
}

uint64_t sub_10003A31C(uint64_t a1, unint64_t a2, int a3)
{
  v109 = a1;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v111 = &v105[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v9);
  v112 = &v105[-v12];
  v13 = __chkstk_darwin(v11);
  v15 = &v105[-v14];
  v16 = __chkstk_darwin(v13);
  v18 = &v105[-v17];
  __chkstk_darwin(v16);
  v20 = &v105[-v19];
  sub_100001C78();
  v21 = 0;
  v22 = 0;
  v113 = OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_connection;
  v114 = v3;
  v23 = *&v3[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_connection];
  v107 = a2;
  if (v23)
  {
LABEL_2:
    v108 = v21;
    v110 = v22;
    v24 = objc_opt_self();
    v25 = [v24 sharedInstance];
    v26 = [v25 isAvailable];

    if (v26 && (v27 = [v24 sharedInstance], v28 = objc_msgSend(v27, "sfSymbolName"), v27, v28))
    {
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      sub_100003870(&qword_100055270, " Y");
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_10003EB50;
      *(v32 + 32) = v29;
      *(v32 + 40) = v31;

      v33 = v112;
    }

    else
    {
      v34 = [objc_opt_self() sharedInstance];
      v35 = [v34 allKeyboardDevices];

      v33 = v112;
      if (v35)
      {
        sub_100009748(0, &qword_1000553E0, BKSHIDKeyboardDevice_ptr);
        v36 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v36 >> 62)
        {
          _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }
      }
    }

    static Logger.daemon.getter();

    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.info.getter();

    v72 = os_log_type_enabled(v70, v71);
    v106 = a3;
    if (v72)
    {
      v73 = a2;
      v74 = swift_slowAlloc();
      *&aBlock = swift_slowAlloc();
      *v74 = 136381187;
      *(v74 + 4) = sub_100034C38(v109, v73, &aBlock);
      *(v74 + 12) = 1024;
      *(v74 + 14) = a3 & 1;
      *(v74 + 18) = 2080;
      v75 = Array.description.getter();
      v76 = v7;
      v78 = v77;

      v79 = sub_100034C38(v75, v78, &aBlock);

      *(v74 + 20) = v79;
      _os_log_impl(&_mh_execute_header, v70, v71, "showAngelBanner(for: %{private}s, enabled:%{BOOL}d, actionSymbols:%s", v74, 0x1Cu);
      swift_arrayDestroy();

      v80 = *(v76 + 8);
    }

    else
    {

      v80 = *(v7 + 8);
    }

    v80(v33, v6);
    v81 = *&v114[v113];
    if (v81)
    {
      sub_100003870(&qword_100054B30, &unk_10003EBF0);
      v82 = swift_allocObject();
      *(v82 + 16) = xmmword_10003EB40;
      v83 = v81;
      v84 = String._bridgeToObjectiveC()();
      v85 = String._bridgeToObjectiveC()();
      v86 = [objc_opt_self() attributeWithDomain:v84 name:v85];

      *(v82 + 32) = v86;
      sub_100009748(0, &qword_1000553C8, RBSAttribute_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v88 = [v83 remoteTargetWithLaunchingAssertionAttributes:isa];

      if (v88)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v115 = 0u;
        v116 = 0u;
      }

      aBlock = v115;
      v118 = v116;
      if (*(&v116 + 1))
      {
        sub_100003870(&qword_1000553D8, &qword_10003F148);
        if (swift_dynamicCast())
        {
          v89 = v115;
          v90 = String._bridgeToObjectiveC()();
          v91 = Array._bridgeToObjectiveC()().super.isa;

          sub_100001DAC(v89, v90, v106 & 1, v91);
          swift_unknownObjectRelease();

          return sub_10003B078(v108);
        }

LABEL_32:
        v92 = v111;
        static Logger.daemon.getter();
        v93 = Logger.logObject.getter();
        v94 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v93, v94))
        {
          v95 = swift_slowAlloc();
          *v95 = 0;
          _os_log_impl(&_mh_execute_header, v93, v94, "com.apple.GamePolicyAngel.notification.service Game Mode No Conn", v95, 2u);
        }

        v80(v92, v6);
        return sub_10003B078(v108);
      }
    }

    else
    {

      aBlock = 0u;
      v118 = 0u;
    }

    sub_1000096E8(&aBlock, &qword_1000553D0, &unk_10003E3F0);
    goto LABEL_32;
  }

  v38 = OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_interface;
  v39 = *&v3[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_interface];
  if (!v39)
  {
    v40 = String._bridgeToObjectiveC()();
    v108 = v6;
    v41 = v40;
    v42 = [objc_opt_self() interfaceWithIdentifier:v40];
    v110 = "com.apple.GameOverlayUI";
    v43 = v42;

    v44 = objc_opt_self();
    v45 = [v44 protocolForProtocol:&OBJC_PROTOCOL___GamePolicyAngelNotificationService];
    [v43 setServer:v45];

    v6 = v108;
    v46 = [v44 protocolForProtocol:&OBJC_PROTOCOL____TtP11gamepolicyd42GamePolicyAngelNotificationServiceCallback_];
    [v43 setClient:v46];

    [v43 setClientMessagingExpectation:1];
    [v43 copy];
    _bridgeAnyObjectToAny(_:)();
    v47 = v114;
    swift_unknownObjectRelease();

    sub_100009748(0, &qword_100055360, BSServiceInterface_ptr);
    v48 = swift_dynamicCast();
    v49 = v115;
    if (!v48)
    {
      v49 = 0;
    }

    v50 = *&v47[v38];
    *&v47[v38] = v49;

    v39 = *&v47[v38];
    if (!v39)
    {
      static Logger.daemon.getter();
      v99 = Logger.logObject.getter();
      v100 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        *v101 = 0;
        _os_log_impl(&_mh_execute_header, v99, v100, "com.apple.GamePolicyAngel.notification.service No interface", v101, 2u);
      }

      return (*(v7 + 8))(v15, v6);
    }
  }

  v51 = v39;
  v52 = String._bridgeToObjectiveC()();
  v53 = String._bridgeToObjectiveC()();
  v54 = [objc_opt_self() endpointForMachName:v52 service:v53 instance:0];

  if (!v54)
  {
    static Logger.daemon.getter();
    v96 = Logger.logObject.getter();
    v97 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      *v98 = 0;
      _os_log_impl(&_mh_execute_header, v96, v97, "com.apple.GamePolicyAngel.notification.service No endpoint", v98, 2u);
    }

    else
    {
    }

    return (*(v7 + 8))(v18, v6);
  }

  v55 = [objc_opt_self() connectionWithEndpoint:v54];
  if (!v55)
  {
LABEL_44:
    static Logger.daemon.getter();
    v102 = Logger.logObject.getter();
    v103 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      *v104 = 0;
      _os_log_impl(&_mh_execute_header, v102, v103, "com.apple.GamePolicyAngel.notification.service No connection", v104, 2u);
    }

    else
    {
    }

    return (*(v7 + 8))(v20, v6);
  }

  v56 = v55;
  v121 = &OBJC_PROTOCOL___BSServiceConnectionClient;
  v57 = swift_dynamicCastObjCProtocolConditional();
  if (!v57)
  {

    goto LABEL_44;
  }

  v58 = v57;
  v108 = v6;
  v59 = swift_allocObject();
  *(v59 + 16) = v51;
  v60 = v51;
  v61 = v114;
  *(v59 + 24) = v114;
  v62 = swift_allocObject();
  *(v62 + 16) = sub_10003B070;
  *(v62 + 24) = v59;
  v110 = v59;
  v119 = sub_10003B1C8;
  v120 = v62;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v118 = sub_10003B1C4;
  *(&v118 + 1) = &unk_10004E840;
  v63 = _Block_copy(&aBlock);
  v64 = v60;
  v65 = v56;
  v66 = v61;

  [v58 configureConnection:v63];

  _Block_release(v63);
  LOBYTE(v63) = swift_isEscapingClosureAtFileLocation();

  if ((v63 & 1) == 0)
  {
    v68 = v65;
    [v58 activate];

    v69 = *&v61[v113];
    *&v61[v113] = v58;

    v21 = sub_10003B070;
    a2 = v107;
    v6 = v108;
    v22 = v110;
    goto LABEL_2;
  }

  __break(1u);
  return result;
}

uint64_t sub_10003B030()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003B078(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10003B0A0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000085E0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10003B1CC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 56);

  return v0;
}

uint64_t sub_10003B21C()
{
  sub_10003B1CC();

  return _swift_deallocClassInstance(v0, 73, 7);
}

uint64_t sub_10003B274()
{
  v1 = *(v0 + 16);

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_10003B2D0()
{
  _s11PersonalityCMa();
  sub_100003870(&qword_1000556A0, &qword_10003F208);
  v0._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 62;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  return 60;
}

uint64_t getEnumTagSinglePayload for Feature(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Feature(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10003B4A4()
{
  result = qword_1000556A8;
  if (!qword_1000556A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000556A8);
  }

  return result;
}

const char *sub_10003B4F8()
{
  v1 = *v0;
  v2 = "GamePolicy";
  if (v1 == 3)
  {
    v2 = "SwiftUI";
  }

  if (v1 == 2)
  {
    return "gseui";
  }

  else
  {
    return v2;
  }
}

const char *sub_10003B540()
{
  v1 = "gameModeNotifications";
  v2 = "de7bbd8e";
  if (*v0 != 2)
  {
    v2 = "Solarium";
  }

  if (*v0)
  {
    v1 = "universalGamePolicySupport";
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

void sub_10003B5B4()
{
  v0 = getGPLogger();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "Soft-linking GameCenterFoundation.", v1, 2u);
  }
}

void sub_10003B61C()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getGKGameModeBannerConfigClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"GPUtility.m" lineNumber:28 description:{@"Unable to find class %s", "GKGameModeBannerConfig"}];

  __break(1u);
}

void sub_10003B698(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *GameCenterFoundationLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"GPUtility.m" lineNumber:27 description:{@"%s", *a1}];

  __break(1u);
  Notification._bridgeToObjectiveC()();
}