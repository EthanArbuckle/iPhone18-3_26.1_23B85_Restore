uint64_t sub_1000D7DEC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_tokens;
  swift_beginAccess();

  v4 = sub_1000E2C2C((v1 + v3), a1);

  v5 = *(v1 + v3);
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6 >= v4)
    {
      goto LABEL_3;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v5 < 0)
  {
    v8 = *(v1 + v3);
  }

  v6 = _CocoaArrayWrapper.endIndex.getter();
  if (v6 < v4)
  {
    goto LABEL_8;
  }

LABEL_3:
  sub_1001A11BC(v4, v6);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v1 + v3) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v3) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_9:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

void sub_1000D7F10(uint64_t a1, void *a2)
{
  v2 = *(*sub_1000A09E0(a2, a2[3]) + 24);
  sub_1000DD72C(v2, 1);
}

uint64_t sub_1000D7F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_1000D8008;

  return sub_1000FAC78();
}

uint64_t sub_1000D8008()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 32) = v4;
  *v4 = v3;
  v4[1] = sub_1000D8148;
  v5 = *(v1 + 16);

  return sub_1000F7D10();
}

uint64_t sub_1000D8148()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_1000D823C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  sub_1000DD72C(v2, 1);
}

uint64_t sub_1000D82E0()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "stopDiscoveringAccessoryServers()", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  *(v1 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager__performingGeneralScan) = 0;
  if (qword_1002A67A0 != -1)
  {
    swift_once();
  }

  return sub_1000E4E98();
}

uint64_t sub_1000D84D0(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v43 = a1;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v3 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger, v5);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v10, v11))
  {

    result = (*(v6 + 8))(v9, v5);
    if (a2)
    {
      goto LABEL_5;
    }

LABEL_32:
    __break(1u);
    return result;
  }

  v12 = swift_slowAlloc();
  result = swift_slowAlloc();
  *&v45 = result;
  *v12 = 136315138;
  if (!a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v14 = result;
  *(v12 + 4) = sub_1000952D4(v43, a2, &v45);
  _os_log_impl(&_mh_execute_header, v10, v11, "Request by HAP to deregister accessory %s.", v12, 0xCu);
  sub_100095808(v14);

  (*(v6 + 8))(v9, v5);
LABEL_5:
  v15 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
  v16 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem);
  OS_dispatch_semaphore.wait()();

  v17 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
  swift_beginAccess();
  v18 = *(v3 + v17);
  v19 = *(v18 + 16);
  if (!v19)
  {
LABEL_19:
    v32 = *(v3 + v15);
    OS_dispatch_semaphore.signal()();

    v47 = 0;
    v45 = 0u;
    v46 = 0u;
    return sub_100095C84(&v45, &unk_1002A6F40, &unk_10023BE90);
  }

  v41 = v15;
  v42 = v3;
  v20 = v18 + 32;

  v21 = 0;
  while (1)
  {
    if (v21 >= *(v18 + 16))
    {
      __break(1u);
LABEL_30:
      swift_once();
LABEL_28:
      v37 = qword_1002B1EB8;
      v38 = swift_allocObject();
      *(v38 + 16) = v37;
      *(v38 + 24) = 0;
      v39 = v37;
      sub_1001D5444(sub_1000E4DF8, v38);
    }

    sub_1000A097C(v20, v44);
    v22 = *(*sub_1000A09E0(v44, v44[3]) + 32);
    if (v22)
    {
      break;
    }

LABEL_8:
    ++v21;
    sub_100095808(v44);
    v20 += 40;
    if (v19 == v21)
    {

      v15 = v41;
      v3 = v42;
      goto LABEL_19;
    }
  }

  v23 = v22;
  v24 = [v23 identifier];
  if (!v24)
  {
LABEL_7:

    goto LABEL_8;
  }

  v25 = v24;
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  if (v26 != v43 || v28 != a2)
  {
    v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v30)
    {

      v31 = v43;
      goto LABEL_23;
    }

    goto LABEL_7;
  }

  v31 = v43;

LABEL_23:
  v33 = v42;
  v34 = *(v42 + v41);
  OS_dispatch_semaphore.signal()();

  sub_1000A097C(v44, &v45);
  sub_100095808(v44);
  if (!*(&v46 + 1))
  {
    return sub_100095C84(&v45, &unk_1002A6F40, &unk_10023BE90);
  }

  sub_100095274(&unk_1002A7A90, &unk_10023C960);
  type metadata accessor for DaemonAccessory();
  result = swift_dynamicCast();
  if (result)
  {
    if (*(v44[0] + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_paired) == 2)
    {
    }

    v35 = *(v33 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_server);
    v36 = sub_1001F29A8(_swiftEmptyArrayStorage);
    sub_100156798(v31, a2, 6, v36, 0);

    *(v33 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingState) = 0;
    if (qword_1002A67A0 == -1)
    {
      goto LABEL_28;
    }

    goto LABEL_30;
  }

  return result;
}

id sub_1000D8A6C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger, v4);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "HAP requested BLE disconnect.", v11, 2u);
  }

  result = (*(v5 + 8))(v8, v4);
  if (!a1)
  {
    __break(1u);
    goto LABEL_34;
  }

  result = [a1 identifier];
  if (!result)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v13 = result;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
  v18 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem);
  OS_dispatch_semaphore.wait()();

  v19 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
  swift_beginAccess();
  v20 = *(v2 + v19);
  v21 = *(v20 + 16);
  if (v21)
  {
    v45 = v17;
    v46 = v2;
    v22 = v20 + 32;

    v23 = 0;
    while (v23 < *(v20 + 16))
    {
      sub_1000A097C(v22, v47);
      v24 = *(*sub_1000A09E0(v47, v47[3]) + 32);
      if (v24)
      {
        v25 = v24;
        v26 = [v25 identifier];
        if (v26)
        {
          v27 = v26;
          v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v30 = v29;

          if (v28 == v14 && v30 == v16)
          {

LABEL_21:

            v34 = *(v46 + v45);
            OS_dispatch_semaphore.signal()();

            sub_1000A097C(v47, &v48);
            sub_100095808(v47);
            goto LABEL_22;
          }

          v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v32)
          {
            goto LABEL_21;
          }
        }
      }

      ++v23;
      sub_100095808(v47);
      v22 += 40;
      if (v21 == v23)
      {

        v17 = v45;
        v2 = v46;
        goto LABEL_19;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

LABEL_19:
  v33 = *(v2 + v17);
  OS_dispatch_semaphore.signal()();

  v50 = 0;
  v48 = 0u;
  v49 = 0u;
LABEL_22:

  if (!*(&v49 + 1))
  {
    sub_100095C84(&v48, &unk_1002A6F40, &unk_10023BE90);
    if (qword_1002A67A0 == -1)
    {
LABEL_30:
      v42 = qword_1002B1EB8;
      v43 = swift_allocObject();
      *(v43 + 16) = v42;
      *(v43 + 24) = 0;
      v44 = v42;
      sub_1001D5444(sub_1000E4DF8, v43);
    }

LABEL_32:
    swift_once();
    goto LABEL_30;
  }

  sub_1000A0D80(&v48, v51);
  v35 = *(*sub_1000A09E0(v51, v51[3]) + 16);
  if (v35 && *&v35[OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral])
  {
    v36 = qword_1002A67A0;
    v37 = v35;
    if (v36 != -1)
    {
      swift_once();
    }

    v38 = qword_1002B1EB8;
    v39 = swift_allocObject();
    *(v39 + 16) = v38;
    *(v39 + 24) = v35;
    v40 = v37;
    v41 = v38;
    sub_1001D5444(sub_1000E4DF8, v39);
  }

  return sub_100095808(v51);
}

uint64_t sub_1000D8F90(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v2 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger, v5);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "setConnectionLatency()", v12, 2u);
  }

  result = (*(v6 + 8))(v9, v5);
  if (a1 == 2)
  {
    if (qword_1002A67A0 == -1)
    {
      if (!a2)
      {
LABEL_19:
        __break(1u);
LABEL_20:
        result = swift_once();
        if (!a2)
        {
          goto LABEL_21;
        }

        goto LABEL_14;
      }

      goto LABEL_11;
    }

LABEL_18:
    swift_once();
    if (!a2)
    {
      goto LABEL_19;
    }

LABEL_11:
    v14 = 1;
    return sub_1001D59A0(v14, a2);
  }

  if (!a1)
  {
    if (qword_1002A67A0 == -1)
    {
      if (!a2)
      {
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }
    }

    else
    {
      swift_once();
      if (!a2)
      {
        goto LABEL_17;
      }
    }

    v14 = 0;
    return sub_1001D59A0(v14, a2);
  }

  if (qword_1002A67A0 != -1)
  {
    goto LABEL_20;
  }

  if (a2)
  {
LABEL_14:
    v14 = -5;
    return sub_1001D59A0(v14, a2);
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1000D9230(uint64_t a1, uint64_t a2)
{
  v70 = a2;
  v71 = a1;
  v63 = type metadata accessor for CocoaError.Code();
  v62 = *(v63 - 8);
  v3 = *(v62 + 64);
  v4 = __chkstk_darwin(v63);
  v61 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v60 = &v55 - v6;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v68 = v7;
  v69 = v8;
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v67 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v64 = &v55 - v13;
  __chkstk_darwin(v12);
  v57 = &v55 - v14;
  v65 = type metadata accessor for CocoaError();
  v59 = *(v65 - 8);
  v15 = *(v59 + 64);
  v16 = __chkstk_darwin(v65);
  v58 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = type metadata accessor for URL.DirectoryHint();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100095274(&qword_1002A6B70, &unk_10023C9C0);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = &v55 - v25;
  v27 = type metadata accessor for URL();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = __chkstk_darwin(v27);
  v32 = &v55 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v34 = &v55 - v33;
  v66 = v2;
  sub_1000CBBDC(v26);
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    sub_100095C84(v26, &qword_1002A6B70, &unk_10023C9C0);
    return 0;
  }

  else
  {
    result = (*(v28 + 32))(v34, v26, v27);
    v35 = v27;
    v36 = v70;
    if (v70)
    {
      v72[0] = v71;
      v72[1] = v70;
      (*(v19 + 104))(v22, enum case for URL.DirectoryHint.inferFromPath(_:), v18);
      sub_1000E3C10();

      URL.append<A>(component:directoryHint:)();
      (*(v19 + 8))(v22, v18);

      v37 = *(v28 + 16);
      v56 = v35;
      v37(v32, v34, v35);
      v38 = objc_allocWithZone(NSData);
      v39 = sub_1000E14C4(v32, 2);
      v40 = v36;
      v55 = v34;
      v41 = v39;
      v42 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v43;

      sub_100095B94(0, &qword_1002A7AE0, NSKeyedUnarchiver_ptr);
      sub_100095B94(0, &qword_1002A7AE8, off_100271C58);
      v45 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
      v46 = v69;
      v67 = v45;
      v47 = v57;
      v48 = v68;
      (*(v69 + 16))(v57, v66 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger, v68);
      v49 = v40;

      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v72[0] = v53;
        *v52 = 136315138;
        *(v52 + 4) = sub_1000952D4(v71, v49, v72);
        _os_log_impl(&_mh_execute_header, v50, v51, "Loaded accessory cache for %s.", v52, 0xCu);
        sub_100095808(v53);

        sub_1000A0D2C(v42, v44);

        (*(v46 + 8))(v57, v48);
      }

      else
      {
        sub_1000A0D2C(v42, v44);

        (*(v46 + 8))(v47, v48);
      }

      (*(v28 + 8))(v55, v56);
      return v67;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1000D9F2C(void *a1, void *a2)
{
  v5 = type metadata accessor for Logger();
  v60 = *(v5 - 8);
  v61 = v5;
  v6 = *(v60 + 64);
  v7 = __chkstk_darwin(v5);
  v58 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v57 = &v56 - v9;
  v10 = type metadata accessor for URL.DirectoryHint();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100095274(&qword_1002A6B70, &unk_10023C9C0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v56 - v17;
  v19 = type metadata accessor for URL();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v2;
  sub_1000CBBDC(v18);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    return sub_100095C84(v18, &qword_1002A6B70, &unk_10023C9C0);
  }

  result = (*(v20 + 32))(v23, v18, v19);
  if (a2)
  {
    v62[0] = a1;
    v62[1] = a2;
    (*(v11 + 104))(v14, enum case for URL.DirectoryHint.inferFromPath(_:), v10);
    sub_1000E3C10();

    URL.append<A>(component:directoryHint:)();
    (*(v11 + 8))(v14, v10);

    v25 = objc_opt_self();
    v26 = [v25 defaultManager];
    URL.path(percentEncoded:)(1);
    v27 = String._bridgeToObjectiveC()();

    v28 = [v26 fileExistsAtPath:v27];

    if (v28)
    {
      v29 = [v25 defaultManager];
      URL._bridgeToObjectiveC()(v30);
      v32 = v31;
      v62[0] = 0;
      v33 = [v29 removeItemAtURL:v31 error:v62];

      v34 = v62[0];
      if (v33)
      {
        v35 = v60;
        v36 = v57;
        v37 = v61;
        (*(v60 + 16))(v57, &v59[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger], v61);
        v38 = v34;
        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v63 = v42;
          *v41 = 136315138;
          swift_beginAccess();
          v43 = URL.path(percentEncoded:)(1);
          v44 = sub_1000952D4(v43._countAndFlagsBits, v43._object, &v63);

          *(v41 + 4) = v44;
          _os_log_impl(&_mh_execute_header, v39, v40, "Removed cache file: %s", v41, 0xCu);
          sub_100095808(v42);

          (*(v60 + 8))(v57, v37);
        }

        else
        {

          (*(v35 + 8))(v36, v37);
        }
      }

      else
      {
        v45 = v62[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
        v46 = v60;
        v47 = v58;
        v48 = v61;
        (*(v60 + 16))(v58, &v59[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger], v61);
        swift_errorRetain();
        v49 = Logger.logObject.getter();
        v50 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          v62[0] = v59;
          *v51 = 136315138;
          swift_getErrorValue();
          v52 = Error.localizedDescription.getter();
          v54 = v46;
          v55 = sub_1000952D4(v52, v53, v62);

          *(v51 + 4) = v55;
          _os_log_impl(&_mh_execute_header, v49, v50, "Unable to remove cache file: %s", v51, 0xCu);
          sub_100095808(v59);

          (*(v54 + 8))(v58, v61);
        }

        else
        {

          (*(v46 + 8))(v47, v48);
        }
      }
    }

    return (*(v20 + 8))(v23, v19);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000DA630(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a1;
  a4(v6, v8);
}

id sub_1000DA6AC(void *a1)
{
  v3 = type metadata accessor for URL.DirectoryHint();
  v101 = *(v3 - 8);
  v102 = v3;
  v4 = *(v101 + 64);
  __chkstk_darwin(v3);
  v100 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100095274(&qword_1002A6B70, &unk_10023C9C0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v104 = (&v85 - v8);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v103 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v85 - v14;
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  v18 = v17[8];
  v19 = __chkstk_darwin(v16);
  v20 = __chkstk_darwin(v19);
  v22 = &v85 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v85 - v24;
  v26 = __chkstk_darwin(v23);
  __chkstk_darwin(v26);
  v30 = &v85 - v29;
  if (a1)
  {
    v96 = v28;
    v106 = v1;
    v94 = v27;
    v31 = objc_opt_self();
    v107[0] = 0;
    v105 = a1;
    v32 = [v31 archivedDataWithRootObject:? requiringSecureCoding:? error:?];
    v33 = v107[0];
    if (v32)
    {
      v34 = v16;
      v35 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      v38 = v17[2];
      v39 = v106;
      v91 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger;
      v93 = v17 + 2;
      v92 = v38;
      v38(v30, v106 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger, v34);
      sub_1000A0CD8(v35, v37);
      v40 = Logger.logObject.getter();
      v89 = static os_log_type_t.default.getter();
      v41 = os_log_type_enabled(v40, v89);
      v99 = v35;
      v97 = v9;
      v95 = v10;
      v98 = v37;
      if (!v41)
      {
        sub_1000A0D2C(v35, v37);

        v53 = v17[1];
        v53(v30, v34);
        v54 = v34;
        v55 = v104;
        goto LABEL_25;
      }

      v42 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v107[0] = v86;
      *v42 = 134218242;
      v43 = v37 >> 62;
      v87 = v34;
      v88 = v17;
      v90 = v15;
      if ((v37 >> 62) > 1)
      {
        if (v43 != 2)
        {
          v44 = 0;
          goto LABEL_23;
        }

        v56 = v99;
        v58 = *(v99 + 16);
        v57 = *(v99 + 24);
        v59 = __OFSUB__(v57, v58);
        v44 = v57 - v58;
        if (!v59)
        {
          goto LABEL_24;
        }

        __break(1u);
      }

      else if (!v43)
      {
        v44 = BYTE6(v37);
LABEL_23:
        v56 = v99;
LABEL_24:
        v55 = v104;
        *(v42 + 4) = v44;
        sub_1000A0D2C(v56, v37);
        *(v42 + 12) = 2080;
        sub_10013B46C(v56, v37);
        String.uppercased()();

        sub_100162A44(256);

        v60 = static String._fromSubstring(_:)();
        v62 = v61;

        v63 = sub_1000952D4(v60, v62, v107);

        *(v42 + 14) = v63;
        _os_log_impl(&_mh_execute_header, v40, v89, "Saving cached accessory data [%ld]: 0x%s...", v42, 0x16u);
        sub_100095808(v86);

        v53 = v88[1];
        v54 = v87;
        v53(v30, v87);
        v9 = v97;
        v10 = v95;
        v15 = v90;
        v39 = v106;
LABEL_25:
        sub_1000CBBDC(v55);
        if ((*(v10 + 48))(v55, 1, v9) == 1)
        {

          sub_1000A0D2C(v99, v98);
          return sub_100095C84(v55, &qword_1002A6B70, &unk_10023C9C0);
        }

        else
        {
          v104 = v53;
          (*(v10 + 32))(v15, v55, v9);
          result = [v105 pairingIdentifier];
          if (result)
          {
            v64 = result;
            v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v67 = v66;

            v107[0] = v65;
            v107[1] = v67;
            v69 = v100;
            v68 = v101;
            v70 = v102;
            (*(v101 + 104))(v100, enum case for URL.DirectoryHint.inferFromPath(_:), v102);
            sub_1000E3C10();
            URL.append<A>(component:directoryHint:)();
            (*(v68 + 8))(v69, v70);

            v71 = v96;
            v92(v96, v39 + v91, v54);
            v72 = Logger.logObject.getter();
            v73 = v15;
            v74 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v72, v74))
            {
              v75 = swift_slowAlloc();
              v76 = swift_slowAlloc();
              v107[0] = v76;
              *v75 = 136315138;
              swift_beginAccess();
              v77 = URL.path(percentEncoded:)(1);
              v78 = sub_1000952D4(v77._countAndFlagsBits, v77._object, v107);

              *(v75 + 4) = v78;
              _os_log_impl(&_mh_execute_header, v72, v74, "Attempting to save cache to disk at %s", v75, 0xCu);
              sub_100095808(v76);
            }

            v104(v71, v54);
            v79 = v98;
            v80 = v99;
            v81 = v103;
            swift_beginAccess();
            v82 = v95;
            v83 = v97;
            (*(v95 + 16))(v81, v73, v97);
            Data.write(to:options:)();
            v84 = *(v82 + 8);
            v84(v81, v83);

            sub_1000A0D2C(v80, v79);
            return (v84)(v73, v83);
          }

          else
          {
            __break(1u);
          }
        }

        return result;
      }

      v56 = v99;
      LODWORD(v44) = HIDWORD(v99) - v99;
      if (__OFSUB__(HIDWORD(v99), v99))
      {
        __break(1u);
      }

      v44 = v44;
      goto LABEL_24;
    }

    v49 = v33;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    (v17[2])(v25, v106 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger, v16);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v50, v51, "Unable to archive data!", v52, 2u);
    }

    else
    {
    }

    return (v17[1])(v25, v16);
  }

  else
  {
    (v17[2])(v22, v1 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger, v16);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "Invalid accessory cache!", v47, 2u);
    }

    return (v17[1])(v22, v16);
  }
}

void sub_1000DB4BC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {
    return;
  }

  v14 = sub_1000D9230(a1, a2);
  if (!v14)
  {
    return;
  }

  v15 = &selRef_initWithName_;
  v46 = v14;
  v16 = [v14 peripheralInfo];
  if (!v16)
  {
    __break(1u);
    goto LABEL_18;
  }

  v17 = v16;
  v18 = [v16 stateNumber];

  if (!v18 || (sub_100095B94(0, &qword_1002A7AB0, NSNumber_ptr), v19 = a3, v20 = static NSObject.== infix(_:_:)(), v18, v19, (v20 & 1) == 0))
  {
    (*(v10 + 16))(v13, v5 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger, v9);
    v22 = a3;
    v4 = v46;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v42 = v24;
      v44 = v5;
      v45 = v22;
      v25 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v47 = v43;
      *v25 = 136315650;
      v26 = [v4 pairingIdentifier];
      if (!v26)
      {
LABEL_19:

        __break(1u);
        goto LABEL_20;
      }

      v27 = v26;
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      v31 = sub_1000952D4(v28, v30, &v47);

      *(v25 + 4) = v31;
      *(v25 + 12) = 2112;
      v32 = [v4 peripheralInfo];

      v33 = v45;
      if (!v32)
      {
LABEL_20:
        __break(1u);
        return;
      }

      v34 = [v32 stateNumber];

      *(v25 + 14) = v34;
      *(v25 + 22) = 2112;
      *(v25 + 24) = v33;
      v35 = v41;
      *v41 = v34;
      v35[1] = a3;
      v36 = v33;
      _os_log_impl(&_mh_execute_header, v23, v42, "Updating cached state number for %s: %@ -> %@", v25, 0x20u);
      sub_100095274(&unk_1002A6F60, &unk_10023C4E0);
      swift_arrayDestroy();

      sub_100095808(v43);

      (*(v10 + 8))(v13, v9);
      v15 = &selRef_initWithName_;
      v22 = v33;
    }

    else
    {

      (*(v10 + 8))(v13, v9);
    }

    v37 = [v4 v15[291]];
    if (v37)
    {
      v38 = v37;
      [v37 updateStateNumber:v22];

      v39 = v4;
      sub_1000DA6AC(v46);

      return;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v21 = v46;
}

