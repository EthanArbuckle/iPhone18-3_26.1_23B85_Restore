uint64_t sub_10012408C()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005DFBD0);
  sub_10000A6F0(v0, qword_1005DFBD0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100124110(uint64_t a1)
{
  v17 = a1;
  v2 = type metadata accessor for OS_dispatch_queue.Attributes();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = sub_10004B518();
  (*(v7 + 104))(v10, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v6);
  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_100009008(&qword_1005A8670, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10004B564(&unk_1005AB400, &unk_1004C0BF0);
  sub_10001DF0C(&qword_1005A8680, &unk_1005AB400, &unk_1004C0BF0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v1 + 24) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  v11 = sub_100208FA0(_swiftEmptyArrayStorage);
  *(v1 + 48) = 0;
  *(v1 + 56) = v11;
  v12 = sub_10004B564(&qword_1005AB8F8, &qword_1004C5770);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(v1 + 64) = PassthroughSubject.init()();
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  HeartbeatConfiguration.init(durationBeforeFirstHeartbeat:durationBetweenHeartbeats:numberOfHeartbeatsBeforeFailing:)();
  *(v1 + 16) = v17;
  v18 = *(v1 + 64);
  sub_10001DF0C(&qword_1005AB900, &qword_1005AB8F8, &qword_1004C5770);
  *(v1 + 72) = Publisher.eraseToAnyPublisher()();
  return v1;
}

uint64_t sub_100124454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  v8 = type metadata accessor for Destination();
  v7[22] = v8;
  v9 = *(v8 - 8);
  v7[23] = v9;
  v10 = *(v9 + 64) + 15;
  v7[24] = swift_task_alloc();
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();
  v11 = sub_10004B564(&qword_1005AAC10, &unk_1004C4670);
  v7[27] = v11;
  v12 = *(v11 - 8);
  v7[28] = v12;
  v13 = *(v12 + 64) + 15;
  v7[29] = swift_task_alloc();

  return _swift_task_switch(sub_100124598, 0, 0);
}

uint64_t sub_100124598()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 144);
  v4 = *(v2 + 16);
  v3 = *(v2 + 32);
  v5 = *v2;
  *(v0 + 64) = *(v2 + 48);
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  *(v0 + 16) = v5;
  sub_1000C980C(v2, v0 + 72);
  sub_10012B620();
  sub_1000F7CFC();
  sub_1000F7D50();
  SessionMessage.init<A>(type:version:payload:)();
  v6 = *(&async function pointer to dispatch thunk of SessionMessaging.send(message:) + 1);
  v11 = (&async function pointer to dispatch thunk of SessionMessaging.send(message:) + async function pointer to dispatch thunk of SessionMessaging.send(message:));
  v7 = swift_task_alloc();
  *(v0 + 240) = v7;
  *v7 = v0;
  v7[1] = sub_100124AA8;
  v8 = *(v0 + 232);
  v9 = *(v0 + 152);

  return v11(v8);
}

uint64_t sub_100124AA8()
{
  v2 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_100124F7C;
  }

  else
  {
    v3 = sub_100124BBC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100124BBC()
{
  if (qword_1005A8608 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0DE0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[28];
  v5 = v0[29];
  v7 = v0[27];
  if (v4)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "sendLocation complete", v8, 2u);
  }

  (*(v6 + 8))(v5, v7);
  v9 = v0[29];
  v10 = v0[25];
  v11 = v0[26];
  v12 = v0[24];

  v13 = v0[1];

  return v13();
}

uint64_t sub_100124D20()
{
  v2 = *(*v1 + 296);
  v5 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v3 = sub_1001253A0;
  }

  else
  {
    v3 = sub_100124E34;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100124E34()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[25];
  v5 = v0[21];
  v4 = v0[22];
  v6 = v0[20];
  os_unfair_lock_lock(v5 + 12);
  v2(v3, v6, v4);
  sub_100145DF4(0, v3);
  os_unfair_lock_unlock(v5 + 12);
  if (qword_1005A7EE0 != -1)
  {
    swift_once();
  }

  v7 = v0[32];

  sub_1000CC27C(1, 2, 0xD000000000000011, 0x80000001004E1BD0);

  v8 = v0[29];
  v9 = v0[25];
  v10 = v0[26];
  v11 = v0[24];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100124F7C()
{
  v33 = v0;
  (*(v0[28] + 8))(v0[29], v0[27]);
  v1 = v0[31];
  v0[32] = v1;
  if (qword_1005A8608 != -1)
  {
    swift_once();
  }

  v2 = v0[26];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[20];
  v6 = type metadata accessor for Logger();
  v0[33] = sub_10000A6F0(v6, qword_1005E0DE0);
  v7 = *(v3 + 16);
  v0[34] = v7;
  v0[35] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v2, v5, v4);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[26];
  v13 = v0[22];
  v12 = v0[23];
  if (v10)
  {
    v14 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v14 = 136446979;
    *(v14 + 4) = sub_10000D01C(0xD000000000000011, 0x80000001004E1BD0, &v32);
    *(v14 + 12) = 2082;
    v0[17] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v15 = String.init<A>(describing:)();
    v30 = v6;
    v17 = sub_10000D01C(v15, v16, &v32);

    *(v14 + 14) = v17;
    *(v14 + 22) = 2160;
    *(v14 + 24) = 1752392040;
    *(v14 + 32) = 2081;
    sub_100009008(&qword_1005A9260, &type metadata accessor for Destination);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    v21 = *(v12 + 8);
    v21(v11, v13);
    v22 = sub_10000D01C(v18, v20, &v32);
    v6 = v30;

    *(v14 + 34) = v22;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: %{public}s to %{private,mask.hash}s", v14, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    v21 = *(v12 + 8);
    v21(v11, v13);
  }

  v0[36] = v21;
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v6, qword_1005DFB98);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "ending messagingsession due to error", v25, 2u);
  }

  v26 = *(&async function pointer to dispatch thunk of SessionMessaging.close() + 1);
  v31 = (&async function pointer to dispatch thunk of SessionMessaging.close() + async function pointer to dispatch thunk of SessionMessaging.close());
  v27 = swift_task_alloc();
  v0[37] = v27;
  *v27 = v0;
  v27[1] = sub_100124D20;
  v28 = v0[19];

  return v31();
}

uint64_t sub_1001253A0()
{
  v38 = v0;
  v1 = *(v0 + 304);
  v2 = *(v0 + 280);
  v3 = *(v0 + 264);
  (*(v0 + 272))(*(v0 + 192), *(v0 + 160), *(v0 + 176));
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 304);
    v7 = *(v0 + 192);
    v35 = *(v0 + 184);
    v36 = *(v0 + 288);
    v8 = *(v0 + 176);
    v9 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v9 = 136446723;
    *(v0 + 128) = v6;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v10 = String.init<A>(describing:)();
    v12 = sub_10000D01C(v10, v11, &v37);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2160;
    *(v9 + 14) = 1752392040;
    *(v9 + 22) = 2081;
    sub_100009008(&qword_1005A9260, &type metadata accessor for Destination);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    v36(v7, v8);
    v16 = sub_10000D01C(v13, v15, &v37);

    *(v9 + 24) = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "sendMessage failed to close session, error: %{public}s to %{private,mask.hash}s", v9, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v17 = *(v0 + 304);
    v18 = *(v0 + 288);
    v20 = *(v0 + 184);
    v19 = *(v0 + 192);
    v21 = *(v0 + 176);

    v18(v19, v21);
  }

  v23 = *(v0 + 272);
  v22 = *(v0 + 280);
  v24 = *(v0 + 200);
  v26 = *(v0 + 168);
  v25 = *(v0 + 176);
  v27 = *(v0 + 160);
  os_unfair_lock_lock(v26 + 12);
  v23(v24, v27, v25);
  sub_100145DF4(0, v24);
  os_unfair_lock_unlock(v26 + 12);
  if (qword_1005A7EE0 != -1)
  {
    swift_once();
  }

  v28 = *(v0 + 256);

  sub_1000CC27C(1, 2, 0xD000000000000011, 0x80000001004E1BD0);

  v29 = *(v0 + 232);
  v30 = *(v0 + 200);
  v31 = *(v0 + 208);
  v32 = *(v0 + 192);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_100125710()
{
  v1 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v44[-v3];
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v44[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v44[-v11];
  v13 = type metadata accessor for SecureLocationsConfig();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v44[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  os_unfair_lock_lock((v0 + 48));
  v46 = *(*(v0 + 56) + 16);
  os_unfair_lock_unlock((v0 + 48));
  if (qword_1005A7EF8 != -1)
  {
    swift_once();
  }

  v17 = sub_100021BB4();

  v18 = [objc_opt_self() standardUserDefaults];
  v19 = String._bridgeToObjectiveC()();
  v45 = [v18 BOOLForKey:v19];

  v20 = (qword_1005DFBC8 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex);

  os_unfair_lock_lock(v20);
  v21 = sub_10004B564(&qword_1005A9DE0, &qword_1004C32C0);
  sub_10012BB3C(v20 + *(v21 + 28), v16);
  os_unfair_lock_unlock(v20);

  v22 = *(v16 + 4);
  sub_10012BBA0(v16);

  sub_1000D735C(v4);

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100002CE0(v4, &unk_1005AE5B0, &qword_1004C32F0);
    if (v17)
    {
LABEL_5:
      v23 = (v46 < v22) & (v45 ^ 1);
LABEL_18:
      if (qword_1005A8608 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_10000A6F0(v37, qword_1005E0DE0);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = v46;
        v41 = v46 < v22;
        v42 = swift_slowAlloc();
        *v42 = 67110144;
        *(v42 + 4) = v17 & 1;
        *(v42 + 8) = 1024;
        *(v42 + 10) = v45;
        *(v42 + 14) = 1024;
        *(v42 + 16) = v41;
        *(v42 + 20) = 2048;
        *(v42 + 22) = v40;
        *(v42 + 30) = 2048;
        *(v42 + 32) = v22;
        _os_log_impl(&_mh_execute_header, v38, v39, "canAcceptRequestForLiveSession isLocationPublishingDevice %{BOOL}d isAutoMeActive %{BOOL}d isWithinMaxSessionLimit %{BOOL}d sessCount %ld maxAllowed %ld  ", v42, 0x28u);
      }

      return v23;
    }

LABEL_17:
    v23 = 0;
    goto LABEL_18;
  }

  (*(v6 + 32))(v12, v4, v5);
  static Date.trustedNow.getter(v10);
  v24 = static Date.> infix(_:_:)();
  v25 = *(v6 + 8);
  v25(v10, v5);
  if ((v24 & 1) == 0)
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_10000A6F0(v32, qword_1005DFB98);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v47 = v36;
      *v35 = 136315138;
      *(v35 + 4) = sub_10000D01C(0xD000000000000020, 0x80000001004E1B20, &v47);
      _os_log_impl(&_mh_execute_header, v33, v34, "%s: Proceeding with LiveLocations check", v35, 0xCu);
      sub_100004984(v36);
    }

    v25(v12, v5);
    if (v17)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_10000A6F0(v26, qword_1005DFB98);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = v25;
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v47 = v31;
    *v30 = 136315138;
    *(v30 + 4) = sub_10000D01C(0xD000000000000020, 0x80000001004E1B20, &v47);
    _os_log_impl(&_mh_execute_header, v27, v28, "    %s: AutoMe threshold is active, don't publish live locations. \n    Proceed to communicate location & connected devices to server.", v30, 0xCu);
    sub_100004984(v31);

    v29(v12, v5);
  }

  else
  {

    v25(v12, v5);
  }

  return 0;
}

uint64_t sub_100125DE8()
{
  v1 = *(v0 + 16);

  sub_100002CE0(v0 + 40, &qword_1005AB908, &qword_1004C57E0);
  sub_100002CE0(v0 + 56, &qword_1005AB910, &qword_1004C57E8);
  v2 = *(v0 + 64);

  v3 = *(v0 + 72);

  v4 = *(v0 + 88);
  sub_1000CA9C0(*(v0 + 80));
  v5 = OBJC_IVAR____TtC13findmylocated20BeaconSharingManager_heartbeatConfiguration;
  v6 = type metadata accessor for HeartbeatConfiguration();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t sub_100125EA0()
{
  sub_100125DE8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BeaconSharingManager()
{
  result = qword_1005AB808;
  if (!qword_1005AB808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100125F4C()
{
  result = type metadata accessor for HeartbeatConfiguration();
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

BOOL sub_100126014()
{
  v0 = type metadata accessor for Destination.DestinationType();
  v1 = *(v0 - 8);
  v2 = v1[8];
  v3 = __chkstk_darwin(v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  Destination.type.getter();
  v8 = v1[13];
  v8(v5, enum case for Destination.DestinationType.apsToken(_:), v0);
  sub_100009008(&qword_1005AB938, &type metadata accessor for Destination.DestinationType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v9 = v1[1];
  v9(v5, v0);
  v9(v7, v0);
  if (v12 == v11)
  {
    return 1;
  }

  Destination.type.getter();
  v8(v5, enum case for Destination.DestinationType.selfToken(_:), v0);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v9(v5, v0);
  v9(v7, v0);
  if (v12 == v11)
  {
    return 1;
  }

  Destination.type.getter();
  v8(v5, enum case for Destination.DestinationType.device(_:), v0);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v9(v5, v0);
  v9(v7, v0);
  return v12 == v11;
}

uint64_t sub_1001262D4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = async function pointer to daemon.getter[1];
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_100126368;

  return daemon.getter();
}

uint64_t sub_100126368(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 32);
  v12 = *v1;
  *(v3 + 40) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 48) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = sub_10004B564(&qword_1005AB8D8, &qword_1004D9660);
  v9 = sub_100009008(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_10001DF0C(&qword_1005AB8E0, &qword_1005AB8D8, &qword_1004D9660);
  *v6 = v12;
  v6[1] = sub_100126554;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100126554(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v7 = sub_1001268B0;
    v8 = 0;
  }

  else
  {
    v9 = *(v4 + 40);

    *(v4 + 64) = a1;
    v7 = sub_100126690;
    v8 = a1;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_100126690()
{
  v1 = *(v0[8] + 136);
  v2 = *(&async function pointer to dispatch thunk of QueryController.isRegistered(destination:) + 1);
  v6 = (&async function pointer to dispatch thunk of QueryController.isRegistered(destination:) + async function pointer to dispatch thunk of QueryController.isRegistered(destination:));
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_100126740;
  v4 = v0[3];

  return v6(v4);
}

uint64_t sub_100126740(char a1)
{
  v2 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = a1;

  return _swift_task_switch(sub_100126840, 0, 0);
}

uint64_t sub_100126840()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  v3 = *(v0 + 16);

  *v3 = v1;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001268B0()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_100126914(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v4 = *(*(sub_10004B564(&qword_1005A9690, &qword_1004C2A00) - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v5 = type metadata accessor for Destination();
  v3[15] = v5;
  v6 = *(v5 - 8);
  v3[16] = v6;
  v3[17] = *(v6 + 64);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v7 = type metadata accessor for SessionMessagingInvite();
  v3[20] = v7;
  v8 = *(v7 - 8);
  v3[21] = v8;
  v3[22] = *(v8 + 64);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();

  return _swift_task_switch(sub_100126AA0, 0, 0);
}

uint64_t sub_100126AA0()
{
  v90 = v0;
  if (qword_1005A7F60 != -1)
  {
    swift_once();
  }

  v1 = *(*(qword_1005DFBF8 + 24) + 16);
  swift_unownedRetainStrong();

  CurrentValueSubject.value.getter();

  if (*(v0 + 73) == 1)
  {
    v2 = *(v0 + 104);
    if (sub_100125710())
    {
      if (qword_1005A8608 != -1)
      {
        swift_once();
      }

      v3 = *(v0 + 200);
      v4 = *(v0 + 160);
      v5 = *(v0 + 168);
      v6 = *(v0 + 88);
      v7 = type metadata accessor for Logger();
      *(v0 + 208) = sub_10000A6F0(v7, qword_1005E0DE0);
      (*(v5 + 16))(v3, v6, v4);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();
      v10 = os_log_type_enabled(v8, v9);
      v11 = *(v0 + 200);
      v13 = *(v0 + 160);
      v12 = *(v0 + 168);
      if (v10)
      {
        v14 = *(v0 + 152);
        v15 = *(v0 + 128);
        v83 = *(v0 + 120);
        v16 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        v89 = v88;
        *v16 = 136315138;
        v86 = v9;
        SessionMessagingInvite.accountScopedFromID.getter();
        v17 = Destination.destination.getter();
        v19 = v18;
        (*(v15 + 8))(v14, v83);
        (*(v12 + 8))(v11, v13);
        v20 = sub_10000D01C(v17, v19, &v89);

        *(v16 + 4) = v20;
        _os_log_impl(&_mh_execute_header, v8, v86, "Accepting incoming invitation because this device is enabled for location publishing and from follower %s", v16, 0xCu);
        sub_100004984(v88);
      }

      else
      {

        (*(v12 + 8))(v11, v13);
      }

      v44 = *(v0 + 144);
      v45 = *(v0 + 120);
      v46 = *(v0 + 128);
      v47 = *(v0 + 96);
      v48 = *(v0 + 104);
      v49 = *(v0 + 88);
      SessionMessagingInvite.accountScopedFromID.getter();
      *(v0 + 216) = Destination.destination.getter();
      *(v0 + 224) = v50;
      *(v0 + 40) = type metadata accessor for BeaconSharingSessionContext();
      *(v0 + 48) = sub_100009008(&qword_1005AB8E8, type metadata accessor for BeaconSharingSessionContext);
      v51 = sub_10000331C((v0 + 16));
      v52 = *(v46 + 16);
      *(v0 + 232) = v52;
      *(v0 + 240) = (v46 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v52(v51, v47, v45);
      v53 = OBJC_IVAR____TtC13findmylocated20BeaconSharingManager_heartbeatConfiguration;
      v54 = async function pointer to SessionMessagingInvite.accept<A>(context:heartbeatConfiguration:)[1];
      v55 = swift_task_alloc();
      *(v0 + 248) = v55;
      v56 = sub_10012B620();
      *v55 = v0;
      v55[1] = sub_1001272B8;
      v57 = *(v0 + 88);

      return SessionMessagingInvite.accept<A>(context:heartbeatConfiguration:)(v0 + 16, v48 + v53, &type metadata for BeaconSharingSessionMessageType, v56);
    }

    if (qword_1005A8608 != -1)
    {
      swift_once();
    }

    v25 = *(v0 + 192);
    v26 = *(v0 + 160);
    v27 = *(v0 + 168);
    v28 = *(v0 + 88);
    v29 = type metadata accessor for Logger();
    sub_10000A6F0(v29, qword_1005E0DE0);
    v87 = *(v27 + 16);
    v87(v25, v28, v26);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    v32 = os_log_type_enabled(v30, v31);
    v33 = *(v0 + 192);
    v35 = *(v0 + 160);
    v34 = *(v0 + 168);
    if (v32)
    {
      v36 = *(v0 + 152);
      v37 = *(v0 + 120);
      v38 = *(v0 + 128);
      v79 = *(v0 + 160);
      v39 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v89 = v84;
      *v39 = 136315138;
      v81 = v31;
      SessionMessagingInvite.fromID.getter();
      sub_100009008(&qword_1005A9260, &type metadata accessor for Destination);
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v41;
      (*(v38 + 8))(v36, v37);
      (*(v34 + 8))(v33, v79);
      v43 = sub_10000D01C(v40, v42, &v89);

      *(v39 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v30, v81, "Declining incoming invitation from %s because this Me device cannot accept incoming requests", v39, 0xCu);
      sub_100004984(v84);
    }

    else
    {

      (*(v34 + 8))(v33, v35);
    }

    v58 = *(v0 + 184);
    v59 = *(v0 + 160);
    v60 = *(v0 + 168);
    v61 = *(v0 + 152);
    v62 = *(v0 + 128);
    v80 = *(v0 + 176);
    v82 = *(v0 + 136);
    v63 = *(v0 + 112);
    v64 = *(v0 + 120);
    v85 = v63;
    v66 = *(v0 + 88);
    v65 = *(v0 + 96);
    v67 = type metadata accessor for TaskPriority();
    (*(*(v67 - 8) + 56))(v63, 1, 1, v67);
    v87(v58, v66, v59);
    (*(v62 + 16))(v61, v65, v64);
    v68 = (*(v60 + 80) + 32) & ~*(v60 + 80);
    v69 = (v80 + *(v62 + 80) + v68) & ~*(v62 + 80);
    v70 = swift_allocObject();
    *(v70 + 16) = 0;
    *(v70 + 24) = 0;
    (*(v60 + 32))(v70 + v68, v58, v59);
    (*(v62 + 32))(v70 + v69, v61, v64);
    sub_10020D620(0, 0, v85, &unk_1004C5798, v70);
  }

  else
  {
    if (qword_1005A8608 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000A6F0(v21, qword_1005E0DE0);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Ignoring invite since this is not a Me device", v24, 2u);
    }
  }

  v72 = *(v0 + 192);
  v71 = *(v0 + 200);
  v73 = *(v0 + 184);
  v75 = *(v0 + 144);
  v74 = *(v0 + 152);
  v76 = *(v0 + 112);

  v77 = *(v0 + 8);

  return v77();
}

uint64_t sub_1001272B8(uint64_t a1)
{
  v4 = *v2;
  v5 = (*v2)[31];
  v14 = *v2;
  v4[32] = a1;
  v4[33] = v1;

  if (v1)
  {
    v6 = v4[28];

    v7 = sub_100127928;
    v8 = 0;
    v9 = 0;
  }

  else
  {
    sub_100004984(v4 + 2);

    sub_10004B564(&qword_1005AAC08, &unk_1004C4650);
    sub_10001DF0C(&qword_1005AAC20, &qword_1005AAC08, &unk_1004C4650);
    v10 = dispatch thunk of Actor.unownedExecutor.getter();
    v12 = v11;
    v7 = sub_10012745C;
    v8 = v10;
    v9 = v12;
  }

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10012745C()
{
  v1 = *(v0 + 256);
  dispatch thunk of SessionMessaging.startup()();

  return _swift_task_switch(sub_1001274C4, 0, 0);
}

uint64_t sub_1001274C4()
{
  v57 = v0;
  v1 = *(v0 + 104);
  os_unfair_lock_lock((v1 + 48));
  v2 = *(v1 + 56);
  if (*(v2 + 16))
  {
    v3 = sub_1001FDA80(*(v0 + 144));
    if (v4)
    {
      v6 = *(v0 + 232);
      v5 = *(v0 + 240);
      v8 = *(v0 + 144);
      v7 = *(v0 + 152);
      v9 = *(v0 + 128);
      v54 = *(v0 + 136);
      v10 = *(v0 + 112);
      v11 = *(v0 + 120);
      v12 = *(*(v2 + 56) + 8 * v3);
      v13 = type metadata accessor for TaskPriority();
      (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
      v6(v7, v8, v11);
      v14 = (*(v9 + 80) + 40) & ~*(v9 + 80);
      v15 = swift_allocObject();
      *(v15 + 2) = 0;
      *(v15 + 3) = 0;
      *(v15 + 4) = v12;
      (*(v9 + 32))(&v15[v14], v7, v11);

      sub_1001D7F30(0, 0, v10, &unk_1004C57C0, v15);
    }
  }

  v16 = *(v0 + 256);
  v18 = *(v0 + 216);
  v17 = *(v0 + 224);
  v19 = *(v0 + 208);
  v20 = *(v0 + 144);
  v21 = *(v0 + 104);

  v22 = *(v1 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v56 = *(v1 + 56);
  *(v1 + 56) = 0x8000000000000000;
  sub_100453644(v16, v20, isUniquelyReferenced_nonNull_native);
  *(v1 + 56) = v56;
  os_unfair_lock_unlock((v1 + 48));
  v24 = *(v21 + 64);
  *(v0 + 56) = v18;
  *(v0 + 64) = v17;
  *(v0 + 72) = 0;

  PassthroughSubject.send(_:)();

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v28 = *(v0 + 216);
    v27 = *(v0 + 224);
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v56 = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_10000D01C(v28, v27, &v56);
    _os_log_impl(&_mh_execute_header, v25, v26, "Configured incoming live session for handle %s and called startLocate on listener", v29, 0xCu);
    sub_100004984(v30);
  }

  v31 = *(v0 + 232);
  v32 = *(v0 + 240);
  v53 = *(v0 + 224);
  v55 = *(v0 + 256);
  v33 = *(v0 + 144);
  v34 = *(v0 + 152);
  v35 = *(v0 + 128);
  v51 = *(v0 + 136);
  v52 = *(v0 + 216);
  v37 = *(v0 + 112);
  v36 = *(v0 + 120);
  v38 = *(v0 + 104);
  v39 = type metadata accessor for TaskPriority();
  (*(*(v39 - 8) + 56))(v37, 1, 1, v39);
  v40 = swift_allocObject();
  swift_weakInit();
  v31(v34, v33, v36);
  v41 = (*(v35 + 80) + 64) & ~*(v35 + 80);
  v42 = swift_allocObject();
  *(v42 + 2) = 0;
  *(v42 + 3) = 0;
  *(v42 + 4) = v55;
  *(v42 + 5) = v52;
  *(v42 + 6) = v53;
  *(v42 + 7) = v40;
  (*(v35 + 32))(&v42[v41], v34, v36);
  sub_1001D7F30(0, 0, v37, &unk_1004C57B0, v42);

  (*(v35 + 8))(v33, v36);
  v44 = *(v0 + 192);
  v43 = *(v0 + 200);
  v45 = *(v0 + 184);
  v47 = *(v0 + 144);
  v46 = *(v0 + 152);
  v48 = *(v0 + 112);

  v49 = *(v0 + 8);

  return v49();
}

uint64_t sub_100127928()
{
  v27 = v0;
  v1 = v0[33];
  v2 = v0[26];
  sub_100004984(v0 + 2);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[33];
    v25 = v0[18];
    v7 = v0[15];
    v6 = v0[16];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v26 = v9;
    *v8 = 136315138;
    v0[10] = v5;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v10 = String.init<A>(describing:)();
    v12 = sub_10000D01C(v10, v11, &v26);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error getting session available %s", v8, 0xCu);
    sub_100004984(v9);

    (*(v6 + 8))(v25, v7);
  }

  else
  {
    v13 = v0[33];
    v14 = v0[18];
    v15 = v0[15];
    v16 = v0[16];

    (*(v16 + 8))(v14, v15);
  }

  v18 = v0[24];
  v17 = v0[25];
  v19 = v0[23];
  v21 = v0[18];
  v20 = v0[19];
  v22 = v0[14];

  v23 = v0[1];

  return v23();
}

uint64_t sub_100127B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 56) = a4;
  *(v5 + 64) = a5;
  return _swift_task_switch(sub_100127B68, 0, 0);
}

uint64_t sub_100127B68()
{
  v1 = v0[8];
  v0[5] = type metadata accessor for BeaconSharingSessionContext();
  v0[6] = sub_100009008(&qword_1005AB8E8, type metadata accessor for BeaconSharingSessionContext);
  v2 = sub_10000331C(v0 + 2);
  v3 = type metadata accessor for Destination();
  (*(*(v3 - 8) + 16))(v2, v1, v3);
  v4 = async function pointer to SessionMessagingInvite.decline(context:)[1];
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_100127C94;
  v6 = v0[7];

  return SessionMessagingInvite.decline(context:)(v0 + 2);
}

uint64_t sub_100127C94()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100127DD0, 0, 0);
  }

  else
  {
    sub_100004984(v3 + 2);
    v4 = v3[1];

    return v4();
  }
}

uint64_t sub_100127DD0()
{
  sub_100004984(v0 + 2);
  v1 = v0[1];
  v2 = v0[10];

  return v1();
}

uint64_t sub_100127E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a5;
  v6 = type metadata accessor for Destination();
  v5[3] = v6;
  v7 = *(v6 - 8);
  v5[4] = v7;
  v8 = *(v7 + 64) + 15;
  v5[5] = swift_task_alloc();
  v9 = *(&async function pointer to dispatch thunk of SessionMessaging.close() + 1);
  v12 = (&async function pointer to dispatch thunk of SessionMessaging.close() + async function pointer to dispatch thunk of SessionMessaging.close());
  v10 = swift_task_alloc();
  v5[6] = v10;
  *v10 = v5;
  v10[1] = sub_100127F38;

  return v12();
}

uint64_t sub_100127F38()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100128074, 0, 0);
  }

  else
  {
    v4 = v3[5];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_100128074()
{
  v27 = v0;
  if (qword_1005A8608 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v3 = v0[4];
  v2 = v0[5];
  v5 = v0[2];
  v4 = v0[3];
  v6 = type metadata accessor for Logger();
  sub_10000A6F0(v6, qword_1005E0DE0);
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[7];
  v12 = v0[4];
  v11 = v0[5];
  v13 = v0[3];
  if (v9)
  {
    v14 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v14 = 136315394;
    sub_100009008(&qword_1005A9260, &type metadata accessor for Destination);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v12 + 8))(v11, v13);
    v18 = sub_10000D01C(v15, v17, &v26);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2112;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v19;
    *v24 = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to close duplicate session for %s, error: %@", v14, 0x16u);
    sub_100002CE0(v24, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v25);
  }

  else
  {
    v20 = v0[7];

    (*(v12 + 8))(v11, v13);
  }

  v21 = v0[5];

  v22 = v0[1];

  return v22();
}

uint64_t sub_100128330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[18] = a7;
  v8[19] = a8;
  v8[16] = a5;
  v8[17] = a6;
  v8[15] = a4;
  v9 = *(*(sub_10004B564(&qword_1005AAC18, &unk_1004C57D0) - 8) + 64) + 15;
  v8[20] = swift_task_alloc();
  sub_10004B564(&qword_1005AAC08, &unk_1004C4650);
  sub_10001DF0C(&qword_1005AAC20, &qword_1005AAC08, &unk_1004C4650);
  v11 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10012843C, v11, v10);
}

uint64_t sub_10012843C()
{
  v1 = *(v0 + 120);
  dispatch thunk of SessionMessaging.messagesReceived.getter();

  return _swift_task_switch(sub_1001284A8, 0, 0);
}

uint64_t sub_1001284A8()
{
  v1 = v0[5];
  v2 = sub_100011AEC(v0 + 2, v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  sub_10000331C(v0 + 7);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();

  v6 = v0[11];
  sub_1000BAF2C((v0 + 7), v0[10]);
  v7 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v8 = swift_task_alloc();
  v0[21] = v8;
  *v8 = v0;
  v8[1] = sub_100128660;
  v9 = v0[20];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v9, 0, 0);
}

uint64_t sub_100128660()
{
  v2 = *(*v1 + 168);
  v4 = *v1;

  if (!v0)
  {

    return _swift_task_switch(sub_100128770, 0, 0);
  }

  return result;
}

uint64_t sub_100128770()
{
  v34 = v0;
  v1 = v0[20];
  v2 = sub_10004B564(&qword_1005AAC10, &unk_1004C4670);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_100004984(v0 + 7);
    if (qword_1005A8608 != -1)
    {
      swift_once();
    }

    v3 = v0[17];
    v4 = type metadata accessor for Logger();
    sub_10000A6F0(v4, qword_1005E0DE0);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v8 = v0[16];
      v7 = v0[17];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v33 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_10000D01C(v8, v7, &v33);
      _os_log_impl(&_mh_execute_header, v5, v6, "Messages received task ended for %s", v9, 0xCu);
      sub_100004984(v10);
    }

    v11 = v0[18];
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v13 = v0[18];
      v14 = v0[19];
      v16 = v0[16];
      v15 = v0[17];
      v17 = Strong;
      os_unfair_lock_lock(Strong + 12);
      sub_100128B90(&v17[14], v14, v16, v15);
      os_unfair_lock_unlock(v17 + 12);
    }

    v18 = v0[20];
    sub_100004984(v0 + 2);

    v19 = v0[1];

    return v19();
  }

  else
  {
    sub_100002CE0(v1, &qword_1005AAC18, &unk_1004C57D0);
    if (qword_1005A8608 != -1)
    {
      swift_once();
    }

    v21 = v0[17];
    v22 = type metadata accessor for Logger();
    sub_10000A6F0(v22, qword_1005E0DE0);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v26 = v0[16];
      v25 = v0[17];
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v33 = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_10000D01C(v26, v25, &v33);
      _os_log_impl(&_mh_execute_header, v23, v24, "Received payload on incoming connection from %s, ignoring", v27, 0xCu);
      sub_100004984(v28);
    }

    v29 = v0[11];
    sub_1000BAF2C((v0 + 7), v0[10]);
    v30 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
    v31 = swift_task_alloc();
    v0[21] = v31;
    *v31 = v0;
    v31[1] = sub_100128660;
    v32 = v0[20];

    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v32, 0, 0);
  }
}

