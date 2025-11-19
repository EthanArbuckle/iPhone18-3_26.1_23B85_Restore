uint64_t sub_10018E3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = a7;
  *(v7 + 34) = a5;
  *(v7 + 40) = a4;
  v8 = type metadata accessor for TrajectoryCommand();
  *(v7 + 64) = v8;
  v9 = *(v8 - 8);
  *(v7 + 72) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 80) = swift_task_alloc();
  v11 = type metadata accessor for ContinuousClock();
  *(v7 + 88) = v11;
  v12 = *(v11 - 8);
  *(v7 + 96) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 104) = swift_task_alloc();
  v14 = type metadata accessor for ContinuousClock.Instant();
  *(v7 + 112) = v14;
  v15 = *(v14 - 8);
  *(v7 + 120) = v15;
  v16 = *(v15 + 64) + 15;
  *(v7 + 128) = swift_task_alloc();
  *(v7 + 136) = swift_task_alloc();

  return (_swift_task_switch)(sub_10018E574, 0, 0);
}

uint64_t sub_10018E574()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = *(v0 + 112);
  v4 = *(v0 + 120);
  v5 = *(v0 + 104);
  static ContinuousClock.Instant.now.getter();
  static Duration.seconds(_:)();
  ContinuousClock.Instant.advanced(by:)();
  v6 = *(v4 + 8);
  *(v0 + 144) = v6;
  *(v0 + 152) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v3);
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  static Clock<>.continuous.getter();
  v7 = async function pointer to static Task<>.sleep<A>(until:tolerance:clock:)[1];
  v8 = swift_task_alloc();
  *(v0 + 160) = v8;
  v9 = sub_1001A2FAC(&qword_1002AB488, &type metadata accessor for ContinuousClock);
  *v8 = v0;
  v8[1] = sub_10018E6C8;
  v10 = *(v0 + 136);
  v11 = *(v0 + 104);
  v12 = *(v0 + 88);

  return static Task<>.sleep<A>(until:tolerance:clock:)(v10, v0 + 16, v11, v12, v9);
}

uint64_t sub_10018E6C8()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v17 = *v1;

  if (v0)
  {
    v5 = v2[18];
    v4 = v2[19];
    v6 = v2[17];
    v8 = v2[13];
    v7 = v2[14];
    v11 = v2 + 11;
    v9 = v2[11];
    v10 = v11[1];

    (*(v10 + 8))(v8, v9);
    v5(v6, v7);
  }

  else
  {
    v13 = v2[18];
    v12 = v2[19];
    v14 = v2[17];
    v15 = v2[14];
    (*(v2[12] + 8))(v2[13], v2[11]);
    v13(v14, v15);
  }

  return (_swift_task_switch)(sub_10018E858, 0, 0);
}

uint64_t sub_10018E858()
{
  if (static Task<>.isCancelled.getter())
  {
LABEL_6:
    v9 = *(v0 + 128);
    v8 = *(v0 + 136);
    v10 = *(v0 + 104);
    v11 = *(v0 + 80);

    v12 = *(v0 + 8);

    return v12();
  }

  if (*(v0 + 34) == 1)
  {
    v1 = *(v0 + 48);
    Actuator.homePosition.getter();
  }

  v2 = *(v0 + 80);
  v3 = *(v0 + 48);
  dispatch thunk of Component.id.getter();
  sub_10018EC24(v2);
  v4 = TrajectoryCommand.encode()();
  *(v0 + 168) = v5;
  if (v5 >> 60 == 15)
  {
    v6 = *(v0 + 40);
    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
    v7 = *(v6 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_tiltToBaseTask);
    *(v6 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_tiltToBaseTask) = 0;

    goto LABEL_6;
  }

  v14 = v5;
  v15 = *(v0 + 56);
  *(v0 + 176) = v4;
  v16 = v4;
  v17 = swift_task_alloc();
  *(v0 + 184) = v17;
  v17[2] = v15;
  v17[3] = v16;
  v17[4] = v14;
  v18 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v19 = swift_task_alloc();
  *(v0 + 192) = v19;
  *v19 = v0;
  v19[1] = sub_10018EA4C;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 33, 0, 0, 0xD000000000000012, 0x8000000100231FD0, sub_100137B90, v17, &type metadata for Bool);
}

uint64_t sub_10018EA4C()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);
  v4 = *v0;

  return (_swift_task_switch)(sub_10018EB64, 0, 0);
}

uint64_t sub_10018EB64()
{
  sub_1000A452C(v0[22], v0[21]);
  v1 = v0[5];
  (*(v0[9] + 8))(v0[10], v0[8]);
  v2 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_tiltToBaseTask);
  *(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_tiltToBaseTask) = 0;

  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[13];
  v6 = v0[10];

  v7 = v0[1];

  return v7();
}

uint64_t sub_10018EC24@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = sub_100095274(&qword_1002AB470, &qword_10023F058);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v35 = &v29 - v3;
  v33 = type metadata accessor for TrajectoryCommand.Animation();
  v4 = *(v33 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v33);
  v31 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TrajectoryCommand.TrajectoryPoint();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for TrajectoryCommand.Trajectory();
  v32 = *(v34 - 8);
  v12 = v32;
  v13 = *(v32 + 64);
  __chkstk_darwin(v34);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  TrajectoryCommand.Trajectory.init()();
  TrajectoryCommand.Trajectory.actuatorId.setter();
  TrajectoryCommand.Trajectory.duration.setter();
  TrajectoryCommand.Trajectory.positionCommand.setter();
  TrajectoryCommand.Trajectory.velocityCommand.setter();
  TrajectoryCommand.Trajectory.relative.setter();
  TrajectoryCommand.TrajectoryPoint.init()();
  TrajectoryCommand.TrajectoryPoint.position.setter();
  TrajectoryCommand.TrajectoryPoint.velocity.setter();
  TrajectoryCommand.TrajectoryPoint.time.setter();
  sub_100095274(&qword_1002AB478, &qword_10023F060);
  v16 = *(v8 + 72);
  v30 = v8;
  v17 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v18 = swift_allocObject();
  v29 = xmmword_10023C170;
  *(v18 + 16) = xmmword_10023C170;
  (*(v8 + 16))(v18 + v17, v11, v7);
  TrajectoryCommand.Trajectory.points.setter();
  (*(v4 + 104))(v31, enum case for TrajectoryCommand.Animation.Custom(_:), v33);
  v19 = enum case for TrajectoryCommand.Priority.Low(_:);
  v20 = type metadata accessor for TrajectoryCommand.Priority();
  v21 = *(v20 - 8);
  v22 = v35;
  (*(v21 + 104))(v35, v19, v20);
  (*(v21 + 56))(v22, 0, 1, v20);
  sub_100095274(&qword_1002AB480, &qword_10023F068);
  v23 = *(v32 + 72);
  v24 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v29;
  v26 = v25 + v24;
  v27 = v34;
  (*(v12 + 16))(v26, v15, v34);
  TrajectoryCommand.init(type:priority:trajectories:)();
  (*(v30 + 8))(v11, v7);
  return (*(v12 + 8))(v15, v27);
}

id sub_10018F07C(void *a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v59 = &v53 - v13;
  v14 = __chkstk_darwin(v12);
  v60 = &v53 - v15;
  __chkstk_darwin(v14);
  v17 = &v53 - v16;
  v18 = dispatch thunk of DockCoreAccessory.info.getter();
  v19 = sub_1001884E4();

  if (v19)
  {
    if ((a2 & 1) == 0)
    {
      return v19;
    }
  }

  v20 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v21 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v21 + 4);

  if ((a2 & 1) == 0)
  {
    goto LABEL_20;
  }

  v53 = v17;
  v54 = v7;
  v22 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_accessories;
  swift_beginAccess();
  v23 = *(v3 + v22);
  v55 = v6;
  v56 = v3;
  v57 = v11;
  v58 = v20;
  if (v23 >> 62)
  {
LABEL_31:
    v24 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v24)
  {
LABEL_17:

    v7 = v54;
    v6 = v55;
    v3 = v56;
    v32 = v60;
    (*(v54 + 16))(v60, v56 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v55);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Not found any paired accessory with the same info. Saving paired accessory", v35, 2u);
    }

    (*(v7 + 8))(v32, v6);
    v20 = v58;
LABEL_20:
    sub_10018F7CC(a1);
    v36 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_accessories;
    swift_beginAccess();
    v19 = a1;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v3 + v36) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v36) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v52 = *((*(v3 + v36) & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    v37 = v59;
    (*(v7 + 16))(v59, v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v6);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "Saved paired accessory", v40, 2u);
    }

    (*(v7 + 8))(v37, v6);
    v41 = *(v3 + v20);

    os_unfair_lock_unlock(v41 + 4);

    v42 = v19;
    return v19;
  }

  v25 = 0;
  v61 = v23 & 0xFFFFFFFFFFFFFF8;
  v62 = v23 & 0xC000000000000001;
  while (1)
  {
    if (v62)
    {
      v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v25 >= *(v61 + 16))
      {
        goto LABEL_30;
      }

      v26 = *(v23 + 8 * v25 + 32);
    }

    v19 = v26;
    v27 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    sub_100095B94(0, &qword_1002A7270, NSObject_ptr);
    v28 = dispatch thunk of DockCoreAccessory.info.getter();
    v29 = a1;
    v30 = dispatch thunk of DockCoreAccessory.info.getter();
    v31 = static NSObject.== infix(_:_:)();

    if (v31)
    {
      break;
    }

    ++v25;
    a1 = v29;
    if (v27 == v24)
    {
      goto LABEL_17;
    }
  }

  v43 = v53;
  v44 = v54;
  v45 = v55;
  v46 = v56;
  (*(v54 + 16))(v53, v56 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v55);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&_mh_execute_header, v47, v48, "Found already paired accessory with the same info. Updating the accessory", v49, 2u);
    v43 = v53;
  }

  (*(v44 + 8))(v43, v45);
  dispatch thunk of DockCoreAccessory.updateFrom(accessory:)();
  v50 = *(v46 + v58);

  os_unfair_lock_unlock(v50 + 4);

  return v19;
}

uint64_t sub_10018F7CC(void *a1)
{
  v77 = a1;
  v1 = type metadata accessor for Logger();
  v75 = *(v1 - 8);
  v76 = v1;
  v2 = *(v75 + 64);
  v3 = __chkstk_darwin(v1);
  v5 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v73 = &v67 - v6;
  v7 = type metadata accessor for URL.DirectoryHint();
  v70 = *(v7 - 8);
  v71 = v7;
  v8 = *(v70 + 64);
  __chkstk_darwin(v7);
  v10 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100095274(&qword_1002A6B70, &unk_10023C9C0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v67 - v18;
  v20 = type metadata accessor for URL();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v20);
  v72 = &v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v74 = &v67 - v25;
  if (qword_1002A6710 != -1)
  {
    swift_once();
  }

  sub_100152034(v19);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_100095C84(v19, &qword_1002A6B70, &unk_10023C9C0);
    v27 = v75;
    v26 = v76;
    (*(v75 + 16))(v5, v79 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v76);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Unable to save paired accessory: Unable to get library path", v30, 2u);
    }

    return (*(v27 + 8))(v5, v26);
  }

  else
  {
    v68 = v21;
    v69 = v20;
    (*(v21 + 32))(v74, v19, v20);
    v32 = dispatch thunk of DockCoreAccessory.info.getter();
    DockCoreInfo.identifier.getter();

    v33 = UUID.uuidString.getter();
    v35 = v34;
    (*(v12 + 8))(v15, v11);
    v80[0] = v33;
    v80[1] = v35;
    v37 = v70;
    v36 = v71;
    (*(v70 + 104))(v10, enum case for URL.DirectoryHint.notDirectory(_:), v71);
    sub_1000E3C10();
    URL.append<A>(component:directoryHint:)();
    (*(v37 + 8))(v10, v36);

    v38 = v75;
    v39 = v76;
    v40 = v73;
    (*(v75 + 16))(v73, v79 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v76);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v80[0] = v44;
      *v43 = 136315138;
      swift_beginAccess();
      v45 = URL.path(percentEncoded:)(1);
      v46 = sub_1000952D4(v45._countAndFlagsBits, v45._object, v80);

      *(v43 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v41, v42, "Attempting to save paired accessory to disk at %s", v43, 0xCu);
      sub_100095808(v44);

      (*(v38 + 8))(v73, v39);
    }

    else
    {

      (*(v38 + 8))(v40, v39);
    }

    v48 = v77;
    v47 = v78;
    v49 = v72;
    dispatch thunk of DockCoreAccessory.prepForPersistence()();
    v50 = objc_opt_self();
    v80[0] = 0;
    v51 = [v50 archivedDataWithRootObject:v48 requiringSecureCoding:1 error:v80];
    v52 = v80[0];
    if (v51)
    {
      v53 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v55 = v54;

      v56 = v74;
      swift_beginAccess();
      v58 = v68;
      v57 = v69;
      (*(v68 + 16))(v49, v56, v69);
      Data.write(to:options:)();
      if (v47)
      {
        v59 = *(v58 + 8);
        v59(v49, v57);
        sub_1000A0D2C(v53, v55);
        return (v59)(v56, v57);
      }

      else
      {
        v61 = *(v58 + 8);
        v61(v49, v57);
        v62 = *(v79 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_idsServer);
        if (v62)
        {
          v63 = v57;
          v64 = v62;
          sub_1001B93D0(v48);
          sub_1000A0D2C(v53, v55);

          v65 = v56;
          v66 = v63;
        }

        else
        {
          sub_1000A0D2C(v53, v55);
          v65 = v56;
          v66 = v57;
        }

        return (v61)(v65, v66);
      }
    }

    else
    {
      v60 = v52;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      return (*(v68 + 8))(v74, v69);
    }
  }
}

uint64_t sub_10018FFB8(int a1, void *a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v54 - v16;
  v56 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v18 = *(v5 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v18 + 4);

  v55 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__processesAuthorizedForCamera;
  v19 = *(v5 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__processesAuthorizedForCamera);
  v20 = *(v19 + 16);
  v21 = (v19 + 32);
  if (a4)
  {
    while (v20)
    {
      v22 = *v21++;
      --v20;
      if (v22 == a1)
      {
        goto LABEL_28;
      }
    }

    (*(v11 + 16))(v17, v5 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v10);

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v58 = a3;
      v59 = v54;
      *v42 = 67109378;
      *(v42 + 4) = a1;
      *(v42 + 8) = 2080;
      v57 = a2;

      sub_100095274(&unk_1002A6F20, &unk_10023C660);
      v43 = String.init<A>(describing:)();
      v45 = sub_1000952D4(v43, v44, &v59);

      *(v42 + 10) = v45;
      _os_log_impl(&_mh_execute_header, v40, v41, "caching %d [%s] authorized for camera permission", v42, 0x12u);
      sub_100095808(v54);
    }

    (*(v11 + 8))(v17, v10);
    v46 = v55;
    v47 = *(v5 + v55);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + v46) = v47;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v47 = sub_100102DE4(0, *(v47 + 2) + 1, 1, v47);
      *(v5 + v46) = v47;
    }

    v50 = *(v47 + 2);
    v49 = *(v47 + 3);
    if (v50 >= v49 >> 1)
    {
      v47 = sub_100102DE4((v49 > 1), v50 + 1, 1, v47);
    }

    *(v47 + 2) = v50 + 1;
    *&v47[4 * v50 + 32] = a1;
    *(v5 + v46) = v47;
  }

  else
  {
    while (v20)
    {
      v23 = *v21++;
      --v20;
      if (v23 == a1)
      {
        (*(v11 + 16))(v15, v5 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v10);

        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v58 = a3;
          v59 = v54;
          *v26 = 67109378;
          *(v26 + 4) = a1;
          *(v26 + 8) = 2080;
          v57 = a2;

          sub_100095274(&unk_1002A6F20, &unk_10023C660);
          v27 = String.init<A>(describing:)();
          v29 = sub_1000952D4(v27, v28, &v59);

          *(v26 + 10) = v29;
          _os_log_impl(&_mh_execute_header, v24, v25, "Clearing TCC cached authorization value for %d [%s]", v26, 0x12u);
          sub_100095808(v54);
        }

        (*(v11 + 8))(v15, v10);
        v30 = v55;
        v31 = *(v5 + v55);
        v32 = *(v31 + 16);
        if (v32)
        {
          v33 = *(v5 + v55);

          v34 = _swiftEmptyArrayStorage;
          v35 = 32;
          do
          {
            v38 = *(v31 + v35);
            if (v38 != a1)
            {
              v39 = swift_isUniquelyReferenced_nonNull_native();
              v57 = v34;
              if ((v39 & 1) == 0)
              {
                sub_1001D7188(0, v34[2] + 1, 1);
                v34 = v57;
              }

              v37 = v34[2];
              v36 = v34[3];
              if (v37 >= v36 >> 1)
              {
                sub_1001D7188((v36 > 1), v37 + 1, 1);
                v34 = v57;
              }

              v34[2] = v37 + 1;
              *(v34 + v37 + 8) = v38;
            }

            v35 += 4;
            --v32;
          }

          while (v32);

          v51 = *(v5 + v30);
        }

        else
        {
          v34 = _swiftEmptyArrayStorage;
        }

        *(v5 + v30) = v34;

        break;
      }
    }
  }

LABEL_28:
  v52 = *(v5 + v56);

  os_unfair_lock_unlock(v52 + 4);
}

uint64_t sub_10019051C()
{
  v1 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyPairingClients;
  swift_beginAccess();
  v2 = *(*(v0 + v1) + 16);
  v3 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyActuationClients;
  result = swift_beginAccess();
  v5 = *(*(v0 + v3) + 16);
  v6 = __OFADD__(v2, v5);
  v7 = v2 + v5;
  if (v6)
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifySensorClients;
  result = swift_beginAccess();
  v9 = *(*(v0 + v8) + 16);
  v6 = __OFADD__(v7, v9);
  v10 = v7 + v9;
  if (v6)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v11 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyTrajectoryClients;
  result = swift_beginAccess();
  v12 = *(*(v0 + v11) + 16);
  v6 = __OFADD__(v10, v12);
  v13 = v10 + v12;
  if (v6)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v14 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyEventClients;
  result = swift_beginAccess();
  v15 = *(*(v0 + v14) + 16);
  v6 = __OFADD__(v13, v15);
  v16 = v13 + v15;
  if (v6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v17 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyBatteryClients;
  result = swift_beginAccess();
  v18 = *(*(v0 + v17) + 16);
  v6 = __OFADD__(v16, v18);
  v19 = v16 + v18;
  if (v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v20 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyTrackingSummaryClients;
  swift_beginAccess();
  v21 = *(*(v0 + v20) + 16);
  result = v19 + v21;
  if (__OFADD__(v19, v21))
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t sub_10019068C(int a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v12 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v12 + 4);

  swift_beginAccess();
  v13 = a2;
  sub_1001DAB74(a2, a1);
  swift_endAccess();
  v14 = sub_10019051C();
  v15 = *(v3 + v11);

  os_unfair_lock_unlock(v15 + 4);

  if (v14 == 1)
  {
    (*(v7 + 16))(v10, v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v6);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "added first event client, taking transaction", v18, 2u);
    }

    (*(v7 + 8))(v10, v6);
    sub_10019A4F0(1);
  }

  return 1;
}

uint64_t sub_100190898(int a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v14 = *(v4 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v14 + 4);

  v15 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyBatteryClients;
  swift_beginAccess();
  v16 = a2;
  v17 = a3;
  v18 = *(v4 + v15);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = *(v4 + v15);
  *(v4 + v15) = 0x8000000000000000;
  sub_1001ECC94(a2, v17, a1, isUniquelyReferenced_nonNull_native);
  *(v4 + v15) = v31;
  swift_endAccess();
  v20 = sub_10019051C();
  v21 = *(v4 + v13);

  os_unfair_lock_unlock(v21 + 4);

  if (v20 == 1)
  {
    (*(v9 + 16))(v12, v4 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v8);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "added first battery client, taking transaction", v24, 2u);
    }

    (*(v9 + 8))(v12, v8);
    sub_10019A4F0(1);
  }

  v25 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__batteryPollTimer;
  if (!*(v4 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__batteryPollTimer))
  {
    v26 = swift_allocObject();
    *(v26 + 16) = v4;
    *(v26 + 24) = v17;
    objc_allocWithZone(type metadata accessor for RepeatingTimer());
    v27 = v17;

    v28 = RepeatingTimer.init(interval:fireOnce:queue:_:)();
    v29 = *(v4 + v25);
    *(v4 + v25) = v28;
  }

  return 1;
}

uint64_t sub_100190B64(uint64_t a1, void *a2)
{
  v4 = sub_100095274(&unk_1002A73C0, &unk_10023BE80);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;

  v10 = a2;
  sub_1001B6410(0, 0, v7, &unk_10023F040, v9);
}

