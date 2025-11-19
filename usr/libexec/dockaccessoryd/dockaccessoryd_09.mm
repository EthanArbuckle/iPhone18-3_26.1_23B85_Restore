void sub_10014E6B8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_10014F580(a1);
  if (v9)
  {
    v10 = v9;
    v11 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_sessionLock;
    v12 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_sessionLock);
    v13 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_sessionLock);

    os_unfair_lock_lock(v12 + 4);

    v14 = [v10 uuid];
    v15 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_activeSessions;
    swift_beginAccess();
    v16 = *(v2 + v15);

    v17 = sub_1001A359C(v14, v16);

    v18 = *(v2 + v11);

    os_unfair_lock_unlock(v18 + 4);

    if (v17)
    {
      sub_1000BB108();
    }

    sub_10014DCDC(v10);
    swift_beginAccess();
    v19 = sub_1001E4958(a1);
    swift_endAccess();

    [*(v2 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_uarpController) removeAccessory:v10];
  }

  else
  {
    (*(v5 + 16))(v8, v1 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_logger, v4);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Error retreiving uarp accessory", v22, 2u);
    }

    (*(v5 + 8))(v8, v4);
  }
}

void sub_10014E948(uint64_t a1, char a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = sub_100095274(&unk_1002A73C0, &unk_10023BE80);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v55 - v12;
  v14 = type metadata accessor for Logger();
  v57 = *(v14 - 8);
  v58 = v14;
  v15 = *(v57 + 64);
  v16 = __chkstk_darwin(v14);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v55 - v19;
  if (a2)
  {
    sub_10014E6B8(a1);
    if ((sub_10014DDA8(a1, a3, a4) & 1) == 0)
    {
      sub_1000A1168();
      swift_allocError();
      *v44 = 0xD00000000000002BLL;
      *(v44 + 8) = 0x80000001002334E0;
      *(v44 + 16) = 0;
      swift_willThrow();
      return;
    }
  }

  v56 = v13;
  v21 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_registeredAccessories;
  swift_beginAccess();
  v22 = *(v5 + v21);

  v23 = sub_1001A34D4(a1, v22);

  if (v23)
  {
    v55 = v18;
    v24 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_sessionLock;
    v25 = *(v5 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_sessionLock);

    os_unfair_lock_lock(v25 + 4);

    v26 = [v23 uuid];
    v27 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_activeSessions;
    swift_beginAccess();
    v28 = *(v5 + v27);

    v29 = sub_1001A359C(v26, v28);

    v30 = v29;

    v31 = *(v5 + v24);

    os_unfair_lock_unlock(v31 + 4);

    if (!v29)
    {
      v53 = v59;
      v54 = sub_10014F178(v23);
      if (v53)
      {
        swift_willThrow();

        return;
      }

      v30 = v54;
    }

    v32 = *(v57 + 16);
    v33 = v55;
    if (a2)
    {
      v32(v20, v5 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_logger, v58);

      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = v30;
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        *v37 = 138412290;
        v39 = *(a1 + 24);
        *(v37 + 4) = v39;
        *v38 = v39;
        v40 = v39;
        _os_log_impl(&_mh_execute_header, v34, v35, "Marking accessory reachable: %@", v37, 0xCu);
        sub_100095C84(v38, &unk_1002A6F60, &unk_10023C4E0);

        v30 = v36;
      }

      (*(v57 + 8))(v20, v58);
      v41 = type metadata accessor for TaskPriority();
      v42 = v56;
      (*(*(v41 - 8) + 56))(v56, 1, 1, v41);
      v43 = swift_allocObject();
      v43[2] = 0;
      v43[3] = 0;
      v43[4] = v30;
      sub_1001B6410(0, 0, v42, &unk_10023E968, v43);
    }

    else
    {
      v32(v55, v5 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_logger, v58);

      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = v23;
        v48 = v30;
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        *v49 = 138412290;
        v51 = *(a1 + 24);
        *(v49 + 4) = v51;
        *v50 = v51;
        v52 = v51;
        _os_log_impl(&_mh_execute_header, v45, v46, "Marking accessory un-reachable: %@", v49, 0xCu);
        sub_100095C84(v50, &unk_1002A6F60, &unk_10023C4E0);

        v30 = v48;
        v33 = v55;
        v23 = v47;
      }

      (*(v57 + 8))(v33, v58);
      sub_10014E6B8(a1);
    }
  }
}

uint64_t sub_10014EF2C()
{
  v1 = v0[15];
  v2 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateSession_msgFeedback;
  swift_beginAccess();
  sub_1000B5150(v1 + v2, (v0 + 2), &unk_1002A7380, &qword_10023E970);
  if (v0[5])
  {
    sub_1000A097C((v0 + 2), (v0 + 7));
    sub_100095C84((v0 + 2), &unk_1002A7380, &qword_10023E970);
    v3 = v0[10];
    v4 = v0[11];
    sub_1000A09E0(v0 + 7, v3);
    (*(v4 + 16))(1, v3, v4);
    sub_100095808(v0 + 7);
  }

  else
  {
    sub_100095C84((v0 + 2), &unk_1002A7380, &qword_10023E970);
  }

  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = sub_10014F084;
  v6 = v0[15];

  return sub_1000BBE5C();
}

uint64_t sub_10014F084()
{
  v1 = *(*v0 + 128);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10014F178(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_sessionLock;
  v5 = *&v1[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_sessionLock];

  os_unfair_lock_lock(v5 + 4);

  v6 = [a1 uuid];
  v7 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_activeSessions;
  swift_beginAccess();
  v8 = *&v2[v7];

  v9 = sub_1001A359C(v6, v8);

  v10 = *&v2[v4];

  os_unfair_lock_unlock(v10 + 4);

  if (v9)
  {

    v11 = type metadata accessor for Errors();
    sub_1001519DC(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    *v12 = 0xD00000000000001BLL;
    v12[1] = 0x80000001002334C0;
    (*(*(v11 - 8) + 104))(v12, enum case for Errors.AlreadyDone(_:), v11);
LABEL_3:
    swift_willThrow();
    return a1;
  }

  v13 = sub_10014FAE8(a1);
  if (!v13)
  {
    v23 = type metadata accessor for Errors();
    sub_1001519DC(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    v25 = v24;
    _StringGuts.grow(_:)(49);

    v26 = [a1 description];
    a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    v29._countAndFlagsBits = a1;
    v29._object = v28;
    String.append(_:)(v29);

    *v25 = 0xD00000000000002FLL;
    v25[1] = 0x8000000100233490;
    (*(*(v23 - 8) + 104))(v25, enum case for Errors.NotFound(_:), v23);
    goto LABEL_3;
  }

  v14 = v13;
  v15 = objc_allocWithZone(type metadata accessor for AccessoryFirmwareUpdateSession());

  v16 = a1;
  a1 = sub_1000BABD8(v14, v16, v2);
  v17 = *&v2[v4];

  os_unfair_lock_lock(v17 + 4);

  v18 = [v16 uuid];
  swift_beginAccess();
  v19 = *&v2[v7];
  if ((v19 & 0xC000000000000001) == 0)
  {
    v30 = *&v2[v7];
    v31 = a1;
    goto LABEL_13;
  }

  if (v19 < 0)
  {
    v20 = *&v2[v7];
  }

  else
  {
    v20 = v19 & 0xFFFFFFFFFFFFFF8;
  }

  v21 = a1;
  result = __CocoaDictionary.count.getter();
  if (!__OFADD__(result, 1))
  {
    *&v2[v7] = sub_1001517A8(v20, result + 1);
LABEL_13:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *&v2[v7];
    sub_1001EB6AC(a1, v18, isUniquelyReferenced_nonNull_native);
    *&v2[v7] = v34;

    swift_endAccess();
    v33 = *&v2[v4];

    os_unfair_lock_unlock(v33 + 4);

    return a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_10014F580(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v55 = *(v3 - 8);
  v4 = *(v55 + 64);
  v5 = __chkstk_darwin(v3);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v51 - v8;
  v10 = type metadata accessor for UUID();
  v54 = *(v10 - 8);
  v11 = *(v54 + 64);
  __chkstk_darwin(v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_registeredAccessories;
  swift_beginAccess();
  v15 = *(v1 + v14);

  v16 = sub_1001A34D4(a1, v15);

  if (v16)
  {
    return v16;
  }

  v51 = v13;
  v52 = v14;
  v53 = v10;
  v17 = a1;
  if (!*(a1 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_productGroup + 8))
  {
    v36 = v55;
    v18 = v7;
    (*(v55 + 16))(v7, v1 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_logger, v3);

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v39 = 138412290;
      v41 = *(v17 + 24);
      *(v39 + 4) = v41;
      *v40 = v41;
      v42 = v41;
      _os_log_impl(&_mh_execute_header, v37, v38, "Error reading product group for accessory %@, PG is nil", v39, 0xCu);
      sub_100095C84(v40, &unk_1002A6F60, &unk_10023C4E0);

LABEL_14:
    }

LABEL_15:

    (*(v36 + 8))(v18, v3);
    return 0;
  }

  v18 = v9;
  if (!*(a1 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_productNumber + 8))
  {
    v36 = v55;
    (*(v55 + 16))(v9, v1 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_logger, v3);

    v37 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v37, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v44 = 138412290;
      v46 = *(a1 + 24);
      *(v44 + 4) = v46;
      *v45 = v46;
      v47 = v46;
      _os_log_impl(&_mh_execute_header, v37, v43, "Error reading product number for accessory %@, PN is nil", v44, 0xCu);
      sub_100095C84(v45, &unk_1002A6F60, &unk_10023C4E0);

      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v19 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_productGroup);
  v20 = *(v17 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_productNumber);
  v21 = v17;
  v22 = *(v17 + 24);

  v23 = v22;
  v24 = v51;
  v55 = v1;
  DockCoreInfo.identifier.getter();

  v25 = objc_allocWithZone(UARPAccessory);
  v26 = String._bridgeToObjectiveC()();

  v27 = String._bridgeToObjectiveC()();

  v28.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  v29 = v55;
  isa = v28.super.isa;
  v16 = [v25 initWithProductGroup:v26 productNumber:v27 uuid:v28.super.isa];

  (*(v54 + 8))(v24, v53);
  v31 = v52;
  swift_beginAccess();
  v32 = *(v29 + v31);
  if ((v32 & 0xC000000000000001) == 0)
  {
    v48 = *(v29 + v31);
    v49 = v16;
    goto LABEL_17;
  }

  if (v32 < 0)
  {
    v33 = *(v29 + v31);
  }

  else
  {
    v33 = v32 & 0xFFFFFFFFFFFFFF8;
  }

  v34 = v16;
  result = __CocoaDictionary.count.getter();
  if (!__OFADD__(result, 1))
  {
    *(v29 + v31) = sub_10015154C(v33, result + 1);
LABEL_17:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v56 = *(v29 + v31);
    sub_1001EB550(v16, v21, isUniquelyReferenced_nonNull_native);
    *(v29 + v31) = v56;
    swift_endAccess();

    return v16;
  }

  __break(1u);
  return result;
}

uint64_t sub_10014FAE8(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_registeredAccessories;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v31 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
  }

  else
  {
    v8 = -1 << *(v4 + 32);
    v6 = ~v8;
    v5 = v4 + 64;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v4 + 64);
    v31 = v4;
  }

  v12 = 0;
  v13 = (v6 + 64) >> 6;
  v14 = v31;
  while ((v14 & 0x8000000000000000) != 0)
  {
    if (!__CocoaDictionary.Iterator.nextKey()())
    {
LABEL_30:
      v17 = 0;
LABEL_31:
      sub_1000C7084();
      return v17;
    }

    type metadata accessor for DaemonAccessory();
    swift_dynamicCast();
    v17 = v33;
    v32 = v7;
    if (!v33)
    {
      goto LABEL_31;
    }

LABEL_19:
    v18 = *(v2 + v3);
    if ((v18 & 0xC000000000000001) != 0)
    {
      if (v18 < 0)
      {
        v19 = *(v2 + v3);
      }

      v20 = *(v2 + v3);

      v21 = __CocoaDictionary.lookup(_:)();

      if (!v21)
      {
        goto LABEL_9;
      }

      sub_100095B94(0, &qword_1002A7398, UARPAccessory_ptr);
      swift_dynamicCast();
      v22 = v33;
      if (!v33)
      {
        goto LABEL_9;
      }

LABEL_28:
      sub_100095B94(0, &qword_1002A7398, UARPAccessory_ptr);
      v26 = v3;
      v27 = v2;
      v28 = a1;
      v29 = static NSObject.== infix(_:_:)();

      v2 = v27;
      v3 = v26;
      v14 = v31;

      if (v29)
      {
        goto LABEL_31;
      }

      goto LABEL_9;
    }

    if (*(v18 + 16))
    {
      v23 = *(v2 + v3);

      v24 = sub_10016D780(v17);
      if ((v25 & 1) == 0)
      {

        goto LABEL_9;
      }

      v22 = *(*(v18 + 56) + 8 * v24);

      if (v22)
      {
        goto LABEL_28;
      }
    }

LABEL_9:

    v7 = v32;
  }

  v15 = v12;
  v16 = v7;
  if (v7)
  {
LABEL_15:
    v32 = (v16 - 1) & v16;
    v17 = *(*(v14 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v16)))));

    if (!v17)
    {
      goto LABEL_31;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v12 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v12 >= v13)
    {
      goto LABEL_30;
    }

    v16 = *(v5 + 8 * v12);
    ++v15;
    if (v16)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_10014FDEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v82 = a4;
  v77 = a2;
  v76 = a1;
  v5 = sub_100095274(&qword_1002A6B70, &unk_10023C9C0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v75 = &v67 - v7;
  v70 = type metadata accessor for Logger();
  v81 = *(v70 - 8);
  v8 = *(v81 + 64);
  __chkstk_darwin(v70);
  v80 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL.DirectoryHint();
  v11 = *(v10 - 8);
  v12 = v11[8];
  __chkstk_darwin(v10);
  v14 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v79 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = &v67 - v21;
  __chkstk_darwin(v20);
  v24 = &v67 - v23;
  v25 = [objc_opt_self() defaultManager];
  static URL.temporaryDirectory.getter();
  v87[0] = a3;
  v87[1] = v82;
  v26 = v11[13];
  v72 = v11 + 13;
  v71 = v26;
  v26(v14, enum case for URL.DirectoryHint.isDirectory(_:), v10);
  sub_1000E3C10();
  URL.appending<A>(component:directoryHint:)();
  v28 = v11[1];
  countAndFlagsBits = v11 + 1;
  v73 = v14;
  v74 = v10;
  v28(v14, v10);
  v29 = *(v16 + 40);
  v82 = v15;
  v29(v24, v22, v15);
  v85 = 0;
  URL.path(percentEncoded:)(1);
  v30 = String._bridgeToObjectiveC()();

  LOBYTE(v22) = [v25 fileExistsAtPath:v30 isDirectory:&v85];

  if ((v22 & 1) == 0)
  {
    v67 = v25;
    v68 = v16;
    sub_100095274(&qword_1002A7B20, &unk_10023E940);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10023C170;
    *(inited + 32) = NSFilePosixPermissions;
    *(inited + 40) = 457;
    v32 = NSFilePosixPermissions;
    v33 = sub_1001F237C(inited);
    swift_setDeallocating();
    sub_100095C84(inited + 32, &qword_1002A7B28, &qword_10023CA00);
    v34 = v70;
    (*(v81 + 16))(v80, v69 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_logger, v70);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      countAndFlagsBits = swift_slowAlloc();
      v87[0] = countAndFlagsBits;
      *v37 = 136315138;
      swift_beginAccess();
      v38 = URL.path.getter();
      v40 = sub_1000952D4(v38, v39, v87);

      *(v37 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v35, v36, "creating firmware directory ar %s", v37, 0xCu);
      sub_100095808(countAndFlagsBits);
    }

    (*(v81 + 8))(v80, v34);
    swift_beginAccess();
    URL._bridgeToObjectiveC()(v41);
    v43 = v42;
    sub_1001DAF74(v33);

    type metadata accessor for FileAttributeKey(0);
    sub_1001519DC(&qword_1002A6D80, type metadata accessor for FileAttributeKey);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v86[0] = 0;
    v25 = v67;
    v45 = [v67 createDirectoryAtURL:v43 withIntermediateDirectories:1 attributes:isa error:v86];

    v16 = v68;
    if (!v45)
    {
      v60 = v86[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
LABEL_14:
      (*(v16 + 8))(v24, v82);
      return countAndFlagsBits;
    }

    v46 = v86[0];
  }

  swift_beginAccess();
  v47 = URL.path(percentEncoded:)(1);
  v84[0] = 0xD000000000000010;
  v84[1] = 0x8000000100233470;
  v83 = v47;
  v83._countAndFlagsBits = String.init<A>(_:)();
  v83._object = v48;
  String.append<A>(contentsOf:)();
  countAndFlagsBits = v83._countAndFlagsBits;
  v49 = String._bridgeToObjectiveC()();
  v50 = [v25 fileExistsAtPath:v49];

  v51 = v25;
  v52 = v79;
  if (!v50)
  {
    goto LABEL_9;
  }

  v53 = String._bridgeToObjectiveC()();
  v84[0] = 0;
  v54 = [v25 removeItemAtPath:v53 error:v84];

  if (!v54)
  {
    countAndFlagsBits = v84[0];

    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_14;
  }

  v55 = v84[0];
LABEL_9:
  (*(v16 + 56))(v75, 1, 1, v82);
  v71(v73, enum case for URL.DirectoryHint.inferFromPath(_:), v74);

  URL.init(filePath:directoryHint:relativeTo:)();
  v56 = v78;
  v57 = Data.init(contentsOf:options:)();
  if (v56)
  {
    v59 = *(v16 + 8);
    countAndFlagsBits = v82;
    v59(v52, v82);

    v59(v24, countAndFlagsBits);
  }

  else
  {
    v81 = *(v16 + 8);
    v80 = v57;
    v61 = v52;
    v62 = v58;
    (v81)(v61, v82);
    v63 = String._bridgeToObjectiveC()();
    v64 = v51;
    v65 = Data._bridgeToObjectiveC()().super.isa;
    [v64 createFileAtPath:v63 contents:v65 attributes:0];

    sub_1000A0D2C(v80, v62);
    (v81)(v24, v82);
  }

  return countAndFlagsBits;
}

uint64_t sub_10015079C(uint64_t a1, void *a2)
{
  v84._object = a2;
  v84._countAndFlagsBits = a1;
  v2 = type metadata accessor for Logger();
  v87 = *(v2 - 8);
  v88 = v2;
  v3 = *(v87 + 64);
  v4 = __chkstk_darwin(v2);
  v77 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v85 = &v75 - v6;
  v83 = type metadata accessor for UUID();
  v82 = *(v83 - 8);
  v7 = *(v82 + 64);
  __chkstk_darwin(v83);
  v81 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for Date();
  v79 = *(v80 - 8);
  v9 = *(v79 + 64);
  __chkstk_darwin(v80);
  v78 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for URL.DirectoryHint();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  v18 = *(v17 + 8);
  v19 = __chkstk_darwin(v16);
  v21 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v75 - v22;
  v24 = [objc_opt_self() defaultManager];
  v25 = [v24 URLsForDirectory:13 inDomains:1];
  v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v26 + 16))
  {

    return 0;
  }

  (*(v17 + 2))(v21, v26 + ((v17[80] + 32) & ~v17[80]), v16);

  (*(v17 + 4))(v23, v21, v16);
  (*(v12 + 104))(v15, enum case for URL.DirectoryHint.isDirectory(_:), v11);
  sub_1000E3C10();
  URL.append<A>(components:directoryHint:)();
  (*(v12 + 8))(v15, v11);
  v89 = 0;
  URL.path(percentEncoded:)(1);
  v27 = String._bridgeToObjectiveC()();

  v28 = [v24 fileExistsAtPath:v27 isDirectory:&v89];

  v29 = v88;
  if (v28)
  {
    goto LABEL_5;
  }

  sub_100095274(&qword_1002A7B20, &unk_10023E940);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10023C170;
  *(inited + 32) = NSFilePosixPermissions;
  *(inited + 40) = 448;
  v31 = NSFilePosixPermissions;
  v32 = sub_1001F237C(inited);
  swift_setDeallocating();
  sub_100095C84(inited + 32, &qword_1002A7B28, &qword_10023CA00);
  URL._bridgeToObjectiveC()(v33);
  v35 = v34;
  sub_1001DAF74(v32);

  type metadata accessor for FileAttributeKey(0);
  sub_1001519DC(&qword_1002A6D80, type metadata accessor for FileAttributeKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v91 = 0;
  v37 = [v24 createDirectoryAtURL:v35 withIntermediateDirectories:1 attributes:isa error:&v91];

  if (!v37)
  {
    v61 = v23;
    v62 = v91;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v63 = v87;
    v64 = v77;
    (*(v87 + 16))(v77, v86 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_logger, v29);
    swift_errorRetain();
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v75 = v16;
      v76 = v24;
      v68 = v67;
      v90._countAndFlagsBits = swift_slowAlloc();
      *v68 = 136315394;
      v69 = v61;
      swift_beginAccess();
      v70 = URL.path(percentEncoded:)(1);
      v71 = sub_1000952D4(v70._countAndFlagsBits, v70._object, &v90._countAndFlagsBits);

      *(v68 + 4) = v71;
      *(v68 + 12) = 2080;
      swift_getErrorValue();
      v72 = Error.localizedDescription.getter();
      v74 = sub_1000952D4(v72, v73, &v90._countAndFlagsBits);

      *(v68 + 14) = v74;
      _os_log_impl(&_mh_execute_header, v65, v66, "Unable to create file storage directory %s: %s", v68, 0x16u);
      swift_arrayDestroy();

      (*(v63 + 8))(v77, v88);
      (*(v17 + 1))(v69, v75);
    }

    else
    {

      (*(v63 + 8))(v64, v88);
      (*(v17 + 1))(v61, v16);
    }

    return 0;
  }

  v38 = v91;
LABEL_5:
  v76 = v24;
  v77 = v17;
  v75 = v16;
  v39 = URL.path(percentEncoded:)(1);
  v91 = 0;
  v92 = 0xE000000000000000;
  _StringGuts.grow(_:)(16);

  v91 = 0x6574616470557766;
  v92 = 0xE90000000000005FLL;
  v40 = v78;
  Date.init()();
  v41 = Date.description.getter();
  v43 = v42;
  (*(v79 + 8))(v40, v80);
  v44._countAndFlagsBits = v41;
  v44._object = v43;
  String.append(_:)(v44);

  v45._countAndFlagsBits = 95;
  v45._object = 0xE100000000000000;
  String.append(_:)(v45);
  v46 = v81;
  UUID.init()();
  sub_1001519DC(&unk_1002A6F90, &type metadata accessor for UUID);
  v47 = v83;
  v48._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v48);

  (*(v82 + 8))(v46, v47);
  String.append(_:)(v84);
  v90 = v39;
  v90._countAndFlagsBits = String.init<A>(_:)();
  v90._object = v49;
  String.append<A>(contentsOf:)();

  countAndFlagsBits = v90._countAndFlagsBits;
  object = v90._object;
  v52 = v87;
  v53 = v85;
  (*(v87 + 16))(v85, v86 + OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_logger, v29);

  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = v23;
    v58 = v29;
    v59 = swift_slowAlloc();
    v91 = v59;
    *v56 = 136315138;
    *(v56 + 4) = sub_1000952D4(countAndFlagsBits, object, &v91);
    _os_log_impl(&_mh_execute_header, v54, v55, "packet capture file at %s", v56, 0xCu);
    sub_100095808(v59);

    (*(v52 + 8))(v53, v58);
    (*(v77 + 1))(v57, v75);
  }

  else
  {

    (*(v52 + 8))(v53, v29);
    (*(v77 + 1))(v23, v75);
  }

  return countAndFlagsBits;
}