void sub_100128B90(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (sub_1001D9164(a2))
  {

    if (qword_1005A8608 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000A6F0(v6, qword_1005E0DE0);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v17 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_10000D01C(a3, a4, &v17);
      _os_log_impl(&_mh_execute_header, v7, v8, "Session invalidated for %s", v9, 0xCu);
      sub_100004984(v10);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v12 = *(Strong + 64);

      PassthroughSubject.send(_:)();
    }
  }

  else
  {
    if (qword_1005A8608 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000A6F0(v13, qword_1005E0DE0);
    oslog = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v14, "Failed to invalidate Session", v15, 2u);
    }
  }
}

uint64_t sub_100128E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[24] = a4;
  v5[25] = a5;
  v5[22] = a2;
  v5[23] = a3;
  v6 = *(*(sub_10004B564(&qword_1005A96E0, &qword_1004C2A80) - 8) + 64) + 15;
  v5[26] = swift_task_alloc();
  v7 = type metadata accessor for MessagingOptions();
  v5[27] = v7;
  v8 = *(v7 - 8);
  v5[28] = v8;
  v9 = *(v8 + 64) + 15;
  v5[29] = swift_task_alloc();
  v10 = sub_10004B564(&qword_1005AB918, &unk_1004C5800);
  v5[30] = v10;
  v11 = *(v10 - 8);
  v5[31] = v11;
  v12 = *(v11 + 64) + 15;
  v5[32] = swift_task_alloc();
  v13 = type metadata accessor for UUID();
  v5[33] = v13;
  v14 = *(v13 - 8);
  v5[34] = v14;
  v15 = *(v14 + 64) + 15;
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v16 = async function pointer to daemon.getter[1];
  v17 = swift_task_alloc();
  v5[37] = v17;
  *v17 = v5;
  v17[1] = sub_100129038;

  return daemon.getter();
}

uint64_t sub_100129038(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 296);
  v12 = *v1;
  *(v3 + 304) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 312) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = sub_10004B564(&qword_1005AB8D8, &qword_1004D9660);
  v9 = sub_100009008(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_10001DF0C(&qword_1005AB8E0, &qword_1005AB8D8, &qword_1004D9660);
  *v6 = v12;
  v6[1] = sub_100129224;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100129224(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 312);
  v8 = *v2;
  v3[40] = a1;
  v3[41] = v1;

  if (v1)
  {
    v5 = sub_10012A5A4;
  }

  else
  {
    v6 = v3[38];

    v5 = sub_100129340;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100129340()
{
  v76 = v0;
  v1 = v0[41];
  v2 = v0[22];
  v3 = type metadata accessor for PropertyListEncoder();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_10004B564(&qword_1005AAC70, &qword_1004D96D0);
  sub_10001DF0C(&qword_1005AB920, &qword_1005AAC70, &qword_1004D96D0);
  v6 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (!v1)
  {
    v9 = v6;
    v10 = v7;
    v11 = v0[32];
    v12 = v0[30];
    v13 = type metadata accessor for PropertyListDecoder();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    PropertyListDecoder.init()();
    sub_10001DF0C(&qword_1005AB928, &qword_1005AB918, &unk_1004C5800);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    v16 = v0[40];
    v60 = v0[33];
    v59 = v0[34];
    v73 = v0[29];
    v61 = v0[26];
    v62 = v0[23];

    sub_1000049D0(v9, v10);

    sub_10004B564(&qword_1005A9270, &qword_1004C5810);
    v63 = type metadata accessor for Destination();
    v64 = *(v63 - 8);
    v65 = *(v64 + 72);
    v66 = (*(v64 + 80) + 32) & ~*(v64 + 80);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_1004C1900;
    (*(v64 + 16))(v67 + v66, v62, v63);
    (*(v59 + 56))(v61, 1, 1, v60);
    sub_10004B564(&qword_1005AB930, &qword_1004C5818);
    v68 = type metadata accessor for MessagingCapability();
    v69 = *(v68 - 8);
    v70 = *(v69 + 72);
    v71 = (*(v69 + 80) + 32) & ~*(v69 + 80);
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_1004C1900;
    (*(v69 + 104))(v72 + v71, enum case for MessagingCapability.supportsSecureLocations(_:), v68);
    sub_10025EC18(v72);
    swift_setDeallocating();
    (*(v69 + 8))(v72 + v71, v68);
    swift_deallocClassInstance();
    sub_100293190(_swiftEmptyArrayStorage);
    MessagingOptions.init(destinations:expectsPeerResponse:responseIdentifier:timeToLive:fireAndForget:requiredCapabilities:lackingCapabilities:queueOneIdentifier:)();
    v49 = sub_100129BC4;
    v50 = v16;
    v51 = 0;

    return _swift_task_switch(v49, v50, v51);
  }

  v8 = v0[40];

  if (qword_1005A7F10 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_10000A6F0(v17, qword_1005DFBD0);
  swift_errorRetain();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v74 = v21;
    *v20 = 136315138;
    swift_getErrorValue();
    v23 = v0[17];
    v22 = v0[18];
    v24 = v0[19];
    v25 = Error.localizedDescription.getter();
    v27 = sub_10000D01C(v25, v26, &v74);

    *(v20 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v18, v19, "Failed to send secureLocationsKeyUpdate: %s", v20, 0xCu);
    sub_100004984(v21);
  }

  if (qword_1005A7EE0 != -1)
  {
    swift_once();
  }

  if ((static SystemInfo.underTest.getter() & 1) == 0)
  {
    v28 = String._bridgeToObjectiveC()();
    v29 = swift_allocObject();
    *(v29 + 16) = 772;
    v0[6] = sub_10012BBFC;
    v0[7] = v29;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_1000119E4;
    v0[5] = &unk_100591158;
    v30 = _Block_copy(v0 + 2);
    v31 = v0[7];

    AnalyticsSendEventLazy();
    _Block_release(v30);
  }

  v33 = v0[24];
  v32 = v0[25];
  v34 = v0[23];
  v35 = qword_1005DFB60;
  v74 = 0;
  v75 = 0xE000000000000000;

  _StringGuts.grow(_:)(23);

  v74 = 0xD000000000000012;
  v75 = 0x80000001004E1B90;
  v36._countAndFlagsBits = Destination.destination.getter();
  String.append(_:)(v36);

  v37._countAndFlagsBits = 32;
  v37._object = 0xE100000000000000;
  String.append(_:)(v37);
  swift_getErrorValue();
  v39 = v0[14];
  v38 = v0[15];
  v40 = v0[16];
  v41._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v41);

  v43 = v74;
  v42 = v75;
  v44 = *(v35 + 16);
  v45 = swift_allocObject();
  v45[2] = v35;
  v45[3] = v33;
  v45[4] = v32;
  v45[5] = v43;
  v45[6] = v42;
  v46 = swift_allocObject();
  *(v46 + 16) = sub_1000F8968;
  *(v46 + 24) = v45;
  v0[12] = sub_1000C7A78;
  v0[13] = v46;
  v0[8] = _NSConcreteStackBlock;
  v0[9] = 1107296256;
  v0[10] = sub_10013EC94;
  v0[11] = &unk_1005911D0;
  v47 = _Block_copy(v0 + 8);
  v48 = v0[13];

  dispatch_sync(v44, v47);
  _Block_release(v47);
  LOBYTE(v47) = swift_isEscapingClosureAtFileLocation();

  if (v47)
  {
    __break(1u);
    return _swift_task_switch(v49, v50, v51);
  }

  v53 = v0[35];
  v52 = v0[36];
  v54 = v0[32];
  v55 = v0[29];
  v56 = v0[26];

  v57 = v0[1];

  return v57();
}

uint64_t sub_100129BC4()
{
  v1 = *(v0[40] + 128);
  v2 = async function pointer to InternetMessaging.send(message:messageOptions:)[1];
  v3 = swift_task_alloc();
  v0[42] = v3;
  *v3 = v0;
  v3[1] = sub_100129C6C;
  v4 = v0[36];
  v5 = v0[32];
  v6 = v0[29];

  return InternetMessaging.send(message:messageOptions:)(v4, v5, v6);
}

uint64_t sub_100129C6C()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v10 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v4 = v2[40];
    v5 = sub_10012A030;
  }

  else
  {
    v7 = v2[31];
    v6 = v2[32];
    v8 = v2[30];
    (*(v2[28] + 8))(v2[29], v2[27]);
    (*(v7 + 8))(v6, v8);
    v5 = sub_100129DC4;
    v4 = 0;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100129DC4()
{
  v31 = v0;
  if (qword_1005A7F10 != -1)
  {
    swift_once();
  }

  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[33];
  v4 = v0[34];
  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005DFBD0);
  (*(v4 + 16))(v1, v2, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[40];
  v10 = v0[35];
  v11 = v0[36];
  v12 = v0[33];
  v13 = v0[34];
  if (v8)
  {
    v29 = v0[36];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v30 = v15;
    *v14 = 136446210;
    v16 = UUID.uuidString.getter();
    v18 = v17;
    v19 = *(v13 + 8);
    v19(v10, v12);
    v20 = sub_10000D01C(v16, v18, &v30);

    *(v14 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v6, v7, "Successfully sent secureLocationsKeyUpdate: %{public}s", v14, 0xCu);
    sub_100004984(v15);

    v19(v29, v12);
  }

  else
  {

    v21 = *(v13 + 8);
    v21(v10, v12);
    v21(v11, v12);
  }

  v23 = v0[35];
  v22 = v0[36];
  v24 = v0[32];
  v25 = v0[29];
  v26 = v0[26];

  v27 = v0[1];

  return v27();
}

uint64_t sub_10012A030()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  (*(v0[28] + 8))(v0[29], v0[27]);
  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_10012A0CC, 0, 0);
}

uint64_t sub_10012A0CC()
{
  v44 = v0;
  v1 = v0[40];

  v2 = v0[43];
  if (qword_1005A7F10 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005DFBD0);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v42 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v9 = v0[17];
    v8 = v0[18];
    v10 = v0[19];
    v11 = Error.localizedDescription.getter();
    v13 = sub_10000D01C(v11, v12, &v42);

    *(v6 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to send secureLocationsKeyUpdate: %s", v6, 0xCu);
    sub_100004984(v7);
  }

  if (qword_1005A7EE0 != -1)
  {
    swift_once();
  }

  if ((static SystemInfo.underTest.getter() & 1) == 0)
  {
    v14 = String._bridgeToObjectiveC()();
    v15 = swift_allocObject();
    *(v15 + 16) = 772;
    v0[6] = sub_10012BBFC;
    v0[7] = v15;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_1000119E4;
    v0[5] = &unk_100591158;
    v16 = _Block_copy(v0 + 2);
    v17 = v0[7];

    AnalyticsSendEventLazy();
    _Block_release(v16);
  }

  v19 = v0[24];
  v18 = v0[25];
  v20 = v0[23];
  v21 = qword_1005DFB60;
  v42 = 0;
  v43 = 0xE000000000000000;

  _StringGuts.grow(_:)(23);

  v42 = 0xD000000000000012;
  v43 = 0x80000001004E1B90;
  v22._countAndFlagsBits = Destination.destination.getter();
  String.append(_:)(v22);

  v23._countAndFlagsBits = 32;
  v23._object = 0xE100000000000000;
  String.append(_:)(v23);
  swift_getErrorValue();
  v25 = v0[14];
  v24 = v0[15];
  v26 = v0[16];
  v27._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v27);

  v29 = v42;
  v28 = v43;
  v30 = *(v21 + 16);
  v31 = swift_allocObject();
  v31[2] = v21;
  v31[3] = v19;
  v31[4] = v18;
  v31[5] = v29;
  v31[6] = v28;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_1000F8968;
  *(v32 + 24) = v31;
  v0[12] = sub_1000C7A78;
  v0[13] = v32;
  v0[8] = _NSConcreteStackBlock;
  v0[9] = 1107296256;
  v0[10] = sub_10013EC94;
  v0[11] = &unk_1005911D0;
  v33 = _Block_copy(v0 + 8);
  v34 = v0[13];

  dispatch_sync(v30, v33);
  _Block_release(v33);
  LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

  if (v33)
  {
    __break(1u);
  }

  else
  {
    v37 = v0[35];
    v36 = v0[36];
    v38 = v0[32];
    v39 = v0[29];
    v40 = v0[26];

    v41 = v0[1];

    return v41();
  }

  return result;
}

uint64_t sub_10012A5A4()
{
  v44 = v0;
  v1 = v0[38];

  v2 = v0[41];
  if (qword_1005A7F10 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005DFBD0);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v42 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v9 = v0[17];
    v8 = v0[18];
    v10 = v0[19];
    v11 = Error.localizedDescription.getter();
    v13 = sub_10000D01C(v11, v12, &v42);

    *(v6 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to send secureLocationsKeyUpdate: %s", v6, 0xCu);
    sub_100004984(v7);
  }

  if (qword_1005A7EE0 != -1)
  {
    swift_once();
  }

  if ((static SystemInfo.underTest.getter() & 1) == 0)
  {
    v14 = String._bridgeToObjectiveC()();
    v15 = swift_allocObject();
    *(v15 + 16) = 772;
    v0[6] = sub_10012BBFC;
    v0[7] = v15;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_1000119E4;
    v0[5] = &unk_100591158;
    v16 = _Block_copy(v0 + 2);
    v17 = v0[7];

    AnalyticsSendEventLazy();
    _Block_release(v16);
  }

  v19 = v0[24];
  v18 = v0[25];
  v20 = v0[23];
  v21 = qword_1005DFB60;
  v42 = 0;
  v43 = 0xE000000000000000;

  _StringGuts.grow(_:)(23);

  v42 = 0xD000000000000012;
  v43 = 0x80000001004E1B90;
  v22._countAndFlagsBits = Destination.destination.getter();
  String.append(_:)(v22);

  v23._countAndFlagsBits = 32;
  v23._object = 0xE100000000000000;
  String.append(_:)(v23);
  swift_getErrorValue();
  v25 = v0[14];
  v24 = v0[15];
  v26 = v0[16];
  v27._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v27);

  v29 = v42;
  v28 = v43;
  v30 = *(v21 + 16);
  v31 = swift_allocObject();
  v31[2] = v21;
  v31[3] = v19;
  v31[4] = v18;
  v31[5] = v29;
  v31[6] = v28;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_1000F8968;
  *(v32 + 24) = v31;
  v0[12] = sub_1000C7A78;
  v0[13] = v32;
  v0[8] = _NSConcreteStackBlock;
  v0[9] = 1107296256;
  v0[10] = sub_10013EC94;
  v0[11] = &unk_1005911D0;
  v33 = _Block_copy(v0 + 8);
  v34 = v0[13];

  dispatch_sync(v30, v33);
  _Block_release(v33);
  LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

  if (v33)
  {
    __break(1u);
  }

  else
  {
    v37 = v0[35];
    v36 = v0[36];
    v38 = v0[32];
    v39 = v0[29];
    v40 = v0[26];

    v41 = v0[1];

    return v41();
  }

  return result;
}