BOOL sub_1000DBA24(_BOOL8 result, uint64_t a2)
{
  if (!a2)
  {
    __break(1u);
    return result;
  }

  v3 = v2;
  v5 = result;
  v36 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
  v6 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem);
  OS_dispatch_semaphore.wait()();

  v7 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
  swift_beginAccess();
  v8 = *(v3 + v7);
  v9 = *(v8 + 16);
  if (!v9)
  {
LABEL_16:
    v21 = *(v3 + v36);
    OS_dispatch_semaphore.signal()();

    v40 = 0;
    v38 = 0u;
    v39 = 0u;
LABEL_17:
    sub_100095C84(&v38, &unk_1002A6F40, &unk_10023BE90);
    return 0;
  }

  v35 = v3;
  v10 = v8 + 32;

  v11 = 0;
  while (1)
  {
    if (v11 >= *(v8 + 16))
    {
      __break(1u);
      goto LABEL_28;
    }

    sub_1000A097C(v10, v41);
    v12 = *(*sub_1000A09E0(v41, v41[3]) + 32);
    if (!v12)
    {
      goto LABEL_5;
    }

    v13 = v12;
    v14 = [v13 identifier];
    if (v14)
    {
      break;
    }

LABEL_4:

LABEL_5:
    ++v11;
    sub_100095808(v41);
    v10 += 40;
    if (v9 == v11)
    {

      v3 = v35;
      goto LABEL_16;
    }
  }

  v15 = v14;
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  if (v16 != v5 || v18 != a2)
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v20)
    {
      goto LABEL_19;
    }

    goto LABEL_4;
  }

LABEL_19:

  v22 = *(v35 + v36);
  OS_dispatch_semaphore.signal()();

  sub_1000A097C(v41, &v38);
  sub_100095808(v41);
  if (!*(&v39 + 1))
  {
    goto LABEL_17;
  }

  sub_1000A0D80(&v38, v41);
  sub_1000A097C(v41, &v38);
  sub_100095274(&unk_1002A7A90, &unk_10023C960);
  type metadata accessor for DaemonAccessory();
  if (swift_dynamicCast())
  {
    v23 = *(v37 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_paired);

    v24 = v23 != 0;
    goto LABEL_26;
  }

  if (qword_1002A6780 != -1)
  {
LABEL_28:
    swift_once();
  }

  v25 = qword_1002B1CF0;
  v26 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v27 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v27 + 4);

  v28 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_accessories;
  swift_beginAccess();
  v29 = *(v25 + v28);
  v30 = *(v25 + v26);

  os_unfair_lock_unlock(v30 + 4);

  __chkstk_darwin(v31);
  v34[2] = v41;
  v32 = sub_100181878(sub_1000E3BF0, v34, v29);
  if (v32 >> 62)
  {
    v33 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v24 = v33 > 0;
LABEL_26:
  sub_100095808(v41);
  return v24;
}

uint64_t sub_1000DBDEC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  sub_100095B94(0, &qword_1002A7270, NSObject_ptr);
  v4 = dispatch thunk of DockCoreAccessory.info.getter();
  v5 = *(*sub_1000A09E0(a2, a2[3]) + 24);
  LOBYTE(v3) = static NSObject.== infix(_:_:)();

  return v3 & 1;
}

void sub_1000DBFD4(uint64_t a1, int a2)
{
  v107 = a2;
  *&v117 = a1;
  v3 = sub_100095274(&unk_1002A73C0, &unk_10023BE80);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v108 = &v101 - v5;
  v6 = type metadata accessor for UUID();
  v109 = *(v6 - 8);
  v7 = *(v109 + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v101 - v11;
  v114 = type metadata accessor for Logger();
  v116 = *(v114 - 8);
  v13 = *(v116 + 64);
  v14 = __chkstk_darwin(v114);
  v113 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v110 = &v101 - v17;
  __chkstk_darwin(v16);
  v112 = &v101 - v18;
  v111 = type metadata accessor for DockStatus();
  v19 = *(v111 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v111);
  v22 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchPredicate();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = (&v101 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v115 = v2;
  v28 = *&v2[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_workQueue];
  *v27 = v28;
  (*(v24 + 104))(v27, enum case for DispatchPredicate.onQueue(_:), v23);
  v29 = v28;
  LOBYTE(v28) = _dispatchPreconditionTest(_:)();
  (*(v24 + 8))(v27, v23);
  if ((v28 & 1) == 0)
  {
    goto LABEL_43;
  }

  if (qword_1002A67A0 != -1)
  {
    goto LABEL_44;
  }

  while (1)
  {
    v30 = v115;
    if (*(qword_1002B1EB8 + OBJC_IVAR____TtC14dockaccessoryd6BTLink_mode) != 3)
    {
      v54 = v116;
      v55 = v114;
      (*(v116 + 16))(v113, &v115[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger], v114);
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&_mh_execute_header, v56, v57, "Ignoring connect block, accessory already disconnected!", v58, 2u);
      }

      (*(v54 + 8))(v113, v55);
      return;
    }

    v31 = v111;
    (*(v19 + 104))(v22, enum case for DockStatus.Docked(_:), v111);
    v32 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_dockStatus;
    swift_beginAccess();
    (*(v19 + 40))(&v30[v32], v22, v31);
    swift_endAccess();
    v33 = *&v30[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_dockDetector];
    (*(v19 + 16))(v22, &v30[v32], v31);
    v101 = v33;
    DockDetector.newStatus(_:monitorJarvisCallback:)(v22, 0, 0);
    (*(v19 + 8))(v22, v31);
    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v34 = qword_1002B1CF0;
    sub_1001898EC(v117);
    v35 = v116;
    v36 = *(v116 + 16);
    v102 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger;
    v37 = v112;
    v38 = v114;
    v104 = v116 + 16;
    v103 = v36;
    v36(v112, &v30[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger], v114);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "Connected!  Attempting raw write to velocity characteristic.", v41, 2u);
    }

    v42 = *(v35 + 8);
    v116 = v35 + 8;
    v106 = v42;
    v42(v37, v38);
    v105 = v34;
    v43 = *(v34 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
    v111 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
    v44 = *&v43[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
    v112 = v43;
    v45 = v43;
    v46 = v44;
    OS_dispatch_semaphore.wait()();

    v47 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
    swift_beginAccess();
    v113 = v45;
    v22 = *&v45[v47];
    v48 = *(v22 + 2);

    if (!v48)
    {
      break;
    }

    v49 = 0;
    v50 = (v22 + 32);
    v19 = v109 + 8;
    while (v49 < *(v22 + 2))
    {
      sub_1000A097C(v50, v118);
      v51 = *(*sub_1000A09E0(v118, v118[3]) + 24);
      DockCoreInfo.identifier.getter();

      DockCoreInfo.identifier.getter();
      LOBYTE(v51) = static UUID.== infix(_:_:)();
      v52 = *v19;
      (*v19)(v10, v6);
      v52(v12, v6);
      if (v51)
      {

        v59 = *&v112[v111];
        OS_dispatch_semaphore.signal()();

        sub_1000A097C(v118, &v119);
        sub_100095808(v118);
        goto LABEL_18;
      }

      ++v49;
      sub_100095808(v118);
      v50 += 40;
      if (v48 == v49)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    swift_once();
  }

LABEL_13:

  v53 = *&v112[v111];
  OS_dispatch_semaphore.signal()();

  v121 = 0;
  v119 = 0u;
  v120 = 0u;
LABEL_18:

  v60 = v110;
  if (!*(&v120 + 1))
  {
    sub_100095C84(&v119, &unk_1002A6F40, &unk_10023BE90);
    return;
  }

  sub_100095274(&unk_1002A7A90, &unk_10023C960);
  type metadata accessor for DaemonAccessory();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v61 = v118[0];
  v62 = *(v118[0] + 32);
  if (!v62)
  {
    goto LABEL_37;
  }

  objc_opt_self();
  v63 = swift_dynamicCastObjCClass();
  if (!v63)
  {
    goto LABEL_37;
  }

  v64 = v63;
  v65 = v62;
  [v64 tryEstablishSecuritySession];
  if ([v64 isSecuritySessionOpen])
  {
    v66 = v117;
    sub_100189054(v117);
    v67 = type metadata accessor for TaskPriority();
    v68 = *(*(v67 - 8) + 56);
    v69 = v108;
    v68(v108, 1, 1, v67);
    v70 = swift_allocObject();
    v70[2] = 0;
    v70[3] = 0;
    v70[4] = v66;
    v70[5] = v61;
    v71 = v66;

    sub_1001B6410(0, 0, v69, &unk_10023C990, v70);

    if (v107 == 2)
    {
      type metadata accessor for DockCoreManager();
      if (static DockCoreManager.ignoreStartupValidation.getter())
      {
        goto LABEL_31;
      }

LABEL_30:
      *(v61 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_trackingEnabled) = 1;
      sub_1001A68A4(0.0);
      v76 = v108;
      v68(v108, 1, 1, v67);
      v77 = swift_allocObject();
      v77[2] = 0;
      v77[3] = 0;
      v77[4] = v61;

      sub_1001B6410(0, 0, v76, &unk_10023C9A8, v77);

      v78 = OBJC_IVAR____TtC14dockaccessoryd12DockDetector_startupValidator;
      v79 = v101;
      swift_beginAccess();
      v80 = *(v79 + v78);
      v81 = swift_allocObject();
      v82 = v115;
      *(v81 + 16) = v115;
      *(v81 + 24) = v71;
      v83 = v71;
      v84 = v80;
      v85 = v82;
      MotionValidator.start(timedOutCallback:)(sub_1000E3AD8, v81);

      v68(v76, 1, 1, v67);
      v86 = swift_allocObject();
      v86[2] = 0;
      v86[3] = 0;
      v86[4] = v85;
      v86[5] = v61;

      v87 = v85;
      sub_1001B6410(0, 0, v76, &unk_10023C9B8, v86);
    }

    else if (v107)
    {
      goto LABEL_30;
    }

LABEL_31:
    *(v61 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_connectedForTracking) = 1;
    v88 = *(v61 + 16);
    if (v88)
    {
      v89 = objc_opt_self();
      sub_100095274(&unk_1002A73A0, &qword_10023C670);
      v90 = swift_allocObject();
      v117 = xmmword_10023C170;
      *(v90 + 16) = xmmword_10023C170;
      *(v90 + 56) = &type metadata for UInt32;
      *(v90 + 64) = &protocol witness table for UInt32;
      *(v90 + 32) = 512;
      v91 = v88;
      String.init(format:_:)();
      v92 = String._bridgeToObjectiveC()();

      v93 = [v89 UUIDWithString:v92];

      v94 = sub_10013EF7C();
      if (v94)
      {
        v95 = *(v61 + 16);
        if (!v95)
        {
          goto LABEL_41;
        }

        v96 = swift_allocObject();
        *(v96 + 16) = v117;
        *(v96 + 56) = &type metadata for UInt32;
        *(v96 + 64) = &protocol witness table for UInt32;
        *(v96 + 32) = 260;
        v97 = v95;
        String.init(format:_:)();
        v98 = String._bridgeToObjectiveC()();

        v99 = [v89 UUIDWithString:v98];

        v100 = sub_10013F1B8(v99, v94);
        if (v100)
        {
          sub_1001A38B4(&off_100274C88, &off_100274CB8, 256, v100);
        }

        else
        {
LABEL_41:
        }

        return;
      }
    }

LABEL_37:

    return;
  }

  v72 = v114;
  v103(v60, &v115[v102], v114);
  v73 = Logger.logObject.getter();
  v74 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    *v75 = 0;
    _os_log_impl(&_mh_execute_header, v73, v74, "Accessory does not contain a velocity characteristic!", v75, 2u);
  }

  else
  {
  }

  v106(v60, v72);
}

uint64_t sub_1000DCE30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return (_swift_task_switch)(sub_1000DCE50, 0, 0);
}

uint64_t sub_1000DCE50()
{
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_1001884E4();
  if (v2)
  {
    v3 = v2;
    v4 = dispatch thunk of DockCoreAccessory.needsMigration.getter();
  }

  else
  {
    v4 = 0;
  }

  v5 = v0[3];
  sub_1001A761C(v4 & 1);
  v6 = v0[1];

  return v6();
}

uint64_t sub_1000DCF1C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10009862C;

  return sub_1001A50B4();
}

uint64_t sub_1000DCFAC(char a1, char *a2, void *a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(*(v11 - 8) + 64);
  result = __chkstk_darwin(v11);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v17 = *&a2[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_workQueue];
    v24 = v14;
    v25 = result;
    v18 = swift_allocObject();
    *(v18 + 16) = a2;
    *(v18 + 24) = a3;
    aBlock[4] = sub_1000E3BE8;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100147FC8;
    aBlock[3] = &unk_1002768D8;
    v19 = _Block_copy(aBlock);
    v20 = v17;
    v21 = a2;
    v22 = a3;
    static DispatchQoS.unspecified.getter();
    v26 = _swiftEmptyArrayStorage;
    sub_1000E4D0C(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags);
    sub_100095274(&unk_1002A6B60, qword_10023AE10);
    sub_1000E4D54(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v19);

    (*(v7 + 8))(v10, v6);
    (*(v24 + 8))(v16, v25);
  }

  return result;
}

void sub_1000DD298(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger, v4);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Startup validation timed out, disconnecting", v11, 2u);
  }

  (*(v5 + 8))(v8, v4);
  sub_1000DD72C(a2, 0);
}

uint64_t sub_1000DD40C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for Logger();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();

  return (_swift_task_switch)(sub_1000DD4CC, 0, 0);
}

uint64_t sub_1000DD4CC()
{
  (*(v0[5] + 16))(v0[6], v0[2] + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger, v0[4]);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Startup validation started. Starting motion feedback.", v3, 2u);
  }

  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[4];

  (*(v5 + 8))(v4, v6);
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1000DD61C;
  v8 = v0[3];

  return sub_1001A456C();
}

uint64_t sub_1000DD61C()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

void sub_1000DD72C(uint64_t a1, int a2)
{
  v74 = a2;
  v87 = a1;
  v3 = type metadata accessor for DockStatus();
  v86 = *(v3 - 8);
  v4 = *(v86 + 64);
  __chkstk_darwin(v3);
  v84 = &v73[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v77 = type metadata accessor for Logger();
  v76 = *(v77 - 8);
  v6 = *(v76 + 64);
  __chkstk_darwin(v77);
  v75 = &v73[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for UUID();
  v78 = *(v8 - 8);
  v9 = *(v78 + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v73[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v14 = &v73[-v13];
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v73[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v85 = v2;
  v20 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_workQueue);
  *v19 = v20;
  (*(v16 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v15);
  v21 = v20;
  v22 = _dispatchPreconditionTest(_:)();
  (*(v16 + 8))(v19, v15);
  if ((v22 & 1) == 0)
  {
    goto LABEL_32;
  }

  v83 = v3;
  if (qword_1002A6780 != -1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v82 = qword_1002B1CF0;
    v23 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
    v79 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
    v24 = *&v23[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
    v80 = v23;
    v25 = v23;
    v26 = v24;
    OS_dispatch_semaphore.wait()();

    v27 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
    swift_beginAccess();
    v81 = v25;
    v28 = *(v25 + v27);
    v29 = *(v28 + 16);

    if (!v29)
    {
      break;
    }

    v30 = 0;
    v31 = v28 + 32;
    v32 = (v78 + 8);
    while (v30 < *(v28 + 16))
    {
      sub_1000A097C(v31, v89);
      v33 = *(*sub_1000A09E0(v89, v89[3]) + 24);
      DockCoreInfo.identifier.getter();

      DockCoreInfo.identifier.getter();
      LOBYTE(v33) = static UUID.== infix(_:_:)();
      v34 = *v32;
      (*v32)(v12, v8);
      v34(v14, v8);
      if (v33)
      {

        v36 = *&v80[v79];
        OS_dispatch_semaphore.signal()();

        sub_1000A097C(v89, &v90);
        sub_100095808(v89);
        goto LABEL_10;
      }

      ++v30;
      sub_100095808(v89);
      v31 += 40;
      if (v29 == v30)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    swift_once();
  }

LABEL_8:

  v35 = *&v80[v79];
  OS_dispatch_semaphore.signal()();

  v92 = 0;
  v90 = 0u;
  v91 = 0u;
LABEL_10:

  v37 = v83;
  v38 = v85;
  if (*(&v91 + 1))
  {
    sub_100095274(&unk_1002A7A90, &unk_10023C960);
    type metadata accessor for DaemonAccessory();
    if (swift_dynamicCast())
    {
      v39 = v89[0];
      v40 = *(v89[0] + 16);
      if (!v40)
      {
        goto LABEL_29;
      }

      v41 = OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral;
      v42 = *&v40[OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral];
      if (!v42)
      {
        goto LABEL_29;
      }

      v43 = v40;
      if ([v42 state] == 2)
      {
        (*(v76 + 16))(v75, v38 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger, v77);

        v44 = Logger.logObject.getter();
        v45 = static os_log_type_t.info.getter();
        v81 = v39;

        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          v80 = v43;
          v48 = v47;
          *v46 = 138412290;
          v49 = v81[3];
          *(v46 + 4) = v49;
          *v47 = v49;
          v50 = v49;
          _os_log_impl(&_mh_execute_header, v44, v45, "Disconnecting %@", v46, 0xCu);
          sub_100095C84(v48, &unk_1002A6F60, &unk_10023C4E0);
          v43 = v80;
        }

        (*(v76 + 8))(v75, v77);
        if (*&v40[v41])
        {
          if (qword_1002A67A0 != -1)
          {
            swift_once();
          }

          v51 = qword_1002B1EB8;
          v52 = swift_allocObject();
          *(v52 + 16) = v51;
          *(v52 + 24) = v40;
          v53 = v43;
          v54 = v51;
          sub_1001D5444(sub_1000E4DF8, v52);
        }

        v55 = v43;
        if ((v74 & 1) == 0)
        {
          v56 = sub_10013EC8C();
          if (v57 >> 60 != 15)
          {
            v58 = v56;
            v59 = v57;
            sub_1000A0CD8(v56, v57);
            sub_1001B1B24(v58, v59, &v90);
            v60 = *(&v90 + 1);
            if (*(&v90 + 1))
            {
              v80 = v90;
              v61 = v81[3];
              DockCoreInfo.identifier.getter();

              v62 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_dockSetupIdMap;
              swift_beginAccess();

              v63 = *(v38 + v62);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v88 = *(v38 + v62);
              *(v38 + v62) = 0x8000000000000000;
              sub_1001EBE2C(v80, v60, v14, isUniquelyReferenced_nonNull_native);
              (*(v78 + 8))(v14, v8);
              *(v38 + v62) = v88;
              swift_endAccess();
              v65 = v59;
              v39 = v81;
              sub_1000A452C(v58, v65);
              sub_100095C84(&v90, &unk_1002A7AA0, &unk_10023C978);

LABEL_29:
              *(v39 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_connectedForTracking) = 0;
              sub_100118354(v87);

              goto LABEL_30;
            }

            sub_1000A452C(v58, v59);
          }
        }

        v39 = v81;
        v66 = v81[3];
        DockCoreInfo.identifier.getter();

        swift_beginAccess();
        sub_1001B6CB4(v14);
        (*(v78 + 8))(v14, v8);
        swift_endAccess();

        goto LABEL_29;
      }

      goto LABEL_29;
    }
  }

  else
  {
    sub_100095C84(&v90, &unk_1002A6F40, &unk_10023BE90);
  }

LABEL_30:
  sub_1001898EC(0);
  sub_100189054(0);
  v67 = v86;
  v68 = v84;
  (*(v86 + 104))(v84, enum case for DockStatus.Undocked(_:), v37);
  v69 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_dockStatus;
  swift_beginAccess();
  (*(v67 + 40))(v38 + v69, v68, v37);
  swift_endAccess();
  v70 = *(v38 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_dockDetector);
  (*(v67 + 16))(v68, v38 + v69, v37);
  DockDetector.newStatus(_:monitorJarvisCallback:)(v68, 0, 0);
  (*(v67 + 8))(v68, v37);
  v71 = OBJC_IVAR____TtC14dockaccessoryd12DockDetector_startupValidator;
  swift_beginAccess();
  v72 = *(v70 + v71);
  MotionValidator.stop()();
}

void sub_1000DE17C(uint64_t a1)
{
  v2 = v1;
  v25 = a1;
  v3 = type metadata accessor for DockStatus();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for UUID();
  v8 = *(v24 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v24);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = (&v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_workQueue);
  *v16 = v17;
  (*(v13 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v12);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v16, v12);
  if ((v17 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  DockCoreInfo.identifier.getter();
  swift_beginAccess();
  sub_1001B6CB4(v11);
  (*(v8 + 8))(v11, v24);
  swift_endAccess();

  if (qword_1002A6780 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_1001898EC(0);
  sub_100189054(0);
  (*(v4 + 104))(v7, enum case for DockStatus.Undocked(_:), v3);
  v19 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_dockStatus;
  swift_beginAccess();
  (*(v4 + 40))(v2 + v19, v7, v3);
  swift_endAccess();
  v20 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_dockDetector);
  (*(v4 + 16))(v7, v2 + v19, v3);
  DockDetector.newStatus(_:monitorJarvisCallback:)(v7, 0, 0);
  (*(v4 + 8))(v7, v3);
  v21 = OBJC_IVAR____TtC14dockaccessoryd12DockDetector_startupValidator;
  swift_beginAccess();
  v22 = *(v20 + v21);
  MotionValidator.stop()();
}

id sub_1000DE534()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccessoryManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AccessoryManager()
{
  result = qword_1002A7A78;
  if (!qword_1002A7A78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000DE78C()
{
  v0 = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1000DE918();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = type metadata accessor for DockStatus();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1000DE918()
{
  if (!qword_1002A7A88)
  {
    type metadata accessor for URL();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1002A7A88);
    }
  }
}

uint64_t sub_1000DE9B8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000025 && 0x8000000100230960 == a2 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    v4 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_rssiTxn);

    sub_1000F2B90();
  }

  return result;
}

uint64_t sub_1000DEA48(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Logger();
  v75 = *(v13 - 8);
  v76 = v13;
  v14 = *(v75 + 64);
  v15 = __chkstk_darwin(v13);
  v63 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v70 = &v62 - v17;
  v18 = type metadata accessor for Date();
  v73 = *(v18 - 8);
  v74 = v18;
  v19 = *(v73 + 64);
  __chkstk_darwin(v18);
  v72 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_tokens;
  swift_beginAccess();
  v22 = *&v1[v21];
  v69 = v3;
  v68 = v4;
  v67 = v8;
  v66 = v7;
  v65 = v9;
  v64 = v12;
  v71 = v21;
  if (v22 >> 62)
  {
LABEL_31:
    v23 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v77 = v1;

  if (!v23)
  {
  }

  for (i = 0; ; ++i)
  {
    if ((v22 & 0xC000000000000001) != 0)
    {
      v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v26 = i + 1;
      if (__OFADD__(i, 1))
      {
LABEL_13:
        __break(1u);
      }
    }

    else
    {
      if (i >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_31;
      }

      v25 = *(v22 + 8 * i + 32);

      v26 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_13;
      }
    }

    if (static UUID.== infix(_:_:)())
    {
      break;
    }

    if (v26 == v23)
    {
    }
  }

  v28 = v72;
  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v30 = v29;
  (*(v73 + 8))(v28, v74);
  v33.n128_u64[0] = *(v25 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_timestamp);
  v31.n128_f64[0] = v30 - v33.n128_f64[0];
  v32 = v30 < v33.n128_f64[0];
  v33.n128_u64[0] = 0x4072C00000000000;
  if (!v32 && v31.n128_f64[0] <= 300.0)
  {
    v47 = v76;
    v46 = v77;
    v48 = v75;
    if (*(v25 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_hasAuth) == 1)
    {
      v49 = *&v77[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_workQueue];
      v50 = swift_allocObject();
      *(v50 + 16) = v46;
      *(v50 + 24) = v25;
      aBlock[4] = sub_1000E30C8;
      aBlock[5] = v50;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100147FC8;
      aBlock[3] = &unk_100276770;
      v51 = _Block_copy(aBlock);
      v52 = v49;
      v53 = v46;

      v54 = v64;
      static DispatchQoS.unspecified.getter();
      v78 = _swiftEmptyArrayStorage;
      sub_1000E4D0C(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags);
      sub_100095274(&unk_1002A6B60, qword_10023AE10);
      sub_1000E4D54(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
      v55 = v66;
      v56 = v69;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v51);

      (*(v68 + 8))(v55, v56);
      (*(v65 + 8))(v54, v67);
    }

    else
    {
      v57 = v63;
      (*(v75 + 16))(v63, &v77[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger], v76, v33, v31);
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&_mh_execute_header, v58, v59, "Waiting for user to authorize pair-setup.", v60, 2u);
      }

      else
      {
      }

      return (*(v48 + 8))(v57, v47);
    }
  }

  else
  {
    v36 = v75;
    v35 = v76;
    v37 = v77;
    v38 = v70;
    (*(v75 + 16))(v70, &v77[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger], v76, v33, v31);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "Removing stale pairing token, pairing not accepted within allowed timeout.", v41, 2u);
    }

    v42 = (*(v36 + 8))(v38, v35);
    __chkstk_darwin(v42);
    *(&v62 - 2) = a1;
    v43 = v71;
    swift_beginAccess();
    result = sub_1000E1620(sub_1000E30D0, (&v62 - 4));
    v44 = *&v37[v43];
    if (v44 >> 62)
    {
      v61 = result;
      v45 = _CocoaArrayWrapper.endIndex.getter();
      result = v61;
      if (v45 >= v61)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v45 >= result)
      {
LABEL_23:
        sub_1001A11BC(result, v45);
        swift_endAccess();
      }
    }

    __break(1u);
  }

  return result;
}

id sub_1000DF27C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  result = __chkstk_darwin(v6);
  v11 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_proxCard;
  if (!*(a1 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_proxCard))
  {
    return result;
  }

  v56 = &v55 - v8;
  v57 = v10;
  v61 = v9;
  v60 = result;
  v12 = a2 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_setupPayload;
  v13 = *(a2 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_setupPayload + 32);
  v14 = *(v12 + 40);
  sub_1000A0CD8(v13, v14);
  v15 = sub_10014025C(v13, v14);
  v17 = v16;
  sub_1000A0D2C(v13, v14);
  v62 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
  v18 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem);
  OS_dispatch_semaphore.wait()();

  v19 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
  swift_beginAccess();
  v20 = *(a1 + v19);
  v21 = *(v20 + 16);
  if (!v21)
  {
LABEL_16:
    v33 = *(a1 + v62);
    OS_dispatch_semaphore.signal()();

    v66 = 0;
    v64 = 0u;
    v65 = 0u;

    if (!*(&v65 + 1))
    {
      return sub_100095C84(&v64, &unk_1002A6F40, &unk_10023BE90);
    }

LABEL_17:
    sub_1000A0D80(&v64, v67);
    v34 = *(*sub_1000A09E0(v67, v67[3]) + 32);
    if (!v34)
    {
      return sub_100095808(v67);
    }

    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {
      return sub_100095808(v67);
    }

    v35 = *(a1 + v11);
    if (v35)
    {
      v36 = result;
      v37 = *(v61 + 16);
      if ((*(v35 + OBJC_IVAR____TtC14dockaccessoryd13DKProxManager_requiresSWAuth) & 1) == 0)
      {
        v44 = v60;
        v37(v56, a1 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger, v60);
        v45 = v34;
        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          *v48 = 0;
          _os_log_impl(&_mh_execute_header, v46, v47, "User authorized uncertified accessory", v48, 2u);
        }

        (*(v61 + 8))(v56, v44);
        result = [v36 identifier];
        if (result)
        {
          v49 = result;
          v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v52 = v51;

          v53 = sub_1001F29A8(_swiftEmptyArrayStorage);
          if (*(a1 + v11))
          {
            *(a1 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingState) = 5;
            v54 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_server);
            sub_100156798(v50, v52, 2, v53, 0);
          }

          [v36 continuePairingAfterAuthPrompt];
          goto LABEL_36;
        }

LABEL_42:
        __break(1u);
        return result;
      }

      v38 = v11;
      v37(v57, a1 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger, v60);
      v39 = v34;
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&_mh_execute_header, v40, v41, "Continuing with SW auth", v42, 2u);
      }

      (*(v61 + 8))(v57, v60);
      result = [v36 identifier];
      if (result)
      {

        sub_1001F29A8(_swiftEmptyArrayStorage);

        if (*(a1 + v38))
        {
          *(a1 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingState) = 4;
        }

        [v36 continueAuthAfterValidation:1];
LABEL_36:

        return sub_100095808(v67);
      }
    }

    else
    {
LABEL_40:
      __break(1u);
    }

    __break(1u);
    goto LABEL_42;
  }

  v58 = v11;
  v59 = a1;
  v22 = v20 + 32;

  v23 = 0;
  while (1)
  {
    if (v23 >= *(v20 + 16))
    {
      __break(1u);
      goto LABEL_40;
    }

    sub_1000A097C(v22, v63);
    v24 = *(*sub_1000A09E0(v63, v63[3]) + 32);
    if (v24)
    {
      break;
    }

LABEL_5:
    ++v23;
    result = sub_100095808(v63);
    v22 += 40;
    if (v21 == v23)
    {

      a1 = v59;
      v11 = v58;
      goto LABEL_16;
    }
  }

  v25 = v24;
  v26 = [v25 identifier];
  if (!v26)
  {
LABEL_4:

    goto LABEL_5;
  }

  v27 = v26;
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  if (v28 != v15 || v30 != v17)
  {
    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v32)
    {
      goto LABEL_28;
    }

    goto LABEL_4;
  }