id sub_100151330()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccessoryFirmwareUpdateManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AccessoryFirmwareUpdateManager()
{
  result = qword_1002A9A60;
  if (!qword_1002A9A60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100151478()
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

Swift::Int sub_10015154C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100095274(&unk_1002A9A70, &unk_100240120);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v18 = v2;
    __CocoaDictionary.makeIterator()();
    if (__CocoaDictionary.Iterator.next()())
    {
      type metadata accessor for DaemonAccessory();
      do
      {
        swift_dynamicCast();
        sub_100095B94(0, &qword_1002A7398, UARPAccessory_ptr);
        swift_dynamicCast();
        v11 = *(v2 + 16);
        if (*(v2 + 24) <= v11)
        {
          sub_1001E5CF4(v11 + 1, 1);
        }

        v2 = v18;
        v3 = *(v18 + 40);
        Hasher.init(_seed:)();
        v4 = *(v17 + 24);
        NSObject.hash(into:)();

        result = Hasher._finalize()();
        v6 = v18 + 64;
        v7 = -1 << *(v18 + 32);
        v8 = result & ~v7;
        v9 = v8 >> 6;
        if (((-1 << v8) & ~*(v18 + 64 + 8 * (v8 >> 6))) != 0)
        {
          v10 = __clz(__rbit64((-1 << v8) & ~*(v18 + 64 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v12 = 0;
          v13 = (63 - v7) >> 6;
          do
          {
            if (++v9 == v13 && (v12 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v14 = v9 == v13;
            if (v9 == v13)
            {
              v9 = 0;
            }

            v12 |= v14;
            v15 = *(v6 + 8 * v9);
          }

          while (v15 == -1);
          v10 = __clz(__rbit64(~v15)) + (v9 << 6);
        }

        *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
        *(*(v18 + 48) + 8 * v10) = v17;
        *(*(v18 + 56) + 8 * v10) = v16;
        ++*(v18 + 16);
      }

      while (__CocoaDictionary.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

Swift::Int sub_1001517A8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100095274(&qword_1002A9A80, &unk_10023E950);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_100095B94(0, &qword_1002A9A88, NSUUID_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        type metadata accessor for AccessoryFirmwareUpdateSession();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1001E5F94(v12 + 1, 1);
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

uint64_t sub_1001519DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100151A24()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100151A64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10009862C;

  return sub_10014EF0C(a1, v4, v5, v6);
}

uint64_t sub_100151B18(uint64_t a1, uint64_t a2)
{
  v4 = sub_100095274(&unk_1002A7380, &qword_10023E970);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_100151B88()
{
  v0 = type metadata accessor for FileSystem();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  Logger.init(subsystem:category:)();
  v4 = OBJC_IVAR____TtC14dockaccessoryd10FileSystem_cachePath;
  v5 = type metadata accessor for URL();
  v6 = *(*(v5 - 8) + 56);
  v6(v3 + v4, 1, 1, v5);
  v6(v3 + OBJC_IVAR____TtC14dockaccessoryd10FileSystem_libraryPath, 1, 1, v5);
  result = [objc_opt_self() defaultManager];
  *(v3 + OBJC_IVAR____TtC14dockaccessoryd10FileSystem_system) = result;
  qword_1002B1C20 = v3;
  return result;
}

id sub_100151CB0()
{
  v1 = type metadata accessor for URL.DirectoryHint();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v23[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v23[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v9);
  v13 = &v23[-v12 - 8];
  v22 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd10FileSystem_system);
  v14 = [v22 URLsForDirectory:5 inDomains:1];
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v15 + 16))
  {
    (*(v7 + 16))(v11, v15 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);

    (*(v7 + 32))(v13, v11, v6);
    strcpy(v23, "dockaccessoryd");
    v23[15] = -18;
    (*(v2 + 104))(v5, enum case for URL.DirectoryHint.isDirectory(_:), v1);
    sub_1000E3C10();
    URL.append<A>(component:directoryHint:)();
    (*(v2 + 8))(v5, v1);
    v23[0] = 0;
    URL.path(percentEncoded:)(1);
    v16 = String._bridgeToObjectiveC()();

    v17 = [v22 fileExistsAtPath:v16 isDirectory:v23];

    (*(v7 + 8))(v13, v6);
  }

  else
  {

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Unable to locate Library directory!", v20, 2u);
    }

    return 0;
  }

  return v17;
}

uint64_t sub_100152034@<X0>(uint64_t a1@<X8>)
{

  return sub_10015210C(&OBJC_IVAR____TtC14dockaccessoryd10FileSystem_libraryPath, 5, "Unable to locate Library directory!", a1);
}

uint64_t sub_1001520A0@<X0>(uint64_t a1@<X8>)
{

  return sub_10015210C(&OBJC_IVAR____TtC14dockaccessoryd10FileSystem_cachePath, 13, "Unable to locate Caches directory!", a1);
}

uint64_t sub_10015210C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X8>)
{
  v62 = a3;
  v68 = a2;
  v66 = type metadata accessor for URL.DirectoryHint();
  v65 = *(v66 - 8);
  v7 = *(v65 + 64);
  (__chkstk_darwin)();
  v64 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = (__chkstk_darwin)();
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v67 = &v59 - v15;
  v16 = sub_100095274(&qword_1002A6B70, &unk_10023C9C0);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v63 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v59 - v20;
  v22 = *a1;
  swift_beginAccess();
  sub_1000E48A4(v4 + v22, v21);
  v69 = v10;
  LODWORD(a1) = (*(v10 + 48))(v21, 1, v9);
  sub_100095C84(v21, &qword_1002A6B70, &unk_10023C9C0);
  if (a1 != 1)
  {
    return sub_1000E48A4(v4 + v22, a4);
  }

  v60 = v22;
  v61 = a4;
  v23 = *(v4 + OBJC_IVAR____TtC14dockaccessoryd10FileSystem_system);
  v24 = [v23 URLsForDirectory:v68 inDomains:1];
  v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v25 + 16))
  {
    v68 = v4;
    v26 = v9;
    v27 = v69;
    v28 = *(v69 + 16);
    v28(v14, v25 + ((*(v69 + 80) + 32) & ~*(v69 + 80)), v26);

    v29 = v67;
    (*(v27 + 32))(v67, v14, v26);
    strcpy(v71, "dockaccessoryd");
    HIBYTE(v71[1]) = -18;
    v30 = v65;
    v31 = v64;
    v32 = v66;
    (*(v65 + 104))(v64, enum case for URL.DirectoryHint.isDirectory(_:), v66);
    sub_1000E3C10();
    URL.append<A>(component:directoryHint:)();
    (*(v30 + 8))(v31, v32);
    v70 = 0;
    URL.path(percentEncoded:)(1);
    v33 = String._bridgeToObjectiveC()();

    LOBYTE(v32) = [v23 fileExistsAtPath:v33 isDirectory:&v70];

    if (v32)
    {
LABEL_6:
      v44 = v63;
      v28(v63, v29, v26);
      (*(v27 + 56))(v44, 0, 1, v26);
      v4 = v68;
      v22 = v60;
      swift_beginAccess();
      sub_1000E4914(v44, v4 + v22);
      swift_endAccess();
      (*(v27 + 8))(v29, v26);
      a4 = v61;
      return sub_1000E48A4(v4 + v22, a4);
    }

    v34 = v26;
    sub_100095274(&qword_1002A7B20, &unk_10023E940);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10023C170;
    *(inited + 32) = NSFilePosixPermissions;
    *(inited + 40) = 448;
    v36 = NSFilePosixPermissions;
    v37 = sub_1001F237C(inited);
    swift_setDeallocating();
    sub_100095C84(inited + 32, &qword_1002A7B28, &qword_10023CA00);
    URL._bridgeToObjectiveC()(v38);
    v40 = v39;
    sub_1001DAF74(v37);

    type metadata accessor for FileAttributeKey(0);
    sub_100152B9C();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v71[0] = 0;
    v42 = [v23 createDirectoryAtURL:v40 withIntermediateDirectories:1 attributes:isa error:v71];

    if (v42)
    {
      v43 = v71[0];
      v26 = v34;
      goto LABEL_6;
    }

    v49 = v71[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *v52 = 136315394;
      swift_beginAccess();
      v53 = URL.path(percentEncoded:)(1);
      v54 = sub_1000952D4(v53._countAndFlagsBits, v53._object, &v72);

      *(v52 + 4) = v54;
      *(v52 + 12) = 2080;
      swift_getErrorValue();
      v55 = Error.localizedDescription.getter();
      v57 = sub_1000952D4(v55, v56, &v72);

      *(v52 + 14) = v57;
      _os_log_impl(&_mh_execute_header, v50, v51, "Unable to create file storage directory %s: %s", v52, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v58 = v69;
    (*(v69 + 56))(v61, 1, 1, v34);
    return (*(v58 + 8))(v29, v34);
  }

  else
  {

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, v62, v48, 2u);
    }

    return (*(v69 + 56))(v61, 1, 1, v9);
  }
}

uint64_t sub_100152978()
{
  v1 = OBJC_IVAR____TtC14dockaccessoryd10FileSystem_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100095C84(v0 + OBJC_IVAR____TtC14dockaccessoryd10FileSystem_cachePath, &qword_1002A6B70, &unk_10023C9C0);
  sub_100095C84(v0 + OBJC_IVAR____TtC14dockaccessoryd10FileSystem_libraryPath, &qword_1002A6B70, &unk_10023C9C0);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FileSystem()
{
  result = qword_1002A9AD0;
  if (!qword_1002A9AD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100152AC0()
{
  v0 = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1000DE918();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_100152B9C()
{
  result = qword_1002A6D80;
  if (!qword_1002A6D80)
  {
    type metadata accessor for FileAttributeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A6D80);
  }

  return result;
}

uint64_t sub_100152BF4()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = __chkstk_darwin(v2);
  v6 = __chkstk_darwin(v5);
  v8 = &v35 - v7;
  __chkstk_darwin(v6);
  v10 = &v35 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100095274(&qword_1002A7AF0, &qword_10023C9D0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v35 - v18;
  UUID.init(uuidString:)();
  result = (*(v12 + 48))(v19, 1, v11);
  if (result == 1)
  {
    goto LABEL_17;
  }

  v21 = objc_allocWithZone(type metadata accessor for DockCoreInfo());
  v22 = DockCoreInfo.init(type:name:identifier:)();
  DockCoreInfo.identifier.getter();

  v23 = objc_allocWithZone(type metadata accessor for AccessoryDescriptionParser());
  v24 = sub_1001E2F8C(v15);
  v25 = sub_1001E31B4();

  if (!(v25 >> 62))
  {
    result = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
  }

LABEL_4:
  if ((v25 & 0xC000000000000001) != 0)
  {
    v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_7;
  }

  if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  v26 = *(v25 + 32);
LABEL_7:
  v37 = v26;

  v27 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger;
  v36 = v3[2];
  v36(v10, v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v2);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "adding debug mock", v30, 2u);
  }

  v31 = v3[1];
  v31(v10, v2);

  v36(v8, v1 + v27, v2);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "Failed retrieving mock accessory", v34, 2u);
  }

  return (v31)(v8, v2);
}

uint64_t sub_10015319C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v6 = result;
  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  else
  {
    if (v8)
    {
      v9 = a2 >> 32;
    }

    else
    {
      v9 = BYTE6(a3);
    }

    if (v8)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = sub_1001AC908(v10, v9, a2, a3);
  if (v6 && v11 < v6)
  {
    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_28;
      }

      v12 = a2 >> 32;
      goto LABEL_26;
    }

    if (v8 != 2)
    {
      goto LABEL_28;
    }

    v12 = *(a2 + 24);
LABEL_24:
    result = *(a2 + 16);
    goto LABEL_27;
  }

  v12 = sub_1001AC8A4(v10, v6, a2, a3);
  result = 0;
  if (v8 > 1)
  {
    if (v8 != 3)
    {
      goto LABEL_24;
    }
  }

  else if (v8)
  {
LABEL_26:
    result = a2;
  }

LABEL_27:
  if (v12 >= result)
  {
LABEL_28:
    v13 = Data._Representation.subscript.getter();
    v15 = v14;
    result = sub_1000A0D2C(a2, a3);
    *a4 = v13;
    a4[1] = v15;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

void sub_100153394(uint64_t a1, int a2, void *a3)
{
  v5 = objc_opt_self();
  sub_100095274(&unk_1002A73A0, &qword_10023C670);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10023C170;
  *(v6 + 56) = &type metadata for UInt32;
  *(v6 + 64) = &protocol witness table for UInt32;
  *(v6 + 32) = a2;
  String.init(format:_:)();
  v7 = String._bridgeToObjectiveC()();

  v8 = [v5 UUIDWithString:v7];

  *a3 = v8;
}

id sub_100153470(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = __chkstk_darwin(v6);
  v11 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v82 = &v73 - v13;
  __chkstk_darwin(v12);
  v15 = &v73 - v14;
  v16 = v7[2];
  v83 = OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger;
  v84 = v16;
  v85 = v7 + 2;
  v16(&v73 - v14, v3 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger, v6);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Accessory requested setup password.", v19, 2u);
  }

  v22 = v7[1];
  v21 = v7 + 1;
  v20 = v22;
  result = (v22)(v15, v6);
  if (a2 != 1)
  {
    return result;
  }

  v24 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_manager);
  if (!v24)
  {
    v89 = 0;
    v87 = 0u;
    v88 = 0u;
    goto LABEL_29;
  }

  if (!a1)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v80 = v3;
  v79 = v11;
  v81 = v20;
  v25 = v24;
  result = [a1 identifier];
  if (!result)
  {
LABEL_48:
    __break(1u);
    return result;
  }

  v26 = result;
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  v77 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
  v30 = *&v25[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
  OS_dispatch_semaphore.wait()();

  v31 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
  swift_beginAccess();
  v78 = v25;
  v32 = *&v25[v31];
  v33 = *(v32 + 16);
  v76 = a1;
  v75 = v21;
  if (!v33)
  {
LABEL_22:
    v45 = v78;
    v46 = *&v78[v77];
    OS_dispatch_semaphore.signal()();

    v89 = 0;
    v87 = 0u;
    v88 = 0u;

    goto LABEL_25;
  }

  v74 = v6;
  v34 = v32 + 32;

  v35 = 0;
  while (1)
  {
    if (v35 >= *(v32 + 16))
    {
      __break(1u);
    }

    sub_1000A097C(v34, v86);
    v36 = *(*sub_1000A09E0(v86, v86[3]) + 32);
    if (!v36)
    {
      goto LABEL_10;
    }

    v37 = v36;
    v38 = [v37 identifier];
    if (v38)
    {
      break;
    }

LABEL_9:

LABEL_10:
    ++v35;
    sub_100095808(v86);
    v34 += 40;
    if (v33 == v35)
    {

      a1 = v76;
      v6 = v74;
      goto LABEL_22;
    }
  }

  v39 = v38;
  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;

  if (v40 != v27 || v42 != v29)
  {
    v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v44)
    {
      goto LABEL_24;
    }

    goto LABEL_9;
  }

LABEL_24:

  v47 = v78;
  v48 = *&v78[v77];
  OS_dispatch_semaphore.signal()();

  sub_1000A097C(v86, &v87);
  sub_100095808(v86);

  a1 = v76;
  v6 = v74;
LABEL_25:
  v3 = v80;
  v20 = v81;
  v11 = v79;
  if (!*(&v88 + 1))
  {
LABEL_29:
    sub_100095C84(&v87, &unk_1002A6F40, &unk_10023BE90);
LABEL_30:
    v84(v11, v3 + v83, v6);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&_mh_execute_header, v57, v58, "No setup code available for pairing!", v59, 2u);
    }

    result = (v20)(v11, v6);
    if (a1)
    {
      *&v87 = 0;
      v60 = [a1 stopPairingWithError:&v87];
      v61 = v87;
      if (v60)
      {

        return v61;
      }

      else
      {
        v85 = v87;
        v62 = v87;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }
    }

    __break(1u);
    goto LABEL_47;
  }

  sub_100095274(&unk_1002A7A90, &unk_10023C960);
  type metadata accessor for DaemonAccessory();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_30;
  }

  v49 = v86[0];
  v50 = *(v86[0] + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_setupPayload);
  v51 = *(v86[0] + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_setupPayload + 8);
  v53 = *(v86[0] + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_setupPayload + 16);
  v52 = *(v86[0] + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_setupPayload + 24);
  v55 = *(v86[0] + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_setupPayload + 32);
  v54 = *(v86[0] + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_setupPayload + 40);
  v56 = *(v86[0] + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_setupPayload + 48);
  sub_1001693B8(v50, v51, v53, v52, v55, v54, v56, sub_1000A0CD8);
  if (v52 == 2)
  {

    sub_1001693B8(v50, v51, v53, v52, v55, v54, v56, sub_1000A0D2C);
    a1 = v76;
    v20 = v81;
    v11 = v79;
    v3 = v80;
    goto LABEL_30;
  }

  v79 = v49;
  sub_1000A0CD8(v51, v53);
  sub_1001693B8(v50, v51, v53, v52, v55, v54, v56, sub_1000A0D2C);
  v63 = v82;
  v84(v82, v80 + v83, v6);
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.info.getter();
  v66 = os_log_type_enabled(v64, v65);
  v67 = v76;
  if (v66)
  {
    v68 = swift_slowAlloc();
    *v68 = 0;
    _os_log_impl(&_mh_execute_header, v64, v65, "Using setup code from setup payload.", v68, 2u);
  }

  v81(v63, v6);
  isa = Data._bridgeToObjectiveC()().super.isa;
  *&v87 = 0;
  v70 = [v67 tryPairingPassword:isa error:&v87];

  if (v70)
  {
    v71 = v87;
    sub_1000A0D2C(v51, v53);
  }

  else
  {
    v72 = v87;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_1000A0D2C(v51, v53);
  }
}

uint64_t sub_100153E88(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v44 = a1;
  v3 = type metadata accessor for DKPairingMetric();
  v46 = *(v3 - 8);
  v47 = v3;
  v4 = *(v46 + 64);
  __chkstk_darwin(v3);
  v45 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v12 + 16);
  v48 = v2;
  v16(v15, v2 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger, v11);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Sending pairing metrics...", v19, 2u);
  }

  (*(v12 + 8))(v15, v11);
  v20 = OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_pairingInterval;
  if (*(v48 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_pairingInterval) > 0.0)
  {
    static Date.now.getter();
    Date.timeIntervalSince1970.getter();
    v22 = v21;
    (*(v7 + 8))(v10, v6);
    v23 = v22 - *(v48 + v20);
  }

  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v24 = qword_1002B1CF0;
  v25 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v26 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v26 + 4);

  v27 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_accessories;
  swift_beginAccess();
  v28 = *(v24 + v27);
  v29 = *(v24 + v25);

  os_unfair_lock_unlock(v29 + 4);

  v43 = v20;
  if (v28 >> 62)
  {
    v41 = _CocoaArrayWrapper.endIndex.getter();

    if (v41 < 0)
    {
      __break(1u);
      return result;
    }
  }

  else
  {
    v30 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v31 = v44;
  if (v42)
  {
    swift_getErrorValue();
    v44 = Error.localizedDescription.getter();
  }

  else
  {
    v44 = 0;
  }

  if (v31)
  {
    v32 = [v31 firmwareVersion];
    if (v32)
    {
      v33 = v32;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v34 = [v31 model];
    if (v34)
    {
      v35 = v34;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v36 = [v31 manufacturer];
    if (v36)
    {
      v37 = v36;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }
  }

  v38 = v43;
  v39 = v45;
  DKPairingMetric.init(activePairings:duration:error:firmwareVersion:hardwareVersion:hardwareMake:)();
  DKPairingMetric.send()();
  result = (*(v46 + 8))(v39, v47);
  *(v48 + v38) = 0xBFF0000000000000;
  return result;
}

void sub_1001543AC(id a1, uint64_t a2)
{
  v4 = v2;
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v203 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = __chkstk_darwin(v11);
  v15 = __chkstk_darwin(v14);
  v16 = __chkstk_darwin(v15);
  __chkstk_darwin(v16);
  v21 = &v203 - v17;
  if (!a2)
  {
    v48 = *&v4[OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_manager];
    if (v48)
    {
      v210 = v19;
      v212 = v4;
      if (a1)
      {
        v204 = v10;
        v208 = OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_manager;
        v205 = v18;
        v209 = v11;
        v49 = v48;
        v50 = [a1 identifier];
        if (v50)
        {
          v51 = v50;
          v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v54 = v53;

          v206 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
          v55 = *&v49[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
          OS_dispatch_semaphore.wait()();

          v56 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
          swift_beginAccess();
          v207 = v49;
          v57 = *&v49[v56];
          v58 = *(v57 + 16);
          if (v58)
          {
            v211 = a1;
            *&v213 = v12;
            v59 = v57 + 32;

            v60 = 0;
            while (v60 < *(v57 + 16))
            {
              sub_1000A097C(v59, v216);
              v61 = *(*sub_1000A09E0(v216, v216[3]) + 32);
              if (v61)
              {
                v62 = v61;
                v63 = [v62 identifier];
                if (v63)
                {
                  v64 = v63;
                  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v56 = v65;

                  if (v3 == v52 && v56 == v54)
                  {

LABEL_39:

                    v77 = v207;
                    v78 = *(v207 + v206);
                    OS_dispatch_semaphore.signal()();

                    sub_1000A097C(v216, &v217);
                    sub_100095808(v216);

                    v71 = v209;
                    v12 = v213;
                    a1 = v211;
                    goto LABEL_40;
                  }

                  v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v67)
                  {
                    goto LABEL_39;
                  }
                }
              }

              ++v60;
              sub_100095808(v216);
              v59 += 40;
              if (v58 == v60)
              {

                v12 = v213;
                a1 = v211;
                goto LABEL_33;
              }
            }

            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
            goto LABEL_99;
          }

LABEL_33:
          v69 = v207;
          v70 = *(v207 + v206);
          OS_dispatch_semaphore.signal()();

          v219 = 0;
          v218 = 0u;
          v217 = 0u;

          v71 = v209;
LABEL_40:
          v79 = v208;
          if (*(&v218 + 1))
          {
            sub_1000A0D80(&v217, &v220);
            sub_1000A097C(&v220, &v217);
            sub_100095274(&unk_1002A7A90, &unk_10023C960);
            type metadata accessor for DaemonAccessory();
            if (swift_dynamicCast())
            {
              *(v216[0] + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_paired) = 1;

              v80 = v212;
              v81 = *&v79[v212];
              if (!v81)
              {
                goto LABEL_56;
              }
            }

            else
            {
              v82 = *(*sub_1000A09E0(&v220, v221) + 24);
              DockCoreInfo.type.getter();

              v83 = [a1 primaryAccessory];
              if (v83 && (v84 = v83, v85 = [v83 name], v84, v85))
              {
                static String._unconditionallyBridgeFromObjectiveC(_:)();
              }

              else
              {
                v85 = *(*sub_1000A09E0(&v220, v221) + 24);
                DockCoreInfo.name.getter();
              }

              v86 = *(*sub_1000A09E0(&v220, v221) + 24);
              DockCoreInfo.identifier.getter();

              v87 = objc_allocWithZone(type metadata accessor for DockCoreInfo());
              v88 = DockCoreInfo.init(type:name:identifier:)();
              if (qword_1002A6780 != -1)
              {
                swift_once();
              }

              v89 = objc_allocWithZone(type metadata accessor for DockCoreAccessory());
              v90 = v88;
              v91 = DockCoreAccessory.init(info:systems:)();
              v92 = sub_10018F07C(v91, 0);

              v80 = v212;
              v81 = *&v79[v212];
              if (!v81)
              {
                goto LABEL_56;
              }
            }

            v93 = v12;
            v94 = v81;
            v95 = a1;
            v96 = [a1 identifier];
            if (!v96)
            {
LABEL_103:
              __break(1u);
              goto LABEL_104;
            }

            v97 = v96;
            v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v100 = v99;

            v101 = sub_1001F29A8(_swiftEmptyArrayStorage);
            if (*&v94[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_proxCard])
            {
              v94[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingState] = 6;
              v102 = *&v94[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_server];
              sub_100156798(v98, v100, 3, v101, 0);
            }

            v12 = v93;
            v80 = v212;
            a1 = v95;
LABEL_56:
            v104 = (v12 + 2);
            v103 = v12[2];
            v207 = OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger;
            v208 = v103;
            (v103)(v210, &v80[OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger], v71);
            v105 = Logger.logObject.getter();
            v106 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v105, v106))
            {
              v107 = swift_slowAlloc();
              *v107 = 0;
              _os_log_impl(&_mh_execute_header, v105, v106, "Pair key exchange completed.", v107, 2u);
            }

            v109 = v12[1];
            v108 = v12 + 1;
            v110 = v210;
            v210 = v109;
            v109(v110, v71);
            v111 = v212;
            v112 = *&v79[v212];
            if (!v112)
            {
LABEL_86:
              v146 = *(*sub_1000A09E0(&v220, v221) + 32);
              if (v146)
              {
                objc_opt_self();
                v147 = swift_dynamicCastObjCClass();
                if (v147)
                {
                  v212 = v147;
                  (v208)(v205, &v111[v207], v71);
                  v211 = v146;
                  v148 = Logger.logObject.getter();
                  v149 = static os_log_type_t.info.getter();
                  if (os_log_type_enabled(v148, v149))
                  {
                    v150 = swift_slowAlloc();
                    *v150 = 0;
                    _os_log_impl(&_mh_execute_header, v148, v149, "Initiating characteristic discovery for newly paired accessory...", v150, 2u);
                  }

                  v210(v205, v71);
                  sub_100095274(&unk_1002A8ED0, &qword_10023DBC0);
                  v151 = swift_allocObject();
                  *(v151 + 16) = xmmword_10023E990;
                  v152 = objc_opt_self();
                  sub_100095274(&unk_1002A73A0, &qword_10023C670);
                  v153 = swift_allocObject();
                  v213 = xmmword_10023C170;
                  *(v153 + 16) = xmmword_10023C170;
                  *(v153 + 56) = &type metadata for UInt32;
                  *(v153 + 64) = &protocol witness table for UInt32;
                  *(v153 + 32) = 35;
                  String.init(format:_:)();
                  v154 = String._bridgeToObjectiveC()();

                  v155 = [v152 UUIDWithString:v154];

                  v156 = [v155 UUIDString];
                  v157 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v159 = v158;

                  *(v151 + 32) = v157;
                  *(v151 + 40) = v159;
                  v160 = swift_allocObject();
                  *(v160 + 16) = v213;
                  *(v160 + 56) = &type metadata for UInt32;
                  *(v160 + 64) = &protocol witness table for UInt32;
                  *(v160 + 32) = 33;
                  String.init(format:_:)();
                  v161 = String._bridgeToObjectiveC()();

                  v162 = [v152 UUIDWithString:v161];

                  v163 = [v162 UUIDString];
                  v164 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v166 = v165;

                  *(v151 + 48) = v164;
                  *(v151 + 56) = v166;
                  v167 = swift_allocObject();
                  *(v167 + 16) = v213;
                  *(v167 + 56) = &type metadata for UInt32;
                  *(v167 + 64) = &protocol witness table for UInt32;
                  *(v167 + 32) = 32;
                  String.init(format:_:)();
                  v168 = String._bridgeToObjectiveC()();

                  v169 = [v152 UUIDWithString:v168];

                  v170 = [v169 UUIDString];
                  v171 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v173 = v172;

                  *(v151 + 64) = v171;
                  *(v151 + 72) = v173;
                  v174 = swift_allocObject();
                  *(v174 + 16) = v213;
                  *(v174 + 56) = &type metadata for UInt32;
                  *(v174 + 64) = &protocol witness table for UInt32;
                  *(v174 + 32) = 48;
                  String.init(format:_:)();
                  v175 = String._bridgeToObjectiveC()();

                  v176 = [v152 UUIDWithString:v175];

                  v177 = [v176 UUIDString];
                  v178 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v180 = v179;

                  *(v151 + 80) = v178;
                  *(v151 + 88) = v180;
                  v181 = swift_allocObject();
                  *(v181 + 16) = v213;
                  *(v181 + 56) = &type metadata for UInt32;
                  *(v181 + 64) = &protocol witness table for UInt32;
                  *(v181 + 32) = 82;
                  String.init(format:_:)();
                  v182 = String._bridgeToObjectiveC()();

                  v183 = [v152 UUIDWithString:v182];

                  v184 = [v183 UUIDString];
                  v185 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v187 = v186;

                  *(v151 + 96) = v185;
                  *(v151 + 104) = v187;
                  v188 = swift_allocObject();
                  *(v188 + 16) = v213;
                  *(v188 + 56) = &type metadata for UInt32;
                  *(v188 + 64) = &protocol witness table for UInt32;
                  *(v188 + 32) = 544;
                  String.init(format:_:)();
                  v189 = String._bridgeToObjectiveC()();

                  v190 = [v152 UUIDWithString:v189];

                  v191 = [v190 UUIDString];
                  v192 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v194 = v193;

                  *(v151 + 112) = v192;
                  *(v151 + 120) = v194;
                  v195 = swift_allocObject();
                  *(v195 + 16) = v213;
                  *(v195 + 56) = &type metadata for UInt32;
                  *(v195 + 64) = &protocol witness table for UInt32;
                  *(v195 + 32) = 304;
                  String.init(format:_:)();
                  v196 = String._bridgeToObjectiveC()();

                  v197 = [v152 UUIDWithString:v196];

                  v198 = [v197 UUIDString];
                  v199 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v201 = v200;

                  *(v151 + 128) = v199;
                  *(v151 + 136) = v201;
                  isa = Array._bridgeToObjectiveC()().super.isa;

                  [v212 discoverAccessoriesAndReadCharacteristicTypes:isa];
                }
              }

              sub_100095808(&v220);
              return;
            }

            v204 = v104;
            v113 = v112;
            v114 = [a1 identifier];
            if (!v114)
            {
LABEL_104:
              __break(1u);
              __break(1u);
LABEL_105:
              __break(1u);
              return;
            }

            v115 = v114;
            v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v3 = v116;

            v117 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_tokens;
            swift_beginAccess();
            v56 = *&v113[v117];
            v214 = v56;
            *&v213 = v108;
            v203 = v113;
            if (!(v56 >> 62))
            {
              v211 = (v56 & 0xFFFFFFFFFFFFFF8);
              v118 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
              goto LABEL_62;
            }

LABEL_99:
            v211 = (v56 & 0xFFFFFFFFFFFFFF8);
            v118 = _CocoaArrayWrapper.endIndex.getter();
LABEL_62:

            v119 = v56 & 0xC000000000000001;
            v206 = v56;
            v120 = v56 + 32;
            while (1)
            {
              if (!v118)
              {

                v71 = v209;
                goto LABEL_82;
              }

              if (__OFSUB__(v118--, 1))
              {
                goto LABEL_96;
              }

              if (v119)
              {
                v122 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if ((v118 & 0x8000000000000000) != 0)
                {
                  goto LABEL_97;
                }

                if (v118 >= *(v211 + 2))
                {
                  goto LABEL_98;
                }

                v122 = *(v120 + 8 * v118);
              }

              v123 = *(v122 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_setupPayload + 32);
              v124 = *(v122 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_setupPayload + 40);
              sub_1000A0CD8(v123, v124);
              v125 = sub_10014025C(v123, v124);
              v127 = v126;
              sub_1000A0D2C(v123, v124);
              if (v125 == v57 && v127 == v3)
              {
                break;
              }

              v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v56)
              {
                goto LABEL_81;
              }
            }

LABEL_81:

            __chkstk_darwin(v143);
            *(&v203 - 2) = &v214;
            v215 = v118;
            sub_100169AE8(&v215, v216);
            v71 = v209;
            v118 = v216[0];
LABEL_82:

            v111 = v212;
            if (v118)
            {
              if (qword_1002A6780 != -1)
              {
                swift_once();
              }

              v144 = OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_id;
              v145 = sub_1001F29A8(_swiftEmptyArrayStorage);
              sub_100196830(v118 + v144, 3, v145, 0);

              v111 = v212;
            }

            goto LABEL_86;
          }

LABEL_44:
          sub_100095C84(&v217, &unk_1002A6F40, &unk_10023BE90);
          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_102:
      __break(1u);
      goto LABEL_103;
    }

    v219 = 0;
    v218 = 0u;
    v217 = 0u;
    goto LABEL_44;
  }

  v210 = v20;
  v22 = v12[2];
  v207 = OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger;
  v209 = v12 + 2;
  v208 = v22;
  (v22)(&v203 - v17, &v4[OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger], v11);
  swift_errorRetain();
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v211 = a1;
    v26 = v25;
    v27 = swift_slowAlloc();
    *&v213 = v12;
    v28 = v11;
    v29 = v27;
    v220 = v27;
    *v26 = 136315138;
    swift_getErrorValue();
    v30 = Error.localizedDescription.getter();
    v32 = sub_1000952D4(v30, v31, &v220);

    *(v26 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v23, v24, "Error during pair setup: %s", v26, 0xCu);
    sub_100095808(v29);
    v11 = v28;
    v12 = v213;

    a1 = v211;
  }

  v33 = v12[1];
  v33(v21, v11);
  if (a1)
  {
    objc_opt_self();
    v34 = swift_dynamicCastObjCClass();
    if (v34)
    {
      v35 = v34;
      v36 = *&v4[OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_manager];
      *&v213 = v33;
      if (!v36)
      {
        v68 = a1;
LABEL_29:
        sub_100153E88(0, a2);
        if ([v35 pendingRemovePairing] == 1 || objc_msgSend(v35, "connectReason") == 7)
        {

          return;
        }

        v72 = v4;
        if (qword_1002A6780 != -1)
        {
          swift_once();
        }

        v73 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_keystore);
        v74 = [a1 identifier];
        v220 = 0;
        v75 = [v73 removeAccessoryKeyForName:v74 error:&v220];

        if (v75)
        {
          v76 = v220;

          return;
        }

        v129 = v220;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        v130 = v210;
        (v208)(v210, &v72[v207], v11);
        v131 = a1;
        v132 = Logger.logObject.getter();
        v133 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v132, v133))
        {

          v141 = v130;
          v142 = v11;
          goto LABEL_94;
        }

        v209 = v11;
        v134 = swift_slowAlloc();
        v135 = swift_slowAlloc();
        v220 = v135;
        *v134 = 136315138;
        v136 = [v131 identifier];

        if (v136)
        {
          v137 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v139 = v138;

          v140 = sub_1000952D4(v137, v139, &v220);

          *(v134 + 4) = v140;
          _os_log_impl(&_mh_execute_header, v132, v133, "Failed to remove keychain entry for accessory: %s", v134, 0xCu);
          sub_100095808(v135);

          v141 = v210;
          v142 = v209;
LABEL_94:
          (v213)(v141, v142);
          return;
        }

        goto LABEL_105;
      }

      v212 = v4;
      v37 = v11;
      v38 = v36;
      v39 = a1;
      v40 = a1;
      v41 = [v35 identifier];
      if (v41)
      {
        v42 = v41;
        v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v45 = v44;

        v46 = sub_1001F29A8(_swiftEmptyArrayStorage);
        if (*&v38[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_proxCard])
        {
          v38[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingState] = 0;
          v47 = *&v38[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_server];
          sub_100156798(v43, v45, 6, v46, a2);
        }

        v11 = v37;
        v4 = v212;
        a1 = v39;
        goto LABEL_29;
      }

      goto LABEL_102;
    }
  }
}