uint64_t sub_10012AA7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = *(*(sub_10004B564(&qword_1005A9690, &qword_1004C2A00) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v5 = async function pointer to daemon.getter[1];
  v6 = swift_task_alloc();
  v3[11] = v6;
  *v6 = v3;
  v6[1] = sub_10012AB4C;

  return daemon.getter();
}

uint64_t sub_10012AB4C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  v12 = *v1;
  *(v3 + 96) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 104) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = sub_10004B564(&qword_1005AB8D8, &qword_1004D9660);
  v9 = sub_100009008(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_10001DF0C(&qword_1005AB8E0, &qword_1005AB8D8, &qword_1004D9660);
  *v6 = v12;
  v6[1] = sub_10012AD38;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10012AD38(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 104);
  v8 = *v2;
  v3[14] = a1;
  v3[15] = v1;

  if (v1)
  {
    v5 = sub_10012B3B8;
  }

  else
  {
    v6 = v3[12];

    v5 = sub_10012AE54;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10012AE54()
{
  v1 = v0[14];
  v2 = v0[8];
  v0[5] = type metadata accessor for BeaconSharingSessionContext();
  v0[6] = sub_100009008(&qword_1005AB8E8, type metadata accessor for BeaconSharingSessionContext);
  v3 = sub_10000331C(v0 + 2);
  v4 = type metadata accessor for Destination();
  (*(*(v4 - 8) + 16))(v3, v2, v4);

  return _swift_task_switch(sub_10012AF50, v1, 0);
}

uint64_t sub_10012AF50()
{
  v1 = *(v0[14] + 128);
  v2 = async function pointer to InternetMessaging.makeSession<A>(destination:invitationContext:)[1];
  v3 = swift_task_alloc();
  v0[16] = v3;
  v4 = sub_10012B620();
  *v3 = v0;
  v3[1] = sub_10012B004;
  v5 = v0[8];

  return InternetMessaging.makeSession<A>(destination:invitationContext:)(v5, v0 + 2, &type metadata for BeaconSharingSessionMessageType, v4);
}

uint64_t sub_10012B004(uint64_t a1)
{
  v4 = *v2;
  v5 = (*v2)[16];
  v13 = *v2;
  v4[17] = a1;
  v4[18] = v1;

  if (v1)
  {
    v6 = sub_10012B344;
    v7 = 0;
    v8 = 0;
  }

  else
  {
    sub_100004984(v4 + 2);
    sub_10004B564(&qword_1005AAC08, &unk_1004C4650);
    sub_10001DF0C(&qword_1005AAC20, &qword_1005AAC08, &unk_1004C4650);
    v9 = dispatch thunk of Actor.unownedExecutor.getter();
    v11 = v10;
    v6 = sub_10012B198;
    v7 = v9;
    v8 = v11;
  }

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10012B198()
{
  v1 = *(v0 + 136);
  dispatch thunk of SessionMessaging.startup()();

  return _swift_task_switch(sub_10012B200, 0, 0);
}

uint64_t sub_10012B200()
{
  v1 = v0[9];
  os_unfair_lock_lock((v1 + 32));
  v2 = *(v1 + 40);
  if (v2)
  {
    v3 = v0[10];
    v4 = type metadata accessor for TaskPriority();
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
    v5 = swift_allocObject();
    v5[2] = 0;
    v5[3] = 0;
    v5[4] = v2;
    sub_10020D620(0, 0, v3, &unk_1004C5760, v5);
  }

  v6 = v0[17];
  v7 = v0[14];
  v8 = v0[10];
  v9 = v0[7];
  *(v1 + 40) = v6;

  os_unfair_lock_unlock((v1 + 32));

  *v9 = v6;

  v10 = v0[1];

  return v10();
}

uint64_t sub_10012B344()
{
  v1 = v0[14];

  sub_100004984(v0 + 2);
  v2 = v0[18];
  v3 = v0[10];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10012B3B8()
{
  v1 = v0[12];

  v2 = v0[15];
  v3 = v0[10];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10012B424()
{
  v1 = *(&async function pointer to dispatch thunk of SessionMessaging.close() + 1);
  v4 = (&async function pointer to dispatch thunk of SessionMessaging.close() + async function pointer to dispatch thunk of SessionMessaging.close());
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_10000368C;

  return v4();
}

uint64_t sub_10012B4C8()
{
  v1 = *(&async function pointer to dispatch thunk of SessionMessaging.close() + 1);
  v4 = (&async function pointer to dispatch thunk of SessionMessaging.close() + async function pointer to dispatch thunk of SessionMessaging.close());
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_100003690;

  return v4();
}

uint64_t sub_10012B56C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000368C;

  return sub_10012B4C8();
}

unint64_t sub_10012B620()
{
  result = qword_1005AB8F0;
  if (!qword_1005AB8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AB8F0);
  }

  return result;
}

uint64_t sub_10012B674()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000368C;

  return sub_10012B424();
}

uint64_t sub_10012B728()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000368C;

  return sub_10012B424();
}

uint64_t sub_10012B7DC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for SessionMessagingInvite() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for Destination() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10000368C;

  return sub_100127B48(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_10012B92C(uint64_t a1)
{
  v4 = *(type metadata accessor for Destination() - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_10000368C;

  return sub_100128330(a1, v6, v7, v8, v9, v10, v11, v1 + v5);
}

uint64_t sub_10012BA44(uint64_t a1)
{
  v4 = *(type metadata accessor for Destination() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000368C;

  return sub_100127E34(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10012BB3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SecureLocationsConfig();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10012BBA0(uint64_t a1)
{
  v2 = type metadata accessor for SecureLocationsConfig();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10012BC08(uint64_t a1)
{
  v2 = type metadata accessor for Destination();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  if (sub_100126014())
  {
    return 1;
  }

  (*(v3 + 16))(&v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v2);
  unsafeFromAsyncTask<A>(_:)();

  return v8[0];
}

uint64_t sub_10012BEFC(uint64_t a1)
{
  v4 = *(type metadata accessor for Destination() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100003690;

  return sub_1001262D4(a1, v1 + v5);
}

uint64_t sub_10012BFD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005AB940, &qword_1004C5830);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10012C048(uint64_t a1)
{
  v4 = *(type metadata accessor for Destination() - 8);
  v5 = (*(v4 + 80) + 96) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[11];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100003690;

  return sub_100124454(a1, v6, v7, (v1 + 4), v8, v1 + v5, v9);
}

uint64_t sub_10012C184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v42 = a8;
  v43 = a7;
  v41 = a6;
  v45 = a3;
  v46 = a5;
  v56 = a4;
  v57 = a2;
  v48 = a1;
  v51 = type metadata accessor for DispatchWorkItemFlags();
  v53 = *(v51 - 8);
  v8 = *(v53 + 64);
  __chkstk_darwin(v51);
  v49 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for DispatchQoS();
  v50 = *(v52 - 8);
  v10 = *(v50 + 64);
  __chkstk_darwin(v52);
  v47 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MessageContext();
  v54 = *(v12 - 8);
  v55 = v12;
  v40 = *(v54 + 64);
  __chkstk_darwin(v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v14;
  v15 = type metadata accessor for HashedAdvertisement();
  v37 = v15;
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v38 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PrivateKey();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = *(v57 + 24);
  (*(v19 + 16))(v21, v41, v18);
  (*(v16 + 16))(&v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v43, v15);
  v22 = v54;
  (*(v54 + 16))(v14, v42, v55);
  v23 = (*(v19 + 80) + 48) & ~*(v19 + 80);
  v24 = (v20 + *(v16 + 80) + v23) & ~*(v16 + 80);
  v25 = (v17 + *(v22 + 80) + v24) & ~*(v22 + 80);
  v26 = (v40 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  v28 = v56;
  v29 = v57;
  *(v27 + 2) = v45;
  *(v27 + 3) = v28;
  v30 = v46;
  *(v27 + 4) = v29;
  *(v27 + 5) = v30;
  (*(v19 + 32))(&v27[v23], v21, v18);
  (*(v16 + 32))(&v27[v24], v38, v37);
  (*(v54 + 32))(&v27[v25], v39, v55);
  *&v27[v26] = v48;
  aBlock[4] = sub_10012D658;
  aBlock[5] = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_100591298;
  v31 = _Block_copy(aBlock);

  v32 = v47;
  static DispatchQoS.unspecified.getter();
  aBlock[8] = _swiftEmptyArrayStorage;
  sub_10001E038(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10012D7B4();
  v33 = v49;
  v34 = v51;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v31);
  (*(v53 + 8))(v33, v34);
  (*(v50 + 8))(v32, v52);
}

uint64_t sub_10012C734(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v159 = a8;
  v151 = a7;
  v148 = a6;
  v158 = a5;
  v150 = a4;
  v170 = a2;
  v165 = a1;
  v9 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v156 = &v136 - v11;
  v12 = sub_10004B564(&qword_1005A9280, &qword_1004C27F8);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v142 = &v136 - v14;
  v167 = type metadata accessor for MessageContext();
  v164 = *(v167 - 8);
  v15 = *(v164 + 64);
  v16 = __chkstk_darwin(v167);
  v18 = &v136 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = v17;
  __chkstk_darwin(v16);
  v163 = &v136 - v19;
  v20 = type metadata accessor for HashedAdvertisement();
  v169 = *(v20 - 8);
  v21 = *(v169 + 64);
  v22 = __chkstk_darwin(v20);
  v144 = &v136 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v162 = &v136 - v23;
  v24 = type metadata accessor for PrivateKey();
  v168 = *(v24 - 8);
  v25 = *(v168 + 64);
  v26 = __chkstk_darwin(v24);
  v143 = &v136 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v161 = &v136 - v27;
  v28 = sub_10004B564(&qword_1005AB018, &unk_1004DD720);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v31 = &v136 - v30;
  v32 = type metadata accessor for SecureLocationsCachedSharedKey(0);
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = __chkstk_darwin(v32);
  v154 = &v136 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v35);
  v160 = &v136 - v38;
  v153 = v39;
  __chkstk_darwin(v37);
  v41 = &v136 - v40;
  v155 = a3;
  v42 = *(a3 + 16);
  sub_1004AD358(v165, v170);
  v43 = *(v33 + 48);
  v145 = v32;
  v44 = v43(v31, 1, v32);
  v166 = v24;
  v152 = v33;
  v157 = v20;
  v147 = v21;
  v146 = v25;
  if (v44 == 1)
  {
    v45 = v145;
    v46 = v165;
    sub_100002CE0(v31, &qword_1005AB018, &unk_1004DD720);
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    sub_10000A6F0(v47, qword_1005DFB98);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v48, v49, "Received secureLocations keys but no existing record waiting for keys. Saving keys", v50, 2u);
    }

    v51 = String.utf8Data.getter();
    v53 = v52;
    v171 = v51;
    v172 = v52;
    sub_1000CA210();
    v54 = v160;
    DataProtocol.stableUUID.getter();
    sub_1000049D0(v51, v53);
    v142 = v45[6];
    v55 = *(v168 + 56);
    v143 = (v168 + 56);
    v144 = v55;
    (v55)(v54 + v142, 1, 1, v166);
    v56 = v45[7];
    v57 = v169;
    v58 = *(v169 + 56);
    v59 = v157;
    v58(v54 + v56, 1, 1, v157);
    v60 = v46;
    v61 = v45[8];
    v62 = type metadata accessor for Destination();
    (*(*(v62 - 8) + 56))(v54 + v61, 1, 1, v62);
    v63 = v45[11];
    v64 = type metadata accessor for Date();
    (*(*(v64 - 8) + 56))(v54 + v63, 1, 1, v64);
    v65 = (v54 + v45[5]);
    v66 = v170;
    *v65 = v60;
    v65[1] = v66;
    v67 = (v54 + v45[9]);
    *v67 = 0;
    v67[1] = 0;
    *(v54 + v45[10]) = v150;

    sub_100002CE0(v54 + v56, &qword_1005AAB18, &qword_1004C4580);
    v150 = *(v57 + 16);
    v68 = v148;
    v150(v54 + v56, v148, v59);
    v58(v54 + v56, 0, 1, v59);
    v69 = v142;
    sub_100002CE0(v54 + v142, &unk_1005AE620, &qword_1004C4588);
    v70 = v168;
    v71 = *(v168 + 16);
    v72 = v158;
    v73 = v166;
    v71(v54 + v69, v158, v166);
    (v144)(v54 + v69, 0, 1, v73);
    v150(v162, v68, v59);
    v71(v161, v72, v73);
    v74 = v164;
    (*(v164 + 16))(v163, v151, v167);
    v75 = v169;
    v76 = (*(v169 + 80) + 32) & ~*(v169 + 80);
    v77 = (v147 + *(v70 + 80) + v76) & ~*(v70 + 80);
    v78 = (v146 + *(v74 + 80) + v77) & ~*(v74 + 80);
    v79 = (v149 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
    v80 = swift_allocObject();
    v81 = v170;
    *(v80 + 16) = v165;
    *(v80 + 24) = v81;
    (*(v75 + 32))(v80 + v76, v162, v59);
    (*(v168 + 32))(v80 + v77, v161, v166);
    (*(v74 + 32))(v80 + v78, v163, v167);
    *(v80 + v79) = v155;
    *(v80 + ((v79 + 15) & 0xFFFFFFFFFFFFFFF8)) = v159;
    v82 = type metadata accessor for TaskPriority();
    v83 = v156;
    (*(*(v82 - 8) + 56))(v156, 1, 1, v82);
    v84 = v154;
    sub_10012FB10(v54, v154);
    v85 = (*(v152 + 80) + 32) & ~*(v152 + 80);
    v86 = (v153 + v85 + 7) & 0xFFFFFFFFFFFFFFF8;
    v87 = swift_allocObject();
    *(v87 + 16) = 0;
    *(v87 + 24) = 0;
    sub_10012FB74(v84, v87 + v85);
    v88 = (v87 + v86);
    *v88 = sub_10012F99C;
    v88[1] = v80;

    sub_1001D7F30(0, 0, v83, &unk_1004C4C18, v87);
  }

  else
  {
    v141 = v41;
    sub_10012FB74(v31, v41);
    v89 = *(v168 + 16);
    v140 = v168 + 16;
    v89(v161, v158, v24);
    v137 = v89;
    v91 = v169 + 16;
    v90 = *(v169 + 16);
    v92 = v18;
    v136 = v18;
    v93 = v148;
    v90(v162, v148, v20);
    v138 = v90;
    v139 = v91;
    v94 = *(v164 + 16);
    v95 = v151;
    v96 = v167;
    v94(v163, v151, v167);
    v90(v144, v93, v20);
    v97 = v166;
    v89(v143, v158, v166);
    v94(v92, v95, v96);
    v99 = v168;
    v98 = v169;
    v100 = (*(v169 + 80) + 24) & ~*(v169 + 80);
    v101 = (v147 + *(v168 + 80) + v100) & ~*(v168 + 80);
    v102 = v164;
    v158 = (v146 + *(v164 + 80) + v101) & ~*(v164 + 80);
    v103 = (v149 + v158 + 7) & 0xFFFFFFFFFFFFFFF8;
    v104 = swift_allocObject();
    v105 = v160;
    *(v104 + 16) = v159;
    v106 = *(v98 + 32);
    v107 = v157;
    v106(v104 + v100, v144, v157);
    v108 = v99;
    v109 = *(v99 + 32);
    v110 = v97;
    v109(v104 + v101, v143, v97);
    (*(v102 + 32))(v104 + v158, v136, v167);
    *(v104 + v103) = v155;
    v111 = (v104 + ((v103 + 15) & 0xFFFFFFFFFFFFFFF8));
    v112 = v104;
    v113 = v170;
    *v111 = v165;
    v111[1] = v113;
    sub_10012FB10(v141, v105);
    v114 = v145;
    *(v105 + v145[10]) = v150;
    v115 = v114[6];

    sub_100002CE0(v105 + v115, &unk_1005AE620, &qword_1004C4588);
    v116 = v161;
    v137(v105 + v115, v161, v110);
    (*(v108 + 56))(v105 + v115, 0, 1, v110);
    v117 = v114[7];
    sub_100002CE0(v105 + v117, &qword_1005AAB18, &qword_1004C4580);
    v118 = v162;
    v138(v105 + v117, v162, v107);
    (*(v169 + 56))(v105 + v117, 0, 1, v107);
    v119 = v142;
    v120 = v163;
    MessageContext.fromID.getter();
    v121 = type metadata accessor for Destination();
    (*(*(v121 - 8) + 56))(v119, 0, 1, v121);
    sub_10012FDAC(v119, v105 + v114[8]);
    v122 = v120;
    v123 = MessageContext.senderCorrelationIdentifier.getter();
    v125 = v124;
    v126 = (v105 + v114[9]);
    v127 = v126[1];

    *v126 = v123;
    v126[1] = v125;
    v128 = type metadata accessor for TaskPriority();
    v129 = v156;
    (*(*(v128 - 8) + 56))(v156, 1, 1, v128);
    v130 = v154;
    sub_10012FB10(v105, v154);
    v131 = (*(v152 + 80) + 32) & ~*(v152 + 80);
    v132 = (v153 + v131 + 7) & 0xFFFFFFFFFFFFFFF8;
    v133 = swift_allocObject();
    *(v133 + 16) = 0;
    *(v133 + 24) = 0;
    sub_10012FB74(v130, v133 + v131);
    v134 = (v133 + v132);
    *v134 = sub_10012FC34;
    v134[1] = v112;

    sub_1001D7F30(0, 0, v129, &unk_1004C5858, v133);

    (*(v164 + 8))(v122, v167);
    (*(v169 + 8))(v118, v157);
    (*(v168 + 8))(v116, v166);
    sub_10012FBD8(v141);
  }

  return sub_10012FBD8(v160);
}

uint64_t sub_10012D658()
{
  v1 = *(type metadata accessor for PrivateKey() - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for HashedAdvertisement() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for MessageContext() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = v0[2];
  v10 = v0[3];
  v11 = v0[4];
  v12 = v0[5];
  v13 = *(v0 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10012C734(v9, v10, v11, v12, v0 + v2, v0 + v5, v0 + v8, v13);
}

unint64_t sub_10012D7B4()
{
  result = qword_1005ABAD0;
  if (!qword_1005ABAD0)
  {
    sub_10004B610(&unk_1005A9700, &qword_1004C3820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ABAD0);
  }

  return result;
}

void sub_10012D818(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v93 = a8;
  v92 = a7;
  v102 = a6;
  v96 = a5;
  v95 = a4;
  v94 = a3;
  v106 = a2;
  v91 = type metadata accessor for Destination();
  v90 = *(v91 - 8);
  v9 = *(v90 + 64);
  __chkstk_darwin(v91);
  v89 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for MessageContext();
  v101 = *(v105 - 8);
  v11 = *(v101 + 64);
  __chkstk_darwin(v105);
  v104 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for PrivateKey();
  v99 = *(v103 - 8);
  v13 = *(v99 + 64);
  __chkstk_darwin(v103);
  v15 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for HashedAdvertisement();
  v98 = *(v16 - 8);
  v17 = *(v98 + 64);
  __chkstk_darwin(v16);
  v97 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for SecureLocationsCachedSharedKey(0);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19);
  v23 = &v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v88 - v24;
  v26 = sub_10004B564(&qword_1005AB028, &qword_1004C4C20);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26);
  v29 = (&v88 - v28);
  sub_100005F04(a1, &v88 - v28, &qword_1005AB028, &qword_1004C4C20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30 = *v29;
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_10000A6F0(v31, qword_1005DFB98);
    swift_errorRetain();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      aBlock[0] = v35;
      *v34 = 136315138;
      swift_getErrorValue();
      v36 = Error.localizedDescription.getter();
      v38 = sub_10000D01C(v36, v37, aBlock);

      *(v34 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v32, v33, "Failed to update received keys from %s", v34, 0xCu);
      sub_100004984(v35);
    }

    if (qword_1005A7EE0 == -1)
    {
      if (static SystemInfo.underTest.getter())
      {
LABEL_8:

        goto LABEL_24;
      }
    }

    else
    {
      swift_once();
      if (static SystemInfo.underTest.getter())
      {
        goto LABEL_8;
      }
    }

    v85 = String._bridgeToObjectiveC()();
    v86 = swift_allocObject();
    *(v86 + 16) = 522;
    aBlock[4] = sub_10012BBFC;
    aBlock[5] = v86;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000119E4;
    aBlock[3] = &unk_100591388;
    v87 = _Block_copy(aBlock);

    AnalyticsSendEventLazy();

    _Block_release(v87);

    goto LABEL_24;
  }

  sub_10012FB74(v29, v25);
  v100 = v25;
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  v40 = sub_10000A6F0(v39, qword_1005DFB98);
  sub_10012FB10(v100, v23);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    aBlock[0] = v44;
    *v43 = 141558275;
    *(v43 + 4) = 1752392040;
    *(v43 + 12) = 2081;
    v45 = &v23[*(v19 + 20)];
    v46 = *v45;
    v47 = v45[1];
    v88 = v16;

    sub_10012FBD8(v23);
    v48 = sub_10000D01C(v46, v47, aBlock);
    v16 = v88;

    *(v43 + 14) = v48;
    _os_log_impl(&_mh_execute_header, v41, v42, "Successfully updated keys for findMyId %{private,mask.hash}s", v43, 0x16u);
    sub_100004984(v44);
  }

  else
  {

    sub_10012FBD8(v23);
  }

  v50 = v104;
  v49 = v105;
  v51 = v101;
  v53 = v97;
  v52 = v98;
  (*(v98 + 16))(v97, v94, v16);
  v54 = v99;
  v55 = v103;
  (*(v99 + 16))(v15, v95, v103);
  (*(v51 + 16))(v50, v96, v49);
  v56 = Logger.logObject.getter();
  LODWORD(v101) = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v56, v101))
  {
    v57 = swift_slowAlloc();
    v96 = v40;
    v58 = v54;
    v59 = v57;
    v95 = swift_slowAlloc();
    aBlock[0] = v95;
    *v59 = 141559299;
    *(v59 + 4) = 1752392040;
    *(v59 + 12) = 2081;
    sub_10001E038(&qword_1005AAC98, &type metadata accessor for HashedAdvertisement);
    v94 = v56;
    v60 = RawRepresentable<>.base64EncodedString(options:)();
    v61 = v51;
    v63 = v62;
    (*(v52 + 8))(v53, v16);
    v64 = v15;
    v65 = sub_10000D01C(v60, v63, aBlock);

    *(v59 + 14) = v65;
    *(v59 + 22) = 2160;
    *(v59 + 24) = 1752392040;
    *(v59 + 32) = 2081;
    sub_10001E038(&qword_1005AAC90, &type metadata accessor for PrivateKey);
    v66 = v103;
    v67 = RawRepresentable<>.base64EncodedString(options:)();
    v69 = v68;
    (*(v58 + 8))(v64, v66);
    v70 = sub_10000D01C(v67, v69, aBlock);

    *(v59 + 34) = v70;
    *(v59 + 42) = 2160;
    *(v59 + 44) = 1752392040;
    *(v59 + 52) = 2081;
    v71 = v89;
    v72 = v104;
    MessageContext.fromID.getter();
    sub_10001E038(&qword_1005A9260, &type metadata accessor for Destination);
    v73 = v91;
    v74 = dispatch thunk of CustomStringConvertible.description.getter();
    v76 = v75;
    (*(v90 + 8))(v71, v73);
    (*(v61 + 8))(v72, v105);
    v77 = sub_10000D01C(v74, v76, aBlock);

    *(v59 + 54) = v77;
    v78 = v94;
    _os_log_impl(&_mh_execute_header, v94, v101, "Received Keys for \nlocationId %{private,mask.hash}s \ndecryptionKey %{private,mask.hash}s \nfrom %{private,mask.hash}s", v59, 0x3Eu);
    swift_arrayDestroy();
  }

  else
  {

    (*(v51 + 8))(v50, v105);
    (*(v54 + 8))(v15, v55);
    (*(v52 + 8))(v53, v16);
  }

  v79 = *(v102 + 80);
  if (v79)
  {
    v80 = *(v102 + 88);

    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&_mh_execute_header, v81, v82, "Calling keys received handler", v83, 2u);
    }

    sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
    v84 = swift_allocObject();
    *(v84 + 16) = xmmword_1004C1900;
    *(v84 + 32) = v92;
    *(v84 + 40) = v93;

    v79(v84);
    sub_1000CA9C0(v79);
  }

  sub_10012FBD8(v100);
LABEL_24:
  Transaction.capture()();
  Transaction.capture()();
}