uint64_t sub_100190C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[17] = a4;
  v5[18] = a5;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v5[19] = v7;
  v8 = *(v7 - 8);
  v5[20] = v8;
  v9 = *(v8 + 64) + 15;
  v5[21] = swift_task_alloc();
  v10 = type metadata accessor for DispatchQoS();
  v5[22] = v10;
  v11 = *(v10 - 8);
  v5[23] = v11;
  v12 = *(v11 + 64) + 15;
  v5[24] = swift_task_alloc();
  v13 = type metadata accessor for Logger();
  v5[25] = v13;
  v14 = *(v13 - 8);
  v5[26] = v14;
  v15 = *(v14 + 64) + 15;
  v5[27] = swift_task_alloc();
  v16 = swift_task_alloc();
  v5[28] = v16;
  *v16 = v5;
  v16[1] = sub_100190E28;

  return sub_10019951C(a5);
}

uint64_t sub_100190E28(uint64_t a1)
{
  v2 = *(*v1 + 224);
  v4 = *v1;
  *(*v1 + 232) = a1;

  return (_swift_task_switch)(sub_100190F28, 0, 0);
}

void sub_100190F28()
{
  v1 = v0[29];
  if (!v1)
  {
    (*(v0[26] + 16))(v0[27], v0[17] + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v0[25]);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    v40 = os_log_type_enabled(v38, v39);
    v42 = v0[26];
    v41 = v0[27];
    v43 = v0[25];
    if (v40)
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "Error reading battery data", v44, 2u);
    }

    (*(v42 + 8))(v41, v43);
LABEL_35:
    v45 = v0[27];
    v46 = v0[24];
    v47 = v0[21];

    v48 = v0[1];

    v48();
    return;
  }

  v2 = v0[23];
  v3 = v0[20];
  v4 = v0[17];
  sub_1001F1EF0(_swiftEmptyArrayStorage);

  v5 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__clientLock;
  v6 = *(v4 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__clientLock);

  os_unfair_lock_lock(v6 + 4);

  v7 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyBatteryClients;
  swift_beginAccess();
  v8 = *(v4 + v7);
  v9 = *(v4 + v5);

  os_unfair_lock_unlock(v9 + 4);

  v10 = 0;
  v11 = v8 + 64;
  v12 = -1;
  v13 = -1 << *(v8 + 32);
  if (-v13 < 64)
  {
    v12 = ~(-1 << -v13);
  }

  v14 = v12 & *(v8 + 64);
  v15 = (63 - v13) >> 6;
  v57 = (v3 + 8);
  v56 = (v2 + 8);
  v60 = v8;
  while (v14)
  {
LABEL_11:
    v17 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v18 = *(v8 + 56) + ((v10 << 10) | (16 * v17));
    if (*v18)
    {
      v19 = *(v18 + 8);
      v20 = *v18;
      v21 = v19;
      v22 = [v20 remoteObjectProxy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_100095274(&qword_1002A91F8, &qword_10023F050);
      if (swift_dynamicCast())
      {
        v61 = v20;
        v23 = v0[18];
        v24 = v0[15];
        sub_100095B94(0, &qword_1002A7270, NSObject_ptr);
        v25 = v21;
        v26 = static NSObject.== infix(_:_:)();

        if (v26)
        {
          v58 = v25;
          if (qword_1002A6780 != -1)
          {
            swift_once();
          }

          v27 = qword_1002B1CF0;
          v59 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__txnLock;
          v28 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__txnLock);

          os_unfair_lock_lock(v28 + 4);

          v29 = *(v27 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_txn);
          if (v29)
          {
            v30 = *(v29 + 24);
            if (v30)
            {
              v51 = *(v27 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_txn);
              v52 = v0[22];
              v53 = v0[21];
              v54 = v0[19];
              v55 = v0[24];
              v0[6] = sub_1000BAAE0;
              v0[7] = v29;
              v0[2] = _NSConcreteStackBlock;
              v0[3] = 1107296256;
              v0[4] = sub_100147FC8;
              v0[5] = &unk_100279BF8;
              v50 = _Block_copy(v0 + 2);
              swift_retain_n();
              v49 = v30;
              static DispatchQoS.unspecified.getter();
              v0[16] = _swiftEmptyArrayStorage;
              sub_1001A2FAC(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags);
              sub_100095274(&unk_1002A6B60, qword_10023AE10);
              sub_100095BDC(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
              dispatch thunk of SetAlgebra.init<A>(_:)();
              OS_dispatch_queue.async(group:qos:flags:execute:)();
              _Block_release(v50);

              (*v57)(v53, v54);
              (*v56)(v55, v52);
              v31 = v0[7];
            }
          }

          v32 = *(v27 + v59);

          os_unfair_lock_unlock(v32 + 4);

          if (v1 >> 62)
          {
            v33 = _CocoaArrayWrapper.endIndex.getter();
            v8 = v60;
            v34 = v61;
            if (!v33)
            {
              goto LABEL_30;
            }

LABEL_21:
            if (v33 < 1)
            {
              goto LABEL_39;
            }

            for (i = 0; i != v33; ++i)
            {
              if ((v1 & 0xC000000000000001) != 0)
              {
                v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v36 = *(v1 + 8 * i + 32);
              }

              v37 = v36;
              [v24 batteryStateDataWithInfo:v0[18] data:v36];
            }

            swift_unknownObjectRelease();

            v8 = v60;
          }

          else
          {
            v33 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v8 = v60;
            v34 = v61;
            if (v33)
            {
              goto LABEL_21;
            }

LABEL_30:
            swift_unknownObjectRelease();
          }
        }

        else
        {

          swift_unknownObjectRelease();
          v8 = v60;
        }
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v16 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v16 >= v15)
    {

      goto LABEL_35;
    }

    v14 = *(v11 + 8 * v16);
    ++v10;
    if (v14)
    {
      v10 = v16;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
}

uint64_t sub_1001915E4(int a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v14 = *(v4 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v14 + 4);

  v15 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyTrackingSummaryClients;
  swift_beginAccess();
  v16 = a2;
  v17 = a3;
  v18 = *(v4 + v15);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *(v4 + v15);
  *(v4 + v15) = 0x8000000000000000;
  sub_1001ECCA8(a2, v17, a1, isUniquelyReferenced_nonNull_native);
  *(v4 + v15) = v26;
  swift_endAccess();
  v20 = sub_10019051C();
  v21 = *(v4 + v13);

  os_unfair_lock_unlock(v21 + 4);

  if (v20 == 1)
  {
    (*(v9 + 16))(v12, v4 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v8);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "added first tracking state client, taking transaction", v24, 2u);
    }

    (*(v9 + 8))(v12, v8);
    sub_10019A4F0(1);
  }

  return 1;
}

uint64_t sub_10019182C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  v7 = v6;
  v66 = a3;
  v67 = a4;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = DockCoreInfo.description.getter();
  v17 = v16;
  if (a6)
  {
    v18 = *(v6 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

    os_unfair_lock_lock(v18 + 4);
  }

  v19 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyActuationClientsRules;
  swift_beginAccess();
  v20 = *(v7 + v19);
  if (!*(v20 + 16))
  {
    goto LABEL_16;
  }

  sub_10016D548(a1);
  if ((v21 & 1) == 0)
  {
    goto LABEL_16;
  }

  v22 = sub_10016D548(a1);
  if ((v23 & 1) == 0)
  {
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (!*(*(*(v20 + 56) + 8 * v22) + 16))
  {
LABEL_16:

    v70 = 0;
    v71 = 0;
    v38 = 0;
    v69 = 0;
    a5 = 0;
LABEL_17:
    swift_beginAccess();
    v39 = sub_1001E4BFC(a1);
    swift_endAccess();

    swift_beginAccess();
    sub_1001E5254(a1);
    swift_endAccess();

    goto LABEL_18;
  }

  sub_10016D4D0(v68, v17);
  if ((v24 & 1) == 0)
  {

    goto LABEL_16;
  }

  v65 = v12;

  v12 = *(v7 + v19);
  if (!*(v12 + 16))
  {
    goto LABEL_44;
  }

  v25 = *(v7 + v19);
  v26 = sub_10016D548(a1);
  if ((v27 & 1) == 0)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v28 = *(*(v12 + 56) + 8 * v26);
  if (!*(v28 + 16))
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v64 = v11;

  v29 = sub_10016D4D0(v68, v17);
  if ((v30 & 1) == 0)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v31 = (*(v28 + 56) + 32 * v29);
  v32 = v31[1];
  v63 = *v31;
  v33 = v31[2];
  v70 = v31[3];
  v71 = v32;

  swift_bridgeObjectRetain_n();

  v34 = sub_1001A1FDC(v33);
  v69 = v33;

  v36 = sub_1001A1FDC(v35);

  if (*(v36 + 16) > v34[2] >> 3)
  {
    v12 = sub_1001A07F0(v36, v34);

    v37 = *(v12 + 16);
    if (v37)
    {
      goto LABEL_14;
    }

LABEL_27:

    a5 = _swiftEmptyArrayStorage;
    goto LABEL_28;
  }

  v74 = v34;
  sub_1001A06C4(v36);

  v12 = v74;
  v37 = v74[2];
  if (!v37)
  {
    goto LABEL_27;
  }

LABEL_14:
  a5 = sub_1001E3AA4(v37, 0);
  v11 = sub_1001F1134(&v74, a5 + 4, v37, v12);
  sub_1000C7084();
  if (v11 != v37)
  {
    __break(1u);
    goto LABEL_16;
  }

LABEL_28:
  v11 = v64;
  v12 = v65;
  if (!a5[2])
  {

    v38 = v63;
    goto LABEL_17;
  }

  v48 = v70;
  if (!v71)
  {
    v48 = 1;
  }

  v62 = v48;
  swift_beginAccess();

  v49 = *(v7 + v19);
  LODWORD(v64) = swift_isUniquelyReferenced_nonNull_native();
  v73 = *(v7 + v19);
  v50 = v73;
  *(v7 + v19) = 0x8000000000000000;
  v61 = sub_10016D548(a1);
  v52 = *(v50 + 16);
  v53 = (v51 & 1) == 0;
  v54 = v52 + v53;
  if (__OFADD__(v52, v53))
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  LOBYTE(v12) = v51;
  if (*(v50 + 24) >= v54)
  {
    if ((v64 & 1) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_37;
  }

  sub_1001E8904(v54, v64);
  v55 = sub_10016D548(a1);
  if ((v12 & 1) != (v56 & 1))
  {
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v57 = v55;
  while ((v12 & 1) == 0)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    sub_1001EF990();
LABEL_37:
    v57 = v61;
  }

  v58 = *(*(v73 + 56) + 8 * v57);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v72 = v58;
  sub_1001ECA80(v66, v67, a5, v62, v68, v17, isUniquelyReferenced_nonNull_native);

  v60 = v73;
  if (v72)
  {
    *(*(v73 + 56) + 8 * v57) = v72;
  }

  else
  {
    sub_1001F7A38(v57, v73);
  }

  v12 = v65;
  v38 = v63;
  *(v7 + v19) = v60;
  swift_endAccess();
LABEL_18:
  v40 = sub_10019051C();
  if (a6)
  {
    v41 = v38;
    v42 = *(v7 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

    os_unfair_lock_unlock(v42 + 4);
    v38 = v41;
  }

  if (!v40)
  {
    v43 = v38;
    (*(v12 + 16))(v15, v7 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v11);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "no more sensor or actuation clients, releasing transaction", v46, 2u);
    }

    (*(v12 + 8))(v15, v11);
    sub_10019AE80();
    v38 = v43;
  }

  sub_1001A28A8(v38, v71);
  return a5;
}

uint64_t sub_100191E3C(int a1)
{
  v3 = v1;
  v5 = DockCoreInfo.description.getter();
  v7 = v6;
  v8 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v9 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v9 + 4);

  v10 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyActuationClientsRules;
  swift_beginAccess();
  if (!*(*(v3 + v10) + 16) || (sub_10016D548(a1), (v11 & 1) == 0))
  {
LABEL_14:

    v25 = *(v3 + v8);

    os_unfair_lock_unlock(v25 + 4);

    return 1;
  }

  swift_beginAccess();
  v12 = *(v3 + v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v3 + v10);
  v28 = v14;
  *(v3 + v10) = 0x8000000000000000;
  v16 = sub_10016D548(a1);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_16;
  }

  v2 = v15;
  if (v14[3] >= v19)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      if (v15)
      {
LABEL_10:
        v27 = *(v14[7] + 8 * v16);
        v22 = sub_1001E517C(v5, v7);
        v24 = v23;
        if (v27)
        {
          *(v28[7] + 8 * v16) = v27;
        }

        else
        {
          sub_1001F7A38(v16, v28);
        }

        *(v3 + v10) = v28;
        swift_endAccess();
        sub_1001A28A8(v22, v24);
        goto LABEL_14;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

LABEL_16:
    sub_1001EF990();
    if (v2)
    {
      goto LABEL_10;
    }

    goto LABEL_17;
  }

  sub_1001E8904(v19, isUniquelyReferenced_nonNull_native);
  v20 = sub_10016D548(a1);
  if ((v2 & 1) == (v21 & 1))
  {
    v16 = v20;
    if ((v2 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_10;
  }

LABEL_18:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100192048(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v9 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v9 + 4);

  v10 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__animators;
  swift_beginAccess();
  v11 = *(v2 + v10);
  v12 = *(v11 + 64);
  v69 = v11 + 64;
  v13 = 1 << *(v11 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v12;
  v74 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger;
  v16 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_accessories;
  v68 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected;

  v73 = v16;
  v17 = v4;
  swift_beginAccess();
  v18 = v15;
  v19 = a1;
  v20 = 0;
  v21 = (v13 + 63) >> 6;
  v72 = (v5 + 16);
  v75 = (v5 + 8);
  *&v22 = 136315394;
  v65 = v22;
  v76 = v4;
  v79 = v8;
  v67 = v2;
  v66 = a1;
  v70 = v21;
  v71 = v11;
  while (1)
  {
    do
    {
      if (!v18)
      {
        do
        {
          v23 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            goto LABEL_52;
          }

          if (v23 >= v21)
          {

            v62 = *(v2 + v64);

            os_unfair_lock_unlock(v62 + 4);

            return;
          }

          v18 = *(v69 + 8 * v23);
          ++v20;
        }

        while (!v18);
        v20 = v23;
      }

      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v25 = v24 | (v20 << 6);
      v26 = *(*(v11 + 56) + 8 * v25);
    }

    while (*(v26 + 16) != v19);
    v78 = v18;
    v27 = (*(v11 + 48) + 16 * v25);
    v28 = *v27;
    v29 = v27[1];
    (*v72)(v8, v2 + v74, v17);
    swift_bridgeObjectRetain_n();
    v77 = v26;

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    v32 = os_log_type_enabled(v30, v31);
    v81 = v28;
    v82 = v29;
    if (v32)
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v83 = v34;
      *v33 = v65;

      v35 = v19;
      v36 = sub_1000952D4(v28, v29, &v83);

      *(v33 + 4) = v36;
      v19 = v35;
      *(v33 + 12) = 1024;
      *(v33 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v30, v31, "Stopping animator for device %s, client %d disconnected", v33, 0x12u);
      sub_100095808(v34);

      v8 = v79;

      (*v75)(v8, v76);
    }

    else
    {

      (*v75)(v8, v17);
    }

    v37 = *(v2 + v73);
    v83 = _swiftEmptyArrayStorage;
    v38 = v37 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v38)
    {
      break;
    }

    v50 = _swiftEmptyArrayStorage;
LABEL_31:

    if ((v50 & 0x8000000000000000) != 0 || (v50 & 0x4000000000000000) != 0)
    {
      v61 = _CocoaArrayWrapper.endIndex.getter();
      v17 = v76;
      if (v61)
      {
LABEL_34:
        if ((v50 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v51 = *(v50 + 16);

          if (!v51)
          {
            goto LABEL_53;
          }
        }

        v52 = *(v2 + v68);
        if (v52)
        {
          v53 = v52;
          v54 = dispatch thunk of DockCoreAccessory.info.getter();
          v55 = DockCoreInfo.description.getter();
          v57 = v56;

          if (v55 == v81 && v57 == v82)
          {

            goto LABEL_41;
          }

          v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v58)
          {
LABEL_41:
            v59 = *(v2 + v68);
            v60 = v59;
            sub_10018A9DC(0, v59);

            v53 = v60;
          }

          v8 = v79;
        }

        sub_1000C53C8(1, 0.0);

        goto LABEL_47;
      }
    }

    else
    {
      v17 = v76;
      if (*(v50 + 16))
      {
        goto LABEL_34;
      }
    }

LABEL_47:
    v21 = v70;
    v11 = v71;
    v18 = v78;
  }

  v39 = 0;
  v80 = v37 & 0xC000000000000001;
  while (1)
  {
    if (v80)
    {
      v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v39 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_51;
      }

      v41 = *(v37 + 8 * v39 + 32);
    }

    v42 = v41;
    v43 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    v44 = v38;
    v45 = dispatch thunk of DockCoreAccessory.info.getter();
    v46 = DockCoreInfo.description.getter();
    v48 = v47;

    if (v46 == v81 && v48 == v82)
    {
    }

    else
    {
      v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v49 & 1) == 0)
      {

        goto LABEL_19;
      }
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v40 = v83[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
LABEL_19:
    ++v39;
    v38 = v44;
    if (v43 == v44)
    {
      v50 = v83;
      v2 = v67;
      v19 = v66;
      v8 = v79;
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
}

void sub_1001926C4()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  v195 = &v191 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v194 = &v191 - v7;
  v8 = __chkstk_darwin(v6);
  *&v197 = &v191 - v9;
  v10 = __chkstk_darwin(v8);
  v198 = &v191 - v11;
  v12 = __chkstk_darwin(v10);
  v199 = &v191 - v13;
  v14 = __chkstk_darwin(v12);
  v200 = &v191 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v191 - v17;
  __chkstk_darwin(v16);
  v20 = &v191 - v19;
  v22 = v21;
  v23 = *(v21 + 16);
  v206 = v21 + 16;
  v207 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger;
  v205 = v23;
  v23(&v191 - v19, v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v2);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  v26 = os_log_type_enabled(v24, v25);
  v203 = v2;
  if (v26)
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "removing all clients", v27, 2u);
    v2 = v203;
  }

  v28 = *(v22 + 8);
  v208 = v22 + 8;
  v204 = v28;
  v28(v20, v2);
  v191 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v29 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v29 + 4);

  v30 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyActuationClients;
  swift_beginAccess();
  v192 = v30;
  v31 = *(v1 + v30);
  v32 = v31 + 64;
  v33 = 1 << *(v31 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(v31 + 64);
  v36 = (v33 + 63) >> 6;
  v196 = v31;

  v37 = 0;
  *&v38 = 138412290;
  v201 = v38;
  v202 = v1;
  v193 = v18;
  while (v35)
  {
LABEL_12:
    v40 = *(v196[7] + ((v37 << 9) | (8 * __clz(__rbit64(v35)))));
    v205(v18, v1 + v207, v2);
    v41 = v40;
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v44 = v201;
      *(v44 + 4) = v41;
      *v45 = v41;
      v46 = v41;
      _os_log_impl(&_mh_execute_header, v42, v43, "forcibly removing act client %@", v44, 0xCu);
      sub_100095C84(v45, &unk_1002A6F60, &unk_10023C4E0);
      v18 = v193;

      v1 = v202;
    }

    v35 &= v35 - 1;

    v2 = v203;
    v204(v18, v203);
    [v41 invalidate];
  }

  while (1)
  {
    v39 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      __break(1u);
      goto LABEL_88;
    }

    if (v39 >= v36)
    {
      break;
    }

    v35 = *(v32 + 8 * v39);
    ++v37;
    if (v35)
    {
      v37 = v39;
      goto LABEL_12;
    }
  }

  v47 = sub_1001F1BBC(&_swiftEmptyArrayStorage);
  v48 = *(v1 + v192);
  *(v1 + v192) = v47;

  v49 = sub_1001F1CC0(&_swiftEmptyArrayStorage);
  v50 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyActuationClientsRules;
  swift_beginAccess();
  v51 = *(v1 + v50);
  *(v1 + v50) = v49;

  v52 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifySensorClients;
  swift_beginAccess();
  v193 = v52;
  v53 = *(v1 + v52);
  v56 = *(v53 + 64);
  v55 = v53 + 64;
  v54 = v56;
  v57 = 1 << *(*(v1 + v52) + 32);
  v58 = -1;
  if (v57 < 64)
  {
    v58 = ~(-1 << v57);
  }

  v59 = v58 & v54;
  v60 = (v57 + 63) >> 6;
  v196 = *(v1 + v52);

  v61 = 0;
  while (v59)
  {
LABEL_23:
    v63 = *(v196[7] + ((v61 << 9) | (8 * __clz(__rbit64(v59)))));
    v205(v200, v1 + v207, v2);
    v64 = v63;
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *v67 = v201;
      *(v67 + 4) = v64;
      *v68 = v64;
      v69 = v64;
      _os_log_impl(&_mh_execute_header, v65, v66, "forcibly removing sens client %@", v67, 0xCu);
      sub_100095C84(v68, &unk_1002A6F60, &unk_10023C4E0);
      v1 = v202;

      v2 = v203;
    }

    v59 &= v59 - 1;

    v204(v200, v2);
    [v64 invalidate];
  }

  while (1)
  {
    v62 = v61 + 1;
    if (__OFADD__(v61, 1))
    {
      break;
    }

    if (v62 >= v60)
    {

      v70 = sub_1001F1BBC(&_swiftEmptyArrayStorage);
      v71 = *&v193[v1];
      *&v193[v1] = v70;

      v72 = sub_1001F1DC8(&_swiftEmptyArrayStorage);
      v73 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifySensorClientsRules;
      swift_beginAccess();
      v74 = *(v1 + v73);
      *(v1 + v73) = v72;

      v75 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyPairingClients;
      swift_beginAccess();
      v196 = v75;
      v76 = *(v75 + v1);
      v79 = *(v76 + 64);
      v78 = v76 + 64;
      v77 = v79;
      v80 = 1 << *(*(v75 + v1) + 32);
      v81 = -1;
      if (v80 < 64)
      {
        v81 = ~(-1 << v80);
      }

      v82 = v81 & v77;
      v83 = (v80 + 63) >> 6;
      v200 = *(v75 + v1);

      v84 = 0;
      while (v82)
      {
LABEL_34:
        v86 = *(*(v200 + 7) + ((v84 << 9) | (8 * __clz(__rbit64(v82)))));
        v205(v199, v1 + v207, v2);
        v87 = v86;
        v88 = Logger.logObject.getter();
        v89 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v88, v89))
        {
          v90 = swift_slowAlloc();
          v91 = swift_slowAlloc();
          *v90 = v201;
          *(v90 + 4) = v87;
          *v91 = v87;
          v92 = v87;
          _os_log_impl(&_mh_execute_header, v88, v89, "forcibly removing pairing client %@", v90, 0xCu);
          sub_100095C84(v91, &unk_1002A6F60, &unk_10023C4E0);
          v1 = v202;

          v2 = v203;
        }

        v82 &= v82 - 1;

        v204(v199, v2);
        [v87 invalidate];
      }

      while (1)
      {
        v85 = v84 + 1;
        if (__OFADD__(v84, 1))
        {
          goto LABEL_89;
        }

        if (v85 >= v83)
        {

          v93 = sub_1001F1BBC(&_swiftEmptyArrayStorage);
          v94 = *(v196 + v1);
          *(v196 + v1) = v93;

          v95 = sub_1001F1DDC(&_swiftEmptyArrayStorage);
          v96 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyPairingClientsRules;
          swift_beginAccess();
          v97 = *(v1 + v96);
          *(v1 + v96) = v95;

          v98 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyTrajectoryClients;
          swift_beginAccess();
          v199 = v98;
          v99 = *&v98[v1];
          v100 = v99 + 64;
          v101 = 1 << v99[32];
          v102 = -1;
          if (v101 < 64)
          {
            v102 = ~(-1 << v101);
          }

          v103 = v102 & *(v99 + 8);
          v104 = (v101 + 63) >> 6;
          v105 = *&v98[v1];

          v106 = 0;
          v200 = v99;
          while (v103)
          {
LABEL_45:
            v108 = *(*(v99 + 7) + ((v106 << 9) | (8 * __clz(__rbit64(v103)))));
            v205(v198, v1 + v207, v2);
            v109 = v108;
            v110 = Logger.logObject.getter();
            v111 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v110, v111))
            {
              v112 = swift_slowAlloc();
              v113 = swift_slowAlloc();
              *v112 = v201;
              *(v112 + 4) = v109;
              *v113 = v109;
              v114 = v109;
              _os_log_impl(&_mh_execute_header, v110, v111, "forcibly removing trajectory client %@", v112, 0xCu);
              sub_100095C84(v113, &unk_1002A6F60, &unk_10023C4E0);
              v99 = v200;

              v2 = v203;
            }

            v103 &= v103 - 1;

            v204(v198, v2);
            [v109 invalidate];

            v1 = v202;
          }

          while (1)
          {
            v107 = v106 + 1;
            if (__OFADD__(v106, 1))
            {
              goto LABEL_90;
            }

            if (v107 >= v104)
            {

              v115 = sub_1001F1BBC(&_swiftEmptyArrayStorage);
              v116 = *&v199[v1];
              *&v199[v1] = v115;

              v117 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyEventClients;
              swift_beginAccess();
              v118 = *&v117[v1];
              v119 = v118 + 64;
              v120 = 1 << *(v118 + 32);
              v121 = -1;
              if (v120 < 64)
              {
                v121 = ~(-1 << v120);
              }

              v122 = v121 & *(v118 + 64);
              v123 = (v120 + 63) >> 6;
              v199 = v117;
              v200 = v118;

              v124 = 0;
              while (v122)
              {
LABEL_56:
                v126 = *(*(v200 + 7) + ((v124 << 9) | (8 * __clz(__rbit64(v122)))));
                v205(v197, v1 + v207, v2);
                v127 = v126;
                v128 = Logger.logObject.getter();
                v129 = static os_log_type_t.default.getter();

                if (os_log_type_enabled(v128, v129))
                {
                  v130 = swift_slowAlloc();
                  v131 = swift_slowAlloc();
                  *v130 = v201;
                  *(v130 + 4) = v127;
                  *v131 = v127;
                  v132 = v127;
                  _os_log_impl(&_mh_execute_header, v128, v129, "forcibly removing event client %@", v130, 0xCu);
                  sub_100095C84(v131, &unk_1002A6F60, &unk_10023C4E0);
                  v1 = v202;

                  v2 = v203;
                }

                v122 &= v122 - 1;

                v204(v197, v2);
                [v127 invalidate];
              }

              while (1)
              {
                v125 = v124 + 1;
                if (__OFADD__(v124, 1))
                {
                  goto LABEL_91;
                }

                if (v125 >= v123)
                {

                  v133 = sub_1001F1BBC(&_swiftEmptyArrayStorage);
                  v134 = *&v199[v1];
                  *&v199[v1] = v133;

                  v135 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyBatteryClients;
                  swift_beginAccess();
                  v193 = v135;
                  v136 = *(v1 + v135);
                  v137 = v136 + 64;
                  v138 = 1 << v136[32];
                  v139 = -1;
                  if (v138 < 64)
                  {
                    v139 = ~(-1 << v138);
                  }

                  v140 = v139 & *(v136 + 8);
                  v141 = (v138 + 63) >> 6;
                  v198 = v136;

                  v142 = 0;
                  *&v143 = 136315138;
                  v197 = v143;
                  v144 = v194;
                  while (v140)
                  {
LABEL_67:
                    v146 = *(v198 + 7) + ((v142 << 10) | (16 * __clz(__rbit64(v140))));
                    v148 = *v146;
                    v147 = *(v146 + 8);
                    v205(v144, v1 + v207, v2);
                    *&v201 = v148;
                    v149 = v148;
                    v200 = v147;
                    v150 = Logger.logObject.getter();
                    v151 = static os_log_type_t.default.getter();

                    v152 = os_log_type_enabled(v150, v151);
                    v199 = v149;
                    if (v152)
                    {
                      v153 = swift_slowAlloc();
                      v196 = swift_slowAlloc();
                      v210 = v196;
                      *v153 = v197;
                      v211 = v201;
                      v154 = v149;
                      sub_100095274(&qword_1002AB468, &unk_10023F028);
                      v155 = String.init<A>(describing:)();
                      v157 = sub_1000952D4(v155, v156, &v210);

                      *(v153 + 4) = v157;
                      v144 = v194;
                      _os_log_impl(&_mh_execute_header, v150, v151, "forcibly removing battery client %s", v153, 0xCu);
                      sub_100095808(v196);

                      v1 = v202;
                    }

                    v2 = v203;
                    v204(v144, v203);
                    if (v201)
                    {
                      v158 = v199;
                      [v199 invalidate];
                    }

                    v140 &= v140 - 1;
                  }

                  while (1)
                  {
                    v145 = v142 + 1;
                    if (__OFADD__(v142, 1))
                    {
                      goto LABEL_92;
                    }

                    if (v145 >= v141)
                    {

                      v159 = sub_1001F1EF0(&_swiftEmptyArrayStorage);
                      v160 = *&v193[v1];
                      *&v193[v1] = v159;

                      v161 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__batteryPollTimer;
                      v162 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__batteryPollTimer);
                      if (v162)
                      {
                        v163 = v162;
                        dispatch thunk of RepeatingTimer.cancel()();

                        v162 = *(v1 + v161);
                      }

                      v164 = v195;
                      *(v1 + v161) = 0;

                      v165 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyTrackingSummaryClients;
                      swift_beginAccess();
                      v194 = v165;
                      v166 = *(v1 + v165);
                      v167 = v166 + 64;
                      v168 = 1 << v166[32];
                      v169 = -1;
                      if (v168 < 64)
                      {
                        v169 = ~(-1 << v168);
                      }

                      v170 = v169 & *(v166 + 8);
                      v171 = (v168 + 63) >> 6;
                      v198 = v166;

                      v172 = 0;
                      while (v170)
                      {
LABEL_82:
                        v174 = *(v198 + 7) + ((v172 << 10) | (16 * __clz(__rbit64(v170))));
                        v176 = *v174;
                        v175 = *(v174 + 8);
                        v205(v164, v1 + v207, v2);
                        *&v201 = v176;
                        v177 = v176;
                        v200 = v175;
                        v178 = Logger.logObject.getter();
                        v179 = v177;
                        v180 = static os_log_type_t.default.getter();

                        v181 = os_log_type_enabled(v178, v180);
                        v199 = v179;
                        if (v181)
                        {
                          v182 = swift_slowAlloc();
                          v196 = swift_slowAlloc();
                          v211 = v196;
                          *v182 = v197;
                          v209 = v201;
                          v183 = v179;
                          sub_100095274(&qword_1002AB468, &unk_10023F028);
                          v184 = String.init<A>(describing:)();
                          v186 = sub_1000952D4(v184, v185, &v211);
                          v1 = v202;

                          *(v182 + 4) = v186;
                          _os_log_impl(&_mh_execute_header, v178, v180, "forcibly removing tracking summary client %s", v182, 0xCu);
                          sub_100095808(v196);

                          v2 = v203;
                        }

                        v164 = v195;
                        v204(v195, v2);
                        if (v201)
                        {
                          v187 = v199;
                          [v199 invalidate];
                        }

                        v170 &= v170 - 1;
                      }

                      while (1)
                      {
                        v173 = v172 + 1;
                        if (__OFADD__(v172, 1))
                        {
                          goto LABEL_93;
                        }

                        if (v173 >= v171)
                        {

                          v188 = sub_1001F1F04(&_swiftEmptyArrayStorage);
                          v189 = *&v194[v1];
                          *&v194[v1] = v188;

                          v190 = *(v1 + v191);

                          os_unfair_lock_unlock(v190 + 4);

                          return;
                        }

                        v170 = *&v167[8 * v173];
                        ++v172;
                        if (v170)
                        {
                          v172 = v173;
                          goto LABEL_82;
                        }
                      }
                    }

                    v140 = *&v137[8 * v145];
                    ++v142;
                    if (v140)
                    {
                      v142 = v145;
                      goto LABEL_67;
                    }
                  }
                }

                v122 = *(v119 + 8 * v125);
                ++v124;
                if (v122)
                {
                  v124 = v125;
                  goto LABEL_56;
                }
              }
            }

            v103 = *&v100[8 * v107];
            ++v106;
            if (v103)
            {
              v106 = v107;
              goto LABEL_45;
            }
          }
        }

        v82 = *(v78 + 8 * v85);
        ++v84;
        if (v82)
        {
          v84 = v85;
          goto LABEL_34;
        }
      }
    }

    v59 = *(v55 + 8 * v62);
    ++v61;
    if (v59)
    {
      v61 = v62;
      goto LABEL_23;
    }
  }

LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
}

void sub_100193938(int a1, void *a2)
{
  v3 = v2;
  v76 = type metadata accessor for Logger();
  v6 = *(v76 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v76);
  v72 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v64 - v10;
  v12 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v13 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v13 + 4);

  v14 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyActuationClients;
  swift_beginAccess();
  v15 = *(v3 + v14);
  if (!*(v15 + 16))
  {
    goto LABEL_9;
  }

  v16 = sub_10016D548(a1);
  if ((v17 & 1) == 0)
  {
    goto LABEL_9;
  }

  if (!a2)
  {
LABEL_10:
    v27 = 0;
    goto LABEL_11;
  }

  v18 = *(*(v15 + 56) + 8 * v16);
  sub_100095B94(0, &qword_1002AB450, NSXPCConnection_ptr);
  v19 = v18;
  v20 = a2;
  v21 = static NSObject.== infix(_:_:)();

  if ((v21 & 1) == 0)
  {

LABEL_9:
    LODWORD(a2) = 0;
    goto LABEL_10;
  }

  swift_beginAccess();
  v22 = sub_1001E4BFC(a1);
  swift_endAccess();

  v23 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyActuationClientsRules;
  swift_beginAccess();
  v24 = *(v3 + v23);
  if (*(v24 + 16) && (v25 = sub_10016D548(a1), (v26 & 1) != 0))
  {
    v27 = *(*(v24 + 56) + 8 * v25);
  }

  else
  {
    v27 = 0;
  }

  swift_beginAccess();
  sub_1001E5254(a1);
  swift_endAccess();

  LODWORD(a2) = 1;
LABEL_11:
  v28 = sub_10019051C();
  v29 = *(v3 + v12);

  os_unfair_lock_unlock(v29 + 4);

  if (a2 && !v28)
  {
    v30 = v76;
    (*(v6 + 16))(v11, v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v76);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "no more sensor or actuation clients, releasing transaction", v33, 2u);
      v30 = v76;
    }

    (*(v6 + 8))(v11, v30);
    sub_10019AE80();
  }

  if (v27)
  {
    v71 = a1;
    v78 = v3;
    v34 = v27 + 64;
    v35 = 1 << *(v27 + 32);
    v36 = -1;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    v37 = v36 & *(v27 + 64);
    v38 = (v35 + 63) >> 6;
    v68 = (v6 + 16);
    v69 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger;
    v67 = (v6 + 8);

    v39 = 0;
    *&v40 = 67109378;
    v66 = v40;
    v73 = v27;
    while (v37)
    {
LABEL_26:
      v42 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
      v43 = v42 | (v39 << 6);
      v44 = (*(v27 + 48) + 16 * v43);
      v45 = *v44;
      v46 = v44[1];
      v47 = *(v27 + 56) + 32 * v43;
      v48 = *(v47 + 8);
      v49 = *(v47 + 16);
      v50 = objc_allocWithZone(type metadata accessor for DockCoreInfo());
      swift_bridgeObjectRetain_n();

      v77 = v45;
      v51 = DockCoreInfo.init(uuidString:)();
      if (v51)
      {
        v52 = v51;
        v53 = sub_1001884E4();
        if (v53)
        {
          v74 = v48;
          v75 = v52;
          if (qword_1002A6780 != -1)
          {
            v63 = v53;
            swift_once();
            v53 = v63;
          }

          v54 = v53;
          v55 = dispatch thunk of DockCoreAccessory.info.getter();

          v56 = sub_100197C80();
          if (v56)
          {
            v70 = v54;
            v57 = v75;
            if (*(v56 + 16) == v71)
            {
              (*v68)(v72, v78 + v69, v76);

              v58 = Logger.logObject.getter();
              v59 = static os_log_type_t.default.getter();

              v65 = v59;
              if (os_log_type_enabled(v58, v59))
              {
                v60 = swift_slowAlloc();
                v64 = swift_slowAlloc();
                v79 = v64;
                *v60 = v66;
                *(v60 + 4) = v71;
                *(v60 + 8) = 2080;

                v61 = sub_1000952D4(v77, v46, &v79);

                *(v60 + 10) = v61;
                _os_log_impl(&_mh_execute_header, v58, v65, "Client %d disconnected while animator active for %s, stopping velocity", v60, 0x12u);
                sub_100095808(v64);

                v62 = v75;

                (*v67)(v72, v76);
              }

              else
              {

                (*v67)(v72, v76);
                v62 = v75;
              }

              sub_10018A5D0(0);

              sub_1000C53C8(1, 0.0);

              v27 = v73;
            }

            else
            {

              v27 = v73;
            }
          }

          else
          {

            v27 = v73;
          }
        }

        else
        {
        }
      }

      else
      {
      }
    }

    while (1)
    {
      v41 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      if (v41 >= v38)
      {

        return;
      }

      v37 = *(v34 + 8 * v41);
      ++v39;
      if (v37)
      {
        v39 = v41;
        goto LABEL_26;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1001940D4(int a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v12 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v12 + 4);

  v13 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyBatteryClients;
  swift_beginAccess();
  v14 = *(v3 + v13);
  if (!*(v14 + 16) || (v15 = sub_10016D548(a1), (v16 & 1) == 0))
  {
LABEL_8:
    LODWORD(a2) = 0;
    goto LABEL_9;
  }

  v17 = *(v14 + 56) + 16 * v15;
  v18 = *v17;
  v19 = *(v17 + 8);
  if (!*v17)
  {
    if (!a2)
    {
      v31 = v19;
      v38 = 0;
      goto LABEL_18;
    }

    goto LABEL_8;
  }

  if (a2)
  {
    v37 = sub_100095B94(0, &qword_1002AB450, NSXPCConnection_ptr);
    v36 = v19;
    v20 = v18;
    v21 = a2;
    v38 = v20;
    LOBYTE(v20) = static NSObject.== infix(_:_:)();

    if ((v20 & 1) == 0)
    {
      LODWORD(a2) = 0;
      v19 = v36;
LABEL_19:

      goto LABEL_9;
    }

LABEL_18:
    swift_beginAccess();
    v32 = sub_1001E5308(a1);
    v34 = v33;
    swift_endAccess();
    sub_1001A2868(v32, v34);
    LODWORD(a2) = 1;
    goto LABEL_19;
  }

LABEL_9:
  v22 = sub_10019051C();
  v23 = *(v3 + v11);

  os_unfair_lock_unlock(v23 + 4);

  if (a2 && !v22)
  {
    (*(v7 + 16))(v10, v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v6);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "no more clients, releasing transaction", v26, 2u);
    }

    (*(v7 + 8))(v10, v6);
    v27 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__batteryPollTimer;
    v28 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__batteryPollTimer);
    if (v28)
    {
      v29 = v28;
      dispatch thunk of RepeatingTimer.cancel()();

      v28 = *(v3 + v27);
    }

    *(v3 + v27) = 0;

    sub_10019AE80();
  }

  return 1;
}

uint64_t sub_1001943E0(int a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v12 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v12 + 4);

  v13 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyTrackingSummaryClients;
  swift_beginAccess();
  v14 = *(v3 + v13);
  if (!*(v14 + 16) || (v15 = sub_10016D548(a1), (v16 & 1) == 0))
  {
LABEL_8:
    LODWORD(a2) = 0;
    goto LABEL_9;
  }

  v17 = *(v14 + 56) + 16 * v15;
  v18 = *v17;
  v19 = *(v17 + 8);
  if (!*v17)
  {
    if (!a2)
    {
      v28 = v19;
      v35 = 0;
      goto LABEL_16;
    }

    goto LABEL_8;
  }

  if (a2)
  {
    v34 = sub_100095B94(0, &qword_1002AB450, NSXPCConnection_ptr);
    v33 = v19;
    v20 = v18;
    v21 = a2;
    v35 = v20;
    LOBYTE(v20) = static NSObject.== infix(_:_:)();

    if ((v20 & 1) == 0)
    {
      LODWORD(a2) = 0;
      v19 = v33;
LABEL_17:

      goto LABEL_9;
    }

LABEL_16:
    swift_beginAccess();
    v29 = sub_1001E531C(a1);
    v31 = v30;
    swift_endAccess();
    sub_1001A2868(v29, v31);
    LODWORD(a2) = 1;
    goto LABEL_17;
  }

LABEL_9:
  v22 = sub_10019051C();
  v23 = *(v3 + v11);

  os_unfair_lock_unlock(v23 + 4);

  if (a2 && !v22)
  {
    (*(v7 + 16))(v10, v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v6);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "no more clients, releasing transaction", v26, 2u);
    }

    (*(v7 + 8))(v10, v6);
    sub_10019AE80();
  }

  return 1;
}