void sub_100155BC0(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v43 - v9;
  if (a1)
  {
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      v12 = v11;
      v47 = v1;
      v13 = a1;
      v14 = [v12 primaryAccessory];
      if (!v14)
      {
        goto LABEL_12;
      }

      v15 = v14;
      v45 = v12;
      v46 = v13;
      v16 = objc_opt_self();
      sub_100095274(&unk_1002A73A0, &qword_10023C670);
      v17 = swift_allocObject();
      v43 = xmmword_10023C170;
      *(v17 + 16) = xmmword_10023C170;
      *(v17 + 56) = &type metadata for UInt32;
      *(v17 + 64) = &protocol witness table for UInt32;
      *(v17 + 32) = 21;
      String.init(format:_:)();
      v18 = String._bridgeToObjectiveC()();

      v44 = v16;
      v19 = [v16 UUIDWithString:v18];

      v20 = [v19 UUIDString];
      if (!v20)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = String._bridgeToObjectiveC()();
      }

      v21 = swift_allocObject();
      *(v21 + 16) = v43;
      *(v21 + 56) = &type metadata for UInt32;
      *(v21 + 64) = &protocol witness table for UInt32;
      *(v21 + 32) = 16;
      String.init(format:_:)();
      v22 = String._bridgeToObjectiveC()();

      v23 = [v44 UUIDWithString:v22];

      v24 = [v23 UUIDString];
      if (!v24)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = String._bridgeToObjectiveC()();
      }

      v25 = [v15 characteristicOfType:v20 serviceType:v24];

      v26 = v45;
      v13 = v46;
      if (v25)
      {
        v27 = v47;
        (*(v4 + 16))(v10, &v47[OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger], v3);
        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          *v30 = 0;
          _os_log_impl(&_mh_execute_header, v28, v29, "Reading Pairing State Number...", v30, 2u);
        }

        (*(v4 + 8))(v10, v3);
        sub_100095274(&qword_1002A7390, &qword_10023BEF0);
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_10023BDA0;
        *(v31 + 32) = v25;
        sub_100095B94(0, &qword_1002A92F0, off_100271C60);
        v32 = v25;
        isa = Array._bridgeToObjectiveC()().super.isa;

        v34 = *&v27[OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_workQueue];
        v35 = swift_allocObject();
        *(v35 + 16) = v27;
        *(v35 + 24) = v26;
        aBlock[4] = sub_100169474;
        aBlock[5] = v35;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1001A37EC;
        aBlock[3] = &unk_100279408;
        v36 = _Block_copy(aBlock);
        v37 = v13;
        v38 = v34;
        v39 = v27;

        [v26 readCharacteristicValues:isa timeout:v38 completionQueue:v36 completionHandler:10.0];

        _Block_release(v36);
      }

      else
      {
LABEL_12:
        (*(v4 + 16))(v8, &v47[OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger], v3);
        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          *v42 = 0;
          _os_log_impl(&_mh_execute_header, v40, v41, "Accessory does not contain a Pairing State Number characteristic!", v42, 2u);
        }

        else
        {
        }

        (*(v4 + 8))(v8, v3);
      }
    }
  }
}

void sub_1001561C0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v47 - v15;
  __chkstk_darwin(v14);
  v19 = &v47 - v17;
  if (a2)
  {
    (*(v9 + 16))(&v47 - v17, a3 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger, v8);
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v61[0] = v23;
      *v22 = 136315138;
      swift_getErrorValue();
      v24 = Error.localizedDescription.getter();
      v26 = sub_1000952D4(v24, v25, v61);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "Error reading Pairing State Number characteristic: %s", v22, 0xCu);
      sub_100095808(v23);
    }

    (*(v9 + 8))(v19, v8);
  }

  else
  {
    v56 = a4;
    v57 = v8;
    if (a1)
    {
      v48 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 >> 62)
      {
LABEL_36:
        v27 = _CocoaArrayWrapper.endIndex.getter();
        v55 = a3;
        if (!v27)
        {
          return;
        }
      }

      else
      {
        v27 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v55 = a3;
        if (!v27)
        {
          return;
        }
      }

      v28 = 0;
      v53 = OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger;
      v54 = a1 & 0xC000000000000001;
      v51 = (v9 + 8);
      v52 = (v9 + 16);
      *&v18 = 33554688;
      v49 = v18;
      v50 = a1;
      while (1)
      {
        if (v54)
        {
          v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          a3 = v55;
          a1 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            goto LABEL_34;
          }
        }

        else
        {
          a3 = v55;
          if (v28 >= *(v48 + 16))
          {
            goto LABEL_35;
          }

          v29 = *(a1 + 8 * v28 + 32);
          a1 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
            goto LABEL_36;
          }
        }

        if ([v29 value])
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v59 = 0u;
          v60 = 0u;
        }

        v61[0] = v59;
        v61[1] = v60;
        if (!*(&v60 + 1))
        {

          sub_100095C84(v61, &qword_1002A9210, &unk_10023BE70);
          return;
        }

        if ((swift_dynamicCast() & 1) == 0)
        {

          return;
        }

        v9 = v58;
        v30 = a3 + v53;
        v31 = v57;
        (*v52)(v13, v30, v57);
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = v49;
          *(v34 + 4) = v9;
          _os_log_impl(&_mh_execute_header, v32, v33, "Updating Pairing State Number to %hu", v34, 6u);
        }

        (*v51)(v13, v31);
        v35 = v56;
        if (qword_1002A6780 != -1)
        {
          swift_once();
        }

        v36 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_keystore);
        v37 = [v35 identifier];
        if (!v37)
        {
          break;
        }

        v38 = v37;
        v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v41 = v40;

        sub_100172148(v9, v39, v41);

        ++v28;
        v42 = a1 == v27;
        a1 = v50;
        if (v42)
        {
          return;
        }
      }

      __break(1u);
    }

    else
    {
      v43 = v57;
      (*(v9 + 16))(v16, a3 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger, v57);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&_mh_execute_header, v44, v45, "Error reading Pairing State Number characteristic: no results returned!", v46, 2u);
      }

      (*(v9 + 8))(v16, v43);
    }
  }
}

uint64_t sub_100156798(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v91 = a3;
  v11 = type metadata accessor for Logger();
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11);
  v14 = __chkstk_darwin(v13);
  v16 = &v80 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v80 - v18;
  v92 = v20;
  v93 = a2;
  v21 = *(v20 + 16);
  v94 = a1;
  v89 = v22;
  v90 = v17;
  v85 = a4;
  v88 = v20 + 16;
  v87 = v21;
  v23 = v6 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger;
  if (a5)
  {
    v21(&v80 - v18, v23, v11);

    swift_errorRetain();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v98[0] = swift_slowAlloc();
      *v26 = 136315650;
      *(v26 + 4) = sub_1000952D4(v94, a2, v98);
      *(v26 + 12) = 2048;
      *(v26 + 14) = PairingRequestState.rawValue.getter();
      *(v26 + 22) = 2080;
      swift_getErrorValue();
      v27 = Error.localizedDescription.getter();
      v29 = sub_1000952D4(v27, v28, v98);

      *(v26 + 24) = v29;
      a2 = v93;
      _os_log_impl(&_mh_execute_header, v24, v25, "Attempting to update prox card for %s with status %ld due to error: %s", v26, 0x20u);
      swift_arrayDestroy();

      a1 = v94;
    }

    v30 = *(v92 + 8);
    v31 = v19;
  }

  else
  {
    v21(v16, v23, v11);

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v98[0] = v35;
      *v34 = 136315394;
      *(v34 + 4) = sub_1000952D4(a1, a2, v98);
      *(v34 + 12) = 2048;
      *(v34 + 14) = PairingRequestState.rawValue.getter();
      _os_log_impl(&_mh_execute_header, v32, v33, "Attempting to update prox card for %s with status %ld", v34, 0x16u);
      sub_100095808(v35);
    }

    v30 = *(v92 + 8);
    v31 = v16;
  }

  v86 = v30;
  v30(v31, v11);
  v84 = OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_manager;
  v36 = *(v6 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_manager);
  if (v36)
  {
    v37 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_tokens;
    swift_beginAccess();
    v38 = *(v36 + v37);
    v95 = v38;
    v82 = v6;
    v81 = a5;
    v39 = v38 & 0xFFFFFFFFFFFFFF8;
    if (v38 >> 62)
    {
LABEL_51:
      v40 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v40 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v41 = v38 & 0xC000000000000001;
    v42 = v38 + 32;

    v80 = v36;
    v83 = v38;

    while (1)
    {
      if (!v40)
      {

        v6 = v82;
        v51 = v81;
        v52 = v91;
        goto LABEL_28;
      }

      if (__OFSUB__(v40--, 1))
      {
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      if (v41)
      {
        v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v40 & 0x8000000000000000) != 0)
        {
          goto LABEL_49;
        }

        if (v40 >= *(v39 + 16))
        {
          goto LABEL_50;
        }

        v38 = *(v42 + 8 * v40);
      }

      v44 = *(v38 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_setupPayload + 32);
      v45 = *(v38 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_setupPayload + 40);
      sub_1000A0CD8(v44, v45);
      v46 = sub_10014025C(v44, v45);
      v48 = v47;
      sub_1000A0D2C(v44, v45);
      v49 = v46;
      a2 = v93;
      a1 = v94;
      if (v49 == v94 && v48 == v93)
      {
        break;
      }

      v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v36)
      {
        goto LABEL_27;
      }
    }

LABEL_27:

    __chkstk_darwin(v53);
    *(&v80 - 2) = &v95;
    v96 = v40;
    sub_100147978(&v96, v97);
    v6 = v82;
    v51 = v81;
    v52 = v91;
    v40 = v97[0];
LABEL_28:

    if (v40)
    {
      if (qword_1002A6780 != -1)
      {
        swift_once();
      }

      sub_100196830(v40 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_id, v52, v85, v51);
      v54 = PairingRequestState.rawValue.getter();
      if (v54 != PairingRequestState.rawValue.getter())
      {
        v55 = PairingRequestState.rawValue.getter();
        if (v55 != PairingRequestState.rawValue.getter())
        {
          goto LABEL_37;
        }
      }

      v56 = *(v6 + v84);
      if (!v56)
      {
        goto LABEL_37;
      }

      v57 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_tokens;
      swift_beginAccess();

      v58 = v56;
      v59 = sub_100162AE0(&v56[v57], a1, a2);

      v60 = *&v56[v57];
      if (v60 >> 62)
      {
        if (v60 < 0)
        {
          v79 = *&v56[v57];
        }

        v61 = _CocoaArrayWrapper.endIndex.getter();
        if (v61 >= v59)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v61 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v61 >= v59)
        {
LABEL_36:
          sub_1001A11BC(v59, v61);
          swift_endAccess();

LABEL_37:
          v62 = PairingRequestState.rawValue.getter();
          if (v62 == PairingRequestState.rawValue.getter())
          {
            sub_100153E88(0, v51);
            v63 = OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_auth;
            v64 = *(v6 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_auth);
            if (v64)
            {
              v65 = *(v64 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_accessoryServer);
              v97[0] = 0;
              if ([v65 stopPairingWithError:v97])
              {
                v66 = v97[0];
              }

              else
              {
                v77 = v97[0];
                _convertNSErrorToError(_:)();

                swift_willThrow();
              }

              v78 = *(v6 + v63);
              *(v6 + v63) = 0;
            }
          }
        }
      }

      __break(1u);
    }
  }

  v68 = v89;
  v67 = v90;
  v87(v89, v6 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger, v90);

  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v97[0] = v72;
    *v71 = 136315138;
    *(v71 + 4) = sub_1000952D4(a1, a2, v97);
    _os_log_impl(&_mh_execute_header, v69, v70, "Cannot find token for accessory %s", v71, 0xCu);
    sub_100095808(v72);
  }

  v86(v68, v67);
  v73 = type metadata accessor for Errors();
  sub_10016947C(&qword_1002A6F50, &type metadata accessor for Errors);
  v74 = swift_allocError();
  *v75 = 0xD00000000000001FLL;
  v75[1] = 0x8000000100233710;
  (*(*(v73 - 8) + 104))(v75, enum case for Errors.PairingError(_:), v73);
  sub_100153E88(0, v74);
}

uint64_t sub_1001571A0(uint64_t a1, void (*a2)(char *, uint64_t))
{
  v70 = a2;
  v71 = a1;
  v3 = sub_100095274(&unk_1002A73C0, &unk_10023BE80);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v69 = &v66 - v5;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = __chkstk_darwin(v6);
  v72 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v66 - v11;
  v13 = OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger;
  v14 = v7[2];
  v14(&v66 - v11, &v2[OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger], v6);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Finished discovery of accessory.  Device successfully paired!", v17, 2u);
  }

  v18 = v7[1];
  v18(v12, v6);
  v19 = &v2[v13];
  v20 = v2;
  v21 = v72;
  v14(v72, v19, v6);
  v22 = v70;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v70 = v18;
    v68 = v6;
    v25 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v73 = v67;
    *v25 = 136316162;
    v26 = [v22 name];
    if (v26)
    {
      v27 = v26;
      v28 = v24;
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;
    }

    else
    {
      v28 = v24;
      v31 = 0xE300000000000000;
      v29 = 4144959;
    }

    v34 = sub_1000952D4(v29, v31, &v73);

    *(v25 + 4) = v34;
    *(v25 + 12) = 2080;
    v35 = [v22 manufacturer];
    if (v35)
    {
      v36 = v35;
      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;
    }

    else
    {
      v39 = 0xE300000000000000;
      v37 = 4144959;
    }

    v40 = sub_1000952D4(v37, v39, &v73);

    *(v25 + 14) = v40;
    *(v25 + 22) = 2080;
    v41 = [v22 model];
    if (v41)
    {
      v42 = v41;
      v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v44;
    }

    else
    {
      v45 = 0xE300000000000000;
      v43 = 4144959;
    }

    v46 = sub_1000952D4(v43, v45, &v73);

    *(v25 + 24) = v46;
    *(v25 + 32) = 2080;
    v47 = [v22 serialNumber];
    if (v47)
    {
      v48 = v47;
      v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v50;
    }

    else
    {
      v51 = 0xE300000000000000;
      v49 = 4144959;
    }

    v52 = 4144959;
    v53 = sub_1000952D4(v49, v51, &v73);

    *(v25 + 34) = v53;
    *(v25 + 42) = 2080;
    v54 = [v22 firmwareVersion];
    if (v54)
    {
      v55 = v54;
      v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v57 = v56;
    }

    else
    {
      v57 = 0xE300000000000000;
    }

    v33 = v71;
    v58 = sub_1000952D4(v52, v57, &v73);

    *(v25 + 44) = v58;
    _os_log_impl(&_mh_execute_header, v23, v28, "Accessory [name: %s, manufacturer: %s, model: %s, serial number: %s, firmware version: %s]", v25, 0x34u);
    swift_arrayDestroy();

    result = (v70)(v72, v68);
  }

  else
  {

    result = (v18)(v21, v6);
    v33 = v71;
  }

  *(v33 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_paired) = 2;
  v59 = *(v33 + 32);
  if (v59)
  {
    v60 = v59;
    sub_100155BC0(v59);

    v61 = type metadata accessor for TaskPriority();
    v62 = v69;
    (*(*(v61 - 8) + 56))(v69, 1, 1, v61);
    v63 = swift_allocObject();
    v63[2] = 0;
    v63[3] = 0;
    v63[4] = v33;
    v63[5] = v20;
    v63[6] = v22;
    v64 = v22;

    v65 = v20;
    sub_1001B6410(0, 0, v62, &unk_10023EA10, v63);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100157798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  v7 = sub_100095274(&qword_1002A98D0, &unk_10023FFF0);
  v6[13] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[14] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v6[15] = v9;
  v10 = *(v9 - 8);
  v6[16] = v10;
  v11 = *(v10 + 64) + 15;
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v12 = swift_task_alloc();
  v6[21] = v12;
  *v12 = v6;
  v12[1] = sub_1001578EC;

  return sub_1000FAC78();
}

uint64_t sub_1001578EC()
{
  v1 = *(*v0 + 168);
  v3 = *v0;

  return (_swift_task_switch)(sub_1001579E8, 0, 0);
}

uint64_t sub_1001579E8()
{
  v1 = *(v0 + 80);
  v2 = OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_dataStreamController;
  [*(v1 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_dataStreamController) deRegisterFromNotifications];
  [*(v1 + v2) invalidate];
  v3 = *(v1 + v2);
  *(v1 + v2) = 0;

  sub_1000A470C();
  v4 = swift_task_alloc();
  *(v0 + 176) = v4;
  *v4 = v0;
  v4[1] = sub_100157AB8;
  v5 = *(v0 + 80);

  return sub_1000FA6C8();
}

uint64_t sub_100157AB8()
{
  v1 = *(*v0 + 176);
  v3 = *v0;

  return (_swift_task_switch)(sub_100157BB4, 0, 0);
}

uint64_t sub_100157BB4()
{
  v1 = v0[12];
  v2 = v0[10];
  sub_1001A761C(1);
  v3 = [v1 name];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v0[23] = v7;
  v8 = swift_task_alloc();
  v0[24] = v8;
  *v8 = v0;
  v8[1] = sub_100157CAC;
  v9 = v0[10];
  v10 = v0[11];

  return sub_10015B0F4(v9, v5, v7, 1);
}

uint64_t sub_100157CAC()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v7 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = sub_100158CD8;
  }

  else
  {
    v5 = *(v2 + 184);

    v4 = sub_100157DC8;
  }

  return (_swift_task_switch)(v4, 0, 0);
}