void sub_10012E408(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v94 = a8;
  v95 = a3;
  v87 = a5;
  v88 = a6;
  v86 = a4;
  v93 = a2;
  v82 = type metadata accessor for Destination();
  v81 = *(v82 - 8);
  v10 = *(v81 + 64);
  __chkstk_darwin(v82);
  v80 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for MessageContext();
  v90 = *(v92 - 8);
  isa = v90[8].isa;
  __chkstk_darwin(v92);
  v91 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for PrivateKey();
  v14 = *(v89 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v89);
  v85 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for HashedAdvertisement();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10004B564(&qword_1005AB028, &qword_1004C4C20);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v24 = a1;
  v26 = (&v78 - v25);
  sub_100005F04(v24, &v78 - v25, &qword_1005AB028, &qword_1004C4C20);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v79 = v26;
    v83 = a7;
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    v37 = sub_10000A6F0(v36, qword_1005DFB98);
    v38 = v95;

    v84 = v37;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      aBlock[0] = v42;
      *v41 = 141558275;
      *(v41 + 4) = 1752392040;
      *(v41 + 12) = 2081;
      *(v41 + 14) = sub_10000D01C(v93, v38, aBlock);
      _os_log_impl(&_mh_execute_header, v39, v40, "Successfully updated keys for findMyId %{private,mask.hash}s", v41, 0x16u);
      sub_100004984(v42);
    }

    v43 = v92;
    v44 = v90;
    (*(v18 + 16))(v21, v86, v17);
    v45 = v85;
    v46 = v89;
    (*(v14 + 16))(v85, v87, v89);
    v47 = v91;
    (v44[2].isa)(v91, v88, v43);
    v48 = Logger.logObject.getter();
    LODWORD(v88) = static os_log_type_t.default.getter();
    v90 = v48;
    v49 = os_log_type_enabled(v48, v88);
    v50 = v83;
    if (v49)
    {
      v51 = v44;
      v52 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      aBlock[0] = v87;
      *v52 = 141559299;
      *(v52 + 4) = 1752392040;
      *(v52 + 12) = 2081;
      sub_10001E038(&qword_1005AAC98, &type metadata accessor for HashedAdvertisement);
      v53 = RawRepresentable<>.base64EncodedString(options:)();
      v55 = v54;
      (*(v18 + 8))(v21, v17);
      v56 = sub_10000D01C(v53, v55, aBlock);

      *(v52 + 14) = v56;
      *(v52 + 22) = 2160;
      *(v52 + 24) = 1752392040;
      *(v52 + 32) = 2081;
      sub_10001E038(&qword_1005AAC90, &type metadata accessor for PrivateKey);
      v57 = RawRepresentable<>.base64EncodedString(options:)();
      v59 = v58;
      (*(v14 + 8))(v45, v46);
      v60 = sub_10000D01C(v57, v59, aBlock);

      *(v52 + 34) = v60;
      *(v52 + 42) = 2160;
      *(v52 + 44) = 1752392040;
      *(v52 + 52) = 2081;
      v61 = v80;
      v62 = v91;
      MessageContext.fromID.getter();
      sub_10001E038(&qword_1005A9260, &type metadata accessor for Destination);
      v63 = v82;
      v64 = dispatch thunk of CustomStringConvertible.description.getter();
      v66 = v65;
      (*(v81 + 8))(v61, v63);
      (v51[1].isa)(v62, v92);
      v67 = sub_10000D01C(v64, v66, aBlock);
      v50 = v83;

      *(v52 + 54) = v67;
      v68 = v90;
      _os_log_impl(&_mh_execute_header, v90, v88, "Received Keys for \nlocationId %{private,mask.hash}s \ndecryptionKey %{private,mask.hash}s \nfrom %{private,mask.hash}s", v52, 0x3Eu);
      swift_arrayDestroy();

      v69 = *(v50 + 80);
      if (!v69)
      {
        goto LABEL_20;
      }
    }

    else
    {

      (v44[1].isa)(v47, v43);
      (*(v14 + 8))(v45, v46);
      (*(v18 + 8))(v21, v17);
      v69 = *(v50 + 80);
      if (!v69)
      {
LABEL_20:
        sub_100002CE0(v79, &qword_1005AB028, &qword_1004C4C20);
        goto LABEL_23;
      }
    }

    v70 = *(v50 + 88);

    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&_mh_execute_header, v71, v72, "Calling keys received handler", v73, 2u);
    }

    sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_1004C1900;
    *(v74 + 32) = v93;
    *(v74 + 40) = v95;

    v69(v74);

    sub_1000CA9C0(v69);
    goto LABEL_20;
  }

  v27 = *v26;
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_10000A6F0(v28, qword_1005DFB98);
  v29 = v95;

  swift_errorRetain();
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v32 = 136315394;
    *(v32 + 4) = sub_10000D01C(v93, v29, aBlock);
    *(v32 + 12) = 2080;
    v96 = v27;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v33 = String.init<A>(describing:)();
    v35 = sub_10000D01C(v33, v34, aBlock);

    *(v32 + 14) = v35;
    _os_log_impl(&_mh_execute_header, v30, v31, "Failed to save new sharedKeyRecord from %s Error %s", v32, 0x16u);
    swift_arrayDestroy();
  }

  if (qword_1005A7EE0 != -1)
  {
    swift_once();
    if (static SystemInfo.underTest.getter())
    {
      goto LABEL_8;
    }

LABEL_22:
    v75 = String._bridgeToObjectiveC()();
    v76 = swift_allocObject();
    *(v76 + 16) = 266;
    aBlock[4] = sub_10013023C;
    aBlock[5] = v76;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000119E4;
    aBlock[3] = &unk_1005913D8;
    v77 = _Block_copy(aBlock);

    AnalyticsSendEventLazy();

    _Block_release(v77);

    goto LABEL_23;
  }

  if ((static SystemInfo.underTest.getter() & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_8:

LABEL_23:
  Transaction.capture()();
}

uint64_t sub_10012EF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a1;
  v27 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v27 - 8);
  v7 = *(v30 + 64);
  __chkstk_darwin(v27);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v28 = *(v10 - 8);
  v29 = v10;
  v11 = *(v28 + 64);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(a2 + 24);
  (*(v15 + 16))(v17, a4, v14);
  v18 = (*(v15 + 80) + 24) & ~*(v15 + 80);
  v19 = (v16 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  (*(v15 + 32))(v20 + v18, v17, v14);
  *(v20 + v19) = v25;
  aBlock[4] = sub_100130180;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_100591428;
  v21 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_10001E038(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10012D7B4();
  v22 = v27;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v30 + 8))(v9, v22);
  (*(v28 + 8))(v13, v29);
}

uint64_t sub_10012F300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42[1] = a3;
  v42[2] = a1;
  v4 = type metadata accessor for SecureLocationsCachedSharedKey(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10004B564(&qword_1005AB018, &unk_1004DD720);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = v42 - v15;
  __chkstk_darwin(v14);
  v18 = v42 - v17;
  v19 = sub_1004B7328();
  v44 = a2;
  sub_100450000(sub_100130210, v19, v18);

  v43 = v18;
  sub_100005F04(v18, v16, &qword_1005AB018, &unk_1004DD720);
  v20 = *(v5 + 48);
  if (v20(v16, 1, v4) == 1)
  {
    sub_100002CE0(v16, &qword_1005AB018, &unk_1004DD720);
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000A6F0(v21, qword_1005DFB98);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Received command to remove keys but no key record found to remove", v24, 2u);
    }

    return sub_100002CE0(v43, &qword_1005AB018, &unk_1004DD720);
  }

  else
  {
    sub_10012FB74(v16, v8);
    v26 = &v8[*(v4 + 20)];
    v28 = *v26;
    v27 = v26[1];
    sub_1004AD358(*v26, v27);
    v29 = v20(v13, 1, v4);
    sub_100002CE0(v13, &qword_1005AB018, &unk_1004DD720);
    if (v29 == 1)
    {
      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_10000A6F0(v30, qword_1005DFB98);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v31, v32, "Received command to remove keys but no key record found to remove", v33, 2u);
      }
    }

    else
    {
      v34 = sub_1004B7528(v28, v27);
      v35 = sub_1004B7FD8(v28, v27);
      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      sub_10000A6F0(v36, qword_1005DFB98);

      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v45 = v40;
        *v39 = 136315650;

        v41 = sub_10000D01C(v28, v27, &v45);

        *(v39 + 4) = v41;
        *(v39 + 12) = 1024;
        *(v39 + 14) = v34 & 1;
        *(v39 + 18) = 1024;
        *(v39 + 20) = v35 & 1;
        _os_log_impl(&_mh_execute_header, v37, v38, "Removed cached keys for %s keys %{BOOL}d location %{BOOL}d", v39, 0x18u);
        sub_100004984(v40);
      }

      Transaction.capture()();
    }

    sub_100002CE0(v43, &qword_1005AB018, &unk_1004DD720);
    return sub_10012FBD8(v8);
  }
}

uint64_t sub_10012F860(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (a1 + *(type metadata accessor for SecureLocationsCachedSharedKey(0) + 20));
  v8 = *v7;
  v9 = v7[1];
  v10 = String.utf8Data.getter();
  v12 = v11;
  v14[0] = v10;
  v14[1] = v11;
  sub_1000CA210();
  DataProtocol.stableUUID.getter();
  sub_1000049D0(v10, v12);
  LOBYTE(a1) = static UUID.== infix(_:_:)();
  (*(v3 + 8))(v6, v2);
  return a1 & 1;
}

void sub_10012F99C(uint64_t a1)
{
  v3 = *(type metadata accessor for HashedAdvertisement() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for PrivateKey() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for MessageContext() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v1 + 16);
  v13 = *(v1 + 24);
  v14 = *(v1 + v11);
  v15 = *(v1 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_10012E408(a1, v12, v13, v1 + v4, v1 + v7, v1 + v10, v14, v15);
}

uint64_t sub_10012FB10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SecureLocationsCachedSharedKey(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10012FB74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SecureLocationsCachedSharedKey(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10012FBD8(uint64_t a1)
{
  v2 = type metadata accessor for SecureLocationsCachedSharedKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10012FC34(uint64_t a1)
{
  v3 = *(type metadata accessor for HashedAdvertisement() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for PrivateKey() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for MessageContext() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v1 + v11);
  v13 = *(v1 + 16);
  v14 = (v1 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8));
  v15 = *v14;
  v16 = v14[1];

  sub_10012D818(a1, v13, (v1 + v4), v1 + v7, v1 + v10, v12, v15, v16);
}

uint64_t sub_10012FDAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005A9280, &qword_1004C27F8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10012FE1C(uint64_t a1)
{
  v4 = *(type metadata accessor for SecureLocationsCachedSharedKey(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100003690;

  return sub_1004B1814(a1, v6, v7, v1 + v5, v9, v10);
}

void sub_10012FF4C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1005A7F10 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000A6F0(v8, qword_1005DFBD0);
  (*(v4 + 16))(v7, a2, v3);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315138;
    v13 = UUID.uuidString.getter();
    v15 = v14;
    (*(v4 + 8))(v7, v3);
    v16 = sub_10000D01C(v13, v15, &v18);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "STUB: handleSecureLocationsKeyUpdateAck() for %s", v11, 0xCu);
    sub_100004984(v12);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_100130180()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10012F300(v3, v0 + v2, v4);
}

uint64_t sub_10013024C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Destination();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[4];
  sub_100011AEC(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (!v2)
  {
    sub_1000BAF2C(v13, v14);
    if (dispatch thunk of UnkeyedDecodingContainer.decode(_:)() == 1)
    {
      sub_1000BAF2C(v13, v14);
      sub_100131034(&qword_1005AAB48, &type metadata accessor for Destination);
      dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
      (*(v6 + 32))(a2, v9, v5);
    }

    else
    {
      sub_100130FE0();
      swift_allocError();
      swift_willThrow();
    }

    sub_100004984(v13);
  }

  return sub_100004984(a1);
}

uint64_t sub_100130444(void *a1)
{
  v3 = v1;
  v5 = type metadata accessor for Destination();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BeaconSharingSessionContext();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v17[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  sub_100011AEC(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  sub_100130CD0(v3, v13);
  (*(v6 + 32))(v9, v13, v5);
  sub_1000BAF2C(v17, v18);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  if (!v2)
  {
    sub_1000BAF2C(v17, v18);
    sub_100131034(&qword_1005AAB78, &type metadata accessor for Destination);
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  }

  (*(v6 + 8))(v9, v5);
  return sub_100004984(v17);
}

Swift::Int sub_10013068C(uint64_t a1)
{
  v2 = *(*(a1 - 8) + 64);
  __chkstk_darwin(a1 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  sub_100130CD0(v1, v4);
  Hasher._combine(_:)(0);
  v5 = type metadata accessor for Destination();
  sub_100131034(&qword_1005AADF8, &type metadata accessor for Destination);
  dispatch thunk of Hashable.hash(into:)();
  (*(*(v5 - 8) + 8))(v4, v5);
  return Hasher._finalize()();
}

uint64_t sub_1001307A4(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 - 8) + 64);
  __chkstk_darwin(a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100130CD0(v2, v5);
  Hasher._combine(_:)(0);
  v6 = type metadata accessor for Destination();
  sub_100131034(&qword_1005AADF8, &type metadata accessor for Destination);
  dispatch thunk of Hashable.hash(into:)();
  return (*(*(v6 - 8) + 8))(v5, v6);
}

Swift::Int sub_1001308A8(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 - 8) + 64);
  __chkstk_darwin(a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  sub_100130CD0(v2, v5);
  Hasher._combine(_:)(0);
  v6 = type metadata accessor for Destination();
  sub_100131034(&qword_1005AADF8, &type metadata accessor for Destination);
  dispatch thunk of Hashable.hash(into:)();
  (*(*(v6 - 8) + 8))(v5, v6);
  return Hasher._finalize()();
}

uint64_t sub_1001309BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005ABA18, &qword_1004C59A0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v13 - v7;
  v9 = *(v6 + 56);
  sub_100130CD0(a1, &v13 - v7);
  sub_100130CD0(a2, &v8[v9]);
  LOBYTE(a2) = static Destination.== infix(_:_:)();
  v10 = type metadata accessor for Destination();
  v11 = *(*(v10 - 8) + 8);
  v11(&v8[v9], v10);
  v11(v8, v10);
  return a2 & 1;
}

uint64_t sub_100130AC0()
{
  v1 = type metadata accessor for Destination();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BeaconSharingSessionContext();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100130CD0(v0, v9);
  (*(v2 + 32))(v5, v9, v1);
  v14[0] = 0x6369766544656D2ELL;
  v14[1] = 0xEA00000000002865;
  sub_100131034(&qword_1005A9260, &type metadata accessor for Destination);
  v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v10);

  v11._countAndFlagsBits = 41;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);
  v12 = v14[0];
  (*(v2 + 8))(v5, v1);
  return v12;
}

uint64_t type metadata accessor for BeaconSharingSessionContext()
{
  result = qword_1005AB9C0;
  if (!qword_1005AB9C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100130CD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BeaconSharingSessionContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100130D34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Destination();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100130DA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Destination();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_100130E1C(uint64_t a1)
{
  result = type metadata accessor for Destination();
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

unint64_t sub_100130FE0()
{
  result = qword_1005ABA10;
  if (!qword_1005ABA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ABA10);
  }

  return result;
}

uint64_t sub_100131034(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100131090()
{
  result = qword_1005ABA20;
  if (!qword_1005ABA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ABA20);
  }

  return result;
}

Swift::Int sub_1001310F4()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100131160()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

unint64_t sub_100131280()
{
  result = qword_1005ABA28;
  if (!qword_1005ABA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ABA28);
  }

  return result;
}

unint64_t sub_1001312D8()
{
  result = qword_1005ABA30;
  if (!qword_1005ABA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ABA30);
  }

  return result;
}

unint64_t sub_100131330()
{
  result = qword_1005ABA38;
  if (!qword_1005ABA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ABA38);
  }

  return result;
}

unint64_t sub_100131388()
{
  result = qword_1005ABA40;
  if (!qword_1005ABA40)
  {
    sub_10004B610(&qword_1005ABA48, qword_1004C5B08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ABA40);
  }

  return result;
}

unint64_t sub_1001313F0()
{
  result = qword_1005ABA50;
  if (!qword_1005ABA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ABA50);
  }

  return result;
}

Swift::Int CurrentLocationMonitor.Mode.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

uint64_t CurrentLocationMonitor.delegate.getter()
{
  v1 = v0 + OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t CurrentLocationMonitor.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*CurrentLocationMonitor.delegate.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_10013166C;
}

void sub_100131670(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_currentLocation;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *CurrentLocationMonitor.currentLocation.getter()
{
  v1 = OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_currentLocation;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_10013171C@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_queue);
  type metadata accessor for CLAuthorizationStatus(0);
  result = OS_dispatch_queue.sync<A>(execute:)();
  *a2 = v5;
  return result;
}

uint64_t CurrentLocationMonitor.currentAuthorizationStatus.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_queue);
  type metadata accessor for CLAuthorizationStatus(0);
  OS_dispatch_queue.sync<A>(execute:)();
  return v3;
}