uint64_t sub_1001946C0(uint64_t a1, char **a2)
{
  v4 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v5 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v5 + 4);

  v6 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyActuationClients;
  swift_beginAccess();
  v7 = *(a1 + v6);
  v8 = 1 << *(v7 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v7 + 64);
  v11 = (v8 + 63) >> 6;

  for (i = 0; v10; result = sub_1001DF7DC(*(*(v7 + 48) + ((v14 << 8) | (4 * v15))), a2))
  {
    v14 = i;
LABEL_9:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
  }

  while (1)
  {
    v14 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v14 >= v11)
    {

      v16 = *(a1 + v4);

      os_unfair_lock_unlock(v16 + 4);
    }

    v10 = *(v7 + 64 + 8 * v14);
    ++i;
    if (v10)
    {
      i = v14;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t (*sub_100194808(uint64_t a1, uint64_t a2))()
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v7 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v7 + 4);

  v8 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__subjectSelectionCompletions;
  swift_beginAccess();
  v9 = *(v3 + v8);
  if (!*(v9 + 16))
  {
    goto LABEL_5;
  }

  v10 = sub_10016D4D0(a1, a2);
  if ((v11 & 1) == 0)
  {

LABEL_5:
    v12 = 0;
    goto LABEL_6;
  }

  v15 = *(*(v9 + 56) + 16 * v10);

  *(swift_allocObject() + 16) = v15;
  v12 = sub_1001A34D0;
LABEL_6:
  v13 = *(v3 + v6);

  os_unfair_lock_unlock(v13 + 4);

  return v12;
}

uint64_t (*sub_100194938(uint64_t a1, uint64_t a2))()
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v7 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v7 + 4);

  v8 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__rectOfInterestCompletions;
  swift_beginAccess();
  v9 = *(v3 + v8);
  if (!*(v9 + 16))
  {
    goto LABEL_5;
  }

  v10 = sub_10016D4D0(a1, a2);
  if ((v11 & 1) == 0)
  {

LABEL_5:
    v12 = 0;
    goto LABEL_6;
  }

  v15 = *(*(v9 + 56) + 16 * v10);

  *(swift_allocObject() + 16) = v15;
  v12 = sub_1001A2824;
LABEL_6:
  v13 = *(v3 + v6);

  os_unfair_lock_unlock(v13 + 4);

  return v12;
}

uint64_t sub_100194A68(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v67 = a3;
  v10 = type metadata accessor for Logger();
  v69 = *(v10 - 8);
  v11 = *(v69 + 64);
  __chkstk_darwin(v10);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = DockCoreInfo.description.getter();
  v15 = v14;
  v16 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v17 = *(v5 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v17 + 4);

  v18 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifySensorClientsRules;
  swift_beginAccess();
  v19 = *(v6 + v18);
  if (!*(v19 + 16))
  {
    goto LABEL_12;
  }

  sub_10016D548(a1);
  if ((v20 & 1) == 0)
  {
    goto LABEL_12;
  }

  v21 = sub_10016D548(a1);
  if ((v22 & 1) == 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  if (!*(*(*(v19 + 56) + 8 * v21) + 16))
  {
LABEL_12:

    v38 = 0;
    v70 = 0;
    v71 = 0;
    v72 = 0;
    a5 = 0;
LABEL_13:
    swift_beginAccess();
    v39 = sub_1001E4BFC(a1);
    swift_endAccess();

    swift_beginAccess();
    sub_1001E5168(a1);
    swift_endAccess();

    goto LABEL_14;
  }

  sub_10016D4D0(v68, v15);
  if ((v23 & 1) == 0)
  {

    goto LABEL_12;
  }

  v66 = a4;

  a4 = *(v6 + v18);
  if (!*(a4 + 16))
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v24 = *(v6 + v18);
  v25 = sub_10016D548(a1);
  if ((v26 & 1) == 0)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v27 = *(*(a4 + 56) + 8 * v25);
  if (!*(v27 + 16))
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v64 = v10;

  v28 = sub_10016D4D0(v68, v15);
  if ((v29 & 1) == 0)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v30 = (*(v27 + 56) + 32 * v28);
  v32 = *v30;
  v31 = v30[1];
  v34 = v30[2];
  v33 = v30[3];
  v71 = v32;
  v72 = v33;
  v65 = v31;

  swift_bridgeObjectRetain_n();

  v35 = sub_1001A1FDC(v34);
  v70 = v34;

  v37 = sub_1001A1FDC(v36);

  if (*(v37 + 16) <= v35[2] >> 3)
  {
    v75 = v35;
    sub_1001A06C4(v37);

    a4 = v75;
  }

  else
  {
    a4 = sub_1001A07F0(v37, v35);
  }

  v46 = *(a4 + 16);
  v10 = v64;
  if (v46)
  {
    a5 = sub_1001E3AA4(*(a4 + 16), 0);
    a4 = sub_1001F1134(&v75, a5 + 4, v46, a4);
    sub_1000C7084();
    if (a4 == v46)
    {
      goto LABEL_25;
    }

    __break(1u);
  }

  a5 = _swiftEmptyArrayStorage;
LABEL_25:
  if (!a5[2])
  {

    v38 = v65;
    goto LABEL_13;
  }

  v47 = v72;
  if (!v65)
  {
    v47 = 1;
  }

  v62 = v47;
  swift_beginAccess();

  v48 = *(v6 + v18);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v74 = *(v6 + v18);
  v49 = v74;
  *(v6 + v18) = 0x8000000000000000;
  v61 = sub_10016D548(a1);
  v51 = *(v49 + 16);
  v52 = (v50 & 1) == 0;
  v53 = v51 + v52;
  if (__OFADD__(v51, v52))
  {
    goto LABEL_45;
  }

  LOBYTE(a4) = v50;
  if (*(v49 + 24) >= v53)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_34;
  }

  sub_1001E8624(v53, isUniquelyReferenced_nonNull_native);
  v54 = sub_10016D548(a1);
  if ((a4 & 1) != (v55 & 1))
  {
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v56 = v54;
  while ((a4 & 1) == 0)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    sub_1001EF7F8();
LABEL_34:
    v56 = v61;
  }

  v57 = *(*(v74 + 56) + 8 * v56);
  v58 = swift_isUniquelyReferenced_nonNull_native();
  v73 = v57;
  sub_1001EC8B4(v67, v66, a5, v62, v68, v15, v58);

  v59 = v74;
  if (v73)
  {
    *(*(v74 + 56) + 8 * v56) = v73;
  }

  else
  {
    sub_1001F7A38(v56, v74);
  }

  v38 = v65;
  *(v6 + v18) = v59;
  swift_endAccess();
LABEL_14:
  v40 = sub_10019051C();
  v41 = *(v6 + v16);

  os_unfair_lock_unlock(v41 + 4);

  if (!v40)
  {
    (*(v69 + 16))(v13, v6 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v10);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "no more sensor or actuation clients, releasing transaction", v44, 2u);
    }

    (*(v69 + 8))(v13, v10);
    sub_10019AE80();
  }

  sub_1001A28A8(v71, v38);
  return a5;
}

uint64_t sub_10019506C(int a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v28[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v12 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v12 + 4);

  v13 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifySensorClients;
  swift_beginAccess();
  v14 = *(v3 + v13);
  if (!*(v14 + 16))
  {
    goto LABEL_7;
  }

  v15 = sub_10016D548(a1);
  if ((v16 & 1) == 0)
  {
    goto LABEL_7;
  }

  if (a2)
  {
    v17 = *(*(v14 + 56) + 8 * v15);
    sub_100095B94(0, &qword_1002AB450, NSXPCConnection_ptr);
    v18 = v17;
    v19 = a2;
    v20 = static NSObject.== infix(_:_:)();

    if (v20)
    {
      swift_beginAccess();
      v21 = sub_1001E4BFC(a1);
      swift_endAccess();

      swift_beginAccess();
      sub_1001E5168(a1);
      swift_endAccess();

      LODWORD(a2) = 1;
      goto LABEL_8;
    }

LABEL_7:
    LODWORD(a2) = 0;
  }

LABEL_8:
  v22 = sub_10019051C();
  v23 = *(v3 + v11);

  os_unfair_lock_unlock(v23 + 4);

  if (a2 && !v22)
  {
    (*(v7 + 16))(v10, v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v6);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "no more sensor or actuation clients, releasing transaction", v26, 2u);
    }

    (*(v7 + 8))(v10, v6);
    sub_10019AE80();
  }

  return 1;
}

uint64_t sub_100195354(int a1, void *a2, uint64_t *a3)
{
  v5 = v3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v14 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v14 + 4);

  v15 = *a3;
  swift_beginAccess();
  v16 = *(v5 + v15);
  if (*(v16 + 16) && (v17 = sub_10016D548(a1), (v18 & 1) != 0))
  {
    if (a2)
    {
      v19 = *(*(v16 + 56) + 8 * v17);
      v29 = sub_100095B94(0, &qword_1002AB450, NSXPCConnection_ptr);
      v20 = v19;
      v21 = a2;
      v30 = v20;
      LOBYTE(a2) = static NSObject.== infix(_:_:)();

      if (a2)
      {
        swift_beginAccess();
        v22 = sub_1001E4BFC(a1);
        swift_endAccess();
      }

      else
      {
        v22 = v30;
      }
    }
  }

  else
  {
    LOBYTE(a2) = 0;
  }

  v23 = sub_10019051C();
  v24 = *(v5 + v13);

  os_unfair_lock_unlock(v24 + 4);

  if ((a2 & 1) != 0 && !v23)
  {
    (*(v9 + 16))(v12, v5 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v8);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "no more clients, releasing transaction", v27, 2u);
    }

    (*(v9 + 8))(v12, v8);
    sub_10019AE80();
  }

  return 1;
}

void sub_100195600(uint64_t a1, void (*a2)(char *, uint64_t, uint64_t), char a3, int a4)
{
  LODWORD(v5) = a4;
  v9 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__clientLock;
  v10 = *(v4 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__clientLock);

  os_unfair_lock_lock(v10 + 4);

  v11 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__appIDsOptedOutOfSystemTracking;
  if (a3)
  {
    v12 = swift_beginAccess();
    v13 = *(v11 + v4);
    v76 = a1;
    v77 = a2;
    __chkstk_darwin(v12);
    v69 = &v76;

    v14 = sub_10019EE0C(sub_10017EA54, v68, v13);

    v72 = v9;
    v70 = v11;
    if ((v14 & 1) == 0)
    {
LABEL_39:
      v22 = *(v11 + v4);
      v52 = *(v22 + 16);

      if (v52)
      {
        v53 = 0;
        v54 = v22 + 40;
        v71 = v52 - 1;
        v11 = _swiftEmptyArrayStorage;
        v73 = v22 + 40;
        do
        {
          v55 = (v54 + 16 * v53);
          v9 = v53;
          while (1)
          {
            if (v9 >= *(v22 + 16))
            {
              __break(1u);
              goto LABEL_63;
            }

            v56 = *(v55 - 1);
            v5 = *v55;
            if (v56 != a1 || v5 != a2)
            {
              v58 = *(v55 - 1);
              v59 = *v55;
              if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                break;
              }
            }

            ++v9;
            v55 += 2;
            if (v52 == v9)
            {
              v9 = v72;
              goto LABEL_59;
            }
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v74 = v4;
          v75 = v11;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1001D71A8(0, v11[2] + 1, 1);
            v11 = v75;
          }

          v62 = v11[2];
          v61 = v11[3];
          v63 = v62 + 1;
          if (v62 >= v61 >> 1)
          {
            sub_1001D71A8((v61 > 1), v62 + 1, 1);
            v63 = v62 + 1;
            v11 = v75;
          }

          v53 = v9 + 1;
          v11[2] = v63;
          v64 = &v11[2 * v62];
          v64[4] = v56;
          v64[5] = v5;
          v31 = v71 == v9;
          v54 = v73;
          v4 = v74;
          v9 = v72;
        }

        while (!v31);
      }

      else
      {
        v11 = _swiftEmptyArrayStorage;
      }

LABEL_59:

      v65 = *(v70 + v4);
      *(v70 + v4) = v11;
      goto LABEL_60;
    }

    sub_100195C58(a1, a2, v5);
    v9 = cameracaptureIdentifier.getter();
    v16 = v15;
    v17 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__animators;
    swift_beginAccess();
    v74 = v4;
    v18 = *(v4 + v17);
    v19 = v16;
    v5 = (v18 + 64);
    v20 = 1 << *(v18 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v18 + 64);
    v23 = (v20 + 63) >> 6;
    v71 = v18;

    v24 = 0;
    v73 = v19;
    while (v22)
    {
LABEL_13:
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v28 = v27 | (v24 << 6);
      v29 = *(*(v71 + 48) + 16 * v28 + 8);
      v30 = *(*(v71 + 56) + 8 * v28);
      v31 = *(v30 + 24) == v9 && *(v30 + 32) == v19;
      if (v31 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v25 = *(v30 + 16);

        sub_100195C58(v9, v73, v25);
        v19 = v73;
      }
    }

    v4 = v74;
    v11 = v70;
    while (1)
    {
      v26 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v26 >= v23)
      {

        v9 = v72;
        goto LABEL_39;
      }

      v22 = *(v5 + v26);
      ++v24;
      if (v22)
      {
        v24 = v26;
        v19 = v73;
        goto LABEL_13;
      }
    }

LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v32 = swift_beginAccess();
  v33 = *(v11 + v4);
  v76 = a1;
  v77 = a2;
  __chkstk_darwin(v32);
  v69 = &v76;

  v34 = sub_10019EE0C(sub_10017E860, v68, v33);

  if ((v34 & 1) == 0)
  {
    swift_beginAccess();
    v22 = *(v11 + v4);

    v35 = swift_isUniquelyReferenced_nonNull_native();
    *(v11 + v4) = v22;
    if (v35)
    {
LABEL_21:
      v37 = *(v22 + 16);
      v36 = *(v22 + 24);
      v72 = v9;
      if (v37 >= v36 >> 1)
      {
        v22 = sub_100102844((v36 > 1), v37 + 1, 1, v22);
      }

      *(v22 + 16) = v37 + 1;
      v38 = v22 + 16 * v37;
      *(v38 + 32) = a1;
      *(v38 + 40) = a2;
      *(v11 + v4) = v22;
      swift_endAccess();
      sub_100195C58(a1, a2, v5);
      a2 = cameracaptureIdentifier.getter();
      v22 = v39;
      v40 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__animators;
      swift_beginAccess();
      v74 = v4;
      a1 = *(v4 + v40);
      v11 = (a1 + 64);
      v41 = 1 << *(a1 + 32);
      v42 = -1;
      if (v41 < 64)
      {
        v42 = ~(-1 << v41);
      }

      v43 = v42 & *(a1 + 64);
      v44 = (v41 + 63) >> 6;

      v9 = 0;
      while (v43)
      {
LABEL_32:
        v48 = __clz(__rbit64(v43));
        v43 &= v43 - 1;
        v49 = v48 | (v9 << 6);
        v50 = *(*(a1 + 48) + 16 * v49 + 8);
        v5 = *(*(a1 + 56) + 8 * v49);
        v51 = *(v5 + 3) == a2 && *(v5 + 4) == v22;
        if (v51 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v45 = *(v5 + 4);

          v46 = v45;
          v4 = v74;
          sub_100195C58(a2, v22, v46);
        }
      }

      while (1)
      {
        v47 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_64;
        }

        if (v47 >= v44)
        {
          break;
        }

        v43 = v11[v47];
        ++v9;
        if (v43)
        {
          v9 = v47;
          goto LABEL_32;
        }
      }

      v4 = v74;
      v9 = v72;
LABEL_60:

      goto LABEL_61;
    }

LABEL_65:
    v22 = sub_100102844(0, *(v22 + 16) + 1, 1, v22);
    *(v11 + v4) = v22;
    goto LABEL_21;
  }

LABEL_61:
  v66 = *(v4 + v9);

  os_unfair_lock_unlock(v66 + 4);

  v67 = *(v4 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_trackingEnableNotification);
  DeviceNotification.state.getter();
  DeviceNotification.state.setter();
}

void sub_100195C58(void (*a1)(char *, uint64_t, uint64_t), unint64_t a2, int a3)
{
  v102 = a2;
  v99 = a1;
  v97 = type metadata accessor for Logger();
  v5 = *(v97 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v97);
  v101 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v106 = (&v89 - v10);
  __chkstk_darwin(v9);
  v100 = &v89 - v11;
  v12 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__animators;
  swift_beginAccess();
  v96 = v3;
  v13 = *(v3 + v12);
  v14 = 1 << *(v13 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v13 + 64);
  v17 = (v14 + 63) >> 6;
  v104 = (v5 + 16);
  v105 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger;
  v103 = (v5 + 8);

  v18 = 0;
  v19 = _swiftEmptyArrayStorage;
  *&v20 = 136315650;
LABEL_4:
  v94 = v19;
  while (v16)
  {
LABEL_5:
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v22 = v21 | (v18 << 6);
    v23 = *(*(v13 + 56) + 8 * v22);
    if (*(v23 + 16) == a3)
    {
      v95 = v20;
      v25 = (*(v13 + 48) + 16 * v22);
      v26 = v25[1];
      *&v93 = *v25;
      v98 = v26;
      (*v104)(v100, v96 + v105, v97);
      swift_bridgeObjectRetain_n();
      swift_retain_n();

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();

      LODWORD(v92) = v28;
      v29 = v28;
      v30 = v27;
      if (os_log_type_enabled(v27, v29))
      {
        v31 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v108[0] = v90;
        *v31 = v95;

        v91 = v30;
        v89 = sub_1000C4580(v32);
        v34 = v33;

        v89 = sub_1000952D4(v89, v34, v108);

        *(v31 + 4) = v89;
        *(v31 + 12) = 2080;
        *(v31 + 14) = sub_1000952D4(v99, v102, v108);
        *(v31 + 22) = 1024;
        *(v31 + 24) = a3;
        _os_log_impl(&_mh_execute_header, v91, v92, "expiring animator %s, owner %s [pid %d] re-enabling system tracking", v31, 0x1Cu);
        swift_arrayDestroy();
      }

      else
      {
      }

      (*v103)(v100, v97);
      v35 = *(v23 + 144);
      if (v35)
      {
        v36 = v35;
        dispatch thunk of RepeatingTimer.suspend()();

        v35 = *(v23 + 144);
      }

      *(v23 + 144) = 0;

      sub_1000C6664();

      v37 = v94;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_100102844(0, *(v37 + 2) + 1, 1, v37);
      }

      v94 = v37;
      v39 = *(v37 + 2);
      v38 = *(v37 + 3);
      v92 = v39 + 1;
      if (v39 >= v38 >> 1)
      {
        v94 = sub_100102844((v38 > 1), v39 + 1, 1, v94);
      }

      v40 = v98;

      v19 = v94;
      *(v94 + 2) = v92;
      v41 = &v19[16 * v39];
      *(v41 + 4) = v93;
      *(v41 + 5) = v40;
      v20 = v95;
      goto LABEL_4;
    }
  }

  while (1)
  {
    v24 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      goto LABEL_47;
    }

    if (v24 >= v17)
    {
      break;
    }

    v16 = *(v13 + 64 + 8 * v24);
    ++v18;
    if (v16)
    {
      v18 = v24;
      goto LABEL_5;
    }
  }

  v42 = *(v19 + 2);
  v43 = v96;
  if (v42)
  {
    v44 = (v94 + 40);
    do
    {
      v48 = *(v44 - 1);
      v47 = *v44;
      swift_beginAccess();
      v49 = *(v43 + v12);

      v50 = sub_10016D4D0(v48, v47);
      if (v51)
      {
        v52 = v50;
        v53 = *(v43 + v12);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v55 = *(v43 + v12);
        v107 = v55;
        *(v43 + v12) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1001EF2A8();
          v55 = v107;
        }

        v45 = *(*(v55 + 48) + 16 * v52 + 8);

        v46 = *(*(v55 + 56) + 8 * v52);

        sub_1001F7A34(v52, v55);
        *(v43 + v12) = v55;
      }

      swift_endAccess();

      v44 += 2;
      --v42;
    }

    while (v42);
  }

  v56 = v106;
  v57 = v97;
  v99 = *v104;
  v99(v106, v43 + v105, v97);
  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&_mh_execute_header, v58, v59, "remaining animators:", v60, 2u);
  }

  v98 = *v103;
  v98(v56, v57);
  v92 = v12;
  v61 = *(v43 + v12);
  v62 = v61 + 64;
  v63 = 1 << v61[32];
  v64 = -1;
  if (v63 < 64)
  {
    v64 = ~(-1 << v63);
  }

  v65 = v64 & *(v61 + 8);
  v66 = (v63 + 63) >> 6;
  v100 = v61;

  v67 = 0;
  *&v68 = 136315138;
  v93 = v68;
  v69 = v101;
  if (v65)
  {
    goto LABEL_35;
  }