id sub_100157DC8()
{
  v194 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 80);
  sub_1000F9E38(0);
  v3 = (v2 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_firmwareVersion);
  v4 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_firmwareVersion + 8);
  *v3 = v5;
  v3[1] = v6;

  sub_1000F9E44(0);
  v7 = (v2 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_productGroup);
  v8 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_productGroup + 8);
  *v7 = v9;
  v7[1] = v10;

  sub_1000FA184(0);
  v11 = (v2 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_productNumber);
  v12 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_productNumber + 8);
  *v11 = v13;
  v11[1] = v14;

  sub_1000FA384(0);
  v15 = (v2 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_productData);
  v16 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_productData + 8);
  *v15 = v17;
  v15[1] = v18;

  if (qword_1002A6780 != -1)
  {
LABEL_69:
    swift_once();
  }

  v19 = *(v0 + 96);
  v20 = *(v0 + 80);
  v21 = qword_1002B1CF0;
  v22 = *(v20 + 24);
  v23 = [v19 firmwareVersion];
  if (v23)
  {
    v24 = v23;
    v180 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;
  }

  else
  {
    v180 = 0;
    v26 = 0;
  }

  v179 = v21;
  v27 = [*(v0 + 96) serialNumber];
  if (v27)
  {
    v28 = v27;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;
  }

  else
  {
    v30 = 0;
  }

  v190 = v30;
  v31 = [*(v0 + 96) model];
  v185 = v22;
  v168 = v20;
  v175 = v1;
  v183 = v26;
  if (v31)
  {
    v32 = v31;
    v176 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v187 = v33;
  }

  else
  {
    v176 = 0;
    v187 = 0;
  }

  v34 = *(v0 + 88);
  v35 = *(v0 + 80) + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_setupPayload;
  v37 = *v35;
  v36 = *(v35 + 8);
  v38 = *(v35 + 16);
  v39 = *(v35 + 32);
  v40 = *(v35 + 40);
  v41 = *(v35 + 48);
  *(v35 + 30);
  v42 = *(v35 + 26) << 16;
  v173 = *(v35 + 25);
  v43 = *(v35 + 24);
  sub_1001693B8(*v35, v36, v38, *(v35 + 24), v39, v40, v41, sub_1000A0CD8);
  sub_1001693B8(v37, v36, v38, v43 | v42, v39, v40, v41, sub_1000A0D2C);
  v44 = OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_manager;
  v174 = v34;
  v45 = *(v34 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_manager);
  if (v45)
  {
    v46 = *(v45 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_proxCard);
    v48 = v183;
    v47 = v185;
    v49 = v179;
    if (v46)
    {
      v50 = *(v46 + OBJC_IVAR____TtC14dockaccessoryd13DKProxManager_requiresSWAuth);
    }

    v51 = v187;
    v52 = v190;
  }

  else
  {
    v48 = v183;
    v47 = v185;
    v51 = v187;
    v52 = v190;
    v49 = v179;
  }

  v53 = sub_1001884E4();
  if (v53)
  {
    v54 = v53;
    v172 = v44;
    v166 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger;
    v167 = *(*(v0 + 128) + 16);
    v167(*(v0 + 160), v49 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, *(v0 + 120));

    v55 = v47;

    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.default.getter();

    v58 = os_log_type_enabled(v56, v57);
    v59 = *(v0 + 120);
    v60 = *(v0 + 128);
    v169 = v59;
    v170 = *(v0 + 160);
    if (v58)
    {
      v61 = swift_slowAlloc();
      v165 = swift_slowAlloc();
      v193[0] = swift_slowAlloc();
      *v61 = 138412802;
      *(v61 + 4) = v55;
      *v165 = v55;
      *(v61 + 12) = 2080;
      *(v0 + 40) = v180;
      *(v0 + 48) = v48;
      v62 = v55;

      sub_100095274(&unk_1002A6F20, &unk_10023C660);
      v63 = String.init<A>(describing:)();
      v65 = v48;
      v66 = sub_1000952D4(v63, v64, v193);

      *(v61 + 14) = v66;
      v48 = v65;
      v51 = v187;
      *(v61 + 22) = 2080;
      *(v0 + 56) = v176;
      *(v0 + 64) = v187;

      v67 = String.init<A>(describing:)();
      v69 = sub_1000952D4(v67, v68, v193);

      *(v61 + 24) = v69;
      v47 = v185;
      _os_log_impl(&_mh_execute_header, v56, v57, "Updating accessory information for %@: firmware %s, model %s", v61, 0x20u);
      sub_100095C84(v165, &unk_1002A6F60, &unk_10023C4E0);

      swift_arrayDestroy();

      v52 = v190;
    }

    v70 = v170;
    v171 = *(v60 + 8);
    v171(v70, v169);
    v44 = v172;
    if (!v48)
    {
      dispatch thunk of DockCoreAccessory.firmwareVersion.getter();
    }

    dispatch thunk of DockCoreAccessory.firmwareVersion.setter();
    if (!v52)
    {
      dispatch thunk of DockCoreAccessory.serialNumber.getter();
    }

    dispatch thunk of DockCoreAccessory.serialNumber.setter();
    if (!v51)
    {
      dispatch thunk of DockCoreAccessory.model.getter();
    }

    dispatch thunk of DockCoreAccessory.model.setter();
    dispatch thunk of DockCoreAccessory.certified.setter();
    dispatch thunk of DockCoreAccessory.isMagSafe.setter();
    v1 = v175;
    sub_10018F7CC(v54);
    if (v175)
    {
      v167(*(v0 + 152), v179 + v166, *(v0 + 120));
      swift_errorRetain();
      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.error.getter();

      v73 = os_log_type_enabled(v71, v72);
      v74 = *(v0 + 152);
      v75 = *(v0 + 128);
      v181 = *(v0 + 120);
      if (v73)
      {
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v193[0] = v77;
        *v76 = 136315138;
        swift_getErrorValue();
        v177 = v74;
        v79 = *(v0 + 16);
        v78 = *(v0 + 24);
        v80 = *(v0 + 32);
        v81 = Error.localizedDescription.getter();
        v83 = sub_1000952D4(v81, v82, v193);

        *(v76 + 4) = v83;
        _os_log_impl(&_mh_execute_header, v71, v72, "Unable to update dock accessory: %s", v76, 0xCu);
        sub_100095808(v77);
        v47 = v185;

        v44 = v172;

        v171(v177, v181);
      }

      else
      {

        v171(v74, v181);
      }

      v1 = 0;
    }

    else
    {
    }
  }

  else
  {

    v1 = v175;
  }

  v85 = *(v0 + 88);
  v84 = *(v0 + 96);

  result = sub_100153E88(v84, 0);
  v87 = *(v174 + v44);
  if (!v87)
  {
    goto LABEL_38;
  }

  v88 = *(*(v0 + 80) + 32);
  if (!v88)
  {
    __break(1u);
    goto LABEL_71;
  }

  v89 = v87;
  result = [v88 identifier];
  if (!result)
  {
LABEL_71:
    __break(1u);
    return result;
  }

  v90 = result;
  v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v93 = v92;

  v94 = sub_1001F29A8(_swiftEmptyArrayStorage);
  if (*&v89[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_proxCard])
  {
    v89[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingState] = 0;
    v95 = *&v89[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_server];
    sub_100156798(v91, v93, 4, v94, 0);
  }

LABEL_38:
  if (qword_1002A67A0 != -1)
  {
    swift_once();
  }

  v184 = *(v0 + 112);
  v182 = *(v0 + 104);
  v96 = *(v0 + 80);
  v178 = qword_1002B1EB8;
  v97 = sub_1001D5DDC();

  v98 = sub_100163528(v97, v96);

  v99 = v98 + 64;
  v100 = -1;
  v101 = -1 << *(v98 + 32);
  if (-v101 < 64)
  {
    v100 = ~(-1 << -v101);
  }

  v102 = v100 & *(v98 + 64);
  v103 = (63 - v101) >> 6;
  v186 = v98;

  v104 = 0;
  if (v102)
  {
    while (1)
    {
      v188 = v1;
      v105 = v104;
LABEL_48:
      v106 = *(v0 + 112);
      v191 = *(v0 + 88);
      v107 = __clz(__rbit64(v102)) | (v105 << 6);
      v108 = v0;
      v109 = *(v186 + 56);
      v110 = (*(v186 + 48) + 16 * v107);
      v111 = *v110;
      v112 = v110[1];
      v113 = v109 + *(*(type metadata accessor for BTDiscoveredDevice() - 8) + 72) * v107;
      v0 = v108;
      sub_1000E40C4(v113, v106 + *(v182 + 48));
      *v106 = v111;
      *(v184 + 8) = v112;

      v1 = v188;
      sub_100159CF8(v106, v191);
      if (v188)
      {
        break;
      }

      v102 &= v102 - 1;
      sub_100095C84(*(v0 + 112), &qword_1002A98D0, &unk_10023FFF0);
      v104 = v105;
      if (!v102)
      {
        goto LABEL_44;
      }
    }

    v164 = *(v0 + 112);

    return sub_100095C84(v164, &qword_1002A98D0, &unk_10023FFF0);
  }

  else
  {
    while (1)
    {
LABEL_44:
      v105 = v104 + 1;
      if (__OFADD__(v104, 1))
      {
        __break(1u);
        goto LABEL_69;
      }

      if (v105 >= v103)
      {
        break;
      }

      v102 = *(v99 + 8 * v105);
      ++v104;
      if (v102)
      {
        v188 = v1;
        goto LABEL_48;
      }
    }

    v114 = *(v0 + 80);

    v115 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager;
    v116 = *(*(v179 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager) + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_firmwareUpdateManager);
    v117 = *(v114 + 16);
    if (v117 && (v118 = *&v117[OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral]) != 0)
    {
      v119 = v116;
      v120 = v117;
      if ([v118 state] == 2)
      {
        v189 = v120;
        v192 = v116;
        v121 = *(v0 + 80);
        (*(*(v0 + 128) + 16))(*(v0 + 144), *(v0 + 88) + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger, *(v0 + 120));

        v122 = v119;
        v123 = Logger.logObject.getter();
        v124 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v123, v124))
        {
          v125 = swift_slowAlloc();
          v126 = swift_slowAlloc();
          *v125 = 138412546;
          v127 = *(v168 + 24);
          *(v125 + 4) = v127;
          *v126 = v127;
          *(v125 + 12) = 2048;
          *(v125 + 14) = 0x404E000000000000;
          v128 = v127;
          _os_log_impl(&_mh_execute_header, v123, v124, "Setting accessory reachable %@ after %f secs", v125, 0x16u);
          sub_100095C84(v126, &unk_1002A6F60, &unk_10023C4E0);
        }

        v129 = *(v0 + 144);
        v130 = v0;
        v131 = *(v0 + 128);
        v132 = v130[15];
        v133 = v130;
        v134 = v130[10];

        (*(v131 + 8))(v129, v132);
        type metadata accessor for DockCoreManager();
        v135 = static DockCoreManager.localFirmwarePath.getter();
        v137 = v136;
        v138 = *(v134 + 40);
        v139 = swift_allocObject();
        *(v139 + 16) = v122;
        *(v139 + 24) = v134;
        *(v139 + 32) = 1;
        *(v139 + 40) = v135;
        *(v139 + 48) = v137;
        v140 = objc_allocWithZone(type metadata accessor for RepeatingTimer());

        v141 = v122;
        v142 = v138;
        v143 = RepeatingTimer.init(interval:fireOnce:queue:_:)();

        v144 = *&v141[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_reachabilityTimer];
        *&v141[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_reachabilityTimer] = v143;

        v116 = v192;
      }

      else
      {
        v133 = v0;
      }
    }

    else
    {
      v133 = v0;
      v145 = v116;
    }

    v146 = *(v179 + v115);
    v147 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingStateLock;
    v148 = *&v146[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingStateLock];
    v149 = v146;

    os_unfair_lock_lock(v148 + 4);

    v150 = *&v149[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairing];
    *&v149[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairing] = 0;

    v151 = *&v146[v147];

    os_unfair_lock_unlock(v151 + 4);

    v152 = *(v114 + 16);
    if (v152)
    {
      v153 = v133;
      if (*&v152[OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral])
      {
        v154 = swift_allocObject();
        *(v154 + 16) = v178;
        *(v154 + 24) = v152;
        v155 = v152;
        v156 = v178;
        sub_1001D5444(sub_1000E1618, v154);
      }

      else
      {
        v157 = v152;
      }
    }

    else
    {

      v153 = v133;
    }

    v159 = v153[19];
    v158 = v153[20];
    v161 = v153[17];
    v160 = v153[18];
    v162 = v153[14];

    v163 = v153[1];

    return v163();
  }
}

id sub_100158CD8()
{
  v183 = v0;
  v1 = v0[25];
  v2 = v0[23];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[15];
  v6 = v0[11];

  (*(v4 + 16))(v3, v6 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger, v5);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[25];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&_mh_execute_header, v7, v8, "Accessory Description transfer request failed with %@", v10, 0xCu);
    sub_100095C84(v11, &unk_1002A6F60, &unk_10023C4E0);
  }

  v171 = v0[25];
  v14 = v0[16];
  v13 = v0[17];
  v15 = v0[15];

  (*(v14 + 8))(v13, v15);
  v16 = v0[10];
  sub_1000F9E38(0);
  v17 = (v16 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_firmwareVersion);
  v18 = *(v16 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_firmwareVersion + 8);
  *v17 = v19;
  v17[1] = v20;

  sub_1000F9E44(0);
  v21 = (v16 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_productGroup);
  v22 = *(v16 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_productGroup + 8);
  *v21 = v23;
  v21[1] = v24;

  sub_1000FA184(0);
  v25 = (v16 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_productNumber);
  v26 = *(v16 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_productNumber + 8);
  *v25 = v27;
  v25[1] = v28;

  sub_1000FA384(0);
  v29 = (v16 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_productData);
  v30 = *(v16 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_productData + 8);
  *v29 = v31;
  v29[1] = v32;

  if (qword_1002A6780 != -1)
  {
LABEL_65:
    swift_once();
  }

  v33 = v0[12];
  v34 = v0[10];
  v35 = qword_1002B1CF0;
  v36 = *(v34 + 24);
  v37 = [v33 firmwareVersion];
  if (v37)
  {
    v38 = v37;
    v169 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;
  }

  else
  {
    v169 = 0;
    v40 = 0;
  }

  v41 = [v0[12] serialNumber];
  if (v41)
  {
    v42 = v41;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v177 = v43;
  }

  else
  {
    v177 = 0;
  }

  v44 = [v0[12] model];
  v172 = v35;
  v175 = v36;
  v162 = v34;
  v173 = v40;
  if (v44)
  {
    v45 = v44;
    v168 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v180 = v46;
  }

  else
  {
    v168 = 0;
    v180 = 0;
  }

  v47 = v0[11];
  v179 = v0;
  v48 = v0[10] + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_setupPayload;
  v50 = *v48;
  v49 = *(v48 + 8);
  v51 = *(v48 + 16);
  v52 = *(v48 + 32);
  v53 = *(v48 + 40);
  v54 = *(v48 + 48);
  *(v48 + 30);
  v55 = *(v48 + 26) << 16;
  v166 = *(v48 + 25);
  v56 = *(v48 + 24);
  sub_1001693B8(*v48, v49, v51, *(v48 + 24), v52, v53, v54, sub_1000A0CD8);
  sub_1001693B8(v50, v49, v51, v56 | v55, v52, v53, v54, sub_1000A0D2C);
  v57 = OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_manager;
  v167 = v47;
  v58 = *(v47 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_manager);
  if (v58)
  {
    v59 = *(v58 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_proxCard);
    v60 = v172;
    v61 = v173;
    v62 = v175;
    if (v59)
    {
      v63 = *(v59 + OBJC_IVAR____TtC14dockaccessoryd13DKProxManager_requiresSWAuth);
    }
  }

  else
  {
    v60 = v172;
    v61 = v173;
    v62 = v175;
  }

  v64 = sub_1001884E4();
  if (v64)
  {
    v65 = v64;
    v165 = v57;
    (*(v0[16] + 16))(v0[20], v60 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v0[15]);
    v66 = v180;

    v67 = v62;

    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.default.getter();

    v70 = os_log_type_enabled(v68, v69);
    v71 = v0[15];
    v72 = v0[16];
    v163 = v71;
    v164 = v0[20];
    if (v70)
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v161 = swift_slowAlloc();
      v182[0] = v161;
      *v73 = 138412802;
      *(v73 + 4) = v67;
      *v74 = v67;
      *(v73 + 12) = 2080;
      v0[5] = v169;
      v0[6] = v61;
      v75 = v67;

      sub_100095274(&unk_1002A6F20, &unk_10023C660);
      v76 = String.init<A>(describing:)();
      v78 = v61;
      v79 = sub_1000952D4(v76, v77, v182);

      *(v73 + 14) = v79;
      v61 = v78;
      v0 = v179;
      *(v73 + 22) = 2080;
      v179[7] = v168;
      v179[8] = v180;

      v80 = String.init<A>(describing:)();
      v82 = sub_1000952D4(v80, v81, v182);

      *(v73 + 24) = v82;
      v62 = v175;
      _os_log_impl(&_mh_execute_header, v68, v69, "Updating accessory information for %@: firmware %s, model %s", v73, 0x20u);
      sub_100095C84(v74, &unk_1002A6F60, &unk_10023C4E0);

      swift_arrayDestroy();

      v66 = v180;
    }

    (*(v72 + 8))(v164, v163);
    if (!v61)
    {
      dispatch thunk of DockCoreAccessory.firmwareVersion.getter();
    }

    dispatch thunk of DockCoreAccessory.firmwareVersion.setter();
    if (!v177)
    {
      dispatch thunk of DockCoreAccessory.serialNumber.getter();
    }

    dispatch thunk of DockCoreAccessory.serialNumber.setter();
    if (!v66)
    {
      dispatch thunk of DockCoreAccessory.model.getter();
    }

    dispatch thunk of DockCoreAccessory.model.setter();
    dispatch thunk of DockCoreAccessory.certified.setter();
    dispatch thunk of DockCoreAccessory.isMagSafe.setter();
    sub_10018F7CC(v65);

    v57 = v165;
  }

  else
  {
  }

  v84 = v0[11];
  v83 = v0[12];

  result = sub_100153E88(v83, v171);
  v86 = *(v167 + v57);
  if (!v86)
  {
    goto LABEL_37;
  }

  v87 = *(v0[10] + 32);
  if (!v87)
  {
    __break(1u);
    goto LABEL_67;
  }

  v88 = v86;
  result = [v87 identifier];
  if (!result)
  {
LABEL_67:
    __break(1u);
    return result;
  }

  v89 = result;
  v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v92 = v91;

  v93 = sub_1001F29A8(_swiftEmptyArrayStorage);
  if (*&v88[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_proxCard])
  {
    v88[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingState] = 0;
    if (v171)
    {
      v94 = 6;
    }

    else
    {
      v94 = 4;
    }

    v95 = *&v88[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_server];
    sub_100156798(v90, v92, v94, v93, v171);
  }

LABEL_37:
  if (qword_1002A67A0 != -1)
  {
    swift_once();
  }

  v176 = v0[14];
  v174 = v0[13];
  v96 = v0[10];
  v170 = qword_1002B1EB8;
  v97 = sub_1001D5DDC();

  v98 = sub_100163528(v97, v96);

  v99 = v98 + 64;
  v100 = -1;
  v101 = -1 << *(v98 + 32);
  if (-v101 < 64)
  {
    v100 = ~(-1 << -v101);
  }

  v102 = v100 & *(v98 + 64);
  v103 = (63 - v101) >> 6;
  v178 = v98;

  v104 = 0;
  if (v102)
  {
    while (1)
    {
      v105 = v104;
LABEL_46:
      v106 = v0[14];
      v107 = v0[11];
      v108 = __clz(__rbit64(v102)) | (v105 << 6);
      v109 = *(v178 + 56);
      v110 = (*(v178 + 48) + 16 * v108);
      v111 = *v110;
      v112 = v110[1];
      v113 = type metadata accessor for BTDiscoveredDevice();
      sub_1000E40C4(v109 + *(*(v113 - 8) + 72) * v108, v106 + *(v174 + 48));
      *v106 = v111;
      *(v176 + 8) = v112;
      v0 = v179;

      sub_100159CF8(v106, v107);
      v102 &= v102 - 1;
      sub_100095C84(v179[14], &qword_1002A98D0, &unk_10023FFF0);
      v104 = v105;
      if (!v102)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
LABEL_43:
    v105 = v104 + 1;
    if (__OFADD__(v104, 1))
    {
      __break(1u);
      goto LABEL_65;
    }

    if (v105 >= v103)
    {
      break;
    }

    v102 = *(v99 + 8 * v105);
    ++v104;
    if (v102)
    {
      goto LABEL_46;
    }
  }

  v114 = v0[10];

  v115 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager;
  v116 = *(*(v172 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager) + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_firmwareUpdateManager);
  v117 = *(v114 + 16);
  if (v117 && (v118 = *&v117[OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral]) != 0)
  {
    v119 = v116;
    v120 = v117;
    if ([v118 state] == 2)
    {
      v181 = v120;
      v121 = v0[10];
      (*(v0[16] + 16))(v0[18], v0[11] + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger, v0[15]);

      v122 = v119;
      v123 = Logger.logObject.getter();
      v124 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v123, v124))
      {
        v125 = swift_slowAlloc();
        v126 = swift_slowAlloc();
        *v125 = 138412546;
        v127 = *(v162 + 24);
        *(v125 + 4) = v127;
        *v126 = v127;
        *(v125 + 12) = 2048;
        *(v125 + 14) = 0x404E000000000000;
        v128 = v127;
        _os_log_impl(&_mh_execute_header, v123, v124, "Setting accessory reachable %@ after %f secs", v125, 0x16u);
        sub_100095C84(v126, &unk_1002A6F60, &unk_10023C4E0);
      }

      v129 = v0[18];
      v130 = v0[15];
      v131 = v0[16];
      v132 = v0[10];

      (*(v131 + 8))(v129, v130);
      type metadata accessor for DockCoreManager();
      v133 = static DockCoreManager.localFirmwarePath.getter();
      v135 = v134;
      v136 = *(v132 + 40);
      v137 = swift_allocObject();
      *(v137 + 16) = v122;
      *(v137 + 24) = v132;
      *(v137 + 32) = 1;
      *(v137 + 40) = v133;
      *(v137 + 48) = v135;
      v138 = objc_allocWithZone(type metadata accessor for RepeatingTimer());

      v139 = v122;
      v140 = v136;
      v0 = v179;
      v141 = RepeatingTimer.init(interval:fireOnce:queue:_:)();

      v142 = *&v139[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_reachabilityTimer];
      *&v139[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_reachabilityTimer] = v141;
    }

    else
    {
    }
  }

  else
  {
    v143 = v116;
  }

  v144 = *(v172 + v115);
  v145 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingStateLock;
  v146 = *&v144[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingStateLock];
  v147 = v144;

  os_unfair_lock_lock(v146 + 4);

  v148 = *&v147[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairing];
  *&v147[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairing] = 0;

  v149 = *&v144[v145];

  os_unfair_lock_unlock(v149 + 4);

  v150 = *(v114 + 16);
  if (v150)
  {
    if (*&v150[OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral])
    {
      v151 = swift_allocObject();
      *(v151 + 16) = v170;
      *(v151 + 24) = v150;
      v152 = v150;
      v153 = v170;
      sub_1001D5444(sub_1000E1618, v151);
    }

    else
    {
      v154 = v150;
    }
  }

  else
  {
  }

  v156 = v0[19];
  v155 = v0[20];
  v158 = v0[17];
  v157 = v0[18];
  v159 = v0[14];

  v160 = v0[1];

  return v160();
}

uint64_t sub_100159CF8(uint64_t a1, uint64_t a2)
{
  v5 = sub_100095274(&unk_1002A9C20, &qword_10023D210);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v41 = v36 - v7;
  v37 = sub_100095274(&qword_1002A98D0, &unk_10023FFF0);
  v8 = *(*(v37 - 8) + 64);
  v9 = __chkstk_darwin(v37);
  v11 = (v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v13 = v36 - v12;
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v15 + 16);
  v38 = v20;
  v19(v18, a2 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger);
  v39 = a1;
  sub_1000B5150(a1, v13, &qword_1002A98D0, &unk_10023FFF0);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v40 = v24;
    *v23 = 136315138;
    sub_10014775C(v13, v11);
    v36[1] = v2;
    v26 = *v11;
    v25 = v11[1];
    sub_1000E4128(v11 + *(v37 + 48));
    v27 = sub_1000952D4(v26, v25, &v40);

    *(v23 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v21, v22, "Removing discovered device after successful pairing: %s", v23, 0xCu);
    sub_100095808(v24);
  }

  else
  {

    sub_100095C84(v13, &qword_1002A98D0, &unk_10023FFF0);
  }

  (*(v15 + 8))(v18, v38);
  if (qword_1002A67A0 != -1)
  {
    swift_once();
  }

  v28 = qword_1002B1EB8;
  v29 = *v39;
  v30 = v39[1];
  v31 = OBJC_IVAR____TtC14dockaccessoryd6BTLink__discoveredLock;
  v32 = *(qword_1002B1EB8 + OBJC_IVAR____TtC14dockaccessoryd6BTLink__discoveredLock);

  os_unfair_lock_lock(v32 + 4);

  swift_beginAccess();
  v33 = v41;
  sub_1001E4E78(v29, v30, v41);
  sub_100095C84(v33, &unk_1002A9C20, &qword_10023D210);
  swift_endAccess();
  v34 = *(v28 + v31);

  os_unfair_lock_unlock(v34 + 4);
}