uint64_t sub_10013180C(int a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v3 - 8);
  v36 = v3;
  v4 = *(v35 + 64);
  __chkstk_darwin(v3);
  v33 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for DispatchQoS();
  v32 = *(v34 - 8);
  v6 = *(v32 + 64);
  __chkstk_darwin(v34);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS.QoSClass();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = (&v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *&v1[OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_queue];
  *v18 = v19;
  (*(v15 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v14);
  v20 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  v22 = *(v15 + 8);
  v21 = v15 + 8;
  result = v22(v18, v14);
  if ((v19 & 1) == 0)
  {
    __break(1u);
LABEL_7:
    swift_once();
    goto LABEL_4;
  }

  v21 = OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor__currentAuthorizationStatus;
  if (*&v1[OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor__currentAuthorizationStatus] == a1)
  {
    return result;
  }

  static os_log_type_t.default.getter();
  if (qword_1005A7F18 != -1)
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1004C2310;
  v25 = *&v1[v21];
  *(v24 + 56) = &type metadata for Int32;
  *(v24 + 64) = &protocol witness table for Int32;
  *(v24 + 32) = v25;
  *(v24 + 96) = &type metadata for Int32;
  *(v24 + 104) = &protocol witness table for Int32;
  *(v24 + 72) = a1;
  os_log(_:dso:log:_:_:)();

  *&v1[v21] = a1;
  sub_1000545A4(0, &qword_1005A96F0, OS_dispatch_queue_ptr);
  (*(v10 + 104))(v13, enum case for DispatchQoS.QoSClass.default(_:), v9);
  v26 = static OS_dispatch_queue.global(qos:)();
  (*(v10 + 8))(v13, v9);
  v27 = swift_allocObject();
  *(v27 + 16) = v1;
  *(v27 + 24) = a1;
  aBlock[4] = sub_10013405C;
  aBlock[5] = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_100591868;
  v28 = _Block_copy(aBlock);
  v29 = v1;
  static DispatchQoS.unspecified.getter();
  v37 = _swiftEmptyArrayStorage;
  sub_100134098(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
  v30 = v33;
  v31 = v36;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v28);

  (*(v35 + 8))(v30, v31);
  (*(v32 + 8))(v8, v34);
}

uint64_t sub_100131D8C(uint64_t a1, uint64_t a2)
{
  v4 = a1 + OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 16))(a1, &protocol witness table for CurrentLocationMonitor, a2, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

char *CurrentLocationMonitor.init(mode:desiredAccuracy:)(int a1, uint64_t a2, int a3)
{
  v4 = v3;
  v44 = a3;
  v43 = a2;
  v52 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v48 = *(v5 - 8);
  v49 = v5;
  v6 = *(v48 + 64);
  __chkstk_darwin(v5);
  v47 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v10 = type metadata accessor for DispatchQoS();
  v45 = *(v10 - 8);
  v46 = v10;
  v11 = *(v45 + 64);
  __chkstk_darwin(v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_currentLocation] = 0;
  *&v3[OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor__currentAuthorizationStatus] = 0;
  *&v3[OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_locationManager] = 0;
  v51 = OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_queue;
  v50 = sub_1000545A4(0, &qword_1005A96F0, OS_dispatch_queue_ptr);
  (*(v15 + 104))(v18, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v14);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100134098(&qword_1005A8670, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10004B564(&unk_1005AB400, &unk_1004C0BF0);
  sub_10001DF0C(&qword_1005A8680, &unk_1005AB400, &unk_1004C0BF0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v19 = v13;
  *&v3[v51] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v3[OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_startCounts] = 0;
  v3[OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_locationMonitorStarted] = 0;
  v20 = objc_allocWithZone(NSBundle);
  v21 = String._bridgeToObjectiveC()();
  v22 = [v20 initWithPath:v21];

  if (v22)
  {
    v23 = [objc_opt_self() authorizationStatusForBundle:v22];
  }

  else
  {
    v23 = 0;
  }

  v4[OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_mode] = v52 & 1;
  LODWORD(aBlock[0]) = v23;
  v24 = sub_10004B564(&qword_1005ABAA0, &unk_1004C5BE8);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  v27 = CurrentValueSubject.init(_:)();
  *&v4[OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_authorizationStatusSubject] = v27;
  aBlock[0] = v27;
  sub_10001DF0C(&qword_1005ABAB0, &qword_1005ABAA0, &unk_1004C5BE8);
  *&v4[OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_authorizationStatusPublisher] = Publisher.eraseToAnyPublisher()();
  v28 = type metadata accessor for CurrentLocationMonitor();
  v55.receiver = v4;
  v55.super_class = v28;
  v29 = objc_msgSendSuper2(&v55, "init");
  v30 = objc_allocWithZone(NSBundle);
  v31 = String._bridgeToObjectiveC()();
  v32 = [v30 initWithPath:v31];

  if (v32)
  {
    v33 = *&v29[OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_queue];
    v34 = swift_allocObject();
    *(v34 + 16) = v29;
    *(v34 + 24) = v32;
    *(v34 + 32) = v43;
    *(v34 + 40) = v44 & 1;
    aBlock[4] = sub_10013260C;
    aBlock[5] = v34;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100020828;
    aBlock[3] = &unk_100591598;
    v35 = _Block_copy(aBlock);
    v36 = v33;
    v37 = v29;
    v38 = v32;
    v39 = v19;
    static DispatchQoS.unspecified.getter();
    v53 = _swiftEmptyArrayStorage;
    sub_100134098(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10004B564(&unk_1005A9700, &qword_1004C3820);
    sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
    v40 = v47;
    v41 = v49;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v35);

    (*(v48 + 8))(v40, v41);
    (*(v45 + 8))(v39, v46);
  }

  return v29;
}

uint64_t sub_100132550(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = [objc_allocWithZone(CLLocationManager) initWithEffectiveBundle:a2 delegate:a1 onQueue:*(a1 + OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_queue)];
  v9 = OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_locationManager;
  v10 = *(a1 + OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_locationManager);
  *(a1 + OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_locationManager) = v8;

  if ((a4 & 1) == 0)
  {
    [*(a1 + v9) setDesiredAccuracy:*&a3];
  }

  result = static SystemInfo.underTest.getter();
  if ((result & 1) == 0)
  {
    v12 = [objc_opt_self() authorizationStatusForBundle:a2];
    return sub_10013180C(v12);
  }

  return result;
}

id sub_100132644(uint64_t a1)
{
  static os_log_type_t.default.getter();
  if (qword_1005A7F18 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v2 = *(a1 + OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_locationManager);

  return [v2 requestLocation];
}

uint64_t sub_100132724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v11 = *(v20 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v20);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = *&v3[OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_queue];
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = a3;
  v16 = _Block_copy(aBlock);
  v17 = v3;
  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_100134098(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(v14, v20);
}

id sub_1001329E4(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_startCounts;
  v3 = *(a1 + OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_startCounts);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v1 = a1;
    *(a1 + OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_startCounts) = v5;
    static os_log_type_t.default.getter();
    if (qword_1005A7F18 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
  v6 = swift_allocObject();
  v7 = *(v1 + v2);
  *(v6 + 16) = xmmword_1004C1900;
  *(v6 + 56) = &type metadata for Int;
  *(v6 + 64) = &protocol witness table for Int;
  *(v6 + 32) = v7;
  os_log(_:dso:log:_:_:)();

  if (*(v1 + v2) == 1)
  {
    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    if (*(v1 + OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_mode))
    {
      v9 = &selRef_startMonitoringSignificantLocationChanges;
    }

    else
    {
      v9 = &selRef_startUpdatingLocation;
    }

    result = [*(v1 + OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_locationManager) *v9];
    *(v1 + OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_locationMonitorStarted) = 1;
  }

  return result;
}

id sub_100132B9C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_startCounts;
  v3 = *(a1 + OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_startCounts);
  v4 = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v1 = a1;
    *(a1 + OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_startCounts) = v5;
    static os_log_type_t.default.getter();
    if (qword_1005A7F18 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
  v6 = swift_allocObject();
  v7 = *(v1 + v2);
  *(v6 + 16) = xmmword_1004C1900;
  *(v6 + 56) = &type metadata for Int;
  *(v6 + 64) = &protocol witness table for Int;
  *(v6 + 32) = v7;
  os_log(_:dso:log:_:_:)();

  if (!*(v1 + v2))
  {
    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    if (*(v1 + OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_mode))
    {
      v9 = &selRef_stopMonitoringSignificantLocationChanges;
    }

    else
    {
      v9 = &selRef_stopUpdatingLocation;
    }

    result = [*(v1 + OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_locationManager) *v9];
    *(v1 + OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_locationMonitorStarted) = 0;
  }

  return result;
}

_BYTE *sub_100132D4C(_BYTE *result)
{
  v1 = OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_locationMonitorStarted;
  if ((result[OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_locationMonitorStarted] & 1) == 0)
  {
    v2 = result;
    static os_log_type_t.default.getter();
    if (qword_1005A7F18 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    result = [*&v2[OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_locationManager] startUpdatingLocation];
    v2[v1] = 1;
  }

  return result;
}

_BYTE *sub_100132E40(_BYTE *result)
{
  v1 = OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_locationMonitorStarted;
  if (result[OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_locationMonitorStarted] == 1)
  {
    v2 = result;
    static os_log_type_t.default.getter();
    if (qword_1005A7F18 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    result = [*&v2[OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_locationManager] stopUpdatingLocation];
    v2[v1] = 0;
  }

  return result;
}

id CurrentLocationMonitor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CurrentLocationMonitor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CurrentLocationMonitor();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100133060()
{
  v1 = *(v0 + OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_queue);
  type metadata accessor for CLAuthorizationStatus(0);
  OS_dispatch_queue.sync<A>(execute:)();
  return v3;
}

uint64_t (*sub_1001330D4(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_100134130;
}

void sub_100133174(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id sub_10013320C()
{
  v1 = type metadata accessor for KoreaFeatureFlag();
  v17[3] = v1;
  v17[4] = sub_100134098(&qword_1005AB4D8, &type metadata accessor for KoreaFeatureFlag);
  v2 = sub_10000331C(v17);
  (*(*(v1 - 8) + 104))(v2, enum case for KoreaFeatureFlag.ArcticPlum(_:), v1);
  LOBYTE(v1) = isFeatureEnabled(_:)();
  sub_100004984(v17);
  if (v1)
  {
    return 0;
  }

  if (static SystemInfo.isInternalBuild.getter())
  {
    v4 = [objc_opt_self() standardUserDefaults];
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 BOOLForKey:v5];

    if (v6)
    {
      static os_log_type_t.default.getter();
      sub_1000545A4(0, &qword_1005ABEA0, OS_os_log_ptr);
      v7 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();
      v8 = 1;
LABEL_13:

      return v8;
    }
  }

  [v0 coordinate];
  v10 = v9;
  [v0 coordinate];
  v12 = v11;
  if (qword_1005A7F50 != -1)
  {
    swift_once();
  }

  result = [qword_1005ABBC0 containsCoordinate:{v10, v12}];
  if (result)
  {
    v13 = qword_1005ABBC8;
    if (qword_1005ABBC8)
    {
      v7 = qword_1005ABBC8;
    }

    else
    {
      v14 = sub_100135FAC();
      v15 = qword_1005ABBC8;
      qword_1005ABBC8 = v14;
      v7 = v14;

      v13 = 0;
    }

    v16 = v13;
    v8 = [v7 containsCoordinate:{v10, v12}];
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_100133480(uint64_t a1, uint64_t a2)
{
  v4 = a1 + OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(a1, &protocol witness table for CurrentLocationMonitor, a2, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t CurrentLocationMonitor.locationManager(_:didFailWithError:)()
{
  static os_log_type_t.error.getter();
  if (qword_1005A7F18 != -1)
  {
    swift_once();
  }

  sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004C1900;
  swift_errorRetain();
  sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
  v1 = String.init<A>(describing:)();
  v3 = v2;
  *(v0 + 56) = &type metadata for String;
  *(v0 + 64) = sub_1000588B8();
  *(v0 + 32) = v1;
  *(v0 + 40) = v3;
  os_log(_:dso:log:_:_:)();
}

uint64_t sub_100133874()
{
  sub_1000545A4(0, &qword_1005ABEA0, OS_os_log_ptr);
  result = OS_os_log.init(subsystem:category:)();
  qword_1005DFBE8 = result;
  return result;
}

uint64_t sub_1001338EC(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v48 = *(v4 - 8);
  v49 = v4;
  v5 = *(v48 + 64);
  __chkstk_darwin(v4);
  v46 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for DispatchQoS();
  v45 = *(v47 - 8);
  v7 = *(v45 + 64);
  __chkstk_darwin(v47);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS.QoSClass();
  v42 = *(v9 - 8);
  v43 = v9;
  v10 = *(v42 + 64);
  __chkstk_darwin(v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.default.getter();
  if (qword_1005A7F18 != -1)
  {
    swift_once();
  }

  sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1004C2310;
  v14 = &v1[OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_delegate];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v16 = *(v14 + 1);
  aBlock = Strong;
  v52 = v16;
  sub_10004B564(&qword_1005ABB80, &qword_1004C5CF0);
  v17 = String.init<A>(describing:)();
  v19 = v18;
  *(v13 + 56) = &type metadata for String;
  v20 = sub_1000588B8();
  *(v13 + 64) = v20;
  *(v13 + 32) = v17;
  *(v13 + 40) = v19;
  if (a1 >> 62)
  {
    v21 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  aBlock = v21;
  v22 = dispatch thunk of CustomStringConvertible.description.getter();
  *(v13 + 96) = &type metadata for String;
  *(v13 + 104) = v20;
  *(v13 + 72) = v22;
  *(v13 + 80) = v23;
  os_log(_:dso:log:_:_:)();

  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v25 = *(a1 + 32);
  }

  v26 = v25;
  if (sub_10013320C())
  {
    v27 = 0;
  }

  else
  {
    v28 = v26;
    v27 = v26;
  }

  v29 = OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_currentLocation;
  swift_beginAccess();
  v30 = *&v2[v29];
  *&v2[v29] = v27;
  v31 = v27;

  sub_1000545A4(0, &qword_1005A96F0, OS_dispatch_queue_ptr);
  v33 = v42;
  v32 = v43;
  (*(v42 + 104))(v12, enum case for DispatchQoS.QoSClass.default(_:), v43);
  v34 = static OS_dispatch_queue.global(qos:)();
  (*(v33 + 8))(v12, v32);
  v35 = swift_allocObject();
  *(v35 + 16) = v2;
  *(v35 + 24) = v27;
  v55 = sub_100134090;
  v56 = v35;
  aBlock = _NSConcreteStackBlock;
  v52 = 1107296256;
  v53 = sub_100020828;
  v54 = &unk_1005918B8;
  v36 = _Block_copy(&aBlock);
  v37 = v31;
  v38 = v2;
  v39 = v44;
  static DispatchQoS.unspecified.getter();
  v50 = _swiftEmptyArrayStorage;
  sub_100134098(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
  v40 = v46;
  v41 = v49;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v36);

  (*(v48 + 8))(v40, v41);
  (*(v45 + 8))(v39, v47);
}

uint64_t sub_100133EBC(int a1)
{
  static os_log_type_t.default.getter();
  if (qword_1005A7F18 != -1)
  {
    swift_once();
  }

  sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1004C1900;
  type metadata accessor for CLAuthorizationStatus(0);
  v4 = String.init<A>(describing:)();
  v6 = v5;
  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = sub_1000588B8();
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  os_log(_:dso:log:_:_:)();

  sub_10013180C(a1);
  v7 = *(v1 + OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_authorizationStatusSubject);
  return CurrentValueSubject.send(_:)();
}

unint64_t sub_100133FF8()
{
  result = qword_1005ABAE0;
  if (!qword_1005ABAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ABAE0);
  }

  return result;
}

uint64_t sub_100134098(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100134134()
{
  sub_10004B564(&qword_1005A8688, &qword_1004C5FA0);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_1005ABB88 = result;
  return result;
}

uint64_t sub_10013419C(uint64_t a1)
{
  v1 = a1 + 56;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 56);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  if (v4)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v5)
    {
    }

    v4 = *(v1 + 8 * v8);
    ++v7;
    if (v4)
    {
      v7 = v8;
      do
      {
LABEL_8:
        v9 = (*(a1 + 48) + 40 * (__clz(__rbit64(v4)) | (v7 << 6)));
        v11 = *v9;
        v10 = v9[1];
        v12 = v9[2];
        v19 = v9[3];
        v13 = v9[4];
        v14 = qword_1005A7F28;

        if (v14 != -1)
        {
          swift_once();
        }

        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v21 = off_1005ABB90;
        off_1005ABB90 = 0x8000000000000000;
        sub_1004525D4(v11, v10, v19, v13, isUniquelyReferenced_nonNull_native);

        off_1005ABB90 = v21;
        swift_endAccess();
        if (qword_1005A7F30 != -1)
        {
          swift_once();
        }

        v4 &= v4 - 1;
        sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_1004C1900;
        *(v16 + 32) = v11;
        *(v16 + 40) = v10;
        v20 = v16;
        sub_1002492B0(v12);
        swift_beginAccess();
        v17 = swift_isUniquelyReferenced_nonNull_native();
        v22 = off_1005ABB98;
        off_1005ABB98 = 0x8000000000000000;
        sub_100453324(v20, v19, v13, v17);

        off_1005ABB98 = v22;
        result = swift_endAccess();
      }

      while (v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100134434@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (qword_1005A7F28 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = off_1005ABB90;
  if (*(off_1005ABB90 + 2) && (v7 = sub_1000110D8(a1, a2), (v8 & 1) != 0))
  {
    v9 = (v6[7] + 16 * v7);
    v11 = *v9;
    v10 = v9[1];
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  *a3 = v11;
  a3[1] = v12;
  return swift_endAccess();
}

uint64_t sub_10013450C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (qword_1005A7F30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = off_1005ABB98;
  if (*(off_1005ABB98 + 2) && (v7 = sub_1000110D8(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(v6[7] + 8 * v7);
    swift_endAccess();
    *a3 = v9;
  }

  else
  {
    result = swift_endAccess();
    *a3 = _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_1001345F0()
{
  sub_10004B564(&qword_1005A8688, &qword_1004C5FA0);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_1005ABBA0 = result;
  return result;
}

uint64_t sub_100134658(uint64_t a1)
{
  v1 = a1 + 56;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 56);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  if (v4)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v5)
    {
    }

    v4 = *(v1 + 8 * v8);
    ++v7;
    if (v4)
    {
      v7 = v8;
      do
      {
LABEL_8:
        v9 = (*(a1 + 48) + 40 * (__clz(__rbit64(v4)) | (v7 << 6)));
        v11 = *v9;
        v10 = v9[1];
        v12 = v9[2];
        v19 = v9[3];
        v13 = v9[4];
        v14 = qword_1005A7F40;

        if (v14 != -1)
        {
          swift_once();
        }

        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v21 = qword_1005ABBA8;
        qword_1005ABBA8 = 0x8000000000000000;
        sub_1004525D4(v11, v10, v19, v13, isUniquelyReferenced_nonNull_native);

        qword_1005ABBA8 = v21;
        swift_endAccess();
        if (qword_1005A7F48 != -1)
        {
          swift_once();
        }

        v4 &= v4 - 1;
        sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_1004C1900;
        *(v16 + 32) = v11;
        *(v16 + 40) = v10;
        v20 = v16;
        sub_1002492B0(v12);
        swift_beginAccess();
        v17 = swift_isUniquelyReferenced_nonNull_native();
        v22 = qword_1005ABBB0;
        qword_1005ABBB0 = 0x8000000000000000;
        sub_100453324(v20, v19, v13, v17);

        qword_1005ABBB0 = v22;
        result = swift_endAccess();
      }

      while (v4);
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_1001348F0()
{
  v1 = v0;
  v2 = *v0;
  v3 = v1[1];
  v4 = v1[2];
  Hasher.init(_seed:)();
  String.hash(into:)();
  v5 = *(v4 + 16);
  Hasher._combine(_:)(v5);
  if (v5)
  {
    v6 = (v4 + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;

      String.hash(into:)();

      v6 += 2;
      --v5;
    }

    while (v5);
  }

  v9 = v1[3];
  v10 = v1[4];
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001349AC()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  String.hash(into:)();
  Hasher._combine(_:)(*(v4 + 16));
  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = (v4 + 40);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;

      String.hash(into:)();

      v7 += 2;
      --v6;
    }

    while (v6);
  }

  return String.hash(into:)();
}

Swift::Int sub_100134A58()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(*(v4 + 16));
  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = (v4 + 40);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;

      String.hash(into:)();

      v7 += 2;
      --v6;
    }

    while (v6);
  }

  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100134B10(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (sub_10022BB24(v2, v6) & 1) == 0)
  {
    return 0;
  }

  if (v3 == v5 && v4 == v7)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100134BD4(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for Handle();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v5 = type metadata accessor for Friend();
  v1[7] = v5;
  v6 = *(v5 - 8);
  v1[8] = v6;
  v7 = *(v6 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v8 = async function pointer to daemon.getter[1];
  v9 = swift_task_alloc();
  v1[11] = v9;
  *v9 = v1;
  v9[1] = sub_100134D38;

  return daemon.getter();
}

uint64_t sub_100134D38(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  v12 = *v1;
  *(v3 + 96) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 104) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for FriendshipService();
  v9 = sub_100009050(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_100009050(&qword_1005AA6E0, type metadata accessor for FriendshipService);
  *v6 = v12;
  v6[1] = sub_100134F14;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100134F14(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 104);
  v8 = *v2;
  v3[14] = a1;
  v3[15] = v1;

  if (v1)
  {
    v5 = sub_1000DC3DC;
  }

  else
  {
    v6 = v3[12];

    v5 = sub_100135030;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100135030()
{
  sub_10004B564(&qword_1005A92A8, &qword_1004C4330);
  v1 = type metadata accessor for HandleType();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[16] = v5;
  *(v5 + 16) = xmmword_1004C1900;
  (*(v2 + 104))(v5 + v4, enum case for HandleType.follower(_:), v1);
  v6 = swift_task_alloc();
  v0[17] = v6;
  *v6 = v0;
  v6[1] = sub_100135190;
  v7 = v0[14];

  return sub_1002BD010(v5);
}

uint64_t sub_100135190(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 136);
  v8 = *v2;
  v3[18] = a1;
  v3[19] = v1;

  if (v1)
  {
    v5 = sub_1000DC46C;
  }

  else
  {
    v6 = v3[16];

    v5 = sub_1001352AC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001352AC()
{
  v1 = v0[18];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[8];
    v41 = *(v3 + 16);
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v40 = *(v3 + 72);
    v38 = (v3 + 8);
    v5 = _swiftEmptyArrayStorage;
    v39 = (v0[4] + 8);
    do
    {
      v47 = v5;
      v8 = v0[9];
      v7 = v0[10];
      v10 = v0[6];
      v9 = v0[7];
      v11 = v0[3];
      v41(v7, v4, v9);
      v41(v8, v7, v9);
      Friend.handle.getter();
      v12 = Handle.serverID.getter();
      v14 = v13;
      v15 = *v39;
      (*v39)(v10, v11);
      v16 = v0[9];
      v17 = v0[10];
      v18 = v0[7];
      if (v14)
      {
        v45 = v14;
        v46 = v12;
        v42 = v0[10];
        v19 = v0[5];
        v20 = v0[3];
        Friend.handle.getter();
        v21 = Handle.identifier.getter();
        v43 = v22;
        v44 = v21;
        v15(v19, v20);
        Friend.handle.getter();
        v23 = Handle.siblingIdentifiers.getter();
        v15(v19, v20);
        v24 = *v38;
        (*v38)(v16, v18);
        v24(v42, v18);
        v5 = v47;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_1001FD1C8(0, *(v47 + 2) + 1, 1, v47);
        }

        v26 = *(v5 + 2);
        v25 = *(v5 + 3);
        if (v26 >= v25 >> 1)
        {
          v5 = sub_1001FD1C8((v25 > 1), v26 + 1, 1, v5);
        }

        *(v5 + 2) = v26 + 1;
        v27 = &v5[40 * v26];
        *(v27 + 4) = v44;
        *(v27 + 5) = v43;
        *(v27 + 6) = v23;
        *(v27 + 7) = v46;
        *(v27 + 8) = v45;
      }

      else
      {
        v6 = *v38;
        (*v38)(v0[9], v0[7]);
        v6(v17, v18);
        v5 = v47;
      }

      v4 += v40;
      --v2;
    }

    while (v2);
    v28 = v0[18];
  }

  else
  {

    v5 = _swiftEmptyArrayStorage;
  }

  v29 = v0[14];
  v31 = v0[9];
  v30 = v0[10];
  v33 = v0[5];
  v32 = v0[6];
  v34 = v0[2];
  v35 = sub_10023F0A4(v5);

  *v34 = v35;

  v36 = v0[1];

  return v36();
}

uint64_t sub_1001355CC(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for Handle();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v5 = type metadata accessor for Friend();
  v1[7] = v5;
  v6 = *(v5 - 8);
  v1[8] = v6;
  v7 = *(v6 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v8 = async function pointer to daemon.getter[1];
  v9 = swift_task_alloc();
  v1[11] = v9;
  *v9 = v1;
  v9[1] = sub_100135730;

  return daemon.getter();
}

uint64_t sub_100135730(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  v12 = *v1;
  *(v3 + 96) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 104) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for FriendshipService();
  v9 = sub_100009050(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_100009050(&qword_1005AA6E0, type metadata accessor for FriendshipService);
  *v6 = v12;
  v6[1] = sub_10013590C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10013590C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 104);
  v8 = *v2;
  v3[14] = a1;
  v3[15] = v1;

  if (v1)
  {
    v5 = sub_100135DB4;
  }

  else
  {
    v6 = v3[12];

    v5 = sub_100135A28;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100135A28()
{
  sub_10004B564(&qword_1005A92A8, &qword_1004C4330);
  v1 = type metadata accessor for HandleType();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[16] = v5;
  *(v5 + 16) = xmmword_1004C1900;
  (*(v2 + 104))(v5 + v4, enum case for HandleType.following(_:), v1);
  v6 = swift_task_alloc();
  v0[17] = v6;
  *v6 = v0;
  v6[1] = sub_100135B88;
  v7 = v0[14];

  return sub_1002BD010(v5);
}

uint64_t sub_100135B88(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 136);
  v8 = *v2;
  v3[18] = a1;
  v3[19] = v1;

  if (v1)
  {
    v5 = sub_100135DB8;
  }

  else
  {
    v6 = v3[16];

    v5 = sub_100135DB0;
  }

  return _swift_task_switch(v5, 0, 0);
}

__n128 sub_100135CA4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100135CB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_100135D00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100135D5C()
{
  result = qword_1005ABBB8;
  if (!qword_1005ABBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ABBB8);
  }

  return result;
}

uint64_t sub_100135DBC()
{
  result = sub_100135DDC();
  qword_1005ABBC0 = result;
  return result;
}

uint64_t sub_100135DDC()
{
  v0 = [objc_allocWithZone(GEOMapRegion) init];
  if (v0)
  {
    v1 = v0;
    v2 = [objc_allocWithZone(GEOLatLng) initWithLatitude:38.3767625 longitude:123.875419];
    [v1 addVertex:v2];

    v3 = [objc_allocWithZone(GEOLatLng) initWithLatitude:31.8502665 longitude:125.094901];
    [v1 addVertex:v3];

    v4 = [objc_allocWithZone(GEOLatLng) initWithLatitude:36.7747537 longitude:133.334647];
    [v1 addVertex:v4];

    v5 = [objc_allocWithZone(GEOLatLng) initWithLatitude:39.1903306 longitude:130.434257];
    [v1 addVertex:v5];

    v6 = [objc_allocWithZone(GEOLatLng) initWithLatitude:38.3767625 longitude:123.875419];
    [v1 addVertex:v6];

    return v1;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100135FAC()
{
  v0 = [objc_allocWithZone(GEOMapRegion) init];
  if (v0)
  {
    v1 = v0;
    v2 = 36;
    v3 = &unk_10058AE20;
    do
    {
      v4 = [objc_allocWithZone(GEOLatLng) initWithLatitude:*v3 longitude:*(v3 - 1)];
      [v1 addVertex:v4];

      v3 += 2;
      --v2;
    }

    while (v2);
    return v1;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void sub_1001360B8(void *a1, char a2)
{
  v3 = v2;
  LOBYTE(v4) = a2;
  if (qword_1005A7E90 != -1)
  {
    goto LABEL_148;
  }

  while (1)
  {
    v6 = a1[15];
    object = a1[16];
    if (sub_10021B304(v6, object, qword_1005DFA80))
    {
      break;
    }

    v235 = v3;
    v13 = sub_1000D13B0(v4 & 1);
    v14 = v13 + 8;
    v15 = 1 << *(v13 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & v13[8];
    swift_beginAccess();
    v18 = 0;
    v19 = (v15 + 63) >> 6;
    *&v20 = 138412290;
    v234 = v20;
    v238 = a1;
    v236 = v13;
    v237 = v19;
    while (v17)
    {
LABEL_15:
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v23 = (v18 << 10) | (16 * v22);
      v24 = v13[7];
      v25 = (v13[6] + v23);
      v3 = v25[1];
      v241 = *v25;
      v26 = (v24 + v23);
      v27 = *v26;
      v28 = *(v26 + 8);
      v29 = a1[14];
      v30 = *(v29 + 16);

      v240 = v27;
      sub_100139350(v27, v28);
      v239 = v28;
      if (v30)
      {

        v31 = sub_1000110D8(v241, v3);
        if ((v32 & 1) == 0)
        {

          goto LABEL_21;
        }

        sub_1000534E8(*(v29 + 56) + 48 * v31, &v248);

        if (v28 <= 1)
        {
          if (v28)
          {
            sub_1001393D8();
            v34 = NSNumber.init(BOOLeanLiteral:)(v240 & 1).super.super.isa;
          }

          else
          {
            v33 = v240;
            sub_100139350(v240, 0);
            v34 = v33;
          }

          v96 = v34;
          goto LABEL_103;
        }

        if (v28 != 2)
        {
          sub_1000534E8(&v248, &v243);
          if (v244[24] != 3)
          {
LABEL_146:

            sub_100053550(&v243);
            sub_10005360C();
            swift_allocError();
            swift_willThrow();

            sub_100053550(&v248);
            return;
          }

          v97 = v240;
          sub_100010BD4(&v243._countAndFlagsBits, v245);
          v98 = v246;
          v99 = sub_100011AEC(v245, v246);
          v100 = *(*(v98 - 8) + 64);
          __chkstk_darwin(v99);
          (*(v102 + 16))(v228 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0));
          sub_1000535B8();
          BinaryFloatingPoint.init<A>(_:)();
          a1 = v238;
          v96 = [objc_allocWithZone(NSNumber) initWithDouble:*&v243._countAndFlagsBits + *&v97];
          sub_100004984(v245);
          goto LABEL_103;
        }

        sub_1000534E8(&v248, &v243);
        if (v244[24] != 2)
        {
          goto LABEL_146;
        }

        sub_100010BD4(&v243._countAndFlagsBits, v245);
        v80 = v246;
        v79 = v247;
        v81 = sub_100011AEC(v245, v246);
        v232 = v228;
        v82 = *(*(v80 - 8) + 64);
        __chkstk_darwin(v81);
        v230 = v83;
        v84 = v228 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
        v233 = v85;
        (*(v85 + 16))(v84);
        if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
        {
          v243._countAndFlagsBits = 0x8000000000000000;
          if (dispatch thunk of static BinaryInteger.isSigned.getter())
          {
            v86 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v86 < 64)
            {
              goto LABEL_90;
            }

            v231 = v79;
            v229 = v228;
            __chkstk_darwin(v86);
            v88 = v228 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_100053494();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v89 = *(*(v231 + 32) + 8);
            v90 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v233 + 8))(v88, v80);
            v79 = v231;
            if (v90)
            {
              goto LABEL_164;
            }
          }

          else
          {
            LODWORD(v229) = dispatch thunk of static BinaryInteger.isSigned.getter();
            v127 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v229)
            {
              v231 = v79;
              if (v127 <= 64)
              {
                v229 = *(*(v79 + 24) + 16);
                AssociatedTypeWitness = swift_getAssociatedTypeWitness();
                v228[2] = v228;
                v134 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
                __chkstk_darwin(AssociatedTypeWitness);
                v228[0] = v228 - v135;
                swift_getAssociatedConformanceWitness();
                v136 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
                v228[1] = v228;
                __chkstk_darwin(v136);
                v138 = v228 - ((v137 + 15) & 0xFFFFFFFFFFFFFFF0);
                dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
                v139 = *(*(v231 + 32) + 8);
                v140 = dispatch thunk of static Comparable.< infix(_:_:)();
                (*(v233 + 8))(v138, v80);
                if (v140)
                {
                  goto LABEL_164;
                }

                v79 = v231;
LABEL_90:
                dispatch thunk of BinaryInteger._lowWord.getter();
                goto LABEL_91;
              }

              v229 = v228;
              __chkstk_darwin(v127);
              v129 = v228 - ((v128 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_100053494();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v130 = *(*(v231 + 32) + 8);
              v131 = dispatch thunk of static Comparable.< infix(_:_:)();
              v132 = v129;
              v79 = v231;
              (*(v233 + 8))(v132, v80);
              if (v131)
              {
                goto LABEL_164;
              }
            }

            else if (v127 < 64)
            {
              goto LABEL_90;
            }
          }
        }

LABEL_91:
        if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
        {
          v243._countAndFlagsBits = 0x7FFFFFFFFFFFFFFFLL;
          v141 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v142 = v79;
          v143 = v141;
          v231 = v142;
          v144 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v143)
          {
            if (v144 > 64)
            {
              goto LABEL_94;
            }
          }

          else if (v144 >= 64)
          {
LABEL_94:
            v229 = v228;
            __chkstk_darwin(v144);
            v230 = v228 - ((v145 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_100053494();
            v146 = v231;
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v147 = *(*(v146 + 32) + 8);
            v148 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v233 + 8))(v230, v80);
            if (v148)
            {
              goto LABEL_161;
            }

            goto LABEL_101;
          }

          dispatch thunk of BinaryInteger._lowWord.getter();
        }

LABEL_101:
        v149 = dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v233 + 8))(v84, v80);
        v49 = __OFADD__(v149, v240);
        v150 = &v240[v149];
        if (v49)
        {
          goto LABEL_155;
        }

        v96 = [objc_allocWithZone(NSNumber) initWithLongLong:v150];
        sub_100004984(v245);
        a1 = v238;
LABEL_103:
        objc_opt_self();
        v151 = swift_dynamicCastObjCClass();
        if (v151)
        {
          v152 = v151;
          v153 = v96;
          v154 = String.init(_:)(v152);
          v155 = a1;
          v156 = sub_1000246F4();
          swift_beginAccess();
          v243 = v154;
          *&v244[8] = &type metadata for String;
          *&v244[16] = v156;
          v244[24] = 1;
          v157 = v155[14];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v242 = v155[14];
          v159 = v242;
          v155[14] = 0x8000000000000000;
          v160 = sub_1000110D8(v241, v3);
          v162 = *(v159 + 16);
          v163 = (v161 & 1) == 0;
          v49 = __OFADD__(v162, v163);
          v164 = v162 + v163;
          if (v49)
          {
            goto LABEL_152;
          }

          v165 = v161;
          if (*(v159 + 24) >= v164)
          {
            v13 = v236;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v223 = v160;
              sub_100202528();
              v160 = v223;
            }
          }

          else
          {
            sub_10022BE4C(v164, isUniquelyReferenced_nonNull_native);
            v160 = sub_1000110D8(v241, v3);
            v13 = v236;
            if ((v165 & 1) != (v166 & 1))
            {
              goto LABEL_165;
            }
          }

          a1 = v238;
          if (v165)
          {
            v186 = v160;

            v4 = v242;
            sub_100053580(&v243, *(v242 + 56) + 48 * v186);
          }

          else
          {
            v4 = v242;
            *(v242 + 8 * (v160 >> 6) + 64) |= 1 << v160;
            v187 = (*(v4 + 48) + 16 * v160);
            *v187 = v241;
            v187[1] = v3;
            v188 = (*(v4 + 56) + 48 * v160);
            v189 = *&v244[9];
            v190 = *v244;
            *v188 = v243;
            v188[1] = v190;
            *(&v188[1]._object + 1) = v189;
            v191 = *(v4 + 16);
            v49 = __OFADD__(v191, 1);
            v192 = v191 + 1;
            if (v49)
            {
              goto LABEL_154;
            }

            *(v4 + 16) = v192;
          }

          v19 = v237;
          a1[14] = v4;
          swift_endAccess();
          sub_100139360(v240, v239);
        }

        else
        {

          objc_opt_self();
          v167 = swift_dynamicCastObjCClass();
          if (v167)
          {
            v168 = v167;
            [v167 doubleValue];
            v170 = v169;
            v171 = [v168 integerValue];
            if (v170 == v171)
            {
              v172 = v171;
              v173 = sub_100054734();
              swift_beginAccess();
              v243._countAndFlagsBits = v172;
              *&v244[8] = &type metadata for Int;
              *&v244[16] = v173;
              v244[24] = 2;
              v174 = a1[14];
              v175 = swift_isUniquelyReferenced_nonNull_native();
              v176 = a1;
              v177 = v175;
              v242 = v176[14];
              v178 = v242;
              v176[14] = 0x8000000000000000;
              v179 = sub_1000110D8(v241, v3);
              v181 = *(v178 + 16);
              v182 = (v180 & 1) == 0;
              v49 = __OFADD__(v181, v182);
              v183 = v181 + v182;
              if (v49)
              {
                goto LABEL_158;
              }

              v184 = v180;
              if (*(v178 + 24) >= v183)
              {
                if ((v177 & 1) == 0)
                {
                  v226 = v179;
                  sub_100202528();
                  v179 = v226;
                }
              }

              else
              {
                sub_10022BE4C(v183, v177);
                v179 = sub_1000110D8(v241, v3);
                if ((v184 & 1) != (v185 & 1))
                {
                  goto LABEL_165;
                }
              }

              a1 = v238;
              if ((v184 & 1) == 0)
              {
                v4 = v242;
                *(v242 + 8 * (v179 >> 6) + 64) |= 1 << v179;
                v210 = (*(v4 + 48) + 16 * v179);
                *v210 = v241;
                v210[1] = v3;
                v211 = (*(v4 + 56) + 48 * v179);
                v212 = *&v244[9];
                v213 = *v244;
                *v211 = v243;
                v211[1] = v213;
                *(&v211[1]._object + 1) = v212;
                v214 = *(v4 + 16);
                v49 = __OFADD__(v214, 1);
                v215 = v214 + 1;
                if (v49)
                {
                  goto LABEL_162;
                }

                goto LABEL_142;
              }

LABEL_140:
              v216 = v179;

              v4 = v242;
              sub_100053580(&v243, *(v242 + 56) + 48 * v216);
            }

            else
            {
              v198 = sub_1000535B8();
              swift_beginAccess();
              *&v243._countAndFlagsBits = v170;
              *&v244[8] = &type metadata for Double;
              *&v244[16] = v198;
              v244[24] = 3;
              v199 = a1[14];
              v200 = swift_isUniquelyReferenced_nonNull_native();
              v201 = a1;
              v202 = v200;
              v242 = v201[14];
              v203 = v242;
              v201[14] = 0x8000000000000000;
              v179 = sub_1000110D8(v241, v3);
              v205 = *(v203 + 16);
              v206 = (v204 & 1) == 0;
              v49 = __OFADD__(v205, v206);
              v207 = v205 + v206;
              if (v49)
              {
                goto LABEL_160;
              }

              v208 = v204;
              if (*(v203 + 24) >= v207)
              {
                if ((v202 & 1) == 0)
                {
                  v227 = v179;
                  sub_100202528();
                  v179 = v227;
                }
              }

              else
              {
                sub_10022BE4C(v207, v202);
                v179 = sub_1000110D8(v241, v3);
                if ((v208 & 1) != (v209 & 1))
                {
                  goto LABEL_165;
                }
              }

              a1 = v238;
              if (v208)
              {
                goto LABEL_140;
              }

              v4 = v242;
              *(v242 + 8 * (v179 >> 6) + 64) |= 1 << v179;
              v217 = (*(v4 + 48) + 16 * v179);
              *v217 = v241;
              v217[1] = v3;
              v218 = (*(v4 + 56) + 48 * v179);
              v219 = *&v244[9];
              v220 = *v244;
              *v218 = v243;
              v218[1] = v220;
              *(&v218[1]._object + 1) = v219;
              v221 = *(v4 + 16);
              v49 = __OFADD__(v221, 1);
              v215 = v221 + 1;
              if (v49)
              {
                goto LABEL_163;
              }

LABEL_142:
              *(v4 + 16) = v215;
            }

            v19 = v237;
            a1[14] = v4;
            swift_endAccess();

            sub_100139360(v240, v239);
            goto LABEL_144;
          }

          if (qword_1005A7E88 != -1)
          {
            swift_once();
          }

          v193 = type metadata accessor for Logger();
          sub_10000A6F0(v193, qword_1005DFA68);
          v194 = v96;
          v195 = Logger.logObject.getter();
          LOBYTE(v4) = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v195, v4))
          {
            v196 = swift_slowAlloc();
            v3 = swift_slowAlloc();
            *v196 = v234;
            *(v196 + 4) = v194;
            *v3 = v194;
            v197 = v194;
            _os_log_impl(&_mh_execute_header, v195, v4, "Unsupported value type: %@!", v196, 0xCu);
            sub_100139370(v3);

            v13 = v236;

            sub_100139360(v240, v239);
          }

          else
          {

            sub_100139360(v240, v239);
          }

          v19 = v237;
        }

LABEL_144:
        sub_100053550(&v248);
      }

      else
      {
LABEL_21:
        if (v28 > 1)
        {
          if (v28 == 2)
          {
            v36 = objc_allocWithZone(NSNumber);
            isa = [v36 initWithLongLong:v240];
          }

          else
          {
            isa = [objc_allocWithZone(NSNumber) initWithDouble:*&v240];
          }
        }

        else if (v28)
        {
          sub_1001393D8();
          isa = NSNumber.init(BOOLeanLiteral:)(v240 & 1).super.super.isa;
        }

        else
        {
          isa = v240;
        }

        v37 = isa;
        objc_opt_self();
        v38 = swift_dynamicCastObjCClass();
        if (v38)
        {
          v39 = v38;
          v6 = v37;
          v40 = String.init(_:)(v39);
          object = v40._object;
          v41 = sub_1000246F4();
          swift_beginAccess();
          v248 = v40;
          *&v249[8] = &type metadata for String;
          *&v249[16] = v41;
          v249[24] = 1;
          v42 = a1[14];
          v43 = swift_isUniquelyReferenced_nonNull_native();
          v245[0] = a1[14];
          v44 = v245[0];
          a1[14] = 0x8000000000000000;
          v45 = sub_1000110D8(v241, v3);
          v47 = *(v44 + 16);
          v48 = (v46 & 1) == 0;
          v49 = __OFADD__(v47, v48);
          v50 = v47 + v48;
          if (v49)
          {
            __break(1u);
            goto LABEL_150;
          }

          v51 = v46;
          if (*(v44 + 24) >= v50)
          {
            if ((v43 & 1) == 0)
            {
              v222 = v45;
              sub_100202528();
              v45 = v222;
            }
          }

          else
          {
            sub_10022BE4C(v50, v43);
            v45 = sub_1000110D8(v241, v3);
            if ((v51 & 1) != (v52 & 1))
            {
              goto LABEL_165;
            }
          }

          a1 = v238;
          v13 = v236;
          if (v51)
          {
            v72 = v45;

            v4 = v245[0];
            sub_100053580(&v248, *(v245[0] + 56) + 48 * v72);
          }

          else
          {
            v4 = v245[0];
            *(v245[0] + 8 * (v45 >> 6) + 64) |= 1 << v45;
            v73 = (*(v4 + 48) + 16 * v45);
            *v73 = v241;
            v73[1] = v3;
            v74 = (*(v4 + 56) + 48 * v45);
            v75 = *&v249[9];
            v76 = *v249;
            *v74 = v248;
            v74[1] = v76;
            *(&v74[1]._object + 1) = v75;
            v77 = *(v4 + 16);
            v49 = __OFADD__(v77, 1);
            v78 = v77 + 1;
            if (v49)
            {
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
LABEL_164:
              __break(1u);
LABEL_165:
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return;
            }

            *(v4 + 16) = v78;
          }

          a1[14] = v4;
          swift_endAccess();

          goto LABEL_46;
        }

        objc_opt_self();
        v53 = swift_dynamicCastObjCClass();
        if (v53)
        {
          v54 = v53;
          [v53 doubleValue];
          v56 = v55;
          v57 = [v54 integerValue];
          if (v56 == v57)
          {
            v58 = v57;
            v59 = sub_100054734();
            swift_beginAccess();
            v248._countAndFlagsBits = v58;
            *&v249[8] = &type metadata for Int;
            *&v249[16] = v59;
            v249[24] = 2;
            v60 = a1[14];
            v61 = swift_isUniquelyReferenced_nonNull_native();
            v62 = a1;
            v63 = v61;
            v245[0] = v62[14];
            v64 = v245[0];
            v62[14] = 0x8000000000000000;
            v65 = sub_1000110D8(v241, v3);
            v67 = *(v64 + 16);
            v68 = (v66 & 1) == 0;
            v49 = __OFADD__(v67, v68);
            v69 = v67 + v68;
            if (v49)
            {
              goto LABEL_153;
            }

            v70 = v66;
            if (*(v64 + 24) >= v69)
            {
              if ((v63 & 1) == 0)
              {
                v224 = v65;
                sub_100202528();
                v65 = v224;
              }
            }

            else
            {
              sub_10022BE4C(v69, v63);
              v65 = sub_1000110D8(v241, v3);
              if ((v70 & 1) != (v71 & 1))
              {
                goto LABEL_165;
              }
            }

            a1 = v238;
            if (v70)
            {
              goto LABEL_78;
            }

            v4 = v245[0];
            *(v245[0] + 8 * (v65 >> 6) + 64) |= 1 << v65;
            v115 = (*(v4 + 48) + 16 * v65);
            *v115 = v241;
            v115[1] = v3;
            v116 = (*(v4 + 56) + 48 * v65);
            v117 = *&v249[9];
            v118 = *v249;
            *v116 = v248;
            v116[1] = v118;
            *(&v116[1]._object + 1) = v117;
            v119 = *(v4 + 16);
            v49 = __OFADD__(v119, 1);
            v120 = v119 + 1;
            if (v49)
            {
              goto LABEL_157;
            }
          }

          else
          {
            v103 = sub_1000535B8();
            swift_beginAccess();
            *&v248._countAndFlagsBits = v56;
            *&v249[8] = &type metadata for Double;
            *&v249[16] = v103;
            v249[24] = 3;
            v104 = a1[14];
            v105 = swift_isUniquelyReferenced_nonNull_native();
            v106 = a1;
            v107 = v105;
            v245[0] = v106[14];
            v108 = v245[0];
            v106[14] = 0x8000000000000000;
            v65 = sub_1000110D8(v241, v3);
            v110 = *(v108 + 16);
            v111 = (v109 & 1) == 0;
            v49 = __OFADD__(v110, v111);
            v112 = v110 + v111;
            if (v49)
            {
              goto LABEL_156;
            }

            v113 = v109;
            if (*(v108 + 24) >= v112)
            {
              if ((v107 & 1) == 0)
              {
                v225 = v65;
                sub_100202528();
                v65 = v225;
              }
            }

            else
            {
              sub_10022BE4C(v112, v107);
              v65 = sub_1000110D8(v241, v3);
              if ((v113 & 1) != (v114 & 1))
              {
                goto LABEL_165;
              }
            }

            a1 = v238;
            if (v113)
            {
LABEL_78:
              v121 = v65;

              v4 = v245[0];
              sub_100053580(&v248, *(v245[0] + 56) + 48 * v121);
              goto LABEL_81;
            }

            v4 = v245[0];
            *(v245[0] + 8 * (v65 >> 6) + 64) |= 1 << v65;
            v122 = (*(v4 + 48) + 16 * v65);
            *v122 = v241;
            v122[1] = v3;
            v123 = (*(v4 + 56) + 48 * v65);
            v124 = *&v249[9];
            v125 = *v249;
            *v123 = v248;
            v123[1] = v125;
            *(&v123[1]._object + 1) = v124;
            v126 = *(v4 + 16);
            v49 = __OFADD__(v126, 1);
            v120 = v126 + 1;
            if (v49)
            {
              goto LABEL_159;
            }
          }

          *(v4 + 16) = v120;
LABEL_81:
          v19 = v237;
          a1[14] = v4;
          swift_endAccess();

          sub_100139360(v240, v239);
        }

        else
        {

          if (qword_1005A7E88 != -1)
          {
            swift_once();
          }

          v91 = type metadata accessor for Logger();
          sub_10000A6F0(v91, qword_1005DFA68);
          v92 = v37;
          v93 = Logger.logObject.getter();
          LOBYTE(v4) = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v93, v4))
          {
            v94 = swift_slowAlloc();
            v3 = swift_slowAlloc();
            *v94 = v234;
            *(v94 + 4) = v92;
            *v3 = v92;
            v95 = v92;
            _os_log_impl(&_mh_execute_header, v93, v4, "Unsupported value type: %@!", v94, 0xCu);
            sub_100139370(v3);

            v13 = v236;

LABEL_46:
            sub_100139360(v240, v239);
            goto LABEL_47;
          }

          sub_100139360(v240, v239);
LABEL_47:
          v19 = v237;
        }
      }
    }

    while (1)
    {
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v21 >= v19)
      {

        return;
      }

      v17 = v14[v21];
      ++v18;
      if (v17)
      {
        v18 = v21;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_148:
    swift_once();
  }

  if (qword_1005A7E88 != -1)
  {
LABEL_150:
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000A6F0(v8, qword_1005DFA68);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v248._countAndFlagsBits = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_10000D01C(v6, object, &v248._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v9, v10, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v11, 0xCu);
    sub_100004984(v12);
  }
}

void sub_100137A00(void *a1, void *a2, char a3)
{
  v4 = v3;
  LOBYTE(v5) = a3;
  if (qword_1005A7E90 != -1)
  {
    goto LABEL_148;
  }

  while (1)
  {
    v8 = a1[15];
    object = a1[16];
    if (sub_10021B304(v8, object, qword_1005DFA80))
    {
      break;
    }

    v236 = v4;
    v5 = sub_1000D19A8(a2, v5 & 1);
    v15 = v5 + 64;
    v16 = 1 << v5[32];
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v5 + 8);
    swift_beginAccess();
    v19 = 0;
    v20 = (v16 + 63) >> 6;
    *&v21 = 138412290;
    v235 = v21;
    v239 = a1;
    v237 = v5;
    v238 = v20;
    while (v18)
    {
LABEL_15:
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v24 = (v19 << 10) | (16 * v23);
      v25 = *(v5 + 7);
      v26 = (*(v5 + 6) + v24);
      v4 = v26[1];
      v242 = *v26;
      v27 = (v25 + v24);
      v28 = *v27;
      v29 = *(v27 + 8);
      v30 = a1[14];
      v31 = *(v30 + 16);

      v241 = v28;
      sub_100139350(v28, v29);
      v240 = v29;
      if (v31)
      {

        v32 = sub_1000110D8(v242, v4);
        if ((v33 & 1) == 0)
        {

          goto LABEL_21;
        }

        sub_1000534E8(*(v30 + 56) + 48 * v32, &v249);

        if (v29 <= 1)
        {
          if (v29)
          {
            sub_1001393D8();
            v35 = NSNumber.init(BOOLeanLiteral:)(v241 & 1).super.super.isa;
          }

          else
          {
            v34 = v241;
            sub_100139350(v241, 0);
            v35 = v34;
          }

          v97 = v35;
          goto LABEL_103;
        }

        if (v29 != 2)
        {
          sub_1000534E8(&v249, &v244);
          if (v245[24] != 3)
          {
LABEL_146:

            sub_100053550(&v244);
            sub_10005360C();
            swift_allocError();
            swift_willThrow();

            sub_100053550(&v249);
            return;
          }

          v98 = v241;
          sub_100010BD4(&v244._countAndFlagsBits, v246);
          v99 = v247;
          v100 = sub_100011AEC(v246, v247);
          v101 = *(*(v99 - 8) + 64);
          __chkstk_darwin(v100);
          (*(v103 + 16))(v229 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0));
          sub_1000535B8();
          BinaryFloatingPoint.init<A>(_:)();
          a1 = v239;
          v97 = [objc_allocWithZone(NSNumber) initWithDouble:*&v244._countAndFlagsBits + *&v98];
          sub_100004984(v246);
          goto LABEL_103;
        }

        sub_1000534E8(&v249, &v244);
        if (v245[24] != 2)
        {
          goto LABEL_146;
        }

        sub_100010BD4(&v244._countAndFlagsBits, v246);
        v81 = v247;
        v80 = v248;
        v82 = sub_100011AEC(v246, v247);
        v233 = v229;
        v83 = *(*(v81 - 8) + 64);
        __chkstk_darwin(v82);
        v231 = v84;
        v85 = v229 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
        v234 = v86;
        (*(v86 + 16))(v85);
        if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
        {
          v244._countAndFlagsBits = 0x8000000000000000;
          if (dispatch thunk of static BinaryInteger.isSigned.getter())
          {
            v87 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v87 < 64)
            {
              goto LABEL_90;
            }

            v232 = v80;
            v230 = v229;
            __chkstk_darwin(v87);
            v89 = v229 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_100053494();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v90 = *(*(v232 + 32) + 8);
            v91 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v234 + 8))(v89, v81);
            v80 = v232;
            if (v91)
            {
              goto LABEL_164;
            }
          }

          else
          {
            LODWORD(v230) = dispatch thunk of static BinaryInteger.isSigned.getter();
            v128 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v230)
            {
              v232 = v80;
              if (v128 <= 64)
              {
                v230 = *(*(v80 + 24) + 16);
                AssociatedTypeWitness = swift_getAssociatedTypeWitness();
                v229[2] = v229;
                v135 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
                __chkstk_darwin(AssociatedTypeWitness);
                v229[0] = v229 - v136;
                swift_getAssociatedConformanceWitness();
                v137 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
                v229[1] = v229;
                __chkstk_darwin(v137);
                v139 = v229 - ((v138 + 15) & 0xFFFFFFFFFFFFFFF0);
                dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
                v140 = *(*(v232 + 32) + 8);
                v141 = dispatch thunk of static Comparable.< infix(_:_:)();
                (*(v234 + 8))(v139, v81);
                if (v141)
                {
                  goto LABEL_164;
                }

                v80 = v232;
LABEL_90:
                dispatch thunk of BinaryInteger._lowWord.getter();
                goto LABEL_91;
              }

              v230 = v229;
              __chkstk_darwin(v128);
              v130 = v229 - ((v129 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_100053494();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v131 = *(*(v232 + 32) + 8);
              v132 = dispatch thunk of static Comparable.< infix(_:_:)();
              v133 = v130;
              v80 = v232;
              (*(v234 + 8))(v133, v81);
              if (v132)
              {
                goto LABEL_164;
              }
            }

            else if (v128 < 64)
            {
              goto LABEL_90;
            }
          }
        }

LABEL_91:
        if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
        {
          v244._countAndFlagsBits = 0x7FFFFFFFFFFFFFFFLL;
          v142 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v143 = v80;
          v144 = v142;
          v232 = v143;
          v145 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v144)
          {
            if (v145 > 64)
            {
              goto LABEL_94;
            }
          }

          else if (v145 >= 64)
          {
LABEL_94:
            v230 = v229;
            __chkstk_darwin(v145);
            v231 = v229 - ((v146 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_100053494();
            v147 = v232;
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v148 = *(*(v147 + 32) + 8);
            v149 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v234 + 8))(v231, v81);
            if (v149)
            {
              goto LABEL_161;
            }

            goto LABEL_101;
          }

          dispatch thunk of BinaryInteger._lowWord.getter();
        }

LABEL_101:
        v150 = dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v234 + 8))(v85, v81);
        v50 = __OFADD__(v150, v241);
        v151 = &v241[v150];
        if (v50)
        {
          goto LABEL_155;
        }

        v97 = [objc_allocWithZone(NSNumber) initWithLongLong:v151];
        sub_100004984(v246);
        a1 = v239;
LABEL_103:
        objc_opt_self();
        v152 = swift_dynamicCastObjCClass();
        if (v152)
        {
          v153 = v152;
          v154 = v97;
          v155 = String.init(_:)(v153);
          v156 = a1;
          v157 = sub_1000246F4();
          swift_beginAccess();
          v244 = v155;
          *&v245[8] = &type metadata for String;
          *&v245[16] = v157;
          v245[24] = 1;
          v158 = v156[14];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v243 = v156[14];
          v160 = v243;
          v156[14] = 0x8000000000000000;
          v161 = sub_1000110D8(v242, v4);
          v163 = v160[2];
          v164 = (v162 & 1) == 0;
          v50 = __OFADD__(v163, v164);
          v165 = v163 + v164;
          if (v50)
          {
            goto LABEL_152;
          }

          v166 = v162;
          if (v160[3] >= v165)
          {
            v5 = v237;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v224 = v161;
              sub_100202528();
              v161 = v224;
            }
          }

          else
          {
            sub_10022BE4C(v165, isUniquelyReferenced_nonNull_native);
            v161 = sub_1000110D8(v242, v4);
            v5 = v237;
            if ((v166 & 1) != (v167 & 1))
            {
              goto LABEL_165;
            }
          }

          a1 = v239;
          if (v166)
          {
            v187 = v161;

            a2 = v243;
            sub_100053580(&v244, v243[7] + 48 * v187);
          }

          else
          {
            a2 = v243;
            v243[(v161 >> 6) + 8] |= 1 << v161;
            v188 = (a2[6] + 16 * v161);
            *v188 = v242;
            v188[1] = v4;
            v189 = (a2[7] + 48 * v161);
            v190 = *&v245[9];
            v191 = *v245;
            *v189 = v244;
            v189[1] = v191;
            *(&v189[1]._object + 1) = v190;
            v192 = a2[2];
            v50 = __OFADD__(v192, 1);
            v193 = v192 + 1;
            if (v50)
            {
              goto LABEL_154;
            }

            a2[2] = v193;
          }

          v20 = v238;
          a1[14] = a2;
          swift_endAccess();
          sub_100139360(v241, v240);
        }

        else
        {

          objc_opt_self();
          v168 = swift_dynamicCastObjCClass();
          if (v168)
          {
            v169 = v168;
            [v168 doubleValue];
            v171 = v170;
            v172 = [v169 integerValue];
            if (v171 == v172)
            {
              v173 = v172;
              v174 = sub_100054734();
              swift_beginAccess();
              v244._countAndFlagsBits = v173;
              *&v245[8] = &type metadata for Int;
              *&v245[16] = v174;
              v245[24] = 2;
              v175 = a1[14];
              v176 = swift_isUniquelyReferenced_nonNull_native();
              v177 = a1;
              v178 = v176;
              v243 = v177[14];
              v179 = v243;
              v177[14] = 0x8000000000000000;
              v180 = sub_1000110D8(v242, v4);
              v182 = v179[2];
              v183 = (v181 & 1) == 0;
              v50 = __OFADD__(v182, v183);
              v184 = v182 + v183;
              if (v50)
              {
                goto LABEL_158;
              }

              v185 = v181;
              if (v179[3] >= v184)
              {
                if ((v178 & 1) == 0)
                {
                  v227 = v180;
                  sub_100202528();
                  v180 = v227;
                }
              }

              else
              {
                sub_10022BE4C(v184, v178);
                v180 = sub_1000110D8(v242, v4);
                if ((v185 & 1) != (v186 & 1))
                {
                  goto LABEL_165;
                }
              }

              a1 = v239;
              if ((v185 & 1) == 0)
              {
                a2 = v243;
                v243[(v180 >> 6) + 8] |= 1 << v180;
                v211 = (a2[6] + 16 * v180);
                *v211 = v242;
                v211[1] = v4;
                v212 = (a2[7] + 48 * v180);
                v213 = *&v245[9];
                v214 = *v245;
                *v212 = v244;
                v212[1] = v214;
                *(&v212[1]._object + 1) = v213;
                v215 = a2[2];
                v50 = __OFADD__(v215, 1);
                v216 = v215 + 1;
                if (v50)
                {
                  goto LABEL_162;
                }

                goto LABEL_142;
              }

LABEL_140:
              v217 = v180;

              a2 = v243;
              sub_100053580(&v244, v243[7] + 48 * v217);
            }

            else
            {
              v199 = sub_1000535B8();
              swift_beginAccess();
              *&v244._countAndFlagsBits = v171;
              *&v245[8] = &type metadata for Double;
              *&v245[16] = v199;
              v245[24] = 3;
              v200 = a1[14];
              v201 = swift_isUniquelyReferenced_nonNull_native();
              v202 = a1;
              v203 = v201;
              v243 = v202[14];
              v204 = v243;
              v202[14] = 0x8000000000000000;
              v180 = sub_1000110D8(v242, v4);
              v206 = v204[2];
              v207 = (v205 & 1) == 0;
              v50 = __OFADD__(v206, v207);
              v208 = v206 + v207;
              if (v50)
              {
                goto LABEL_160;
              }

              v209 = v205;
              if (v204[3] >= v208)
              {
                if ((v203 & 1) == 0)
                {
                  v228 = v180;
                  sub_100202528();
                  v180 = v228;
                }
              }

              else
              {
                sub_10022BE4C(v208, v203);
                v180 = sub_1000110D8(v242, v4);
                if ((v209 & 1) != (v210 & 1))
                {
                  goto LABEL_165;
                }
              }

              a1 = v239;
              if (v209)
              {
                goto LABEL_140;
              }

              a2 = v243;
              v243[(v180 >> 6) + 8] |= 1 << v180;
              v218 = (a2[6] + 16 * v180);
              *v218 = v242;
              v218[1] = v4;
              v219 = (a2[7] + 48 * v180);
              v220 = *&v245[9];
              v221 = *v245;
              *v219 = v244;
              v219[1] = v221;
              *(&v219[1]._object + 1) = v220;
              v222 = a2[2];
              v50 = __OFADD__(v222, 1);
              v216 = v222 + 1;
              if (v50)
              {
                goto LABEL_163;
              }

LABEL_142:
              a2[2] = v216;
            }

            v20 = v238;
            a1[14] = a2;
            swift_endAccess();

            sub_100139360(v241, v240);
            goto LABEL_144;
          }

          if (qword_1005A7E88 != -1)
          {
            swift_once();
          }

          v194 = type metadata accessor for Logger();
          sub_10000A6F0(v194, qword_1005DFA68);
          v195 = v97;
          v196 = Logger.logObject.getter();
          a2 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v196, a2))
          {
            v197 = swift_slowAlloc();
            v4 = swift_slowAlloc();
            *v197 = v235;
            *(v197 + 4) = v195;
            *v4 = v195;
            v198 = v195;
            _os_log_impl(&_mh_execute_header, v196, a2, "Unsupported value type: %@!", v197, 0xCu);
            sub_100139370(v4);

            v5 = v237;

            sub_100139360(v241, v240);
          }

          else
          {

            sub_100139360(v241, v240);
          }

          v20 = v238;
        }

LABEL_144:
        sub_100053550(&v249);
      }

      else
      {
LABEL_21:
        if (v29 > 1)
        {
          if (v29 == 2)
          {
            v37 = objc_allocWithZone(NSNumber);
            isa = [v37 initWithLongLong:v241];
          }

          else
          {
            isa = [objc_allocWithZone(NSNumber) initWithDouble:*&v241];
          }
        }

        else if (v29)
        {
          sub_1001393D8();
          isa = NSNumber.init(BOOLeanLiteral:)(v241 & 1).super.super.isa;
        }

        else
        {
          isa = v241;
        }

        v38 = isa;
        objc_opt_self();
        v39 = swift_dynamicCastObjCClass();
        if (v39)
        {
          v40 = v39;
          v8 = v38;
          v41 = String.init(_:)(v40);
          object = v41._object;
          v42 = sub_1000246F4();
          swift_beginAccess();
          v249 = v41;
          *&v250[8] = &type metadata for String;
          *&v250[16] = v42;
          v250[24] = 1;
          v43 = a1[14];
          v44 = swift_isUniquelyReferenced_nonNull_native();
          v246[0] = a1[14];
          v45 = v246[0];
          a1[14] = 0x8000000000000000;
          v46 = sub_1000110D8(v242, v4);
          v48 = *(v45 + 16);
          v49 = (v47 & 1) == 0;
          v50 = __OFADD__(v48, v49);
          v51 = v48 + v49;
          if (v50)
          {
            __break(1u);
            goto LABEL_150;
          }

          v52 = v47;
          if (*(v45 + 24) >= v51)
          {
            if ((v44 & 1) == 0)
            {
              v223 = v46;
              sub_100202528();
              v46 = v223;
            }
          }

          else
          {
            sub_10022BE4C(v51, v44);
            v46 = sub_1000110D8(v242, v4);
            if ((v52 & 1) != (v53 & 1))
            {
              goto LABEL_165;
            }
          }

          a1 = v239;
          v5 = v237;
          if (v52)
          {
            v73 = v46;

            a2 = v246[0];
            sub_100053580(&v249, *(v246[0] + 56) + 48 * v73);
          }

          else
          {
            a2 = v246[0];
            *(v246[0] + 8 * (v46 >> 6) + 64) |= 1 << v46;
            v74 = (a2[6] + 16 * v46);
            *v74 = v242;
            v74[1] = v4;
            v75 = (a2[7] + 48 * v46);
            v76 = *&v250[9];
            v77 = *v250;
            *v75 = v249;
            v75[1] = v77;
            *(&v75[1]._object + 1) = v76;
            v78 = a2[2];
            v50 = __OFADD__(v78, 1);
            v79 = v78 + 1;
            if (v50)
            {
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
LABEL_164:
              __break(1u);
LABEL_165:
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return;
            }

            a2[2] = v79;
          }

          a1[14] = a2;
          swift_endAccess();

          goto LABEL_46;
        }

        objc_opt_self();
        v54 = swift_dynamicCastObjCClass();
        if (v54)
        {
          v55 = v54;
          [v54 doubleValue];
          v57 = v56;
          v58 = [v55 integerValue];
          if (v57 == v58)
          {
            v59 = v58;
            v60 = sub_100054734();
            swift_beginAccess();
            v249._countAndFlagsBits = v59;
            *&v250[8] = &type metadata for Int;
            *&v250[16] = v60;
            v250[24] = 2;
            v61 = a1[14];
            v62 = swift_isUniquelyReferenced_nonNull_native();
            v63 = a1;
            v64 = v62;
            v246[0] = v63[14];
            v65 = v246[0];
            v63[14] = 0x8000000000000000;
            v66 = sub_1000110D8(v242, v4);
            v68 = *(v65 + 16);
            v69 = (v67 & 1) == 0;
            v50 = __OFADD__(v68, v69);
            v70 = v68 + v69;
            if (v50)
            {
              goto LABEL_153;
            }

            v71 = v67;
            if (*(v65 + 24) >= v70)
            {
              if ((v64 & 1) == 0)
              {
                v225 = v66;
                sub_100202528();
                v66 = v225;
              }
            }

            else
            {
              sub_10022BE4C(v70, v64);
              v66 = sub_1000110D8(v242, v4);
              if ((v71 & 1) != (v72 & 1))
              {
                goto LABEL_165;
              }
            }

            a1 = v239;
            if (v71)
            {
              goto LABEL_78;
            }

            a2 = v246[0];
            *(v246[0] + 8 * (v66 >> 6) + 64) |= 1 << v66;
            v116 = (a2[6] + 16 * v66);
            *v116 = v242;
            v116[1] = v4;
            v117 = (a2[7] + 48 * v66);
            v118 = *&v250[9];
            v119 = *v250;
            *v117 = v249;
            v117[1] = v119;
            *(&v117[1]._object + 1) = v118;
            v120 = a2[2];
            v50 = __OFADD__(v120, 1);
            v121 = v120 + 1;
            if (v50)
            {
              goto LABEL_157;
            }
          }

          else
          {
            v104 = sub_1000535B8();
            swift_beginAccess();
            *&v249._countAndFlagsBits = v57;
            *&v250[8] = &type metadata for Double;
            *&v250[16] = v104;
            v250[24] = 3;
            v105 = a1[14];
            v106 = swift_isUniquelyReferenced_nonNull_native();
            v107 = a1;
            v108 = v106;
            v246[0] = v107[14];
            v109 = v246[0];
            v107[14] = 0x8000000000000000;
            v66 = sub_1000110D8(v242, v4);
            v111 = *(v109 + 16);
            v112 = (v110 & 1) == 0;
            v50 = __OFADD__(v111, v112);
            v113 = v111 + v112;
            if (v50)
            {
              goto LABEL_156;
            }

            v114 = v110;
            if (*(v109 + 24) >= v113)
            {
              if ((v108 & 1) == 0)
              {
                v226 = v66;
                sub_100202528();
                v66 = v226;
              }
            }

            else
            {
              sub_10022BE4C(v113, v108);
              v66 = sub_1000110D8(v242, v4);
              if ((v114 & 1) != (v115 & 1))
              {
                goto LABEL_165;
              }
            }

            a1 = v239;
            if (v114)
            {
LABEL_78:
              v122 = v66;

              a2 = v246[0];
              sub_100053580(&v249, *(v246[0] + 56) + 48 * v122);
              goto LABEL_81;
            }

            a2 = v246[0];
            *(v246[0] + 8 * (v66 >> 6) + 64) |= 1 << v66;
            v123 = (a2[6] + 16 * v66);
            *v123 = v242;
            v123[1] = v4;
            v124 = (a2[7] + 48 * v66);
            v125 = *&v250[9];
            v126 = *v250;
            *v124 = v249;
            v124[1] = v126;
            *(&v124[1]._object + 1) = v125;
            v127 = a2[2];
            v50 = __OFADD__(v127, 1);
            v121 = v127 + 1;
            if (v50)
            {
              goto LABEL_159;
            }
          }

          a2[2] = v121;
LABEL_81:
          v20 = v238;
          a1[14] = a2;
          swift_endAccess();

          sub_100139360(v241, v240);
        }

        else
        {

          if (qword_1005A7E88 != -1)
          {
            swift_once();
          }

          v92 = type metadata accessor for Logger();
          sub_10000A6F0(v92, qword_1005DFA68);
          v93 = v38;
          v94 = Logger.logObject.getter();
          a2 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v94, a2))
          {
            v95 = swift_slowAlloc();
            v4 = swift_slowAlloc();
            *v95 = v235;
            *(v95 + 4) = v93;
            *v4 = v93;
            v96 = v93;
            _os_log_impl(&_mh_execute_header, v94, a2, "Unsupported value type: %@!", v95, 0xCu);
            sub_100139370(v4);

            v5 = v237;

LABEL_46:
            sub_100139360(v241, v240);
            goto LABEL_47;
          }

          sub_100139360(v241, v240);
LABEL_47:
          v20 = v238;
        }
      }
    }

    while (1)
    {
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v22 >= v20)
      {

        return;
      }

      v18 = *&v15[8 * v22];
      ++v19;
      if (v18)
      {
        v19 = v22;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_148:
    swift_once();
  }

  if (qword_1005A7E88 != -1)
  {
LABEL_150:
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000A6F0(v10, qword_1005DFA68);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v249._countAndFlagsBits = v14;
    *v13 = 136446210;
    *(v13 + 4) = sub_10000D01C(v8, object, &v249._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v11, v12, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v13, 0xCu);
    sub_100004984(v14);
  }
}

id sub_100139350(id result, char a2)
{
  if (!a2)
  {
    return result;
  }

  return result;
}

void sub_100139360(id a1, char a2)
{
  if (!a2)
  {
  }
}

uint64_t sub_100139370(uint64_t a1)
{
  v2 = sub_10004B564(&qword_1005A9670, &unk_1004C2480);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001393D8()
{
  result = qword_1005A8C80;
  if (!qword_1005A8C80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005A8C80);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for SecureLocationsSubmitResponseBody(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_100139444(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10013948C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_100139520()
{
  sub_10013A738();
  result = OS_os_log.init(subsystem:category:)();
  qword_1005DFBF0 = result;
  return result;
}

void *sub_100139580()
{
  type metadata accessor for SystemInfoDynamic();
  v0 = swift_allocObject();
  result = sub_1001395BC();
  qword_1005DFBF8 = v0;
  return result;
}

void *sub_1001395BC()
{
  v1 = v0;
  v2 = sub_10004B564(&qword_1005ABCC0, &qword_1004C5F98);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = CurrentValueSubject.init(_:)();
  v0[2] = v5;
  sub_10004B564(&qword_1005A8688, &qword_1004C5FA0);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v0[4] = v6;
  v0[5] = 0;
  swift_unownedRetainStrong();
  sub_10004B564(&qword_1005ABCC8, &qword_1004C5FA8);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  swift_unownedRetainStrong();

  swift_unownedRetain();
  swift_unownedRetain();
  sub_10013A6D4();
  v8 = Publisher.eraseToAnyPublisher()();
  swift_unownedRelease();

  *(v7 + 24) = v8;

  v1[3] = v7;
  if ((static SystemInfo.underTest.getter() & 1) == 0)
  {
    sub_100139B2C();
    sub_1001396F4();
  }

  return v1;
}

uint64_t sub_1001396F4()
{
  v0 = type metadata accessor for DarwinNotifications();
  v1 = *(v0 - 8);
  v2 = v1[8];
  v3 = __chkstk_darwin(v0);
  v30 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v27 - v5;
  static os_log_type_t.default.getter();
  sub_10013A738();
  v7 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  sub_10004B564(&qword_1005AA730, &qword_1004C4388);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C2310;
  v9 = v1[13];
  v9(v6, enum case for DarwinNotifications.devicesChanged(_:), v0);
  v10 = DarwinNotifications.rawValue.getter();
  v12 = v11;
  v28 = v1[1];
  v28(v6, v0);
  v13 = swift_allocObject();
  v14 = v29;
  swift_weakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = sub_10013A784;
  *(v15 + 24) = v13;
  *(inited + 32) = v10;
  *(inited + 40) = v12;
  *(inited + 48) = sub_10013A7AC;
  *(inited + 56) = v15;
  v16 = v30;
  v9(v30, enum case for DarwinNotifications.meDeviceChanged(_:), v0);

  v17 = v16;
  v18 = DarwinNotifications.rawValue.getter();
  v20 = v19;
  v28(v17, v0);
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = sub_10013A7B0;
  *(v22 + 24) = v21;
  *(inited + 64) = v18;
  *(inited + 72) = v20;
  *(inited + 80) = sub_10013A80C;
  *(inited + 88) = v22;

  v23 = sub_1002089E4(inited);
  swift_setDeallocating();
  sub_10004B564(&qword_1005AA738, &qword_1004C4390);
  swift_arrayDestroy();
  type metadata accessor for DarwinNotificationHelper();
  v24 = swift_allocObject();
  type metadata accessor for DarwinNotificationListener();
  swift_allocObject();
  *(v24 + 16) = sub_1001400CC(v23, 0);
  *(v24 + 24) = 0;
  v25 = *(v14 + 40);
  *(v14 + 40) = v24;
}

uint64_t sub_100139A5C()
{
  static os_log_type_t.default.getter();
  if (qword_1005A7F58 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100139B2C();
  }

  return result;
}

uint64_t sub_100139B2C()
{
  v1 = v0;
  v2 = type metadata accessor for Device();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static os_log_type_t.default.getter();
  if (qword_1005A7F58 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  unsafeFromAsyncTask<A>(_:)();
  static os_log_type_t.default.getter();
  sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1004C1900;
  v8 = Device.isThisDevice.getter();
  *(v7 + 56) = &type metadata for Bool;
  *(v7 + 64) = &protocol witness table for Bool;
  *(v7 + 32) = v8 & 1;
  os_log(_:dso:log:_:_:)();

  v9 = *(*(v0 + 24) + 16);
  swift_unownedRetainStrong();
  CurrentValueSubject.value.getter();

  if (v17 <= 1u)
  {
    if (v17)
    {
      if ((Device.isThisDevice.getter() & 1) == 0)
      {
        v15 = *(v1 + 16);
        v16[3] = 2;
        goto LABEL_17;
      }

      return (*(v3 + 8))(v6, v2);
    }
  }

  else
  {
    if (v17 == 2)
    {
      if (Device.isThisDevice.getter())
      {
        v13 = *(v1 + 16);
        v16[5] = 1;
        goto LABEL_17;
      }

      return (*(v3 + 8))(v6, v2);
    }

    if (v17 == 3)
    {
      if ((Device.isThisDevice.getter() & 1) == 0)
      {
        v10 = *(v1 + 16);
        v16[4] = 2;
LABEL_17:
        CurrentValueSubject.send(_:)();
        return (*(v3 + 8))(v6, v2);
      }

      return (*(v3 + 8))(v6, v2);
    }
  }

  v11 = Device.isThisDevice.getter();
  v12 = *(v1 + 16);
  if (v11)
  {
    v16[1] = 1;
  }

  else
  {
    v16[2] = 2;
  }

  CurrentValueSubject.send(_:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_100139EDC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = async function pointer to daemon.getter[1];
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  v3[1] = sub_100139F70;

  return daemon.getter();
}

uint64_t sub_100139F70(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 24);
  v12 = *v1;
  *(v3 + 32) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 40) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for SettingsService();
  v9 = sub_100009098(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_100009098(&qword_1005AA6E8, type metadata accessor for SettingsService);
  *v6 = v12;
  v6[1] = sub_10013A14C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10013A14C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  v4[6] = a1;
  v4[7] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10013A3F0, 0, 0);
  }

  else
  {
    v7 = v4[4];

    v8 = swift_task_alloc();
    v4[8] = v8;
    *v8 = v6;
    v8[1] = sub_10013A2DC;
    v9 = v4[2];

    return sub_100484570(v9, 0);
  }
}

uint64_t sub_10013A2DC()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_10013A454;
  }

  else
  {
    v3 = sub_100016108;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10013A3F0()
{
  v1 = v0[7];
  v2 = v0[4];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10013A454()
{
  v1 = v0[9];
  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10013A4B8()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for SystemInfoDynamic.MeDeviceState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SystemInfoDynamic.MeDeviceState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10013A680()
{
  result = qword_1005ABCB8;
  if (!qword_1005ABCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ABCB8);
  }

  return result;
}

unint64_t sub_10013A6D4()
{
  result = qword_1005ABCD0;
  if (!qword_1005ABCD0)
  {
    sub_10004B610(&qword_1005ABCC0, &qword_1004C5F98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ABCD0);
  }

  return result;
}

unint64_t sub_10013A738()
{
  result = qword_1005ABEA0;
  if (!qword_1005ABEA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005ABEA0);
  }

  return result;
}

uint64_t sub_10013A7D8(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1], a1[2]);
}

uint64_t sub_10013A810()
{
  sub_10013A738();
  result = OS_os_log.init(subsystem:category:)();
  qword_1005DFC00 = result;
  return result;
}

uint64_t sub_10013A878()
{
  type metadata accessor for XPCActivity_SPD();
  sub_10013E4FC();
  v1._countAndFlagsBits = CustomDebugStringConvertible.typeDescription.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 8250;
  v2._object = 0xE200000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = CustomDebugStringConvertible<>.addressDescription.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 23328;
  v4._object = 0xE200000000000000;
  String.append(_:)(v4);
  String.append(_:)(*(v0 + 24));
  v5._countAndFlagsBits = 15965;
  v5._object = 0xE200000000000000;
  String.append(_:)(v5);
  return 60;
}

uint64_t sub_10013A958(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = String.utf8CString.getter();
  xpc_activity_unregister((v4 + 32));

  v5 = a1[12];
  v6 = a1[13];
  a1[12] = 0;
  a1[13] = 0;
  sub_100037FC8(v5);
  swift_unknownObjectWeakAssign();
  static os_log_type_t.default.getter();
  if (qword_1005A7F68 != -1)
  {
    swift_once();
  }

  sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1004C1900;
  type metadata accessor for XPCActivity_SPD();

  v8 = String.init<A>(describing:)();
  v10 = v9;
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = sub_1000588B8();
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  os_log(_:dso:log:_:_:)();
}

uint64_t sub_10013AAA8(_xpc_activity_s *a1)
{
  static os_log_type_t.default.getter();
  if (qword_1005A7F68 != -1)
  {
    swift_once();
  }

  sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1004C1900;
  type metadata accessor for XPCActivity_SPD();

  v3 = String.init<A>(describing:)();
  v5 = v4;
  *(v2 + 56) = &type metadata for String;
  v6 = sub_1000588B8();
  *(v2 + 64) = v6;
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  os_log(_:dso:log:_:_:)();

  v7 = *(a1 + 2);
  sub_10004B564(&qword_1005ABE98, &qword_1004C61E8);
  OS_dispatch_queue.sync<A>(execute:)();
  if (a1)
  {
    sub_10013B504(a1);
    return swift_unknownObjectRelease();
  }

  else
  {
    v9 = MEMORY[0x58];
    static os_log_type_t.default.getter();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1004C2310;

    v11 = String.init<A>(describing:)();
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = v6;
    *(v10 + 32) = v11;
    *(v10 + 40) = v12;
    v14 = MEMORY[0x18];
    v13 = MEMORY[0x20];
    *(v10 + 96) = &type metadata for String;
    *(v10 + 104) = v6;
    *(v10 + 72) = v14;
    *(v10 + 80) = v13;

    os_log(_:dso:log:_:_:)();
    if (v9 == 1)
    {

      return sub_10013AF2C();
    }

    else
    {
    }
  }
}

BOOL sub_10013ADA4(uint64_t a1, xpc_activity_state_t a2)
{
  v4 = *(v2 + 16);
  sub_10004B564(&qword_1005ABE98, &qword_1004C61E8);
  OS_dispatch_queue.sync<A>(execute:)();
  if (activity)
  {
    v5 = xpc_activity_set_state(activity, a2);
    swift_unknownObjectRelease();
  }

  else
  {
    static os_log_type_t.error.getter();
    if (qword_1005A7F68 != -1)
    {
      swift_once();
    }

    sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1004C1900;
    type metadata accessor for XPCActivity_SPD();

    v7 = String.init<A>(describing:)();
    v9 = v8;
    *(v6 + 56) = &type metadata for String;
    *(v6 + 64) = sub_1000588B8();
    *(v6 + 32) = v7;
    *(v6 + 40) = v9;
    os_log(_:dso:log:_:_:)();

    return 0;
  }

  return v5;
}

uint64_t sub_10013AF2C()
{
  result = static SystemInfo.underTest.getter();
  if ((result & 1) == 0)
  {
    v2 = *(v0 + 16);
    v3 = swift_allocObject();
    *(v3 + 16) = sub_10013E478;
    *(v3 + 24) = v0;
    v5[4] = sub_1000CAA0C;
    v5[5] = v3;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_10013EC94;
    v5[3] = &unk_100591D20;
    v4 = _Block_copy(v5);

    dispatch_sync(v2, v4);
    _Block_release(v4);
    LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

    if (v2)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10013B068(void *a1)
{
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = a1[12];
  v4 = a1[13];
  a1[12] = sub_10013E480;
  a1[13] = v2;

  sub_100037FC8(v3);
  v6 = a1[3];
  v5 = a1[4];
  v10[4] = sub_10013E480;
  v10[5] = v2;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_10013B278;
  v10[3] = &unk_100591D70;
  v7 = _Block_copy(v10);

  v8 = String.utf8CString.getter();
  xpc_activity_register((v8 + 32), XPC_ACTIVITY_CHECK_IN, v7);

  _Block_release(v7);
}

uint64_t sub_10013B1A4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = type metadata accessor for Transaction();
    __chkstk_darwin(v1);
    static Transaction.named<A>(_:with:)();
  }

  return result;
}

uint64_t sub_10013B278(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_10013B2D8(uint64_t a1, xpc_activity_t activity, uint64_t a3)
{
  state = xpc_activity_get_state(activity);
  v5 = sub_10013DD14(state);
  static os_log_type_t.default.getter();
  if (qword_1005A7F68 != -1)
  {
    swift_once();
  }

  sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1004C0BD0;
  type metadata accessor for XPCActivity_SPD();

  v7 = String.init<A>(describing:)();
  v9 = v8;
  *(v6 + 56) = &type metadata for String;
  v10 = sub_1000588B8();
  *(v6 + 64) = v10;
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  swift_unknownObjectRetain();
  sub_10004B564(&qword_1005ABEE8, &qword_1004C6200);
  v11 = String.init<A>(describing:)();
  *(v6 + 96) = &type metadata for String;
  *(v6 + 104) = v10;
  *(v6 + 72) = v11;
  *(v6 + 80) = v12;
  v13 = String.init<A>(describing:)();
  *(v6 + 136) = &type metadata for String;
  *(v6 + 144) = v10;
  *(v6 + 112) = v13;
  *(v6 + 120) = v14;
  os_log(_:dso:log:_:_:)();

  if (!v5)
  {
    v16 = *(a3 + 40);
    __chkstk_darwin(v15);
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v5 = v5;
  }

  v17 = *(a3 + 72);
  return (*(a3 + 64))(a3, a1, v5);
}

unint64_t sub_10013B504(_xpc_activity_s *a1)
{
  v2 = v1;
  v3 = a1;
  if (!xpc_activity_copy_criteria(a1))
  {
    goto LABEL_4;
  }

  v4 = swift_unknownObjectRetain();
  sub_10013DB90(v4, &v49);
  if (v49 != 2)
  {
    v55 = v49;
    v56 = v50;
    v57 = v51;
    v20 = *(v1 + 48);
    v21 = *(v1 + 56);
    v20(&v52, &v49);
    if (v52 == 2)
    {
      v22 = *(v2 + 16);
      v3 = swift_allocObject();
      *(v3 + 2) = sub_10011FAE4;
      *(v3 + 3) = v2;
      *(&v47 + 1) = sub_1000CAA0C;
      v48 = v3;
      aBlock = _NSConcreteStackBlock;
      *&aBlock_8 = 1107296256;
      *(&aBlock_8 + 1) = sub_10013EC94;
      *&v47 = &unk_100591CD0;
      v23 = _Block_copy(&aBlock);

      dispatch_sync(v22, v23);
      _Block_release(v23);
      LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();
      swift_unknownObjectRelease();

      if ((v22 & 1) == 0)
      {
        return 6;
      }

      __break(1u);
    }

    else
    {
      aBlock = v52;
      aBlock_8 = v53;
      v47 = v54;
      v24 = sub_10013D764(&aBlock, &v55);
      static os_log_type_t.default.getter();
      if (!v24)
      {
        if (qword_1005A7F68 != -1)
        {
          swift_once();
        }

        sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_1004C2310;
        type metadata accessor for XPCActivity_SPD();

        v33 = String.init<A>(describing:)();
        v35 = v34;
        *(v32 + 56) = &type metadata for String;
        v36 = sub_1000588B8();
        *(v32 + 64) = v36;
        *(v32 + 32) = v33;
        *(v32 + 40) = v35;
        v37 = String.init<A>(describing:)();
        *(v32 + 96) = &type metadata for String;
        *(v32 + 104) = v36;
        *(v32 + 72) = v37;
        *(v32 + 80) = v38;
        os_log(_:dso:log:_:_:)();

        static os_log_type_t.default.getter();
        v39 = swift_allocObject();
        *(v39 + 16) = xmmword_1004C2310;

        v40 = String.init<A>(describing:)();
        *(v39 + 56) = &type metadata for String;
        *(v39 + 64) = v36;
        *(v39 + 32) = v40;
        *(v39 + 40) = v41;
        v42 = String.init<A>(describing:)();
        *(v39 + 96) = &type metadata for String;
        *(v39 + 104) = v36;
        *(v39 + 72) = v42;
        *(v39 + 80) = v43;
        os_log(_:dso:log:_:_:)();

        sub_10013BC5C();
        xpc_activity_set_criteria(v3, v44);
        swift_unknownObjectRelease();
        goto LABEL_10;
      }

      if (qword_1005A7F68 == -1)
      {
        goto LABEL_16;
      }
    }

    swift_once();
LABEL_16:
    sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1004C2310;
    type metadata accessor for XPCActivity_SPD();

    v26 = String.init<A>(describing:)();
    v28 = v27;
    *(v25 + 56) = &type metadata for String;
    v29 = sub_1000588B8();
    *(v25 + 64) = v29;
    *(v25 + 32) = v26;
    *(v25 + 40) = v28;
    v30 = String.init<A>(describing:)();
    *(v25 + 96) = &type metadata for String;
    *(v25 + 104) = v29;
    *(v25 + 72) = v30;
    *(v25 + 80) = v31;
    os_log(_:dso:log:_:_:)();

LABEL_10:
    swift_unknownObjectRelease();
    state = xpc_activity_get_state(v3);
    return sub_10013DD14(state);
  }

  swift_unknownObjectRelease();
LABEL_4:
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v55 = 2;
  v56 = 0u;
  v57 = 0u;
  v5(&v52, &v55);
  v7 = v52;
  if (v52 != 2)
  {
LABEL_7:
    aBlock = v7;
    aBlock_8 = v53;
    v47 = v54;
    static os_log_type_t.default.getter();
    if (qword_1005A7F68 != -1)
    {
      swift_once();
    }

    sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1004C2310;
    type metadata accessor for XPCActivity_SPD();

    v11 = String.init<A>(describing:)();
    v13 = v12;
    *(v10 + 56) = &type metadata for String;
    v14 = sub_1000588B8();
    *(v10 + 64) = v14;
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    v15 = String.init<A>(describing:)();
    *(v10 + 96) = &type metadata for String;
    *(v10 + 104) = v14;
    *(v10 + 72) = v15;
    *(v10 + 80) = v16;
    os_log(_:dso:log:_:_:)();

    sub_10013BC5C();
    xpc_activity_set_criteria(v3, v17);
    goto LABEL_10;
  }

  v8 = *(v2 + 16);
  v3 = swift_allocObject();
  *(v3 + 2) = sub_10011E210;
  *(v3 + 3) = v2;
  *(&v47 + 1) = sub_1000C7A78;
  v48 = v3;
  aBlock = _NSConcreteStackBlock;
  *&aBlock_8 = 1107296256;
  *(&aBlock_8 + 1) = sub_10013EC94;
  *&v47 = &unk_100591C80;
  v9 = _Block_copy(&aBlock);

  dispatch_sync(v8, v9);
  _Block_release(v9);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return 6;
}

void sub_10013BC5C()
{
  v1 = xpc_dictionary_create(0, 0, 0);
  v2 = v1;
  v3 = &XPC_ACTIVITY_PRIORITY_MAINTENANCE;
  if (!*v0)
  {
    v3 = &XPC_ACTIVITY_PRIORITY_UTILITY;
  }

  xpc_dictionary_set_string(v1, XPC_ACTIVITY_PRIORITY, *v3);
  v4 = *(v0 + 1);
  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_REPEATING, *(v0 + 1));
  xpc_dictionary_set_int64(v2, XPC_ACTIVITY_DELAY, *(v0 + 8));
  xpc_dictionary_set_int64(v2, XPC_ACTIVITY_GRACE_PERIOD, *(v0 + 16));
  if (v4 == 1)
  {
    xpc_dictionary_set_int64(v2, XPC_ACTIVITY_INTERVAL, *(v0 + 24));
  }

  v5 = *(v0 + 32);
  if (v5)
  {
    if (!XPC_ACTIVITY_POWER_NAP)
    {
      __break(1u);
      goto LABEL_51;
    }

    xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_POWER_NAP, 1);
  }

  if ((v5 & 4) == 0)
  {
    goto LABEL_11;
  }

  if (!XPC_ACTIVITY_REQUIRE_SIGNIFICANT_USER_INACTIVITY)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_REQUIRE_SIGNIFICANT_USER_INACTIVITY, 1);
LABEL_11:
  if ((v5 & 2) == 0)
  {
    goto LABEL_14;
  }

  if (!XPC_ACTIVITY_SHOULD_WAKE_DEVICE)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_SHOULD_WAKE_DEVICE, 1);