LABEL_36:
  while (1)
  {
    v70 = v67 + 1;
    if (__OFADD__(v67, 1))
    {
      break;
    }

    if (v70 >= v66)
    {

      if (!*(*(v43 + v92) + 16) && !*(v43 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__systemAnimator))
      {
        v87 = *(v43 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
        v88 = v87;
        sub_10018A9DC(1, v87);
      }

      return;
    }

    v65 = *&v62[8 * v70];
    ++v67;
    if (v65)
    {
      while (1)
      {
        v71 = __clz(__rbit64(v65));
        v65 &= v65 - 1;
        v72 = v71 | (v70 << 6);
        v73 = *(v100 + 7);
        v74 = (*(v100 + 6) + 16 * v72);
        v75 = v74[1];
        v102 = *v74;
        v76 = *(v73 + 8 * v72);
        v99(v69, v43 + v105, v57);
        swift_bridgeObjectRetain_n();
        swift_retain_n();
        v77 = v57;
        v78 = Logger.logObject.getter();
        v79 = static os_log_type_t.default.getter();

        v106 = v78;
        if (os_log_type_enabled(v78, v79))
        {
          v80 = swift_slowAlloc();
          v81 = swift_slowAlloc();
          *&v95 = v81;
          *v80 = v93;
          v107 = v81;
          v108[0] = v102;
          v108[1] = v75;
          v108[2] = v76;

          sub_100095274(&qword_1002AB448, &unk_10023F008);
          v82 = String.init<A>(describing:)();
          v84 = sub_1000952D4(v82, v83, &v107);

          *(v80 + 4) = v84;
          v57 = v97;
          v85 = v79;
          v86 = v106;
          _os_log_impl(&_mh_execute_header, v106, v85, "    animator: %s", v80, 0xCu);
          sub_100095808(v95);

          v43 = v96;

          v69 = v101;
          v98(v101, v57);
          v67 = v70;
          if (!v65)
          {
            goto LABEL_36;
          }
        }

        else
        {

          v69 = v101;
          v98(v101, v77);
          v67 = v70;
          v57 = v77;
          if (!v65)
          {
            goto LABEL_36;
          }
        }

LABEL_35:
        v70 = v67;
      }
    }
  }

LABEL_47:
  __break(1u);
}

uint64_t sub_1001965B0(int a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v16 = *(v4 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v16 + 4);

  swift_beginAccess();
  v17 = a2;
  sub_1001DAB74(a2, a1);
  swift_endAccess();
  v18 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyPairingClientsRules;
  swift_beginAccess();

  v19 = *(v5 + v18);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *(v5 + v18);
  *(v5 + v18) = 0x8000000000000000;
  sub_1001EB828(a3, a4, a1, isUniquelyReferenced_nonNull_native);
  *(v5 + v18) = v27;
  swift_endAccess();
  v21 = sub_10019051C();
  v22 = *(v5 + v15);

  os_unfair_lock_unlock(v22 + 4);

  if (v21 == 1)
  {
    (*(v11 + 16))(v14, v5 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v10);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "added first pairing client, taking transaction", v25, 2u);
    }

    (*(v11 + 8))(v14, v10);
    sub_10019A4F0(1);
  }

  return 1;
}

void sub_100196830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v65 = a3;
  v66 = a4;
  v69 = a2;
  v73 = a1;
  v68 = type metadata accessor for UUID();
  v6 = *(v68 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v68);
  v71 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for Logger();
  v9 = *(v67 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v67);
  v70 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001F1DDC(_swiftEmptyArrayStorage);

  v12 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__clientLock;
  v13 = *(v4 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__clientLock);

  os_unfair_lock_lock(v13 + 4);

  v14 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyPairingClientsRules;
  swift_beginAccess();
  v15 = *(v4 + v14);
  v16 = *(v5 + v12);

  os_unfair_lock_unlock(v16 + 4);

  sub_1001F1BBC(_swiftEmptyArrayStorage);

  v17 = *(v5 + v12);

  os_unfair_lock_lock(v17 + 4);

  v18 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyPairingClients;
  swift_beginAccess();
  v19 = *(v5 + v18);
  v20 = *(v5 + v12);

  os_unfair_lock_unlock(v20 + 4);

  v22 = 0;
  v23 = 1 << *(v19 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v19 + 64);
  v64 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger;
  v26 = (v23 + 63) >> 6;
  v63 = (v9 + 16);
  v62 = (v6 + 16);
  v61 = (v6 + 8);
  v60 = (v9 + 8);
  *&v21 = 136315394;
  v59 = v21;
  v72 = v15;
  while (v25)
  {
    v27 = v25;
LABEL_10:
    v25 = (v27 - 1) & v27;
    if (*(v15 + 16))
    {
      v29 = __clz(__rbit64(v27)) | (v22 << 6);
      v30 = *(*(v19 + 56) + 8 * v29);
      v31 = sub_10016D548(*(*(v19 + 48) + 4 * v29));
      if (v32)
      {
        v33 = (*(v15 + 56) + 16 * v31);
        v35 = *v33;
        v34 = v33[1];
        v36 = v30;

        if (v35 == UUID.uuidString.getter() && v34 == v37)
        {

LABEL_19:
          v36 = v36;
          v40 = [v36 remoteObjectProxy];
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
          sub_100095274(&qword_1002AB458, &qword_10023F018);
          if ((swift_dynamicCast() & 1) == 0)
          {

            goto LABEL_23;
          }

          v57 = v36;
          v56 = v74;
          v41 = *v63;
          v58 = v5;
          v42 = v67;
          v41(v70, v5 + v64, v67);
          v43 = v68;
          (*v62)(v71, v73, v68);
          v44 = Logger.logObject.getter();
          v45 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v44, v45))
          {
            v46 = swift_slowAlloc();
            v55 = swift_slowAlloc();
            v75 = v55;
            *v46 = v59;
            v47 = UUID.uuidString.getter();
            v49 = v48;
            (*v61)(v71, v68);
            v50 = sub_1000952D4(v47, v49, &v75);

            *(v46 + 4) = v50;
            *(v46 + 12) = 2048;
            *(v46 + 14) = PairingRequestState.rawValue.getter();
            _os_log_impl(&_mh_execute_header, v44, v45, "Notifying prox card %s of state change %ld", v46, 0x16u);
            sub_100095808(v55);

            (*v60)(v70, v67);
          }

          else
          {

            (*v61)(v71, v43);
            (*v60)(v70, v42);
          }

          UUID.uuidString.getter();
          v51 = String._bridgeToObjectiveC()();

          v52.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
          v53 = v57;
          if (v66)
          {
            v54 = _convertErrorToNSError(_:)();
          }

          else
          {
            v54 = 0;
          }

          [v56 pairingStatusWithInfo:v51 state:v69 metadata:v52.super.isa error:v54];
          swift_unknownObjectRelease();

          v5 = v58;
          v15 = v72;
        }

        else
        {
          v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v39)
          {
            goto LABEL_19;
          }

LABEL_23:

          v15 = v72;
        }
      }
    }
  }

  while (1)
  {
    v28 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v28 >= v26)
    {

      return;
    }

    v27 = *(v19 + 64 + 8 * v28);
    ++v22;
    if (v27)
    {
      v22 = v28;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_100196ED8(int a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v28[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v12 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v12 + 4);

  v13 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyPairingClients;
  swift_beginAccess();
  v14 = *(v3 + v13);
  if (!*(v14 + 16))
  {
    goto LABEL_7;
  }

  v15 = sub_10016D548(a1);
  if ((v16 & 1) == 0)
  {
    goto LABEL_7;
  }

  if (a2)
  {
    v17 = *(*(v14 + 56) + 8 * v15);
    sub_100095B94(0, &qword_1002AB450, NSXPCConnection_ptr);
    v18 = v17;
    v19 = a2;
    v20 = static NSObject.== infix(_:_:)();

    if (v20)
    {
      swift_beginAccess();
      v21 = sub_1001E4BFC(a1);
      swift_endAccess();

      swift_beginAccess();
      sub_1001E4C84(a1);
      swift_endAccess();

      LODWORD(a2) = 1;
      goto LABEL_8;
    }

LABEL_7:
    LODWORD(a2) = 0;
  }

LABEL_8:
  v22 = sub_10019051C();
  v23 = *(v3 + v11);

  os_unfair_lock_unlock(v23 + 4);

  if (a2 && !v22)
  {
    (*(v7 + 16))(v10, v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v6);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "no more long running clients, releasing transaction", v26, 2u);
    }

    (*(v7 + 8))(v10, v6);
    sub_10019AE80();
  }

  return 1;
}

uint64_t sub_1001971B4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v59 = a5;
  v60 = a6;
  v11 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v57 = *(v11 - 8);
  v58 = v11;
  v12 = *(v57 + 64);
  __chkstk_darwin(v11);
  v56 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for OS_dispatch_queue.Attributes();
  v14 = *(*(v54 - 8) + 64);
  __chkstk_darwin(v54);
  v55 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v18 = type metadata accessor for Logger();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = DockCoreInfo.description.getter();
  v66 = v23;
  v24 = getpid();
  v61 = a2;
  v62 = a3;
  if (v24 == a2)
  {
    if (a3 == 0xD000000000000018 && 0x800000010022E6B0 == a4)
    {
      v25 = 1;
    }

    else
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v25 = 0;
  }

  v64 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v26 = *(v6 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v26 + 4);

  v27 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__animators;
  swift_beginAccess();
  v53 = v27;
  v28 = *(v7 + v27);
  v29 = *(v28 + 16);
  v63 = a4;
  if (v29)
  {

    v30 = sub_10016D4D0(v65, v66);
    if (v31)
    {
      v32 = *(*(v28 + 56) + 8 * v30);
    }

    else
    {
      v32 = 0;
    }

    if (v25)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v32 = 0;
    if (v25)
    {
LABEL_14:

      v32 = *(v7 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__systemAnimator);
    }
  }

  if (v32)
  {
    if (*(v32 + 56) && *(v32 + 48) && *(v32 + 40) != 1)
    {

      goto LABEL_27;
    }

    *(v32 + 40) = 1;
    (*(v19 + 16))(v22, v7 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v18);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Removing previously expired animator", v35, 2u);
    }

    (*(v19 + 8))(v22, v18);
    v36 = *(v32 + 144);
    if (v36)
    {
      v37 = v36;
      dispatch thunk of RepeatingTimer.suspend()();

      v36 = *(v32 + 144);
    }

    *(v32 + 144) = 0;

    sub_1000C6664();
  }

  v38 = type metadata accessor for VelocityAnimator();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  v32 = swift_allocObject();
  *(v32 + 40) = 0;
  *(v32 + 48) = 0;
  *(v32 + 56) = 0;
  *(v32 + 64) = 20;

  *(v32 + 72) = dispatch_semaphore_create(1);
  *(v32 + 80) = sub_1001F2278(_swiftEmptyArrayStorage);
  *(v32 + 88) = sub_1001F2278(_swiftEmptyArrayStorage);
  *(v32 + 96) = 0x4018000000000000;
  sub_100095B94(0, &qword_1002A6820, OS_dispatch_queue_ptr);
  *(v32 + 104) = 0u;
  *(v32 + 120) = 0u;
  *(v32 + 136) = 0u;
  static DispatchQoS.unspecified.getter();
  v68 = _swiftEmptyArrayStorage;
  sub_1001A2FAC(&qword_1002A7110, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100095274(&unk_1002A6830, &unk_10023AB20);
  sub_100095BDC(&qword_1002A7120, &unk_1002A6830, &unk_10023AB20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v57 + 104))(v56, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v58);
  *(v32 + 152) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v32 + 160) = 0x4000000000000000;
  *(v32 + 168) = 0;
  *(v32 + 170) = 0;
  Logger.init(subsystem:category:)();
  v41 = *(v32 + 104);
  v42 = *(v32 + 112);
  v43 = v60;
  *(v32 + 104) = v59;
  *(v32 + 112) = v43;

  sub_1000BAA84(v41);
  v44 = *(v32 + 120);
  v45 = *(v32 + 128);
  *(v32 + 120) = sub_1001A27C8;
  *(v32 + 128) = v7;

  sub_1000BAA84(v44);
  *(v32 + 16) = v61;
  v46 = v63;
  *(v32 + 24) = v62;
  *(v32 + 32) = v46;

  sub_1000C6028();
  sub_1000C59C0();

  if (v25)
  {

    v47 = *(v7 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__systemAnimator);
    *(v7 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__systemAnimator) = v32;
  }

  else
  {
    v48 = v53;
    swift_beginAccess();

    v49 = *(v7 + v48);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v67 = *(v7 + v48);
    *(v7 + v48) = 0x8000000000000000;
    sub_1001EC338(v32, v65, v66, isUniquelyReferenced_nonNull_native);

    *(v7 + v48) = v67;
    swift_endAccess();
  }

LABEL_27:
  v51 = *(v7 + v64);

  os_unfair_lock_unlock(v51 + 4);

  return v32;
}

uint64_t sub_1001978F0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v3 - 8);
  v4 = *(v26 + 64);
  __chkstk_darwin(v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v24 = *(v7 - 8);
  v25 = v7;
  v8 = *(v24 + 64);
  __chkstk_darwin(v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchTime();
  v23 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v21 - v17;
  v21[1] = *(a2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_queue);
  static DispatchTime.now()();
  + infix(_:_:)();
  v22 = *(v12 + 8);
  v22(v16, v11);
  aBlock[4] = sub_1001A27D0;
  aBlock[5] = a2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147FC8;
  aBlock[3] = &unk_100279B30;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v27 = _swiftEmptyArrayStorage;
  sub_1001A2FAC(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags);
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_100095BDC(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v19);
  (*(v26 + 8))(v6, v3);
  (*(v24 + 8))(v10, v25);
  v22(v18, v23);
}

uint64_t sub_100197C80()
{
  v1 = v0;
  v2 = DockCoreInfo.description.getter();
  v4 = v3;
  v5 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v6 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v6 + 4);

  v7 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__animators;
  swift_beginAccess();
  v8 = *(v1 + v7);
  if (*(v8 + 16) && (, v9 = sub_10016D4D0(v2, v4), v11 = v10, , (v11 & 1) != 0))
  {
    v12 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {

    v12 = 0;
  }

  v13 = *(v1 + v5);

  os_unfair_lock_unlock(v13 + 4);

  return v12;
}

uint64_t sub_100197D90()
{
  v1 = v0;
  v2 = DockCoreInfo.description.getter();
  v4 = v3;
  v5 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v6 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v6 + 4);

  v7 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__animators;
  swift_beginAccess();
  if (*(*(v1 + v7) + 16))
  {
    v8 = *(v1 + v7);

    sub_10016D4D0(v2, v4);
    if (v9)
    {

      v10 = *(v1 + v7);
      if (*(v10 + 16))
      {
        v11 = *(v1 + v7);

        v12 = sub_10016D4D0(v2, v4);
        if (v13)
        {
          v14 = *(*(v10 + 56) + 8 * v12);

          sub_1000C6664();
        }

        else
        {
        }
      }

      swift_beginAccess();
      sub_1001DAA7C(0, v2, v4);
      swift_endAccess();
    }

    else
    {
    }
  }

  else
  {
  }

  v15 = *(v1 + v5);

  os_unfair_lock_unlock(v15 + 4);
}

uint64_t sub_100197F10()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  v125 = &v125 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v126 = &v125 - v7;
  v8 = __chkstk_darwin(v6);
  v134 = (&v125 - v9);
  v10 = __chkstk_darwin(v8);
  v128 = &v125 - v11;
  v12 = __chkstk_darwin(v10);
  v137 = (&v125 - v13);
  __chkstk_darwin(v12);
  v15 = &v125 - v14;
  v17 = v16;
  v18 = *(v16 + 16);
  v138 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger;
  v139 = v18;
  v140 = v16 + 16;
  v18((&v125 - v14), v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v2);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  v21 = os_log_type_enabled(v19, v20);
  v132 = v2;
  if (v21)
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Cleaning up stale animators", v22, 2u);
    v2 = v132;
  }

  v141 = *(v17 + 8);
  v142 = v17 + 8;
  v141(v15, v2);
  v127 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v23 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v23 + 4);

  v24 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__animators;
  swift_beginAccess();
  v136 = v1;
  v129 = v24;
  v25 = *(v1 + v24);
  v28 = *(v25 + 64);
  v27 = v25 + 64;
  v26 = v28;
  v29 = 1 << *(*(v1 + v24) + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & v26;
  v32 = (v29 + 63) >> 6;
  v135 = *(v1 + v24);

  v34 = 0;
  *&v35 = 136315138;
  v131 = v35;
  while (v31)
  {
LABEL_13:
    v38 = __clz(__rbit64(v31));
    v31 &= v31 - 1;
    v39 = v38 | (v34 << 6);
    v40 = (*(v135 + 48) + 16 * v39);
    v41 = *v40;
    v42 = v40[1];
    v43 = *(*(v135 + 56) + 8 * v39);
    if (!*(v43 + 56) || !*(v43 + 48) || *(v43 + 40) == 1)
    {
      *(v43 + 40) = 1;
      v44 = *(v43 + 144);

      if (v44)
      {
        v45 = v44;
        dispatch thunk of RepeatingTimer.suspend()();

        v46 = *(v43 + 144);
      }

      else
      {
        v46 = 0;
      }

      *(v43 + 144) = 0;

      sub_1000C6664();
      v139(v137, v136 + v138, v2);

      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.default.getter();

      LODWORD(v133) = v48;
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v130 = swift_slowAlloc();
        v145 = v43;
        v146 = v130;
        *v49 = v131;
        v143 = v41;
        v144 = v42;

        sub_100095274(&qword_1002AB448, &unk_10023F008);
        v50 = String.init<A>(describing:)();
        v52 = sub_1000952D4(v50, v51, &v146);

        *(v49 + 4) = v52;
        v53 = v137;
        _os_log_impl(&_mh_execute_header, v47, v133, "   expired: %s", v49, 0xCu);
        sub_100095808(v130);

        v2 = v132;

        v36 = v53;
      }

      else
      {

        v36 = v137;
      }

      result = (v141)(v36, v2);
    }
  }

  while (1)
  {
    v37 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
      goto LABEL_55;
    }

    if (v37 >= v32)
    {
      break;
    }

    v31 = *(v27 + 8 * v37);
    ++v34;
    if (v31)
    {
      v34 = v37;
      goto LABEL_13;
    }
  }

  v54 = v136;
  v55 = v129;
  v56 = *(v136 + v129);

  v58 = sub_10019F820(v57);

  v59 = *(v54 + v55);
  *(v54 + v55) = v58;

  v60 = v128;
  v139(v128, v54 + v138, v2);
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 0;
    _os_log_impl(&_mh_execute_header, v61, v62, "remaining animators:", v63, 2u);
  }

  v141(v60, v2);
  v64 = *(v54 + v129);
  v67 = *(v64 + 64);
  v66 = v64 + 64;
  v65 = v67;
  v68 = 1 << *(*(v54 + v129) + 32);
  v69 = -1;
  if (v68 < 64)
  {
    v69 = ~(-1 << v68);
  }

  v70 = v69 & v65;
  v71 = (v68 + 63) >> 6;
  v133 = *(v54 + v129);

  v72 = 0;
  v73 = v134;
  if (v70)
  {
    goto LABEL_28;
  }