uint64_t sub_10015A0C8(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  v3 = type metadata accessor for Logger();
  v2[17] = v3;
  v4 = *(v3 - 8);
  v2[18] = v4;
  v5 = *(v4 + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v6 = type metadata accessor for String.Encoding();
  v2[21] = v6;
  v7 = *(v6 - 8);
  v2[22] = v7;
  v8 = *(v7 + 64) + 15;
  v2[23] = swift_task_alloc();

  return (_swift_task_switch)(sub_10015A21C, 0, 0);
}

uint64_t sub_10015A21C()
{
  v1 = *(v0[15] + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_diagnosticsManager);
  v0[24] = v1;
  if (v1)
  {
    type metadata accessor for AccessoryDiagnosticsOptions();
    v2 = swift_allocObject();
    v0[25] = v2;
    *(v2 + 16) = 0;
    *(v2 + 24) = 1;
    *(v2 + 32) = 0;
    *(v2 + 40) = 1;
    *(v2 + 48) = 2;
    *(v2 + 56) = 256;

    v3 = swift_task_alloc();
    v0[26] = v3;
    *v3 = v0;
    v3[1] = sub_10015A464;

    return sub_1000C7C54(v2);
  }

  else
  {
    v5 = type metadata accessor for Errors();
    sub_10016947C(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    *v6 = 0xD00000000000001ALL;
    v6[1] = 0x800000010022F210;
    (*(*(v5 - 8) + 104))(v6, enum case for Errors.NotFound(_:), v5);
    swift_willThrow();
    v7 = v0[23];
    v9 = v0[19];
    v8 = v0[20];

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_10015A464(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 208);
  v10 = *v3;
  *(*v3 + 216) = v2;

  if (v2)
  {
    v8 = sub_10015B038;
  }

  else
  {
    *(v6 + 224) = a2;
    *(v6 + 232) = a1;
    v8 = sub_10015A5C0;
  }

  return (_swift_task_switch)(v8, 0, 0);
}

uint64_t sub_10015A5C0()
{
  v119 = v0;
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v4 = *(v0 + 176);
  v3 = *(v0 + 184);
  v5 = *(v0 + 168);
  static String.Encoding.utf8.getter();
  v6 = String.data(using:allowLossyConversion:)();
  v8 = v7;

  (*(v4 + 8))(v3, v5);
  if (v8 >> 60 == 15)
  {
    v10 = *(v0 + 192);
    v9 = *(v0 + 200);

    goto LABEL_97;
  }

  v12 = *(v0 + 152);
  v11 = *(v0 + 160);
  v13 = *(v0 + 136);
  v14 = *(v0 + 144);
  v15 = *(v0 + 128);
  *(v0 + 104) = v6;
  *(v0 + 112) = v8;
  Logger.init(subsystem:category:)();
  (*(v14 + 16))(v12, v15 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger, v13);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v16, v17))
  {
    goto LABEL_14;
  }

  v18 = swift_slowAlloc();
  *v18 = 134217984;
  swift_beginAccess();
  v19 = *(v0 + 104);
  v20 = *(v0 + 112);
  v21 = v20 >> 62;
  if ((v20 >> 62) > 1)
  {
    v22 = 0;
    if (v21 != 2)
    {
      goto LABEL_13;
    }

    v24 = v19 + 16;
    v19 = *(v19 + 16);
    v23 = *(v24 + 8);
    v25 = __OFSUB__(v23, v19);
    v22 = v23 - v19;
    if (!v25)
    {
      goto LABEL_13;
    }

    __break(1u);
LABEL_11:
    v25 = __OFSUB__(HIDWORD(v19), v19);
    v26 = HIDWORD(v19) - v19;
    if (v25)
    {
      goto LABEL_112;
    }

    v22 = v26;
    goto LABEL_13;
  }

  if (v21)
  {
    goto LABEL_11;
  }

  v22 = BYTE6(v20);
LABEL_13:
  *(v18 + 4) = v22;
  _os_log_impl(&_mh_execute_header, v16, v17, "dumping accessory logs of size %ld bytes", v18, 0xCu);

LABEL_14:

  v114 = *(*(v0 + 144) + 8);
  v114(*(v0 + 152), *(v0 + 136));
  swift_beginAccess();
  while (1)
  {
    v27 = *(v0 + 104);
    v28 = *(v0 + 112);
    v29 = v28 >> 62;
    if ((v28 >> 62) > 1)
    {
      if (v29 != 2)
      {
        break;
      }

      v32 = *(v27 + 16);
      v31 = *(v27 + 24);
      v25 = __OFSUB__(v31, v32);
      v30 = v31 - v32;
      if (v25)
      {
        goto LABEL_104;
      }
    }

    else
    {
      if (v28 >> 62 != 1)
      {
        break;
      }

      LODWORD(v30) = HIDWORD(v27) - v27;
      if (__OFSUB__(HIDWORD(v27), v27))
      {
        goto LABEL_105;
      }

      v30 = v30;
    }

    if (v30 < 30001)
    {
      break;
    }

    if (v29 == 2)
    {
      v33 = *(v27 + 16);
      v34 = *(v27 + 24);
      sub_1000A0CD8(*(v0 + 104), *(v0 + 112));
      if (v34 < v33)
      {
        goto LABEL_100;
      }

      v35 = *(v27 + 16);
      v36 = *(v27 + 24);
    }

    else
    {
      v33 = v27;
      v34 = v27 >> 32;
      sub_1000A0CD8(*(v0 + 104), *(v0 + 112));
      if (v27 >> 32 < v27)
      {
LABEL_100:
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
      }

      v36 = v27 >> 32;
      v35 = v27;
    }

    if (v36 < v34 || v34 < v35)
    {
      goto LABEL_102;
    }

    if (__OFSUB__(v34, v33))
    {
      goto LABEL_103;
    }

    if ((v34 - v33) >> 4 < 0x753)
    {
      if (v29 == 2)
      {
        v37 = *(v27 + 16);
        v38 = *(v27 + 24);
        goto LABEL_43;
      }

      v38 = v27 >> 32;
      goto LABEL_42;
    }

    v38 = v33 + 30000;
    if (__OFADD__(v33, 30000))
    {
      goto LABEL_106;
    }

    if (v29 != 2)
    {
      if (v38 > v27 >> 32 || v38 < v27)
      {
        goto LABEL_107;
      }

LABEL_42:
      v37 = v27;
      goto LABEL_43;
    }

    if (*(v27 + 24) < v38 || v38 < *(v27 + 16))
    {
      goto LABEL_107;
    }

    v37 = *(v27 + 16);
LABEL_43:
    if (v38 < v37)
    {
      goto LABEL_101;
    }

    v39 = Data._Representation.subscript.getter();
    v41 = v40;
    sub_1000A0D2C(v27, v28);
    v42 = *(v0 + 104);
    v43 = *(v0 + 112);
    if ((v43 >> 62) > 1)
    {
      if (v43 >> 62 != 2)
      {
        goto LABEL_113;
      }

      v44 = *(v42 + 24);
    }

    else
    {
      if (v43 >> 62 != 1)
      {
        goto LABEL_113;
      }

      v44 = v42 >> 32;
    }

    sub_1000A0CD8(*(v0 + 104), *(v0 + 112));
    if (v44 < 30000)
    {
      goto LABEL_113;
    }

    v45 = Data._Representation.subscript.getter();
    v47 = v46;
    sub_1000A0D2C(v42, v43);
    *(v0 + 40) = &type metadata for Data;
    *(v0 + 48) = &protocol witness table for Data;
    *(v0 + 16) = v45;
    *(v0 + 24) = v47;
    v48 = sub_1000A09E0((v0 + 16), &type metadata for Data);
    v49 = *v48;
    v50 = v48[1];
    v51 = v50 >> 62;
    if ((v50 >> 62) > 1)
    {
      if (v51 == 2)
      {
        v55 = *(v49 + 16);
        v56 = *(v49 + 24);
        v57 = __DataStorage._bytes.getter();
        if (v57)
        {
          v58 = v57;
          v59 = __DataStorage._offset.getter();
          if (__OFSUB__(v55, v59))
          {
            goto LABEL_110;
          }

          v60 = (v55 - v59 + v58);
          v25 = __OFSUB__(v56, v55);
          v61 = v56 - v55;
          if (v25)
          {
            goto LABEL_109;
          }
        }

        else
        {
          v60 = 0;
          v25 = __OFSUB__(v56, v55);
          v61 = v56 - v55;
          if (v25)
          {
            goto LABEL_109;
          }
        }

        v67 = __DataStorage._length.getter();
        v49 = 0;
        v68 = v67 >= v61 ? v61 : v67;
        v50 = 0xC000000000000000;
        if (v60)
        {
          if (v68)
          {
            if (v68 < 15)
            {
              memset(__dst, 0, sizeof(__dst));
              v118 = v68;
              memcpy(__dst, v60, v68);
              v49 = *__dst;
              v50 = v112 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v118 << 16)) << 32);
              v112 = v50;
              goto LABEL_86;
            }

            goto LABEL_81;
          }
        }
      }
    }

    else
    {
      if (!v51)
      {
        *(v0 + 240) = v49;
        *(v0 + 248) = v50;
        *(v0 + 250) = BYTE2(v50);
        *(v0 + 251) = BYTE3(v50);
        *(v0 + 252) = BYTE4(v50);
        *(v0 + 253) = BYTE5(v50);
        if (BYTE6(v50))
        {
          if (BYTE6(v50) <= 0xEuLL)
          {
            memset(__dst, 0, sizeof(__dst));
            v118 = BYTE6(v50);
            memcpy(__dst, (v0 + 240), BYTE6(v50));
            v49 = *__dst;
            v50 = v115 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v118 << 16)) << 32);
            v115 = v50;
          }

          else
          {
            v52 = type metadata accessor for __DataStorage();
            v53 = *(v52 + 48);
            v54 = *(v52 + 52);
            swift_allocObject();
            v49 = BYTE6(v50) << 32;
            v50 = __DataStorage.init(bytes:length:)() | 0x4000000000000000;
          }
        }

        else
        {
          v49 = 0;
          v50 = 0xC000000000000000;
        }

        goto LABEL_86;
      }

      v62 = (v49 >> 32) - v49;
      if (v49 >> 32 < v49)
      {
        goto LABEL_108;
      }

      v63 = __DataStorage._bytes.getter();
      if (v63)
      {
        v64 = v63;
        v65 = __DataStorage._offset.getter();
        if (__OFSUB__(v49, v65))
        {
          goto LABEL_111;
        }

        v66 = (v49 - v65 + v64);
      }

      else
      {
        v66 = 0;
      }

      v69 = __DataStorage._length.getter();
      v49 = 0;
      if (v69 >= v62)
      {
        v68 = v62;
      }

      else
      {
        v68 = v69;
      }

      v50 = 0xC000000000000000;
      if (v66 && v68)
      {
        if (v68 < 15)
        {
          memset(__dst, 0, sizeof(__dst));
          v118 = v68;
          memcpy(__dst, v66, v68);
          v49 = *__dst;
          v50 = v113 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v118 << 16)) << 32);
          v113 = v50;
          goto LABEL_86;
        }

LABEL_81:
        v70 = type metadata accessor for __DataStorage();
        v71 = *(v70 + 48);
        v72 = *(v70 + 52);
        swift_allocObject();
        v73 = __DataStorage.init(bytes:length:)();
        v74 = v73;
        if (v68 >= 0x7FFFFFFF)
        {
          type metadata accessor for Data.RangeReference();
          v49 = swift_allocObject();
          *(v49 + 16) = 0;
          *(v49 + 24) = v68;
          v50 = v74 | 0x8000000000000000;
        }

        else
        {
          v49 = v68 << 32;
          v50 = v73 | 0x4000000000000000;
        }
      }
    }

LABEL_86:
    v75 = *(v0 + 184);
    sub_100095808((v0 + 16));
    v76 = *(v0 + 104);
    v77 = *(v0 + 112);
    *(v0 + 104) = v49;
    *(v0 + 112) = v50;
    sub_1000A0D2C(v76, v77);
    static String.Encoding.utf8.getter();
    v78 = String.init(data:encoding:)();
    if (v79)
    {
      v80 = v79;
      v81 = v78;
      v82 = *(v0 + 160);
      v83 = Logger.logObject.getter();
      v84 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        *__dst = v86;
        *v85 = 136446210;
        v87 = sub_1000952D4(v81, v80, __dst);

        *(v85 + 4) = v87;
        _os_log_impl(&_mh_execute_header, v83, v84, "%{public}s", v85, 0xCu);
        sub_100095808(v86);

        sub_1000A0D2C(v39, v41);
      }

      else
      {
        sub_1000A0D2C(v39, v41);
      }
    }

    else
    {
      sub_1000A0D2C(v39, v41);
    }
  }

  v88 = *(v0 + 184);
  sub_1000A0CD8(*(v0 + 104), *(v0 + 112));
  static String.Encoding.utf8.getter();
  v89 = String.init(data:encoding:)();
  v91 = v90;
  sub_1000A0D2C(v27, v28);
  if (v91)
  {
    v92 = *(v0 + 160);

    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.default.getter();

    v95 = os_log_type_enabled(v93, v94);
    v96 = *(v0 + 192);
    v97 = *(v0 + 200);
    v98 = *(v0 + 160);
    v99 = *(v0 + 136);
    if (v95)
    {
      v100 = swift_slowAlloc();
      v116 = v98;
      v101 = swift_slowAlloc();
      *__dst = v101;
      *v100 = 136446210;
      v102 = sub_1000952D4(v89, v91, __dst);

      *(v100 + 4) = v102;
      _os_log_impl(&_mh_execute_header, v93, v94, "%{public}s", v100, 0xCu);
      sub_100095808(v101);

      v103 = v116;
    }

    else
    {
      v106 = *(v0 + 200);

      v103 = v98;
    }

    v114(v103, v99);
  }

  else
  {
    v104 = *(v0 + 192);
    v105 = *(v0 + 200);
    v114(*(v0 + 160), *(v0 + 136));
  }

  sub_1000A0D2C(*(v0 + 104), *(v0 + 112));
LABEL_97:
  v107 = *(v0 + 184);
  v108 = *(v0 + 152);
  v109 = *(v0 + 160);

  v110 = *(v0 + 8);

  return v110();
}

uint64_t sub_10015B038()
{
  v2 = v0[24];
  v1 = v0[25];

  v3 = v0[27];
  v4 = v0[23];
  v6 = v0[19];
  v5 = v0[20];

  v7 = v0[1];

  return v7();
}

uint64_t sub_10015B0F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 328) = a4;
  *(v5 + 160) = a3;
  *(v5 + 168) = v4;
  *(v5 + 144) = a1;
  *(v5 + 152) = a2;
  v6 = type metadata accessor for CharacterSet();
  *(v5 + 176) = v6;
  v7 = *(v6 - 8);
  *(v5 + 184) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 192) = swift_task_alloc();
  v9 = *(*(type metadata accessor for UUID() - 8) + 64) + 15;
  *(v5 + 200) = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  *(v5 + 208) = v10;
  v11 = *(v10 - 8);
  *(v5 + 216) = v11;
  v12 = *(v11 + 64) + 15;
  *(v5 + 224) = swift_task_alloc();
  *(v5 + 232) = swift_task_alloc();

  return (_swift_task_switch)(sub_10015B250, 0, 0);
}

uint64_t sub_10015B250()
{
  v1 = *(v0[18] + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_accessoryDescriptionManager);
  v0[30] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[31] = v2;
    *v2 = v0;
    v2[1] = sub_10015B42C;

    return sub_1000E751C();
  }

  else
  {
    v4 = type metadata accessor for Errors();
    sub_10016947C(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    *v5 = 0xD000000000000024;
    v5[1] = 0x80000001002336E0;
    (*(*(v4 - 8) + 104))(v5, enum case for Errors.NotFound(_:), v4);
    swift_willThrow();
    v7 = v0[28];
    v6 = v0[29];
    v9 = v0[24];
    v8 = v0[25];

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_10015B42C(char a1, uint64_t a2, uint64_t a3)
{
  v6 = *v4;
  v7 = *(*v4 + 248);
  v8 = *v4;
  *(v6 + 256) = a2;
  *(v6 + 264) = a3;
  *(v6 + 272) = v3;

  if (v3)
  {
    v9 = sub_10015BED8;
  }

  else
  {
    *(v6 + 329) = a1 & 1;
    v9 = sub_10015B55C;
  }

  return (_swift_task_switch)(v9, 0, 0);
}

uint64_t sub_10015B55C()
{
  if (*(v0 + 329) != 1 || (*(v0 + 328) & 1) != 0)
  {
    v14 = *(v0 + 144);
    v15 = *(v14 + 24);
    if (*(v0 + 160))
    {
      v16 = *(v0 + 200);
      v17 = *(v0 + 152);
      v18 = v15;

      DockCoreInfo.type.getter();
      v19 = *(v14 + 24);
      DockCoreInfo.identifier.getter();

      v20 = objc_allocWithZone(type metadata accessor for DockCoreInfo());
      v21 = DockCoreInfo.init(type:name:identifier:)();
    }

    else
    {
      v21 = v15;
    }

    *(v0 + 280) = v21;
    v28 = *(v0 + 240);
    v29 = swift_task_alloc();
    *(v0 + 288) = v29;
    *v29 = v0;
    v29[1] = sub_10015B7E0;

    return sub_1000E871C();
  }

  else
  {
    v1 = *(v0 + 264);
    v2 = *(v0 + 232);
    v3 = *(v0 + 208);
    v4 = *(v0 + 216);
    v5 = *(v0 + 168);

    (*(v4 + 16))(v2, v5 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger, v3);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 232);
    v10 = *(v0 + 240);
    v11 = *(v0 + 208);
    v12 = *(v0 + 216);
    if (v8)
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Accessory description hash matched, no need to read description", v13, 2u);
    }

    else
    {
    }

    (*(v12 + 8))(v9, v11);
    v23 = *(v0 + 224);
    v22 = *(v0 + 232);
    v25 = *(v0 + 192);
    v24 = *(v0 + 200);

    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_10015B7E0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 288);
  v9 = *v3;
  v4[37] = a1;
  v4[38] = a2;
  v4[39] = v2;

  if (v2)
  {
    v6 = v4[33];

    v7 = sub_10015BF68;
  }

  else
  {
    v7 = sub_10015B900;
  }

  return (_swift_task_switch)(v7, 0, 0);
}

uint64_t sub_10015B900()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 312);
  v3 = *(v0 + 296);
  v4 = *(v0 + 280);
  v5 = *(v0 + 200);
  v6 = *(v0 + 168);
  DockCoreInfo.identifier.getter();
  v7 = objc_allocWithZone(type metadata accessor for AccessoryDescriptionParser());
  v8 = sub_1001E2F8C(v5);
  v9 = OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_parser;
  v10 = *(v6 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_parser);
  *(v6 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_parser) = v8;

  sub_1000A0CD8(v3, v1);
  v11 = sub_10016282C(v3, v1);
  v13 = v12;
  v14 = *(v0 + 296);
  v15 = *(v0 + 304);
  if (!v13)
  {
    *(v0 + 96) = v14;
    *(v0 + 104) = v15;
    sub_1000A0CD8(v14, v15);
    sub_100095274(&unk_1002A9C00, &unk_10023BED0);
    if (swift_dynamicCast())
    {
      sub_1000A0D80((v0 + 56), v0 + 16);
      v16 = *(v0 + 48);
      sub_1000A09E0((v0 + 16), *(v0 + 40));
      if (dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter())
      {
        sub_1000A0D2C(*(v0 + 296), *(v0 + 304));
        v17 = *(v0 + 48);
        sub_1000A09E0((v0 + 16), *(v0 + 40));
        dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
        v11 = *(v0 + 128);
        v13 = *(v0 + 136);
        sub_100095808((v0 + 16));
        goto LABEL_9;
      }

      sub_100095808((v0 + 16));
    }

    else
    {
      *(v0 + 88) = 0;
      *(v0 + 72) = 0u;
      *(v0 + 56) = 0u;
      sub_100095C84(v0 + 56, &unk_1002A6F70, &unk_10023CE60);
    }

    v19 = *(v0 + 296);
    v18 = *(v0 + 304);
    v11 = sub_100162514(v19, v18);
    v13 = v20;
    v14 = v19;
    v15 = v18;
  }

  sub_1000A0D2C(v14, v15);
LABEL_9:
  v22 = *(v0 + 184);
  v21 = *(v0 + 192);
  v23 = *(v0 + 176);
  *(v0 + 112) = v11;
  *(v0 + 120) = v13;
  sub_10016947C(&unk_1002A9C10, &type metadata accessor for CharacterSet);
  dispatch thunk of SetAlgebra.init()();
  *(v0 + 324) = 0;
  dispatch thunk of SetAlgebra.insert(_:)();
  sub_1000E3C10();
  StringProtocol.trimmingCharacters(in:)();
  (*(v22 + 8))(v21, v23);

  v25 = *(v6 + v9);
  if (!v25)
  {
LABEL_37:
    __break(1u);
    return result;
  }

  v26 = v25;
  v27 = sub_1001E31B4();
  if (v2)
  {
    v28 = *(v0 + 280);
    v29 = *(v0 + 264);
    v30 = *(v0 + 240);
    sub_1000A0D2C(*(v0 + 296), *(v0 + 304));

    v32 = *(v0 + 224);
    v31 = *(v0 + 232);
    v34 = *(v0 + 192);
    v33 = *(v0 + 200);

    v35 = *(v0 + 8);
    goto LABEL_30;
  }

  v36 = v27;

  if (!(v36 >> 62))
  {
    result = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_14;
    }

LABEL_19:

    v38 = 0;
    goto LABEL_20;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_19;
  }

LABEL_14:
  if ((v36 & 0xC000000000000001) != 0)
  {
    goto LABEL_35;
  }

  if (!*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_37;
  }

  for (i = v36[4]; ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
  {
    v38 = i;

LABEL_20:
    (*(*(v0 + 216) + 16))(*(v0 + 224), *(v0 + 168) + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger, *(v0 + 208));
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "Accessory Description parsed, adding accessory to DataBase", v41, 2u);
    }

    v43 = *(v0 + 216);
    v42 = *(v0 + 224);
    v44 = *(v0 + 208);

    (*(v43 + 8))(v42, v44);
    if (qword_1002A6780 != -1)
    {
      break;
    }

    if (v38)
    {
      goto LABEL_24;
    }

LABEL_34:
    __break(1u);
LABEL_35:
    ;
  }

  swift_once();
  if (!v38)
  {
    goto LABEL_34;
  }

LABEL_24:
  v45 = *(v0 + 144);
  v46 = qword_1002B1CF0;
  v47 = v38;

  v48 = sub_10018F07C(v47, 1);

  v49 = *(v46 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_keystore);
  v50 = *(v45 + 32);
  v67 = v9;
  v68 = v6;
  if (v50)
  {
    v51 = v49;
    v52 = [v50 identifier];
    if (v52)
    {
      v53 = v52;
      v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v56 = v55;

      goto LABEL_29;
    }
  }

  else
  {
    v57 = v49;
  }

  v54 = 0;
  v56 = 0xE000000000000000;
LABEL_29:
  v59 = *(v0 + 296);
  v58 = *(v0 + 304);
  v60 = *(v0 + 280);
  v61 = *(v0 + 240);
  sub_1001725C4(*(v0 + 256), *(v0 + 264), v54, v56);

  sub_1000A0D2C(v59, v58);

  v62 = *(v68 + v67);
  *(v68 + v67) = 0;

  v64 = *(v0 + 224);
  v63 = *(v0 + 232);
  v66 = *(v0 + 192);
  v65 = *(v0 + 200);

  v35 = *(v0 + 8);
LABEL_30:

  return v35();
}

uint64_t sub_10015BED8()
{
  v1 = v0[30];

  v2 = v0[34];
  v4 = v0[28];
  v3 = v0[29];
  v6 = v0[24];
  v5 = v0[25];

  v7 = v0[1];

  return v7();
}

uint64_t sub_10015BF68()
{
  v1 = *(v0 + 240);

  v2 = *(v0 + 312);
  v4 = *(v0 + 224);
  v3 = *(v0 + 232);
  v6 = *(v0 + 192);
  v5 = *(v0 + 200);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10015C004(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = __chkstk_darwin(v4);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    (*(v5 + 16))(v9, a2 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger, v4);
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18 = v13;
      *v12 = 136315138;
      swift_getErrorValue();
      v14 = Error.localizedDescription.getter();
      v16 = sub_1000952D4(v14, v15, &v18);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "Unable to remove pairing: %s", v12, 0xCu);
      sub_100095808(v13);
    }

    return (*(v5 + 8))(v9, v4);
  }

  return result;
}

void sub_10015C1F8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_10015C264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  v7 = type metadata accessor for Logger();
  v6[13] = v7;
  v8 = *(v7 - 8);
  v6[14] = v8;
  v9 = *(v8 + 64) + 15;
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v10 = swift_task_alloc();
  v6[23] = v10;
  *v10 = v6;
  v10[1] = sub_10015C3AC;

  return sub_1000FAC78();
}

uint64_t sub_10015C3AC()
{
  v1 = *(*v0 + 184);
  v3 = *v0;

  return (_swift_task_switch)(sub_10015C4A8, 0, 0);
}

uint64_t sub_10015C4A8()
{
  v1 = *(v0 + 80);
  v2 = OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_dataStreamController;
  [*(v1 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_dataStreamController) deRegisterFromNotifications];
  [*(v1 + v2) invalidate];
  v3 = *(v1 + v2);
  *(v1 + v2) = 0;

  sub_1000A470C();
  v4 = swift_task_alloc();
  *(v0 + 192) = v4;
  *v4 = v0;
  v4[1] = sub_10015C578;
  v5 = *(v0 + 80);

  return sub_1000FA6C8();
}

uint64_t sub_10015C578()
{
  v1 = *(*v0 + 192);
  v3 = *v0;

  return (_swift_task_switch)(sub_10015C674, 0, 0);
}

uint64_t sub_10015C674()
{
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  *(v0 + 200) = qword_1002B1CF0;
  v2 = *(v1 + 24);
  v3 = sub_1001884E4();

  if (v3)
  {
    v4 = dispatch thunk of DockCoreAccessory.isMagSafe.getter();
    v5 = dispatch thunk of DockCoreAccessory.certified.getter();
    v6 = dispatch thunk of DockCoreAccessory.needsMigration.getter();
  }

  else
  {
    v5 = 0;
    v4 = 0;
    v6 = 0;
  }

  *(v0 + 297) = v4 & 1;
  *(v0 + 296) = v5 & 1;
  v7 = *(*(v0 + 80) + 32);
  if (v7 && (v8 = [v7 name]) != 0)
  {
    v9 = v8;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  *(v0 + 208) = v12;
  v13 = swift_task_alloc();
  *(v0 + 216) = v13;
  *v13 = v0;
  v13[1] = sub_10015C7FC;
  v14 = *(v0 + 80);
  v15 = *(v0 + 88);

  return sub_10015B0F4(v14, v10, v12, v6 & 1);
}

uint64_t sub_10015C7FC()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v7 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v4 = sub_10015E0F0;
  }

  else
  {
    v5 = *(v2 + 208);

    v4 = sub_10015C918;
  }

  return (_swift_task_switch)(v4, 0, 0);
}