LABEL_14:
  if ((v5 & 8) == 0)
  {
    goto LABEL_17;
  }

  if (!XPC_ACTIVITY_USES_DUET_POWER_BUDGETING)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_USES_DUET_POWER_BUDGETING, 1);
LABEL_17:
  if ((v5 & 0x10) == 0)
  {
    goto LABEL_20;
  }

  if (!XPC_ACTIVITY_REQUIRES_CLASS_A)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_REQUIRES_CLASS_A, 1);
LABEL_20:
  if ((v5 & 0x20) == 0)
  {
    goto LABEL_23;
  }

  if (!XPC_ACTIVITY_REQUIRES_CLASS_B)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_REQUIRES_CLASS_B, 1);
LABEL_23:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_26;
  }

  if (!XPC_ACTIVITY_REQUIRES_CLASS_C)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_REQUIRES_CLASS_C, 1);
LABEL_26:
  if ((v5 & 0x80) == 0)
  {
    goto LABEL_29;
  }

  if (!XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 1);
LABEL_29:
  if ((v5 & 0x100) == 0)
  {
    goto LABEL_32;
  }

  if (!XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY, 1);
LABEL_32:
  if ((v5 & 0x2000) == 0)
  {
    goto LABEL_35;
  }

  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = String.utf8CString.getter();
  v8 = String.utf8CString.getter();
  xpc_dictionary_set_string(v6, (v7 + 32), (v8 + 32));

  if (!XPC_ACTIVITY_DUET_ACTIVITY_SCHEDULER_DATA)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  xpc_dictionary_set_value(v2, XPC_ACTIVITY_DUET_ACTIVITY_SCHEDULER_DATA, v6);
  swift_unknownObjectRelease();