LABEL_28:

  a1 = v59;
  v43 = *(v59 + v62);
  OS_dispatch_semaphore.signal()();

  sub_1000A097C(v63, &v64);
  sub_100095808(v63);

  v11 = v58;
  if (*(&v65 + 1))
  {
    goto LABEL_17;
  }

  return sub_100095C84(&v64, &unk_1002A6F40, &unk_10023BE90);
}

uint64_t sub_1000DF8C4(uint64_t a1)
{
  v37 = a1;
  v36 = type metadata accessor for Logger();
  v2 = *(v36 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v36);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v33 = &v32 - v7;
  v8 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_tokens;
  swift_beginAccess();
  v9 = *&v1[v8];
  if (v9 >> 62)
  {
LABEL_26:
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v34 = v6;
  v35 = v2;

  if (!v10)
  {
LABEL_14:

    return sub_1000DEA48(v37);
  }

  v11 = 0;
  v6 = (v9 & 0xFFFFFFFFFFFFFF8);
  while (1)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v2 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }
    }

    else
    {
      if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_26;
      }

      v12 = *(v9 + 8 * v11 + 32);

      v2 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_13;
      }
    }

    if (static UUID.== infix(_:_:)())
    {
      break;
    }

    ++v11;
    if (v2 == v10)
    {
      goto LABEL_14;
    }
  }

  if (*(v12 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_hasAuth) != 1)
  {
    *(v12 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_hasAuth) = 1;
    v21 = v34;
    v20 = v35;
    v22 = *(v35 + 16);
    v33 = v1;
    v23 = v36;
    v22(v34, &v1[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger], v36);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v38 = v27;
      *v26 = 136315138;
      v32 = v24;
      v28 = UUID.uuidString.getter();
      v30 = sub_1000952D4(v28, v29, &v38);

      *(v26 + 4) = v30;
      v31 = v32;
      _os_log_impl(&_mh_execute_header, v32, v25, "User authorized pair setup for accessory token: %s.", v26, 0xCu);
      sub_100095808(v27);
    }

    else
    {
    }

    (*(v20 + 8))(v21, v23);
    return sub_1000DEA48(v37);
  }

  v15 = v35;
  v14 = v36;
  v16 = v33;
  (*(v35 + 16))(v33, &v1[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger], v36);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Ignoring duplicate user authorization request", v19, 2u);
  }

  else
  {
  }

  return (*(v15 + 8))(v16, v14);
}

uint64_t sub_1000DFCFC(uint64_t a1)
{
  v66 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v66 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v66);
  v63 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v62 = *(v6 - 8);
  v7 = *(v62 + 64);
  __chkstk_darwin(v6);
  v61 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = __chkstk_darwin(v9);
  v59 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v13;
  __chkstk_darwin(v12);
  v15 = &v55 - v14;
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v17 + 16);
  v69 = v1;
  v67 = v22;
  v21(v20, &v1[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger]);
  v23 = v10[2];
  v68 = v9;
  v57 = v10 + 2;
  v56 = v23;
  v23(v15, a1, v9);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  v26 = os_log_type_enabled(v24, v25);
  v64 = v6;
  v65 = v3;
  v60 = v10;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    aBlock[0] = v55;
    *v27 = 136315138;
    v28 = UUID.uuidString.getter();
    v30 = v29;
    v31 = v10[1];
    v32 = v68;
    v31(v15, v68);
    v33 = sub_1000952D4(v28, v30, aBlock);

    *(v27 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v24, v25, "Request to cancel pairing for token %s", v27, 0xCu);
    sub_100095808(v55);
  }

  else
  {

    v34 = v10[1];
    v32 = v68;
    v34(v15, v68);
  }

  (*(v17 + 8))(v20, v67);
  v35 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_tokens;
  v36 = v69;
  swift_beginAccess();
  v37 = *&v36[v35];
  if (v37 >> 62)
  {
LABEL_21:
    v38 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v38)
  {
    v39 = 0;
    do
    {
      if ((v37 & 0xC000000000000001) != 0)
      {
        v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v41 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
LABEL_16:
          __break(1u);
        }
      }

      else
      {
        if (v39 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_21;
        }

        v40 = *(v37 + 8 * v39 + 32);

        v41 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          goto LABEL_16;
        }
      }

      if (static UUID.== infix(_:_:)())
      {

        v43 = v69;
        v44 = *&v69[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_workQueue];
        v45 = v59;
        v56(v59, a1, v32);
        v46 = v60;
        v47 = (*(v60 + 80) + 32) & ~*(v60 + 80);
        v48 = swift_allocObject();
        *(v48 + 16) = v40;
        *(v48 + 24) = v43;
        (v46[4])(v48 + v47, v45, v32);
        aBlock[4] = sub_1000E1448;
        aBlock[5] = v48;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100147FC8;
        aBlock[3] = &unk_1002766D0;
        v49 = _Block_copy(aBlock);
        v50 = v44;

        v51 = v43;
        v52 = v61;
        static DispatchQoS.unspecified.getter();
        v70 = _swiftEmptyArrayStorage;
        sub_1000E4D0C(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags);
        sub_100095274(&unk_1002A6B60, qword_10023AE10);
        sub_1000E4D54(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
        v53 = v63;
        v54 = v66;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v49);

        (*(v65 + 8))(v53, v54);
        (*(v62 + 8))(v52, v64);
      }

      ++v39;
    }

    while (v41 != v38);
  }
}

void sub_1000E0424(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v63 = *(v6 - 8);
  v64 = v6;
  v7 = *(v63 + 64);
  __chkstk_darwin(v6);
  v62 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_setupPayload;
  v10 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_setupPayload + 32);
  v11 = *(v9 + 40);
  sub_1000A0CD8(v10, v11);
  v12 = sub_10014025C(v10, v11);
  v14 = v13;
  sub_1000A0D2C(v10, v11);
  v15 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
  v16 = *(a2 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem);
  OS_dispatch_semaphore.wait()();

  v17 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
  swift_beginAccess();
  v18 = *(a2 + v17);
  v19 = *(v18 + 16);
  if (!v19)
  {
LABEL_15:
    v29 = *(a2 + v15);
    OS_dispatch_semaphore.signal()();

    v71 = 0;
    v69 = 0u;
    v70 = 0u;

    if (!*(&v70 + 1))
    {
      goto LABEL_31;
    }

    goto LABEL_16;
  }

  v65 = v15;
  v66 = a3;
  v67 = a2;
  v20 = v18 + 32;

  a2 = 0;
  while (1)
  {
    if (a2 >= *(v18 + 16))
    {
      __break(1u);
      goto LABEL_40;
    }

    sub_1000A097C(v20, v68);
    v21 = *(*sub_1000A09E0(v68, v68[3]) + 32);
    if (!v21)
    {
      goto LABEL_4;
    }

    v22 = v21;
    v23 = [v22 identifier];
    if (v23)
    {
      break;
    }

LABEL_3:

LABEL_4:
    ++a2;
    sub_100095808(v68);
    v20 += 40;
    if (v19 == a2)
    {

      a3 = v66;
      a2 = v67;
      v15 = v65;
      goto LABEL_15;
    }
  }

  v24 = v23;
  a3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  if (a3 != v12 || v26 != v14)
  {
    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v28)
    {
      goto LABEL_30;
    }

    goto LABEL_3;
  }

LABEL_30:

  a2 = v67;
  v45 = *(v67 + v65);
  OS_dispatch_semaphore.signal()();

  sub_1000A097C(v68, &v69);
  sub_100095808(v68);

  a3 = v66;
  if (!*(&v70 + 1))
  {
LABEL_31:
    sub_100095C84(&v69, &unk_1002A6F40, &unk_10023BE90);
LABEL_32:
    if (qword_1002A67A0 == -1)
    {
LABEL_33:
      v46 = qword_1002B1EB8;
      v47 = swift_allocObject();
      *(v47 + 16) = v46;
      *(v47 + 24) = 0;
      v48 = v46;
      sub_1001D5444(sub_1000E1618, v47);

      __chkstk_darwin(v49);
      *(&v61 - 2) = a3;
      a3 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_tokens;
      swift_beginAccess();
      v50 = sub_1000E1620(sub_1000E4DDC, (&v61 - 4));
      v51 = *(a2 + a3);
      if (v51 >> 62)
      {
        v58 = v50;
        v52 = _CocoaArrayWrapper.endIndex.getter();
        v50 = v58;
        if (v52 < v58)
        {
          goto LABEL_42;
        }

LABEL_35:
        sub_1001A11BC(v50, v52);
        swift_endAccess();
        return;
      }

      v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v52 >= v50)
      {
        goto LABEL_35;
      }

LABEL_42:
      __break(1u);
LABEL_43:
      swift_once();
LABEL_19:
      v30 = qword_1002B1EB8;
      v31 = swift_allocObject();
      *(v31 + 16) = v30;
      *(v31 + 24) = 0;
      v32 = v30;
      sub_1001D5444(sub_1000E4DF8, v31);

      __chkstk_darwin(v33);
      *(&v61 - 2) = a3;
      v34 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_tokens;
      swift_beginAccess();
      v35 = sub_1000E1620(sub_1000E4DDC, (&v61 - 4));
      v36 = *(a2 + v34);
      if (!(v36 >> 62))
      {
        v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v37 >= v35)
        {
          goto LABEL_21;
        }

LABEL_45:
        __break(1u);
LABEL_46:
        v60 = v35;
        v57 = _CocoaArrayWrapper.endIndex.getter();
        v35 = v60;
        if (v57 < v60)
        {
LABEL_47:
          __break(1u);
        }

LABEL_38:
        sub_1001A11BC(v35, v57);
        swift_endAccess();

        return;
      }

      v59 = v35;
      v37 = _CocoaArrayWrapper.endIndex.getter();
      v35 = v59;
      if (v37 < v59)
      {
        goto LABEL_45;
      }

LABEL_21:
      sub_1001A11BC(v35, v37);
      swift_endAccess();
LABEL_28:

      return;
    }

LABEL_40:
    swift_once();
    goto LABEL_33;
  }

LABEL_16:
  sub_100095274(&unk_1002A7A90, &unk_10023C960);
  type metadata accessor for DaemonAccessory();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_32;
  }

  if (*(v68[0] + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_paired) == 2)
  {
    if (qword_1002A67A0 != -1)
    {
      goto LABEL_43;
    }

    goto LABEL_19;
  }

  v38 = *(v68[0] + 32);
  if (!v38)
  {
    goto LABEL_28;
  }

  objc_opt_self();
  v39 = swift_dynamicCastObjCClass();
  if (!v39)
  {
    goto LABEL_28;
  }

  v40 = v39;
  (*(v63 + 16))(v62, a2 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger, v64);
  v12 = v38;
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&_mh_execute_header, v41, v42, "User canceled in-progress pairing.", v43, 2u);
  }

  (*(v63 + 8))(v62, v64);
  *&v69 = 0;
  if (![v40 stopPairingWithError:&v69])
  {
    v53 = v69;
    _convertNSErrorToError(_:)();

    v54 = swift_willThrow();
    __chkstk_darwin(v54);
    *(&v61 - 2) = a3;
    v55 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_tokens;
    swift_beginAccess();
    v35 = sub_1000E1620(sub_1000E4DDC, (&v61 - 4));
    v56 = *(a2 + v55);
    if (v56 >> 62)
    {
      goto LABEL_46;
    }

    v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v57 < v35)
    {
      goto LABEL_47;
    }

    goto LABEL_38;
  }

  v44 = v69;
}

void sub_1000E0C3C()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v60 = *(v5 - 8);
  v6 = *(v60 + 64);
  __chkstk_darwin(v5);
  v59 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v63 = *(v8 - 8);
  v9 = v63[8];
  v10 = __chkstk_darwin(v8);
  v61 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v51 - v12;
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v14 = qword_1002B1CF0;
  v15 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v16 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v16 + 4);

  v17 = *(v14 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_docked);
  v18 = *(v14 + v15);
  v19 = v17;

  os_unfair_lock_unlock(v18 + 4);

  if (v17)
  {
    v20 = *&v62[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_dockDetector];
    v21 = OBJC_IVAR____TtC14dockaccessoryd12DockDetector_startupValidator;
    swift_beginAccess();
    v57 = v21;
    v58 = v20;
    v22 = *(v20 + v21);
    v23 = *&v22[OBJC_IVAR____TtC14dockaccessoryd15MotionValidator__timer];
    v55 = v1;
    v56 = v0;
    v53 = v4;
    v54 = v5;
    if (v23 && (v22[OBJC_IVAR____TtC14dockaccessoryd15MotionValidator_type] & 1) == 0)
    {
      v25 = v22;
      v24 = sub_100149A98();
    }

    else
    {
      v24 = 1;
    }

    v26 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger;
    v27 = v63[2];
    v27(v13, &v62[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger], v8);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v52 = v8;
      *v30 = 67109120;
      *(v30 + 4) = v24 & 1;
      _os_log_impl(&_mh_execute_header, v28, v29, "startup motion is valid %{BOOL}d", v30, 8u);
      v8 = v52;
    }

    v31 = v63[1];
    ++v63;
    v31(v13, v8);
    if (v24)
    {
      v32 = *(v14 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_secureTrackingSessionManager);

      sub_1000EC468(1);
    }

    else
    {
      v52 = v31;
      v27(v61, &v62[v26], v8);
      v33 = v19;
      v34 = v19;
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        *v37 = 138412290;
        v39 = dispatch thunk of DockCoreAccessory.info.getter();
        *(v37 + 4) = v39;
        *v38 = v39;
        _os_log_impl(&_mh_execute_header, v35, v36, "startup motion is not valid, disconnecting %@", v37, 0xCu);
        sub_100095C84(v38, &unk_1002A6F60, &unk_10023C4E0);
      }

      v52(v61, v8);
      v40 = v62;
      v41 = *&v62[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_workQueue];
      v42 = swift_allocObject();
      *(v42 + 16) = v40;
      *(v42 + 24) = v34;
      aBlock[4] = sub_1000E3154;
      aBlock[5] = v42;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100147FC8;
      aBlock[3] = &unk_1002767C0;
      v43 = _Block_copy(aBlock);
      v44 = v34;
      v45 = v41;
      v46 = v40;
      v47 = v59;
      static DispatchQoS.unspecified.getter();
      v64 = _swiftEmptyArrayStorage;
      sub_1000E4D0C(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags);
      sub_100095274(&unk_1002A6B60, qword_10023AE10);
      sub_1000E4D54(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
      v48 = v53;
      v49 = v56;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v43);

      (*(v55 + 8))(v48, v49);
      (*(v60 + 8))(v47, v54);

      v19 = v33;
    }

    v50 = *(v58 + v57);
    MotionValidator.stop()();
  }
}

void sub_1000E1328()
{
  v0 = dispatch thunk of DockCoreAccessory.info.getter();
  sub_1000DD72C(v0, 0);
}

uint64_t sub_1000E137C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_1000E1448()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  sub_1000E0424(v2, v3, v4);
}

uint64_t sub_1000E14AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1000E14C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v7 = v6;
  v16 = 0;
  v8 = [v3 initWithContentsOfURL:v6 options:a2 error:&v16];

  v9 = v16;
  if (v8)
  {
    v10 = type metadata accessor for URL();
    v11 = *(*(v10 - 8) + 8);
    v12 = v9;
    v11(a1, v10);
  }

  else
  {
    v13 = v16;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v14 = type metadata accessor for URL();
    (*(*(v14 - 8) + 8))(a1, v14);
  }

  return v8;
}