uint64_t sub_10015C918()
{
  v134 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 112);
  v3 = *(v0 + 88);
  *(v0 + 232) = type metadata accessor for DockCoreManager();
  v4 = static DockCoreManager.diagnosticsCollectionEnabled.getter();
  v5 = OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger;
  *(v0 + 240) = OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger;
  v6 = *(v2 + 16);
  *(v0 + 248) = v6;
  *(v0 + 256) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7 = *(v0 + 104);
  if (v4)
  {
    v6(*(v0 + 176), v3 + v5, v7);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Diagnostics collection is enabled, initiating.", v10, 2u);
    }

    v11 = *(v0 + 176);
    v12 = *(v0 + 104);
    v13 = *(v0 + 112);

    v14 = *(v13 + 8);
    *(v0 + 264) = v14;
    v14(v11, v12);
    v15 = swift_task_alloc();
    *(v0 + 272) = v15;
    *v15 = v0;
    v15[1] = sub_10015D450;
    v16 = *(v0 + 80);

    return sub_1000F77BC();
  }

  else
  {
    v6(*(v0 + 160), v3 + v5, v7);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 160);
    v22 = *(v0 + 104);
    v23 = *(v0 + 112);
    if (v20)
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Diagnostics collection is not enabled, ignoring.", v24, 2u);
    }

    v25 = *(v23 + 8);
    v25(v21, v22);
    v26 = *(v0 + 96);
    v27 = *(*(v0 + 80) + 24);
    v28 = [v26 firmwareVersion];
    if (v28)
    {
      v29 = v28;
      v132 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;
    }

    else
    {
      v132 = 0;
      v31 = 0;
    }

    v32 = [*(v0 + 96) serialNumber];
    if (v32)
    {
      v33 = v32;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;
    }

    else
    {
      v35 = 0;
    }

    v36 = [*(v0 + 96) model];
    if (v36)
    {
      v37 = v36;
      v130 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;
    }

    else
    {
      v130 = 0;
      v39 = 0;
    }

    v40 = *(v0 + 200);
    v41 = sub_1001884E4();
    if (v41)
    {
      v42 = v41;
      v125 = v1;
      v128 = v35;
      v119 = *(v0 + 112) + 16;
      v120 = *(v0 + 200);
      v118 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger;
      (*(v0 + 248))(*(v0 + 152), v120 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, *(v0 + 104));

      v127 = v27;
      v43 = v27;

      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.default.getter();

      v46 = os_log_type_enabled(v44, v45);
      v47 = *(v0 + 152);
      v123 = *(v0 + 112);
      v124 = *(v0 + 104);
      if (v46)
      {
        v121 = v25;
        v48 = swift_slowAlloc();
        v116 = swift_slowAlloc();
        v133[0] = swift_slowAlloc();
        *v48 = 138412802;
        *(v48 + 4) = v43;
        *v116 = v43;
        *(v48 + 12) = 2080;
        *(v0 + 40) = v132;
        *(v0 + 48) = v31;
        v49 = v43;

        sub_100095274(&unk_1002A6F20, &unk_10023C660);
        v50 = String.init<A>(describing:)();
        v117 = v47;
        v52 = v31;
        v53 = sub_1000952D4(v50, v51, v133);

        *(v48 + 14) = v53;
        v31 = v52;
        *(v48 + 22) = 2080;
        *(v0 + 56) = v130;
        *(v0 + 64) = v39;

        v54 = String.init<A>(describing:)();
        v56 = sub_1000952D4(v54, v55, v133);

        *(v48 + 24) = v56;
        _os_log_impl(&_mh_execute_header, v44, v45, "Updating accessory information for %@: firmware %s, model %s", v48, 0x20u);
        sub_100095C84(v116, &unk_1002A6F60, &unk_10023C4E0);

        swift_arrayDestroy();

        v25 = v121;

        v57 = v117;
      }

      else
      {

        v57 = v47;
      }

      v25(v57, v124);
      if (!v31)
      {
        dispatch thunk of DockCoreAccessory.firmwareVersion.getter();
      }

      dispatch thunk of DockCoreAccessory.firmwareVersion.setter();
      if (!v128)
      {
        dispatch thunk of DockCoreAccessory.serialNumber.getter();
      }

      dispatch thunk of DockCoreAccessory.serialNumber.setter();
      if (!v39)
      {
        dispatch thunk of DockCoreAccessory.model.getter();
      }

      v58 = *(v0 + 297);
      v59 = *(v0 + 296);
      v60 = *(v0 + 200);

      dispatch thunk of DockCoreAccessory.model.setter();
      dispatch thunk of DockCoreAccessory.certified.setter();
      dispatch thunk of DockCoreAccessory.isMagSafe.setter();
      sub_10018F7CC(v42);
      if (v125)
      {
        (*(v0 + 248))(*(v0 + 144), v120 + v118, *(v0 + 104));
        swift_errorRetain();
        v61 = Logger.logObject.getter();
        v62 = static os_log_type_t.error.getter();

        v63 = os_log_type_enabled(v61, v62);
        v64 = *(v0 + 144);
        v65 = *(v0 + 104);
        v131 = *(v0 + 112);
        if (v63)
        {
          v122 = v25;
          v66 = swift_slowAlloc();
          v129 = v65;
          v67 = swift_slowAlloc();
          v133[0] = v67;
          *v66 = 136315138;
          swift_getErrorValue();
          v126 = v64;
          v69 = *(v0 + 16);
          v68 = *(v0 + 24);
          v70 = *(v0 + 32);
          v71 = Error.localizedDescription.getter();
          v73 = sub_1000952D4(v71, v72, v133);

          *(v66 + 4) = v73;
          _os_log_impl(&_mh_execute_header, v61, v62, "Unable to update dock accessory: %s", v66, 0xCu);
          sub_100095808(v67);

          v25 = v122;

          v122(v126, v129);
        }

        else
        {

          v25(v64, v65);
        }
      }

      else
      {
      }

      v27 = v127;
    }

    else
    {
    }

    v74 = *(v0 + 80);

    v75 = *(v74 + 16);
    if (v75)
    {
      v76 = *(v0 + 200);
      v77 = v75;
      sub_1000F7FF0(0);

      v78 = *(v74 + 16);
      if (v78)
      {
        v79 = *&v78[OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral];
        if (v79)
        {
          v80 = *(*(v76 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager) + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_firmwareUpdateManager);
          v81 = v78;
          if ([v79 state] == 2)
          {
            v82 = v25;
            v83 = *(v0 + 80);
            v84 = *(v0 + 112) + 16;
            (*(v0 + 248))(*(v0 + 136), *(v0 + 88) + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger, *(v0 + 104));
            v85 = v80;

            v86 = Logger.logObject.getter();
            v87 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v86, v87))
            {
              v88 = *(v0 + 80);
              v89 = swift_slowAlloc();
              v90 = swift_slowAlloc();
              *v89 = 138412546;
              v91 = *(v88 + 24);
              *(v89 + 4) = v91;
              *v90 = v91;
              *(v89 + 12) = 2048;
              *(v89 + 14) = 0x404E000000000000;
              v92 = v91;
              _os_log_impl(&_mh_execute_header, v86, v87, "Setting accessory reachable %@ after %f secs", v89, 0x16u);
              sub_100095C84(v90, &unk_1002A6F60, &unk_10023C4E0);
            }

            v93 = *(v0 + 232);
            v94 = *(v0 + 136);
            v95 = *(v0 + 104);
            v96 = *(v0 + 112);
            v97 = *(v0 + 80);

            v82(v94, v95);
            v98 = static DockCoreManager.localFirmwarePath.getter();
            v100 = v99;
            v101 = *(v97 + 40);
            v102 = swift_allocObject();
            *(v102 + 16) = v85;
            *(v102 + 24) = v97;
            *(v102 + 32) = 1;
            *(v102 + 40) = v98;
            *(v102 + 48) = v100;
            v103 = objc_allocWithZone(type metadata accessor for RepeatingTimer());
            v104 = v85;

            v105 = v101;
            v106 = RepeatingTimer.init(interval:fireOnce:queue:_:)();

            v80 = *&v104[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_reachabilityTimer];
            *&v104[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_reachabilityTimer] = v106;
          }

          else
          {
          }
        }
      }
    }

    v108 = *(v0 + 168);
    v107 = *(v0 + 176);
    v110 = *(v0 + 152);
    v109 = *(v0 + 160);
    v112 = *(v0 + 136);
    v111 = *(v0 + 144);
    v114 = *(v0 + 120);
    v113 = *(v0 + 128);

    v115 = *(v0 + 8);

    return v115();
  }
}

uint64_t sub_10015D450()
{
  v1 = *(*v0 + 272);
  v3 = *v0;

  return (_swift_task_switch)(sub_10015D54C, 0, 0);
}

uint64_t sub_10015D54C()
{
  v1 = *(v0 + 256);
  (*(v0 + 248))(*(v0 + 168), *(v0 + 88) + *(v0 + 240), *(v0 + 104));
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "collecting diagnostics and dumping to sys logs", v4, 2u);
  }

  v5 = *(v0 + 264);
  v6 = *(v0 + 168);
  v7 = *(v0 + 104);
  v8 = *(v0 + 112);

  v5(v6, v7);
  v9 = swift_task_alloc();
  *(v0 + 280) = v9;
  *v9 = v0;
  v9[1] = sub_10015D6A0;
  v10 = *(v0 + 80);
  v11 = *(v0 + 88);

  return sub_10015A0C8(v10);
}

uint64_t sub_10015D6A0()
{
  v2 = *(*v1 + 280);
  v5 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = sub_10015ED74;
  }

  else
  {
    v3 = sub_10015D7B4;
  }

  return (_swift_task_switch)(v3, 0, 0);
}

uint64_t sub_10015D7B4()
{
  v113 = v0;
  v1 = *(v0 + 288);
  v2 = *(v0 + 264);
  v3 = *(v0 + 96);
  v4 = *(*(v0 + 80) + 24);
  v5 = [v3 firmwareVersion];
  if (v5)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = [*(v0 + 96) serialNumber];
  if (v10)
  {
    v11 = v10;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = [*(v0 + 96) model];
  if (v14)
  {
    v15 = v14;
    v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
  }

  else
  {
    v111 = 0;
    v17 = 0;
  }

  v18 = *(v0 + 200);
  v19 = sub_1001884E4();
  if (v19)
  {
    v20 = v19;
    v109 = v7;
    v107 = v13;
    v98 = *(v0 + 112) + 16;
    v99 = *(v0 + 200);
    v97 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger;
    (*(v0 + 248))(*(v0 + 152), v99 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, *(v0 + 104));

    v106 = v4;
    v21 = v4;

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v0 + 152);
    v102 = *(v0 + 112);
    v103 = *(v0 + 104);
    v104 = v1;
    if (v24)
    {
      v100 = v2;
      v26 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v112[0] = swift_slowAlloc();
      *v26 = 138412802;
      *(v26 + 4) = v21;
      *v95 = v21;
      *(v26 + 12) = 2080;
      *(v0 + 40) = v109;
      *(v0 + 48) = v9;
      v27 = v21;

      sub_100095274(&unk_1002A6F20, &unk_10023C660);
      v28 = String.init<A>(describing:)();
      v96 = v25;
      v30 = v9;
      v31 = sub_1000952D4(v28, v29, v112);

      *(v26 + 14) = v31;
      v9 = v30;
      *(v26 + 22) = 2080;
      *(v0 + 56) = v111;
      *(v0 + 64) = v17;

      v32 = String.init<A>(describing:)();
      v34 = sub_1000952D4(v32, v33, v112);

      *(v26 + 24) = v34;
      _os_log_impl(&_mh_execute_header, v22, v23, "Updating accessory information for %@: firmware %s, model %s", v26, 0x20u);
      sub_100095C84(v95, &unk_1002A6F60, &unk_10023C4E0);

      swift_arrayDestroy();

      v2 = v100;

      v35 = v96;
    }

    else
    {

      v35 = v25;
    }

    v2(v35, v103);
    if (!v9)
    {
      dispatch thunk of DockCoreAccessory.firmwareVersion.getter();
    }

    dispatch thunk of DockCoreAccessory.firmwareVersion.setter();
    if (!v107)
    {
      dispatch thunk of DockCoreAccessory.serialNumber.getter();
    }

    dispatch thunk of DockCoreAccessory.serialNumber.setter();
    if (!v17)
    {
      dispatch thunk of DockCoreAccessory.model.getter();
    }

    v36 = *(v0 + 297);
    v37 = *(v0 + 296);
    v38 = *(v0 + 200);

    dispatch thunk of DockCoreAccessory.model.setter();
    dispatch thunk of DockCoreAccessory.certified.setter();
    dispatch thunk of DockCoreAccessory.isMagSafe.setter();
    sub_10018F7CC(v20);
    if (v104)
    {
      (*(v0 + 248))(*(v0 + 144), v99 + v97, *(v0 + 104));
      swift_errorRetain();
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();

      v41 = os_log_type_enabled(v39, v40);
      v42 = *(v0 + 144);
      v43 = *(v0 + 104);
      v110 = *(v0 + 112);
      if (v41)
      {
        v101 = v2;
        v44 = swift_slowAlloc();
        v108 = v43;
        v45 = swift_slowAlloc();
        v112[0] = v45;
        *v44 = 136315138;
        swift_getErrorValue();
        v105 = v42;
        v47 = *(v0 + 16);
        v46 = *(v0 + 24);
        v48 = *(v0 + 32);
        v49 = Error.localizedDescription.getter();
        v51 = sub_1000952D4(v49, v50, v112);

        *(v44 + 4) = v51;
        _os_log_impl(&_mh_execute_header, v39, v40, "Unable to update dock accessory: %s", v44, 0xCu);
        sub_100095808(v45);

        v2 = v101;

        v101(v105, v108);
      }

      else
      {

        v2(v42, v43);
      }
    }

    else
    {
    }

    v4 = v106;
  }

  else
  {
  }

  v52 = *(v0 + 80);

  v53 = *(v52 + 16);
  if (v53)
  {
    v54 = *(v0 + 200);
    v55 = v53;
    sub_1000F7FF0(0);

    v56 = *(v52 + 16);
    if (v56)
    {
      v57 = *&v56[OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral];
      if (v57)
      {
        v58 = *(*(v54 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager) + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_firmwareUpdateManager);
        v59 = v56;
        if ([v57 state] == 2)
        {
          v60 = v2;
          v61 = *(v0 + 80);
          v62 = *(v0 + 112) + 16;
          (*(v0 + 248))(*(v0 + 136), *(v0 + 88) + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger, *(v0 + 104));
          v63 = v58;

          v64 = Logger.logObject.getter();
          v65 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v64, v65))
          {
            v66 = *(v0 + 80);
            v67 = swift_slowAlloc();
            v68 = swift_slowAlloc();
            *v67 = 138412546;
            v69 = *(v66 + 24);
            *(v67 + 4) = v69;
            *v68 = v69;
            *(v67 + 12) = 2048;
            *(v67 + 14) = 0x404E000000000000;
            v70 = v69;
            _os_log_impl(&_mh_execute_header, v64, v65, "Setting accessory reachable %@ after %f secs", v67, 0x16u);
            sub_100095C84(v68, &unk_1002A6F60, &unk_10023C4E0);
          }

          v71 = *(v0 + 232);
          v72 = *(v0 + 136);
          v73 = *(v0 + 104);
          v74 = *(v0 + 112);
          v75 = *(v0 + 80);

          v60(v72, v73);
          v76 = static DockCoreManager.localFirmwarePath.getter();
          v78 = v77;
          v79 = *(v75 + 40);
          v80 = swift_allocObject();
          *(v80 + 16) = v63;
          *(v80 + 24) = v75;
          *(v80 + 32) = 1;
          *(v80 + 40) = v76;
          *(v80 + 48) = v78;
          v81 = objc_allocWithZone(type metadata accessor for RepeatingTimer());
          v82 = v63;

          v83 = v79;
          v84 = RepeatingTimer.init(interval:fireOnce:queue:_:)();

          v58 = *&v82[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_reachabilityTimer];
          *&v82[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_reachabilityTimer] = v84;
        }

        else
        {
        }
      }
    }
  }

  v86 = *(v0 + 168);
  v85 = *(v0 + 176);
  v88 = *(v0 + 152);
  v87 = *(v0 + 160);
  v90 = *(v0 + 136);
  v89 = *(v0 + 144);
  v92 = *(v0 + 120);
  v91 = *(v0 + 128);

  v93 = *(v0 + 8);

  return v93();
}

uint64_t sub_10015E0F0()
{
  v129 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);
  v3 = *(v0 + 128);
  v4 = *(v0 + 104);
  v5 = *(v0 + 112);
  v6 = *(v0 + 88);

  v7 = &unk_1002B1000;
  (*(v5 + 16))(v3, v6 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger, v4);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 224);
  if (v10)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v14;
    *v13 = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "Accessory description read failed with error: %@", v12, 0xCu);
    sub_100095C84(v13, &unk_1002A6F60, &unk_10023C4E0);
  }

  else
  {
    v15 = *(v0 + 224);
  }

  (*(*(v0 + 112) + 8))(*(v0 + 128), *(v0 + 104));
  v16 = *(v0 + 112);
  v17 = *(v0 + 88);
  *(v0 + 232) = type metadata accessor for DockCoreManager();
  v18 = static DockCoreManager.diagnosticsCollectionEnabled.getter();
  v19 = OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger;
  *(v0 + 240) = OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger;
  v20 = *(v16 + 16);
  *(v0 + 248) = v20;
  *(v0 + 256) = (v16 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v21 = *(v0 + 104);
  if (v18)
  {
    v20(*(v0 + 176), v17 + v19, v21);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Diagnostics collection is enabled, initiating.", v24, 2u);
    }

    v25 = *(v0 + 176);
    v26 = *(v0 + 104);
    v27 = *(v0 + 112);

    v28 = *(v27 + 8);
    *(v0 + 264) = v28;
    v28(v25, v26);
    v29 = swift_task_alloc();
    *(v0 + 272) = v29;
    *v29 = v0;
    v29[1] = sub_10015D450;
    v30 = *(v0 + 80);

    return sub_1000F77BC();
  }

  else
  {
    v20(*(v0 + 160), v17 + v19, v21);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    v34 = os_log_type_enabled(v32, v33);
    v35 = *(v0 + 160);
    v36 = *(v0 + 104);
    v37 = *(v0 + 112);
    if (v34)
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Diagnostics collection is not enabled, ignoring.", v38, 2u);
    }

    v39 = *(v37 + 8);
    v39(v35, v36);
    v40 = *(v0 + 96);
    v41 = *(*(v0 + 80) + 24);
    v42 = [v40 firmwareVersion];
    if (v42)
    {
      v43 = v42;
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;
    }

    else
    {
      v44 = 0;
      v46 = 0;
    }

    v47 = [*(v0 + 96) serialNumber];
    if (v47)
    {
      v48 = v47;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;
    }

    else
    {
      v50 = 0;
    }

    v51 = [*(v0 + 96) model];
    if (v51)
    {
      v52 = v51;
      v127 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v54 = v53;
    }

    else
    {
      v127 = 0;
      v54 = 0;
    }

    v55 = *(v0 + 200);
    v56 = sub_1001884E4();
    if (v56)
    {
      v57 = v56;
      v126 = v44;
      v124 = v50;
      v120 = *(v0 + 112) + 16;
      (*(v0 + 248))(*(v0 + 152), *(v0 + 200) + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, *(v0 + 104));

      v123 = v41;
      v58 = v41;

      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.default.getter();

      v61 = os_log_type_enabled(v59, v60);
      v62 = *(v0 + 152);
      v121 = *(v0 + 112);
      v122 = *(v0 + 104);
      v125 = v46;
      if (v61)
      {
        v119 = *(v0 + 152);
        v63 = swift_slowAlloc();
        v118 = swift_slowAlloc();
        v128[0] = swift_slowAlloc();
        *v63 = 138412802;
        *(v63 + 4) = v58;
        *v118 = v58;
        *(v63 + 12) = 2080;
        *(v0 + 40) = v126;
        *(v0 + 48) = v46;
        v64 = v58;

        sub_100095274(&unk_1002A6F20, &unk_10023C660);
        v65 = String.init<A>(describing:)();
        v67 = v39;
        v68 = sub_1000952D4(v65, v66, v128);

        *(v63 + 14) = v68;
        v39 = v67;
        *(v63 + 22) = 2080;
        *(v0 + 56) = v127;
        *(v0 + 64) = v54;

        v69 = String.init<A>(describing:)();
        v71 = sub_1000952D4(v69, v70, v128);

        *(v63 + 24) = v71;
        v46 = v125;
        _os_log_impl(&_mh_execute_header, v59, v60, "Updating accessory information for %@: firmware %s, model %s", v63, 0x20u);
        sub_100095C84(v118, &unk_1002A6F60, &unk_10023C4E0);
        v7 = &unk_1002B1000;

        swift_arrayDestroy();

        v72 = v119;
      }

      else
      {

        v72 = v62;
      }

      v39(v72, v122);
      if (!v46)
      {
        dispatch thunk of DockCoreAccessory.firmwareVersion.getter();
      }

      dispatch thunk of DockCoreAccessory.firmwareVersion.setter();
      if (!v124)
      {
        dispatch thunk of DockCoreAccessory.serialNumber.getter();
      }

      dispatch thunk of DockCoreAccessory.serialNumber.setter();
      if (!v54)
      {
        dispatch thunk of DockCoreAccessory.model.getter();
      }

      v73 = *(v0 + 297);
      v74 = *(v0 + 296);
      v75 = *(v0 + 200);

      dispatch thunk of DockCoreAccessory.model.setter();
      dispatch thunk of DockCoreAccessory.certified.setter();
      dispatch thunk of DockCoreAccessory.isMagSafe.setter();
      sub_10018F7CC(v57);

      v41 = v123;
    }

    else
    {
    }

    v76 = *(v0 + 80);

    v77 = *(v76 + 16);
    if (v77)
    {
      v78 = *(v0 + 200);
      v79 = v77;
      sub_1000F7FF0(0);

      v80 = *(v76 + 16);
      if (v80)
      {
        v81 = *&v80[OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral];
        if (v81)
        {
          v82 = *(*(v78 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager) + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_firmwareUpdateManager);
          v83 = v80;
          if ([v81 state] == 2)
          {
            v84 = v39;
            v85 = *(v0 + 80);
            v86 = *(v0 + 112) + 16;
            (*(v0 + 248))(*(v0 + 136), *(v0 + 88) + v7[401], *(v0 + 104));
            v87 = v82;

            v88 = Logger.logObject.getter();
            v89 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v88, v89))
            {
              v90 = *(v0 + 80);
              v91 = swift_slowAlloc();
              v92 = swift_slowAlloc();
              *v91 = 138412546;
              v93 = *(v90 + 24);
              *(v91 + 4) = v93;
              *v92 = v93;
              *(v91 + 12) = 2048;
              *(v91 + 14) = 0x404E000000000000;
              v94 = v93;
              _os_log_impl(&_mh_execute_header, v88, v89, "Setting accessory reachable %@ after %f secs", v91, 0x16u);
              sub_100095C84(v92, &unk_1002A6F60, &unk_10023C4E0);
            }

            v95 = *(v0 + 232);
            v96 = *(v0 + 136);
            v97 = *(v0 + 104);
            v98 = *(v0 + 112);
            v99 = *(v0 + 80);

            v84(v96, v97);
            v100 = static DockCoreManager.localFirmwarePath.getter();
            v102 = v101;
            v103 = *(v99 + 40);
            v104 = swift_allocObject();
            *(v104 + 16) = v87;
            *(v104 + 24) = v99;
            *(v104 + 32) = 1;
            *(v104 + 40) = v100;
            *(v104 + 48) = v102;
            v105 = objc_allocWithZone(type metadata accessor for RepeatingTimer());
            v106 = v87;

            v107 = v103;
            v108 = RepeatingTimer.init(interval:fireOnce:queue:_:)();

            v82 = *&v106[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_reachabilityTimer];
            *&v106[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_reachabilityTimer] = v108;
          }

          else
          {
          }
        }
      }
    }

    v110 = *(v0 + 168);
    v109 = *(v0 + 176);
    v112 = *(v0 + 152);
    v111 = *(v0 + 160);
    v114 = *(v0 + 136);
    v113 = *(v0 + 144);
    v116 = *(v0 + 120);
    v115 = *(v0 + 128);

    v117 = *(v0 + 8);

    return v117();
  }
}