LABEL_29:
  while (1)
  {
    v74 = v72 + 1;
    if (__OFADD__(v72, 1))
    {
      break;
    }

    if (v74 >= v71)
    {

      v90 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__systemAnimator;
      v91 = *(v54 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__systemAnimator);
      if (v91)
      {
        if (*(v91 + 56) && *(v91 + 48) && *(v91 + 40) != 1)
        {
          v112 = v125;
          v113 = v132;
          v139(v125, v54 + v138, v132);
          swift_retain_n();
          v114 = Logger.logObject.getter();
          v115 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v114, v115))
          {
            v116 = swift_slowAlloc();
            v117 = v112;
            v118 = swift_slowAlloc();
            v143 = v118;
            *v116 = v131;

            v120 = sub_1000C4580(v119);
            v122 = v121;

            v123 = sub_1000952D4(v120, v122, &v143);

            *(v116 + 4) = v123;
            _os_log_impl(&_mh_execute_header, v114, v115, "    animator: %s", v116, 0xCu);
            sub_100095808(v118);

            v54 = v136;

            v124 = v117;
          }

          else
          {

            v124 = v112;
          }

          v141(v124, v113);
        }

        else
        {
          *(v91 + 40) = 1;
          v92 = *(v91 + 144);

          if (v92)
          {
            v93 = v92;
            dispatch thunk of RepeatingTimer.suspend()();

            v94 = *(v91 + 144);
          }

          else
          {
            v94 = 0;
          }

          *(v91 + 144) = 0;

          sub_1000C6664();
          v95 = v126;
          v96 = v132;
          v139(v126, v54 + v138, v132);

          v97 = Logger.logObject.getter();
          v98 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v97, v98))
          {
            v99 = swift_slowAlloc();
            v100 = v95;
            v101 = swift_slowAlloc();
            v143 = v101;
            *v99 = v131;

            v103 = sub_1000C4580(v102);
            v105 = v104;

            v106 = sub_1000952D4(v103, v105, &v143);

            *(v99 + 4) = v106;
            _os_log_impl(&_mh_execute_header, v97, v98, "   expired: %s", v99, 0xCu);
            sub_100095808(v101);

            v54 = v136;

            v107 = v100;
          }

          else
          {

            v107 = v95;
          }

          v141(v107, v96);
          v108 = *(v54 + v90);
          *(v54 + v90) = 0;
        }
      }

      if (!*(*(v54 + v129) + 16) && !*(v54 + v90))
      {
        v109 = *(v54 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
        v110 = v109;
        sub_10018A9DC(1, v109);
      }

      v111 = *(v54 + v127);

      os_unfair_lock_unlock(v111 + 4);
    }

    v70 = *(v66 + 8 * v74);
    ++v72;
    if (v70)
    {
      while (1)
      {
        v75 = __clz(__rbit64(v70));
        v70 &= v70 - 1;
        v76 = v75 | (v74 << 6);
        v77 = *(v133 + 56);
        v78 = (*(v133 + 48) + 16 * v76);
        v79 = v78[1];
        v135 = *v78;
        v80 = *(v77 + 8 * v76);
        v81 = v54;
        v139(v73, v54 + v138, v2);
        swift_bridgeObjectRetain_n();
        swift_retain_n();
        v82 = Logger.logObject.getter();
        v83 = static os_log_type_t.default.getter();

        v137 = v82;
        if (os_log_type_enabled(v82, v83))
        {
          v84 = swift_slowAlloc();
          v130 = swift_slowAlloc();
          v145 = v80;
          v146 = v130;
          *v84 = v131;
          v143 = v135;
          v144 = v79;

          sub_100095274(&qword_1002AB448, &unk_10023F008);
          v85 = String.init<A>(describing:)();
          v87 = sub_1000952D4(v85, v86, &v146);

          *(v84 + 4) = v87;
          v88 = v83;
          v54 = v136;
          v89 = v137;
          _os_log_impl(&_mh_execute_header, v137, v88, "    animator: %s", v84, 0xCu);
          sub_100095808(v130);

          v2 = v132;

          v73 = v134;
          result = (v141)(v134, v2);
          v72 = v74;
          if (!v70)
          {
            goto LABEL_29;
          }
        }

        else
        {

          v73 = v134;
          result = (v141)(v134, v2);
          v72 = v74;
          v54 = v81;
          if (!v70)
          {
            goto LABEL_29;
          }
        }

LABEL_28:
        v74 = v72;
      }
    }
  }

LABEL_55:
  __break(1u);
  return result;
}

uint64_t sub_100198B58()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = __chkstk_darwin(v2);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_tiltToBaseTask;
  if (*(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_tiltToBaseTask) && *(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_lastConnectedAppId + 8))
  {
    (*(v3 + 16))(v7, v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v2);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Cancelling previous return to base task", v11, 2u);
    }

    (*(v3 + 8))(v7, v2);
    Task.cancel()();

    v12 = *(v1 + v8);
    *(v1 + v8) = 0;
  }

  return result;
}

uint64_t sub_100198D24()
{
  v1 = v0;
  v2 = DockState.rawValue.getter();
  if (v2 == DockState.rawValue.getter())
  {
    v3 = dispatch thunk of DockCoreAccessory.info.getter();
    v4 = v3;
    goto LABEL_6;
  }

  v5 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v6 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v6 + 4);

  v7 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_docked);
  v8 = *(v1 + v5);
  v4 = v7;

  os_unfair_lock_unlock(v8 + 4);

  if (v7)
  {
    sub_100095B94(0, &qword_1002A7270, NSObject_ptr);
    v9 = dispatch thunk of DockCoreAccessory.info.getter();
    v10 = dispatch thunk of DockCoreAccessory.info.getter();
    v11 = static NSObject.== infix(_:_:)();

    if ((v11 & 1) == 0)
    {
LABEL_7:

      return 1;
    }

    v3 = 0;
LABEL_6:
    sub_1001898EC(v3);
    goto LABEL_7;
  }

  return 1;
}

void sub_100198E44(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v42 = *(v8 - 8);
  v9 = *(v42 + 64);
  v10 = __chkstk_darwin(v8);
  v12 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v38 - v13;
  v15 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__txnLock;
  v16 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__txnLock);

  os_unfair_lock_lock(v16 + 4);

  v43 = v1;
  if (*(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_txn))
  {

    sub_100105E6C();
  }

  v17 = *(v43 + v15);

  os_unfair_lock_unlock(v17 + 4);

  if (a1)
  {
    v38[2] = v7;
    v38[4] = v4;
    v38[3] = v3;
    v18 = qword_1002A6780;
    v38[1] = a1;
    v19 = a1;
    if (v18 != -1)
    {
      goto LABEL_25;
    }

    while (1)
    {
      v20 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
      v39 = v19;
      v44 = dispatch thunk of DockCoreAccessory.info.getter();
      v40 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
      v21 = *&v20[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
      OS_dispatch_semaphore.wait()();

      v19 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
      swift_beginAccess();
      v41 = v20;
      v22 = *&v20[v19];
      v23 = *(v22 + 16);

      if (!v23)
      {
        break;
      }

      v24 = 0;
      v25 = v22 + 32;
      v26 = (v42 + 8);
      while (v24 < *(v22 + 16))
      {
        sub_1000A097C(v25, v45);
        v27 = *(*sub_1000A09E0(v45, v45[3]) + 24);
        DockCoreInfo.identifier.getter();

        DockCoreInfo.identifier.getter();
        v19 = static UUID.== infix(_:_:)();
        v28 = *v26;
        (*v26)(v12, v8);
        v28(v14, v8);
        if (v19)
        {

          v29 = v41;
          v31 = *&v41[v40];
          OS_dispatch_semaphore.signal()();

          sub_1000A097C(v45, &v46);
          sub_100095808(v45);
          goto LABEL_12;
        }

        ++v24;
        sub_100095808(v45);
        v25 += 40;
        if (v23 == v24)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_25:
      swift_once();
    }

LABEL_10:

    v29 = v41;
    v30 = *&v41[v40];
    OS_dispatch_semaphore.signal()();

    v48 = 0;
    v46 = 0u;
    v47 = 0u;
LABEL_12:

    if (*(&v47 + 1))
    {
      sub_100095274(&unk_1002A7A90, &unk_10023C960);
      type metadata accessor for DaemonAccessory();
      if (swift_dynamicCast())
      {
        v32 = v45[0];
        v33 = *(v45[0] + 16);
        if (v33)
        {
          v34 = *&v33[OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral];
          if (v34)
          {
            v35 = v33;
            if ([v34 state] == 2)
            {
              v36 = *&v29[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_firmwareUpdateManager];
              sub_10014E948(v32, 0, 0, 0);

              v37 = *&v36[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_reachabilityTimer];
              *&v36[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_reachabilityTimer] = 0;
            }

            else
            {
            }
          }

          else
          {
          }
        }

        else
        {
        }
      }

      else
      {
      }
    }

    else
    {

      sub_100095C84(&v46, &unk_1002A6F40, &unk_10023BE90);
    }
  }
}

uint64_t sub_10019951C(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  v3 = type metadata accessor for Logger();
  v2[24] = v3;
  v4 = *(v3 - 8);
  v2[25] = v4;
  v5 = *(v4 + 64) + 15;
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v6 = type metadata accessor for ComponentType();
  v2[29] = v6;
  v7 = *(v6 - 8);
  v2[30] = v7;
  v8 = *(v7 + 64) + 15;
  v2[31] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v2[32] = v9;
  v10 = *(v9 - 8);
  v2[33] = v10;
  v11 = *(v10 + 64) + 15;
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();

  return (_swift_task_switch)(sub_1001996B8, 0, 0);
}

uint64_t sub_1001996B8()
{
  if (qword_1002A6780 != -1)
  {
    goto LABEL_53;
  }

  while (1)
  {
    v89 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
    v92 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
    v1 = *&v92[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
    v2 = v92;
    v3 = v1;
    OS_dispatch_semaphore.wait()();

    v4 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
    swift_beginAccess();
    v94 = v2;
    v5 = *&v2[v4];
    v6 = *(v5 + 16);

    v96 = v6;
    if (v6)
    {
      v7 = 0;
      v8 = v5 + 32;
      v9 = (*(v0 + 264) + 8);
      while (v7 < *(v5 + 16))
      {
        v11 = *(v0 + 272);
        v10 = *(v0 + 280);
        v12 = *(v0 + 256);
        v13 = *(v0 + 176);
        sub_1000A097C(v8, v0 + 56);
        v14 = *(*sub_1000A09E0((v0 + 56), *(v0 + 80)) + 24);
        DockCoreInfo.identifier.getter();

        DockCoreInfo.identifier.getter();
        LOBYTE(v14) = static UUID.== infix(_:_:)();
        v15 = *v9;
        (*v9)(v11, v12);
        v15(v10, v12);
        if (v14)
        {

          v17 = *&v92[v89];
          OS_dispatch_semaphore.signal()();

          sub_1000A097C(v0 + 56, v0 + 16);
          sub_100095808((v0 + 56));
          goto LABEL_9;
        }

        ++v7;
        sub_100095808((v0 + 56));
        v8 += 40;
        if (v96 == v7)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
      goto LABEL_52;
    }

LABEL_7:

    v16 = *&v92[v89];
    OS_dispatch_semaphore.signal()();

    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
LABEL_9:

    if (!*(v0 + 40))
    {
      break;
    }

    sub_100095274(&unk_1002A7A90, &unk_10023C960);
    type metadata accessor for DaemonAccessory();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_20;
    }

    v19 = *(v0 + 240);
    v18 = *(v0 + 248);
    v20 = *(v0 + 232);
    v21 = *(v0 + 168);
    v22 = swift_allocObject();
    *(v22 + 16) = sub_1001F365C(_swiftEmptyArrayStorage);
    (*(v19 + 104))(v18, enum case for ComponentType.Battery(_:), v20);
    v23 = OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_sensorInfoMap;
    swift_beginAccess();
    v97 = v21;
    v24 = *&v21[v23];
    if (!*(v24 + 16))
    {
      goto LABEL_24;
    }

    v25 = *(v0 + 248);

    v26 = sub_10016D8E0(v25);
    if ((v27 & 1) == 0)
    {

LABEL_24:
      v48 = *(v0 + 216);
      v50 = *(v0 + 192);
      v49 = *(v0 + 200);
      v51 = *(v0 + 184);
      (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
      (*(v49 + 16))(v48, v51 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v50);
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.error.getter();
      v54 = os_log_type_enabled(v52, v53);
      v55 = *(v0 + 216);
      v57 = *(v0 + 192);
      v56 = *(v0 + 200);
      if (v54)
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        v59 = "Accessory does not have a battery service, cannot read";
        goto LABEL_26;
      }

LABEL_45:

LABEL_46:
      (*(v56 + 8))(v55, v57);

      goto LABEL_47;
    }

    v90 = v22 + 16;
    v28 = *(v0 + 248);
    v29 = *(v0 + 232);
    v30 = *(*(v24 + 56) + 8 * v26);
    v31 = *(*(v0 + 240) + 8);

    v31(v28, v29);

    v32 = *(v30 + 16);
    if (v32)
    {
      v33 = (v30 + 48);
      do
      {
        v35 = *(v33 - 2);
        v34 = *(v33 - 1);
        v36 = *v33;
        v37 = qword_1002A6760;
        swift_bridgeObjectRetain_n();
        v38 = v36;
        if (v37 != -1)
        {
          swift_once();
        }

        v39 = *(v0 + 184);
        v40 = qword_1002B1C78;

        sub_1001AF6D8(v40, v38, v97, v39, v22, v35, v34);
        swift_bridgeObjectRelease_n();

        v33 += 3;
        --v32;
      }

      while (v32);
    }

    swift_beginAccess();
    v60 = *v90;
    if (!*(*v90 + 16))
    {
      (*(*(v0 + 200) + 16))(*(v0 + 224), *(v0 + 184) + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, *(v0 + 192));
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.error.getter();
      v80 = os_log_type_enabled(v52, v53);
      v55 = *(v0 + 224);
      v57 = *(v0 + 192);
      v56 = *(v0 + 200);
      if (!v80)
      {
        goto LABEL_45;
      }

      v58 = swift_slowAlloc();
      *v58 = 0;
      v59 = "Battery Data is empty";
LABEL_26:
      _os_log_impl(&_mh_execute_header, v52, v53, v59, v58, 2u);

      goto LABEL_46;
    }

    v61 = v60 + 64;
    v62 = -1;
    v63 = -1 << *(v60 + 32);
    if (-v63 < 64)
    {
      v62 = ~(-1 << -v63);
    }

    v64 = v62 & *(v60 + 64);
    v65 = (63 - v63) >> 6;

    v66 = 0;
    v91 = v60 + 64;
    v93 = v60;
LABEL_31:
    v67 = v66;
    if (!v64)
    {
      goto LABEL_33;
    }

    do
    {
      v66 = v67;
LABEL_36:
      v68 = __clz(__rbit64(v64));
      v64 &= v64 - 1;
      v69 = (v66 << 10) | (16 * v68);
      v70 = *(v60 + 56);
      v71 = (*(v60 + 48) + v69);
      v72 = *v71;
      v73 = v71[1];
      v74 = (v70 + v69);
      v75 = *v74;
      v76 = v74[1];
      objc_allocWithZone(type metadata accessor for AccessoryBatteryState());

      sub_1000A0CD8(v75, v76);

      sub_1000A0CD8(v75, v76);
      v77 = AccessoryBatteryState.init(data:name:)();
      if (v77)
      {
        v78 = v77;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v95 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        sub_1000A0D2C(v75, v76);

        v61 = v91;
        v60 = v93;
        goto LABEL_31;
      }

      sub_1000A0D2C(v75, v76);
      v67 = v66;
      v61 = v91;
      v60 = v93;
    }

    while (v64);
LABEL_33:
    while (1)
    {
      v66 = v67 + 1;
      if (__OFADD__(v67, 1))
      {
        break;
      }

      if (v66 >= v65)
      {

        v79 = _swiftEmptyArrayStorage;
        goto LABEL_48;
      }

      v64 = *(v61 + 8 * v66);
      ++v67;
      if (v64)
      {
        goto LABEL_36;
      }
    }

LABEL_52:
    __break(1u);
LABEL_53:
    swift_once();
  }

  sub_100095C84(v0 + 16, &unk_1002A6F40, &unk_10023BE90);
LABEL_20:
  (*(*(v0 + 200) + 16))(*(v0 + 208), *(v0 + 184) + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, *(v0 + 192));
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.error.getter();
  v43 = os_log_type_enabled(v41, v42);
  v45 = *(v0 + 200);
  v44 = *(v0 + 208);
  v46 = *(v0 + 192);
  if (v43)
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&_mh_execute_header, v41, v42, "Accessory not found", v47, 2u);
  }

  (*(v45 + 8))(v44, v46);
LABEL_47:
  v79 = 0;
LABEL_48:
  v82 = *(v0 + 272);
  v81 = *(v0 + 280);
  v83 = *(v0 + 248);
  v85 = *(v0 + 216);
  v84 = *(v0 + 224);
  v86 = *(v0 + 208);

  v87 = *(v0 + 8);

  return v87(v79);
}

void sub_100199F8C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v57 - v18;
  if (a2 || !a1)
  {
    (*(v13 + 16))(&v57 - v18, a3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v12);
    swift_errorRetain();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *&v63[0] = v39;
      *v38 = 136315138;
      *&v61 = a2;
      swift_errorRetain();
      sub_100095274(&qword_1002A9308, &qword_10023FF40);
      v40 = String.init<A>(describing:)();
      v42 = sub_1000952D4(v40, v41, v63);

      *(v38 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v36, v37, "Unable to read characteristic: %s", v38, 0xCu);
      sub_100095808(v39);
    }

    v43 = *(v13 + 8);
    v44 = v19;
LABEL_14:
    v43(v44, v12);
    return;
  }

  v20 = [a1 metadata];
  if (v20)
  {
    v21 = v20;
    v22 = [v20 format];

    if (v22)
    {
      v58 = v17;
      v23 = a5;
      v24 = a4;
      v25 = a6;
      v26 = v12;
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      if (v27 == 1635017060 && v29 == 0xE400000000000000)
      {

        v12 = v26;
        v32 = v25;
        v33 = v24;
        v34 = v23;
        v35 = v58;
      }

      else
      {
        v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v12 = v26;
        v32 = v25;
        v33 = v24;
        v34 = v23;
        v35 = v58;
        if ((v31 & 1) == 0)
        {
          return;
        }
      }

      if ([a1 value])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v61 = 0u;
        v62 = 0u;
      }

      v63[0] = v61;
      v63[1] = v62;
      if (!*(&v62 + 1))
      {
        sub_100095C84(v63, &qword_1002A9210, &unk_10023BE70);
        return;
      }

      if (swift_dynamicCast())
      {
        v45 = v59;
        v46 = v60;
        swift_beginAccess();

        sub_1000A0CD8(v45, v46);
        v47 = *(v33 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v61 = *(v33 + 16);
        *(v33 + 16) = 0x8000000000000000;
        sub_1001ECE58(v45, v46, v34, v32, isUniquelyReferenced_nonNull_native);

        *(v33 + 16) = v61;
        swift_endAccess();
        (*(v13 + 16))(v35, a3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v12);
        sub_1000A0CD8(v45, v46);
        v49 = Logger.logObject.getter();
        v50 = static os_log_type_t.default.getter();
        sub_1000A0D2C(v45, v46);
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          *&v63[0] = v52;
          *v51 = 136315138;
          v53 = sub_10013B46C(v45, v46);
          v55 = sub_1000952D4(v53, v54, v63);
          v58 = v12;
          v56 = v55;

          *(v51 + 4) = v56;
          _os_log_impl(&_mh_execute_header, v49, v50, "Battery Data: %s", v51, 0xCu);
          sub_100095808(v52);

          sub_1000A0D2C(v45, v46);
          (*(v13 + 8))(v35, v58);
          return;
        }

        sub_1000A0D2C(v45, v46);

        v43 = *(v13 + 8);
        v44 = v35;
        goto LABEL_14;
      }
    }
  }
}