uint64_t sub_1000E1620(uint64_t (*a1)(uint64_t *), uint64_t a2)
{
  v6 = *v3;
  v7 = sub_1000E18A4(a1, a2, *v3);
  if (v4)
  {
    return v2;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = v7;
  v10 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  while (1)
  {
    if (v6 >> 62)
    {
      if (v10 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v2;
      }
    }

    else if (v10 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v2;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_40;
      }

      if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v12 = *(v6 + 8 * v10 + 32);
    }

    v22 = v12;
    v13 = a1(&v22);

    if ((v13 & 1) == 0)
    {
      break;
    }

LABEL_10:
    v11 = __OFADD__(v10++, 1);
    if (v11)
    {
      goto LABEL_42;
    }
  }

  if (v2 == v10)
  {
LABEL_9:
    v11 = __OFADD__(v2++, 1);
    if (v11)
    {
      goto LABEL_43;
    }

    goto LABEL_10;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      goto LABEL_45;
    }

    v16 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2 >= v16)
    {
      goto LABEL_46;
    }

    if (v10 >= v16)
    {
      goto LABEL_47;
    }

    v14 = *(v6 + 32 + 8 * v2);
    v15 = *(v6 + 32 + 8 * v10);
  }

  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    v6 = sub_1001A347C(v6);
    v17 = (v6 >> 62) & 1;
  }

  else
  {
    LODWORD(v17) = 0;
  }

  v18 = v6 & 0xFFFFFFFFFFFFFF8;
  v19 = *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20);
  *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20) = v15;

  if ((v6 & 0x8000000000000000) == 0 && !v17)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  v6 = sub_1001A347C(v6);
  v18 = v6 & 0xFFFFFFFFFFFFFF8;
  if ((v10 & 0x8000000000000000) == 0)
  {
LABEL_33:
    if (v10 >= *(v18 + 16))
    {
      goto LABEL_44;
    }

    v20 = v18 + 8 * v10;
    v21 = *(v20 + 32);
    *(v20 + 32) = v14;

    *v3 = v6;
    goto LABEL_9;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

uint64_t sub_1000E18A4(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_19:
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      return 0;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(a3 + 8 * v7 + 32);
    }

    v13 = v8;
    v9 = a1(&v13);

    if (v3)
    {
      return result;
    }

    if (v9)
    {
      return v7;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

Swift::Int sub_1000E19C0(void **a1)
{
  v2 = *(type metadata accessor for BTDiscoveredDevice() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1001DA0BC(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1000E1A68(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_1000E1A68(uint64_t *a1)
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
        type metadata accessor for BTDiscoveredDevice();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for BTDiscoveredDevice() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1000E1DB4(v8, v9, a1, v4);
      v6[2] = 0;
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
    return sub_1000E1B94(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1000E1B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for BTDiscoveredDevice();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v34 - v14;
  result = __chkstk_darwin(v13);
  v19 = &v34 - v18;
  v36 = a2;
  if (a3 != a2)
  {
    v20 = *(v17 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v41 = *a4;
    v35 = v20;
    v24 = v41 + v20 * a3;
LABEL_5:
    v39 = v21;
    v40 = a3;
    v37 = v24;
    v38 = v23;
    v25 = v23;
    v26 = v21;
    while (1)
    {
      sub_1000E40C4(v24, v19);
      sub_1000E40C4(v26, v15);
      v27 = &v19[*(v8 + 28)];
      Date.timeIntervalSince1970.getter();
      v29 = v28;
      v30 = &v15[*(v8 + 28)];
      Date.timeIntervalSince1970.getter();
      v32 = v31;
      sub_1000E4128(v15);
      result = sub_1000E4128(v19);
      if (v32 >= v29)
      {
LABEL_4:
        a3 = v40 + 1;
        v21 = v39 + v35;
        v23 = v38 - 1;
        v24 = v37 + v35;
        if (v40 + 1 == v36)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v41)
      {
        break;
      }

      sub_1000E45C8(v24, v12);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1000E45C8(v12, v26);
      v26 += v22;
      v24 += v22;
      if (__CFADD__(v25++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000E1DB4(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v114 = a1;
  v7 = type metadata accessor for BTDiscoveredDevice();
  v122 = *(v7 - 8);
  v8 = *(v122 + 64);
  v9 = __chkstk_darwin(v7);
  v116 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v126 = &v111 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v111 - v14;
  result = __chkstk_darwin(v13);
  v18 = &v111 - v17;
  v124 = a3;
  v19 = *(a3 + 8);
  if (v19 < 1)
  {
    v21 = &_swiftEmptyArrayStorage;
LABEL_96:
    v4 = *v114;
    if (!*v114)
    {
      goto LABEL_135;
    }

    a3 = v21;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = v125;
    if (isUniquelyReferenced_nonNull_native)
    {
      result = a3;
    }

    else
    {
LABEL_129:
      result = sub_1001D99BC(a3);
    }

    v127 = result;
    a3 = *(result + 16);
    if (a3 >= 2)
    {
      while (*v124)
      {
        v107 = *(result + 16 * a3);
        v108 = result;
        v109 = *(result + 16 * (a3 - 1) + 40);
        sub_1000E2644(*v124 + *(v122 + 72) * v107, *v124 + *(v122 + 72) * *(result + 16 * (a3 - 1) + 32), *v124 + *(v122 + 72) * v109, v4);
        if (v15)
        {
        }

        if (v109 < v107)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v108 = sub_1001D99BC(v108);
        }

        if (a3 - 2 >= *(v108 + 2))
        {
          goto LABEL_123;
        }

        v110 = &v108[16 * a3];
        *v110 = v107;
        *(v110 + 1) = v109;
        v127 = v108;
        sub_1001D9930(a3 - 1);
        result = v127;
        a3 = *(v127 + 16);
        if (a3 <= 1)
        {
        }
      }

      goto LABEL_133;
    }
  }

  v20 = 0;
  v21 = &_swiftEmptyArrayStorage;
  v113 = a4;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    v117 = v21;
    if (v23 >= v19)
    {
      v19 = v23;
    }

    else
    {
      v24 = v22;
      v25 = *v124;
      v26 = *(v122 + 72);
      v4 = *v124 + v26 * v23;
      sub_1000E40C4(v4, v18);
      sub_1000E40C4(v25 + v26 * v24, v15);
      v27 = &v18[*(v7 + 28)];
      Date.timeIntervalSince1970.getter();
      v29 = v28;
      v30 = &v15[*(v7 + 28)];
      Date.timeIntervalSince1970.getter();
      v32 = v31;
      sub_1000E4128(v15);
      result = sub_1000E4128(v18);
      v112 = v24;
      a3 = v24 + 2;
      v123 = v26;
      v33 = v25 + v26 * a3;
      while (v19 != a3)
      {
        sub_1000E40C4(v33, v18);
        sub_1000E40C4(v4, v15);
        v34 = &v18[*(v7 + 28)];
        Date.timeIntervalSince1970.getter();
        v36 = v35;
        v37 = &v15[*(v7 + 28)];
        Date.timeIntervalSince1970.getter();
        v39 = v38;
        sub_1000E4128(v15);
        result = sub_1000E4128(v18);
        ++a3;
        v33 += v123;
        v4 += v123;
        if (v32 < v29 == v39 >= v36)
        {
          v19 = a3 - 1;
          break;
        }
      }

      v22 = v112;
      a4 = v113;
      if (v32 < v29)
      {
        if (v19 < v112)
        {
          goto LABEL_126;
        }

        if (v112 < v19)
        {
          v4 = v123 * (v19 - 1);
          v40 = v19 * v123;
          v121 = v19;
          v41 = v112;
          a3 = v112 * v123;
          do
          {
            if (v41 != --v19)
            {
              v120 = v19;
              v42 = *v124;
              if (!*v124)
              {
                goto LABEL_132;
              }

              sub_1000E45C8(v42 + a3, v116);
              if (a3 < v4 || v42 + a3 >= v42 + v40)
              {
                swift_arrayInitWithTakeFrontToBack();
                v19 = v120;
              }

              else
              {
                v19 = v120;
                if (a3 != v4)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = sub_1000E45C8(v116, v42 + v4);
            }

            ++v41;
            v4 -= v123;
            v40 -= v123;
            a3 += v123;
          }

          while (v41 < v19);
          v22 = v112;
          a4 = v113;
          v19 = v121;
        }
      }
    }

    v43 = v124[1];
    if (v19 < v43)
    {
      if (__OFSUB__(v19, v22))
      {
        goto LABEL_125;
      }

      if (v19 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_127;
        }

        if (v22 + a4 >= v43)
        {
          v4 = v124[1];
        }

        else
        {
          v4 = v22 + a4;
        }

        if (v4 < v22)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v19 != v4)
        {
          break;
        }
      }
    }

    v4 = v19;
    if (v19 < v22)
    {
      goto LABEL_124;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v117;
    }

    else
    {
      result = sub_100102974(0, *(v117 + 2) + 1, 1, v117);
      v21 = result;
    }

    a3 = *(v21 + 2);
    v44 = *(v21 + 3);
    v45 = a3 + 1;
    if (a3 >= v44 >> 1)
    {
      result = sub_100102974((v44 > 1), a3 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v45;
    v46 = &v21[16 * a3];
    *(v46 + 4) = v22;
    *(v46 + 5) = v4;
    v47 = *v114;
    if (!*v114)
    {
      goto LABEL_134;
    }

    v118 = v4;
    if (a3)
    {
      while (1)
      {
        v4 = v45 - 1;
        if (v45 >= 4)
        {
          break;
        }

        if (v45 == 3)
        {
          v48 = *(v21 + 4);
          v49 = *(v21 + 5);
          v58 = __OFSUB__(v49, v48);
          v50 = v49 - v48;
          v51 = v58;
LABEL_52:
          if (v51)
          {
            goto LABEL_113;
          }

          v64 = &v21[16 * v45];
          v66 = *v64;
          v65 = *(v64 + 1);
          v67 = __OFSUB__(v65, v66);
          v68 = v65 - v66;
          v69 = v67;
          if (v67)
          {
            goto LABEL_116;
          }

          v70 = &v21[16 * v4 + 32];
          v72 = *v70;
          v71 = *(v70 + 1);
          v58 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v58)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v68, v73))
          {
            goto LABEL_120;
          }

          if (v68 + v73 >= v50)
          {
            if (v50 < v73)
            {
              v4 = v45 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v74 = &v21[16 * v45];
        v76 = *v74;
        v75 = *(v74 + 1);
        v58 = __OFSUB__(v75, v76);
        v68 = v75 - v76;
        v69 = v58;
LABEL_66:
        if (v69)
        {
          goto LABEL_115;
        }

        v77 = &v21[16 * v4];
        v79 = *(v77 + 4);
        v78 = *(v77 + 5);
        v58 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v58)
        {
          goto LABEL_118;
        }

        if (v80 < v68)
        {
          goto LABEL_3;
        }

LABEL_73:
        a3 = v4 - 1;
        if (v4 - 1 >= v45)
        {
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
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
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
          goto LABEL_128;
        }

        if (!*v124)
        {
          goto LABEL_131;
        }

        v85 = v21;
        v86 = *&v21[16 * a3 + 32];
        v87 = *&v21[16 * v4 + 40];
        v88 = v125;
        sub_1000E2644(*v124 + *(v122 + 72) * v86, *v124 + *(v122 + 72) * *&v21[16 * v4 + 32], *v124 + *(v122 + 72) * v87, v47);
        v125 = v88;
        if (v88)
        {
        }

        if (v87 < v86)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v85 = sub_1001D99BC(v85);
        }

        if (a3 >= *(v85 + 2))
        {
          goto LABEL_110;
        }

        v89 = &v85[16 * a3];
        *(v89 + 4) = v86;
        *(v89 + 5) = v87;
        v127 = v85;
        result = sub_1001D9930(v4);
        v21 = v127;
        v45 = *(v127 + 16);
        if (v45 <= 1)
        {
          goto LABEL_3;
        }
      }

      v52 = &v21[16 * v45 + 32];
      v53 = *(v52 - 64);
      v54 = *(v52 - 56);
      v58 = __OFSUB__(v54, v53);
      v55 = v54 - v53;
      if (v58)
      {
        goto LABEL_111;
      }

      v57 = *(v52 - 48);
      v56 = *(v52 - 40);
      v58 = __OFSUB__(v56, v57);
      v50 = v56 - v57;
      v51 = v58;
      if (v58)
      {
        goto LABEL_112;
      }

      v59 = &v21[16 * v45];
      v61 = *v59;
      v60 = *(v59 + 1);
      v58 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v58)
      {
        goto LABEL_114;
      }

      v58 = __OFADD__(v50, v62);
      v63 = v50 + v62;
      if (v58)
      {
        goto LABEL_117;
      }

      if (v63 >= v55)
      {
        v81 = &v21[16 * v4 + 32];
        v83 = *v81;
        v82 = *(v81 + 1);
        v58 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v58)
        {
          goto LABEL_121;
        }

        if (v50 < v84)
        {
          v4 = v45 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = v124[1];
    v20 = v118;
    a4 = v113;
    if (v118 >= v19)
    {
      goto LABEL_96;
    }
  }

  a3 = *v124;
  v90 = *(v122 + 72);
  v91 = *v124 + v90 * (v19 - 1);
  v92 = -v90;
  v112 = v22;
  v93 = v22 - v19;
  v115 = v90;
  v94 = a3 + v19 * v90;
  v118 = v4;
LABEL_85:
  v120 = v93;
  v121 = v19;
  v119 = v94;
  v95 = v94;
  v96 = v93;
  v123 = v91;
  v97 = v91;
  while (1)
  {
    sub_1000E40C4(v95, v18);
    sub_1000E40C4(v97, v15);
    v98 = &v18[*(v7 + 28)];
    Date.timeIntervalSince1970.getter();
    v100 = v99;
    v101 = &v15[*(v7 + 28)];
    Date.timeIntervalSince1970.getter();
    v103 = v102;
    sub_1000E4128(v15);
    result = sub_1000E4128(v18);
    if (v103 >= v100)
    {
LABEL_84:
      v19 = v121 + 1;
      v91 = v123 + v115;
      v93 = v120 - 1;
      v4 = v118;
      v94 = v119 + v115;
      if (v121 + 1 != v118)
      {
        goto LABEL_85;
      }

      v22 = v112;
      if (v118 < v112)
      {
        goto LABEL_124;
      }

      goto LABEL_33;
    }

    if (!a3)
    {
      break;
    }

    v104 = v126;
    sub_1000E45C8(v95, v126);
    swift_arrayInitWithTakeFrontToBack();
    sub_1000E45C8(v104, v97);
    v97 += v92;
    v95 += v92;
    if (__CFADD__(v96++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
  return result;
}

uint64_t sub_1000E2644(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for BTDiscoveredDevice();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v57 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v10);
  v56 = &v49 - v13;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_59;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_60;
  }

  v17 = (a2 - a1) / v15;
  v60 = a1;
  v59 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v29 = a4 + v19;
    if (v19 >= 1)
    {
      v30 = -v15;
      v31 = a4 + v19;
      v52 = v30;
      v53 = a1;
      v51 = v8;
      do
      {
        v49 = v29;
        v32 = a2 + v30;
        v54 = a2;
        v55 = a2 + v30;
        while (1)
        {
          if (a2 <= a1)
          {
            v60 = a2;
            v58 = v49;
            goto LABEL_57;
          }

          v50 = v29;
          v34 = a4;
          v35 = v8;
          v36 = a3 + v30;
          v37 = v31 + v30;
          v38 = v56;
          v39 = v31;
          sub_1000E40C4(v37, v56);
          v40 = v57;
          sub_1000E40C4(v32, v57);
          v41 = v38 + *(v35 + 28);
          Date.timeIntervalSince1970.getter();
          v43 = v42;
          v44 = v40 + *(v35 + 28);
          Date.timeIntervalSince1970.getter();
          v46 = v45;
          sub_1000E4128(v40);
          sub_1000E4128(v38);
          if (v46 < v43)
          {
            break;
          }

          v29 = v37;
          a4 = v34;
          if (a3 < v39 || v36 >= v39)
          {
            a3 = v36;
            v8 = v51;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v53;
          }

          else
          {
            v47 = a3 == v39;
            a3 = v36;
            v8 = v51;
            a1 = v53;
            if (!v47)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v31 = v37;
          v33 = v37 > v34;
          a2 = v54;
          v32 = v55;
          v30 = v52;
          if (!v33)
          {
            goto LABEL_55;
          }
        }

        v48 = v39;
        a4 = v34;
        if (a3 < v54 || v36 >= v54)
        {
          a3 = v36;
          a2 = v55;
          v8 = v51;
          swift_arrayInitWithTakeFrontToBack();
          v30 = v52;
          a1 = v53;
          v29 = v50;
        }

        else
        {
          v47 = a3 == v54;
          a3 = v36;
          v29 = v50;
          v8 = v51;
          a2 = v55;
          v30 = v52;
          a1 = v53;
          if (!v47)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v31 = v48;
      }

      while (v48 > v34);
    }

LABEL_55:
    v60 = a2;
    v58 = v29;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v55 = a4 + v18;
    v58 = a4 + v18;
    if (v18 >= 1 && a2 < a3)
    {
      do
      {
        v21 = v56;
        sub_1000E40C4(a2, v56);
        v22 = v57;
        sub_1000E40C4(a4, v57);
        v23 = v21 + *(v8 + 28);
        Date.timeIntervalSince1970.getter();
        v25 = v24;
        v26 = v22 + *(v8 + 28);
        Date.timeIntervalSince1970.getter();
        v28 = v27;
        sub_1000E4128(v22);
        sub_1000E4128(v21);
        if (v28 >= v25)
        {
          if (a1 < a4 || a1 >= a4 + v15)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v59 = a4 + v15;
          a4 += v15;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v15)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v15;
        }

        a1 += v15;
        v60 = a1;
      }

      while (a4 < v55 && a2 < a3);
    }
  }

LABEL_57:
  sub_1001D99D0(&v60, &v59, &v58);
  return 1;
}

BOOL sub_1000E2B14()
{
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v0 = qword_1002B1CF0;
  v1 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v2 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
  v4 = *(v0 + v1);
  v5 = v3;

  os_unfair_lock_unlock(v4 + 4);

  if (v3)
  {

    return 1;
  }

  else
  {
    if (qword_1002A67A0 != -1)
    {
      swift_once();
    }

    return (*(qword_1002B1EB8 + OBJC_IVAR____TtC14dockaccessoryd6BTLink_mode) & 0xFE) == 2;
  }
}

uint64_t sub_1000E2C2C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v41 = *a1 >> 62;
  if (v41)
  {
    goto LABEL_71;
  }

  v44 = v2 & 0xFFFFFFFFFFFFFF8;
  v47 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = 0;
  v46 = a2 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_setupPayload;
  v43 = v2 & 0xC000000000000001;
  while (v47 != v3)
  {
    if (v43)
    {
      v4 = v2;
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v3 >= *(v44 + 16))
      {
        goto LABEL_67;
      }

      v4 = v2;
      v5 = *(v2 + 8 * v3 + 32);
    }

    v6 = *(v5 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_setupPayload + 32);
    v7 = *(v5 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_setupPayload + 40);
    sub_1000A0CD8(v6, v7);
    v8 = sub_10014025C(v6, v7);
    v10 = v9;
    sub_1000A0D2C(v6, v7);
    v2 = *(v46 + 32);
    v11 = *(v46 + 40);
    sub_1000A0CD8(v2, v11);
    v12 = sub_10014025C(v2, v11);
    v14 = v13;
    sub_1000A0D2C(v2, v11);
    if (v8 == v12 && v10 == v14)
    {

LABEL_21:
      v19 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
        goto LABEL_24;
      }

      while (2)
      {
        if (v4 >> 62)
        {
          if (v19 == _CocoaArrayWrapper.endIndex.getter())
          {
            return v3;
          }
        }

        else if (v19 == *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          return v3;
        }

        v47 = v4;
        v45 = v4 & 0xC000000000000001;
        if ((v4 & 0xC000000000000001) != 0)
        {
          v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v19 & 0x8000000000000000) != 0)
          {
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
            __break(1u);
LABEL_71:
            v44 = v2 & 0xFFFFFFFFFFFFFF8;
            v39 = a2;
            v40 = _CocoaArrayWrapper.endIndex.getter();
            a2 = v39;
            v47 = v40;
            goto LABEL_3;
          }

          if (v19 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_65;
          }

          v20 = *(v4 + 8 * v19 + 32);
        }

        v21 = *(v20 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_setupPayload + 32);
        v22 = *(v20 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_setupPayload + 40);
        sub_1000A0CD8(v21, v22);
        v23 = sub_10014025C(v21, v22);
        v25 = v24;
        sub_1000A0D2C(v21, v22);
        v26 = *(v46 + 32);
        v2 = *(v46 + 40);
        sub_1000A0CD8(v26, v2);
        v27 = sub_10014025C(v26, v2);
        v29 = v28;
        sub_1000A0D2C(v26, v2);
        if (v23 == v27 && v25 == v29)
        {
LABEL_24:
        }

        else
        {
          v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v31 & 1) == 0)
          {
            v4 = v47;
            if (v3 != v19)
            {
              if (v45)
              {
                v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if ((v3 & 0x8000000000000000) != 0)
                {
                  __break(1u);
LABEL_73:
                  __break(1u);
LABEL_74:
                  __break(1u);
                  return result;
                }

                v34 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v3 >= v34)
                {
                  goto LABEL_73;
                }

                if (v19 >= v34)
                {
                  goto LABEL_74;
                }

                v32 = *(v47 + 32 + 8 * v3);
                v33 = *(v47 + 32 + 8 * v19);
              }

              if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v47 & 0x8000000000000000) != 0 || (v47 & 0x4000000000000000) != 0)
              {
                v4 = sub_1001A347C(v47);
                v2 = (v4 >> 62) & 1;
              }

              else
              {
                v2 = 0;
              }

              v35 = v4 & 0xFFFFFFFFFFFFFF8;
              v36 = *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v3 + 0x20);
              *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v3 + 0x20) = v33;

              if ((v4 & 0x8000000000000000) != 0 || v2)
              {
                v4 = sub_1001A347C(v4);
                v35 = v4 & 0xFFFFFFFFFFFFFF8;
                if ((v19 & 0x8000000000000000) != 0)
                {
LABEL_62:
                  __break(1u);
                  return _CocoaArrayWrapper.endIndex.getter();
                }
              }

              else if ((v19 & 0x8000000000000000) != 0)
              {
                goto LABEL_62;
              }

              if (v19 >= *(v35 + 16))
              {
                goto LABEL_70;
              }

              v37 = v35 + 8 * v19;
              v38 = *(v37 + 32);
              *(v37 + 32) = v32;

              *a1 = v4;
            }

            v17 = __OFADD__(v3++, 1);
            if (v17)
            {
              goto LABEL_69;
            }

            goto LABEL_26;
          }
        }

        v4 = v47;
LABEL_26:
        v17 = __OFADD__(v19++, 1);
        if (v17)
        {
          goto LABEL_66;
        }

        continue;
      }
    }

    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v16)
    {
      goto LABEL_21;
    }

    v17 = __OFADD__(v3++, 1);
    v2 = v4;
    if (v17)
    {
      goto LABEL_68;
    }
  }

  if (v41)
  {
    return _CocoaArrayWrapper.endIndex.getter();
  }

  return *(v44 + 16);
}