uint64_t sub_10015ED74()
{
  v102 = v0;
  v1 = *(v0 + 288);
  v2 = *(v0 + 256);
  (*(v0 + 248))(*(v0 + 120), *(v0 + 88) + *(v0 + 240), *(v0 + 104));
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 288);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Diagnostics transfer request failed with %@", v7, 0xCu);
    sub_100095C84(v8, &unk_1002A6F60, &unk_10023C4E0);
  }

  else
  {
    v10 = *(v0 + 288);
  }

  v11 = *(v0 + 112) + 8;
  (*(v0 + 264))(*(v0 + 120), *(v0 + 104));
  v12 = *(v0 + 264);
  v13 = *(v0 + 96);
  v14 = *(*(v0 + 80) + 24);
  v15 = [v13 firmwareVersion];
  if (v15)
  {
    v16 = v15;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  v20 = [*(v0 + 96) serialNumber];
  if (v20)
  {
    v21 = v20;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v24 = [*(v0 + 96) model];
  if (v24)
  {
    v25 = v24;
    v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;
  }

  else
  {
    v100 = 0;
    v27 = 0;
  }

  v28 = *(v0 + 200);
  v29 = sub_1001884E4();
  if (v29)
  {
    v30 = v29;
    v99 = v23;
    v94 = *(v0 + 112) + 16;
    (*(v0 + 248))(*(v0 + 152), *(v0 + 200) + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, *(v0 + 104));

    v98 = v14;
    v31 = v14;

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();

    v34 = os_log_type_enabled(v32, v33);
    v35 = *(v0 + 152);
    v96 = *(v0 + 112);
    v97 = *(v0 + 104);
    if (v34)
    {
      v93 = *(v0 + 152);
      v36 = swift_slowAlloc();
      v95 = v12;
      v92 = swift_slowAlloc();
      v101[0] = swift_slowAlloc();
      *v36 = 138412802;
      *(v36 + 4) = v31;
      *v92 = v31;
      *(v36 + 12) = 2080;
      *(v0 + 40) = v17;
      *(v0 + 48) = v19;
      v37 = v31;

      sub_100095274(&unk_1002A6F20, &unk_10023C660);
      v38 = String.init<A>(describing:)();
      v40 = v19;
      v41 = sub_1000952D4(v38, v39, v101);

      *(v36 + 14) = v41;
      v19 = v40;
      *(v36 + 22) = 2080;
      *(v0 + 56) = v100;
      *(v0 + 64) = v27;

      v42 = String.init<A>(describing:)();
      v44 = sub_1000952D4(v42, v43, v101);

      *(v36 + 24) = v44;
      _os_log_impl(&_mh_execute_header, v32, v33, "Updating accessory information for %@: firmware %s, model %s", v36, 0x20u);
      sub_100095C84(v92, &unk_1002A6F60, &unk_10023C4E0);
      v12 = v95;

      swift_arrayDestroy();

      v45 = v93;
    }

    else
    {

      v45 = v35;
    }

    v12(v45, v97);
    if (!v19)
    {
      dispatch thunk of DockCoreAccessory.firmwareVersion.getter();
    }

    dispatch thunk of DockCoreAccessory.firmwareVersion.setter();
    if (!v99)
    {
      dispatch thunk of DockCoreAccessory.serialNumber.getter();
    }

    dispatch thunk of DockCoreAccessory.serialNumber.setter();
    if (!v27)
    {
      dispatch thunk of DockCoreAccessory.model.getter();
    }

    v46 = *(v0 + 297);
    v47 = *(v0 + 296);
    v48 = *(v0 + 200);

    dispatch thunk of DockCoreAccessory.model.setter();
    dispatch thunk of DockCoreAccessory.certified.setter();
    dispatch thunk of DockCoreAccessory.isMagSafe.setter();
    sub_10018F7CC(v30);

    v14 = v98;
  }

  else
  {
  }

  v49 = *(v0 + 80);

  v50 = *(v49 + 16);
  if (v50)
  {
    v51 = *(v0 + 200);
    v52 = v50;
    sub_1000F7FF0(0);

    v53 = *(v49 + 16);
    if (v53)
    {
      v54 = *&v53[OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral];
      if (v54)
      {
        v55 = *(*(v51 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager) + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_firmwareUpdateManager);
        v56 = v53;
        if ([v54 state] == 2)
        {
          v57 = v12;
          v58 = *(v0 + 80);
          v59 = *(v0 + 112) + 16;
          (*(v0 + 248))(*(v0 + 136), *(v0 + 88) + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger, *(v0 + 104));
          v60 = v55;

          v61 = Logger.logObject.getter();
          v62 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v61, v62))
          {
            v63 = *(v0 + 80);
            v64 = swift_slowAlloc();
            v65 = swift_slowAlloc();
            *v64 = 138412546;
            v66 = *(v63 + 24);
            *(v64 + 4) = v66;
            *v65 = v66;
            *(v64 + 12) = 2048;
            *(v64 + 14) = 0x404E000000000000;
            v67 = v66;
            _os_log_impl(&_mh_execute_header, v61, v62, "Setting accessory reachable %@ after %f secs", v64, 0x16u);
            sub_100095C84(v65, &unk_1002A6F60, &unk_10023C4E0);
          }

          v68 = *(v0 + 232);
          v69 = *(v0 + 136);
          v70 = *(v0 + 104);
          v71 = *(v0 + 112);
          v72 = *(v0 + 80);

          v57(v69, v70);
          v73 = static DockCoreManager.localFirmwarePath.getter();
          v75 = v74;
          v76 = *(v72 + 40);
          v77 = swift_allocObject();
          *(v77 + 16) = v60;
          *(v77 + 24) = v72;
          *(v77 + 32) = 1;
          *(v77 + 40) = v73;
          *(v77 + 48) = v75;
          v78 = objc_allocWithZone(type metadata accessor for RepeatingTimer());
          v79 = v60;

          v80 = v76;
          v81 = RepeatingTimer.init(interval:fireOnce:queue:_:)();

          v55 = *&v79[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_reachabilityTimer];
          *&v79[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_reachabilityTimer] = v81;
        }

        else
        {
        }
      }
    }
  }

  v83 = *(v0 + 168);
  v82 = *(v0 + 176);
  v85 = *(v0 + 152);
  v84 = *(v0 + 160);
  v87 = *(v0 + 136);
  v86 = *(v0 + 144);
  v89 = *(v0 + 120);
  v88 = *(v0 + 128);

  v90 = *(v0 + 8);

  return v90();
}

void sub_10015F948(Class a1, void *a2, uint64_t a3, unint64_t a4)
{
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 1);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = (&v110 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!a2)
  {
    return;
  }

  v14 = [a2 cbCharacteristic];
  if (!v14)
  {
    return;
  }

  if (!a1)
  {

    return;
  }

  v119 = v14;
  v15 = *&v4[OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_manager];
  v116 = v13;
  v118 = a4;
  if (!v15)
  {
    v124 = 0;
    v122 = 0u;
    v123 = 0u;
    v36 = a1;
    goto LABEL_31;
  }

  v117 = v4;
  v16 = v15;
  v17 = [(objc_class *)a1 identifier];
  if (!v17)
  {
    __break(1u);
    return;
  }

  v18 = v17;
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v120 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
  v22 = *&v16[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
  OS_dispatch_semaphore.wait()();

  v23 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
  swift_beginAccess();
  v24 = *&v16[v23];
  v25 = *(v24 + 16);
  if (!v25)
  {
LABEL_24:
    v37 = *&v16[v120];
    OS_dispatch_semaphore.signal()();

    v124 = 0;
    v122 = 0u;
    v123 = 0u;

    goto LABEL_27;
  }

  v111 = v16;
  v112 = a3;
  v113 = v10;
  v114 = v9;
  v115 = a1;
  v26 = v24 + 32;

  v27 = 0;
  while (1)
  {
    if (v27 >= *(v24 + 16))
    {
      __break(1u);
LABEL_85:

LABEL_86:
      v109 = *(a1 + v118);

      os_unfair_lock_unlock(v109 + 4);

      sub_100187818();

      return;
    }

    sub_1000A097C(v26, v121);
    v28 = *(*sub_1000A09E0(v121, v121[3]) + 32);
    if (!v28)
    {
      goto LABEL_9;
    }

    v29 = v28;
    v30 = [v29 identifier];
    if (v30)
    {
      break;
    }

LABEL_8:

LABEL_9:
    v27 = (v27 + 1);
    sub_100095808(v121);
    v26 += 40;
    if (v25 == v27)
    {

      a1 = v115;
      v9 = v114;
      v10 = v113;
      a3 = v112;
      v16 = v111;
      goto LABEL_24;
    }
  }

  v31 = v30;
  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  a1 = v33;

  if (v32 != v19 || a1 != v21)
  {
    v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v35)
    {
      goto LABEL_26;
    }

    goto LABEL_8;
  }

LABEL_26:

  v38 = v111;
  v39 = *&v111[v120];
  OS_dispatch_semaphore.signal()();

  sub_1000A097C(v121, &v122);
  sub_100095808(v121);

  a1 = v115;
  v9 = v114;
  v10 = v113;
  a3 = v112;
LABEL_27:
  v4 = v117;
  if (!*(&v123 + 1))
  {
LABEL_31:
    v40 = a3;
    sub_100095C84(&v122, &unk_1002A6F40, &unk_10023BE90);
    v120 = 0;
    goto LABEL_32;
  }

  v40 = a3;
  sub_100095274(&unk_1002A7A90, &unk_10023C960);
  type metadata accessor for DaemonAccessory();
  v41 = swift_dynamicCast();
  v42 = v121[0];
  if (!v41)
  {
    v42 = 0;
  }

  v120 = v42;
LABEL_32:
  v43 = v4;
  sub_100095B94(0, &qword_1002A7270, NSObject_ptr);
  v25 = v119;
  v44 = &stru_10029A000;
  v45 = [(objc_class *)v25 UUID];
  if (qword_1002A6718 != -1)
  {
    swift_once();
  }

  v46 = static NSObject.== infix(_:_:)();

  if ((v46 & 1) == 0)
  {
    v47 = [(objc_class *)v25 UUID];
    if (qword_1002A6720 != -1)
    {
      swift_once();
    }

    v48 = static NSObject.== infix(_:_:)();

    if ((v48 & 1) == 0)
    {
      v49 = [(objc_class *)v25 UUID];
      if (qword_1002A6740 != -1)
      {
        goto LABEL_88;
      }

      while (1)
      {
        v50 = static NSObject.== infix(_:_:)();

        if ((v50 & 1) == 0)
        {
          break;
        }

        if (!v120)
        {

          goto LABEL_47;
        }

        v51 = *(v120 + 24);
        v119 = type metadata accessor for AccessorySystemEvent();
        v52 = objc_allocWithZone(v119);
        v53 = v51;
        sub_1000A0CD8(v40, v118);
        v54 = AccessorySystemEvent.init(data:name:)();
        if (!v54)
        {

          goto LABEL_47;
        }

        v55 = v54;
        v117 = v53;
        v115 = a1;
        v56 = v116;
        (*(v10 + 16))(v116, v43 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger, v9);
        v57 = v55;
        v58 = v118;
        sub_1000A0CD8(v40, v118);
        v59 = v57;
        v60 = v9;
        v61 = v10;
        v62 = Logger.logObject.getter();
        v63 = static os_log_type_t.default.getter();
        sub_1000A0D2C(v40, v58);
        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          v114 = swift_slowAlloc();
          *&v122 = v114;
          *v64 = 136315394;
          v65 = sub_10013B46C(v40, v58);
          v66 = v60;
          v68 = sub_1000952D4(v65, v67, &v122);

          *(v64 + 4) = v68;
          *(v64 + 12) = 256;
          v69 = AccessorySystemEvent.header.getter();

          *(v64 + 14) = v69;
          _os_log_impl(&_mh_execute_header, v62, v63, "Got accessory event: %s -> %hhu", v64, 0xFu);
          sub_100095808(v114);

          (*(v61 + 8))(v56, v66);
        }

        else
        {

          (*(v61 + 8))(v56, v60);
        }

        v21 = v59;
        v71 = AccessorySystemEvent.header.getter();
        v72 = static AccessorySystemEvent.kHeaderCameraShutter.getter();
        v19 = v115;
        v44 = v117;
        if (v71 == v72)
        {
          v73 = AccessorySystemEvent.payload.getter();
          if (v73 == static AccessorySystemEvent.kHeaderEventRelease.getter())
          {
            if (qword_1002A6780 != -1)
            {
              swift_once();
            }

            v44 = qword_1002B1CF0;
            a1 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
            v74 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

            os_unfair_lock_lock(v74 + 4);

            v75 = *(v44 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_foregroundAppIDs);
            v76 = *(v75 + 16);
            v118 = v44;
            if (v76)
            {
              v116 = a1;
              v77 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_dockKitApps;

              swift_beginAccess();
              v78 = 0;
              v79 = (v75 + 40);
              while (v78 < *(v75 + 16))
              {
                if (*(*(v44 + v77) + 16))
                {
                  v81 = *(v79 - 1);
                  v80 = *v79;

                  sub_10016D4D0(v81, v80);
                  LOBYTE(v81) = v82;

                  v44 = v118;

                  if (v81)
                  {

                    v19 = v115;
                    a1 = v116;
                    goto LABEL_66;
                  }
                }

                ++v78;
                v79 += 2;
                if (v76 == v78)
                {

                  v19 = v115;
                  a1 = v116;
                  goto LABEL_64;
                }
              }

              __break(1u);
LABEL_90:
              swift_once();
              goto LABEL_69;
            }

LABEL_64:
            v83 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_dockKitApps;
            swift_beginAccess();
            v84 = *(v44 + v83);

            v85 = cameracaptureIdentifier.getter();
            if (!*(v84 + 16))
            {
              goto LABEL_85;
            }

            sub_10016D4D0(v85, v86);
            v88 = v87;

            if ((v88 & 1) == 0)
            {
              goto LABEL_86;
            }

LABEL_66:
            v89 = *(a1 + v118);

            os_unfair_lock_unlock(v89 + 4);

            v44 = v117;
          }
        }

        v90 = AccessorySystemEvent.header.getter();
        if (v90 != static AccessorySystemEvent.kHeaderCameraFlip.getter())
        {
          goto LABEL_83;
        }

        v119 = v21;
        if (qword_1002A6780 != -1)
        {
          goto LABEL_90;
        }

LABEL_69:
        v91 = qword_1002B1CF0;
        v92 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
        v93 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

        os_unfair_lock_lock(v93 + 4);

        v49 = *(v91 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_foregroundAppIDs);
        v10 = v49[2];
        v40 = v91;
        if (!v10)
        {
LABEL_77:
          v97 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_dockKitApps;
          swift_beginAccess();
          v98 = *(v91 + v97);

          v99 = cameracaptureIdentifier.getter();
          if (*(v98 + 16))
          {
            sub_10016D4D0(v99, v100);
            v102 = v101;

            v19 = v115;
            if (v102)
            {
LABEL_79:
              v103 = *(v40 + v92);

              os_unfair_lock_unlock(v103 + 4);

              v104 = *(v40 + v92);

              os_unfair_lock_lock(v104 + 4);

              v105 = sub_1001F3BB8(_swiftEmptyArrayStorage);
              v106 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_previousCameraSessions;
              swift_beginAccess();
              v107 = *(v40 + v106);
              *(v40 + v106) = v105;
              goto LABEL_81;
            }
          }

          else
          {

            v19 = v115;
LABEL_81:
          }

          v108 = *(v40 + v92);

          os_unfair_lock_unlock(v108 + 4);

          v21 = v119;
LABEL_83:
          sub_1001688C0(v44, v21);

          goto LABEL_47;
        }

        v118 = v92;
        v9 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_dockKitApps;

        swift_beginAccess();
        a1 = 0;
        v43 = v49 + 5;
        while (a1 < v49[2])
        {
          if (*(*(v9 + v91) + 16))
          {
            v95 = *(v43 - 1);
            v94 = *v43;

            sub_10016D4D0(v95, v94);
            v44 = v96;

            v91 = v40;

            if (v44)
            {

              v19 = v115;
              v44 = v117;
              v92 = v118;
              goto LABEL_79;
            }
          }

          a1 = (a1 + 1);
          v43 += 2;
          if (v10 == a1)
          {

            v44 = v117;
            v92 = v118;
            goto LABEL_77;
          }
        }

        __break(1u);
LABEL_88:
        swift_once();
      }
    }
  }

  if (v120)
  {

    v70 = [v25 *(v44 + 2560)];

    sub_1001A43DC(v70, v40, v118, 0);
  }

  else
  {
  }

LABEL_47:
}

void sub_100160974(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v92 = a5;
  v93 = a6;
  v97 = a3;
  v95 = a1;
  v96 = type metadata accessor for Logger();
  v9 = *(v96 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v96);
  v12 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100095274(&qword_1002A7AF0, &qword_10023C9D0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v85 - v15;
  v17 = type metadata accessor for UUID();
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17);
  v94 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v85 - v22;
  __chkstk_darwin(v21);
  v25 = &v85 - v24;
  v26 = a2;
  v28 = v27;
  v30 = v29;
  sub_1000B5150(v26, v16, &qword_1002A7AF0, &qword_10023C9D0);
  if ((*(v30 + 48))(v16, 1, v28) == 1)
  {
    sub_100095C84(v16, &qword_1002A7AF0, &qword_10023C9D0);
    return;
  }

  (*(v30 + 32))(v25, v16, v28);
  if (a4 >> 60 == 15)
  {
    (*(v30 + 8))(v25, v28);
    return;
  }

  v31 = v9;
  v32 = *(v9 + 16);
  v89 = v6;
  v33 = v96;
  v32(v12, &v6[OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger], v96);
  v34 = *(v30 + 16);
  v91 = v25;
  v88 = v34;
  (v34)(v23, v25, v28);
  v90 = a4;
  sub_1000A0CD8(v97, a4);
  v35 = v28;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  v38 = os_log_type_enabled(v36, v37);
  v87 = v30;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v98[0] = v85;
    *v39 = 136315138;
    sub_10016947C(&unk_1002A6F90, &type metadata accessor for UUID);
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    v41 = v30;
    v43 = v42;
    v86 = *(v41 + 8);
    v86(v23, v35);
    v44 = sub_1000952D4(v40, v43, v98);

    *(v39 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v36, v37, "Request to validate SW token: %s", v39, 0xCu);
    sub_100095808(v85);

    (*(v31 + 8))(v12, v96);
  }

  else
  {

    v86 = *(v30 + 8);
    v86(v23, v35);
    (*(v31 + 8))(v12, v33);
  }

  v45 = v89;
  v46 = v95;
  if (!v95)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v47 = v94;
  v88(v94, v91);
  v48 = type metadata accessor for AccessoryServer();
  v98[3] = v48;
  v98[4] = &off_1002792F0;
  v98[0] = v45;
  v49 = type metadata accessor for DockAccessorySWAuth(0);
  v50 = *(v49 + 48);
  v51 = *(v49 + 52);
  v52 = swift_allocObject();
  v53 = sub_1000E4984(v98, v48);
  v54 = *(*(v48 - 8) + 64);
  __chkstk_darwin(v53);
  v56 = (&v85 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v57 + 16))(v56);
  v58 = *v56;
  v59 = v97;
  v60 = v90;
  sub_1000B4F20(v97, v90);
  v61 = v46;
  v62 = v45;
  v63 = sub_100168E8C(v58, v61, v47, v59, v60, v52);
  sub_1000A452C(v59, v60);

  sub_100095808(v98);
  v64 = OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_auth;
  v65 = *&v62[OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_auth];
  *&v62[OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_auth] = v63;

  v66 = objc_opt_self();
  v67 = *(v63 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_token);
  v68 = *(v63 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_token + 8);
  sub_1000A0CD8(v67, v68);
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_1000A0D2C(v67, v68);
  LODWORD(v66) = [v66 isTokenValidForFeatures:32 token:isa];

  if (!v66)
  {
    sub_1000B346C();
    v72 = swift_allocError();
    *v73 = 5;
    sub_100153E88(0, v72);

    v74 = *&v62[OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_manager];
    if (v74)
    {
      v75 = v74;
      v76 = [v61 identifier];
      if (!v76)
      {
LABEL_24:
        __break(1u);
        return;
      }

      v77 = v76;
      v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v80 = v79;

      v81 = swift_allocError();
      *v82 = 5;
      v83 = sub_1001F29A8(_swiftEmptyArrayStorage);
      if (!*&v75[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_proxCard])
      {
        sub_1000A452C(v97, v90);

        v86(v91, v35);

        return;
      }

      v75[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingState] = 0;
      v84 = *&v75[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_server];
      sub_100156798(v78, v80, 6, v83, v81);
    }

    sub_1000A452C(v97, v90);
    goto LABEL_18;
  }

  if (!*&v62[v64])
  {
    goto LABEL_22;
  }

  v70 = v90;
  v71 = v93;
  if (!v93)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  sub_1001B26B8(v92, v71);

  sub_1000A452C(v97, v70);
LABEL_18:
  v86(v91, v35);
}

id sub_100161618(void *a1, uint64_t a2, id a3, unint64_t a4)
{
  v31 = a3;
  v11 = sub_100095274(&qword_1002A7AF0, &qword_10023C9D0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v31 - v13;
  if (*(v4 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_auth))
  {
    v15 = a4 >> 60 == 15;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    v5 = type metadata accessor for UUID();
    v6 = *(v5 - 8);
    v7 = *(v6 + 48);
    if (v7(a2, 1, v5) != 1)
    {
LABEL_13:
      sub_1000B5150(a2, v14, &qword_1002A7AF0, &qword_10023C9D0);
      result = v7(v14, 1, v5);
      if (result != 1)
      {

        sub_1001B46E0(v31, a4, v14);

        return (*(v6 + 8))(v14, v5);
      }

      goto LABEL_23;
    }
  }

  sub_1000B346C();
  a4 = swift_allocError();
  *v16 = 7;
  sub_100153E88(0, a4);

  v18 = *(v4 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_manager);
  if (!v18)
  {
    if (a1)
    {
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_13;
  }

  if (!a1)
  {
    __break(1u);
    goto LABEL_22;
  }

  v19 = v18;
  result = [a1 identifier];
  if (!result)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return result;
  }

  v20 = result;
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v24 = swift_allocError();
  *v25 = 7;
  v26 = sub_1001F29A8(_swiftEmptyArrayStorage);
  if (*&v19[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_proxCard])
  {
    v19[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingState] = 0;
    v27 = *&v19[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_server];
    sub_100156798(v21, v23, 6, v26, v24);
  }

  else
  {
  }

LABEL_16:
  v32 = 0;
  v28 = [a1 stopPairingWithError:{&v32, v31}];
  v29 = v32;
  if (v28)
  {

    return v29;
  }

  else
  {
    v31 = v32;
    v30 = v32;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void sub_100161B78(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_auth);
  *(v2 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_auth) = 0;

  if (a2)
  {
    sub_100153E88(0, a2);
    v7 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_manager);
    if (!v7)
    {
      if (a1)
      {
LABEL_15:
        v25 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_workQueue);
        aBlock[4] = MotionFeedback.init(positions:velocities:);
        aBlock[5] = 0;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10015C1F8;
        aBlock[3] = &unk_100279340;
        v26 = _Block_copy(aBlock);
        v27 = v25;
        [a1 removePairingForCurrentControllerOnQueue:v27 completion:v26];
        _Block_release(v26);

        return;
      }

      goto LABEL_23;
    }

    if (a1)
    {
      v8 = v7;
      v9 = [a1 identifier];
      if (v9)
      {
        v10 = v9;
        v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v13 = v12;

        v14 = sub_1001F29A8(_swiftEmptyArrayStorage);
        if (*&v8[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_proxCard])
        {
          v8[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingState] = 0;
          v15 = *&v8[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_server];
          sub_100156798(v11, v13, 6, v14, a2);
        }

        goto LABEL_15;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v28 = [objc_allocWithZone(HAPAccessoryPairingRequest) init];
  [v28 setRequiresUserConsent:0];
  [v28 setPairingIdentity:0];
  v16 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_manager);
  if (v16)
  {
    if (!a1)
    {
      goto LABEL_22;
    }

    v17 = v16;
    v18 = [a1 identifier];
    if (!v18)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v19 = v18;
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23 = sub_1001F29A8(_swiftEmptyArrayStorage);
    if (*&v17[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_proxCard])
    {
      v17[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingState] = 5;
      v24 = *&v17[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_server];
      sub_100156798(v20, v22, 2, v23, 0);
    }
  }

  else if (!a1)
  {
LABEL_25:
    __break(1u);
    return;
  }

  [a1 tearDownSessionOnAuthCompletion];
  [a1 startPairingWithRequest:v28];
}

id sub_100161FBC()
{
  v1 = v0;
  v16 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v16 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v16);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  Logger.init(subsystem:category:)();
  *&v0[OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_manager] = 0;
  v15 = OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_workQueue;
  v10 = sub_100095B94(0, &qword_1002A6820, OS_dispatch_queue_ptr);
  v14[1] = "Cannot find token for accessory";
  v14[2] = v10;
  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_10016947C(&qword_1002A7110, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100095274(&unk_1002A6830, &unk_10023AB20);
  sub_1000E4D54(&qword_1002A7120, &unk_1002A6830, &unk_10023AB20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v16);
  *&v0[v15] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v0[OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_parser] = 0;
  *&v0[OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_pairingInterval] = 0xBFF0000000000000;
  *&v0[OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_auth] = 0;
  v11 = OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_virtualEventService;
  *&v1[v11] = [objc_allocWithZone(type metadata accessor for VirtualEventService()) init];
  v12 = type metadata accessor for AccessoryServer();
  v17.receiver = v1;
  v17.super_class = v12;
  return objc_msgSendSuper2(&v17, "init");
}

id sub_100162310()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccessoryServer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AccessoryServer()
{
  result = qword_1002A9BE8;
  if (!qword_1002A9BE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100162458()
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

uint64_t sub_100162514(uint64_t a1, unint64_t a2)
{
  sub_1000A0CD8(a1, a2);
  v4 = *(sub_1001626B0(a1, a2) + 2);
  v5 = static String._fromUTF8Repairing(_:)();

  return v5;
}

uint64_t sub_100162580@<X0>(uint64_t *a1@<X8>)
{
  result = static String._fromUTF8Repairing(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_1001625BC(void *(*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return 0;
  }

  v6 = a3;
  result = a1(&v7, &v6);
  if (!v4)
  {
    return v7;
  }

  __break(1u);
  return result;
}

unint64_t *sub_100162614(unint64_t *result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_100163140(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_1001626B0(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = __chkstk_darwin(v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
LABEL_12:
      sub_1000A0D2C(a1, a2);
      return &_swiftEmptyArrayStorage;
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      if (v11)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v10)
    {
      goto LABEL_10;
    }

    v11 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v14 = sub_1001F7A30(v11, 0);
      v15 = Data._copyContents(initializing:)();
      sub_1000A0D2C(a1, a2);
      v16 = *(v5 + 8);
      v5 += 8;
      v16(v9, v4);
      result = v14;
      if (v15 == v11)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v17 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v11 = v17;
      if (!v17)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_10016282C(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return static String._fromUTF8Repairing(_:)();
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    return static String._fromUTF8Repairing(_:)();
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = __DataStorage._bytes.getter();
  if (a1)
  {
    a1 = __DataStorage._offset.getter();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!__DataStorage._bytes.getter() || !__OFSUB__(v5, __DataStorage._offset.getter()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  __DataStorage._length.getter();
  return static String._fromUTF8Repairing(_:)();
}

unint64_t sub_1001629D8@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  result = *a1;
  v5 = *a2;
  if ((v5 & 0xC000000000000001) != 0)
  {
    result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v5 + 8 * result + 32);

LABEL_5:
    *a3 = result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_100162A44(uint64_t result)
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

uint64_t sub_100162AE0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v36 = *a1 >> 62;
  v4 = *a1 & 0xFFFFFFFFFFFFFF8;
  if (v36)
  {
    goto LABEL_70;
  }

  v38 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v39 = a2;
  v40 = a3;
  v5 = 0;
  while (v38 != v5)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(v4 + 16))
      {
        goto LABEL_66;
      }

      v6 = *(v3 + 8 * v5 + 32);
    }

    v7 = *(v6 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_setupPayload + 32);
    v8 = *(v6 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_setupPayload + 40);
    sub_1000A0CD8(v7, v8);
    v9 = sub_10014025C(v7, v8);
    v11 = v10;
    sub_1000A0D2C(v7, v8);
    if (v9 == v39 && v11 == v40)
    {

LABEL_21:
      v16 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
        goto LABEL_24;
      }

      while (1)
      {
        if (v3 >> 62)
        {
          if (v16 == _CocoaArrayWrapper.endIndex.getter())
          {
            return v5;
          }
        }

        else if (v16 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          return v5;
        }

        v4 = v3 & 0xC000000000000001;
        if ((v3 & 0xC000000000000001) != 0)
        {
          v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v16 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_64:
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
            v33 = a3;
            v34 = a2;
            v35 = _CocoaArrayWrapper.endIndex.getter();
            a2 = v34;
            a3 = v33;
            v38 = v35;
            goto LABEL_3;
          }

          if (v16 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_64;
          }

          v17 = *(v3 + 8 * v16 + 32);
        }

        v18 = *(v17 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_setupPayload + 32);
        v19 = *(v17 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_setupPayload + 40);
        sub_1000A0CD8(v18, v19);
        v20 = sub_10014025C(v18, v19);
        v22 = v21;
        sub_1000A0D2C(v18, v19);
        if (v20 == v39 && v22 == v40)
        {
LABEL_24:
        }

        else
        {
          v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v24 & 1) == 0)
          {
            if (v5 != v16)
            {
              if (v4)
              {
                v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if ((v5 & 0x8000000000000000) != 0)
                {
                  __break(1u);
LABEL_72:
                  __break(1u);
LABEL_73:
                  __break(1u);
                  return result;
                }

                v27 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v5 >= v27)
                {
                  goto LABEL_72;
                }

                if (v16 >= v27)
                {
                  goto LABEL_73;
                }

                v25 = *(v3 + 32 + 8 * v5);
                v26 = *(v3 + 32 + 8 * v16);
              }

              if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
              {
                v3 = sub_1001A347C(v3);
                v28 = (v3 >> 62) & 1;
              }

              else
              {
                LODWORD(v28) = 0;
              }

              v29 = v3 & 0xFFFFFFFFFFFFFF8;
              v30 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v5 + 0x20);
              *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v5 + 0x20) = v26;

              if ((v3 & 0x8000000000000000) != 0 || v28)
              {
                v3 = sub_1001A347C(v3);
                v29 = v3 & 0xFFFFFFFFFFFFFF8;
                if ((v16 & 0x8000000000000000) != 0)
                {
LABEL_61:
                  __break(1u);
                  return _CocoaArrayWrapper.endIndex.getter();
                }
              }

              else if ((v16 & 0x8000000000000000) != 0)
              {
                goto LABEL_61;
              }

              if (v16 >= *(v29 + 16))
              {
                goto LABEL_69;
              }

              v31 = v29 + 8 * v16;
              v32 = *(v31 + 32);
              *(v31 + 32) = v25;

              *a1 = v3;
            }

            v14 = __OFADD__(v5++, 1);
            if (v14)
            {
              goto LABEL_68;
            }
          }
        }

        v14 = __OFADD__(v16++, 1);
        if (v14)
        {
          goto LABEL_65;
        }
      }
    }

    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v13)
    {
      goto LABEL_21;
    }

    v14 = __OFADD__(v5++, 1);
    if (v14)
    {
      goto LABEL_67;
    }
  }

  if (v36)
  {
    return _CocoaArrayWrapper.endIndex.getter();
  }

  return *(v4 + 16);
}