void sub_10019A4F0(int a1)
{
  LODWORD(v73) = a1;
  v2 = type metadata accessor for UUID();
  v71 = *(v2 - 8);
  v3 = *(v71 + 64);
  v4 = __chkstk_darwin(v2);
  v6 = v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v63 - v7;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = __chkstk_darwin(v9);
  v14 = v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v63 - v15;
  v17 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__txnLock;
  v18 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__txnLock);

  os_unfair_lock_lock(v18 + 4);

  if (*(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_txn))
  {
    v19 = *(v1 + v17);

    os_unfair_lock_unlock(v19 + 4);
  }

  else
  {
    v67 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_txn;
    v68 = v17;
    v72 = v2;
    v66 = v14;
    v20 = v10[2];
    v70 = v1;
    v63[1] = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger;
    v21 = v9;
    v63[3] = v10 + 2;
    v63[2] = v20;
    v20(v16, v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v9);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v69 = v10;
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "starting keep-alive transaction", v24, 2u);
      v21 = v9;
      v10 = v69;
    }

    v25 = v10[1];
    v69 = v10 + 1;
    v63[4] = v25;
    v25(v16, v21);
    if (v73)
    {
      v26 = 10.0;
    }

    else
    {
      v26 = 0.0;
    }

    v27 = type metadata accessor for Transaction();
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    v30 = swift_allocObject();
    *(v30 + 48) = 0;
    *(v30 + 24) = 0;
    *(v30 + 32) = 0;
    *(v30 + 16) = 0;
    swift_unknownObjectWeakInit();
    *(v30 + 80) = 0;
    *(v30 + 88) = 1;
    Logger.init(subsystem:category:)();
    *(v30 + 64) = 0xD000000000000022;
    *(v30 + 72) = 0x8000000100234760;
    *(v30 + 56) = v26;
    *(v30 + 48) = &off_10027A7E0;
    v31 = v70;
    swift_unknownObjectWeakAssign();
    v32 = *(v31 + v67);
    *(v31 + v67) = v30;

    sub_100105518();

    v33 = *&v68[v31];

    os_unfair_lock_unlock(v33 + 4);

    v34 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
    v35 = *(v31 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

    os_unfair_lock_lock(v35 + 4);

    v36 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager;
    v37 = *(*(v31 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager) + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_firmwareUpdateManager);
    v38 = *(v31 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
    v39 = *(v31 + v34);
    v40 = v38;
    v41 = v37;

    os_unfair_lock_unlock(v39 + 4);

    if (!v38)
    {

      return;
    }

    v68 = v41;
    v63[0] = v21;
    v42 = *(v31 + v36);
    v73 = dispatch thunk of DockCoreAccessory.info.getter();
    v64 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
    v43 = *&v42[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
    OS_dispatch_semaphore.wait()();

    v44 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
    swift_beginAccess();
    v67 = v42;
    v45 = *&v42[v44];
    v46 = *(v45 + 16);

    v65 = v40;
    if (v46)
    {
      v47 = 0;
      v48 = v45 + 32;
      v49 = (v71 + 8);
      while (v47 < *(v45 + 16))
      {
        sub_1000A097C(v48, v74);
        v50 = *(*sub_1000A09E0(v74, v74[3]) + 24);
        DockCoreInfo.identifier.getter();

        DockCoreInfo.identifier.getter();
        LOBYTE(v50) = static UUID.== infix(_:_:)();
        v51 = *v49;
        v52 = v72;
        (*v49)(v6, v72);
        v51(v8, v52);
        if (v50)
        {

          v53 = v67;
          v55 = *(v67 + v64);
          OS_dispatch_semaphore.signal()();

          sub_1000A097C(v74, &v75);
          sub_100095808(v74);
          goto LABEL_19;
        }

        ++v47;
        sub_100095808(v74);
        v48 += 40;
        if (v46 == v47)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_16:

      v53 = v67;
      v54 = *(v67 + v64);
      OS_dispatch_semaphore.signal()();

      v77 = 0;
      v75 = 0u;
      v76 = 0u;
LABEL_19:

      v56 = v68;
      if (*(&v76 + 1))
      {
        v57 = v65;
        sub_100095274(&unk_1002A7A90, &unk_10023C960);
        type metadata accessor for DaemonAccessory();
        if (swift_dynamicCast())
        {
          v58 = v74[0];
          v59 = *(v74[0] + 16);
          if (v59)
          {
            v60 = *&v59[OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral];
            if (v60)
            {
              v61 = v59;
              if ([v60 state] == 2)
              {
                sub_10014E948(v58, 0, 0, 0);

                v62 = *&v56[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_reachabilityTimer];
                *&v56[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_reachabilityTimer] = 0;

                return;
              }
            }

            else
            {
            }
          }

          else
          {
          }
        }

        else
        {
        }
      }

      else
      {

        sub_100095C84(&v75, &unk_1002A6F40, &unk_10023BE90);
      }
    }
  }
}

void sub_10019AE80()
{
  v1 = type metadata accessor for UUID();
  v100 = *(v1 - 8);
  v2 = *(v100 + 64);
  v3 = __chkstk_darwin(v1);
  v5 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v88 - v6;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = __chkstk_darwin(v8);
  v98 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v97 = &v88 - v14;
  __chkstk_darwin(v13);
  v16 = &v88 - v15;
  v17 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__txnLock;
  v18 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__txnLock);

  os_unfair_lock_lock(v18 + 4);

  v19 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_txn;
  if (*(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_txn))
  {
    v101 = v0;
    v102 = v17;
    v20 = v9[2];
    v88 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger;
    v90 = v9 + 2;
    v89 = v20;
    v20(v16, v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v8);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v99 = v9;
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "no more elegible clients, tearing down os_transaction", v23, 2u);
      v9 = v99;
    }

    v25 = v9[1];
    v24 = v9 + 1;
    v91 = v25;
    v25(v16, v8);
    v26 = v101;
    v27 = *(v101 + v19);
    v96 = v8;
    if (v27)
    {

      sub_1001059EC();

      v28 = *(v26 + v19);
    }

    v30 = v102;
    *(v26 + v19) = 0;

    v31 = *&v30[v26];

    os_unfair_lock_unlock(v31 + 4);

    v32 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
    v33 = *(v26 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

    os_unfair_lock_lock(v33 + 4);

    v34 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager;
    v35 = *(*(v26 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager) + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_firmwareUpdateManager);
    v36 = v26;
    v37 = *(v26 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
    v38 = *(v36 + v32);
    v39 = v37;
    v40 = v35;

    os_unfair_lock_unlock(v38 + 4);

    if (!v37)
    {

      return;
    }

    v95 = v40;
    v99 = v24;
    v41 = *(v36 + v34);
    v42 = v39;
    v43 = v41;
    v94 = v42;
    v102 = dispatch thunk of DockCoreAccessory.info.getter();
    v92 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
    v44 = *&v43[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
    OS_dispatch_semaphore.wait()();

    v45 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
    swift_beginAccess();
    v93 = v43;
    v46 = *&v43[v45];
    v47 = *(v46 + 16);

    if (!v47)
    {
LABEL_15:

      v53 = v93;
      v54 = *&v93[v92];
      OS_dispatch_semaphore.signal()();

      v106 = 0;
      v104 = 0u;
      v105 = 0u;
LABEL_18:

      v56 = v96;
      v57 = v101;
      if (!*(&v105 + 1))
      {
        v63 = v94;

        sub_100095C84(&v104, &unk_1002A6F40, &unk_10023BE90);
        return;
      }

      sub_100095274(&unk_1002A7A90, &unk_10023C960);
      type metadata accessor for DaemonAccessory();
      if (swift_dynamicCast())
      {
        v58 = v103[0];
        v59 = *(v103[0] + 16);
        if (!v59)
        {

          v64 = v94;
          return;
        }

        v60 = *&v59[OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral];
        if (v60)
        {
          v61 = v59;
          if ([v60 state] == 2)
          {
            v62 = v95;
            sub_10014E948(v58, 0, 0, 0);
            v67 = *&v62[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_reachabilityTimer];
            *&v62[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_reachabilityTimer] = 0;

            v68 = v57 + v88;
            v69 = v56;
            v89(v98, v68, v56);
            v70 = v62;
            v71 = v94;
            v72 = Logger.logObject.getter();
            v73 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v72, v73))
            {
              v75 = swift_slowAlloc();
              v76 = swift_slowAlloc();
              *v75 = 138412546;
              v77 = dispatch thunk of DockCoreAccessory.info.getter();
              *(v75 + 4) = v77;
              *v76 = v77;
              *(v75 + 12) = 2048;
              *(v75 + 14) = 0x404E000000000000;
              _os_log_impl(&_mh_execute_header, v72, v73, "Setting accessory reachable %@ after %f secs", v75, 0x16u);
              sub_100095C84(v76, &unk_1002A6F60, &unk_10023C4E0);
            }

            v91(v98, v69);
            type metadata accessor for DockCoreManager();
            v78 = static DockCoreManager.localFirmwarePath.getter();
            v80 = v79;
            v81 = *(v58 + 40);
            v82 = swift_allocObject();
            *(v82 + 16) = v70;
            *(v82 + 24) = v58;
            *(v82 + 32) = 1;
            *(v82 + 40) = v78;
            *(v82 + 48) = v80;
            v83 = objc_allocWithZone(type metadata accessor for RepeatingTimer());
            v84 = v70;
            v85 = v81;
            v86 = RepeatingTimer.init(interval:fireOnce:queue:_:)();

            v87 = *&v84[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_reachabilityTimer];
            *&v84[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_reachabilityTimer] = v86;
          }

          else
          {

            v66 = v94;
          }

          return;
        }
      }

      v65 = v94;

      return;
    }

    v48 = 0;
    v49 = v46 + 32;
    v50 = (v100 + 8);
    while (v48 < *(v46 + 16))
    {
      sub_1000A097C(v49, v103);
      v51 = *(*sub_1000A09E0(v103, v103[3]) + 24);
      DockCoreInfo.identifier.getter();

      DockCoreInfo.identifier.getter();
      LOBYTE(v51) = static UUID.== infix(_:_:)();
      v52 = *v50;
      (*v50)(v5, v1);
      v52(v7, v1);
      if (v51)
      {

        v53 = v93;
        v55 = *&v93[v92];
        OS_dispatch_semaphore.signal()();

        sub_1000A097C(v103, &v104);
        sub_100095808(v103);
        goto LABEL_18;
      }

      ++v48;
      sub_100095808(v103);
      v49 += 40;
      if (v47 == v48)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v29 = *&v17[v0];

    os_unfair_lock_unlock(v29 + 4);
  }
}

unint64_t sub_10019B91C(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &token - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &token - v9;
  [a1 auditToken];
  v11 = SecTaskCreateWithAuditToken(0, &token);
  if (!v11)
  {
    (*(v4 + 16))(v10, v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v3);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Failed to create audit token task for bundle identifier", v21, 2u);
    }

    (*(v4 + 8))(v10, v3);
    goto LABEL_13;
  }

  v12 = v11;
  *token.val = 0;
  v13 = SecTaskCopySigningIdentifier(v11, &token);
  if (!v13)
  {
    (*(v4 + 16))(v8, v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v3);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Failed fetching signing identifier for new connection", v24, 2u);
    }

    (*(v4 + 8))(v8, v3);
LABEL_13:

    return 0;
  }

  v14 = v13;
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  if (v15 == 0xD000000000000017 && 0x8000000100234720 == v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0xD000000000000012;
  }

  else
  {

    return v15;
  }
}