uint64_t sub_1000E30D0(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  return static UUID.== infix(_:_:)() & 1;
}

uint64_t sub_1000E3114()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1000E3154()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1000E1328();
}

uint64_t sub_1000E315C(void *a1, uint64_t a2)
{
  v32 = a2;
  v31 = type metadata accessor for UUID();
  v3 = *(*(v31 - 8) + 64);
  v4 = __chkstk_darwin(v31);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v9 = &v26 - v8;
  v27 = a1;
  v36 = *a1;
  v10 = v36 + 2;
  v29 = v36[2];
  if (!v29)
  {
    return *v10;
  }

  v11 = 0;
  v30 = (v7 + 8);
  for (i = 7; ; i += 5)
  {
    v13 = *(*sub_1000A09E0(&v36[i - 3], v36[i]) + 24);
    DockCoreInfo.identifier.getter();

    DockCoreInfo.identifier.getter();
    LOBYTE(v13) = static UUID.== infix(_:_:)();
    v14 = v31;
    v15 = *v30;
    (*v30)(v6, v31);
    result = (v15)(v9, v14);
    if (v13)
    {
      break;
    }

    if (v29 == ++v11)
    {
      return *v10;
    }
  }

  v17 = v11 + 1;
  if (__OFADD__(v11, 1))
  {
    goto LABEL_28;
  }

  v18 = *v10;
  if (v17 == *v10)
  {
    return v11;
  }

  v19 = i * 8 + 16;
  v20 = v36;
  v28 = v9;
  while (v17 < v18)
  {
    v36 = v20;
    v29 = v19;
    sub_1000A097C(v20 + v19, &v34);
    v22 = *(*sub_1000A09E0(&v34, v35) + 24);
    DockCoreInfo.identifier.getter();

    DockCoreInfo.identifier.getter();
    LOBYTE(v22) = static UUID.== infix(_:_:)();
    v23 = v31;
    v15(v6, v31);
    v15(v9, v23);
    result = sub_100095808(&v34);
    if (v22)
    {
      v20 = v36;
      v9 = v28;
      v21 = v29;
    }

    else if (v17 == v11)
    {
      v20 = v36;
      v9 = v28;
      v21 = v29;
      ++v11;
    }

    else
    {
      v20 = v36;
      if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_24;
      }

      v24 = *v10;
      if (v11 >= *v10)
      {
        goto LABEL_25;
      }

      result = sub_1000A097C(&v36[5 * v11 + 4], &v34);
      if (v17 >= v24)
      {
        goto LABEL_26;
      }

      v21 = v29;
      sub_1000A097C(v20 + v29, v33);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_10019F76C(v20);
      }

      v9 = v28;
      v25 = &v20[5 * v11];
      sub_100095808(v25 + 4);
      result = sub_1000A0D80(v33, (v25 + 4));
      if (v17 >= v20[2])
      {
        goto LABEL_27;
      }

      sub_100095808((v20 + v21));
      result = sub_1000A0D80(&v34, v20 + v21);
      *v27 = v20;
      ++v11;
    }

    ++v17;
    v10 = v20 + 2;
    v18 = v20[2];
    v19 = v21 + 40;
    if (v17 == v18)
    {
      return v11;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

unsigned __int8 *sub_1000E34CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char **a6)
{
  result = __DataStorage._bytes.getter();
  v13 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v13 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  __DataStorage._length.getter();
  result = sub_1001B1A44(v13, a4, a5, a6, &v14);
  if (!v6)
  {
    return v14;
  }

  return result;
}

uint64_t sub_1000E3590(void *a1, uint64_t a2)
{
  v34 = a2;
  v33 = type metadata accessor for UUID();
  v3 = *(*(v33 - 8) + 64);
  v4 = __chkstk_darwin(v33);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v9 = &v28 - v8;
  v29 = a1;
  v38 = *a1;
  v10 = v38 + 2;
  v31 = v38[2];
  if (!v31)
  {
    return *v10;
  }

  v11 = 0;
  v32 = (v7 + 8);
  for (i = 7; ; i += 5)
  {
    v13 = *(*sub_1000A09E0(&v38[i - 3], v38[i]) + 24);
    DockCoreInfo.identifier.getter();

    v14 = *(v34 + 24);
    DockCoreInfo.identifier.getter();

    LOBYTE(v14) = static UUID.== infix(_:_:)();
    v15 = v33;
    v16 = *v32;
    (*v32)(v6, v33);
    result = (v16)(v9, v15);
    if (v14)
    {
      break;
    }

    if (v31 == ++v11)
    {
      return *v10;
    }
  }

  v18 = v11 + 1;
  if (__OFADD__(v11, 1))
  {
    goto LABEL_28;
  }

  v19 = *v10;
  if (v18 == *v10)
  {
    return v11;
  }

  v20 = i * 8 + 16;
  v21 = v38;
  v30 = v9;
  while (v18 < v19)
  {
    v38 = v21;
    v31 = v20;
    sub_1000A097C(v21 + v20, &v36);
    v23 = *(*sub_1000A09E0(&v36, v37) + 24);
    DockCoreInfo.identifier.getter();

    v24 = *(v34 + 24);
    DockCoreInfo.identifier.getter();

    LOBYTE(v24) = static UUID.== infix(_:_:)();
    v25 = v33;
    v16(v6, v33);
    v16(v9, v25);
    result = sub_100095808(&v36);
    if (v24)
    {
      v21 = v38;
      v9 = v30;
      v22 = v31;
    }

    else if (v18 == v11)
    {
      v21 = v38;
      v9 = v30;
      v22 = v31;
      ++v11;
    }

    else
    {
      v21 = v38;
      if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_24;
      }

      v26 = *v10;
      if (v11 >= *v10)
      {
        goto LABEL_25;
      }

      result = sub_1000A097C(&v38[5 * v11 + 4], &v36);
      if (v18 >= v26)
      {
        goto LABEL_26;
      }

      v22 = v31;
      sub_1000A097C(v21 + v31, v35);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_10019F76C(v21);
      }

      v9 = v30;
      v27 = &v21[5 * v11];
      sub_100095808(v27 + 4);
      result = sub_1000A0D80(v35, (v27 + 4));
      if (v18 >= v21[2])
      {
        goto LABEL_27;
      }

      sub_100095808((v21 + v22));
      result = sub_1000A0D80(&v36, v21 + v22);
      *v29 = v21;
      ++v11;
    }

    ++v18;
    v10 = v21 + 2;
    v19 = v21[2];
    v20 = v22 + 40;
    if (v18 == v19)
    {
      return v11;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1000E3924(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000A139C;

  return sub_1000DCE30(a1, v4, v5, v7, v6);
}

uint64_t sub_1000E39E4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000E3A24()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10009862C;

  return sub_1000DCF1C();
}

uint64_t sub_1000E3AE0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000E3B28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000A139C;

  return sub_1000DD40C(a1, v4, v5, v7, v6);
}

unint64_t sub_1000E3C10()
{
  result = qword_1002A7AC0;
  if (!qword_1002A7AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A7AC0);
  }

  return result;
}

uint64_t sub_1000E3CC0()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1000E3D28(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  while (1)
  {
    if (v3 == v4)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v5 = *(a1 + 8 * v4 + 32);
    }

    v6 = static UUID.== infix(_:_:)();

    if (v6)
    {
      return v4;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_16;
    }
  }
}

unint64_t sub_1000E3E3C(unint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  result = sub_1000E3D28(*a1);
  v6 = result;
  if (v1)
  {
    return v6;
  }

  if (v5)
  {
    if (v3 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  while (1)
  {
    if (v3 >> 62)
    {
      if (v7 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v6;
      }
    }

    else if (v7 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v6;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_15;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

    v9 = *(v3 + 8 * v7 + 32);

LABEL_15:
    v10 = static UUID.== infix(_:_:)();

    if ((v10 & 1) == 0)
    {
      if (v6 != v7)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v6 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

          v13 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v6 >= v13)
          {
            goto LABEL_45;
          }

          if (v7 >= v13)
          {
            goto LABEL_46;
          }

          v11 = *(v3 + 32 + 8 * v6);
          v12 = *(v3 + 32 + 8 * v7);
        }

        v14 = v2;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
        {
          v3 = sub_1001A347C(v3);
          v15 = (v3 >> 62) & 1;
        }

        else
        {
          LODWORD(v15) = 0;
        }

        v16 = v3 & 0xFFFFFFFFFFFFFF8;
        v17 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20);
        *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20) = v12;

        if ((v3 & 0x8000000000000000) != 0 || v15)
        {
          v3 = sub_1001A347C(v3);
          v16 = v3 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v6;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v7 >= *(v16 + 16))
        {
          goto LABEL_43;
        }

        v2 = v14;
        v18 = v16 + 8 * v7;
        v19 = *(v18 + 32);
        *(v18 + 32) = v11;

        *v14 = v3;
      }

      v8 = __OFADD__(v6++, 1);
      if (v8)
      {
        goto LABEL_42;
      }
    }

    v8 = __OFADD__(v7++, 1);
    if (v8)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

uint64_t sub_1000E40C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BTDiscoveredDevice();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E4128(uint64_t a1)
{
  v2 = type metadata accessor for BTDiscoveredDevice();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000E4184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a2)
  {

    sub_1000A0CD8(a5, a6);
  }
}

void sub_1000E41D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a2)
  {

    sub_1000A0D2C(a5, a6);
  }
}

uint64_t sub_1000E4270()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000E42E8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 48);

  sub_1000A0D2C(*(v0 + 72), *(v0 + 80));

  if (*(v0 + 96))
  {
    v3 = *(v0 + 104);
  }

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_1000E43EC()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_1000E442C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1000A139C;

  return sub_1000D4CEC(a1, a2, v6, v7, v8);
}

void sub_1000E44EC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  sub_1000DD72C(v1, 1);
}

void sub_1000E4518()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);
  sub_1000DBFD4(v1, v2);
}

uint64_t sub_1000E454C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  sub_1000A0D2C(*(v0 + 64), *(v0 + 72));

  if (*(v0 + 88))
  {
    v3 = *(v0 + 96);
  }

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_1000E45C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BTDiscoveredDevice();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E462C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000E468C()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000E46D8()
{
  v1 = *(v0 + 24);

  if (*(v0 + 32))
  {
    v2 = *(v0 + 40);
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000E4728()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  return sub_1000D0B3C(v1, v2, v3);
}

uint64_t sub_1000E4764()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

void sub_1000E47B8(uint64_t a1, uint64_t a2, unint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if (a4 != 2)
  {
    sub_1000A0D2C(a2, a3);

    sub_1000A0D2C(a5, a6);
  }
}

uint64_t sub_1000E4814()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000E485C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000E48A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100095274(&qword_1002A6B70, &unk_10023C9C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E4914(uint64_t a1, uint64_t a2)
{
  v4 = sub_100095274(&qword_1002A6B70, &unk_10023C9C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E4984(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_1000E49D4(const char *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v1 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger, v3);
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

uint64_t sub_1000E4B34(uint64_t a1, unint64_t a2, const char *a3)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, v3 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_logger, v7);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v12, v13))
  {
    goto LABEL_4;
  }

  v14 = a3;
  v15 = swift_slowAlloc();
  result = swift_slowAlloc();
  v19 = result;
  *v15 = 136315138;
  if (a2)
  {
    v17 = result;
    *(v15 + 4) = sub_1000952D4(a1, a2, &v19);
    _os_log_impl(&_mh_execute_header, v12, v13, v14, v15, 0xCu);
    sub_100095808(v17);

LABEL_4:

    return (*(v8 + 8))(v11, v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000E4D0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000E4D54(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10009589C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000E4E98()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v0[OBJC_IVAR____TtC14dockaccessoryd6BTLink_shouldScan] = 0;
  v11 = *&v0[OBJC_IVAR____TtC14dockaccessoryd6BTLink_queue];
  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  aBlock[4] = sub_1000E524C;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147FC8;
  aBlock[3] = &unk_100276F40;
  v13 = _Block_copy(aBlock);
  v14 = v11;
  v15 = v0;
  static DispatchQoS.unspecified.getter();
  v17[1] = &_swiftEmptyArrayStorage;
  sub_1000E5288();
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_1000BAB30();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v2 + 8))(v5, v1);
  (*(v7 + 8))(v10, v6);
}

uint64_t sub_1000E5128()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC14dockaccessoryd6BTLink_btScan))
  {

    sub_1000F5AB8();
  }

  v2 = (v0 + OBJC_IVAR____TtC14dockaccessoryd6BTLink_match);
  v3 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd6BTLink_match);
  if (v3)
  {
    v4 = v2[1];

    v3(0);
    sub_1000BAA84(v3);
    v5 = *v2;
  }

  else
  {
    v5 = 0;
  }

  v6 = v2[1];
  *v2 = 0;
  v2[1] = 0;
  sub_1000BAA84(v5);
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v7 = OBJC_IVAR____TtC14dockaccessoryd6BTLink_filter;
  swift_beginAccess();
  sub_1000E52E0(v9, v1 + v7);
  return swift_endAccess();
}

uint64_t sub_1000E5214()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000E5270(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000E5288()
{
  result = qword_1002A7150;
  if (!qword_1002A7150)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A7150);
  }

  return result;
}

uint64_t sub_1000E52E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100095274(&qword_1002A7B30, &qword_10023CA08);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E5368(uint64_t a1)
{
  v2 = sub_1000E70F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000E53A4(uint64_t a1)
{
  v2 = sub_1000E70F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000E54C0@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1000E54FC(uint64_t a1)
{
  v2 = sub_1000E7144();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000E5538(uint64_t a1)
{
  v2 = sub_1000E7144();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000E55B8(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v8 = sub_100095274(a4, a5);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  sub_1000A09E0(a1, a1[3]);
  a6();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1000E56D8()
{
  v1[2] = v0;
  v2 = type metadata accessor for ActivityPresentationOptions();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = *(*(sub_100095274(&qword_1002A7C88, &qword_10023CC10) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v6 = sub_100095274(&qword_1002A7C78, &qword_10023CBF8);
  v1[7] = v6;
  v7 = *(v6 - 8);
  v1[8] = v7;
  v8 = *(v7 + 64) + 15;
  v1[9] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[10] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(sub_1000E586C, v10, v9);
}

uint64_t sub_1000E586C()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[5];
  v4 = v0[6];

  v5 = type metadata accessor for Date();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_1000E6F94();
  sub_1000E6FEC();
  sub_1000E7044();
  ActivityContent.init(state:staleDate:relevanceScore:)();
  sub_100095274(&qword_1002A7C90, &unk_10023CC18);
  v6 = type metadata accessor for ActivityPresentationOptions.ActivityPresentationDestination();
  v7 = *(v6 - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10023C170;
  (*(v7 + 104))(v10 + v9, enum case for ActivityPresentationOptions.ActivityPresentationDestination.systemAperture(_:), v6);
  ActivityPresentationOptions.init(destinations:)();
  ActivityPresentationOptions.shouldSuppressAlertContentOnLockScreen.setter();
  sub_100095274(&qword_1002A7C80, &qword_10023CC00);
  v11 = static Activity.request(attributes:content:presentationOptions:platterTarget:contentSourceRequests:isEphemeral:isUnbounded:)();
  v13 = v0[8];
  v12 = v0[9];
  v15 = v0[6];
  v14 = v0[7];
  v17 = v0[4];
  v16 = v0[5];
  v18 = v0[2];
  v19 = v0[3];
  v20 = *(v18 + OBJC_IVAR____TtC14dockaccessoryd16TrackingActivity_activity);
  *(v18 + OBJC_IVAR____TtC14dockaccessoryd16TrackingActivity_activity) = v11;

  sub_1000E5B80();
  (*(v17 + 8))(v16, v19);
  (*(v13 + 8))(v12, v14);
  *(v18 + OBJC_IVAR____TtC14dockaccessoryd16TrackingActivity_shouldSaveUserDismissal) = 1;

  v21 = v0[1];

  return v21();
}

uint64_t sub_1000E5B80()
{
  v1 = sub_100095274(&unk_1002A73C0, &unk_10023BE80);
  v2 = *(*(v1 - 8) + 64);
  result = __chkstk_darwin(v1 - 8);
  v5 = &v11 - v4;
  v6 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd16TrackingActivity_activity);
  if (v6)
  {
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v6;
    v8[5] = v0;

    v9 = sub_1001B6410(0, 0, v5, &unk_10023CC30, v8);
    v10 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd16TrackingActivity_activityStateUpdatesTask);
    *(v0 + OBJC_IVAR____TtC14dockaccessoryd16TrackingActivity_activityStateUpdatesTask) = v9;
  }

  return result;
}

uint64_t sub_1000E5CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = type metadata accessor for ActivityState();
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v9 = *(*(sub_100095274(&qword_1002A7C98, &qword_10023CC38) - 8) + 64) + 15;
  v5[11] = swift_task_alloc();
  v10 = sub_100095274(&qword_1002A7CA0, &qword_10023CC40);
  v5[12] = v10;
  v11 = *(v10 - 8);
  v5[13] = v11;
  v12 = *(v11 + 64) + 15;
  v5[14] = swift_task_alloc();
  v13 = sub_100095274(&qword_1002A7CA8, &unk_10023CC48);
  v5[15] = v13;
  v14 = *(v13 - 8);
  v5[16] = v14;
  v15 = *(v14 + 64) + 15;
  v5[17] = swift_task_alloc();

  return (_swift_task_switch)(sub_1000E5EA0, 0, 0);
}

uint64_t sub_1000E5EA0()
{
  v1 = *(v0 + 136);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 96);
  v5 = *(v0 + 24);
  dispatch thunk of Activity.activityStateUpdates.getter();
  Activity.ActivityStateUpdates.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v6 = OBJC_IVAR____TtC14dockaccessoryd16TrackingActivity_shouldSaveUserDismissal;
  *(v0 + 144) = OBJC_IVAR____TtC14dockaccessoryd16TrackingActivity_logger;
  *(v0 + 152) = v6;
  LODWORD(v6) = enum case for ActivityState.active(_:);
  *(v0 + 176) = enum case for ActivityState.pending(_:);
  *(v0 + 180) = v6;
  LODWORD(v6) = enum case for ActivityState.dismissed(_:);
  *(v0 + 184) = enum case for ActivityState.ended(_:);
  *(v0 + 188) = v6;
  *(v0 + 192) = enum case for ActivityState.stale(_:);
  v7 = sub_1000E7308();
  v8 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v9 = swift_task_alloc();
  *(v0 + 160) = v9;
  *v9 = v0;
  v9[1] = sub_1000E5FF8;
  v10 = *(v0 + 136);
  v11 = *(v0 + 120);
  v12 = *(v0 + 88);

  return dispatch thunk of AsyncIteratorProtocol.next()(v12, v11, v7);
}

uint64_t sub_1000E5FF8()
{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_1000E6630;
  }

  else
  {
    v3 = sub_1000E610C;
  }

  return (_swift_task_switch)(v3, 0, 0);
}

uint64_t sub_1000E6128()
{
  v55 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
LABEL_4:
    v5 = *(v0 + 112);
    v7 = *(v0 + 72);
    v6 = *(v0 + 80);
    v9 = *(v0 + 56);
    v8 = *(v0 + 64);
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

    v10 = *(v0 + 8);

    return v10();
  }

  (*(v3 + 32))(*(v0 + 80), v1, v2);
  if (static Task<>.isCancelled.getter())
  {
    (*(*(v0 + 48) + 8))(*(v0 + 80), *(v0 + 40));
    v4 = *(v0 + 88);
    goto LABEL_4;
  }

  v12 = *(v0 + 144);
  v13 = *(v0 + 32);
  v14 = *(*(v0 + 48) + 16);
  v14(*(v0 + 72), *(v0 + 80), *(v0 + 40));
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = os_log_type_enabled(v15, v16);
  v18 = *(v0 + 72);
  if (v17)
  {
    v19 = *(v0 + 64);
    v21 = *(v0 + 40);
    v20 = *(v0 + 48);
    v22 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v54 = v52;
    *v22 = 136315138;
    v14(v19, v18, v21);
    v23 = String.init<A>(describing:)();
    v53 = v14;
    v25 = v24;
    v26 = v21;
    v27 = *(v20 + 8);
    v27(v18, v26);
    v28 = sub_1000952D4(v23, v25, &v54);
    v14 = v53;

    *(v22 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v15, v16, "activity state updated to %s", v22, 0xCu);
    sub_100095808(v52);
  }

  else
  {
    v29 = *(v0 + 40);
    v30 = *(v0 + 48);

    v27 = *(v30 + 8);
    v27(v18, v29);
  }

  v32 = *(v0 + 180);
  v31 = *(v0 + 184);
  v33 = *(v0 + 176);
  v35 = *(v0 + 48);
  v34 = *(v0 + 56);
  v36 = *(v0 + 40);
  v14(v34, *(v0 + 80), v36);
  v37 = (*(v35 + 88))(v34, v36);
  if (v37 != v33 && v37 != v32 && v37 != v31)
  {
    if (v37 == *(v0 + 188))
    {
      if ((*(*(v0 + 32) + *(v0 + 152)) & 1) == 0)
      {
        if (qword_1002A6780 != -1)
        {
          swift_once();
        }

        v38 = qword_1002B1CF0;
        v39 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_secureTrackingControlOnNotification);
        DeviceNotification.state.setter();

        v40 = [objc_opt_self() sharedInstance];
        v41 = *(v38 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_trackingWidgetExtensionBundleID);
        v42 = *(v38 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_trackingWidgetExtensionBundleID + 8);
        v43 = String._bridgeToObjectiveC()();
        v44 = String._bridgeToObjectiveC()();
        [v40 reloadControlsForExtension:v43 kind:0 reason:v44];
      }
    }

    else if (v37 != *(v0 + 192))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }
  }

  v45 = *(v0 + 48) + 8;
  v27(*(v0 + 80), *(v0 + 40));
  v46 = sub_1000E7308();
  v47 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v48 = swift_task_alloc();
  *(v0 + 160) = v48;
  *v48 = v0;
  v48[1] = sub_1000E5FF8;
  v49 = *(v0 + 136);
  v50 = *(v0 + 120);
  v51 = *(v0 + 88);

  return dispatch thunk of AsyncIteratorProtocol.next()(v51, v50, v46);
}