LABEL_35:
  if ((v5 & 0x200) != 0)
  {
    xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  }

  if ((v5 & 0x400) != 0)
  {
    if (XPC_ACTIVITY_MEMORY_INTENSIVE)
    {
      xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_MEMORY_INTENSIVE, 1);
      goto LABEL_40;
    }

LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

LABEL_40:
  if ((v5 & 0x800) == 0)
  {
    goto LABEL_43;
  }

  if (!XPC_ACTIVITY_CPU_INTENSIVE)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_CPU_INTENSIVE, 1);
LABEL_43:
  if ((v5 & 0x1000) == 0)
  {
    goto LABEL_46;
  }

  if (!XPC_ACTIVITY_DISK_INTENSIVE)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_DISK_INTENSIVE, 1);
LABEL_46:
  if ((v5 & 0x4000) == 0)
  {
    return;
  }

  if (!XPC_ACTIVITY_COMMUNICATES_WITH_PAIRED_DEVICE)
  {
LABEL_63:
    __break(1u);
    return;
  }

  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_COMMUNICATES_WITH_PAIRED_DEVICE, 1);
}

uint64_t sub_10013BFD8()
{
  result = String.init(cString:)();
  qword_1005ABCE0 = result;
  *algn_1005ABCE8 = v1;
  return result;
}