void sub_100162EB0(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    (*(v7 + 16))(v10, v3 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger, v6);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Accessory uncertified, requesting user permission.", v13, 2u);
    }

    (*(v7 + 8))(v10, v6);
    v14 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_manager);
    if (v14)
    {
      v15 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_proxCard;
      if (*&v14[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_proxCard])
      {
        if (a1)
        {
          v16 = v14;
          v17 = [a1 identifier];
          if (v17)
          {
            v18 = v17;
            v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v21 = v20;

            v22 = sub_1001F29A8(&off_100274E90);
            sub_100095C84(&unk_100274EB0, &unk_1002A9C60, &qword_10023FEF0);
            if (*&v14[v15])
            {
              v16[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingState] = 3;
              v23 = *&v16[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_server];
              sub_100156798(v19, v21, 1, v22, 0);
            }

            v24 = *&v14[v15];
            if (v24)
            {
              v25 = v24;

              v25[OBJC_IVAR____TtC14dockaccessoryd13DKProxManager_requiresSWAuth] = 0;
              return;
            }

            goto LABEL_15;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
LABEL_15:
        __break(1u);
      }
    }
  }
}

uint64_t sub_100163140(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v46 = a2;
  v54 = a4;
  v47 = a1;
  v5 = &qword_1002A98D0;
  v53 = sub_100095274(&qword_1002A98D0, &unk_10023FFF0);
  v6 = *(*(v53 - 8) + 64);
  v7 = __chkstk_darwin(v53);
  v52 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v57 = (&v46 - v9);
  v10 = type metadata accessor for BTDiscoveredDevice();
  v51 = *(v10 - 8);
  v11 = *(v51 + 64);
  result = __chkstk_darwin(v10 - 8);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = 0;
  v15 = 0;
  v55 = a3;
  v18 = a3[8];
  v17 = a3 + 8;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v50 = v14;
  while (v21)
  {
    v23 = __clz(__rbit64(v21));
    v56 = (v21 - 1) & v21;
LABEL_11:
    v26 = v23 | (v15 << 6);
    v27 = v55[7];
    v28 = (v55[6] + 16 * v26);
    v29 = *v28;
    v30 = v28[1];
    v31 = *(v51 + 72);
    v49 = v26;
    sub_1000E40C4(v27 + v31 * v26, v14);
    v32 = v57;
    *v57 = v29;
    v32[1] = v30;
    v33 = v53;
    sub_1000E40C4(v14, v32 + *(v53 + 48));
    v34 = v32;
    v35 = v52;
    v36 = v5;
    sub_1000B5150(v34, v52, v5, &unk_10023FFF0);
    v37 = *(v35 + 8);
    swift_bridgeObjectRetain_n();

    v38 = v35 + *(v33 + 48);
    v39 = *(v38 + 8);
    v40 = v39;
    sub_1000E4128(v38);
    v41 = *(v54 + 16);
    if (v41)
    {
      v42 = *(v41 + OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral);
      v43 = v42;
      if (v39)
      {
        if (!v42)
        {
          goto LABEL_17;
        }

        sub_100095B94(0, &unk_1002A98E0, CBPeripheral_ptr);
        v44 = static NSObject.== infix(_:_:)();
        v5 = v36;
        sub_100095C84(v57, v36, &unk_10023FFF0);

        v14 = v50;
        sub_1000E4128(v50);

        v21 = v56;
        if (v44)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v5 = v36;
        sub_100095C84(v57, v36, &unk_10023FFF0);
        if (!v42)
        {
          goto LABEL_21;
        }

LABEL_19:

        v14 = v50;
        sub_1000E4128(v50);

        v21 = v56;
      }
    }

    else
    {
      if (v39)
      {
LABEL_17:
        v5 = v36;
        sub_100095C84(v57, v36, &unk_10023FFF0);
        v43 = v40;
        goto LABEL_19;
      }

      v5 = v36;
      sub_100095C84(v57, v36, &unk_10023FFF0);
LABEL_21:
      v14 = v50;
      sub_1000E4128(v50);

      v21 = v56;
LABEL_22:
      *(v47 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
      if (__OFADD__(v48++, 1))
      {
        __break(1u);
        return sub_1001CA268(v47, v46, v48, v55);
      }
    }
  }

  v24 = v15;
  while (1)
  {
    v15 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v15 >= v22)
    {
      return sub_1001CA268(v47, v46, v48, v55);
    }

    v25 = v17[v15];
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v56 = (v25 - 1) & v25;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100163528(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;
  v10 = swift_retain_n();
  if (v7 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v11 = sub_100162614(v13, v8, a1, a2);

      return v11;
    }
  }

  __chkstk_darwin(v10);
  bzero(&v14 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0), v9);

  v11 = sub_100163140((&v14 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0)), v8, a1, a2);

  if (v3)
  {
    swift_willThrow();
  }

  return v11;
}

void *sub_1001636E8(void *result)
{
  v50 = result;
  v1 = result[2];
  if (v1)
  {
    result = *(v1 + OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral);
    if (result)
    {
      result = [result services];
      if (result)
      {
        v2 = result;
        sub_100095B94(0, &qword_1002A9840, CBService_ptr);
        v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v47 = v3;
        if (v3 >> 62)
        {
          goto LABEL_62;
        }

        for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
        {
          v5 = 0;
          v46 = v47 + 32;
          while ((v47 & 0xC000000000000001) != 0)
          {
            v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v7 = __OFADD__(v5, 1);
            v8 = v5 + 1;
            if (v7)
            {
              goto LABEL_59;
            }

LABEL_14:
            v48 = v6;
            v49 = v8;
            v9 = [v6 characteristics];
            if (v9)
            {
              v10 = v9;
              sub_100095B94(0, &unk_1002A9830, CBCharacteristic_ptr);
              v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              if (!(v11 >> 62))
              {
                goto LABEL_16;
              }
            }

            else
            {
              v11 = _swiftEmptyArrayStorage;
              if (!(_swiftEmptyArrayStorage >> 62))
              {
LABEL_16:
                v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (!v12)
                {
                  goto LABEL_7;
                }

                goto LABEL_17;
              }
            }

            v12 = _CocoaArrayWrapper.endIndex.getter();
            if (!v12)
            {
              goto LABEL_7;
            }

LABEL_17:
            sub_100095B94(0, &unk_1002A9C50, CBUUID_ptr);
            if (v12 < 1)
            {
              goto LABEL_60;
            }

            for (j = 0; j != v12; ++j)
            {
              if ((v11 & 0xC000000000000001) != 0)
              {
                v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v14 = *(v11 + 8 * j + 32);
              }

              v15 = v14;
              v16 = [v14 UUID];
              if (qword_1002A6718 != -1)
              {
                swift_once();
              }

              v17 = qword_1002B1C30;
              v18 = static NSObject.== infix(_:_:)();

              if (v18)
              {
                goto LABEL_68;
              }

              v19 = [v15 UUID];
              if (qword_1002A6720 != -1)
              {
                swift_once();
              }

              v20 = qword_1002B1C38;
              v21 = static NSObject.== infix(_:_:)();

              if (v21)
              {
                goto LABEL_68;
              }

              v22 = [v15 UUID];
              if (qword_1002A6728 != -1)
              {
                swift_once();
              }

              v23 = qword_1002B1C40;
              v24 = static NSObject.== infix(_:_:)();

              if (v24)
              {
                goto LABEL_68;
              }

              v25 = [v15 UUID];
              if (qword_1002A6748 != -1)
              {
                swift_once();
              }

              v26 = qword_1002B1C60;
              v27 = static NSObject.== infix(_:_:)();

              if (v27)
              {
                goto LABEL_68;
              }

              v28 = [v15 UUID];
              if (qword_1002A6750 != -1)
              {
                swift_once();
              }

              v29 = qword_1002B1C68;
              v30 = static NSObject.== infix(_:_:)();

              if (v30)
              {
                goto LABEL_68;
              }

              v31 = [v15 UUID];
              if (qword_1002A6730 != -1)
              {
                swift_once();
              }

              v32 = qword_1002B1C48;
              v33 = static NSObject.== infix(_:_:)();

              if (v33)
              {
                goto LABEL_68;
              }

              v34 = [v15 UUID];
              if (qword_1002A6738 != -1)
              {
                swift_once();
              }

              v35 = qword_1002B1C50;
              v36 = static NSObject.== infix(_:_:)();

              if (v36)
              {
                goto LABEL_68;
              }

              v37 = [v15 UUID];
              if (qword_1002A6740 != -1)
              {
                swift_once();
              }

              v38 = qword_1002B1C58;
              v39 = static NSObject.== infix(_:_:)();

              if (v39)
              {
                goto LABEL_68;
              }

              v40 = [v15 UUID];
              if (qword_1002A6760 != -1)
              {
                swift_once();
              }

              v41 = qword_1002B1C78;
              v42 = static NSObject.== infix(_:_:)();

              if (v42)
              {
LABEL_68:
                if (([v15 properties] & 0x10) != 0 || (objc_msgSend(v15, "properties") & 0x20) != 0)
                {
                  v43 = v50[2];
                  if (v43)
                  {
                    v44 = *(v43 + OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral);
                    if (v44)
                    {
                      v45 = v44;
                      [v45 setNotifyValue:1 forCharacteristic:v15];
                    }
                  }
                }
              }
            }

LABEL_7:

            v5 = v49;
            if (v49 == i)
            {
              goto LABEL_63;
            }
          }

          if (v5 >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_61;
          }

          v6 = *(v46 + 8 * v5);
          v7 = __OFADD__(v5, 1);
          v8 = v5 + 1;
          if (!v7)
          {
            goto LABEL_14;
          }

LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          ;
        }

LABEL_63:
      }
    }
  }

  return result;
}

void sub_100163DF8(char *a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_100095274(&unk_1002A73C0, &unk_10023BE80);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v139 - v10;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = __chkstk_darwin(v12);
  v16 = __chkstk_darwin(v15);
  v17 = __chkstk_darwin(v16);
  v19 = &v139 - v18;
  v20 = __chkstk_darwin(v17);
  __chkstk_darwin(v20);
  v25 = &v139 - v21;
  if (!a3)
  {
    if (a2)
    {
      v41 = a2 >> 62;
      if (a2 >> 62)
      {
        goto LABEL_87;
      }

      if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_10;
      }

LABEL_88:
      (v13[2])(v19, &v4[OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger], v12);
      v130 = Logger.logObject.getter();
      v131 = v13;
      v132 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v130, v132))
      {
        v133 = swift_slowAlloc();
        *v133 = 0;
        _os_log_impl(&_mh_execute_header, v130, v132, "Error while discoverying accessory: No accessories.", v133, 2u);
      }

      (v131[1])(v19, v12);
      return;
    }

    goto LABEL_104;
  }

  v145 = v22;
  v149 = a1;
  v26 = v13[2];
  v141 = OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger;
  v143 = (v13 + 2);
  v142 = v26;
  (v26)(&v139 - v21, &v4[OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger], v12);
  swift_errorRetain();
  v27 = v13;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();

  v30 = os_log_type_enabled(v28, v29);
  v150 = v12;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v32 = v4;
    v33 = swift_slowAlloc();
    *&aBlock = v33;
    *v31 = 136315138;
    swift_getErrorValue();
    v34 = Error.localizedDescription.getter();
    v36 = sub_1000952D4(v34, v35, &aBlock);

    *(v31 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v28, v29, "Error while discoverying accessory: %s", v31, 0xCu);
    sub_100095808(v33);
    v4 = v32;

    v12 = v150;
  }

  v144 = v27[1];
  v144(v25, v12);
  v148 = v27;
  swift_getErrorValue();
  v37 = dispatch thunk of Error._domain.getter();
  v39 = v38;
  if (v37 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v39 == v40)
  {

LABEL_27:
    swift_getErrorValue();
    dispatch thunk of Error._code.getter();
    goto LABEL_28;
  }

  v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v56)
  {
    goto LABEL_27;
  }

LABEL_28:
  v13 = _convertErrorToNSError(_:)();
  [v13 isHAPError];
  v57 = *&v4[OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_manager];
  v58 = v149;
  if (!v57)
  {

    v153 = 0;
    aBlock = 0u;
    v152 = 0u;
LABEL_57:
    sub_100095C84(&aBlock, &unk_1002A6F40, &unk_10023BE90);
    return;
  }

  if (!v149)
  {
    goto LABEL_102;
  }

  v59 = v57;
  v60 = [v58 identifier];
  if (!v60)
  {
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  v61 = v60;
  a2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v62;

  v147 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
  v63 = *&v59[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
  OS_dispatch_semaphore.wait()();

  a1 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
  swift_beginAccess();
  v19 = *&a1[v59];
  v12 = *(v19 + 2);
  if (!v12)
  {
    goto LABEL_46;
  }

  v139 = v59;
  v140 = v13;
  v146 = v4;
  v64 = (v19 + 32);

  v4 = 0;
  while (v4 < *(v19 + 2))
  {
    sub_1000A097C(v64, &v155);
    v65 = *(*sub_1000A09E0(&v155, v156) + 32);
    if (v65)
    {
      v13 = v65;
      v66 = [v13 identifier];
      if (v66)
      {
        v67 = v66;
        v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        a1 = v69;

        if (v68 == a2 && a1 == v11)
        {

LABEL_55:

          v87 = v139;
          v88 = *&v139[v147];
          OS_dispatch_semaphore.signal()();

          sub_1000A097C(&v155, &aBlock);
          sub_100095808(&v155);

          v73 = v150;
          v4 = v146;
          v13 = v140;
          if (!*(&v152 + 1))
          {
LABEL_56:

            goto LABEL_57;
          }

LABEL_47:
          sub_100095274(&unk_1002A7A90, &unk_10023C960);
          type metadata accessor for DaemonAccessory();
          if ((swift_dynamicCast() & 1) == 0)
          {

            return;
          }

          if (*(v155 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_paired) == 1)
          {
            v140 = v13;
            *(v155 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_paired) = 0;
            v74 = v145;
            (v142)(v145, &v4[v141], v73);
            v75 = v149;
            v76 = Logger.logObject.getter();
            v77 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v76, v77))
            {
              v78 = swift_slowAlloc();
              v79 = swift_slowAlloc();
              *&aBlock = v79;
              *v78 = 136315138;
              v80 = [v75 identifier];

              if (v80)
              {
                v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v83 = v82;

                v84 = sub_1000952D4(v81, v83, &aBlock);

                *(v78 + 4) = v84;
                _os_log_impl(&_mh_execute_header, v76, v77, "Attempting to remove pairing for undiscovered accessory %s", v78, 0xCu);
                sub_100095808(v79);

                v85 = v145;
                v86 = v150;
                goto LABEL_69;
              }

LABEL_107:
              __break(1u);
              return;
            }

            v85 = v74;
            v86 = v73;
LABEL_69:
            v144(v85, v86);
            v114 = *&v4[OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_workQueue];
            v115 = swift_allocObject();
            *(v115 + 16) = v4;
            v153 = sub_100169A5C;
            v154 = v115;
            *&aBlock = _NSConcreteStackBlock;
            *(&aBlock + 1) = 1107296256;
            *&v152 = sub_10015C1F8;
            *(&v152 + 1) = &unk_1002794A8;
            v116 = _Block_copy(&aBlock);
            v13 = v114;
            v117 = v4;

            [v75 removePairingForCurrentControllerOnQueue:v13 completion:v116];

            _Block_release(v116);
          }

          return;
        }

        v71 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v71)
        {
          goto LABEL_55;
        }
      }
    }

    ++v4;
    sub_100095808(&v155);
    v64 += 40;
    if (v12 == v4)
    {

      v4 = v146;
      v13 = v140;
      v59 = v139;
LABEL_46:
      v72 = *&v59[v147];
      OS_dispatch_semaphore.signal()();

      v153 = 0;
      aBlock = 0u;
      v152 = 0u;

      v73 = v150;
      if (!*(&v152 + 1))
      {
        goto LABEL_56;
      }

      goto LABEL_47;
    }
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_87:
    v126 = v23;
    v127 = v24;
    v128 = v41;
    v129 = _CocoaArrayWrapper.endIndex.getter();
    v41 = v128;
    v24 = v127;
    v23 = v126;
    if (!v129)
    {
      goto LABEL_88;
    }

LABEL_10:
    v42 = *&v4[OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_manager];
    v147 = v24;
    if (!v42)
    {
      v153 = 0;
      aBlock = 0u;
      v152 = 0u;
LABEL_80:
      sub_100095C84(&aBlock, &unk_1002A6F40, &unk_10023BE90);
      goto LABEL_81;
    }

    v143 = v41;
    v140 = v23;
    if (!a1)
    {
      goto LABEL_105;
    }

    v146 = v4;
    v43 = v42;
    v149 = a1;
    v44 = [a1 identifier];
    if (!v44)
    {
      goto LABEL_106;
    }

    v45 = v44;
    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v47;

    v144 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
    v49 = *(v43 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem);
    OS_dispatch_semaphore.wait()();

    a1 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
    swift_beginAccess();
    v145 = v43;
    v19 = *&a1[v43];
    v4 = *(v19 + 2);
    if (!v4)
    {
      break;
    }

    v141 = a2;
    v142 = v11;
    v148 = v13;
    v150 = v12;
    v13 = v19 + 32;

    a2 = 0;
    while (a2 < *(v19 + 2))
    {
      sub_1000A097C(v13, &v155);
      v50 = *(*sub_1000A09E0(&v155, v156) + 32);
      if (v50)
      {
        a1 = v50;
        v51 = [a1 identifier];
        if (v51)
        {
          v11 = v51;
          v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v54 = v53;

          if (v52 == v46 && v54 == v48)
          {

LABEL_79:

            v120 = v145;
            v121 = *(v144 + v145);
            OS_dispatch_semaphore.signal()();

            sub_1000A097C(&v155, &aBlock);
            sub_100095808(&v155);

            v12 = v150;
            v4 = v146;
            v13 = v148;
            v11 = v142;
            a2 = v141;
            if (*(&v152 + 1))
            {
              goto LABEL_60;
            }

            goto LABEL_80;
          }

          v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v12)
          {
            goto LABEL_79;
          }
        }
      }

      ++a2;
      sub_100095808(&v155);
      v13 += 5;
      if (v4 == a2)
      {

        v12 = v150;
        v13 = v148;
        v11 = v142;
        a2 = v141;
        goto LABEL_59;
      }
    }
  }

LABEL_59:
  v89 = v145;
  v90 = *(v144 + v145);
  OS_dispatch_semaphore.signal()();

  v153 = 0;
  aBlock = 0u;
  v152 = 0u;

  v4 = v146;
  if (!*(&v152 + 1))
  {
    goto LABEL_80;
  }

LABEL_60:
  sub_100095274(&unk_1002A7A90, &unk_10023C960);
  type metadata accessor for DaemonAccessory();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_81:
    v122 = v147;
    (v13[2])(v147, &v4[OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger], v12);
    v123 = Logger.logObject.getter();
    v124 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v123, v124))
    {
      v125 = swift_slowAlloc();
      *v125 = 0;
      _os_log_impl(&_mh_execute_header, v123, v124, "No record for discovered accessory!", v125, 2u);
    }

    (v13[1])(v122, v12);
    return;
  }

  v91 = v155;
  sub_1001636E8(v155);
  if (*(v91 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_paired) != 2)
  {
    if (v143)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_77;
      }
    }

    else if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_77;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v118 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
        goto LABEL_103;
      }

      v118 = *(a2 + 32);
    }

    v119 = v118;
    sub_1001571A0(v91, v118);

LABEL_77:

    return;
  }

  v92 = v149;
  sub_1000F9E38(v149);
  v93 = (v91 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_firmwareVersion);
  v94 = *(v91 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_firmwareVersion + 8);
  *v93 = v95;
  v93[1] = v96;

  sub_1000F9E44(v92);
  v97 = (v91 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_productGroup);
  v98 = *(v91 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_productGroup + 8);
  *v97 = v99;
  v97[1] = v100;

  sub_1000FA184(v92);
  v101 = (v91 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_productNumber);
  v102 = *(v91 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_productNumber + 8);
  *v101 = v103;
  v101[1] = v104;

  sub_1000FA384(v92);
  v105 = (v91 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_productData);
  v106 = *(v91 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_productData + 8);
  *v105 = v107;
  v105[1] = v108;

  if (v143)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_92;
    }

LABEL_64:
    if ((a2 & 0xC000000000000001) != 0)
    {
      v109 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_67;
    }

    if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v109 = *(a2 + 32);
LABEL_67:
      v110 = v109;
      v111 = type metadata accessor for TaskPriority();
      (*(*(v111 - 8) + 56))(v11, 1, 1, v111);
      v112 = swift_allocObject();
      v112[2] = 0;
      v112[3] = 0;
      v112[4] = v91;
      v112[5] = v4;
      v112[6] = v110;
      v113 = v4;

      sub_1001B6410(0, 0, v11, &unk_10023EA20, v112);

      return;
    }

    __break(1u);
    goto LABEL_101;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_64;
  }

LABEL_92:
  v134 = &v4[OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger];
  v135 = v140;
  (v13[2])(v140, v134, v12);
  v136 = Logger.logObject.getter();
  v137 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v136, v137))
  {
    v138 = swift_slowAlloc();
    *v138 = 0;
    _os_log_impl(&_mh_execute_header, v136, v137, "No accessories paired", v138, 2u);
  }

  else
  {
  }

  (v13[1])(v135, v12);
}