uint64_t sub_1000E6630()
{
  *(v0 + 16) = *(v0 + 168);
  sub_100095274(&qword_1002A7268, &unk_10023C680);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1000E66BC(char a1)
{
  *(v2 + 24) = v1;
  *(v2 + 104) = a1;
  v3 = type metadata accessor for ActivityUIDismissalPolicy();
  *(v2 + 32) = v3;
  v4 = *(v3 - 8);
  *(v2 + 40) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 48) = swift_task_alloc();
  v6 = *(*(sub_100095274(&qword_1002A7C70, &qword_10023CBF0) - 8) + 64) + 15;
  *(v2 + 56) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v2 + 64) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 72) = v8;
  *(v2 + 80) = v7;

  return (_swift_task_switch)(sub_1000E67EC, v8, v7);
}

uint64_t sub_1000E67EC()
{
  v23 = v0;
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC14dockaccessoryd16TrackingActivity_activity);
  *(v0 + 88) = v1;
  if (v1)
  {
    swift_retain_n();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v22 = v5;
      *v4 = 136315138;
      *(v0 + 16) = v1;

      sub_100095274(&qword_1002A7C80, &qword_10023CC00);
      v6 = String.init<A>(describing:)();
      v8 = sub_1000952D4(v6, v7, &v22);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v2, v3, "Ending activity %s", v4, 0xCu);
      sub_100095808(v5);
    }

    v10 = *(v0 + 48);
    v9 = *(v0 + 56);
    *(*(v0 + 24) + OBJC_IVAR____TtC14dockaccessoryd16TrackingActivity_shouldSaveUserDismissal) = *(v0 + 104);
    dispatch thunk of Activity.content.getter();
    v11 = sub_100095274(&qword_1002A7C78, &qword_10023CBF8);
    (*(*(v11 - 8) + 56))(v9, 0, 1, v11);
    static ActivityUIDismissalPolicy.immediate.getter();
    v12 = *(&async function pointer to dispatch thunk of Activity.end(_:dismissalPolicy:) + 1);
    v21 = (&async function pointer to dispatch thunk of Activity.end(_:dismissalPolicy:) + async function pointer to dispatch thunk of Activity.end(_:dismissalPolicy:));
    v13 = swift_task_alloc();
    *(v0 + 96) = v13;
    *v13 = v0;
    v13[1] = sub_1000E6A98;
    v14 = *(v0 + 48);
    v15 = *(v0 + 56);

    return v21(v15, v14);
  }

  else
  {
    v17 = *(v0 + 64);

    v19 = *(v0 + 48);
    v18 = *(v0 + 56);

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_1000E6A98()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 40);
  v6 = *(*v0 + 32);
  v10 = *v0;

  (*(v5 + 8))(v4, v6);
  sub_1000E7198(v3);
  v7 = *(v1 + 80);
  v8 = *(v1 + 72);

  return (_swift_task_switch)(sub_1000E6C38, v8, v7);
}

uint64_t sub_1000E6C38()
{
  v1 = v0[8];
  v2 = v0[3];

  v3 = OBJC_IVAR____TtC14dockaccessoryd16TrackingActivity_activityStateUpdatesTask;
  if (*(v2 + OBJC_IVAR____TtC14dockaccessoryd16TrackingActivity_activityStateUpdatesTask))
  {
    v4 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd16TrackingActivity_activityStateUpdatesTask);

    Task.cancel()();
  }

  v5 = v0[11];

  v6 = *(v2 + v3);
  *(v2 + v3) = 0;

  v8 = v0[6];
  v7 = v0[7];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000E6D08()
{
  v1 = OBJC_IVAR____TtC14dockaccessoryd16TrackingActivity_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd16TrackingActivity_activity);

  v4 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd16TrackingActivity_activityStateUpdatesTask);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TrackingActivity()
{
  result = qword_1002A7B78;
  if (!qword_1002A7B78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000E6E28()
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

unint64_t sub_1000E6EE4()
{
  result = qword_1002A7C20;
  if (!qword_1002A7C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A7C20);
  }

  return result;
}

unint64_t sub_1000E6F3C()
{
  result = qword_1002A7C28;
  if (!qword_1002A7C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A7C28);
  }

  return result;
}

unint64_t sub_1000E6F94()
{
  result = qword_1002A7C30;
  if (!qword_1002A7C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A7C30);
  }

  return result;
}

unint64_t sub_1000E6FEC()
{
  result = qword_1002A7C38;
  if (!qword_1002A7C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A7C38);
  }

  return result;
}

unint64_t sub_1000E7044()
{
  result = qword_1002A7C40;
  if (!qword_1002A7C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A7C40);
  }

  return result;
}

unint64_t sub_1000E709C()
{
  result = qword_1002A7C48;
  if (!qword_1002A7C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A7C48);
  }

  return result;
}

unint64_t sub_1000E70F0()
{
  result = qword_1002A7C58;
  if (!qword_1002A7C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A7C58);
  }

  return result;
}

unint64_t sub_1000E7144()
{
  result = qword_1002A7C68;
  if (!qword_1002A7C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A7C68);
  }

  return result;
}

uint64_t sub_1000E7198(uint64_t a1)
{
  v2 = sub_100095274(&qword_1002A7C70, &qword_10023CBF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000E7200()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000E7248(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10009862C;

  return sub_1000E5CB4(a1, v4, v5, v7, v6);
}

unint64_t sub_1000E7308()
{
  result = qword_1002A7CB0;
  if (!qword_1002A7CB0)
  {
    sub_10009589C(&qword_1002A7CA8, &unk_10023CC48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A7CB0);
  }

  return result;
}

unint64_t sub_1000E73A0()
{
  result = qword_1002A7CB8;
  if (!qword_1002A7CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A7CB8);
  }

  return result;
}

unint64_t sub_1000E73F8()
{
  result = qword_1002A7CC0;
  if (!qword_1002A7CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A7CC0);
  }

  return result;
}

unint64_t sub_1000E7450()
{
  result = qword_1002A7CC8;
  if (!qword_1002A7CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A7CC8);
  }

  return result;
}

unint64_t sub_1000E74A8()
{
  result = qword_1002A7CD0;
  if (!qword_1002A7CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A7CD0);
  }

  return result;
}

uint64_t sub_1000E751C()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000E75AC;

  return sub_1000E7998();
}

uint64_t sub_1000E75AC(uint64_t a1, uint64_t a2)
{
  v4 = *(*v3 + 24);
  v5 = *v3;
  v5[4] = a1;
  v5[5] = a2;

  if (v2)
  {
    v6 = v5[1];

    __asm { BRAA            X2, X16 }
  }

  return (_swift_task_switch)(sub_1000E76E4, 0, 0);
}

uint64_t sub_1000E76E4()
{
  sub_10013B46C(v0[4], v0[5]);
  v1 = String.uppercased()();

  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v2 = v0[2];
  v3 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_keystore);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + 32);
    v6 = v5;
    v7 = v3;

    if (!v5)
    {
LABEL_30:
      __break(1u);
      return result;
    }

    v9 = [v6 identifier];

    if (v9)
    {
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      v13 = v10;
      goto LABEL_9;
    }
  }

  else
  {
    v14 = v3;
  }

  v13 = 0;
  v12 = 0xE000000000000000;
LABEL_9:
  v15 = sub_1001762B8(v13, v12, 1);
  v16 = v15;
  if (!(v15 >> 62))
  {
    result = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_11;
    }

LABEL_23:
    v27 = v0[4];
    v26 = v0[5];

    v24 = v27;
    v25 = v26;
    goto LABEL_24;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_23;
  }

LABEL_11:
  if ((v16 & 0xC000000000000001) != 0)
  {
    v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_14;
  }

  if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_30;
  }

  v17 = *(v16 + 32);

LABEL_14:

  v19 = *(v17 + 136);
  v18 = *(v17 + 144);

  if (v18)
  {
    v21 = v0[4];
    v20 = v0[5];
    if (v1._countAndFlagsBits == v19 && v18 == v1._object)
    {

      sub_1000A0D2C(v21, v20);

      v23 = 1;
    }

    else
    {
      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_1000A0D2C(v21, v20);
    }

    goto LABEL_25;
  }

  v24 = v0[4];
  v25 = v0[5];
LABEL_24:
  sub_1000A0D2C(v24, v25);
  v23 = 0;
LABEL_25:
  v28 = v0[1];

  return v28(v23 & 1, v1._countAndFlagsBits, v1._object);
}

uint64_t sub_1000E7998()
{
  v1[4] = v0;
  v2 = type metadata accessor for Logger();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();

  return (_swift_task_switch)(sub_1000E7A58, 0, 0);
}

uint64_t sub_1000E7A58()
{
  v1 = v0[4];
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_17;
  }

  v3 = *(Strong + 32);
  v0[8] = v3;
  v4 = v3;

  if (!v3)
  {
    goto LABEL_17;
  }

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {

LABEL_17:
    v31 = type metadata accessor for Errors();
    sub_1000EBE3C(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    *v32 = 0;
    v32[1] = 0xE000000000000000;
    (*(*(v31 - 8) + 104))(v32, enum case for Errors.AccessoryServerNil(_:), v31);
    swift_willThrow();
    goto LABEL_18;
  }

  v6 = v5;
  v7 = [v5 primaryAccessory];
  if (v7)
  {
    v8 = v7;
    v9 = objc_opt_self();
    sub_100095274(&unk_1002A73A0, &qword_10023C670);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_10023C170;
    *(v10 + 56) = &type metadata for UInt32;
    *(v10 + 64) = &protocol witness table for UInt32;
    *(v10 + 32) = 262;
    String.init(format:_:)();
    v11 = String._bridgeToObjectiveC()();

    v12 = [v9 UUIDWithString:v11];

    v13 = [v12 UUIDString];
    if (!v13)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = String._bridgeToObjectiveC()();
    }

    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_10023C170;
    *(v14 + 56) = &type metadata for UInt32;
    *(v14 + 64) = &protocol witness table for UInt32;
    *(v14 + 32) = 256;
    String.init(format:_:)();
    v15 = String._bridgeToObjectiveC()();

    v16 = [v9 UUIDWithString:v15];

    v17 = [v16 UUIDString];
    if (!v17)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = String._bridgeToObjectiveC()();
    }

    v18 = [v8 characteristicOfType:v13 serviceType:{v17, 1, 2}];
    v0[9] = v18;

    if (v18)
    {
      (*(v0[6] + 16))(v0[7], v0[4] + OBJC_IVAR____TtC14dockaccessoryd27AccessoryDescriptionManager_logger, v0[5]);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "Reading Accessory Description hash...", v21, 2u);
      }

      v23 = v0[6];
      v22 = v0[7];
      v25 = v0[4];
      v24 = v0[5];

      (*(v23 + 8))(v22, v24);
      v26 = swift_task_alloc();
      v0[10] = v26;
      v26[2] = v6;
      v26[3] = v18;
      v26[4] = v25;
      v27 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
      v28 = swift_task_alloc();
      v0[11] = v28;
      *v28 = v0;
      v28[1] = sub_1000E8038;

      return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD00000000000001ELL, 0x8000000100230C60, sub_1000EBEE8, v26, &type metadata for Data);
    }
  }

  v29 = type metadata accessor for Errors();
  sub_1000EBE3C(&qword_1002A6F50, &type metadata accessor for Errors);
  swift_allocError();
  *v30 = 0xD000000000000033;
  v30[1] = 0x8000000100230C20;
  (*(*(v29 - 8) + 104))(v30, enum case for Errors.NotFound(_:), v29);
  swift_willThrow();

LABEL_18:
  v33 = v0[7];

  v34 = v0[1];

  return v34();
}

uint64_t sub_1000E8038()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_1000E81DC;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_1000E8154;
  }

  return (_swift_task_switch)(v4, 0, 0);
}

uint64_t sub_1000E8154()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);

  v3 = *(v0 + 16);
  v4 = *(v0 + 24);

  v5 = *(v0 + 8);

  return v5(v3, v4);
}

uint64_t sub_1000E81DC()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);

  v3 = *(v0 + 96);
  v4 = *(v0 + 56);

  v5 = *(v0 + 8);

  return v5();
}

void sub_1000E8258(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v8 = sub_100095274(&qword_1002A7E48, &unk_10023CE50);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = aBlock - v11;
  sub_100095274(&qword_1002A7390, &qword_10023BEF0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10023BDA0;
  *(v13 + 32) = a3;
  sub_1000EBEF4();
  v14 = a3;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v16 = *(a4 + 24);
  (*(v9 + 16))(v12, a1, v8);
  v17 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v18 = swift_allocObject();
  (*(v9 + 32))(v18 + v17, v12, v8);
  aBlock[4] = sub_1000EBFD4;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001A37EC;
  aBlock[3] = &unk_100277060;
  v19 = _Block_copy(aBlock);
  v20 = v16;

  [a2 readCharacteristicValues:isa timeout:v20 completionQueue:v19 completionHandler:10.0];
  _Block_release(v19);
}

uint64_t sub_1000E8498(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    *&v14[0] = a2;
    swift_errorRetain();
  }

  else
  {
    if (result)
    {
      if ((result & 0xC000000000000001) != 0)
      {
        v2 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v2 = *(result + 32);
      }

      v3 = v2;
      v4 = [v2 value];

      if (v4)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v12 = 0u;
        v13 = 0u;
      }

      v14[0] = v12;
      v14[1] = v13;
      if (*(&v13 + 1))
      {
        if (swift_dynamicCast())
        {
          v14[0] = v11;
          sub_100095274(&qword_1002A7E48, &unk_10023CE50);
          return CheckedContinuation.resume(returning:)();
        }
      }

      else
      {
        sub_100095C84(v14, &qword_1002A9210, &unk_10023BE70);
      }

      v5 = type metadata accessor for Errors();
      sub_1000EBE3C(&qword_1002A6F50, &type metadata accessor for Errors);
      v7 = swift_allocError();
      v8 = v6;
      v9 = 0x8000000100230CD0;
      v10 = 0xD00000000000002CLL;
    }

    else
    {
      v5 = type metadata accessor for Errors();
      sub_1000EBE3C(&qword_1002A6F50, &type metadata accessor for Errors);
      v7 = swift_allocError();
      v8 = v6;
      v9 = 0x8000000100230C80;
      v10 = 0xD000000000000048;
    }

    *v6 = v10;
    v6[1] = v9;
    (*(*(v5 - 8) + 104))(v8, enum case for Errors.CharacteristicReadWriteFailure(_:), v5);
    *&v14[0] = v7;
  }

  sub_100095274(&qword_1002A7E48, &unk_10023CE50);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t sub_1000E871C()
{
  v1[19] = v0;
  v2 = type metadata accessor for SHA512();
  v1[20] = v2;
  v3 = *(v2 - 8);
  v1[21] = v3;
  v4 = *(v3 + 64) + 15;
  v1[22] = swift_task_alloc();
  v5 = type metadata accessor for SHA512Digest();
  v1[23] = v5;
  v6 = *(v5 - 8);
  v1[24] = v6;
  v7 = *(v6 + 64) + 15;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v1[27] = v8;
  v9 = *(v8 - 8);
  v1[28] = v9;
  v10 = *(v9 + 64) + 15;
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v11 = swift_task_alloc();
  v1[33] = v11;
  *v11 = v1;
  v11[1] = sub_1000E88F0;

  return sub_1000E7998();
}

uint64_t sub_1000E88F0(uint64_t a1, uint64_t a2)
{
  v4 = *(*v3 + 264);
  v5 = *v3;
  v5[34] = a1;
  v5[35] = a2;

  if (v2)
  {
    v7 = v5[31];
    v6 = v5[32];
    v9 = v5[29];
    v8 = v5[30];
    v11 = v5[25];
    v10 = v5[26];
    v12 = v5[22];

    v13 = v5[1];

    __asm { BRAA            X1, X16 }
  }

  return (_swift_task_switch)(sub_1000E8A8C, 0, 0);
}

uint64_t sub_1000E8A8C()
{
  v29 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);
  v4 = *(v0 + 152);
  sub_10013B46C(*(v0 + 272), *(v0 + 280));
  v5 = String.uppercased()();

  *(v0 + 288) = v5;
  v6 = OBJC_IVAR____TtC14dockaccessoryd27AccessoryDescriptionManager_logger;
  *(v0 + 304) = OBJC_IVAR____TtC14dockaccessoryd27AccessoryDescriptionManager_logger;
  v7 = *(v3 + 16);
  *(v0 + 312) = v7;
  *(v0 + 320) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v4 + v6, v2);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 256);
  v12 = *(v0 + 224);
  v27 = *(v0 + 216);
  if (v10)
  {
    v26 = v4;
    v13 = swift_slowAlloc();
    v25 = v11;
    v14 = swift_slowAlloc();
    v28 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_1000952D4(v5._countAndFlagsBits, v5._object, &v28);
    _os_log_impl(&_mh_execute_header, v8, v9, "read Accessory Description hash 0x%s", v13, 0xCu);
    sub_100095808(v14);

    v4 = v26;

    v15 = *(v12 + 8);
    v15(v25, v27);
  }

  else
  {

    v15 = *(v12 + 8);
    v15(v11, v27);
  }

  *(v0 + 328) = v15;
  v7(*(v0 + 248), v4 + v6, *(v0 + 216));
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Initiating Accessory Description transfer...", v18, 2u);
  }

  v19 = *(v0 + 248);
  v20 = *(v0 + 216);
  v21 = *(v0 + 224);

  v15(v19, v20);
  v22 = swift_task_alloc();
  *(v0 + 336) = v22;
  *v22 = v0;
  v22[1] = sub_1000E8D54;
  v23 = *(v0 + 152);

  return sub_1000EA5B0();
}

uint64_t sub_1000E8D54(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 336);
  v6 = *v3;
  v4[43] = a1;
  v4[44] = a2;
  v4[45] = v2;

  if (v2)
  {
    v7 = v4[37];

    v4[48] = v2;
    v8 = sub_1000EA0FC;
  }

  else
  {
    v8 = sub_1000E8E84;
  }

  return (_swift_task_switch)(v8, 0, 0);
}