uint64_t sub_10013C008(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x616E65746E69616DLL;
  }

  else
  {
    v4 = 0x7974696C697475;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xEB0000000065636ELL;
  }

  if (*a2)
  {
    v6 = 0x616E65746E69616DLL;
  }

  else
  {
    v6 = 0x7974696C697475;
  }

  if (*a2)
  {
    v7 = 0xEB0000000065636ELL;
  }

  else
  {
    v7 = 0xE700000000000000;
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

Swift::Int sub_10013C0B8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10013C144()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10013C1BC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10013C244@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10058B058, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_10013C2A4(uint64_t *a1@<X8>)
{
  v2 = 0x7974696C697475;
  if (*v1)
  {
    v2 = 0x616E65746E69616DLL;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xEB0000000065636ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10013C39C()
{
  if (*v0)
  {
    result = 0x6E65746E69616D2ELL;
  }

  else
  {
    result = 0x7974696C6974752ELL;
  }

  *v0;
  return result;
}

unint64_t sub_10013C3E0@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10013DDD8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10013C4BC(__int16 a1)
{
  if ((a1 & 1) == 0)
  {
    v2 = _swiftEmptyArrayStorage;
    if ((a1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_1001FC900(0, 1, 1, _swiftEmptyArrayStorage);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_1001FC900((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0x614E7265776F702ELL;
  *(v5 + 5) = 0xE900000000000070;
  if ((a1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1001FC900(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_1001FC900((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x766544656B61772ELL;
    *(v8 + 5) = 0xEB00000000656369;
  }

LABEL_12:
  if ((a1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1001FC900(0, *(v2 + 2) + 1, 1, v2);
    }

    v10 = *(v2 + 2);
    v9 = *(v2 + 3);
    if (v10 >= v9 >> 1)
    {
      v2 = sub_1001FC900((v9 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 2) = v10 + 1;
    v11 = &v2[16 * v10];
    *(v11 + 4) = 0xD00000000000001ALL;
    *(v11 + 5) = 0x80000001004E2610;
  }

  if ((a1 & 8) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1001FC900(0, *(v2 + 2) + 1, 1, v2);
    }

    v13 = *(v2 + 2);
    v12 = *(v2 + 3);
    if (v13 >= v12 >> 1)
    {
      v2 = sub_1001FC900((v12 > 1), v13 + 1, 1, v2);
    }

    *(v2 + 2) = v13 + 1;
    v14 = &v2[16 * v13];
    *(v14 + 4) = 0xD000000000000017;
    *(v14 + 5) = 0x80000001004E25F0;
  }

  if ((a1 & 0x10) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1001FC900(0, *(v2 + 2) + 1, 1, v2);
    }

    v16 = *(v2 + 2);
    v15 = *(v2 + 3);
    if (v16 >= v15 >> 1)
    {
      v2 = sub_1001FC900((v15 > 1), v16 + 1, 1, v2);
    }

    *(v2 + 2) = v16 + 1;
    v17 = &v2[16 * v16];
    *(v17 + 4) = 0x657269757165722ELL;
    *(v17 + 5) = 0xEF417373616C4373;
    if ((a1 & 0x20) == 0)
    {
LABEL_26:
      if ((a1 & 0x40) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_46;
    }
  }

  else if ((a1 & 0x20) == 0)
  {
    goto LABEL_26;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1001FC900(0, *(v2 + 2) + 1, 1, v2);
  }

  v19 = *(v2 + 2);
  v18 = *(v2 + 3);
  if (v19 >= v18 >> 1)
  {
    v2 = sub_1001FC900((v18 > 1), v19 + 1, 1, v2);
  }

  *(v2 + 2) = v19 + 1;
  v20 = &v2[16 * v19];
  *(v20 + 4) = 0x657269757165722ELL;
  *(v20 + 5) = 0xEF427373616C4373;
  if ((a1 & 0x40) == 0)
  {
LABEL_27:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_51;
  }

LABEL_46:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1001FC900(0, *(v2 + 2) + 1, 1, v2);
  }

  v22 = *(v2 + 2);
  v21 = *(v2 + 3);
  if (v22 >= v21 >> 1)
  {
    v2 = sub_1001FC900((v21 > 1), v22 + 1, 1, v2);
  }

  *(v2 + 2) = v22 + 1;
  v23 = &v2[16 * v22];
  *(v23 + 4) = 0x657269757165722ELL;
  *(v23 + 5) = 0xEF437373616C4373;
  if ((a1 & 0x80) == 0)
  {
LABEL_28:
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_56;
  }

LABEL_51:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1001FC900(0, *(v2 + 2) + 1, 1, v2);
  }

  v25 = *(v2 + 2);
  v24 = *(v2 + 3);
  if (v25 >= v24 >> 1)
  {
    v2 = sub_1001FC900((v24 > 1), v25 + 1, 1, v2);
  }

  *(v2 + 2) = v25 + 1;
  v26 = &v2[16 * v25];
  *(v26 + 4) = 0xD000000000000010;
  *(v26 + 5) = 0x80000001004E25D0;
  if ((a1 & 0x100) == 0)
  {
LABEL_29:
    if ((a1 & 0x200) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_61;
  }

LABEL_56:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1001FC900(0, *(v2 + 2) + 1, 1, v2);
  }

  v28 = *(v2 + 2);
  v27 = *(v2 + 3);
  if (v28 >= v27 >> 1)
  {
    v2 = sub_1001FC900((v27 > 1), v28 + 1, 1, v2);
  }

  *(v2 + 2) = v28 + 1;
  v29 = &v2[16 * v28];
  *(v29 + 4) = 0xD00000000000001BLL;
  *(v29 + 5) = 0x80000001004E25B0;
  if ((a1 & 0x200) == 0)
  {
LABEL_30:
    if ((a1 & 0x400) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_66;
  }

LABEL_61:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1001FC900(0, *(v2 + 2) + 1, 1, v2);
  }

  v31 = *(v2 + 2);
  v30 = *(v2 + 3);
  if (v31 >= v30 >> 1)
  {
    v2 = sub_1001FC900((v30 > 1), v31 + 1, 1, v2);
  }

  *(v2 + 2) = v31 + 1;
  v32 = &v2[16 * v31];
  strcpy(v32 + 32, ".allowBattery");
  *(v32 + 23) = -4864;
  if ((a1 & 0x400) == 0)
  {
LABEL_31:
    if ((a1 & 0x800) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_71;
  }

LABEL_66:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1001FC900(0, *(v2 + 2) + 1, 1, v2);
  }

  v34 = *(v2 + 2);
  v33 = *(v2 + 3);
  if (v34 >= v33 >> 1)
  {
    v2 = sub_1001FC900((v33 > 1), v34 + 1, 1, v2);
  }

  *(v2 + 2) = v34 + 1;
  v35 = &v2[16 * v34];
  *(v35 + 4) = 0xD000000000000010;
  *(v35 + 5) = 0x80000001004E2590;
  if ((a1 & 0x800) == 0)
  {
LABEL_32:
    if ((a1 & 0x1000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_76;
  }

LABEL_71:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1001FC900(0, *(v2 + 2) + 1, 1, v2);
  }

  v37 = *(v2 + 2);
  v36 = *(v2 + 3);
  if (v37 >= v36 >> 1)
  {
    v2 = sub_1001FC900((v36 > 1), v37 + 1, 1, v2);
  }

  *(v2 + 2) = v37 + 1;
  v38 = &v2[16 * v37];
  strcpy(v38 + 32, ".cpuIntensive");
  *(v38 + 23) = -4864;
  if ((a1 & 0x1000) == 0)
  {
LABEL_33:
    if ((a1 & 0x2000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_81;
  }

LABEL_76:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1001FC900(0, *(v2 + 2) + 1, 1, v2);
  }

  v40 = *(v2 + 2);
  v39 = *(v2 + 3);
  if (v40 >= v39 >> 1)
  {
    v2 = sub_1001FC900((v39 > 1), v40 + 1, 1, v2);
  }

  *(v2 + 2) = v40 + 1;
  v41 = &v2[16 * v40];
  strcpy(v41 + 32, ".diskIntensive");
  v41[47] = -18;
  if ((a1 & 0x2000) == 0)
  {
LABEL_34:
    if ((a1 & 0x4000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_86;
  }

LABEL_81:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1001FC900(0, *(v2 + 2) + 1, 1, v2);
  }

  v43 = *(v2 + 2);
  v42 = *(v2 + 3);
  if (v43 >= v42 >> 1)
  {
    v2 = sub_1001FC900((v42 > 1), v43 + 1, 1, v2);
  }

  *(v2 + 2) = v43 + 1;
  v44 = &v2[16 * v43];
  *(v44 + 4) = 0xD000000000000019;
  *(v44 + 5) = 0x80000001004E2570;
  if ((a1 & 0x4000) != 0)
  {
LABEL_86:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1001FC900(0, *(v2 + 2) + 1, 1, v2);
    }

    v46 = *(v2 + 2);
    v45 = *(v2 + 3);
    if (v46 >= v45 >> 1)
    {
      v2 = sub_1001FC900((v45 > 1), v46 + 1, 1, v2);
    }

    *(v2 + 2) = v46 + 1;
    v47 = &v2[16 * v46];
    *(v47 + 4) = 0xD000000000000012;
    *(v47 + 5) = 0x80000001004E2550;
  }

LABEL_91:
  sub_10004B564(&qword_1005A9630, &qword_1004C5680);
  sub_10013E894();
  v48 = BidirectionalCollection<>.joined(separator:)();
  v50 = v49;

  v51._countAndFlagsBits = v48;
  v51._object = v50;
  String.append(_:)(v51);

  v52._countAndFlagsBits = 93;
  v52._object = 0xE100000000000000;
  String.append(_:)(v52);
  return 91;
}

uint64_t sub_10013CE10(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005ABED0, &qword_1004C61F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_10013E2D4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v23 = *v3;
  v22 = 0;
  sub_10013E3D0();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = v3[1];
    v21 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = *(v3 + 1);
    v20 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = *(v3 + 2);
    v19 = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = *(v3 + 3);
    v18 = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = *(v3 + 4);
    v16[15] = 5;
    sub_10013E424();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

BOOL sub_10013D0B4(void *a1, uint64_t *a2)
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

void *sub_10013D0E4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_10013D110@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_10013D1E8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1001ADB9C();

  *a1 = v2;
  return result;
}

uint64_t sub_10013D228()
{
  v1 = *v0;
  v2 = 0x797469726F697270;
  v3 = 0x7265506563617267;
  v4 = 0x6C61767265746E69;
  if (v1 != 4)
  {
    v4 = 0x736E6F6974706FLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E69746165706572;
  if (v1 != 1)
  {
    v5 = 0x79616C6564;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10013D2EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10013DE3C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10013D314(uint64_t a1)
{
  v2 = sub_10013E2D4();

  return CodingKey.description.getter(a1, v2);
}