unint64_t sub_10019BC70(int a1, char a2)
{
  v4 = v2;
  if (a2)
  {
    v6 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__outstandingTrajectoryNotificationCount;
    swift_beginAccess();
    if (!*(*(v2 + v6) + 16))
    {
      goto LABEL_14;
    }

    sub_10016D548(a1);
    if ((v7 & 1) == 0)
    {
      goto LABEL_14;
    }

    swift_beginAccess();
    v8 = *(v2 + v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v2 + v6);
    v35 = *(v4 + v6);
    *(v4 + v6) = 0x8000000000000000;
    result = sub_10016D548(a1);
    v13 = *(v10 + 16);
    v14 = (v12 & 1) == 0;
    v15 = __OFADD__(v13, v14);
    v16 = v13 + v14;
    if (!v15)
    {
      v3 = v12;
      if (*(v10 + 24) >= v16)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      else
      {
        sub_1001E83BC(v16, isUniquelyReferenced_nonNull_native);
        result = sub_10016D548(a1);
        if ((v3 & 1) != (v17 & 1))
        {
LABEL_13:
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
LABEL_14:
          swift_beginAccess();
          v26 = *(v4 + v6);
          v27 = swift_isUniquelyReferenced_nonNull_native();
          v36 = *(v4 + v6);
          *(v4 + v6) = 0x8000000000000000;
          sub_1001EC790(1, a1, v27);
          v28 = v36;
LABEL_24:
          *(v4 + v6) = v28;
          return swift_endAccess();
        }
      }

      if ((v3 & 1) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_17;
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v6 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__outstandingActuationNotificationCount;
  swift_beginAccess();
  if (!*(*(v2 + v6) + 16))
  {
    goto LABEL_14;
  }

  sub_10016D548(a1);
  if ((v18 & 1) == 0)
  {
    goto LABEL_14;
  }

  swift_beginAccess();
  v19 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *(v2 + v6);
  v35 = *(v4 + v6);
  *(v4 + v6) = 0x8000000000000000;
  result = sub_10016D548(a1);
  v22 = *(v20 + 16);
  v23 = (v21 & 1) == 0;
  v15 = __OFADD__(v22, v23);
  v24 = v22 + v23;
  if (v15)
  {
    goto LABEL_26;
  }

  v3 = v21;
  if (*(v20 + 24) >= v24)
  {
    goto LABEL_20;
  }

  sub_1001E83BC(v24, isUniquelyReferenced_nonNull_native);
  result = sub_10016D548(a1);
  if ((v3 & 1) != (v25 & 1))
  {
    goto LABEL_13;
  }

LABEL_21:
  if (v3)
  {
    while (1)
    {
      v28 = v35;
      v29 = *(v35 + 56);
      v32 = *(v29 + 8 * result);
      v15 = __OFADD__(v32, 1);
      v31 = v32 + 1;
      if (!v15)
      {
        break;
      }

LABEL_27:
      __break(1u);
LABEL_28:
      v33 = result;
      sub_1001EF6AC();
      result = v33;
      if (v3)
      {
LABEL_17:
        v28 = v35;
        v29 = *(v35 + 56);
        v30 = *(v29 + 8 * result);
        v15 = __OFADD__(v30, 1);
        v31 = v30 + 1;
        if (!v15)
        {
          break;
        }

        __break(1u);
LABEL_20:
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_21;
        }
      }

      else
      {
LABEL_29:
        __break(1u);
      }

      v34 = result;
      sub_1001EF6AC();
      result = v34;
      if ((v3 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    *(v29 + 8 * result) = v31;
    goto LABEL_24;
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_10019BF0C(int a1, char a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v7 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v7 + 4);

  if (a2)
  {
    v8 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__outstandingTrajectoryNotificationCount;
    swift_beginAccess();
    if (!*(*(v3 + v8) + 16))
    {
      goto LABEL_14;
    }

    sub_10016D548(a1);
    if ((v9 & 1) == 0)
    {
      goto LABEL_14;
    }

    swift_beginAccess();
    v10 = *(v3 + v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v3 + v8);
    v38 = v12;
    *(v3 + v8) = 0x8000000000000000;
    result = sub_10016D548(a1);
    v15 = *(v12 + 16);
    v16 = (v14 & 1) == 0;
    v17 = __OFADD__(v15, v16);
    v18 = v15 + v16;
    if (!v17)
    {
      LOBYTE(v7) = v14;
      if (*(v12 + 24) >= v18)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      else
      {
        sub_1001E83BC(v18, isUniquelyReferenced_nonNull_native);
        result = sub_10016D548(a1);
        if ((v7 & 1) != (v19 & 1))
        {
LABEL_13:
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
LABEL_14:
          swift_beginAccess();
          v28 = *(v3 + v8);
          v29 = swift_isUniquelyReferenced_nonNull_native();
          v39 = *(v3 + v8);
          *(v3 + v8) = 0x8000000000000000;
          sub_1001EC790(0, a1, v29);
          v30 = v39;
LABEL_24:
          *(v3 + v8) = v30;
          swift_endAccess();
          v35 = *(v3 + v6);

          os_unfair_lock_unlock(v35 + 4);
        }
      }

      if ((v7 & 1) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_17;
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v8 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__outstandingActuationNotificationCount;
  swift_beginAccess();
  if (!*(*(v3 + v8) + 16))
  {
    goto LABEL_14;
  }

  sub_10016D548(a1);
  if ((v20 & 1) == 0)
  {
    goto LABEL_14;
  }

  swift_beginAccess();
  v21 = *(v3 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *(v3 + v8);
  v38 = v22;
  *(v3 + v8) = 0x8000000000000000;
  result = sub_10016D548(a1);
  v24 = *(v22 + 16);
  v25 = (v23 & 1) == 0;
  v17 = __OFADD__(v24, v25);
  v26 = v24 + v25;
  if (v17)
  {
    goto LABEL_26;
  }

  LOBYTE(v7) = v23;
  if (*(v22 + 24) >= v26)
  {
    goto LABEL_20;
  }

  sub_1001E83BC(v26, isUniquelyReferenced_nonNull_native);
  result = sub_10016D548(a1);
  if ((v7 & 1) != (v27 & 1))
  {
    goto LABEL_13;
  }

LABEL_21:
  if (v7)
  {
    while (1)
    {
      v30 = v38;
      v31 = *(v38 + 56);
      v34 = *(v31 + 8 * result);
      v17 = __OFSUB__(v34, 1);
      v33 = v34 - 1;
      if (!v17)
      {
        break;
      }

LABEL_27:
      __break(1u);
LABEL_28:
      v36 = result;
      sub_1001EF6AC();
      result = v36;
      if (v7)
      {
LABEL_17:
        v30 = v38;
        v31 = *(v38 + 56);
        v32 = *(v31 + 8 * result);
        v17 = __OFSUB__(v32, 1);
        v33 = v32 - 1;
        if (!v17)
        {
          break;
        }

        __break(1u);
LABEL_20:
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_21;
        }
      }

      else
      {
LABEL_29:
        __break(1u);
      }

      v37 = result;
      sub_1001EF6AC();
      result = v37;
      if ((v7 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    *(v31 + 8 * result) = v33;
    goto LABEL_24;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_10019C1F4(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v87 = a1;
  v7 = sub_100095274(&qword_1002A7C88, &qword_10023CC10);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v86 = (v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v12 = v81 - v11;
  v13 = type metadata accessor for Logger();
  v85 = *(v13 - 8);
  v14 = *(v85 + 64);
  __chkstk_darwin(v13);
  v16 = v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  v88 = v17;
  v89 = v18;
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v25 = v81 - v24;
  __chkstk_darwin(v23);
  v27 = v81 - v26;
  v28 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__rateLimitConfiguration);
  if (!*(v28 + 16))
  {
    return 0;
  }

  v84 = a2;
  v29 = sub_10016D4D0(a2, a3);
  if ((v30 & 1) == 0)
  {
    return 0;
  }

  v31 = *(*(v28 + 56) + 8 * v29);
  v82 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v83 = a3;
  v32 = *(v4 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v32 + 4);

  v33 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__rateLimitXPCTrackingClients;
  swift_beginAccess();
  v34 = *(v4 + v33);
  v35 = v87;
  if (*(v34 + 16) && (sub_10016D548(v87), (v36 & 1) != 0))
  {
    v37 = sub_10016D548(v35);
    if ((v38 & 1) == 0)
    {
      __break(1u);
      goto LABEL_36;
    }

    v39 = *(*(v34 + 56) + 8 * v37);
    if (*(v39 + 16))
    {

      v40 = sub_10016D4D0(v84, v83);
      if (v41)
      {
        v42 = v89;
        v43 = *(v39 + 56) + *(v89 + 72) * v40;
        v81[0] = *(v89 + 16);
        v81[1] = v89 + 16;
        (v81[0])(v27, v43, v88);

        Date.timeIntervalSinceNow.getter();
        if (fabs(v44) < 1.0 / v31)
        {
          v45 = v85;
          (*(v85 + 16))(v16, v4 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v13);
          (v81[0])(v25, v27, v88);
          v46 = v83;

          v47 = Logger.logObject.getter();
          v48 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v47, v48))
          {
            v49 = swift_slowAlloc();
            v86 = swift_slowAlloc();
            v93 = v86;
            *v49 = 136315906;
            *(v49 + 4) = sub_1000952D4(v84, v46, &v93);
            *(v49 + 12) = 1024;
            *(v49 + 14) = v87;
            *(v49 + 18) = 1024;
            v50 = 1;
            *(v49 + 20) = 1;
            *(v49 + 24) = 2048;
            v87 = v48;
            Date.timeIntervalSinceNow.getter();
            v52 = v51;
            v53 = v47;
            v54 = *(v89 + 8);
            v54(v25, v88);
            *(v49 + 26) = v52;
            _os_log_impl(&_mh_execute_header, v53, v87, "rateLimit: %s %d %{BOOL}d %f", v49, 0x22u);
            sub_100095808(v86);

            (*(v85 + 8))(v16, v13);
            v54(v27, v88);
          }

          else
          {

            v78 = *(v89 + 8);
            v79 = v25;
            v80 = v88;
            v78(v79, v88);
            (*(v45 + 8))(v16, v13);
            v78(v27, v80);
            v50 = 1;
          }

          v75 = v82;
LABEL_27:
          v77 = *(v4 + v75);

          os_unfair_lock_unlock(v77 + 4);

          return v50;
        }

        (*(v42 + 8))(v27, v88);
        v35 = v87;
      }

      else
      {
      }
    }
  }

  else
  {
    v56 = sub_1001F3330(_swiftEmptyArrayStorage);
    swift_beginAccess();
    v57 = *(v4 + v33);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v92 = *(v4 + v33);
    *(v4 + v33) = 0x8000000000000000;
    sub_1001EC634(v56, v35, isUniquelyReferenced_nonNull_native);
    *(v4 + v33) = v92;
    swift_endAccess();
  }

  Date.init()();
  v59 = v88;
  (*(v89 + 56))(v12, 0, 1, v88);
  swift_beginAccess();
  v60 = *(v4 + v33);
  v61 = swift_isUniquelyReferenced_nonNull_native();
  v92 = *(v4 + v33);
  v62 = v92;
  *(v4 + v33) = 0x8000000000000000;
  v64 = sub_10016D548(v35);
  v65 = *(v62 + 16);
  v66 = (v63 & 1) == 0;
  v67 = v65 + v66;
  if (__OFADD__(v65, v66))
  {
    __break(1u);
    goto LABEL_33;
  }

  LOBYTE(v16) = v63;
  if (*(v62 + 24) >= v67)
  {
    goto LABEL_18;
  }

  sub_1001E83A8(v67, v61);
  v68 = sub_10016D548(v35);
  v35 = v84;
  if ((v16 & 1) == (v69 & 1))
  {
    v64 = v68;
    while ((v16 & 1) == 0)
    {
      while (1)
      {
        __break(1u);
LABEL_18:
        v35 = v84;
        if ((v61 & 1) == 0)
        {
          break;
        }

        if (v16)
        {
          goto LABEL_20;
        }
      }

LABEL_33:
      sub_1001EF698();
    }

LABEL_20:
    v91 = *(*(v92 + 56) + 8 * v64);
    v70 = v89;
    if ((*(v89 + 48))(v12, 1, v59) == 1)
    {
      sub_100095C84(v12, &qword_1002A7C88, &qword_10023CC10);
      v71 = v86;
      sub_1001E4FE4(v35, v83, v86);
      sub_100095C84(v71, &qword_1002A7C88, &qword_10023CC10);
      v72 = v91;
    }

    else
    {
      (*(v70 + 32))(v22, v12, v59);
      v73 = v91;
      v74 = swift_isUniquelyReferenced_nonNull_native();
      v90 = v73;
      sub_1001EC4B4(v22, v35, v83, v74);
      v72 = v90;
    }

    v75 = v82;
    v76 = v92;
    if (v72)
    {
      *(*(v92 + 56) + 8 * v64) = v72;
    }

    else
    {
      sub_1001F7A38(v64, v92);
    }

    *(v4 + v33) = v76;
    swift_endAccess();
    v50 = 0;
    goto LABEL_27;
  }

LABEL_36:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10019C9B8(int a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v10 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v10 + 4);

  v11 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__rateLimitXPCTrackingClients;
  swift_beginAccess();
  v12 = *(v2 + v11);
  if (*(v12 + 16))
  {
    v13 = sub_10016D548(a1);
    if (v14)
    {
      if (*(*(*(v12 + 56) + 8 * v13) + 16))
      {
        (*(v5 + 16))(v8, v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v4);
        v15 = Logger.logObject.getter();
        v16 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          *v17 = 67109120;
          *(v17 + 4) = a1;
          _os_log_impl(&_mh_execute_header, v15, v16, "Cleaning rate-limiting tracking for %d", v17, 8u);
        }

        (*(v5 + 8))(v8, v4);
        v18 = sub_1001F3330(_swiftEmptyArrayStorage);
        swift_beginAccess();
        v19 = *(v2 + v11);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v24 = *(v2 + v11);
        *(v2 + v11) = 0x8000000000000000;
        sub_1001EC634(v18, a1, isUniquelyReferenced_nonNull_native);
        *(v2 + v11) = v24;
        swift_endAccess();
      }
    }
  }

  v21 = *(v2 + v9);

  os_unfair_lock_unlock(v21 + 4);
}

uint64_t sub_10019CC30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_10019CC7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10019CCE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_10019CD28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_10019CD88(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v47 = *(v2 - 8);
  v48 = v2;
  v3 = *(v47 + 64);
  __chkstk_darwin(v2);
  v46 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Logger();
  v51 = *(v5 - 8);
  v52 = v5;
  v6 = *(v51 + 64);
  v7 = __chkstk_darwin(v5);
  v8 = __chkstk_darwin(v7);
  v10 = &v45 - v9;
  __chkstk_darwin(v8);
  v49 = &v45 - v11;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  __chkstk_darwin(v15);
  v17 = &v45 - v16;
  (*(v13 + 16))(&v45 - v16, a1, v12);
  v18 = objc_allocWithZone(NSData);
  v19 = sub_1000E14C4(v17, 2);
  v20 = v50;
  v21 = v51;
  v22 = v10;
  v23 = v52;
  v24 = v19;
  v25 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  sub_100095B94(0, &qword_1002A7AE0, NSKeyedUnarchiver_ptr);
  type metadata accessor for DockCoreAccessory();
  v28 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
  if (v28)
  {
    v29 = v28;
    (*(v21 + 16))(v22, v20 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v23);
    v50 = v29;
    v30 = v29;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v49 = v22;
      v34 = v33;
      v35 = swift_slowAlloc();
      v53 = v35;
      *v34 = 136315138;
      v36 = dispatch thunk of DockCoreAccessory.info.getter();
      v37 = v46;
      DockCoreInfo.identifier.getter();

      sub_1001A2FAC(&unk_1002A6F90, &type metadata accessor for UUID);
      v38 = v25;
      v39 = v48;
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v41;
      (*(v47 + 8))(v37, v39);
      v43 = sub_1000952D4(v40, v42, &v53);

      *(v34 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v31, v32, "Loaded paired accessory for %s.", v34, 0xCu);
      sub_100095808(v35);

      sub_1000A0D2C(v38, v27);

      (*(v51 + 8))(v49, v52);
    }

    else
    {
      sub_1000A0D2C(v25, v27);

      (*(v21 + 8))(v22, v52);
    }

    return v50;
  }

  else
  {
    sub_1000A0D2C(v25, v27);
    return 0;
  }
}

uint64_t sub_10019D5B8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1001A2FAC(&qword_1002A9810, &type metadata accessor for UUID);
  v36 = a2;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_1001A2FAC(&qword_1002A8728, &type metadata accessor for UUID);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_10019DFA4(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_10019D898(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
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

    sub_10019E248(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_10019D9E8(uint64_t a1)
{
  v2 = v1;
  v41 = type metadata accessor for UUID();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_100095274(&qword_1002AB4B0, &unk_10023F0C8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
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
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_1001A2FAC(&qword_1002A9810, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
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

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_10019DD44(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100095274(&qword_1002AB460, &qword_10023F020);
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

uint64_t sub_10019DFA4(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10019D9E8(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_10019E3C8();
      goto LABEL_12;
    }

    sub_10019E75C(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_1001A2FAC(&qword_1002A9810, &type metadata accessor for UUID);
  v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_1001A2FAC(&qword_1002A8728, &type metadata accessor for UUID);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_10019E248(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
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
    sub_10019DD44(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_10019E600();
      goto LABEL_16;
    }

    sub_10019EA78(v8 + 1);
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

void *sub_10019E3C8()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100095274(&qword_1002AB4B0, &unk_10023F0C8);
  v7 = *v0;
  v8 = static _SetStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

void *sub_10019E600()
{
  v1 = v0;
  sub_100095274(&qword_1002AB460, &qword_10023F020);
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

uint64_t sub_10019E75C(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for UUID();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_100095274(&qword_1002AB4B0, &unk_10023F0C8);
  v10 = static _SetStorage.resize(original:capacity:move:)();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_1001A2FAC(&qword_1002A9810, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v10;
  }

  return result;
}

uint64_t sub_10019EA78(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100095274(&qword_1002AB460, &qword_10023F020);
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

uint64_t sub_10019ECB0(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v3 & 0x8000000000000000) != 0) || (v3 & 0x4000000000000000) != 0 || a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v3 >> 62)
    {
      _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    *v1 = result;
  }

  return result;
}

uint64_t sub_10019ED6C(uint64_t a1)
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

uint64_t sub_10019EE0C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_10019EEB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1001A2FAC(&qword_1002A9810, &type metadata accessor for UUID);
  v35 = a1;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v33 = v11 + 56;
  v34 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v3;
    v31 = v7;
    v32 = a2;
    v17 = ~v15;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    while (1)
    {
      v18(v10, *(v34 + 48) + v21 * v16, v6);
      sub_1001A2FAC(&qword_1002A8728, &type metadata accessor for UUID);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v23 = 1;
        v7 = v31;
        a2 = v32;
        return (*(v7 + 56))(a2, v23, 1, v6);
      }
    }

    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v36 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10019E3C8();
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_10019F29C(v16);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

uint64_t sub_10019F160(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10019E600();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_10019F5A4(v9);
  *v2 = v20;
  return v13;
}

uint64_t sub_10019F29C(int64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = v4[8];
  result = __chkstk_darwin(v3);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;
    v14 = *v1;

    v15 = _HashTable.previousHole(before:)();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v16 = v13;
      v17 = (v15 + 1) & v13;
      v38 = v4[2];
      v39 = v4 + 2;
      v18 = v4[9];
      v36 = (v4 + 1);
      v37 = v10;
      v19 = v18;
      do
      {
        v20 = v19;
        v21 = v19 * v12;
        v38(v8, *(v9 + 48) + v19 * v12, v3);
        v22 = v9;
        v23 = v17;
        v24 = v16;
        v25 = v22;
        v26 = *(v22 + 40);
        sub_1001A2FAC(&qword_1002A9810, &type metadata accessor for UUID);
        v27 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v36)(v8, v3);
        v28 = v27 & v24;
        v16 = v24;
        v17 = v23;
        if (a1 >= v23)
        {
          if (v28 >= v23 && a1 >= v28)
          {
LABEL_16:
            v9 = v25;
            v31 = *(v25 + 48);
            v19 = v20;
            v32 = v20 * a1;
            if (v20 * a1 < v21 || v31 + v20 * a1 >= (v31 + v21 + v20))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v12;
            }

            else
            {
              a1 = v12;
              if (v32 != v21)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v12;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v28 >= v23 || a1 >= v28)
        {
          goto LABEL_16;
        }

        v9 = v25;
        v19 = v20;
LABEL_5:
        v12 = (v12 + 1) & v16;
        v10 = v37;
      }

      while (((*(v37 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
    }

    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v33 = *(v9 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v35;
    ++*(v9 + 36);
  }

  return result;
}

unint64_t sub_10019F5A4(unint64_t result)
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
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v15 = Hasher._finalize()();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
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

uint64_t sub_10019F794(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t sub_10019F820(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 32);
  v3 = ((1 << v2) + 63) >> 6;
  if ((v2 & 0x3Fu) > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    __chkstk_darwin(a1);
    v5 = &v21 - ((v4 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v5, v4);
    v6 = 0;
    v7 = 0;
    v8 = 1 << *(v1 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v1 + 64);
    v11 = (v8 + 63) >> 6;
    while (v10)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v13 = v12 | (v7 << 6);
LABEL_13:
      v16 = *(*(v1 + 56) + 8 * v13);
      if (*(v16 + 56) && *(v16 + 48) && (*(v16 + 40) & 1) == 0)
      {
        *&v5[(v13 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v13;
        if (__OFADD__(v6++, 1))
        {
          __break(1u);
          return sub_1001CA578(v5, v3, v6, v1);
        }
      }

      else
      {
        *(v16 + 40) = 1;
      }
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        return sub_1001CA578(v5, v3, v6, v1);
      }

      v15 = *(v1 + 64 + 8 * v7);
      ++v14;
      if (v15)
      {
        v10 = (v15 - 1) & v15;
        v13 = __clz(__rbit64(v15)) | (v7 << 6);
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v19 = swift_slowAlloc();
  v20 = sub_10019FA3C(v19, v3, v1);

  return v20;
}

char *sub_10019FA3C(char *result, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = 0;
    v7 = 0;
    v8 = 1 << *(a3 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(a3 + 64);
    v11 = (v8 + 63) >> 6;
    while (v10)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v13 = v12 | (v7 << 6);
LABEL_15:
      v16 = *(*(a3 + 56) + 8 * v13);
      if (*(v16 + 56) && *(v16 + 48) && (*(v16 + 40) & 1) == 0)
      {
        *&result[(v13 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v13;
        if (__OFADD__(v6++, 1))
        {
          __break(1u);
LABEL_21:
          v18 = sub_1001CA578(result, a2, v6, a3);

          return v18;
        }
      }

      else
      {
        *(v16 + 40) = 1;
      }
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_21;
      }

      v15 = *(a3 + 64 + 8 * v7);
      ++v14;
      if (v15)
      {
        v10 = (v15 - 1) & v15;
        v13 = __clz(__rbit64(v15)) | (v7 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_10019FB84(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = sub_1001A0668(v8);
  v8[9] = sub_10019FDE4(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1001A34C4;
}

uint64_t (*sub_10019FC30(uint64_t *a1, unsigned __int8 a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_1001A0668(v6);
  v6[9] = sub_10019FF68(v6 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_1001A34C4;
}

uint64_t (*sub_10019FCD4(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = sub_1001A0690(v8);
  v8[9] = sub_1001A0444(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_10019FD80;
}

void sub_10019FD84(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_10019FDE4(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, uint64_t a2)
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_10016D4D0(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_1001EE308();
      v13 = v21;
      goto LABEL_11;
    }

    sub_1001E6468(v18, a4 & 1);
    v22 = *v5;
    v13 = sub_10016D4D0(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v24 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v24 = 0;
  }

  *v11 = v24;
  return sub_10019FF3C;
}

void (*sub_10019FF68(uint64_t *a1, unsigned __int8 a2, char a3))(uint64_t *a1, char a2)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x58uLL);
  }

  v9 = v8;
  *a1 = v8;
  *v8 = v3;
  *(v8 + 80) = a2;
  v10 = type metadata accessor for DKAPIUsageMetric();
  *(v9 + 8) = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  *(v9 + 16) = v11;
  v13 = *(v11 + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v9 + 24) = swift_coroFrameAlloc();
    *(v9 + 32) = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    *(v9 + 24) = malloc(*(v11 + 64));
    *(v9 + 32) = malloc(v13);
    v14 = malloc(v13);
  }

  *(v9 + 40) = v14;
  v15 = *(*(sub_100095274(&unk_1002AC8D0, &qword_10023F088) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v9 + 48) = swift_coroFrameAlloc();
    *(v9 + 56) = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    *(v9 + 48) = malloc(v15);
    *(v9 + 56) = malloc(v15);
    v16 = malloc(v15);
  }

  v17 = v16;
  *(v9 + 64) = v16;
  v18 = *v4;
  v19 = sub_10016D898(a2);
  *(v9 + 81) = v20 & 1;
  v21 = *(v18 + 16);
  v22 = (v20 & 1) == 0;
  v23 = __OFADD__(v21, v22);
  v24 = v21 + v22;
  if (v23)
  {
    __break(1u);
    goto LABEL_22;
  }

  v25 = v20;
  v26 = *(v18 + 24);
  if (v26 < v24 || (a3 & 1) == 0)
  {
    if (v26 >= v24 && (a3 & 1) == 0)
    {
      v27 = v19;
      sub_1001EE604();
      v19 = v27;
      goto LABEL_17;
    }

    sub_1001E69BC(v24, a3 & 1);
    v28 = *v4;
    v19 = sub_10016D898(a2);
    if ((v25 & 1) == (v29 & 1))
    {
      goto LABEL_17;
    }

LABEL_22:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_17:
  *(v9 + 72) = v19;
  if (v25)
  {
    (*(v12 + 32))(v17, *(*v4 + 56) + *(v12 + 72) * v19, v10);
    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  (*(v12 + 56))(v17, v30, 1, v10);
  return sub_1001A0224;
}

void sub_1001A0224(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 8);
  v4 = (*(*a1 + 16) + 48);
  v5 = *(*a1 + 64);
  if (a2)
  {
    v6 = *(v2 + 48);
    sub_1000B5150(v5, v6, &unk_1002AC8D0, &qword_10023F088);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 81);
    v9 = *(v2 + 48);
    if (v7 != 1)
    {
      v10 = *v2;
      v11 = *(*(v2 + 16) + 32);
      v11(*(v2 + 32), *(v2 + 48), *(v2 + 8));
      v12 = *v10;
      v13 = *(v2 + 72);
      v14 = *(v2 + 32);
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v15 = *(v2 + 24);
        v16 = *(v2 + 80);
        v11(v15, v14, *(v2 + 8));
        sub_1001ED724(v13, v16, v15, v12);
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v17 = *(v2 + 56);
    sub_1000B5150(v5, v17, &unk_1002AC8D0, &qword_10023F088);
    v18 = (*v4)(v17, 1, v3);
    v8 = *(v2 + 81);
    v9 = *(v2 + 56);
    if (v18 != 1)
    {
      v19 = *v2;
      v11 = *(*(v2 + 16) + 32);
      v11(*(v2 + 40), *(v2 + 56), *(v2 + 8));
      v12 = *v19;
      v13 = *(v2 + 72);
      v14 = *(v2 + 40);
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      v11(v12[7] + *(*(v2 + 16) + 72) * v13, v14, *(v2 + 8));
      goto LABEL_10;
    }
  }

  sub_100095C84(v9, &unk_1002AC8D0, &qword_10023F088);
  if (v8)
  {
    sub_1001EA6B8(*(v2 + 72), **v2);
  }

LABEL_10:
  v20 = *(v2 + 56);
  v21 = *(v2 + 64);
  v23 = *(v2 + 40);
  v22 = *(v2 + 48);
  v25 = *(v2 + 24);
  v24 = *(v2 + 32);
  sub_100095C84(v21, &unk_1002AC8D0, &qword_10023F088);
  free(v21);
  free(v20);
  free(v22);
  free(v23);
  free(v24);
  free(v25);

  free(v2);
}

void (*sub_1001A0444(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, uint64_t a2)
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_10016D4D0(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_1001EE86C();
      v13 = v21;
      goto LABEL_11;
    }

    sub_1001E6D0C(v18, a4 & 1);
    v22 = *v5;
    v13 = sub_10016D4D0(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v24 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v24 = 0;
  }

  *v11 = v24;
  return sub_10019FF3C;
}

void sub_1001A059C(uint64_t **a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = **a1;
  v6 = *(*a1 + 40);
  if (v5)
  {
    v7 = v4[4];
    v8 = *v4[3];
    if (v6)
    {
      *(*(v8 + 56) + 8 * v7) = v5;
    }

    else
    {
      a3(v7, v4[1], v4[2], v5, v8);
    }
  }

  else if ((*a1)[5])
  {
    v9 = v4[4];
    v10 = *v4[3];
    sub_1001A2B28(*(v10 + 48) + 16 * v9);
    a4(v9, v10);
  }

  v12 = *v4;

  free(v4);
}

uint64_t (*sub_1001A0668(void *a1))()
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1001A3470;
}

uint64_t (*sub_1001A0690(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1001A06B8;
}

uint64_t sub_1001A06C4(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_10019F160(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

void *sub_1001A07F0(uint64_t a1, void *a2)
{
  v5 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v55 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v59 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v63 = a2 + 7;

  v15 = 0;
  v61 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v62 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    v23 = v5[5];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v24 = Hasher._finalize()();
    v25 = -1 << *(v5 + 32);
    v2 = v24 & ~v25;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v63[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v61;
    v15 = v62;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v25;
  while (1)
  {
    v26 = (v5[6] + 16 * v2);
    v27 = *v26 == v22 && v26[1] == v21;
    if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v63[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v61;
  v28 = v62;
  v65 = v59;
  v66 = v62;
  v67 = v11;
  v64[0] = v61;
  v64[1] = v7;

  v30 = *(v5 + 32);
  v56 = ((1 << v30) + 63) >> 6;
  v14 = 8 * v56;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v57 = &v55;
    __chkstk_darwin(v29);
    v2 = &v55 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v63, v31);
    v32 = *(v2 + 8 * v8) & ~v4;
    v33 = v5[2];
    v60 = v2;
    *(v2 + 8 * v8) = v32;
    v34 = v33 - 1;
LABEL_23:
    v58 = v34;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v36 = v28;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v12)
      {
        v5 = sub_1001A0F98(v60, v56, v58, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v37);
      ++v36;
      if (v11)
      {
        v28 = v37;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v38 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v39 = *(v3 + 48);
            v62 = v28;
            v40 = (v39 + ((v28 << 10) | (16 * v38)));
            v41 = *v40;
            v4 = v40[1];
            v42 = v5[5];
            Hasher.init(_seed:)();

            String.hash(into:)();
            v43 = Hasher._finalize()();
            v44 = -1 << *(v5 + 32);
            v8 = v43 & ~v44;
            v2 = v8 >> 6;
            v45 = 1 << v8;
            if (((1 << v8) & v63[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v28 = v62;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v46 = (v5[6] + 16 * v8);
          if (*v46 != v41 || v46[1] != v4)
          {
            v48 = ~v44;
            while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              v8 = (v8 + 1) & v48;
              v2 = v8 >> 6;
              v45 = 1 << v8;
              if (((1 << v8) & v63[v8 >> 6]) == 0)
              {
                v3 = v61;
                goto LABEL_45;
              }

              v49 = (v5[6] + 16 * v8);
              if (*v49 == v41 && v49[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v61;
          v35 = v60[v2];
          v60[v2] = v35 & ~v45;
          v27 = (v35 & v45) == 0;
          v28 = v62;
          if (!v27)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v34 = v58 - 1;
        if (__OFSUB__(v58, 1))
        {
          __break(1u);
        }

        if (v58 == 1)
        {

          v5 = &_swiftEmptySetSingleton;
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v51 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v28 = v62;
  }

  v52 = swift_slowAlloc();
  memcpy(v52, v63, v51);
  v53 = v55;
  v54 = sub_1001A0D60(v52, v56, v5, v2, v64);

  if (!v53)
  {

    v59 = v65;
    v5 = v54;
LABEL_52:
    sub_1000C7084();
    return v5;
  }

  __break(1u);
  return result;
}