uint64_t sub_1000E8E84()
{
  v92 = v0;
  v1 = *(v0 + 152);
  v2 = *(v1 + 32);
  *(v0 + 368) = v2;
  if (v2)
  {

    v3 = swift_task_alloc();
    *(v0 + 376) = v3;
    *v3 = v0;
    v3[1] = sub_1000E9778;

    return sub_1001D1410();
  }

  v5 = *(v0 + 352);
  v6 = *(v0 + 360);
  v7 = *(v0 + 344);
  *(v1 + 32) = 0;
  sub_1000A0CD8(v7, v5);
  v8 = sub_10016282C(v7, v5);
  v10 = v9;
  v11 = *(v0 + 344);
  v12 = *(v0 + 352);
  if (v10)
  {
    v81 = v8;
    v82 = v10;
LABEL_13:
    sub_1000A0D2C(v11, v12);
    goto LABEL_14;
  }

  *(v0 + 96) = v11;
  *(v0 + 104) = v12;
  sub_1000A0CD8(v11, v12);
  sub_100095274(&unk_1002A9C00, &unk_10023BED0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    sub_100095C84(v0 + 56, &unk_1002A6F70, &unk_10023CE60);
LABEL_12:
    v15 = *(v0 + 344);
    v16 = *(v0 + 352);
    v81 = sub_100162514(v15, v16);
    v82 = v17;
    v11 = v15;
    v12 = v16;
    goto LABEL_13;
  }

  sub_1000A0D80((v0 + 56), v0 + 16);
  v13 = *(v0 + 48);
  sub_1000A09E0((v0 + 16), *(v0 + 40));
  if ((dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter() & 1) == 0)
  {
    sub_100095808((v0 + 16));
    goto LABEL_12;
  }

  sub_1000A0D2C(*(v0 + 344), *(v0 + 352));
  v14 = *(v0 + 48);
  sub_1000A09E0((v0 + 16), *(v0 + 40));
  dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
  v81 = *(v0 + 128);
  v82 = *(v0 + 136);
  sub_100095808((v0 + 16));
LABEL_14:
  v19 = *(v0 + 344);
  v18 = *(v0 + 352);
  v89 = *(v0 + 200);
  v20 = *(v0 + 192);
  v84 = *(v0 + 208);
  v86 = *(v0 + 184);
  v22 = *(v0 + 168);
  v21 = *(v0 + 176);
  v23 = *(v0 + 160);
  sub_1000EBE3C(&qword_1002A7E50, &type metadata accessor for SHA512);
  dispatch thunk of HashFunction.init()();
  sub_1000A0CD8(v19, v18);
  sub_1000EBB7C(v19, v18);
  sub_1000A0D2C(v19, v18);
  dispatch thunk of HashFunction.finalize()();
  (*(v22 + 8))(v21, v23);
  (*(v20 + 16))(v89, v84, v86);
  sub_1000EBE3C(&qword_1002A7E58, &type metadata accessor for SHA512Digest);
  isUniquelyReferenced_nonNull_native = dispatch thunk of Sequence.makeIterator()();
  v28 = *(v0 + 112);
  v27 = *(v0 + 120);
  v29 = *(v28 + 16);
  if (v27 == v29)
  {
    v30 = &_swiftEmptyArrayStorage;
LABEL_16:
    v32 = *(v0 + 312);
    v31 = *(v0 + 320);
    v33 = *(v0 + 304);
    v34 = *(v0 + 240);
    v35 = *(v0 + 216);
    v36 = *(v0 + 152);

    *(v0 + 144) = v30;
    sub_100095274(&qword_1002A7E60, &unk_10023CE70);
    sub_1000EBE84();
    BidirectionalCollection<>.joined(separator:)();

    String.uppercased()();

    v32(v34, v36 + v33, v35);

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();

    v39 = os_log_type_enabled(v37, v38);
    v40 = *(v0 + 328);
    v41 = *(v0 + 240);
    v43 = *(v0 + 216);
    v42 = *(v0 + 224);
    if (v39)
    {
      v87 = *(v0 + 328);
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v91 = v45;
      *v44 = 136315138;
      v46 = sub_1000952D4(v81, v82, &v91);

      *(v44 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v37, v38, "Accessory Description is %s", v44, 0xCu);
      sub_100095808(v45);

      v87(v41, v43);
    }

    else
    {

      v40(v41, v43);
    }

    v55 = *(v0 + 288);
    v56 = *(v0 + 296);
    v57 = sub_1000EA454();

    if (v57)
    {
      v58 = *(v0 + 320);
      (*(v0 + 312))(*(v0 + 232), *(v0 + 152) + *(v0 + 304), *(v0 + 216));
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&_mh_execute_header, v59, v60, "Accessory Description hash match succeeded!!", v61, 2u);
      }

      v62 = *(v0 + 328);
      v63 = *(v0 + 256);
      v64 = *(v0 + 232);
      v83 = *(v0 + 248);
      v85 = *(v0 + 240);
      v66 = *(v0 + 216);
      v65 = *(v0 + 224);
      v67 = *(v0 + 208);
      v69 = *(v0 + 184);
      v68 = *(v0 + 192);
      v88 = *(v0 + 200);
      v90 = *(v0 + 176);
      sub_1000A0D2C(*(v0 + 272), *(v0 + 280));

      v62(v64, v66);
      (*(v68 + 8))(v67, v69);

      v70 = *(v0 + 8);
      v71 = *(v0 + 344);
      v72 = *(v0 + 352);

      __asm { BRAA            X3, X16 }
    }

    v74 = *(v0 + 344);
    v73 = *(v0 + 352);
    v75 = *(v0 + 208);
    v76 = *(v0 + 184);
    v77 = *(v0 + 192);
    v78 = type metadata accessor for Errors();
    sub_1000EBE3C(&qword_1002A6F50, &type metadata accessor for Errors);
    v79 = swift_allocError();
    *v80 = 0xD000000000000029;
    v80[1] = 0x8000000100230BF0;
    (*(*(v78 - 8) + 104))(v80, enum case for Errors.CommunicationFailure(_:), v78);
    swift_willThrow();
    sub_1000A0D2C(v74, v73);
    (*(v77 + 8))(v75, v76);
    *(v0 + 384) = v79;
    isUniquelyReferenced_nonNull_native = sub_1000EA0FC;
    v25 = 0;
    v26 = 0;
  }

  else
  {
    if ((v27 & 0x8000000000000000) == 0)
    {
      v30 = &_swiftEmptyArrayStorage;
      while (v27 < *(v28 + 16))
      {
        v47 = *(v28 + 32 + v27);
        sub_100095274(&unk_1002A73A0, &qword_10023C670);
        v48 = swift_allocObject();
        *(v48 + 16) = xmmword_10023C170;
        *(v48 + 56) = &type metadata for UInt8;
        *(v48 + 64) = &protocol witness table for UInt8;
        *(v48 + 32) = v47;
        v49 = String.init(format:_:)();
        v51 = v50;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = sub_100102844(0, *(v30 + 2) + 1, 1, v30);
          v30 = isUniquelyReferenced_nonNull_native;
        }

        v53 = *(v30 + 2);
        v52 = *(v30 + 3);
        if (v53 >= v52 >> 1)
        {
          isUniquelyReferenced_nonNull_native = sub_100102844((v52 > 1), v53 + 1, 1, v30);
          v30 = isUniquelyReferenced_nonNull_native;
        }

        ++v27;
        *(v30 + 2) = v53 + 1;
        v54 = &v30[16 * v53];
        *(v54 + 4) = v49;
        *(v54 + 5) = v51;
        if (v29 == v27)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return (_swift_task_switch)(isUniquelyReferenced_nonNull_native, v25, v26);
}

uint64_t sub_1000E9778()
{
  v1 = *(*v0 + 376);
  v2 = *(*v0 + 368);
  v4 = *v0;

  return (_swift_task_switch)(sub_1000E9890, 0, 0);
}

uint64_t sub_1000E9890()
{
  v96 = v0;
  v1 = *(v0 + 152);
  v2 = *(v1 + 32);
  v3 = *(v0 + 352);
  v4 = *(v0 + 360);
  v5 = *(v0 + 344);
  *(v1 + 32) = 0;

  sub_1000A0CD8(v5, v3);
  v6 = sub_10016282C(v5, v3);
  v8 = v7;
  v9 = *(v0 + 344);
  v10 = *(v0 + 352);
  if (v8)
  {
    v86 = v6;
    v87 = v8;
  }

  else
  {
    *(v0 + 96) = v9;
    *(v0 + 104) = v10;
    sub_1000A0CD8(v9, v10);
    sub_100095274(&unk_1002A9C00, &unk_10023BED0);
    if (swift_dynamicCast())
    {
      sub_1000A0D80((v0 + 56), v0 + 16);
      v11 = *(v0 + 48);
      sub_1000A09E0((v0 + 16), *(v0 + 40));
      if (dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter())
      {
        sub_1000A0D2C(*(v0 + 344), *(v0 + 352));
        v12 = *(v0 + 48);
        sub_1000A09E0((v0 + 16), *(v0 + 40));
        dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
        v86 = *(v0 + 128);
        v87 = *(v0 + 136);
        sub_100095808((v0 + 16));
        goto LABEL_10;
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

    v13 = *(v0 + 344);
    v14 = *(v0 + 352);
    v86 = sub_100162514(v13, v14);
    v87 = v15;
    v9 = v13;
    v10 = v14;
  }

  sub_1000A0D2C(v9, v10);
LABEL_10:
  v17 = *(v0 + 344);
  v16 = *(v0 + 352);
  v93 = *(v0 + 200);
  v18 = *(v0 + 192);
  v89 = *(v0 + 208);
  v91 = *(v0 + 184);
  v20 = *(v0 + 168);
  v19 = *(v0 + 176);
  v21 = *(v0 + 160);
  sub_1000EBE3C(&qword_1002A7E50, &type metadata accessor for SHA512);
  dispatch thunk of HashFunction.init()();
  sub_1000A0CD8(v17, v16);
  sub_1000EBB7C(v17, v16);
  sub_1000A0D2C(v17, v16);
  dispatch thunk of HashFunction.finalize()();
  (*(v20 + 8))(v19, v21);
  (*(v18 + 16))(v93, v89, v91);
  sub_1000EBE3C(&qword_1002A7E58, &type metadata accessor for SHA512Digest);
  isUniquelyReferenced_nonNull_native = dispatch thunk of Sequence.makeIterator()();
  v26 = *(v0 + 112);
  v25 = *(v0 + 120);
  v92 = v0;
  v27 = *(v26 + 16);
  if (v25 == v27)
  {
    v28 = &_swiftEmptyArrayStorage;
LABEL_12:
    v30 = v92[39];
    v29 = v92[40];
    v31 = v92[38];
    v32 = v92[30];
    v33 = v92[27];
    v34 = v92[19];

    v92[18] = v28;
    sub_100095274(&qword_1002A7E60, &unk_10023CE70);
    sub_1000EBE84();
    BidirectionalCollection<>.joined(separator:)();

    String.uppercased()();
    v35 = v92;

    v30(v32, v34 + v31, v33);

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();

    v38 = os_log_type_enabled(v36, v37);
    v39 = v92[41];
    v40 = v92[30];
    v42 = v92[27];
    v41 = v92[28];
    if (v38)
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v95 = v44;
      *v43 = 136315138;
      v45 = sub_1000952D4(v86, v87, &v95);

      *(v43 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v36, v37, "Accessory Description is %s", v43, 0xCu);
      sub_100095808(v44);
      v35 = v92;
    }

    else
    {
    }

    v39(v40, v42);
    v54 = v35[36];
    v55 = v35[37];
    v56 = sub_1000EA454();

    if (v56)
    {
      v57 = v35[40];
      (v35[39])(v35[29], v35[19] + v35[38], v35[27]);
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&_mh_execute_header, v58, v59, "Accessory Description hash match succeeded!!", v60, 2u);
      }

      v61 = v35[41];
      v62 = v35[34];
      v63 = v35[35];
      v64 = v35[32];
      v65 = v35[29];
      v88 = v35[31];
      v90 = v35[30];
      v66 = v35[27];
      v67 = v35[28];
      v68 = v35[25];
      v69 = v35[26];
      v70 = v35;
      v71 = v35[24];
      v72 = v70[23];
      v94 = v70[22];
      sub_1000A0D2C(v62, v63);

      v61(v65, v66);
      (*(v71 + 8))(v69, v72);

      v73 = v70[1];
      v74 = v70[43];
      v75 = v70[44];

      __asm { BRAA            X3, X16 }
    }

    v76 = v35;
    v77 = v35[44];
    v78 = v76[43];
    v79 = v76[26];
    v80 = v76[23];
    v81 = v76[24];
    v82 = type metadata accessor for Errors();
    sub_1000EBE3C(&qword_1002A6F50, &type metadata accessor for Errors);
    v83 = swift_allocError();
    *v84 = 0xD000000000000029;
    v84[1] = 0x8000000100230BF0;
    (*(*(v82 - 8) + 104))(v84, enum case for Errors.CommunicationFailure(_:), v82);
    swift_willThrow();
    sub_1000A0D2C(v78, v77);
    (*(v81 + 8))(v79, v80);
    v76[48] = v83;
    isUniquelyReferenced_nonNull_native = sub_1000EA0FC;
    v23 = 0;
    v24 = 0;
  }

  else
  {
    if ((v25 & 0x8000000000000000) == 0)
    {
      v28 = &_swiftEmptyArrayStorage;
      while (v25 < *(v26 + 16))
      {
        v46 = *(v26 + 32 + v25);
        sub_100095274(&unk_1002A73A0, &qword_10023C670);
        v47 = swift_allocObject();
        *(v47 + 16) = xmmword_10023C170;
        *(v47 + 56) = &type metadata for UInt8;
        *(v47 + 64) = &protocol witness table for UInt8;
        *(v47 + 32) = v46;
        v48 = String.init(format:_:)();
        v50 = v49;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = sub_100102844(0, *(v28 + 2) + 1, 1, v28);
          v28 = isUniquelyReferenced_nonNull_native;
        }

        v52 = *(v28 + 2);
        v51 = *(v28 + 3);
        if (v52 >= v51 >> 1)
        {
          isUniquelyReferenced_nonNull_native = sub_100102844((v51 > 1), v52 + 1, 1, v28);
          v28 = isUniquelyReferenced_nonNull_native;
        }

        ++v25;
        *(v28 + 2) = v52 + 1;
        v53 = &v28[16 * v52];
        *(v53 + 4) = v48;
        *(v53 + 5) = v50;
        if (v27 == v25)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return (_swift_task_switch)(isUniquelyReferenced_nonNull_native, v23, v24);
}

uint64_t sub_1000EA0FC()
{
  v1 = v0[19];
  v2 = *(v1 + 32);
  v0[49] = v2;
  if (v2)
  {

    v3 = swift_task_alloc();
    v0[50] = v3;
    *v3 = v0;
    v3[1] = sub_1000EA25C;

    return sub_1001D1410();
  }

  else
  {
    v5 = v0[48];
    v6 = v0[34];
    v7 = v0[35];
    *(v1 + 32) = 0;
    swift_willThrow();
    sub_1000A0D2C(v6, v7);
    v8 = v0[48];
    v10 = v0[31];
    v9 = v0[32];
    v12 = v0[29];
    v11 = v0[30];
    v14 = v0[25];
    v13 = v0[26];
    v15 = v0[22];

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_1000EA25C()
{
  v1 = *(*v0 + 400);
  v2 = *(*v0 + 392);
  v4 = *v0;

  return (_swift_task_switch)(sub_1000EA374, 0, 0);
}

uint64_t sub_1000EA374()
{
  v1 = v0[19];
  v2 = *(v1 + 32);
  v3 = v0[48];
  v4 = v0[34];
  v5 = v0[35];
  *(v1 + 32) = 0;

  swift_willThrow();
  sub_1000A0D2C(v4, v5);
  v6 = v0[48];
  v8 = v0[31];
  v7 = v0[32];
  v10 = v0[29];
  v9 = v0[30];
  v12 = v0[25];
  v11 = v0[26];
  v13 = v0[22];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1000EA454()
{

  v0 = String.Iterator.next()();
  if (v0.value._object)
  {
    countAndFlagsBits = v0.value._countAndFlagsBits;
    object = v0.value._object;
    do
    {
      v5 = String.Iterator.next()();
      if (!v5.value._object)
      {

        return 1;
      }

      if (countAndFlagsBits == v5.value._countAndFlagsBits && object == v5.value._object)
      {
      }

      else
      {
        v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v3 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v4 = String.Iterator.next()();
      countAndFlagsBits = v4.value._countAndFlagsBits;
      object = v4.value._object;
    }

    while (v4.value._object);
  }

  v6 = String.Iterator.next()().value._object;

  if (!v6)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t sub_1000EA5B0()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return (_swift_task_switch)(sub_1000EA688, 0, 0);
}

uint64_t sub_1000EA688()
{
  v1 = v0[7];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  v5 = OBJC_IVAR____TtC14dockaccessoryd27AccessoryDescriptionManager_logger;
  v0[8] = OBJC_IVAR____TtC14dockaccessoryd27AccessoryDescriptionManager_logger;
  v6 = *(v3 + 16);
  v0[9] = v6;
  v0[10] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v56 = v4;
  v6(v1, v4 + v5, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Handling Accessory Description transfer request", v9, 2u);
  }

  v10 = v0[7];
  v11 = v0[3];
  v12 = v0[4];
  v13 = v0[2];

  v14 = *(v12 + 8);
  v0[11] = v14;
  v14(v10, v11);
  Strong = swift_weakLoadStrong();
  v0[12] = Strong;
  if (!Strong)
  {
    v32 = type metadata accessor for Errors();
    sub_1000EBE3C(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    *v33 = 0xD000000000000010;
    v33[1] = 0x8000000100230B70;
    (*(*(v32 - 8) + 104))(v33, enum case for Errors.AccessoryServerNil(_:), v32);
    swift_willThrow();
    goto LABEL_12;
  }

  v16 = Strong;
  v17 = *(Strong + 32);
  if (!v17 || ([v17 isReachable] & 1) == 0)
  {
    v23 = type metadata accessor for Errors();
    sub_1000EBE3C(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    v25 = v24;
    _StringGuts.grow(_:)(19);
    v26 = *(v16 + 24);
    v27 = [v26 description];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v31._countAndFlagsBits = 0xD000000000000011;
    v31._object = 0x8000000100230580;
    String.append(_:)(v31);
    *v25 = v28;
    v25[1] = v30;
    (*(*(v23 - 8) + 104))(v25, enum case for Errors.AccessoryNotReachable(_:), v23);
    goto LABEL_10;
  }

  v18 = v0[2];
  if (*(v18 + 32))
  {
    v19 = type metadata accessor for Errors();
    sub_1000EBE3C(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    v21 = v20;
    *v20 = 0xD00000000000001BLL;
    v20[1] = 0x8000000100230630;
    v22 = &enum case for Errors.OperationInProgress(_:);
LABEL_8:
    (*(*(v19 - 8) + 104))(v21, *v22, v19);
LABEL_10:
    swift_willThrow();

LABEL_12:
    v35 = v0[6];
    v34 = v0[7];
    v36 = v0[5];

    v37 = v0[1];

    return v37();
  }

  v39 = v0[6];
  v55 = v0[3];
  v40 = *(v18 + 24);
  v41 = type metadata accessor for AccessoryDescriptionSession();
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  swift_allocObject();

  v44 = sub_1001D2E70(v16, v40);

  v45 = *(v18 + 32);
  *(v18 + 32) = v44;

  v6(v39, v56 + v5, v55);
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&_mh_execute_header, v46, v47, "Setting up a Accessory Description transfer session", v48, 2u);
  }

  v49 = v0[6];
  v50 = v0[3];
  v51 = v0[4];

  v14(v49, v50);
  v52 = *(v18 + 32);
  v0[13] = v52;
  if (!v52)
  {
    v19 = type metadata accessor for Errors();
    sub_1000EBE3C(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    v21 = v54;
    *v54 = 0xD000000000000053;
    v54[1] = 0x8000000100230B90;
    v22 = &enum case for Errors.CommunicationFailure(_:);
    goto LABEL_8;
  }

  v53 = swift_task_alloc();
  v0[14] = v53;
  *v53 = v0;
  v53[1] = sub_1000EACDC;

  return sub_1001D1970();
}

uint64_t sub_1000EACDC()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_1000EAF3C;
  }

  else
  {
    v3 = sub_1000EADF0;
  }

  return (_swift_task_switch)(v3, 0, 0);
}

uint64_t sub_1000EADF0()
{
  v1 = *(v0 + 80);
  (*(v0 + 72))(*(v0 + 40), *(v0 + 16) + *(v0 + 64), *(v0 + 24));
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Accessory Description transfer session was setup successfully", v4, 2u);
  }

  v5 = *(v0 + 88);
  v7 = *(v0 + 32);
  v6 = *(v0 + 40);
  v8 = *(v0 + 24);

  v5(v6, v8);
  v9 = swift_task_alloc();
  *(v0 + 128) = v9;
  *v9 = v0;
  v9[1] = sub_1000EAFCC;
  v10 = *(v0 + 16);

  return sub_1000EB228();
}

uint64_t sub_1000EAF3C()
{
  v1 = v0[12];
  v2 = v0[13];

  v3 = v0[15];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[5];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000EAFCC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 128);
  v8 = *v3;
  *(*v3 + 136) = v2;

  if (v2)
  {
    v9 = sub_1000EB198;
  }

  else
  {
    *(v6 + 144) = a2;
    *(v6 + 152) = a1;
    v9 = sub_1000EB100;
  }

  return (_swift_task_switch)(v9, 0, 0);
}

uint64_t sub_1000EB100()
{
  v1 = v0[12];
  v2 = v0[13];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[5];

  v6 = v0[1];
  v8 = v0[18];
  v7 = v0[19];

  return v6(v7, v8);
}

uint64_t sub_1000EB198()
{
  v1 = v0[12];
  v2 = v0[13];

  v3 = v0[17];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[5];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000EB228()
{
  v1[5] = v0;
  v2 = type metadata accessor for Logger();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();

  return (_swift_task_switch)(sub_1000EB2E8, 0, 0);
}

uint64_t sub_1000EB2E8()
{
  v24 = v0;
  (*(v0[7] + 16))(v0[8], v0[5] + OBJC_IVAR____TtC14dockaccessoryd27AccessoryDescriptionManager_logger, v0[6]);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[7];
    v3 = v0[8];
    v5 = v0[5];
    v6 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23 = v8;
    *v7 = 136315138;
    v0[4] = *(v5 + 32);
    sub_100095274(&qword_1002A7E40, &qword_10023CE48);
    v9 = Optional.debugDescription.getter();
    v11 = sub_1000952D4(v9, v10, &v23);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v1, v2, "Read Accessory Description data for session %s", v7, 0xCu);
    sub_100095808(v8);

    (*(v4 + 8))(v3, v6);
  }

  else
  {
    v13 = v0[7];
    v12 = v0[8];
    v14 = v0[6];

    (*(v13 + 8))(v12, v14);
  }

  v15 = *(v0[5] + 32);
  v0[9] = v15;
  if (v15)
  {
    v16 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];

    v17 = swift_task_alloc();
    v0[10] = v17;
    *v17 = v0;
    v17[1] = sub_1000CA61C;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0x746144646165725FLL, 0xEB00000000292861, sub_1000EBADC, v15, &type metadata for Data);
  }

  else
  {
    v18 = type metadata accessor for Errors();
    sub_1000EBE3C(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    *v19 = 0xD000000000000024;
    v19[1] = 0x8000000100230B20;
    (*(*(v18 - 8) + 104))(v19, enum case for Errors.CommunicationFailure(_:), v18);
    swift_willThrow();
    v20 = v0[8];

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_1000EB664(uint64_t a1)
{
  v2 = sub_100095274(&qword_1002A7E48, &unk_10023CE50);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v10 - v5;
  (*(v3 + 16))(v10 - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  sub_1001D2490(sub_1000EBAE8, v8);
}

uint64_t sub_1000EB7CC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1)
  {
    swift_errorRetain();
  }

  else
  {
    if (a3 >> 60 != 15)
    {
      sub_1000A0CD8(a2, a3);
      sub_100095274(&qword_1002A7E48, &unk_10023CE50);
      return CheckedContinuation.resume(returning:)();
    }

    v3 = type metadata accessor for Errors();
    sub_1000EBE3C(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    *v4 = 0xD000000000000019;
    v4[1] = 0x8000000100230B50;
    (*(*(v3 - 8) + 104))(v4, enum case for Errors.CommunicationFailure(_:), v3);
  }

  sub_100095274(&qword_1002A7E48, &unk_10023CE50);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t sub_1000EB920()
{
  swift_weakDestroy();

  v1 = *(v0 + 32);

  v2 = OBJC_IVAR____TtC14dockaccessoryd27AccessoryDescriptionManager_logger;
  v3 = type metadata accessor for Logger();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AccessoryDescriptionManager()
{
  result = qword_1002A7D00;
  if (!qword_1002A7D00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000EBA28()
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

uint64_t sub_1000EBAE8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = *(*(sub_100095274(&qword_1002A7E48, &unk_10023CE50) - 8) + 80);

  return sub_1000EB7CC(a1, a2, a3);
}

uint64_t sub_1000EBB7C(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      type metadata accessor for SHA512();
      sub_1000EBE3C(&qword_1002A7E50, &type metadata accessor for SHA512);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1000EBD5C(v4, v5);
  }

  if (v2 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_1000EBD5C(v4, v5);
  }

  type metadata accessor for SHA512();
  sub_1000EBE3C(&qword_1002A7E50, &type metadata accessor for SHA512);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t sub_1000EBD5C(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      type metadata accessor for SHA512();
      sub_1000EBE3C(&qword_1002A7E50, &type metadata accessor for SHA512);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000EBE3C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000EBE84()
{
  result = qword_1002A7E68;
  if (!qword_1002A7E68)
  {
    sub_10009589C(&qword_1002A7E60, &unk_10023CE70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A7E68);
  }

  return result;
}

unint64_t sub_1000EBEF4()
{
  result = qword_1002A92F0;
  if (!qword_1002A92F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002A92F0);
  }

  return result;
}

uint64_t sub_1000EBF40()
{
  v1 = sub_100095274(&qword_1002A7E48, &unk_10023CE50);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000EBFD4(uint64_t a1, uint64_t a2)
{
  v4 = *(*(sub_100095274(&qword_1002A7E48, &unk_10023CE50) - 8) + 80);

  return sub_1000E8498(a1, a2);
}

uint64_t sub_1000EC060(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000EC07C()
{
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v16 = *(v1 - 8);
  v17 = v1;
  v2 = *(v16 + 64);
  __chkstk_darwin(v1);
  v15 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  type metadata accessor for SecureTrackingInfo();
  swift_allocObject();
  *(v0 + 16) = sub_1000EF0C8();
  *(v0 + 24) = [objc_allocWithZone(type metadata accessor for TrackingActivityController()) init];
  Logger.init(subsystem:category:)();
  v14 = OBJC_IVAR____TtC14dockaccessoryd28SecureTrackingSessionManager_queue;
  sub_1000B3420();
  static DispatchQoS.unspecified.getter();
  v18 = &_swiftEmptyArrayStorage;
  sub_1000EFFD8(&qword_1002A7110, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100095274(&unk_1002A6830, &unk_10023AB20);
  sub_100095BDC(&qword_1002A7120, &unk_1002A6830, &unk_10023AB20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v16 + 104))(v15, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v17);
  v8 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v0 + v14) = v8;
  *(v0 + OBJC_IVAR____TtC14dockaccessoryd28SecureTrackingSessionManager_proxCard) = 0;
  *(v0 + OBJC_IVAR____TtC14dockaccessoryd28SecureTrackingSessionManager_lockState) = 2;
  if (qword_1002A6798 != -1)
  {
    v8 = swift_once();
  }

  v9 = *(static DeviceLockMonitor.shared + OBJC_IVAR____TtC14dockaccessoryd17DeviceLockMonitor_lock);
  v10 = __chkstk_darwin(v8);
  *(&v14 - 2) = v0;
  *(&v14 - 1) = &off_100277130;
  __chkstk_darwin(v10);
  *(&v14 - 2) = sub_1000F0020;
  *(&v14 - 1) = v11;
  swift_retain_n();
  os_unfair_lock_lock(v9 + 4);
  sub_1000F003C(v12);
  os_unfair_lock_unlock(v9 + 4);

  DeviceLockMonitor.beginMonitoring()();
  return v0;
}

uint64_t sub_1000EC468(char a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v8 = *(v16 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v16);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = *(v1 + OBJC_IVAR____TtC14dockaccessoryd28SecureTrackingSessionManager_queue);
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = a1;
  aBlock[4] = sub_1000EFFCC;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147FC8;
  aBlock[3] = &unk_100277348;
  v13 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v17 = &_swiftEmptyArrayStorage;
  sub_1000EFFD8(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags);
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_100095BDC(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v16);
}

void sub_1000EC730(uint64_t a1, char a2)
{
  type metadata accessor for DockKitCoreUtils();
  if (static DockKitCoreUtils.allowedForBackgroundSecureTracking()())
  {
    sub_1000ED750();
    switch(a2)
    {
      case 1:
        sub_1000ECA74();
        return;
      case 2:
        v7 = *(*(a1 + 16) + 24);

        sub_100095274(&qword_1002A8198, &qword_10023D008);
        OS_dispatch_queue.sync<A>(execute:)();

        v8 = *(a1 + 16);

        sub_1000EED04(v14);

        goto LABEL_13;
      case 3:
        if (sub_1000ED3F8())
        {
          goto LABEL_16;
        }

        return;
      case 4:
        sub_1000ECDE4();
        return;
      case 5:
        sub_1000ECFC4();
        return;
      case 6:
      case 9:
        goto LABEL_24;
      case 7:
        v9 = *(*(a1 + 16) + 24);

        sub_100095274(&qword_1002A8198, &qword_10023D008);
        OS_dispatch_queue.sync<A>(execute:)();

        v10 = v15;
        goto LABEL_22;
      case 8:
        v11 = *(*(a1 + 16) + 24);

        sub_100095274(&qword_1002A8198, &qword_10023D008);
        OS_dispatch_queue.sync<A>(execute:)();

        v10 = v16;
LABEL_22:
        v12 = *(a1 + 16);

        sub_1000EED04(v10);
        goto LABEL_23;
      case 10:
        sub_1000ECE0C();
        return;
      case 11:
        v6 = *(a1 + 16);

        sub_1000EED04(0);
LABEL_23:

LABEL_24:
        sub_1000EDFAC(0);
        break;
      case 12:
        sub_1000ED1D0();
        break;
      case 13:
        sub_1000ED348();
        break;
      default:
LABEL_13:
        if (sub_1000ED3F8())
        {
LABEL_16:
          sub_1000EDAF8(0);
        }

        break;
    }
  }

  else
  {
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v4, "Ignoring secure tracking request, not allowed.", v5, 2u);
    }
  }
}

uint64_t sub_1000ECA74()
{
  v1 = v0;
  v2 = *(*(v0 + 16) + 24);

  sub_100095274(&qword_1002A8198, &qword_10023D008);
  OS_dispatch_queue.sync<A>(execute:)();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  if (v25 == 2)
  {
    if (v5)
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Asking for permission to enable secure tracking", v6, 2u);
    }

    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v7 = qword_1002B1CF0;
    v8 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
    v9 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

    os_unfair_lock_lock(v9 + 4);

    v10 = *(v7 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
    v11 = *(v7 + v8);
    v12 = v10;

    os_unfair_lock_unlock(v11 + 4);

    if (v10)
    {
      v13 = dispatch thunk of DockCoreAccessory.info.getter();

      v14 = objc_allocWithZone(type metadata accessor for DKProxManager());

      v15 = sub_1000EFAD4(0, v13, 1, v1, v14, type metadata accessor for SecureTrackingSessionManager, &off_100277118);

      v16 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd28SecureTrackingSessionManager_proxCard);
      *(v1 + OBJC_IVAR____TtC14dockaccessoryd28SecureTrackingSessionManager_proxCard) = v15;
    }
  }

  else
  {
    if (v5)
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Secure tracking preference is already set", v17, 2u);
    }

    v18 = *(*(v1 + 16) + 24);

    OS_dispatch_queue.sync<A>(execute:)();

    v19 = *(v1 + 16);

    sub_1000EED04(v23);

    if (sub_1000ED3F8())
    {
      sub_1000EDAF8(0);
    }
  }

  v20 = *(*(v1 + 16) + 24);

  OS_dispatch_queue.sync<A>(execute:)();

  v21 = *(v1 + 16);

  sub_1000EED04(v24);

  result = sub_1000ED3F8();
  if (result)
  {
    return sub_1000EDAF8(0);
  }

  return result;
}

uint64_t sub_1000ECE34(char a1, char a2, uint64_t (*a3)(void, __n128))
{
  v6 = v3;
  sub_1000EE81C(a1);
  v7 = *(v3 + 16);
  v8 = *(v6 + 16);

  sub_1000EED04(a1);

  v9.n128_u64[0] = 0;

  return a3(a2 & 1, v9);
}

uint64_t sub_1000ECFC4()
{
  v1 = v0;
  sub_1000EE81C(1);
  v2 = *(*(v0 + 16) + 24);
  v3 = *(v1 + 16);

  sub_100095274(&qword_1002A8198, &qword_10023D008);
  OS_dispatch_queue.sync<A>(execute:)();

  v4 = *(v1 + 16);

  sub_1000EED04(v6);

  result = sub_1000ED3F8();
  if (result)
  {
    return sub_1000EDAF8(0);
  }

  return result;
}

void sub_1000ED348()
{
  v0 = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v0, v1, "clearing secure trackng", v2, 2u);
  }

  sub_1000EE9F4();
}

uint64_t sub_1000ED3F8()
{
  v1 = v0;
  v2 = *(*(v0 + 16) + 24);

  OS_dispatch_queue.sync<A>(execute:)();

  if (v30 == 1)
  {
    if (qword_1002A6780 != -1)
    {
      goto LABEL_23;
    }

    while (1)
    {
      v3 = qword_1002B1CF0;
      v4 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
      v5 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

      os_unfair_lock_lock(v5 + 4);

      if (!*(v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected))
      {
        goto LABEL_15;
      }

      v6 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_trackingButtonState);
      v7 = TrackingButtonState.rawValue.getter();
      v8 = TrackingButtonState.rawValue.getter();
      v9 = *(v3 + v4);

      os_unfair_lock_unlock(v9 + 4);

      if (v7 != v8)
      {
        goto LABEL_16;
      }

      v10 = *(v3 + v4);

      os_unfair_lock_lock(v10 + 4);

      v11 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_foregroundAppIDs);
      v12 = *(v11 + 16);
      if (!v12)
      {
        break;
      }

      v29 = v1;
      v13 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_dockKitApps;

      swift_beginAccess();
      v14 = 0;
      v15 = (v11 + 40);
      while (v14 < *(v11 + 16))
      {
        if (*(*(v3 + v13) + 16))
        {
          v17 = *(v15 - 1);
          v16 = *v15;

          sub_10016D4D0(v17, v16);
          v1 = v18;

          if (v1)
          {

            goto LABEL_15;
          }
        }

        ++v14;
        v15 += 2;
        if (v12 == v14)
        {

          v1 = v29;
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_23:
      swift_once();
    }

LABEL_13:
    v19 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_dockKitApps;
    swift_beginAccess();
    v20 = *(v3 + v19);

    v21 = cameracaptureIdentifier.getter();
    if (*(v20 + 16))
    {
      sub_10016D4D0(v21, v22);
      v24 = v23;

      if (v24)
      {
LABEL_15:
        v25 = *(v3 + v4);

        os_unfair_lock_unlock(v25 + 4);

        goto LABEL_16;
      }
    }

    else
    {
    }

    v28 = *(v3 + v4);

    os_unfair_lock_unlock(v28 + 4);

    if (*(v1 + OBJC_IVAR____TtC14dockaccessoryd28SecureTrackingSessionManager_lockState))
    {
      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    else
    {

      v26 = 1;
    }
  }

  else
  {
LABEL_16:
    v26 = 0;
  }

  return v26 & 1;
}

void sub_1000ED750()
{
  v1 = v0;
  if (qword_1002A6780 != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v2 = qword_1002B1CF0;
    v3 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
    v4 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

    os_unfair_lock_lock(v4 + 4);

    if (!*(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected))
    {
      goto LABEL_14;
    }

    v5 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_trackingButtonState);
    v6 = TrackingButtonState.rawValue.getter();
    v7 = TrackingButtonState.rawValue.getter();
    v8 = *(v2 + v3);

    os_unfair_lock_unlock(v8 + 4);

    if (v6 != v7)
    {
      goto LABEL_15;
    }

    v9 = *(v2 + v3);

    os_unfair_lock_lock(v9 + 4);

    v10 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_foregroundAppIDs);
    v11 = *(v10 + 16);
    if (!v11)
    {
      break;
    }

    v32 = v1;
    v12 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_dockKitApps;

    swift_beginAccess();
    v13 = 0;
    v14 = (v10 + 40);
    while (v13 < *(v10 + 16))
    {
      if (*(*(v2 + v12) + 16))
      {
        v16 = *(v14 - 1);
        v15 = *v14;

        sub_10016D4D0(v16, v15);
        v1 = v17;

        if (v1)
        {

          goto LABEL_14;
        }
      }

      ++v13;
      v14 += 2;
      if (v11 == v13)
      {

        v1 = v32;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:
    swift_once();
  }

LABEL_12:
  v18 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_dockKitApps;
  swift_beginAccess();
  v19 = *(v2 + v18);

  v20 = cameracaptureIdentifier.getter();
  if (*(v19 + 16))
  {
    sub_10016D4D0(v20, v21);
    v23 = v22;

    if (v23)
    {
LABEL_14:
      v24 = *(v2 + v3);

      os_unfair_lock_unlock(v24 + 4);

      goto LABEL_15;
    }
  }

  else
  {
  }

  v31 = *(v2 + v3);

  os_unfair_lock_unlock(v31 + 4);

  if (*(v1 + OBJC_IVAR____TtC14dockaccessoryd28SecureTrackingSessionManager_lockState))
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

LABEL_15:
  v25 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_secureTrackingControlEnabledNotification);
  DeviceNotification.state.setter();

  v26 = [objc_opt_self() sharedInstance];
  v27 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_trackingWidgetExtensionBundleID);
  v28 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_trackingWidgetExtensionBundleID + 8);
  v29 = String._bridgeToObjectiveC()();
  v30 = String._bridgeToObjectiveC()();
  [v26 reloadControlsForExtension:v29 kind:0 reason:v30];
}

void sub_1000EDB24(uint64_t a1, char a2)
{
  v4 = sub_100095274(&unk_1002A73C0, &unk_10023BE80);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v16[-v6];
  v8 = *(*(a1 + 16) + 24);

  OS_dispatch_queue.sync<A>(execute:)();

  if (v16[15] == 1)
  {
    v9 = *(a1 + 16);

    sub_1000EEFDC(2);

    if (sub_1000ED3F8())
    {
      v10 = type metadata accessor for TaskPriority();
      (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
      type metadata accessor for MainActor();

      v11 = static MainActor.shared.getter();
      v12 = swift_allocObject();
      *(v12 + 16) = v11;
      *(v12 + 24) = &protocol witness table for MainActor;
      *(v12 + 32) = a1;
      *(v12 + 40) = a2 & 1;
      sub_1001B6410(0, 0, v7, &unk_10023D028, v12);
    }

    else
    {
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v13, v14, "Secure tracking not allowed by user", v15, 2u);
      }
    }
  }
}

uint64_t sub_1000EDD54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 56) = a5;
  *(v5 + 16) = a4;
  type metadata accessor for MainActor();
  *(v5 + 24) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 32) = v7;
  *(v5 + 40) = v6;

  return (_swift_task_switch)(sub_1000EDDF0, v7, v6);
}

uint64_t sub_1000EDDF0()
{
  v1 = *(*(v0 + 16) + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1000EDE8C;
  v3 = *(v0 + 56);

  return sub_100106890(v3);
}

uint64_t sub_1000EDE8C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v6 = *v0;

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return (_swift_task_switch)(sub_1000F00B0, v4, v3);
}

uint64_t sub_1000EDFD8(int a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a4;
  v34 = a5;
  v7 = v5;
  v32 = a1;
  v35 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v35 - 8);
  v8 = *(v38 + 64);
  __chkstk_darwin(v35);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v36 = *(v11 - 8);
  v37 = v11;
  v12 = *(v36 + 64);
  __chkstk_darwin(v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchTime();
  v31 = v15;
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v29 - v21;
  v23 = *(v5 + 16);

  sub_1000EEFDC(a2);

  sub_1000B3420();
  v24 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v30 = *(v16 + 8);
  v30(v20, v15);
  v25 = swift_allocObject();
  *(v25 + 16) = v7;
  *(v25 + 24) = v32;
  aBlock[4] = v33;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147FC8;
  aBlock[3] = v34;
  v26 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000EFFD8(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags);
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_100095BDC(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
  v27 = v35;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v26);

  (*(v38 + 8))(v10, v27);
  (*(v36 + 8))(v14, v37);
  return (v30)(v22, v31);
}

uint64_t sub_1000EE3BC(uint64_t a1, char a2)
{
  v4 = sub_100095274(&unk_1002A73C0, &unk_10023BE80);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v14[-v6];
  v8 = *(*(a1 + 16) + 24);

  OS_dispatch_queue.sync<A>(execute:)();

  if (v14[15] == 1)
  {
    v10 = *(a1 + 16);

    sub_1000EEFDC(2);

    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
    type metadata accessor for MainActor();

    v12 = static MainActor.shared.getter();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = &protocol witness table for MainActor;
    *(v13 + 32) = a1;
    *(v13 + 40) = a2 & 1;
    sub_1001B6410(0, 0, v7, &unk_10023D018, v13);
  }

  return result;
}

uint64_t sub_1000EE564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 56) = a5;
  *(v5 + 16) = a4;
  type metadata accessor for MainActor();
  *(v5 + 24) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 32) = v7;
  *(v5 + 40) = v6;

  return (_swift_task_switch)(sub_1000EE600, v7, v6);
}

uint64_t sub_1000EE600()
{
  v1 = *(*(v0 + 16) + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1000EE69C;
  v3 = *(v0 + 56);

  return sub_100107254(v3);
}

uint64_t sub_1000EE69C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v6 = *v0;

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return (_swift_task_switch)(sub_1000EE7BC, v4, v3);
}

uint64_t sub_1000EE7BC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

void sub_1000EE81C(char a1)
{
  v2 = v1;
  v4 = *(*(v1 + 16) + 24);

  sub_100095274(&qword_1002A8198, &qword_10023D008);
  OS_dispatch_queue.sync<A>(execute:)();

  if (v17 == 2 || (((a1 != 0) ^ v17) & 1) != 0)
  {
    type metadata accessor for DockCoreManager();
    static DockCoreManager.secureTrackingAllowed.setter();
    v13 = *(v2 + 16);

    sub_1000EECDC(a1 != 0);

    v5 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v14))
    {
      v15 = a1 != 0;
      v16 = swift_slowAlloc();
      *v16 = 67109120;
      *(v16 + 1) = v15;
      v8 = "saving tracking allowed to %{BOOL}d";
      v9 = v14;
      v10 = v5;
      v11 = v16;
      v12 = 8;
      goto LABEL_7;
    }
  }

  else
  {
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      v8 = "Secure tracking allowed is already up to date, nothing to save";
      v9 = v6;
      v10 = v5;
      v11 = v7;
      v12 = 2;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v10, v9, v8, v11, v12);
    }
  }
}

void sub_1000EE9F4()
{
  type metadata accessor for DockCoreManager();
  static DockCoreManager.secureTrackingAllowed.setter();
  v1 = *(v0 + 16);

  sub_1000EECDC(2);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "clearing tracking preference  in database", v4, 2u);
  }
}

uint64_t sub_1000EEACC()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC14dockaccessoryd28SecureTrackingSessionManager_logger;
  v3 = type metadata accessor for Logger();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SecureTrackingSessionManager()
{
  result = qword_1002A7EA8;
  if (!qword_1002A7EA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000EEBEC()
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

void sub_1000EECAC()
{
  v1 = *(*v0 + OBJC_IVAR____TtC14dockaccessoryd28SecureTrackingSessionManager_proxCard);
  *(*v0 + OBJC_IVAR____TtC14dockaccessoryd28SecureTrackingSessionManager_proxCard) = 0;
}

unsigned __int8 *sub_1000EECC4@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (v2 >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1000EED2C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v13 = *(v21 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *(v4 + 24);
  v17 = swift_allocObject();
  *(v17 + 16) = v4;
  *(v17 + 24) = a1;
  aBlock[4] = a3;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147FC8;
  aBlock[3] = a4;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v22 = &_swiftEmptyArrayStorage;
  sub_1000EFFD8(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags);
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_100095BDC(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v9 + 8))(v12, v8);
  (*(v13 + 8))(v16, v21);
}

uint64_t sub_1000EF004()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1000EF074()
{
  result = qword_1002A8190;
  if (!qword_1002A8190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A8190);
  }

  return result;
}

uint64_t sub_1000EF0C8()
{
  v12 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v12 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v12);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  *(v0 + 16) = 514;
  *(v0 + 18) = 2;
  v9 = sub_1000B3420();
  v11[0] = "Secure Tracking Queue";
  v11[1] = v9;
  static DispatchQoS.unspecified.getter();
  v13 = &_swiftEmptyArrayStorage;
  sub_1000EFFD8(&qword_1002A7110, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100095274(&unk_1002A6830, &unk_10023AB20);
  sub_100095BDC(&qword_1002A7120, &unk_1002A6830, &unk_10023AB20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v12);
  *(v0 + 24) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  return v0;
}

uint64_t sub_1000EF338()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_1000EF380(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000EF3DC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10009862C;

  return sub_1000EE564(a1, v4, v5, v6, v7);
}

uint64_t sub_1000EF4C0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_1000EF500(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000A139C;

  return sub_1000EDD54(a1, v4, v5, v6, v7);
}

void sub_1000EF5C4(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 17);
  if (v2 == 2 || (v2 & 1) == 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v1 + 16);
  }

  *a1 = v3 & 1;
}

void *sub_1000EF5EC(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v40 = a3;
  v41 = a4;
  v43 = a2;
  v7 = sub_100095274(&qword_1002A7AF0, &qword_10023C9D0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v39 - v9;
  a5[5] = 0;
  v11 = (a5 + 5);
  v12 = objc_allocWithZone(SBSRemoteAlertDefinition);
  v13 = String._bridgeToObjectiveC()();
  v14 = String._bridgeToObjectiveC()();
  v15 = [v12 initWithServiceName:v13 viewControllerClassName:v14];

  a5[2] = v15;
  v16 = [objc_allocWithZone(SBSRemoteAlertConfigurationContext) init];
  a5[3] = v16;
  sub_100095274(&qword_1002A81A0, &qword_10023D038);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10023CE80;
  v44 = 0x6E656B6F74;
  v45 = 0xE500000000000000;
  v39 = v16;
  AnyHashable.init<A>(_:)();
  v42 = a1;
  sub_1000EFF5C(a1, v10);
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v10, 1, v18) == 1)
  {
    sub_100095C84(v10, &qword_1002A7AF0, &qword_10023C9D0);
    v20 = (inited + 72);
    *(inited + 96) = &type metadata for String;
  }

  else
  {
    v21 = UUID.uuidString.getter();
    v23 = v22;
    (*(v19 + 8))(v10, v18);
    v20 = (inited + 72);
    *(inited + 96) = &type metadata for String;
    if (v23)
    {
      *v20 = v21;
      goto LABEL_6;
    }
  }

  *v20 = 0;
  v23 = 0xE000000000000000;
LABEL_6:
  *(inited + 80) = v23;
  v44 = 1701667182;
  v45 = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  v24 = v43;
  v25 = DockCoreInfo.name.getter();
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = v25;
  *(inited + 152) = v26;
  v44 = 1701869940;
  v45 = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  DockCoreInfo.type.getter();
  v27 = DockCoreAccessoryType.description.getter();
  *(inited + 240) = &type metadata for String;
  *(inited + 216) = v27;
  *(inited + 224) = v28;
  v44 = 0x7079547472656C61;
  v45 = 0xE900000000000065;
  AnyHashable.init<A>(_:)();
  v29 = v40 & 1;
  *(inited + 312) = &type metadata for Int;
  *(inited + 288) = v29;
  sub_1001F2ABC(inited);
  swift_setDeallocating();
  sub_100095274(&qword_1002ACA30, qword_10023D040);
  swift_arrayDestroy();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v31 = v39;
  [v39 setUserInfo:isa];

  v32 = [objc_opt_self() newHandleWithDefinition:a5[2] configurationContext:a5[3]];
  swift_beginAccess();
  v33 = a5[5];
  a5[5] = v32;

  a5[4] = [objc_allocWithZone(SBSRemoteAlertActivationContext) init];
  v34 = a5[5];
  v35 = v41;
  if (v34)
  {
    v36 = v34;
    [v36 registerObserver:v35];
  }

  swift_beginAccess();
  v37 = *v11;
  if (*v11)
  {
    swift_endAccess();
    [v37 activateWithContext:a5[4]];

    sub_100095C84(v42, &qword_1002A7AF0, &qword_10023C9D0);
  }

  else
  {
    sub_100095C84(v42, &qword_1002A7AF0, &qword_10023C9D0);
    swift_endAccess();
  }

  return a5;
}