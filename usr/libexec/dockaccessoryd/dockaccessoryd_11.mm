void sub_100178D10()
{
  v2 = v0;
  v3 = sub_1001762B8(0, 0, 0);
  v4 = v3;
  if (v3 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }

LABEL_13:

    v13 = sub_100176034();
    if (!v1)
    {
      v9 = v13;
      goto LABEL_11;
    }

    return;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_13;
  }

LABEL_3:
  if (qword_1002A6770 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100093DE8(v5, qword_1002AA0E0);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Found existing controller keychain item.", v8, 2u);
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_10;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(v4 + 32);

LABEL_10:

    v10 = *(v9 + 16);
    v11 = *(v9 + 24);

    v12 = String._bridgeToObjectiveC()();

    [v2 updateActiveControllerPairingIdentifier:v12];

LABEL_11:
    *(v9 + 32);

    return;
  }

  __break(1u);
}

id sub_100178F0C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a1;
  v6 = a4();

  return v6;
}

void sub_10017905C(void *a1, void *a2, void *a3, char a4, const void *a5, const void *a6)
{
  if (a6)
  {
    sub_100177B54(a5, a6, a4 & 1);
    if (!v6)
    {
      v11 = v10;
      if (a3)
      {
        v12 = *(v10 + 16);
        v13 = *(v10 + 24);

        v14 = String._bridgeToObjectiveC()();

        v15 = v14;
        *a3 = v14;
      }

      if (a1)
      {
        v16 = [*(v11 + 32) publicKey];
        v17 = [v16 data];
        if (!v17)
        {
          __break(1u);
          goto LABEL_17;
        }

        v18 = v17;

        v19 = v18;
        *a1 = v18;
      }

      if (!a2)
      {
        goto LABEL_13;
      }

      v20 = [*(v11 + 32) privateKey];
      if (!v20)
      {
        goto LABEL_13;
      }

      v21 = [*(v11 + 32) privateKey];
      if (v21)
      {
        v22 = v21;
        v23 = [v21 data];
        if (v23)
        {
          v24 = v23;

          v25 = v24;
          *a2 = v24;
LABEL_13:

          return;
        }

        goto LABEL_18;
      }

LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
    }
  }

  else
  {
    sub_1000B346C();
    swift_allocError();
    *v26 = 2;
    swift_willThrow();
  }
}

uint64_t sub_1001796F4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v5 = v4;
    type metadata accessor for AccessoryKeystore.AccessoryKeyItem();
    inited = swift_initStackObject();

    sub_100174B0C(a3, a4);
    *(inited + 56) = 1;
    v11 = *(inited + 72);
    *(inited + 64) = 0xD000000000000018;
    *(inited + 72) = 0x8000000100233E10;

    v12 = *(inited + 88);
    *(inited + 80) = 0xD000000000000039;
    *(inited + 88) = 0x8000000100233E30;

    if (a2 >> 60 == 15)
    {
      __break(1u);
    }

    else
    {
      v14 = *(inited + 40);
      v15 = *(inited + 48);
      *(inited + 40) = a1;
      *(inited + 48) = a2;
      sub_1000A0CD8(a1, a2);
      sub_1000A0D2C(v14, v15);
      v16 = *(v5 + OBJC_IVAR____TtC14dockaccessoryd17AccessoryKeystore__activeController + 8);
      v17 = *(inited + 120);
      *(inited + 112) = *(v5 + OBJC_IVAR____TtC14dockaccessoryd17AccessoryKeystore__activeController);
      *(inited + 120) = v16;

      *(inited + 128) = 0;
      sub_100177148(inited, 1, 1);
    }
  }

  else
  {
    sub_1000B346C();
    swift_allocError();
    *v18 = 2;
    return swift_willThrow();
  }

  return result;
}

void sub_100179980(void *a1)
{
  if (!a1)
  {
    sub_1000B346C();
    swift_allocError();
    *v21 = 2;
    swift_willThrow();
    return;
  }

  v2 = a1;
  v3 = [v2 controllerKeyIdentifier];
  if (!v3)
  {
    sub_1000B346C();
    swift_allocError();
    v23 = 2;
LABEL_15:
    *v22 = v23;
    swift_willThrow();

    return;
  }

  v4 = v3;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v2 = v2;
  v8 = [v2 identifier];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = sub_1001762B8(v9, v11, 1);

  if (!(v12 >> 62))
  {
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_14:

    sub_1000B346C();
    swift_allocError();
    v23 = 1;
    goto LABEL_15;
  }

LABEL_5:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v13 = *(v12 + 32);
  }

  v14 = v13[4];
  v13[4] = v2;
  v15 = v2;

  v16 = v13[15];
  v13[14] = v5;
  v13[15] = v7;

  v17 = [v15 identifier];

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  sub_1001780D0(v18, v20);
  if (v1)
  {
  }

  else
  {

    sub_100177148(v13, 1, 0);
  }
}

uint64_t sub_100179C94(const void *a1, const void *a2, void *a3)
{
  if (a2)
  {
    v4 = sub_1001762B8(a1, a2, 1);
    v5 = v4;
    if (v4 >> 62)
    {
      goto LABEL_16;
    }

    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      while (1)
      {
        v7 = 0;
        while ((v5 & 0xC000000000000001) != 0)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            v10 = *(v8 + 112);
            v11 = *(v8 + 120);

            v12 = String._bridgeToObjectiveC()();

            v13 = v12;
            *a3 = v12;

            return 1;
          }

LABEL_8:
          if (a3)
          {
            goto LABEL_14;
          }

          ++v7;
          if (v9 == v6)
          {
            goto LABEL_17;
          }
        }

        if (v7 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_16:
        v6 = _CocoaArrayWrapper.endIndex.getter();
        if (!v6)
        {
          goto LABEL_17;
        }
      }

      v8 = *(v5 + 8 * v7 + 32);

      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

LABEL_17:
  }

  return 0;
}

uint64_t sub_100179F78(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v67 = a2;
  v6 = sub_100095274(&qword_1002A7AF0, &qword_10023C9D0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v62 - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v62 - v18;
  v66 = a1;
  v20 = a1;
  v22 = v21;
  v24 = v23;
  sub_1000B5150(v20, v12, &qword_1002A7AF0, &qword_10023C9D0);
  v25 = *(v24 + 48);
  v70 = v22;
  if (v25(v12, 1, v22) == 1)
  {
    sub_100095C84(v12, &qword_1002A7AF0, &qword_10023C9D0);
    sub_1000B346C();
    swift_allocError();
    *v26 = 2;
    return swift_willThrow();
  }

  else
  {
    v64 = v3;
    v65 = v19;
    v63 = *(v24 + 32);
    result = v63(v19, v12, v70);
    if (a3)
    {
      v28 = v67;
      v29 = sub_100177864(v67, a3);
      if (v29)
      {
        v30 = v29;
        if (qword_1002A6770 != -1)
        {
          swift_once();
        }

        v31 = type metadata accessor for Logger();
        sub_100093DE8(v31, qword_1002AA0E0);
        v32 = v65;
        (*(v24 + 16))(v17, v65, v70);

        v33 = v24;
        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.default.getter();

        LODWORD(v68) = v35;
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          v69[0] = v66;
          *v36 = 136315394;
          *(v36 + 4) = sub_1000952D4(v67, a3, v69);
          *(v36 + 12) = 2080;
          v37 = v33;
          v38 = UUID.uuidString.getter();
          v40 = v39;
          (*(v37 + 8))(v17, v70);
          v41 = sub_1000952D4(v38, v40, v69);

          *(v36 + 14) = v41;
          _os_log_impl(&_mh_execute_header, v34, v68, "Saving peripheral identifier for %s: %s.", v36, 0x16u);
          swift_arrayDestroy();

          v32 = v65;

          v33 = v37;
        }

        else
        {

          (*(v33 + 8))(v17, v70);
        }

        v59 = v70;
        v63(v10, v32, v70);
        (*(v33 + 56))(v10, 0, 1, v59);
        v60 = OBJC_IVAR____TtCC14dockaccessoryd17AccessoryKeystore24AccessoryPeripheralEntry_peripheralIdentifier;
        swift_beginAccess();
        sub_10017E7A8(v10, v30 + v60);
        swift_endAccess();
      }

      else
      {
        if (qword_1002A6770 != -1)
        {
          swift_once();
        }

        v42 = type metadata accessor for Logger();
        sub_100093DE8(v42, qword_1002AA0E0);

        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v43, v44))
        {
          v45 = v24;
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          v69[0] = v47;
          *v46 = 136315138;
          *(v46 + 4) = sub_1000952D4(v28, a3, v69);
          _os_log_impl(&_mh_execute_header, v43, v44, "Saving new peripheral identifier for %s.", v46, 0xCu);
          sub_100095808(v47);

          v24 = v45;
        }

        v48 = v68;
        v49 = type metadata accessor for AccessoryKeystore.AccessoryPeripheralEntry();
        v50 = *(v49 + 48);
        v51 = *(v49 + 52);
        v52 = swift_allocObject();
        v53 = v24;
        (*(v24 + 56))(v52 + OBJC_IVAR____TtCC14dockaccessoryd17AccessoryKeystore24AccessoryPeripheralEntry_peripheralIdentifier, 1, 1, v70);
        *(v52 + OBJC_IVAR____TtCC14dockaccessoryd17AccessoryKeystore24AccessoryPeripheralEntry_sessionId) = 0;
        *(v52 + OBJC_IVAR____TtCC14dockaccessoryd17AccessoryKeystore24AccessoryPeripheralEntry_version) = 0;
        *(v52 + 16) = v28;
        *(v52 + 24) = a3;
        v54 = OBJC_IVAR____TtCC14dockaccessoryd17AccessoryKeystore24AccessoryPeripheralEntry_peripheralIdentifier;
        swift_beginAccess();

        sub_10017E738(v66, v52 + v54);
        swift_endAccess();
        v55 = OBJC_IVAR____TtC14dockaccessoryd17AccessoryKeystore_peripherals;
        swift_beginAccess();

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*(v48 + v55) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v48 + v55) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v61 = *((*(v48 + v55) & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
        v56 = *(v48 + OBJC_IVAR____TtC14dockaccessoryd17AccessoryKeystore_table);
        v57 = qword_1002A66F0;

        v58 = v65;
        if (v57 != -1)
        {
          swift_once();
        }

        swift_weakInit();
        v69[0] = v56;
        swift_weakAssign();
        sub_10017169C(v52, &off_100274F20);
        swift_arrayDestroy();

        sub_100095C84(v69, &qword_1002AA4C8, &unk_10023EDF0);
        return (*(v53 + 8))(v58, v70);
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10017A924(uint64_t a1, unint64_t a2)
{
  v4 = sub_100095274(&qword_1002A7AF0, &qword_10023C9D0);
  v5 = *(*(v4 - 8) + 64);
  result = __chkstk_darwin(v4 - 8);
  v8 = &v17 - v7;
  if (a2)
  {
    result = sub_100177864(a1, a2);
    if (result)
    {
      v9 = result;
      if (qword_1002A6770 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_100093DE8(v10, qword_1002AA0E0);

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v18 = v14;
        *v13 = 136315138;
        *(v13 + 4) = sub_1000952D4(a1, a2, &v18);
        _os_log_impl(&_mh_execute_header, v11, v12, "Deleting peripheral identifier for %s.", v13, 0xCu);
        sub_100095808(v14);
      }

      v15 = type metadata accessor for UUID();
      (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
      v16 = OBJC_IVAR____TtCC14dockaccessoryd17AccessoryKeystore24AccessoryPeripheralEntry_peripheralIdentifier;
      swift_beginAccess();
      sub_10017E7A8(v8, v9 + v16);
      swift_endAccess();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10017ABD8()
{
  v1 = v0;
  v2 = sub_100095274(&qword_1002A7AF0, &qword_10023C9D0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18[-v4];
  if (qword_1002A6770 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100093DE8(v6, qword_1002AA0E0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Deleting all peripheral identifiers.", v9, 2u);
  }

  v10 = OBJC_IVAR____TtC14dockaccessoryd17AccessoryKeystore_peripherals;
  result = swift_beginAccess();
  v12 = *(v1 + v10);
  if (v12 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v13 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      return result;
    }
  }

  if (v13 < 1)
  {
    __break(1u);
  }

  else
  {

    v14 = 0;
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v15 = *(v12 + 8 * v14 + 32);
      }

      ++v14;
      v16 = type metadata accessor for UUID();
      (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
      v17 = OBJC_IVAR____TtCC14dockaccessoryd17AccessoryKeystore24AccessoryPeripheralEntry_peripheralIdentifier;
      swift_beginAccess();
      sub_10017E7A8(v5, v15 + v17);
      swift_endAccess();
    }

    while (v13 != v14);
  }

  return result;
}

uint64_t sub_10017AF58@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100095274(&qword_1002A7AF0, &qword_10023C9D0);
  v7 = *(*(v6 - 8) + 64);
  result = __chkstk_darwin(v6 - 8);
  v10 = &v23 - v9;
  if (a2)
  {
    v11 = sub_100177864(a1, a2);
    if (v11)
    {
      v12 = v11;
      v13 = OBJC_IVAR____TtCC14dockaccessoryd17AccessoryKeystore24AccessoryPeripheralEntry_peripheralIdentifier;
      swift_beginAccess();
      sub_1000B5150(v12 + v13, v10, &qword_1002A7AF0, &qword_10023C9D0);
      v14 = type metadata accessor for UUID();
      v15 = *(v14 - 8);
      if ((*(v15 + 48))(v10, 1, v14) == 1)
      {
        sub_100095C84(v10, &qword_1002A7AF0, &qword_10023C9D0);
        sub_1000B346C();
        swift_allocError();
        *v16 = 1;
        swift_willThrow();
      }

      else
      {

        return (*(v15 + 32))(a3, v10, v14);
      }
    }

    else
    {
      if (qword_1002A6770 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_100093DE8(v17, qword_1002AA0E0);

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v24 = v21;
        *v20 = 136315138;
        *(v20 + 4) = sub_1000952D4(a1, a2, &v24);
        _os_log_impl(&_mh_execute_header, v18, v19, "Unable to read peripheral identifier for %s: Key store does not exist.", v20, 0xCu);
        sub_100095808(v21);
      }

      sub_1000B346C();
      swift_allocError();
      *v22 = 1;
      return swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10017B60C()
{
  result = qword_1002AA4C0;
  if (!qword_1002AA4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AA4C0);
  }

  return result;
}

void *sub_10017B660@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return &_swiftEmptyArrayStorage;
    }

    v7 = String.subscript.getter();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_1001025F0(0, 1, 1, &_swiftEmptyArrayStorage);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_1001025F0((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = &_swiftEmptyArrayStorage;
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = String.subscript.getter();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = String.index(after:)();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = String.index(after:)();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = String.subscript.getter();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_1001025F0(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = String.subscript.getter();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1001025F0(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_1001025F0((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = String.index(after:)();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

unsigned __int8 *sub_10017BA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v65 = a1;
  v66 = a2;
  v67 = a3;
  v68 = a4;
  sub_10017E87C();

  result = String.init<A>(_:)();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1001E4440();
    v38 = v37;

    v7 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v9 = v64;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v22 = v9 - 1;
        if (v22)
        {
          v23 = a5 + 48;
          v24 = a5 + 55;
          v25 = a5 + 87;
          if (a5 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            LOBYTE(v15) = 0;
            v26 = result + 1;
            v17 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v20 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v15 * a5;
              if ((v29 & 0xFF00) != 0)
              {
                goto LABEL_126;
              }

              v15 = v29 + (v27 + v28);
              if ((v15 >> 8))
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v17 = 0;
            v20 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v20 = 0;
        v17 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v30 = a5 + 48;
        v31 = a5 + 55;
        v32 = a5 + 87;
        if (a5 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          LOBYTE(v33) = 0;
          v17 = 1;
          do
          {
            v34 = *result;
            if (v34 < 0x30 || v34 >= v30)
            {
              if (v34 < 0x41 || v34 >= v31)
              {
                v20 = 0;
                if (v34 < 0x61 || v34 >= v32)
                {
                  goto LABEL_127;
                }

                v35 = -87;
              }

              else
              {
                v35 = -55;
              }
            }

            else
            {
              v35 = -48;
            }

            v36 = v33 * a5;
            if ((v36 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v33 = v36 + (v34 + v35);
            if ((v33 >> 8))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v17 = 0;
          v20 = v33;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          LOBYTE(v15) = 0;
          v16 = result + 1;
          v17 = 1;
          while (1)
          {
            v18 = *v16;
            if (v18 < 0x30 || v18 >= v12)
            {
              if (v18 < 0x41 || v18 >= v13)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v14)
                {
                  goto LABEL_127;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v15 * a5;
            if ((v21 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v15 = v21 - (v18 + v19);
            if ((v15 & 0xFFFFFF00) != 0)
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v20 = 0;
        v17 = 0;
LABEL_127:

        return (v20 | (v17 << 8));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v39 = HIBYTE(v7) & 0xF;
  v65 = v8;
  v66 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v39)
      {
        LOBYTE(v41) = 0;
        v57 = a5 + 48;
        v58 = a5 + 55;
        v59 = a5 + 87;
        if (a5 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v65;
        v17 = 1;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              v20 = 0;
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_127;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v41 * a5;
          if ((v63 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v41 = v63 + (v61 + v62);
          if ((v41 >> 8))
          {
            goto LABEL_126;
          }

          v60 = (v60 + 1);
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        LOBYTE(v41) = 0;
        v42 = a5 + 48;
        v43 = a5 + 55;
        v44 = a5 + 87;
        if (a5 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v65 + 1;
        v17 = 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v20 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_127;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          v48 = v41 * a5;
          if ((v48 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v41 = v48 - (v46 + v47);
          if ((v41 & 0xFFFFFF00) != 0)
          {
            goto LABEL_126;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v39)
  {
    v49 = v39 - 1;
    if (v49)
    {
      LOBYTE(v41) = 0;
      v50 = a5 + 48;
      v51 = a5 + 55;
      v52 = a5 + 87;
      if (a5 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      v53 = &v65 + 1;
      v17 = 1;
      do
      {
        v54 = *v53;
        if (v54 < 0x30 || v54 >= v50)
        {
          if (v54 < 0x41 || v54 >= v51)
          {
            v20 = 0;
            if (v54 < 0x61 || v54 >= v52)
            {
              goto LABEL_127;
            }

            v55 = -87;
          }

          else
          {
            v55 = -55;
          }
        }

        else
        {
          v55 = -48;
        }

        v56 = v41 * a5;
        if ((v56 & 0xFF00) != 0)
        {
          goto LABEL_126;
        }

        v41 = v56 + (v54 + v55);
        if ((v41 >> 8))
        {
          goto LABEL_126;
        }

        ++v53;
        --v49;
      }

      while (v49);
LABEL_125:
      v17 = 0;
      v20 = v41;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_10017C000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v65 = a1;
  v66 = a2;
  v67 = a3;
  v68 = a4;
  sub_10017E87C();

  result = String.init<A>(_:)();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1001E4440();
    v38 = v37;

    v7 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v9 = v64;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v22 = v9 - 1;
        if (v22)
        {
          v23 = a5 + 48;
          v24 = a5 + 55;
          v25 = a5 + 87;
          if (a5 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            LOWORD(v15) = 0;
            v26 = result + 1;
            v17 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v20 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v15 * a5;
              if ((v29 & 0xFFFF0000) != 0)
              {
                goto LABEL_126;
              }

              v15 = v29 + (v27 + v28);
              if ((v15 & 0x10000) != 0)
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v17 = 0;
            v20 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v20 = 0;
        v17 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v30 = a5 + 48;
        v31 = a5 + 55;
        v32 = a5 + 87;
        if (a5 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          LOWORD(v33) = 0;
          v17 = 1;
          do
          {
            v34 = *result;
            if (v34 < 0x30 || v34 >= v30)
            {
              if (v34 < 0x41 || v34 >= v31)
              {
                v20 = 0;
                if (v34 < 0x61 || v34 >= v32)
                {
                  goto LABEL_127;
                }

                v35 = -87;
              }

              else
              {
                v35 = -55;
              }
            }

            else
            {
              v35 = -48;
            }

            v36 = v33 * a5;
            if ((v36 & 0xFFFF0000) != 0)
            {
              goto LABEL_126;
            }

            v33 = v36 + (v34 + v35);
            if ((v33 & 0x10000) != 0)
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v17 = 0;
          v20 = v33;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          LOWORD(v15) = 0;
          v16 = result + 1;
          v17 = 1;
          while (1)
          {
            v18 = *v16;
            if (v18 < 0x30 || v18 >= v12)
            {
              if (v18 < 0x41 || v18 >= v13)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v14)
                {
                  goto LABEL_127;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v15 * a5;
            if ((v21 & 0xFFFF0000) != 0)
            {
              goto LABEL_126;
            }

            v15 = v21 - (v18 + v19);
            if ((v15 & 0xFFFF0000) != 0)
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v20 = 0;
        v17 = 0;
LABEL_127:

        return (v20 | (v17 << 16));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v39 = HIBYTE(v7) & 0xF;
  v65 = v8;
  v66 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v39)
      {
        LOWORD(v41) = 0;
        v57 = a5 + 48;
        v58 = a5 + 55;
        v59 = a5 + 87;
        if (a5 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v65;
        v17 = 1;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              v20 = 0;
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_127;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v41 * a5;
          if ((v63 & 0xFFFF0000) != 0)
          {
            goto LABEL_126;
          }

          v41 = v63 + (v61 + v62);
          if ((v41 & 0x10000) != 0)
          {
            goto LABEL_126;
          }

          v60 = (v60 + 1);
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        LOWORD(v41) = 0;
        v42 = a5 + 48;
        v43 = a5 + 55;
        v44 = a5 + 87;
        if (a5 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v65 + 1;
        v17 = 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v20 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_127;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          v48 = v41 * a5;
          if ((v48 & 0xFFFF0000) != 0)
          {
            goto LABEL_126;
          }

          v41 = v48 - (v46 + v47);
          if ((v41 & 0xFFFF0000) != 0)
          {
            goto LABEL_126;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v39)
  {
    v49 = v39 - 1;
    if (v49)
    {
      LOWORD(v41) = 0;
      v50 = a5 + 48;
      v51 = a5 + 55;
      v52 = a5 + 87;
      if (a5 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      v53 = &v65 + 1;
      v17 = 1;
      do
      {
        v54 = *v53;
        if (v54 < 0x30 || v54 >= v50)
        {
          if (v54 < 0x41 || v54 >= v51)
          {
            v20 = 0;
            if (v54 < 0x61 || v54 >= v52)
            {
              goto LABEL_127;
            }

            v55 = -87;
          }

          else
          {
            v55 = -55;
          }
        }

        else
        {
          v55 = -48;
        }

        v56 = v41 * a5;
        if ((v56 & 0xFFFF0000) != 0)
        {
          goto LABEL_126;
        }

        v41 = v56 + (v54 + v55);
        if ((v41 & 0x10000) != 0)
        {
          goto LABEL_126;
        }

        ++v53;
        --v49;
      }

      while (v49);
LABEL_125:
      v17 = 0;
      v20 = v41;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_10017C5E4(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1001E4440();
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_10017CB68(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v13 = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = _StringObject.sharedUTF8.getter();
  }

  result = sub_10017CCEC(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = BYTE2(result) & 1;
    v13 = result | ((BYTE2(result) & 1) << 16);
LABEL_8:
    LOBYTE(v14[0]) = (a4 & 0x1000000000000000) != 0;
    return v13 | (LOBYTE(v14[0]) << 24);
  }

  return result;
}

uint64_t sub_10017CC38(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_10017CC90@<X0>(sqlite3_stmt *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for AccessoryKeystore.AccessoryPeripheralEntry();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  result = sub_100172F20(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10017CCEC(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_1001E4838(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_104;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = String.UTF8View._foreignDistance(from:to:)();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_1001E4838(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_1001E4838(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_100;
  }

  if (v25 < a3 >> 16)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_99;
  }

  if (v26 < v13)
  {
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 87;
        if (a6 > 10)
        {
          v40 = a6 + 55;
        }

        else
        {
          v39 = 97;
          v40 = 65;
        }

        if (a6 <= 10)
        {
          v41 = a6 + 48;
        }

        else
        {
          v41 = 58;
        }

        if (v27)
        {
          LOWORD(v32) = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v41)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                v38 = 1;
                if (v44 < 0x61 || v44 >= v39)
                {
                  return v37 | (v38 << 16);
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            if (((v32 * a6) & 0xFFFF0000) != 0)
            {
              goto LABEL_96;
            }

            v32 = (v32 * a6) + (v44 + v45);
            if ((v32 & 0x10000) != 0)
            {
              goto LABEL_96;
            }

            ++v42;
            --v43;
          }

          while (v43);
LABEL_94:
          v38 = 0;
          v37 = v32;
          return v37 | (v38 << 16);
        }

        goto LABEL_95;
      }

      goto LABEL_96;
    }

    goto LABEL_103;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v46 = a6 + 87;
      if (a6 > 10)
      {
        v47 = a6 + 55;
      }

      else
      {
        v46 = 97;
        v47 = 65;
      }

      if (a6 <= 10)
      {
        v48 = a6 + 48;
      }

      else
      {
        v48 = 58;
      }

      if (v27)
      {
        LOWORD(v32) = 0;
        while (1)
        {
          v49 = *v27;
          if (v49 < 0x30 || v49 >= v48)
          {
            if (v49 < 0x41 || v49 >= v47)
            {
              v37 = 0;
              v38 = 1;
              if (v49 < 0x61 || v49 >= v46)
              {
                return v37 | (v38 << 16);
              }

              v50 = -87;
            }

            else
            {
              v50 = -55;
            }
          }

          else
          {
            v50 = -48;
          }

          if (((v32 * a6) & 0xFFFF0000) != 0)
          {
            goto LABEL_96;
          }

          v32 = (v32 * a6) + (v49 + v50);
          if ((v32 & 0x10000) != 0)
          {
            goto LABEL_96;
          }

          ++v27;
          if (!--result)
          {
            goto LABEL_94;
          }
        }
      }

      goto LABEL_95;
    }

LABEL_96:
    v37 = 0;
    v38 = 1;
    return v37 | (v38 << 16);
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 87;
      if (a6 > 10)
      {
        v30 = a6 + 55;
      }

      else
      {
        v29 = 97;
        v30 = 65;
      }

      if (a6 <= 10)
      {
        v31 = a6 + 48;
      }

      else
      {
        v31 = 58;
      }

      if (v27)
      {
        LOWORD(v32) = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v31)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              v38 = 1;
              if (v35 < 0x61 || v35 >= v29)
              {
                return v37 | (v38 << 16);
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          if (((v32 * a6) & 0xFFFF0000) != 0)
          {
            goto LABEL_96;
          }

          v32 = (v32 * a6) - (v35 + v36);
          if ((v32 & 0xFFFF0000) != 0)
          {
            goto LABEL_96;
          }

          ++v33;
          if (!--v34)
          {
            goto LABEL_94;
          }
        }
      }

LABEL_95:
      v37 = 0;
      v38 = 0;
      return v37 | (v38 << 16);
    }

    goto LABEL_96;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
  return result;
}

void *sub_10017D180(void *result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a3)
    {
      return _swiftEmptyArrayStorage;
    }

    v4 = result;
    v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v7 = v6;
    v6[2] = a3;
    v6[4] = v4;
    v6[5] = a2;
    v8 = a3 - 1;
    if (v8)
    {
      v9 = v6 + 7;
      do
      {
        *(v9 - 1) = v4;
        *v9 = a2;

        v9 += 2;
        --v8;
      }

      while (v8);
    }

    return v7;
  }

  return result;
}

id sub_10017D21C(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = v4 >> 62;
    if ((v4 >> 62) <= 1)
    {
      if (v5)
      {
        if (v3 == v3 >> 32)
        {
          goto LABEL_10;
        }
      }

      else if ((v4 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_8:
      sub_1000A0CD8(*(a1 + 40), *(a1 + 48));
      sub_10013B46C(v3, v4);
      sub_1000A0D2C(v3, v4);
      v6 = String.uppercased()();

      countAndFlagsBits = v6._countAndFlagsBits;
      object = v6._object;
      return sub_100100D58(countAndFlagsBits, object);
    }

    if (v5 == 2 && *(v3 + 16) != *(v3 + 24))
    {
      goto LABEL_8;
    }
  }

LABEL_10:
  result = [*(a1 + 32) privateKey];
  if (result)
  {

    v10 = [*(a1 + 32) publicKey];
    v11 = [v10 data];

    v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    sub_10013B46C(v12, v14);
    sub_1000A0D2C(v12, v14);
    String.uppercased()();

    v15._countAndFlagsBits = 43;
    v15._object = 0xE100000000000000;
    String.append(_:)(v15);

    result = [*(a1 + 32) privateKey];
    if (result)
    {
      v16 = result;
      v17 = [result data];

      v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      sub_10013B46C(v18, v20);
      sub_1000A0D2C(v18, v20);
      v21 = String.uppercased()();

      String.append(_:)(v21);

      countAndFlagsBits = String.init<A>(_:)();
      return sub_100100D58(countAndFlagsBits, object);
    }

    __break(1u);
  }

  return result;
}

void sub_10017D4B0(void *a1)
{
  if (!a1)
  {
    return;
  }

  v2 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd17AccessoryKeystore__activeController);
  v3 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd17AccessoryKeystore__activeController + 8);
  v4 = a1;

  v5 = sub_1001762B8(v2, v3, 0);

  if (v5 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_4;
    }

LABEL_33:

    v38 = sub_100176034();
    if (!v42)
    {
      v6 = v38;
LABEL_8:
      v7 = v6[4];
      v6[4] = v4;
      v39 = v4;

      sub_100095274(&qword_1002AA4D8, &unk_10023FAE0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10023C170;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 40) = v9;
      v10 = v6[12];
      v11 = v6[13];
      *(inited + 72) = &type metadata for Data;
      *(inited + 48) = v10;
      *(inited + 56) = v11;
      sub_1000A0CD8(v10, v11);
      sub_1001F2468(inited);
      swift_setDeallocating();
      sub_100095C84(inited + 32, &qword_1002AA4E0, &qword_10023EE00);
      v12 = swift_initStackObject();
      *(v12 + 16) = xmmword_10023C170;
      *(v12 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v12 + 40) = v13;

      v15 = sub_10017D21C(v14, 0);
      v17 = v16;

      *(v12 + 72) = &type metadata for Data;
      *(v12 + 48) = v15;
      *(v12 + 56) = v17;
      sub_1001F2468(v12);
      swift_setDeallocating();
      sub_100095C84(v12 + 32, &qword_1002AA4E0, &qword_10023EE00);
      if (qword_1002A6770 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_100093DE8(v18, qword_1002AA0E0);

      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v40 = v22;
        *v21 = 136315138;

        v24 = v6[2];
        v23 = v6[3];

        v25 = sub_1000952D4(v24, v23, &v40);

        *(v21 + 4) = v25;
        _os_log_impl(&_mh_execute_header, v19, v20, "Saving local pairing identity for %s", v21, 0xCu);
        sub_100095808(v22);
      }

      else
      {
      }

      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v27 = Dictionary._bridgeToObjectiveC()().super.isa;

      v28 = SecItemUpdate(isa, v27);

      if (!v28)
      {
        goto LABEL_30;
      }

      v29 = SecCopyErrorMessageString(v28, 0);
      if (v29)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v40 = 0;
          v41 = 0;
          static String._conditionallyBridgeFromObjectiveC(_:result:)();

          v29 = v41;
          if (v41)
          {
            v30 = v40;
LABEL_21:

            v31 = Logger.logObject.getter();
            v32 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v31, v32))
            {
              v33 = swift_slowAlloc();
              v34 = swift_slowAlloc();
              v40 = v34;
              *v33 = 136315138;
              if (v29)
              {
                v35 = v30;
              }

              else
              {
                v35 = 0x206E776F6E6B6E55;
              }

              if (v29)
              {
                v36 = v29;
              }

              else
              {
                v36 = 0xED0000726F727245;
              }

              v37 = sub_1000952D4(v35, v36, &v40);

              *(v33 + 4) = v37;
              _os_log_impl(&_mh_execute_header, v31, v32, "Unable to save local pairing identity: %s", v33, 0xCu);
              sub_100095808(v34);

              goto LABEL_31;
            }

LABEL_30:

LABEL_31:

            return;
          }
        }

        else
        {
        }

        v30 = 0;
        v29 = 0;
        goto LABEL_21;
      }

      v30 = 0;
      goto LABEL_21;
    }

    return;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_33;
  }

LABEL_4:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_7;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v5 + 32);

LABEL_7:

    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_10017DA48(const void *a1, const void *a2)
{
  if (a2)
  {
    v3 = sub_1001762B8(a1, a2, 1);
    v4 = v3;
    if (v3 >> 62)
    {
      goto LABEL_21;
    }

    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      while (1)
      {
        v6 = 0;
        v2 = (v2 + OBJC_IVAR____TtC14dockaccessoryd17AccessoryKeystore__activeController);
        while ((v4 & 0xC000000000000001) != 0)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_17:
            __break(1u);
            goto LABEL_18;
          }

LABEL_8:
          v9 = v7[14] == *v2 && v7[15] == v2[1];
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            v10 = v7[5];
            sub_1000A0CD8(v10, v7[6]);

            return v10;
          }

          ++v6;
          if (v8 == v5)
          {
            goto LABEL_22;
          }
        }

        if (v6 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_21:
        v5 = _CocoaArrayWrapper.endIndex.getter();
        if (!v5)
        {
          goto LABEL_22;
        }
      }

      v7 = *(v4 + 8 * v6 + 32);

      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_17;
      }

      goto LABEL_8;
    }

LABEL_22:

    v10 = 1;
  }

  else
  {
LABEL_18:
    v10 = 2;
  }

  sub_1000B346C();
  swift_allocError();
  *v11 = v10;
  swift_willThrow();
  return v10;
}

id sub_10017DBCC(void *a1, unsigned int (*a2)(void, void, void), void *a3, uint64_t a4, uint64_t a5)
{
  v7 = v6;
  v8 = v5;
  v104 = a5;
  v13 = sub_100095274(&qword_1002A7AF0, &qword_10023C9D0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v102 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v97 - v18;
  __chkstk_darwin(v17);
  v21 = &v97 - v20;
  if (qword_1002A6770 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  v23 = sub_100093DE8(v22, qword_1002AA0E0);
  v106 = a1;
  sub_1000B5150(a1, v21, &qword_1002A7AF0, &qword_10023C9D0);

  v103 = v23;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v98 = v25;
    v100 = a2;
    v101 = a4;
    v99 = v8;
    v105 = v6;
    v8 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    v111[0] = v97;
    *v8 = 136315394;
    v7 = type metadata accessor for UUID();
    a4 = *(v7 - 8);
    a2 = *(a4 + 48);
    if (a2(v21, 1, v7) == 1)
    {

      v26 = 0xE300000000000000;
      v27 = 7104878;
      goto LABEL_10;
    }

LABEL_8:
    sub_1000B5150(v21, v19, &qword_1002A7AF0, &qword_10023C9D0);
    v28 = a2(v19, 1, v7);

    if (v28 == 1)
    {
      goto LABEL_49;
    }

    v27 = UUID.uuidString.getter();
    v26 = v30;
    (*(a4 + 8))(v19, v7);
LABEL_10:
    sub_100095C84(v21, &qword_1002A7AF0, &qword_10023C9D0);
    v31 = sub_1000952D4(v27, v26, v111);

    *(v8 + 4) = v31;
    *(v8 + 12) = 2080;
    v7 = v105;
    a4 = v101;
    if (a3)
    {
      a2 = v100;
      *(v8 + 14) = sub_1000952D4(v100, a3, v111);
      _os_log_impl(&_mh_execute_header, v24, v98, "updatePeripheralIdentifier(%s, %s)", v8, 0x16u);
      swift_arrayDestroy();

      v8 = v99;
      goto LABEL_12;
    }

    __break(1u);
LABEL_49:
    __break(1u);
    return result;
  }

  sub_100095C84(v21, &qword_1002A7AF0, &qword_10023C9D0);
  if (!a3)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_12:
  v32 = sub_100177864(a2, a3);
  v33 = v106;
  if (v32)
  {
    v34 = v32;

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v105 = v7;
      v38 = a4;
      v39 = v37;
      v40 = v8;
      v41 = swift_slowAlloc();
      v111[0] = v41;
      *v39 = 136315138;
      *(v39 + 4) = sub_1000952D4(a2, a3, v111);
      _os_log_impl(&_mh_execute_header, v35, v36, "Updating peripheral identifier information for %s.", v39, 0xCu);
      sub_100095808(v41);
      v8 = v40;
      v33 = v106;

      a4 = v38;
      v7 = v105;
    }

    v42 = v104;
    v43 = type metadata accessor for UUID();
    if ((*(*(v43 - 8) + 48))(v33, 1, v43) != 1)
    {
      v44 = OBJC_IVAR____TtCC14dockaccessoryd17AccessoryKeystore24AccessoryPeripheralEntry_peripheralIdentifier;
      swift_beginAccess();
      sub_10017E738(v33, v34 + v44);
      swift_endAccess();
    }

    *(v34 + OBJC_IVAR____TtCC14dockaccessoryd17AccessoryKeystore24AccessoryPeripheralEntry_sessionId) = v42;
    *(v34 + OBJC_IVAR____TtCC14dockaccessoryd17AccessoryKeystore24AccessoryPeripheralEntry_version) = a4;
    v45 = *(v8 + OBJC_IVAR____TtC14dockaccessoryd17AccessoryKeystore_table);
    v46 = qword_1002A66F0;

    if (v46 != -1)
    {
      swift_once();
    }

    swift_weakInit();
    v111[0] = v45;
    swift_weakAssign();
    v109 = 39;
    v110 = 0xE100000000000000;
    v47._countAndFlagsBits = a2;
    v47._object = a3;
    String.append(_:)(v47);
    v48._countAndFlagsBits = 39;
    v48._object = 0xE100000000000000;
    String.append(_:)(v48);
    v49 = v109;
    v50 = v110;
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      swift_arrayDestroy();
      sub_1000B346C();
      swift_allocError();
      *v94 = 2;
      swift_willThrow();

      return sub_100095C84(v111, &qword_1002AA4C8, &unk_10023EDF0);
    }

    v52 = Strong;
    sub_1000B5150(v111, &v109, &qword_1002AA4C8, &unk_10023EDF0);
    v53 = *(v52 + 24);

    if ((v53 & 1) != 0 || (sub_100138F54(), !v7))
    {
      v104 = v49;
      v106 = v50;
      v54 = sub_100174554(&off_100274F80);
      if (*(v54 + 2) == 3)
      {
        LODWORD(v101) = v53;
        v102 = v52;
        v103 = v34;
        v105 = v7;
        v55 = 0;
        v56 = 0;
        v57 = 0xE000000000000000;
        do
        {
          v58 = HIBYTE(v57) & 0xF;
          if ((v57 & 0x2000000000000000) == 0)
          {
            v58 = v56 & 0xFFFFFFFFFFFFLL;
          }

          if (v58)
          {
            v59 = 8236;
          }

          else
          {
            v59 = 0;
          }

          if (v58)
          {
            v60 = 0xE200000000000000;
          }

          else
          {
            v60 = 0xE000000000000000;
          }

          v107 = v56;
          v108 = v57;

          v61._countAndFlagsBits = v59;
          v61._object = v60;
          String.append(_:)(v61);

          v63 = v107;
          v62 = v108;
          v64 = *(&off_100274F80 + v55 + 40);
          v107 = *(&off_100274F80 + v55 + 32);
          v108 = v64;

          v65._countAndFlagsBits = 656424224;
          v65._object = 0xE400000000000000;
          String.append(_:)(v65);
          v66 = *&v54[v55 + 32];
          v67 = *&v54[v55 + 40];

          v68._countAndFlagsBits = v66;
          v68._object = v67;
          String.append(_:)(v68);

          v69._countAndFlagsBits = 39;
          v69._object = 0xE100000000000000;
          String.append(_:)(v69);
          v70 = v107;
          v71 = v108;
          v107 = v63;
          v108 = v62;

          v72._countAndFlagsBits = v70;
          v72._object = v71;
          String.append(_:)(v72);

          v56 = v107;
          v57 = v108;
          v55 += 16;
        }

        while (v55 != 48);

        v107 = 0x20455441445055;
        v108 = 0xE700000000000000;
        v74 = *(v109 + 16);
        v73 = *(v109 + 24);

        v75._countAndFlagsBits = v74;
        v75._object = v73;
        String.append(_:)(v75);

        v76._countAndFlagsBits = 0x2054455320;
        v76._object = 0xE500000000000000;
        String.append(_:)(v76);

        v77._countAndFlagsBits = v56;
        v77._object = v57;
        String.append(_:)(v77);

        v79 = v107;
        v78 = v108;
        v107 = 0x20455245485720;
        v108 = 0xE700000000000000;
        v80._countAndFlagsBits = 0x696669746E656469;
        v80._object = 0xEA00000000007265;
        String.append(_:)(v80);
        v81._countAndFlagsBits = 2112800;
        v81._object = 0xE300000000000000;
        String.append(_:)(v81);
        v82._countAndFlagsBits = v104;
        v82._object = v106;
        String.append(_:)(v82);
        v83._countAndFlagsBits = 59;
        v83._object = 0xE100000000000000;
        String.append(_:)(v83);
        v84 = v107;
        v85 = v108;
        v107 = v79;
        v108 = v78;

        v86._countAndFlagsBits = v84;
        v86._object = v85;
        String.append(_:)(v86);

        v87 = v105;
        sub_100139D48(v107, v108, 0);
        if (v87)
        {

          if ((v101 & 1) == 0)
          {
LABEL_35:
            sub_1001396D0();

            sub_100095C84(&v109, &qword_1002AA4C8, &unk_10023EDF0);

LABEL_44:
            swift_bridgeObjectRelease_n();
            return sub_100095C84(v111, &qword_1002AA4C8, &unk_10023EDF0);
          }
        }

        else
        {

          if ((v101 & 1) == 0)
          {
            goto LABEL_35;
          }
        }
      }

      else
      {

        sub_100139F18();
        swift_allocError();
        *v96 = 2;
        *(v96 + 4) = 2;
        swift_willThrow();
        if ((v53 & 1) == 0)
        {
          goto LABEL_35;
        }
      }
    }

    sub_100095C84(&v109, &qword_1002AA4C8, &unk_10023EDF0);
    goto LABEL_44;
  }

  v88 = v102;
  sub_1000B5150(v106, v102, &qword_1002A7AF0, &qword_10023C9D0);
  v89 = type metadata accessor for UUID();
  v90 = *(v89 - 8);
  isa = 0;
  if ((*(v90 + 48))(v88, 1, v89) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v90 + 8))(v88, v89);
  }

  v92 = String._bridgeToObjectiveC()();
  v111[0] = 0;
  v93 = [v8 savePeripheralIdentifier:isa forAccessoryIdentifier:v92 error:v111];

  if (v93)
  {
    return v111[0];
  }

  v95 = v111[0];
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

uint64_t sub_10017E738(uint64_t a1, uint64_t a2)
{
  v4 = sub_100095274(&qword_1002A7AF0, &qword_10023C9D0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10017E7A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100095274(&qword_1002A7AF0, &qword_10023C9D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10017E818@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = **(v1 + 16);
  result = sub_100173C18(v3, v4);
  *a1 = result & 1;
  return result;
}

unint64_t sub_10017E87C()
{
  result = qword_1002AA4E8;
  if (!qword_1002AA4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AA4E8);
  }

  return result;
}

unint64_t sub_10017E8D0()
{
  result = qword_1002AA4F8;
  if (!qword_1002AA4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AA4F8);
  }

  return result;
}

unint64_t sub_10017E95C()
{
  result = qword_1002A7AB0;
  if (!qword_1002A7AB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002A7AB0);
  }

  return result;
}

unint64_t sub_10017E9A8()
{
  result = qword_1002AA538;
  if (!qword_1002AA538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AA538);
  }

  return result;
}

uint64_t sub_10017E9FC(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_10017EA70()
{
  v0 = type metadata accessor for Logger();
  sub_100093D84(v0, qword_1002AA550);
  sub_100093DE8(v0, qword_1002AA550);
  return Logger.init(subsystem:category:)();
}

id sub_10017EAF4()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v30 = v1;
  v31 = v2;
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v29 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v28 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v28);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v27 = OBJC_IVAR____TtC14dockaccessoryd11dockPairing_logger;
  Logger.init(subsystem:category:)();
  v26 = OBJC_IVAR____TtC14dockaccessoryd11dockPairing_clientQueue;
  v13 = sub_1000B3420();
  v25[1] = "Invalid pairing token";
  v25[2] = v13;
  static DispatchQoS.unspecified.getter();
  v33 = _swiftEmptyArrayStorage;
  sub_100181814(&qword_1002A7110, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100095274(&unk_1002A6830, &unk_10023AB20);
  v14 = v0;
  sub_100095BDC(&qword_1002A7120, &unk_1002A6830, &unk_10023AB20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v5 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v28);
  v16 = v29;
  v15 = v30;
  v17 = v31;
  v18 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v19 = v27;
  *&v0[v26] = v18;
  (*(v17 + 16))(v16, &v0[v19], v15);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "pairing interface open", v22, 2u);
  }

  (*(v17 + 8))(v16, v15);
  v23 = type metadata accessor for dockPairing();
  v32.receiver = v14;
  v32.super_class = v23;
  return objc_msgSendSuper2(&v32, "init");
}

void sub_10017F04C(uint64_t a1, void (*a2)(uint64_t))
{
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v4 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
  a2(a1);
}

uint64_t sub_10017F108(void *a1, int a2, int a3, void *aBlock, void (*a5)(uint64_t, uint64_t, id, void *))
{
  v7 = _Block_copy(aBlock);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  _Block_copy(v7);
  v11 = a1;
  a5(v8, v10, v11, v7);
  _Block_release(v7);
  _Block_release(v7);
}

uint64_t type metadata accessor for dockPairing()
{
  result = qword_1002AA590;
  if (!qword_1002AA590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10017F3B8()
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

void sub_10017F454(int a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v26 = a1;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002A6778 != -1)
  {
    swift_once();
  }

  v14 = sub_100093DE8(v9, qword_1002AA550);
  (*(v10 + 16))(v13, v14, v9);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v25 = a4;
    v19 = a5;
    v20 = v18;
    v27[0] = v18;
    v27[1] = a2;
    *v17 = 67109378;
    *(v17 + 4) = v26;
    *(v17 + 8) = 2080;
    v27[2] = a3;

    sub_100095274(&unk_1002A6F20, &unk_10023C660);
    v21 = String.init<A>(describing:)();
    v23 = sub_1000952D4(v21, v22, v27);

    *(v17 + 10) = v23;
    _os_log_impl(&_mh_execute_header, v15, v16, v19, v17, 0x12u);
    sub_100095808(v20);
  }

  (*(v10 + 8))(v13, v9);
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_100196ED8(v26, Strong);
}

id sub_10017F7CC(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_10017F828(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a1;
  v35 = a4;
  v6 = type metadata accessor for Errors();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (&v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v33 - v17;
  v19 = [objc_opt_self() currentConnection];
  if (v19)
  {
    v20 = v19;
    v21 = [v19 processIdentifier];
    (*(v12 + 16))(v18, a3 + OBJC_IVAR____TtC14dockaccessoryd11dockPairing_logger, v11);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v36 = v25;
      *v24 = 67109378;
      *(v24 + 4) = v21;
      *(v24 + 8) = 2080;
      *(v24 + 10) = sub_1000952D4(v34, a2, &v36);
      _os_log_impl(&_mh_execute_header, v22, v23, "Client %d requested pairing for %s", v24, 0x12u);
      sub_100095808(v25);
    }

    (*(v12 + 8))(v18, v11);
    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v26 = v20;
    sub_1001965B0(v21, v20, v34, a2);

    (*(v35 + 16))(v35, 0);
  }

  else
  {
    v34 = v7;
    (*(v12 + 16))(v16, a3 + OBJC_IVAR____TtC14dockaccessoryd11dockPairing_logger, v11);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Failed fetching current NSXPCConnection, cannot construct client", v29, 2u);
    }

    (*(v12 + 8))(v16, v11);
    *v10 = 0xD000000000000029;
    v10[1] = 0x800000010022F170;
    v30 = v34;
    (*(v34 + 104))(v10, enum case for Errors.XPCNil(_:), v6);
    sub_100181814(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    (*(v30 + 16))(v31, v10, v6);
    v32 = _convertErrorToNSError(_:)();
    (*(v35 + 16))(v35, v32);

    (*(v30 + 8))(v10, v6);
  }
}

uint64_t sub_10017FCF0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v36 = a3;
  v6 = type metadata accessor for Errors();
  v7 = *(v6 - 8);
  v37 = v6;
  v38 = v7;
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (&v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100095274(&qword_1002A7AF0, &qword_10023C9D0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v35 - v18;
  v20 = type metadata accessor for UUID();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a1;
  UUID.init(uuidString:)();
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_100095C84(v19, &qword_1002A7AF0, &qword_10023C9D0);
    (*(v12 + 16))(v15, v36 + OBJC_IVAR____TtC14dockaccessoryd11dockPairing_logger, v11);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v40 = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_1000952D4(v35, a2, &v40);
      _os_log_impl(&_mh_execute_header, v25, v26, "Invalid pairing token: %s", v27, 0xCu);
      sub_100095808(v28);
    }

    (*(v12 + 8))(v15, v11);
    *v10 = 0xD000000000000015;
    v10[1] = 0x8000000100233F20;
    v29 = v37;
    v30 = v38;
    (*(v38 + 104))(v10, enum case for Errors.PairingError(_:), v37);
    sub_100181814(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    (*(v30 + 16))(v31, v10, v29);
    v32 = _convertErrorToNSError(_:)();
    (*(v39 + 16))(v39, v32);

    (*(v30 + 8))(v10, v29);
  }

  else
  {
    (*(v21 + 32))(v24, v19, v20);
    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v34 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
    sub_1000DF8C4(v24);

    (*(v39 + 16))(v39, 0);
    return (*(v21 + 8))(v24, v20);
  }
}

uint64_t sub_1001801F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v5 - 8);
  v6 = *(v25 + 64);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v23 = *(v9 - 8);
  v24 = v9;
  v10 = *(v23 + 64);
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v16 = *(a2 + OBJC_IVAR____TtC14dockaccessoryd11dockPairing_clientQueue);
  (*(v14 + 16))(&v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v13);
  v17 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v18 = swift_allocObject();
  (*(v14 + 32))(v18 + v17, &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
  aBlock[4] = sub_10018177C;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147FC8;
  aBlock[3] = &unk_100279828;
  v19 = _Block_copy(aBlock);
  v20 = v16;
  static DispatchQoS.unspecified.getter();
  v27 = _swiftEmptyArrayStorage;
  sub_100181814(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags);
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_100095BDC(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v25 + 8))(v8, v5);
  (*(v23 + 8))(v12, v24);

  return (*(v26 + 16))(v26, 0);
}

uint64_t sub_100180594(uint64_t a1, unint64_t a2, char *a3, uint64_t a4)
{
  v60 = a3;
  v61 = a4;
  v6 = type metadata accessor for Errors();
  v58 = *(v6 - 8);
  v59 = v6;
  v7 = *(v58 + 64);
  __chkstk_darwin(v6);
  v53 = (&v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v57 = type metadata accessor for Logger();
  v54 = *(v57 - 8);
  v9 = *(v54 + 64);
  __chkstk_darwin(v57);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v55 = *(v12 - 8);
  v56 = v12;
  v13 = *(v55 + 64);
  __chkstk_darwin(v12);
  v51 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for DispatchQoS();
  v50 = *(v52 - 8);
  v15 = *(v50 + 64);
  __chkstk_darwin(v52);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100095274(&qword_1002A7AF0, &qword_10023C9D0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v48 - v20;
  v22 = type metadata accessor for UUID();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v22);
  v26 = &v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v48 - v27;
  v49 = a1;
  UUID.init(uuidString:)();
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_100095C84(v21, &qword_1002A7AF0, &qword_10023C9D0);
    v29 = v54;
    v30 = v57;
    (*(v54 + 16))(v11, &v60[OBJC_IVAR____TtC14dockaccessoryd11dockPairing_logger], v57);

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      aBlock[0] = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_1000952D4(v49, a2, aBlock);
      _os_log_impl(&_mh_execute_header, v31, v32, "Invalid pairing token: %s", v33, 0xCu);
      sub_100095808(v34);
    }

    (*(v29 + 8))(v11, v30);
    v35 = v53;
    *v53 = 0xD000000000000015;
    v35[1] = 0x8000000100233F20;
    v37 = v58;
    v36 = v59;
    (*(v58 + 104))(v35, enum case for Errors.PairingError(_:), v59);
    sub_100181814(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    (*(v37 + 16))(v38, v35, v36);
    v39 = _convertErrorToNSError(_:)();
    (*(v61 + 16))(v61, v39);

    (*(v37 + 8))(v35, v36);
  }

  else
  {
    v41 = *(v23 + 32);
    v41(v28, v21, v22);
    v60 = *&v60[OBJC_IVAR____TtC14dockaccessoryd11dockPairing_clientQueue];
    (*(v23 + 16))(v26, v28, v22);
    v42 = (*(v23 + 80) + 16) & ~*(v23 + 80);
    v43 = swift_allocObject();
    v41((v43 + v42), v26, v22);
    aBlock[4] = sub_1001816A8;
    aBlock[5] = v43;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100147FC8;
    aBlock[3] = &unk_1002797D8;
    v44 = _Block_copy(aBlock);
    v45 = v60;
    static DispatchQoS.unspecified.getter();
    v62 = _swiftEmptyArrayStorage;
    sub_100181814(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags);
    sub_100095274(&unk_1002A6B60, qword_10023AE10);
    sub_100095BDC(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
    v46 = v51;
    v47 = v56;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v44);

    (*(v55 + 8))(v46, v47);
    (*(v50 + 8))(v17, v52);

    (*(v61 + 16))(v61, 0);
    return (*(v23 + 8))(v28, v22);
  }
}

uint64_t sub_100180D4C(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v47 - v8;
  LODWORD(v54) = [a1 processIdentifier];
  v10 = String._bridgeToObjectiveC()();
  v11 = [a1 valueForEntitlement:v10];

  if (v11)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v61 = 0u;
    v62 = 0u;
  }

  v53 = v7;
  aBlock = v61;
  v58 = v62;
  if (*(&v62 + 1))
  {
    v12 = swift_dynamicCast();
    if (v12)
    {
      v13 = v55;
    }

    else
    {
      v13 = 0;
    }

    if (v12)
    {
      v14 = v56;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    sub_100095C84(&aBlock, &qword_1002A9210, &unk_10023BE70);
    v13 = 0;
    v14 = 0;
  }

  v15 = String._bridgeToObjectiveC()();
  v16 = [a1 valueForEntitlement:v15];

  if (v16)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v61 = 0u;
    v62 = 0u;
  }

  v17 = v54;
  aBlock = v61;
  v58 = v62;
  if (*(&v62 + 1))
  {
    if (swift_dynamicCast())
    {
      v18 = v14;
      if (v55)
      {
        v52 = v13;
        if (qword_1002A6780 != -1)
        {
          swift_once();
        }

        v51 = sub_10019B91C(a1);
        v20 = v19;
        if (qword_1002A6778 != -1)
        {
          swift_once();
        }

        v21 = sub_100093DE8(v2, qword_1002AA550);
        v22 = v53;
        (*(v3 + 16))(v53, v21, v2);

        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.default.getter();

        v50 = v24;
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v48 = v23;
          v26 = v25;
          v49 = swift_slowAlloc();
          *&v61 = v49;
          *v26 = 67109634;
          *(v26 + 4) = v17;
          *(v26 + 8) = 2080;
          *&aBlock = v52;
          *(&aBlock + 1) = v18;

          sub_100095274(&unk_1002A6F20, &unk_10023C660);
          v27 = String.init<A>(describing:)();
          v29 = sub_1000952D4(v27, v28, &v61);

          *(v26 + 10) = v29;
          *(v26 + 18) = 2080;
          *&aBlock = v51;
          *(&aBlock + 1) = v20;
          v30 = String.init<A>(describing:)();
          v32 = sub_1000952D4(v30, v31, &v61);
          v17 = v54;

          *(v26 + 20) = v32;
          v33 = v48;
          _os_log_impl(&_mh_execute_header, v48, v50, "new pairing connection from pid %d, appID entitlement %s, appID %s", v26, 0x1Cu);
          swift_arrayDestroy();

          (*(v3 + 8))(v53, v2);
        }

        else
        {

          (*(v3 + 8))(v22, v2);
          v13 = v52;
        }

        v54 = objc_opt_self();
        v53 = [v54 interfaceWithProtocol:&OBJC_PROTOCOL____TtP11DockKitCore24XPCPairingDaemonProtocol_];
        v39 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v40 = swift_allocObject();
        *(v40 + 16) = v17;
        *(v40 + 24) = v13;
        *(v40 + 32) = v18;
        *(v40 + 40) = v39;
        v59 = sub_100181620;
        v60 = v40;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v58 = sub_100147FC8;
        *(&v58 + 1) = &unk_100279738;
        v41 = _Block_copy(&aBlock);

        [a1 setInvalidationHandler:v41];
        _Block_release(v41);
        v42 = swift_allocObject();
        *(v42 + 16) = v17;
        *(v42 + 24) = v13;
        *(v42 + 32) = v18;
        *(v42 + 40) = v39;
        v59 = sub_100181664;
        v60 = v42;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v58 = sub_100147FC8;
        *(&v58 + 1) = &unk_100279788;
        v43 = _Block_copy(&aBlock);

        [a1 setInterruptionHandler:v43];
        _Block_release(v43);
        v44 = v53;
        [a1 setExportedInterface:v53];
        v45 = [v54 interfaceWithProtocol:&OBJC_PROTOCOL____TtP11DockKitCore24XPCPairingClientProtocol_];
        [a1 setRemoteObjectInterface:v45];
        v46 = [objc_allocWithZone(type metadata accessor for dockPairing()) init];
        [a1 setExportedObject:v46];
        [a1 resume];

        return 1;
      }
    }
  }

  else
  {

    sub_100095C84(&aBlock, &qword_1002A9210, &unk_10023BE70);
  }

  if (qword_1002A6778 != -1)
  {
    swift_once();
  }

  v34 = sub_100093DE8(v2, qword_1002AA550);
  (*(v3 + 16))(v9, v34, v2);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 67109120;
    *(v37 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v35, v36, "process %d is not entitled for this API. Add entitlements and try again", v37, 8u);
  }

  (*(v3 + 8))(v9, v2);
  [a1 invalidate];
  return 0;
}

uint64_t sub_1001815E4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10018164C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001816EC(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_100181814(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_100181878(uint64_t (*a1)(id *), void *a2, unint64_t a3)
{
  v4 = a3;
  v23 = _swiftEmptyArrayStorage;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v8 = 0;
    v20 = v4 & 0xFFFFFFFFFFFFFF8;
    v21 = v4 & 0xC000000000000001;
    v19 = v4;
    while (1)
    {
      if (v21)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *(v20 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v22 = v9;
      v12 = a2;
      v13 = a1(&v22);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v14 = i;
        v15 = a1;
        v16 = a2;
        v17 = v23[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        a2 = v16;
        a1 = v15;
        i = v14;
        v4 = v19;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v23;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = _swiftEmptyArrayStorage;
LABEL_20:

  return v12;
}

uint64_t sub_100181A24()
{
  v1 = sub_100095274(&qword_1002A7C88, &qword_10023CC10);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 1, 1, v5);
  v7 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_activeTrackingLastTimestamp;
  swift_beginAccess();
  sub_1001A2CDC(v4, v0 + v7);
  swift_endAccess();
  *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_activeTrackingDuration) = 0;
  v6(v4, 1, 1, v5);
  v8 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_trackingButtonDisabledLastTimestamp;
  swift_beginAccess();
  sub_1001A2CDC(v4, v0 + v8);
  result = swift_endAccess();
  *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_trackingButtonDisabledDuration) = 0;
  return result;
}

uint64_t sub_100181B7C()
{
  v123 = type metadata accessor for UUID();
  v110 = *(v123 - 8);
  v1 = *(v110 + 64);
  v2 = __chkstk_darwin(v123);
  v113 = v108 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v121 = v108 - v4;
  v5 = sub_100095274(&qword_1002A7AF0, &qword_10023C9D0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v108 - v7;
  v122 = type metadata accessor for Logger();
  v133 = *(v122 - 8);
  v9 = *(v133 + 64);
  v10 = __chkstk_darwin(v122);
  v11 = __chkstk_darwin(v10);
  v120 = v108 - v12;
  __chkstk_darwin(v11);
  v143 = v108 - v13;
  v14 = type metadata accessor for String.Encoding();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v136 = type metadata accessor for URL.DirectoryHint();
  v16 = *(v136 - 8);
  v17 = v16[8];
  __chkstk_darwin(v136);
  v135 = v108 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100095274(&qword_1002A6B70, &unk_10023C9C0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = v108 - v21;
  v23 = type metadata accessor for URL();
  v24 = *(v23 - 1);
  v25 = v24[8];
  v26 = __chkstk_darwin(v23);
  v138 = v108 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v124 = v108 - v29;
  v30 = __chkstk_darwin(v28);
  v115 = v108 - v31;
  __chkstk_darwin(v30);
  v137 = v108 - v32;
  v116 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v33 = *&v0[OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock];

  os_unfair_lock_lock(v33 + 4);

  v34 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_accessories;
  swift_beginAccess();
  v35 = *&v0[v34];
  v119 = v34;
  v36 = v0;
  *&v0[v34] = &_swiftEmptyArrayStorage;

  if (qword_1002A6710 != -1)
  {
    goto LABEL_42;
  }

  while (1)
  {
    v37 = qword_1002B1C20;
    sub_100152034(v22);
    if ((v24[6])(v22, 1, v23) == 1)
    {
      sub_100095C84(v22, &qword_1002A6B70, &unk_10023C9C0);
      v38 = v116;
      v22 = v36;
      goto LABEL_39;
    }

    v142 = v37;
    v132 = v8;
    v39 = v24[4];
    v40 = v137;
    v134 = v23;
    v39(v137, v22, v23);
    v144 = 0x6E6F6973726576;
    v145 = 0xE700000000000000;
    v41 = v16[13];
    v42 = v135;
    v130 = enum case for URL.DirectoryHint.inferFromPath(_:);
    v43 = v136;
    v129 = v16 + 13;
    v128 = v41;
    v41(v135);
    v127 = sub_1000E3C10();
    URL.appending<A>(path:directoryHint:)();
    v44 = v16[1];
    v131 = v16 + 1;
    v126 = v44;
    v44(v42, v43);
    static String.Encoding.utf8.getter();
    v45 = String.init(contentsOf:encoding:)();
    v118 = v36;
    v47 = v46;
    v48 = v45;
    v49 = v133;
    v50 = &v36[OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger];
    v51 = v143;
    v52 = v122;
    v112 = *(v133 + 16);
    v112(v143, v50, v122);

    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.default.getter();

    v55 = os_log_type_enabled(v53, v54);
    v114 = 0;
    if (v55)
    {
      v56 = swift_slowAlloc();
      v57 = v51;
      v58 = swift_slowAlloc();
      v144 = v58;
      *v56 = 136315138;
      v59 = sub_1000952D4(v48, v47, &v144);

      *(v56 + 4) = v59;
      _os_log_impl(&_mh_execute_header, v53, v54, "Current database version string %s", v56, 0xCu);
      sub_100095808(v58);

      v40 = v137;

      v60 = *(v49 + 8);
      v61 = v57;
    }

    else
    {

      v60 = *(v49 + 8);
      v61 = v51;
    }

    v111 = v60;
    v60(v61, v52);
    v62 = *(v142 + OBJC_IVAR____TtC14dockaccessoryd10FileSystem_system);
    URL._bridgeToObjectiveC()(v63);
    v65 = v64;
    sub_100095274(&qword_1002AB4B8, &unk_10023F0D8);
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_10023AAC0;
    v16 = NSURLIsReadableKey;
    *(v66 + 32) = NSURLIsRegularFileKey;
    *(v66 + 40) = NSURLIsReadableKey;
    type metadata accessor for URLResourceKey(0);
    v67 = NSURLIsRegularFileKey;
    v68 = NSURLIsReadableKey;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v144 = 0;
    v70 = [v62 contentsOfDirectoryAtURL:v65 includingPropertiesForKeys:isa options:21 error:&v144];

    v71 = v144;
    if (!v70)
    {
      v103 = v144;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      v104 = v24[1];
      v105 = v134;
      v104(v115, v134);
      v104(v40, v105);
      v22 = v118;
      goto LABEL_38;
    }

    v72 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v73 = v71;

    v22 = v118;
    v142 = *(v72 + 16);
    if (!v142)
    {
      break;
    }

    v36 = 0;
    v117 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_keystore;
    v109 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger;
    v141 = v72 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
    v140 = v24 + 2;
    v139 = (v110 + 48);
    v143 = (v24 + 1);
    v108[1] = v133 + 16;
    v108[0] = v133 + 8;
    v110 += 8;
    v74 = v123;
    v23 = v132;
    v75 = v134;
    v8 = v124;
    v125 = v72;
    while (v36 < *(v72 + 16))
    {
      v16 = v24;
      (v24[2])(v8, v141 + v24[9] * v36, v75);
      URL.relativePath.getter();
      UUID.init(uuidString:)();

      if ((*v139)(v23, 1, v74) == 1)
      {
        v76 = *v143;
        (*v143)(v8, v75);
        sub_100095C84(v23, &qword_1002A7AF0, &qword_10023C9D0);
      }

      else
      {
        sub_100095C84(v23, &qword_1002A7AF0, &qword_10023C9D0);
        v144 = URL.relativePath.getter();
        v145 = v77;
        v78 = v135;
        v79 = v8;
        v80 = v136;
        v128(v135, v130, v136);
        v81 = v138;
        URL.appending<A>(path:directoryHint:)();
        v126(v78, v80);

        v82 = sub_10019CD88(v81);
        if (v82)
        {
          v23 = v82;
          v83 = dispatch thunk of DockCoreAccessory.info.getter();
          v84 = v121;
          DockCoreInfo.identifier.getter();

          v85 = sub_1001408A0(v84);
          v87 = v86;
          v88 = *&v22[v117];
          v133 = v85;
          v89 = sub_10014025C(v85, v87);
          v91 = sub_1001762B8(v89, v90, 1);
          v92 = v91;
          v24 = v16;
          if (v91 >> 62)
          {
            v93 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v93 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v8 = v124;
          if (v93)
          {
            if ((v92 & 0xC000000000000001) != 0)
            {
              v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (!*((v92 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_41;
              }

              v16 = *(v92 + 32);
            }

            v22 = v118;
            v94 = v119;
            swift_beginAccess();
            v95 = v23;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((*&v22[v94] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v22[v94] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v102 = *((*&v22[v94] & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            swift_endAccess();
            sub_1000A0D2C(v133, v87);

            v76 = *v143;
            v75 = v134;
            (*v143)(v138, v134);
            v76(v8, v75);
            v74 = v123;
          }

          else
          {
            v16 = v87;

            v112(v120, &v22[v109], v122);
            v96 = Logger.logObject.getter();
            v97 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v96, v97))
            {
              v98 = swift_slowAlloc();
              *v98 = 0;
              _os_log_impl(&_mh_execute_header, v96, v97, "Skipping existing paired accessory, no matching entry in keystore.", v98, 2u);
            }

            v111(v120, v122);
            v99 = dispatch thunk of DockCoreAccessory.info.getter();
            v100 = v113;
            DockCoreInfo.identifier.getter();

            v101 = v114;
            sub_100188B9C(v100);
            if (v101)
            {

              sub_1000A0D2C(v133, v16);

              v74 = v123;
              (*v110)(v100, v123);
              v76 = *v143;
              v75 = v134;
              (*v143)(v138, v134);
              v76(v8, v75);
              v114 = 0;
            }

            else
            {
              v114 = 0;
              sub_1000A0D2C(v133, v16);

              v74 = v123;
              (*v110)(v100, v123);
              v76 = *v143;
              v75 = v134;
              (*v143)(v138, v134);
              v76(v8, v75);
            }
          }

          v23 = v132;
        }

        else
        {
          v76 = *v143;
          v75 = v134;
          (*v143)(v81, v134);
          v76(v79, v75);
          v23 = v132;
          v24 = v16;
          v8 = v79;
        }

        v72 = v125;
      }

      if (v142 == ++v36)
      {

        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    swift_once();
  }

  v76 = v24[1];
  v75 = v134;
LABEL_37:
  v76(v115, v75);
  v76(v137, v75);
LABEL_38:
  v38 = v116;
LABEL_39:
  v106 = *&v22[v38];

  os_unfair_lock_unlock(v106 + 4);
}

uint64_t sub_100182CCC()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v16[1] = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v6 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v6 + 4);

  v7 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_accessories;
  swift_beginAccess();
  v17 = v5;
  v18 = v0;
  v8 = *(v0 + v7);
  v16[2] = v2;
  v16[3] = v1;
  if (v8 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    v10 = 0;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v11 = *(v8 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      dispatch thunk of DockCoreAccessory.needsMigration.setter();
      sub_10018F7CC(v12);

      ++v10;
      if (v13 == i)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_12:

  v14 = *(v18 + v17);

  os_unfair_lock_unlock(v14 + 4);

  return 0;
}

uint64_t sub_100183044()
{
  result = sub_100183064();
  qword_1002B1CF0 = result;
  return result;
}

uint64_t sub_100183064()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DockAccessoryDatabase(0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = sub_1001837FC();
  v9 = *(v8 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connectNotification);
  DeviceNotification.state.setter();

  v10 = *(v8 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_trackingEnableNotification);
  DeviceNotification.state.setter();

  v11 = *(v8 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_trackingButtonNotification);
  DeviceNotification.state.setter();

  sub_100181B7C();
  type metadata accessor for DockCoreManager();
  if (static DockCoreManager.debugAllowed.getter())
  {
    sub_100152BF4();
  }

  v12 = type metadata accessor for DockKitFeatures();
  v29 = v12;
  v30 = sub_1001A2FAC(&qword_1002A6808, &type metadata accessor for DockKitFeatures);
  v13 = sub_100093E20(aBlock);
  (*(*(v12 - 8) + 104))(v13, enum case for DockKitFeatures.RemoteControl(_:), v12);
  LOBYTE(v12) = isFeatureEnabled(_:)();
  sub_100095808(aBlock);
  if (v12)
  {
    v14 = objc_allocWithZone(type metadata accessor for DockIDSServer());
    v15 = sub_1001B74C8(0xD000000000000025, 0x8000000100234940);
    v16 = *(v8 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_idsServer);
    *(v8 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_idsServer) = v15;
  }

  else
  {
    (*(v1 + 16))(v4, v8 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v0);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Ignoring IDS initialization, feature not enabled.", v19, 2u);
    }

    (*(v1 + 8))(v4, v0);
  }

  v20 = *(v8 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_queue);
  v21 = swift_allocObject();
  swift_weakInit();
  v30 = sub_1001A302C;
  v31 = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100185984;
  v29 = &unk_100279F40;
  v22 = _Block_copy(aBlock);

  v23 = os_state_add_handler();
  _Block_release(v22);
  v24 = v8 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_stateHandle;
  *v24 = v23;
  *(v24 + 8) = 0;
  v25 = *(v8 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_secureTrackingSessionManager);

  LOBYTE(v23) = static DockCoreManager.secureTrackingAllowed.getter();
  v26 = *(v25 + 16);

  sub_1000EECDC(v23);

  return v8;
}

double sub_1001834F0(uint64_t *a1, void *a2)
{
  v28 = a2;
  v4 = v2;
  v5 = sub_100095274(&qword_1002A7C88, &qword_10023CC10);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v27 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v27 - v18;
  v20 = *a1;
  swift_beginAccess();
  sub_1000B5150(v4 + v20, v11, &qword_1002A7C88, &qword_10023CC10);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100095C84(v11, &qword_1002A7C88, &qword_10023CC10);
    v21 = v28;
  }

  else
  {
    (*(v13 + 32))(v19, v11, v12);
    (*(v13 + 56))(v9, 1, 1, v12);
    swift_beginAccess();
    sub_1001A2CDC(v9, v4 + v20);
    swift_endAccess();
    Date.init()();
    Date.timeIntervalSince(_:)();
    v23 = v22;
    v24 = *(v13 + 8);
    v24(v17, v12);
    v24(v19, v12);
    v25 = v28;
    *(v4 + *v28) = v23 + *(v4 + *v28);
    v21 = v25;
  }

  return *(v4 + *v21);
}

uint64_t sub_1001837FC()
{
  v1 = v0;
  v2 = sub_100095274(&qword_1002A9318, &qword_10023F0C0);
  v92 = *(v2 - 8);
  v93 = v2;
  v3 = *(v92 + 64);
  __chkstk_darwin(v2);
  v91 = &v82 - v4;
  v90 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v96 = *(v90 - 8);
  v5 = *(v96 + 64);
  __chkstk_darwin(v90);
  v89 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for OS_dispatch_queue.Attributes();
  v7 = *(*(v95 - 8) + 64);
  __chkstk_darwin(v95);
  v88 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  Logger.init(subsystem:category:)();
  *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__processesAuthorizedForCamera) = &_swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_accessories) = &_swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_docked) = 0;
  *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected) = 0;
  *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_trackingButtonState) = 2;
  v11 = v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_lastTrackingState;
  *v11 = 0;
  *(v11 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_previousCameraSessions) = &_swiftEmptyDictionarySingleton;
  *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_appIdMap) = &_swiftEmptyDictionarySingleton;
  *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_dockKitApps) = &_swiftEmptyDictionarySingleton;
  *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_apiUsageMetricsMap) = &_swiftEmptyDictionarySingleton;
  v12 = (v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_lastConnectedAppId);
  *v12 = 0;
  v12[1] = 0;
  *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_lastTrackingSummaryDebug) = 0;
  *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_lastTrackingSummary) = 0;
  *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_trackingButtonDisabledDuration) = 0;
  v13 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_trackingButtonDisabledLastTimestamp;
  v14 = type metadata accessor for Date();
  v15 = *(*(v14 - 8) + 56);
  v15(v1 + v13, 1, 1, v14);
  *(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_activeTrackingDuration) = 0;
  v15(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_activeTrackingLastTimestamp, 1, 1, v14);
  *(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_txn) = 0;
  v16 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__txnLock;
  v94 = sub_100095274(&unk_1002A7370, &qword_10023AB30);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v1 + v16) = v17;
  v18 = v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_stateHandle;
  *v18 = 0;
  *(v18 + 8) = 1;
  v19 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_keystore;
  *(v1 + v19) = [objc_allocWithZone(type metadata accessor for AccessoryKeystore()) init];
  v20 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_queue;
  sub_100095B94(0, &qword_1002A6820, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  v86 = sub_1001A2FAC(&qword_1002A7110, &type metadata accessor for OS_dispatch_queue.Attributes);
  v85 = sub_100095274(&unk_1002A6830, &unk_10023AB20);
  v87 = sub_100095BDC(&qword_1002A7120, &unk_1002A6830, &unk_10023AB20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v84 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v21 = *(v96 + 104);
  v96 += 104;
  v83 = v21;
  v23 = v89;
  v22 = v90;
  v21(v89);
  *(v1 + v20) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v24 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager;
  *(v1 + v24) = [objc_allocWithZone(type metadata accessor for AccessoryManager()) init];
  *(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_idsServer) = 0;
  *(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_motionManager) = 0;
  v25 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_motionClients;
  *(v1 + v25) = sub_1001F18A8(&_swiftEmptyArrayStorage);
  v26 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_motionQueue;
  *(v1 + v26) = [objc_allocWithZone(NSOperationQueue) init];
  v27 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_motionClientQueue;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v83(v23, v84, v22);
  *(v1 + v27) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_imuUpdateInterval) = 0x3F91111111111111;
  v28 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_continuityCaptureHeadingMap;
  *(v1 + v28) = sub_1001F19C0(&_swiftEmptyArrayStorage);
  *(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_batteryPollInterval) = 0x404E000000000000;
  *(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__batteryPollTimer) = 0;
  v29 = (v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_trackingWidgetExtensionBundleID);
  *v29 = 0xD00000000000003BLL;
  v29[1] = 0x8000000100231690;
  v30 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_secureTrackingSessionManager;
  v31 = type metadata accessor for SecureTrackingSessionManager();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  *(v1 + v30) = sub_1000EC07C();
  v34 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_secureTrackingControlEnabledNotification;
  v35 = type metadata accessor for DeviceNotification();
  static DeviceNotification.secureTrackingControlEnabledNotificationName.getter();
  v36 = objc_allocWithZone(v35);
  *(v1 + v34) = DeviceNotification.init(name:)();
  v37 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_secureTrackingControlOnNotification;
  static DeviceNotification.secureTrackingControlOnNotificationName.getter();
  v38 = objc_allocWithZone(v35);
  *(v1 + v37) = DeviceNotification.init(name:)();
  v39 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__manualControlEnabled;
  LOBYTE(aBlock[0]) = 0;
  v40 = v91;
  DKThreadSafe.init(wrappedValue:)();
  (*(v92 + 32))(v1 + v39, v40, v93);
  *(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__appIDsOptedOutOfSystemTracking) = &_swiftEmptyArrayStorage;
  v41 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__animators;
  *(v1 + v41) = sub_1001F1AB8(&_swiftEmptyArrayStorage);
  *(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__systemAnimator) = 0;
  v42 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyActuationClients;
  *(v1 + v42) = sub_1001F1BBC(&_swiftEmptyArrayStorage);
  v43 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyActuationClientsRules;
  *(v1 + v43) = sub_1001F1CC0(&_swiftEmptyArrayStorage);
  v44 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__outstandingActuationNotificationCount;
  *(v1 + v44) = sub_1001F1CD4(&_swiftEmptyArrayStorage);
  v45 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__outstandingTrajectoryNotificationCount;
  *(v1 + v45) = sub_1001F1CD4(&_swiftEmptyArrayStorage);
  v46 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__actuationFeedbackCache;
  *(v1 + v46) = sub_1001F1DB4(&_swiftEmptyArrayStorage);
  v47 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifySensorClients;
  *(v1 + v47) = sub_1001F1BBC(&_swiftEmptyArrayStorage);
  v48 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifySensorClientsRules;
  *(v1 + v48) = sub_1001F1DC8(&_swiftEmptyArrayStorage);
  v49 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyDebugClients;
  *(v1 + v49) = sub_1001F1BBC(&_swiftEmptyArrayStorage);
  v50 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyPairingClients;
  *(v1 + v50) = sub_1001F1BBC(&_swiftEmptyArrayStorage);
  v51 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyPairingClientsRules;
  *(v1 + v51) = sub_1001F1DDC(&_swiftEmptyArrayStorage);
  v52 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyTrajectoryClients;
  *(v1 + v52) = sub_1001F1BBC(&_swiftEmptyArrayStorage);
  v53 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyEventClients;
  *(v1 + v53) = sub_1001F1BBC(&_swiftEmptyArrayStorage);
  v54 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyBatteryClients;
  *(v1 + v54) = sub_1001F1EF0(&_swiftEmptyArrayStorage);
  v55 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyTrackingSummaryClients;
  *(v1 + v55) = sub_1001F1F04(&_swiftEmptyArrayStorage);
  v56 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyTrackerConfigClients;
  *(v1 + v56) = sub_1001F202C(&_swiftEmptyArrayStorage);
  v57 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__subjectSelectionCompletions;
  *(v1 + v57) = sub_1001F2040(&_swiftEmptyArrayStorage);
  v58 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__rectOfInterestCompletions;
  *(v1 + v58) = sub_1001F2040(&_swiftEmptyArrayStorage);
  v59 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__rateLimitXPCTrackingClients;
  *(v1 + v59) = sub_1001F215C(&_swiftEmptyArrayStorage);
  v60 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__rateLimitConfiguration;
  v61 = sub_1001F2278(&off_100274BA8);
  sub_100095274(&qword_1002AB4C0, &qword_10023F0E8);
  swift_arrayDestroy();
  *(v1 + v60) = v61;
  v62 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connectNotification;
  static DeviceNotification.connectedNotificationName.getter();
  v63 = objc_allocWithZone(v35);
  *(v1 + v62) = DeviceNotification.init(name:)();
  v64 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_trackingEnableNotification;
  static DeviceNotification.configNotificationName.getter();
  v65 = objc_allocWithZone(v35);
  *(v1 + v64) = DeviceNotification.init(name:)();
  v66 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_trackingButtonNotification;
  static DeviceNotification.trackingButtonNotificationName.getter();
  v67 = objc_allocWithZone(v35);
  *(v1 + v66) = DeviceNotification.init(name:)();
  v68 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__clientLock;
  v69 = swift_allocObject();
  *(v69 + 16) = 0;
  *(v1 + v68) = v69;
  v70 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__configLock;
  v71 = swift_allocObject();
  *(v71 + 16) = 0;
  *(v1 + v70) = v71;
  v72 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v73 = swift_allocObject();
  *(v73 + 16) = 0;
  *(v1 + v72) = v73;
  v74 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__cacheLock;
  v75 = swift_allocObject();
  *(v1 + v74) = v75;
  *(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__registeredTransactions) = &_swiftEmptyArrayStorage;
  *(v75 + 16) = 0;
  *(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_tiltToBaseTask) = 0;
  *(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_foregroundAppIDs) = &_swiftEmptyArrayStorage;
  if (qword_1002A66C0 != -1)
  {
    swift_once();
  }

  v76 = static AppLayoutMonitor.shared;
  sub_1000F0574();
  v77 = *(v76 + OBJC_IVAR____TtC14dockaccessoryd16AppLayoutMonitor_delegateQueue);
  v78 = swift_allocObject();
  v78[2] = v76;
  v78[3] = v1;
  v78[4] = &off_10027A7D0;
  v79 = swift_allocObject();
  *(v79 + 16) = sub_1001A3074;
  *(v79 + 24) = v78;
  aBlock[4] = sub_10013A028;
  aBlock[5] = v79;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001DB720;
  aBlock[3] = &unk_100279FB8;
  v80 = _Block_copy(aBlock);
  swift_retain_n();

  dispatch_sync(v77, v80);
  _Block_release(v80);
  LOBYTE(v77) = swift_isEscapingClosureAtFileLocation();

  if ((v77 & 1) == 0)
  {
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_100184424()
{
  if ((*(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_stateHandle + 8) & 1) == 0)
  {
    v1 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_stateHandle);
    os_state_remove_handler();
  }

  v2 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger;
  v3 = type metadata accessor for Logger();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__processesAuthorizedForCamera);

  v5 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_accessories);

  v6 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_previousCameraSessions);

  v7 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_appIdMap);

  v8 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_dockKitApps);

  v9 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_apiUsageMetricsMap);

  v10 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_lastConnectedAppId + 8);

  v11 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_lastTrackingSummaryDebug);

  v12 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_lastTrackingSummary);

  sub_100095C84(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_trackingButtonDisabledLastTimestamp, &qword_1002A7C88, &qword_10023CC10);
  sub_100095C84(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_activeTrackingLastTimestamp, &qword_1002A7C88, &qword_10023CC10);
  v13 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_txn);

  v14 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__txnLock);

  v15 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_motionClients);

  v16 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_continuityCaptureHeadingMap);

  v17 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_trackingWidgetExtensionBundleID + 8);

  v18 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_secureTrackingSessionManager);

  v19 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__manualControlEnabled;
  v20 = sub_100095274(&qword_1002A9318, &qword_10023F0C0);
  (*(*(v20 - 8) + 8))(v0 + v19, v20);
  v21 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__appIDsOptedOutOfSystemTracking);

  v22 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__animators);

  v23 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__systemAnimator);

  v24 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyActuationClients);

  v25 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyActuationClientsRules);

  v26 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__outstandingActuationNotificationCount);

  v27 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__outstandingTrajectoryNotificationCount);

  v28 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__actuationFeedbackCache);

  v29 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifySensorClients);

  v30 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifySensorClientsRules);

  v31 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyDebugClients);

  v32 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyPairingClients);

  v33 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyPairingClientsRules);

  v34 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyTrajectoryClients);

  v35 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyEventClients);

  v36 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyBatteryClients);

  v37 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyTrackingSummaryClients);

  v38 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyTrackerConfigClients);

  v39 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__subjectSelectionCompletions);

  v40 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__rectOfInterestCompletions);

  v41 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__rateLimitXPCTrackingClients);

  v42 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__rateLimitConfiguration);

  v43 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__clientLock);

  v44 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__configLock);

  v45 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  v46 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__cacheLock);

  v47 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__registeredTransactions);

  v48 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_tiltToBaseTask);

  v49 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_foregroundAppIDs);

  return v0;
}

uint64_t sub_1001848EC()
{
  sub_100184424();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_10018496C()
{
  v0 = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1001A33E4(319, &qword_1002AA7A8, &type metadata accessor for Date);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_1001A3394(319, &unk_1002AA7B0, &type metadata for Bool, &type metadata accessor for DKThreadSafe);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_100184BA8()
{
  v110 = type metadata accessor for Logger();
  v109 = *(v110 - 8);
  v0 = *(v109 + 64);
  __chkstk_darwin(v110);
  v2 = &v109 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "===== State Dump =====", v5, 2u);
  }

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v116 = v2;
  if (v8)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v118[0] = v10;
    *v9 = 136315138;
    v11 = qword_1002B1970;
    v12 = *algn_1002B1978;

    v13 = sub_1000952D4(v11, v12, v118);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v6, v7, "dockaccessoryd version: %s", v9, 0xCu);
    sub_100095808(v10);
    v2 = v116;
  }

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v118[0] = v17;
    v18 = "teAlertHandle16@NSError24";
    *v16 = 136315138;
    *(v16 + 4) = sub_1000952D4(0x302E303233, 0xE500000000000000, v118);
    _os_log_impl(&_mh_execute_header, v14, v15, "DockKitCore version: %s", v16, 0xCu);
    sub_100095808(v17);
    v2 = v116;
  }

  else
  {

    v18 = "teAlertHandle16@NSError24";
  }

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Paired accessories:", v21, 2u);
  }

  v22 = v112;
  v111 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v23 = *(v112 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v23 + 4);

  v24 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_accessories;
  result = swift_beginAccess();
  v26 = *(v22 + v24);
  if (v26 >> 62)
  {
    goto LABEL_69;
  }

  v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v27)
  {
    goto LABEL_22;
  }

  while (v27 >= 1)
  {
    v28 = v26 & 0xC000000000000001;

    v29 = v18;
    v30 = 0;
    *&v31 = *(v29 + 2704);
    v113 = v31;
    v114 = (v26 & 0xC000000000000001);
    *&v115 = v26;
    do
    {
      if (v28)
      {
        v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v40 = *(v26 + 8 * v30 + 32);
      }

      v41 = v40;
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v42, v43))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v117[0] = v33;
        *v32 = v113;
        v34 = [v41 description];
        v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v36 = v27;
        v38 = v37;

        v39 = sub_1000952D4(v35, v38, v117);
        v27 = v36;

        *(v32 + 4) = v39;
        v2 = v116;
        _os_log_impl(&_mh_execute_header, v42, v43, "- %s", v32, 0xCu);
        sub_100095808(v33);
        v28 = v114;

        v26 = v115;
      }

      else
      {
      }

      ++v30;
    }

    while (v27 != v30);

    v18 = "teAlertHandle16@NSError24";
    do
    {
LABEL_22:
      v44 = *(v112 + v111);

      os_unfair_lock_unlock(v44 + 4);

      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v117[0] = v48;
        *v47 = *(v18 + 2704);
        sub_1001DF270();
        v51 = sub_1000952D4(v49, v50, v117);

        *(v47 + 4) = v51;
        _os_log_impl(&_mh_execute_header, v45, v46, "%s", v47, 0xCu);
        sub_100095808(v48);
        v2 = v116;
      }

      v52 = *(v112 + v111);

      os_unfair_lock_lock(v52 + 4);

      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&_mh_execute_header, v53, v54, "XPC Connections:", v55, 2u);
      }

      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&_mh_execute_header, v56, v57, "Pairing Clients:", v58, 2u);
      }

      v59 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyPairingClients;
      v26 = v112;
      swift_beginAccess();
      v60 = *(v26 + v59);
      v61 = v60 + 64;
      v62 = 1 << *(v60 + 32);
      v63 = -1;
      if (v62 < 64)
      {
        v63 = ~(-1 << v62);
      }

      v18 = v63 & *(v60 + 64);
      v64 = (v62 + 63) >> 6;
      v65 = *(v26 + v59);

      v66 = 0;
      *&v67 = 138412290;
      v115 = v67;
      while (v18)
      {
LABEL_37:
        v69 = *(*(v60 + 56) + ((v66 << 9) | (8 * __clz(__rbit64(v18)))));
        v70 = Logger.logObject.getter();
        v26 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v70, v26))
        {
          v71 = v60;
          v72 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          *v72 = v115;
          *(v72 + 4) = v69;
          *v73 = v69;
          v114 = v69;
          _os_log_impl(&_mh_execute_header, v70, v26, "- %@", v72, 0xCu);
          sub_100095C84(v73, &unk_1002A6F60, &unk_10023C4E0);
          v2 = v116;

          v60 = v71;

          v69 = v70;
          v70 = v114;
        }

        v18 &= v18 - 1;
      }

      while (1)
      {
        v68 = v66 + 1;
        if (__OFADD__(v66, 1))
        {
          __break(1u);
          goto LABEL_67;
        }

        if (v68 >= v64)
        {
          break;
        }

        v18 = *(v61 + 8 * v68);
        ++v66;
        if (v18)
        {
          v66 = v68;
          goto LABEL_37;
        }
      }

      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        *v76 = 0;
        _os_log_impl(&_mh_execute_header, v74, v75, "Actuation Clients:", v76, 2u);
      }

      v77 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyActuationClients;
      v26 = v112;
      swift_beginAccess();
      v78 = *(v26 + v77);
      v79 = v78 + 64;
      v80 = 1 << *(v78 + 32);
      v81 = -1;
      if (v80 < 64)
      {
        v81 = ~(-1 << v80);
      }

      v18 = v81 & *(v78 + 64);
      v82 = (v80 + 63) >> 6;
      v83 = *(v26 + v77);

      v84 = 0;
      while (v18)
      {
LABEL_50:
        v86 = *(*(v78 + 56) + ((v84 << 9) | (8 * __clz(__rbit64(v18)))));
        v87 = Logger.logObject.getter();
        v26 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v87, v26))
        {
          v88 = v78;
          v89 = swift_slowAlloc();
          v90 = swift_slowAlloc();
          *v89 = v115;
          *(v89 + 4) = v86;
          *v90 = v86;
          v114 = v86;
          _os_log_impl(&_mh_execute_header, v87, v26, "- %@", v89, 0xCu);
          sub_100095C84(v90, &unk_1002A6F60, &unk_10023C4E0);
          v2 = v116;

          v78 = v88;

          v86 = v87;
          v87 = v114;
        }

        v18 &= v18 - 1;
      }

      while (1)
      {
        v85 = v84 + 1;
        if (__OFADD__(v84, 1))
        {
          break;
        }

        if (v85 >= v82)
        {

          v91 = Logger.logObject.getter();
          v92 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v91, v92))
          {
            v93 = swift_slowAlloc();
            *v93 = 0;
            _os_log_impl(&_mh_execute_header, v91, v92, "Sensor Clients:", v93, 2u);
          }

          v94 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifySensorClients;
          v26 = v112;
          swift_beginAccess();
          v95 = *(v26 + v94);
          v96 = v95 + 64;
          v97 = 1 << *(v95 + 32);
          v98 = -1;
          if (v97 < 64)
          {
            v98 = ~(-1 << v97);
          }

          v18 = v98 & *(v95 + 64);
          v99 = (v97 + 63) >> 6;
          v100 = *(v26 + v94);

          v101 = 0;
          while (v18)
          {
LABEL_63:
            v103 = *(*(v95 + 56) + ((v101 << 9) | (8 * __clz(__rbit64(v18)))));
            v104 = Logger.logObject.getter();
            v26 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v104, v26))
            {
              v105 = v95;
              v106 = swift_slowAlloc();
              v107 = swift_slowAlloc();
              *v106 = v115;
              *(v106 + 4) = v103;
              *v107 = v103;
              v114 = v103;
              _os_log_impl(&_mh_execute_header, v104, v26, "- %@", v106, 0xCu);
              sub_100095C84(v107, &unk_1002A6F60, &unk_10023C4E0);
              v2 = v116;

              v95 = v105;

              v103 = v104;
              v104 = v114;
            }

            v18 &= v18 - 1;
          }

          while (1)
          {
            v102 = v101 + 1;
            if (__OFADD__(v101, 1))
            {
              goto LABEL_68;
            }

            if (v102 >= v99)
            {

              v108 = *(v112 + v111);

              os_unfair_lock_unlock(v108 + 4);
              (*(v109 + 8))(v2, v110);
            }

            v18 = *(v96 + 8 * v102);
            ++v101;
            if (v18)
            {
              v101 = v102;
              goto LABEL_63;
            }
          }
        }

        v18 = *(v79 + 8 * v85);
        ++v84;
        if (v18)
        {
          v84 = v85;
          goto LABEL_50;
        }
      }

LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      result = _CocoaArrayWrapper.endIndex.getter();
      v27 = result;
    }

    while (!result);
  }

  __break(1u);
  return result;
}

uint64_t sub_100185918(uint64_t a1)
{
  if (*(a1 + 16) == 3)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_100184BA8();
    }
  }

  return 0;
}

uint64_t sub_100185984(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = v4(a2);

  return v5;
}

uint64_t sub_1001859D4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v4);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_1000952D4(*(a1 + 64), *(a1 + 72), &v20);
    _os_log_impl(&_mh_execute_header, v9, v10, "registering transaction %s", v11, 0xCu);
    sub_100095808(v12);
  }

  (*(v5 + 8))(v8, v4);
  v13 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v14 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v14 + 4);

  v15 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__registeredTransactions;
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v2 + v15) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v15) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v18 = *((*(v2 + v15) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v16 = *(v2 + v13);

  os_unfair_lock_unlock(v16 + 4);
}

uint64_t sub_100185C54()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v8 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v8 + 4);

  v9 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__registeredTransactions;
  swift_beginAccess();
  v10 = *(v1 + v9);
  if (v10 >> 62)
  {
    if (v10 < 0)
    {
      v28 = *(v1 + v9);
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      goto LABEL_12;
    }
  }

  else
  {
    result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
LABEL_12:
      v26 = *(v1 + v9);
      *(v1 + v9) = &_swiftEmptyArrayStorage;

      v27 = *(v1 + v7);

      os_unfair_lock_unlock(v27 + 4);
    }
  }

  v35 = result;
  if (result >= 1)
  {
    v29 = v9;
    v30 = v7;
    v12 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger;
    v37 = (v3 + 16);
    v38 = v10 & 0xC000000000000001;
    v36 = (v3 + 8);

    v13 = 0;
    *&v14 = 136315138;
    v31 = v14;
    v15 = v35;
    v33 = v10;
    v34 = v2;
    v32 = v1;
    do
    {
      if (v38)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v16 = *(v10 + 8 * v13 + 32);
      }

      (*v37)(v6, v1 + v12, v2);

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v39 = v20;
        *v19 = v31;
        v21 = v6;
        v22 = v12;
        v24 = *(v16 + 64);
        v23 = *(v16 + 72);

        v25 = sub_1000952D4(v24, v23, &v39);
        v12 = v22;

        *(v19 + 4) = v25;
        v6 = v21;
        v15 = v35;
        _os_log_impl(&_mh_execute_header, v17, v18, "Stopping txn %s", v19, 0xCu);
        sub_100095808(v20);
        v1 = v32;
        v2 = v34;

        v10 = v33;
      }

      (*v36)(v6, v2);
      ++v13;
      sub_1001059EC();
    }

    while (v15 != v13);

    v9 = v29;
    v7 = v30;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_100185F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v15 = *(v23 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v23);
  v18 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = *(v5 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_motionClientQueue);
  v19 = swift_allocObject();
  v19[2] = v5;
  v19[3] = a1;
  v19[4] = a2;
  v19[5] = a3;
  v19[6] = a4;
  aBlock[4] = sub_1001A2F60;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147FC8;
  aBlock[3] = &unk_100279E50;
  v20 = _Block_copy(aBlock);

  sub_1000C6F30(a3);
  static DispatchQoS.unspecified.getter();
  v24 = &_swiftEmptyArrayStorage;
  sub_1001A2FAC(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags);
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_100095BDC(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v11 + 8))(v14, v10);
  (*(v15 + 8))(v18, v23);
}

id sub_10018628C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v52 = a4;
  v53 = a5;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = __chkstk_darwin(v8);
  v47 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v51 = &v47 - v14;
  __chkstk_darwin(v13);
  v16 = &v47 - v15;
  v17 = v9[2];
  v48 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger;
  v49 = v17;
  v50 = v9 + 2;
  v17(&v47 - v15, a1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v8);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  v20 = os_log_type_enabled(v18, v19);
  v54 = a3;
  v55 = a2;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    aBlock[0] = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_1000952D4(a2, a3, aBlock);
    _os_log_impl(&_mh_execute_header, v18, v19, "Registering motion for client %s", v21, 0xCu);
    sub_100095808(v22);
  }

  v23 = v9[1];
  v23(v16, v8);
  v24 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_motionManager;
  result = *(a1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_motionManager);
  if (!result)
  {
    v49(v51, a1 + v48, v8);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Creating motion manager", v28, 2u);
    }

    v23(v51, v8);
    v29 = [objc_allocWithZone(CMMotionManager) init];
    v30 = *(a1 + v24);
    *(a1 + v24) = v29;

    result = *(a1 + v24);
    if (!result)
    {
      goto LABEL_21;
    }
  }

  if ([result isDeviceMotionActive])
  {
    goto LABEL_16;
  }

  result = *(a1 + v24);
  if (!result)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if ([result isDeviceMotionAvailable])
  {
    v49(v47, a1 + v48, v8);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "starting motion updates", v33, 2u);
    }

    v23(v47, v8);
    result = *(a1 + v24);
    if (result)
    {
      [result setDeviceMotionUpdateInterval:0.0166666667];
      result = *(a1 + v24);
      if (result)
      {
        [result setShowsDeviceMovementDisplay:1];
        v34 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_motionQueue);
        result = [v34 setMaxConcurrentOperationCount:1];
        v35 = *(a1 + v24);
        if (v35)
        {
          aBlock[4] = sub_1001A2F9C;
          aBlock[5] = a1;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1000A5218;
          aBlock[3] = &unk_100279EA0;
          v36 = _Block_copy(aBlock);
          v37 = v35;

          [v37 startDeviceMotionUpdatesUsingReferenceFrame:4 toQueue:v34 withHandler:v36];
          _Block_release(v36);

          goto LABEL_16;
        }

LABEL_24:
        __break(1u);
        return result;
      }

LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_16:
  v38 = v52;
  if (v52)
  {
    v39 = swift_allocObject();
    v40 = v53;
    v41 = v54;
    *(v39 + 16) = v38;
    *(v39 + 24) = v40;
    v42 = sub_1001A2F70;
  }

  else
  {
    v42 = 0;
    v39 = 0;
    v41 = v54;
  }

  v43 = v55;
  v44 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_motionClients;
  swift_beginAccess();

  sub_1000C6F30(v38);
  v45 = *(a1 + v44);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v57 = *(a1 + v44);
  *(a1 + v44) = 0x8000000000000000;
  sub_1001ED1A4(v42, v39, v43, v41, isUniquelyReferenced_nonNull_native);

  *(a1 + v44) = v57;
  return swift_endAccess();
}

uint64_t sub_10018684C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v11 - 8);
  v12 = *(v31 + 64);
  __chkstk_darwin(v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v30 = *(v15 - 8);
  v16 = *(v30 + 64);
  __chkstk_darwin(v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_weakInit();
  if (a2)
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      (*(v7 + 16))(v10, Strong + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v6);
      swift_errorRetain();

      swift_errorRetain();
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        *v22 = 138412290;
        swift_errorRetain();
        v24 = _swift_stdlib_bridgeErrorToNSError();
        *(v22 + 4) = v24;
        *v23 = v24;
        _os_log_impl(&_mh_execute_header, v20, v21, "device motion update failed with error %@", v22, 0xCu);
        sub_100095C84(v23, &unk_1002A6F60, &unk_10023C4E0);
      }

      (*(v7 + 8))(v10, v6);
    }

    return swift_weakDestroy();
  }

  else
  {
    v26 = *(a3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_motionClientQueue);
    v27 = swift_allocObject();
    *(v27 + 16) = a3;
    *(v27 + 24) = a1;
    aBlock[4] = sub_1001A2FA4;
    aBlock[5] = v27;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100147FC8;
    aBlock[3] = &unk_100279EF0;
    v28 = _Block_copy(aBlock);
    v29 = a1;

    static DispatchQoS.unspecified.getter();
    v32 = &_swiftEmptyArrayStorage;
    sub_1001A2FAC(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags);
    sub_100095274(&unk_1002A6B60, qword_10023AE10);
    sub_100095BDC(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v28);
    (*(v31 + 8))(v14, v11);
    (*(v30 + 8))(v18, v15);
    swift_weakDestroy();
  }
}

uint64_t sub_100186CF4(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_motionClients;
  swift_beginAccess();
  v5 = *(a1 + v4);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  while (v8)
  {
LABEL_9:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v14 = *(v5 + 56) + ((v11 << 10) | (16 * v13));
    v15 = *v14;
    if (*v14)
    {
      v16 = a2 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (!v16)
    {
      v17 = *(v14 + 8);
      v19 = a2;
      sub_1000C6F30(v15);
      v18 = a2;
      v15(&v19);

      result = sub_1000BAA84(v15);
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
    }

    v8 = *(v5 + 64 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_100186E38(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v20[1] = *(v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_motionClientQueue);
    v21 = v15;
    v18 = swift_allocObject();
    v18[2] = v3;
    v18[3] = a1;
    v18[4] = a2;
    aBlock[4] = sub_1001A2EE4;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100147FC8;
    aBlock[3] = &unk_100279E00;
    v19 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v22 = _swiftEmptyArrayStorage;
    sub_1001A2FAC(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags);
    sub_100095274(&unk_1002A6B60, qword_10023AE10);
    sub_100095BDC(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v19);
    (*(v8 + 8))(v11, v7);
    (*(v13 + 8))(v17, v21);
  }

  else
  {

    sub_100187174(a1, a2);
  }
}

void sub_100187174(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v65 = a1;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = __chkstk_darwin(v5);
  v71 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v64 = &v61 - v11;
  __chkstk_darwin(v10);
  v13 = &v61 - v12;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = (&v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_motionClientQueue);
  *v18 = v19;
  (*(v15 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v14);
  v20 = v19;
  v21 = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v18, v14);
  if ((v21 & 1) == 0)
  {
LABEL_24:
    __break(1u);
    return;
  }

  v22 = v6[2];
  v67 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger;
  v68 = v22;
  v69 = v6 + 2;
  v22(v13, v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v5);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  v25 = os_log_type_enabled(v23, v24);
  v66 = v3;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = v6;
    v28 = swift_slowAlloc();
    v72[0] = v28;
    *v26 = 136315138;
    v29 = v65;
    *(v26 + 4) = sub_1000952D4(v65, a2, v72);
    _os_log_impl(&_mh_execute_header, v23, v24, "Unregistering motion for client %s", v26, 0xCu);
    sub_100095808(v28);

    v30 = v27;
    v70 = v27[1];
    v70(v13, v5);
  }

  else
  {

    v30 = v6;
    v70 = v6[1];
    v70(v13, v5);
    v29 = v65;
  }

  v31 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_motionClients;
  swift_beginAccess();
  v32 = sub_1001E4DC8(v29, a2);
  swift_endAccess();
  v33 = v66;
  sub_1001A2E40(v32);
  v34 = *(v33 + v31);
  if (*(v34 + 16))
  {
    v35 = v34 + 64;
    v36 = 1 << *(v34 + 32);
    v37 = -1;
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    v38 = v37 & *(v34 + 64);
    v39 = (v36 + 63) >> 6;
    v64 = (v30 + 1);

    v41 = 0;
    *&v42 = 136315138;
    v63 = v42;
    v43 = v71;
    v65 = v40;
    v62 = v5;
    while (v38)
    {
      v45 = v41;
LABEL_16:
      v46 = __clz(__rbit64(v38));
      v38 &= v38 - 1;
      v47 = (*(v40 + 48) + ((v45 << 10) | (16 * v46)));
      v49 = *v47;
      v48 = v47[1];
      v68(v43, v33 + v67, v5);

      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v72[0] = v53;
        *v52 = v63;
        v54 = sub_1000952D4(v49, v48, v72);

        *(v52 + 4) = v54;
        _os_log_impl(&_mh_execute_header, v50, v51, "Client remaining: %s", v52, 0xCu);
        sub_100095808(v53);
        v33 = v66;

        v43 = v71;
        v44 = v71;
        v5 = v62;
      }

      else
      {

        v43 = v71;
        v44 = v71;
      }

      v70(v44, v5);
      v41 = v45;
      v40 = v65;
    }

    while (1)
    {
      v45 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      if (v45 >= v39)
      {

        return;
      }

      v38 = *(v35 + 8 * v45);
      ++v41;
      if (v38)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

  v55 = v64;
  v68(v64, v33 + v67, v5);
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&_mh_execute_header, v56, v57, "Stopping device motion updates", v58, 2u);
    v33 = v66;
  }

  v70(v55, v5);
  v59 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_motionManager;
  [*(v33 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_motionManager) stopDeviceMotionUpdates];
  v60 = *(v33 + v59);
  *(v33 + v59) = 0;
}

id sub_1001877C8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *(a1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_motionManager);
  if (result)
  {
    result = [result deviceMotion];
  }

  *a2 = result;
  return result;
}

void sub_100187818()
{
  v1 = v0;
  v2 = dispatch_semaphore_create(0);
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v8[4] = sub_1001A2E30;
  v8[5] = v3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100147FC8;
  v8[3] = &unk_100279D88;
  v4 = _Block_copy(v8);

  v5 = v2;

  AudioServicesPlaySystemSoundWithCompletion(0x424u, v4);
  _Block_release(v4);
  OS_dispatch_semaphore.wait()();
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = v5;

  v7 = v5;
  sub_100187FFC(0xD000000000000010, 0x8000000100234880, sub_1001A2E38, v6);

  OS_dispatch_semaphore.wait()();
}

Swift::Int sub_1001879BC(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "done playing pong sound", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  return OS_dispatch_semaphore.signal()();
}

Swift::Int sub_100187B28(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v33 - v13;
  if (!a2)
  {
    (*(v8 + 16))(&v33 - v13, a3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v7);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Launched camera app successfully", v29, 2u);
    }

    v30 = *(v8 + 8);
    v31 = v14;
    goto LABEL_8;
  }

  (*(v8 + 16))(v12, a3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v7);
  v15 = a2;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (!os_log_type_enabled(v16, v17))
  {

    v30 = *(v8 + 8);
    v31 = v12;
LABEL_8:
    v30(v31, v7);
    return OS_dispatch_semaphore.signal()();
  }

  v18 = swift_slowAlloc();
  v19 = swift_slowAlloc();
  v35 = a4;
  v36 = v19;
  v20 = v19;
  *v18 = 136315138;
  v21 = [v15 localizedDescription];
  v34 = v7;
  v22 = v21;
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v26 = sub_1000952D4(v23, v25, &v36);

  *(v18 + 4) = v26;
  _os_log_impl(&_mh_execute_header, v16, v17, "Failed to launch Camera app with error: %s", v18, 0xCu);
  sub_100095808(v20);

  (*(v8 + 8))(v12, v34);
  return OS_dispatch_semaphore.signal()();
}

uint64_t sub_100187E14()
{
  v1 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_appIdMap;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    while (1)
    {
      v9 = v8;
LABEL_8:
      v10 = __clz(__rbit64(v5)) | (v9 << 6);
      v17 = *(*(v2 + 48) + 4 * v10);
      v11 = (*(v2 + 56) + 16 * v10);
      v13 = *v11;
      v12 = v11[1];
      v14 = qword_1002A66C0;

      if (v14 != -1)
      {
        v15 = swift_once();
      }

      v16 = *(static AppLayoutMonitor.shared + OBJC_IVAR____TtC14dockaccessoryd16AppLayoutMonitor_delegateQueue);
      __chkstk_darwin(v15);
      OS_dispatch_queue.sync<A>(execute:)();
      if (v18 == 1)
      {
        break;
      }

      v5 &= v5 - 1;

      v8 = v9;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    return v17;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v6)
      {

        return 0;
      }

      v5 = *(v2 + 64 + 8 * v9);
      ++v8;
      if (v5)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_100187FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = SBSCreateOpenApplicationService();
  sub_100095274(&qword_1002A81A0, &qword_10023D038);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10023C170;
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v11;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for Bool;
  *(inited + 72) = 1;
  sub_1001F2ABC(inited);
  swift_setDeallocating();
  sub_100095C84(inited + 32, &qword_1002ACA30, qword_10023D040);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v13 = [objc_opt_self() optionsWithDictionary:{isa, v18, v19}];

  if (v9)
  {
    v14 = v9;
    v15 = String._bridgeToObjectiveC()();
    v16 = swift_allocObject();
    v16[2] = v4;
    v16[3] = a1;
    v16[4] = a2;
    v16[5] = a3;
    v16[6] = a4;
    v22 = sub_1001A2E20;
    v23 = v16;
    v18 = _NSConcreteStackBlock;
    v19 = 1107296256;
    v20 = sub_1000A5218;
    v21 = &unk_100279D38;
    v17 = _Block_copy(&v18);

    [v14 openApplication:v15 withOptions:v13 completion:v17];

    _Block_release(v17);
    v13 = v15;
  }
}

void sub_100188254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void (*a6)(void, void), uint64_t a7)
{
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v29 = a4;
    v30 = a1;
    v31 = a7;
    (*(v15 + 16))(v18, a3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v14);
    swift_errorRetain();

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v28 = a6;
      v32 = v22;
      *v21 = 136315394;
      *(v21 + 4) = sub_1000952D4(v29, a5, &v32);
      *(v21 + 12) = 2080;
      swift_getErrorValue();
      v23 = Error.localizedDescription.getter();
      v25 = sub_1000952D4(v23, v24, &v32);

      *(v21 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v19, v20, "Unable to launch %s: %s", v21, 0x16u);
      swift_arrayDestroy();
      a6 = v28;
    }

    else
    {
    }

    (*(v15 + 8))(v18, v14);
    v26 = _convertErrorToNSError(_:)();
    a1 = v30;
  }

  else
  {
    v26 = 0;
  }

  a6(a1, v26);
}

uint64_t sub_1001884E4()
{
  v1 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v2 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_accessories;
  swift_beginAccess();
  v4 = *(v0 + v3);
  v18 = &_swiftEmptyArrayStorage;
  if (v4 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    v16 = v1;
    v17 = v0;
    v1 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v1 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v6 = *(v4 + 8 * v1 + 32);
      }

      v7 = v6;
      v8 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      sub_100095B94(0, &qword_1002A7270, NSObject_ptr);
      v9 = dispatch thunk of DockCoreAccessory.info.getter();
      v0 = static NSObject.== infix(_:_:)();

      if (v0)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v10 = v18[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v0 = &v18;
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v1;
      if (v8 == i)
      {
        v11 = v18;
        v1 = v16;
        v0 = v17;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

  v11 = &_swiftEmptyArrayStorage;
LABEL_16:

  if ((v11 & 0x8000000000000000) == 0 && (v11 & 0x4000000000000000) == 0)
  {
    if (*(v11 + 16))
    {
      goto LABEL_19;
    }

LABEL_28:

    v14 = 0;
    goto LABEL_29;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_28;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_28;
  }

LABEL_19:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_22;
  }

  if (*(v11 + 16))
  {
    v13 = *(v11 + 32);
LABEL_22:
    v14 = v13;

LABEL_29:
    v15 = *(v0 + v1);

    os_unfair_lock_unlock(v15 + 4);

    return v14;
  }

  __break(1u);
  return result;
}

uint64_t sub_100188738(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v24 = *(v4 - 8);
  v25 = v4;
  v5 = *(v24 + 64);
  __chkstk_darwin(v4);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v11 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v11 + 4);

  v12 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_accessories;
  swift_beginAccess();
  v13 = a1;
  v14 = sub_1001A12F4((v2 + v12));

  v15 = *(v2 + v12);
  if (!(v15 >> 62))
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16 >= v14)
    {
      goto LABEL_3;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v15 < 0)
  {
    v22 = *(v2 + v12);
  }

  v16 = _CocoaArrayWrapper.endIndex.getter();
  if (v16 < v14)
  {
    goto LABEL_14;
  }

LABEL_3:
  sub_1001A167C(v14, v16, &type metadata accessor for DockCoreAccessory);
  swift_endAccess();
  DockCoreInfo.identifier.getter();
  sub_100188B9C(v10);
  (*(v7 + 8))(v10, v6);
  v17 = *(v2 + v12);
  if (!(v17 >> 62))
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_5;
  }

LABEL_15:
  v18 = _CocoaArrayWrapper.endIndex.getter();
LABEL_5:
  v19 = *(v2 + v26);

  os_unfair_lock_unlock(v19 + 4);

  if (!v18)
  {
    if (qword_1002A67A0 != -1)
    {
      result = swift_once();
    }

    if (*(qword_1002B1EB8 + OBJC_IVAR____TtC14dockaccessoryd6BTLink_btScan))
    {
      v21 = *(qword_1002B1EB8 + OBJC_IVAR____TtC14dockaccessoryd6BTLink_btScan);

      sub_1000F2E4C(1);
    }
  }

  return result;
}

uint64_t sub_100188B9C(uint64_t a1)
{
  v35[1] = a1;
  v1 = type metadata accessor for Logger();
  v38 = *(v1 - 8);
  v39 = v1;
  v2 = *(v38 + 64);
  __chkstk_darwin(v1);
  v4 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for URL.DirectoryHint();
  v5 = *(v36 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v36);
  v8 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100095274(&qword_1002A6B70, &unk_10023C9C0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v35 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002A6710 != -1)
  {
    swift_once();
  }

  v18 = qword_1002B1C20;
  sub_100152034(v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100095C84(v12, &qword_1002A6B70, &unk_10023C9C0);
    v19 = v38;
    v20 = v39;
    (*(v38 + 16))(v4, v37 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v39);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Unable to remove paired accessory: Unable to get library path", v23, 2u);
    }

    return (*(v19 + 8))(v4, v20);
  }

  else
  {
    (*(v14 + 32))(v17, v12, v13);
    v40[0] = UUID.uuidString.getter();
    v40[1] = v25;
    v26 = v36;
    (*(v5 + 104))(v8, enum case for URL.DirectoryHint.notDirectory(_:), v36);
    sub_1000E3C10();
    URL.append<A>(component:directoryHint:)();
    (*(v5 + 8))(v8, v26);

    v27 = *(v18 + OBJC_IVAR____TtC14dockaccessoryd10FileSystem_system);
    URL._bridgeToObjectiveC()(v28);
    v30 = v29;
    v40[0] = 0;
    v31 = [v27 removeItemAtURL:v29 error:v40];

    if (v31)
    {
      v32 = *(v14 + 8);
      v33 = v40[0];
      return v32(v17, v13);
    }

    else
    {
      v34 = v40[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      return (*(v14 + 8))(v17, v13);
    }
  }
}

uint64_t sub_100189054(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = v5[8];
  __chkstk_darwin(v4);
  v55 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v56 = *(v8 - 8);
  v57 = v8;
  v9 = *(v56 + 64);
  __chkstk_darwin(v8);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v52 - v18;
  if (a1)
  {
    v20 = a1;
    v21 = sub_1001884E4();
    if (v21)
    {
      v22 = v21;
      v53 = v4;
      v23 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
      v24 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

      os_unfair_lock_lock(v24 + 4);

      v25 = v5;
      v26 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
      *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected) = v22;
      v54 = v22;

      v27 = 1;
      *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_trackingButtonState) = 1;
      v28 = *(v2 + v23);

      os_unfair_lock_unlock(v28 + 4);

      sub_100095B94(0, &qword_1002A6820, OS_dispatch_queue_ptr);
      v29 = static OS_dispatch_queue.main.getter();
      v62 = sub_1001A2DB4;
      v63 = v2;
      aBlock = _NSConcreteStackBlock;
      v59 = 1107296256;
      v60 = sub_100147FC8;
      v61 = &unk_100279CE8;
      v30 = _Block_copy(&aBlock);

      static DispatchQoS.unspecified.getter();
      aBlock = &_swiftEmptyArrayStorage;
      sub_1001A2FAC(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags);
      sub_100095274(&unk_1002A6B60, qword_10023AE10);
      sub_100095BDC(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
      v31 = v55;
      v32 = v53;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v30);

      (v25[1])(v31, v32);
      (*(v56 + 8))(v11, v57);
    }

    else
    {
      (*(v13 + 16))(v19, v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v12);
      v45 = v20;
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        *v48 = 138412290;
        *(v48 + 4) = v45;
        *v49 = a1;
        v50 = v45;
        _os_log_impl(&_mh_execute_header, v46, v47, "Can't select %@, it's unknown", v48, 0xCu);
        sub_100095C84(v49, &unk_1002A6F60, &unk_10023C4E0);
      }

      else
      {
        v50 = v46;
        v46 = v45;
      }

      (*(v13 + 8))(v19, v12);
      return 0;
    }
  }

  else
  {
    v54 = v5;
    v33 = v4;
    (*(v13 + 16))(v17, v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v12);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Set connected to nil", v36, 2u);
    }

    (*(v13 + 8))(v17, v12);
    v37 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
    v38 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

    os_unfair_lock_lock(v38 + 4);

    v39 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
    *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected) = 0;

    *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_trackingButtonState) = 2;
    v40 = *(v2 + v37);

    os_unfair_lock_unlock(v40 + 4);

    sub_100095B94(0, &qword_1002A6820, OS_dispatch_queue_ptr);
    v41 = static OS_dispatch_queue.main.getter();
    v62 = sub_1001A2D90;
    v63 = v2;
    aBlock = _NSConcreteStackBlock;
    v59 = 1107296256;
    v60 = sub_100147FC8;
    v61 = &unk_100279CC0;
    v42 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock = &_swiftEmptyArrayStorage;
    sub_1001A2FAC(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags);
    sub_100095274(&unk_1002A6B60, qword_10023AE10);
    sub_100095BDC(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
    v43 = v55;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v42);

    (*(v54 + 1))(v43, v33);
    (*(v56 + 8))(v11, v57);
    v44 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_secureTrackingSessionManager);
    sub_1000EC468(7);
    return 1;
  }

  return v27;
}

void sub_100189850(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_trackingButtonNotification);
  if (TrackingButtonState.rawValue.getter() < 0)
  {
    __break(1u);
  }

  else
  {
    DeviceNotification.state.setter();

    v3 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connectNotification);
    DeviceNotification.state.setter();
  }
}

void sub_1001898EC(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v43[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v43[-v10];
  if (a1)
  {
    v12 = a1;
    v13 = sub_1001884E4();
    if (v13)
    {
      v14 = v13;
      v15 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
      v16 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

      os_unfair_lock_lock(v16 + 4);

      v17 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_docked;
      v18 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_docked);
      *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_docked) = v14;
      v19 = v14;

      v20 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_idsServer);
      if (!v20)
      {
LABEL_6:
        v24 = *(v2 + v15);

        os_unfair_lock_unlock(v24 + 4);

        return;
      }

      v21 = *(v2 + v17);
      if (v21)
      {
        v22 = v20;
        v23 = v21;
        sub_1001B8BE4(v23, 0);

        goto LABEL_6;
      }

      __break(1u);
    }

    else
    {
      (*(v5 + 16))(v11, v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v4);
      v36 = v12;
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v39 = 138412290;
        *(v39 + 4) = v36;
        *v40 = a1;
        v41 = v36;
        _os_log_impl(&_mh_execute_header, v37, v38, "Can't select %@, it's unknown", v39, 0xCu);
        sub_100095C84(v40, &unk_1002A6F60, &unk_10023C4E0);
      }

      else
      {
        v41 = v37;
        v37 = v36;
      }

      (*(v5 + 8))(v11, v4);
    }
  }

  else
  {
    (*(v5 + 16))(v9, v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v4);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Set docked to nil", v27, 2u);
    }

    (*(v5 + 8))(v9, v4);
    v28 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
    v29 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

    os_unfair_lock_lock(v29 + 4);

    v30 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_docked;
    v31 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_docked);
    if (v31)
    {
      v32 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_idsServer);
      if (v32)
      {
        v33 = v32;
        v34 = v31;
        sub_1001B8BE4(v34, 1);
      }

      v43[31] = 0;
      swift_beginAccess();
      sub_100095274(&qword_1002A9318, &qword_10023F0C0);
      DKThreadSafe.wrappedValue.setter();
      swift_endAccess();
      v35 = *(v2 + v30);
    }

    else
    {
      v35 = 0;
    }

    *(v2 + v30) = 0;

    v42 = *(v2 + v28);

    os_unfair_lock_unlock(v42 + 4);
  }
}

void sub_100189D44()
{
  v1 = v0;
  swift_beginAccess();
  sub_100095274(&qword_1002A9318, &qword_10023F0C0);
  DKThreadSafe.wrappedValue.setter();
  swift_endAccess();
  if (sub_10018B060())
  {
    v2 = 2;
  }

  else
  {
    v3 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
    v4 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

    os_unfair_lock_lock(v4 + 4);

    v5 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
    v6 = *(v1 + v3);
    v7 = v5;

    os_unfair_lock_unlock(v6 + 4);

    if (v5)
    {

      v2 = 1;
    }

    else
    {
      v2 = 0;
    }
  }

  sub_10018A5D0(v2);
}

void sub_100189E44(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v66 = *(v4 - 8);
  v67 = v4;
  v5 = *(v66 + 64);
  __chkstk_darwin(v4);
  v65 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v63 = *(v7 - 8);
  v64 = v7;
  v8 = *(v63 + 64);
  __chkstk_darwin(v7);
  v62 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100095274(&qword_1002A7C88, &qword_10023CC10);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v59 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v58 - v14;
  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v58 - v22;
  v60 = a1;
  v24 = TrackingButtonState.init(rawValue:)();
  if (v25)
  {
    v26 = 2;
  }

  else
  {
    v26 = v24;
  }

  v61 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v27 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v27 + 4);

  v28 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_trackingButtonDisabledLastTimestamp;
  swift_beginAccess();
  sub_1000B5150(v2 + v28, v15, &qword_1002A7C88, &qword_10023CC10);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_100095C84(v15, &qword_1002A7C88, &qword_10023CC10);
    v29 = TrackingButtonState.rawValue.getter();
    v30 = v26;
    if (v29 != TrackingButtonState.rawValue.getter())
    {
      goto LABEL_13;
    }

    v31 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_trackingButtonState);
    v32 = TrackingButtonState.rawValue.getter();
    if (v32 != TrackingButtonState.rawValue.getter())
    {
      goto LABEL_13;
    }

    v33 = v59;
    static Date.now.getter();
    (*(v17 + 56))(v33, 0, 1, v16);
    goto LABEL_11;
  }

  (*(v17 + 32))(v23, v15, v16);
  v34 = TrackingButtonState.rawValue.getter();
  v30 = v26;
  if (v34 == TrackingButtonState.rawValue.getter())
  {
    v35 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_trackingButtonState);
    v36 = TrackingButtonState.rawValue.getter();
    if (v36 == TrackingButtonState.rawValue.getter())
    {
      Date.init()();
      Date.timeIntervalSince(_:)();
      v38 = v37;
      v39 = *(v17 + 8);
      v39(v21, v16);
      v39(v23, v16);
      v30 = v26;
      *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_trackingButtonDisabledDuration) = v38 + *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_trackingButtonDisabledDuration);
      v33 = v59;
      (*(v17 + 56))(v59, 1, 1, v16);
LABEL_11:
      swift_beginAccess();
      sub_1001A2CDC(v33, v2 + v28);
      swift_endAccess();
      goto LABEL_13;
    }
  }

  (*(v17 + 8))(v23, v16);
LABEL_13:
  *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_trackingButtonState) = v30;
  v40 = v61;
  v41 = *(v2 + v61);

  os_unfair_lock_unlock(v41 + 4);

  v59 = v30;
  v42 = TrackingButtonState.rawValue.getter();
  v43 = TrackingButtonState.rawValue.getter();
  v44 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_secureTrackingSessionManager);
  if (v42 == v43)
  {
    v45 = 2;
  }

  else
  {
    v45 = 8;
  }

  sub_1000EC468(v45);
  sub_100095B94(0, &qword_1002A6820, OS_dispatch_queue_ptr);
  v46 = static OS_dispatch_queue.main.getter();
  v47 = swift_allocObject();
  *(v47 + 16) = v2;
  *(v47 + 24) = v60;
  aBlock[4] = sub_1001A2D84;
  aBlock[5] = v47;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147FC8;
  aBlock[3] = &unk_100279C98;
  v48 = _Block_copy(aBlock);

  v49 = v62;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1001A2FAC(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags);
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_100095BDC(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
  v50 = v65;
  v51 = v67;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v48);

  (*(v66 + 8))(v50, v51);
  (*(v63 + 8))(v49, v64);
  v52 = *(v2 + v40);

  os_unfair_lock_lock(v52 + 4);

  v53 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
  v54 = *(v2 + v40);
  v55 = v53;

  os_unfair_lock_unlock(v54 + 4);

  if (v53)
  {
    v56 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_idsServer);
    if (v56)
    {
      v57 = v56;
      sub_1001B8C0C(v55, v59);
    }
  }
}

void sub_10018A570(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_trackingButtonNotification);
  DeviceNotification.state.setter();
}

void sub_10018A5D0(uint64_t a1)
{
  v3 = sub_100095274(&qword_1002A7C88, &qword_10023CC10);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v35 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v35 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v35 - v15;
  v36 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v17 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v17 + 4);

  v18 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_activeTrackingLastTimestamp;
  swift_beginAccess();
  sub_1000B5150(v1 + v18, v8, &qword_1002A7C88, &qword_10023CC10);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100095C84(v8, &qword_1002A7C88, &qword_10023CC10);
    v19 = TrackerStateEvent.rawValue.getter();
    if (v19 != TrackerStateEvent.rawValue.getter())
    {
      goto LABEL_12;
    }

    if ((*(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_lastTrackingState + 8) & 1) == 0)
    {
      v20 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_lastTrackingState);
      v21 = TrackerStateEvent.rawValue.getter();
      if (v21 == TrackerStateEvent.rawValue.getter())
      {
        goto LABEL_12;
      }
    }

    v22 = v35;
    static Date.now.getter();
    (*(v10 + 56))(v22, 0, 1, v9);
    goto LABEL_10;
  }

  (*(v10 + 32))(v16, v8, v9);
  v23 = TrackerStateEvent.rawValue.getter();
  if (v23 != TrackerStateEvent.rawValue.getter() && (*(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_lastTrackingState + 8) & 1) == 0)
  {
    v24 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_lastTrackingState);
    v25 = TrackerStateEvent.rawValue.getter();
    if (v25 == TrackerStateEvent.rawValue.getter())
    {
      Date.init()();
      Date.timeIntervalSince(_:)();
      v27 = v26;
      v28 = a1;
      v29 = *(v10 + 8);
      v29(v14, v9);
      v29(v16, v9);
      a1 = v28;
      *(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_activeTrackingDuration) = v27 + *(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_activeTrackingDuration);
      v22 = v35;
      (*(v10 + 56))(v35, 1, 1, v9);
LABEL_10:
      swift_beginAccess();
      sub_1001A2CDC(v22, v1 + v18);
      swift_endAccess();
      goto LABEL_12;
    }
  }

  (*(v10 + 8))(v16, v9);
LABEL_12:
  v30 = v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_lastTrackingState;
  *v30 = a1;
  *(v30 + 8) = 0;
  v31 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
  v32 = *(v1 + v36);
  v33 = v31;

  os_unfair_lock_unlock(v32 + 4);

  if (v31)
  {
    v34 = v33;
    sub_10018A9DC(a1, v31);
  }
}

void sub_10018A9DC(uint64_t a1, void *a2)
{
  v5 = sub_100095274(&unk_1002A73C0, &unk_10023BE80);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v49 - v7;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v21 = &v49 - v20;
  if (a2)
  {
    v54 = v19;
    v55 = v13;
    v51 = v10;
    v56 = v9;
    v52 = v8;
    v53 = a1;
    v50 = v2;
    v22 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
    v23 = a2;
    v24 = v22;
    v57 = v23;
    v60 = dispatch thunk of DockCoreAccessory.info.getter();
    v58 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
    v25 = *&v24[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
    OS_dispatch_semaphore.wait()();

    v26 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
    swift_beginAccess();
    v59 = v24;
    v27 = *&v24[v26];
    v28 = *(v27 + 16);

    if (v28)
    {
      v29 = 0;
      v30 = v27 + 32;
      v31 = (v54 + 8);
      while (v29 < *(v27 + 16))
      {
        sub_1000A097C(v30, v61);
        v32 = *(*sub_1000A09E0(v61, v61[3]) + 24);
        DockCoreInfo.identifier.getter();

        DockCoreInfo.identifier.getter();
        LOBYTE(v32) = static UUID.== infix(_:_:)();
        v33 = *v31;
        (*v31)(v18, v14);
        v33(v21, v14);
        if (v32)
        {

          v34 = v59;
          v36 = *&v59[v58];
          OS_dispatch_semaphore.signal()();

          sub_1000A097C(v61, &v62);
          sub_100095808(v61);
          goto LABEL_9;
        }

        ++v29;
        sub_100095808(v61);
        v30 += 40;
        if (v28 == v29)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_7:

      v34 = v59;
      v35 = *&v59[v58];
      OS_dispatch_semaphore.signal()();

      v64 = 0;
      v62 = 0u;
      v63 = 0u;
LABEL_9:

      v38 = v55;
      v37 = v56;
      if (*(&v63 + 1))
      {
        sub_100095274(&unk_1002A7A90, &unk_10023C960);
        type metadata accessor for DaemonAccessory();
        if (swift_dynamicCast())
        {
          v39 = v61[0];
          v40 = v51;
          (*(v51 + 16))(v38, v50 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v37);
          v41 = Logger.logObject.getter();
          v42 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v41, v42))
          {
            v43 = swift_slowAlloc();
            v44 = swift_slowAlloc();
            *&v62 = v44;
            *v43 = 136315394;
            *(v43 + 4) = sub_1000952D4(0xD00000000000002FLL, 0x8000000100234820, &v62);
            *(v43 + 12) = 2048;
            v45 = v53;
            *(v43 + 14) = TrackerStateEvent.rawValue.getter();
            _os_log_impl(&_mh_execute_header, v41, v42, "%s Updated tracking sensor state=%ld", v43, 0x16u);
            sub_100095808(v44);

            (*(v40 + 8))(v38, v37);
          }

          else
          {

            (*(v40 + 8))(v38, v37);
            v45 = v53;
          }

          v46 = type metadata accessor for TaskPriority();
          v47 = v52;
          (*(*(v46 - 8) + 56))(v52, 1, 1, v46);
          v48 = swift_allocObject();
          v48[2] = 0;
          v48[3] = 0;
          v48[4] = v39;
          v48[5] = v45;
          sub_1001B6710(0, 0, v47, &unk_10023F0B8, v48);
        }

        else
        {
        }
      }

      else
      {

        sub_100095C84(&v62, &unk_1002A6F40, &unk_10023BE90);
      }
    }
  }
}

uint64_t sub_10018AFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v7 = swift_task_alloc();
  *(v5 + 24) = v7;
  *v7 = v5;
  v7[1] = sub_100112B7C;

  return sub_1001A5658(a5);
}

uint64_t sub_10018B060()
{
  v1 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v2 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
  v4 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_lastTrackingSummary);
  v5 = *(v0 + v1);

  v6 = v3;

  os_unfair_lock_unlock(v5 + 4);

  if (v3)
  {

    if (v4)
    {
      v7 = dispatch thunk of TrackingSummaryInternal.subjects.getter();
      if (v7 >> 62)
      {
        v8 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v8 > 0)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_10018B174(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v62 - v9;
  v70 = v11;
  v12 = *(v11 + 16);
  v73 = v11 + 16;
  v74 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger;
  v72 = v12;
  v12(&v62 - v9, v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v4);
  v13 = a1;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  v16 = os_log_type_enabled(v14, v15);
  v67 = v1;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v77[0] = swift_slowAlloc();
    *v17 = 136315650;
    *(v17 + 4) = sub_1000952D4(0xD00000000000001DLL, 0x8000000100234800, v77);
    *(v17 + 12) = 2080;
    v18 = CameraSessionInformation.appId.getter();
    v20 = sub_1000952D4(v18, v19, v77);

    *(v17 + 14) = v20;
    *(v17 + 22) = 2048;
    CameraSessionInformation.cameraType.getter();
    v21 = TrackerCamera.rawValue.getter();

    *(v17 + 24) = v21;
    _os_log_impl(&_mh_execute_header, v14, v15, "%s session=%s cam=%ld", v17, 0x20u);
    swift_arrayDestroy();

    v2 = v67;
  }

  else
  {
  }

  v22 = v70;
  v71 = *(v70 + 8);
  v71(v10, v4);
  v68 = v4;
  v63 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v23 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v23 + 4);

  v24 = CameraSessionInformation.appId.getter();
  v26 = v25;
  v27 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_previousCameraSessions;
  swift_beginAccess();
  v28 = *(v2 + v27);
  if (*(v28 + 16))
  {
    v29 = *(v2 + v27);

    v30 = sub_10016D4D0(v24, v26);
    v32 = v31;

    if (v32)
    {
      v33 = *(*(v28 + 56) + 8 * v30);

      goto LABEL_9;
    }
  }

  else
  {
    v34 = *(v2 + v27);
  }

  v33 = &_swiftEmptyArrayStorage;
LABEL_9:

  v35 = CameraSessionInformation.appId.getter();
  v37 = v36;
  sub_100095274(&qword_1002A7390, &qword_10023BEF0);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_10023BDA0;
  *(v38 + 32) = v13;
  swift_beginAccess();
  v13;
  v39 = *(v2 + v27);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v75 = *(v2 + v27);
  *(v2 + v27) = 0x8000000000000000;
  sub_1001EB988(v38, v35, v37, isUniquelyReferenced_nonNull_native);

  *(v2 + v27) = v75;
  swift_endAccess();
  v41 = CameraSessionInformation.appId.getter();
  v42 = (v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_lastConnectedAppId);
  v43 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_lastConnectedAppId + 8);
  *v42 = v41;
  v42[1] = v44;

  v47 = v33;
  if (v33 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v48 = result;
  }

  else
  {
    v48 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v49 = v68;
  if (!v48)
  {
LABEL_21:
    v61 = *(v2 + v63);

    os_unfair_lock_unlock(v61 + 4);

    sub_100198B58();
    return v47;
  }

  if (v48 >= 1)
  {
    v50 = 0;
    v69 = v22 + 8;
    v70 = v47 & 0xC000000000000001;
    v65 = "com.apple.cameracaptured";
    *&v46 = 136315650;
    v64 = v46;
    v66 = v8;
    do
    {
      if (v70)
      {
        v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v51 = *(v47 + 8 * v50 + 32);
      }

      v52 = v51;
      v72(v8, v2 + v74, v49);
      v53 = v52;
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v76[0] = swift_slowAlloc();
        *v56 = v64;
        *(v56 + 4) = sub_1000952D4(0xD00000000000001DLL, v65 | 0x8000000000000000, v76);
        *(v56 + 12) = 2080;
        v57 = CameraSessionInformation.appId.getter();
        v59 = sub_1000952D4(v57, v58, v76);

        *(v56 + 14) = v59;
        *(v56 + 22) = 2048;
        CameraSessionInformation.cameraType.getter();
        v60 = TrackerCamera.rawValue.getter();

        *(v56 + 24) = v60;
        _os_log_impl(&_mh_execute_header, v54, v55, "%s previous session=%s cam=%ld", v56, 0x20u);
        swift_arrayDestroy();
        v8 = v66;
        v49 = v68;

        v2 = v67;
      }

      else
      {
      }

      v71(v8, v49);
      ++v50;
    }

    while (v48 != v50);
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

uint64_t sub_10018B7F4(uint64_t result, uint64_t a2, void *a3)
{
  if (!a2)
  {
    return result;
  }

  v4 = v3;
  v6 = result;
  v7 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v8 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v8 + 4);

  v10 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_dockKitApps;
  swift_beginAccess();
  v11 = a3;
  sub_1001DAC34(a3, v6, a2);
  swift_endAccess();
  v12 = *(v4 + v7);

  os_unfair_lock_unlock(v12 + 4);

  v13 = *(v4 + v7);

  os_unfair_lock_lock(v13 + 4);

  v14 = *(v4 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_foregroundAppIDs);
  v15 = *(v14 + 16);
  if (!v15)
  {
LABEL_10:
    v22 = *(v4 + v10);

    v23 = cameracaptureIdentifier.getter();
    if (*(v22 + 16))
    {
      sub_10016D4D0(v23, v24);
      v26 = v25;

      if (v26)
      {
LABEL_12:
        v27 = 9;
LABEL_15:
        v28 = *(v4 + v7);

        os_unfair_lock_unlock(v28 + 4);

        v29 = *(v4 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_secureTrackingSessionManager);
        return sub_1000EC468(v27);
      }
    }

    else
    {
    }

    v27 = 3;
    goto LABEL_15;
  }

  v16 = *(v4 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_foregroundAppIDs);

  v17 = 0;
  v18 = (v14 + 40);
  while (v17 < *(v14 + 16))
  {
    if (*(*(v4 + v10) + 16))
    {
      v20 = *(v18 - 1);
      v19 = *v18;

      sub_10016D4D0(v20, v19);
      LOBYTE(v20) = v21;

      if (v20)
      {

        goto LABEL_12;
      }
    }

    ++v17;
    v18 += 2;
    if (v15 == v17)
    {

      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10018BA14(uint64_t result, uint64_t a2, void *a3)
{
  if (!a2)
  {
    return result;
  }

  v4 = v3;
  v7 = result;
  v8 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v9 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v9 + 4);

  v10 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_dockKitApps;
  swift_beginAccess();
  v11 = *(v4 + v10);
  if (*(v11 + 16))
  {
    v12 = *(v4 + v10);

    v13 = sub_10016D4D0(v7, a2);
    if (v14)
    {
      v15 = *(*(v11 + 56) + 8 * v13);

      if (a3 && (sub_100095B94(0, &qword_1002AB450, NSXPCConnection_ptr), v15 = v15, v16 = a3, v17 = static NSObject.== infix(_:_:)(), v16, v15, (v17 & 1) != 0))
      {
        swift_beginAccess();
        v18 = sub_1001E53DC(v7, a2);
        swift_endAccess();
      }

      else
      {
      }
    }

    else
    {
    }
  }

  v19 = *(v4 + v8);

  os_unfair_lock_unlock(v19 + 4);

  v20 = *(v4 + v8);

  os_unfair_lock_lock(v20 + 4);

  v21 = *(v4 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_foregroundAppIDs);
  v22 = *(v21 + 16);
  if (!v22)
  {
LABEL_17:
    v29 = *(v4 + v10);

    v30 = cameracaptureIdentifier.getter();
    if (*(v29 + 16))
    {
      sub_10016D4D0(v30, v31);
      v33 = v32;

      if (v33)
      {
LABEL_19:
        v34 = 9;
LABEL_22:
        v35 = *(v4 + v8);

        os_unfair_lock_unlock(v35 + 4);

        v36 = *(v4 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_secureTrackingSessionManager);
        return sub_1000EC468(v34);
      }
    }

    else
    {
    }

    v34 = 3;
    goto LABEL_22;
  }

  v23 = *(v4 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_foregroundAppIDs);

  v24 = 0;
  v25 = (v21 + 40);
  while (v24 < *(v21 + 16))
  {
    if (*(*(v4 + v10) + 16))
    {
      v27 = *(v25 - 1);
      v26 = *v25;

      sub_10016D4D0(v27, v26);
      LOBYTE(v27) = v28;

      if (v27)
      {

        goto LABEL_19;
      }
    }

    ++v24;
    v25 += 2;
    if (v22 == v24)
    {

      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10018BCE0(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  result = __chkstk_darwin(v5);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 && (a1 != 0xD000000000000018 || 0x80000001002347E0 != a2))
  {
    result = _stringCompareWithSmolCheck(_:_:expecting:)();
    if ((result & 1) == 0)
    {
      v11 = v2;
      (*(v6 + 16))(v10, v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v5);

      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v26 = v15;
        *v14 = 136315138;
        *(v14 + 4) = sub_1000952D4(a1, a2, &v26);
        _os_log_impl(&_mh_execute_header, v12, v13, "start API usage metric report for app: %s", v14, 0xCu);
        sub_100095808(v15);
      }

      (*(v6 + 8))(v10, v5);
      v16 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_apiUsageMetricsMap;
      v17 = v11;
      swift_beginAccess();
      if (*(*(v11 + v16) + 16) && (v18 = *(v11 + v16), , sub_10016D4D0(a1, a2), v17 = v11, v20 = v19, , (v20 & 1) != 0))
      {
      }

      else
      {
        v21 = sub_1001F3774(_swiftEmptyArrayStorage);
        swift_beginAccess();
        v22 = *(v17 + v16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = *(v17 + v16);
        *(v17 + v16) = 0x8000000000000000;
        sub_1001ED190(v21, a1, a2, isUniquelyReferenced_nonNull_native);

        *(v17 + v16) = v25;
        return swift_endAccess();
      }
    }
  }

  return result;
}

uint64_t sub_10018BFBC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DKAPIUsageMetric();
  v69 = *(v6 - 8);
  v7 = *(v69 + 64);
  __chkstk_darwin(v6);
  v71 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100095274(&qword_1002AB4A0, &qword_10023F098);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v70 = &v59 - v14;
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  result = __chkstk_darwin(v15);
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 && (a1 != 0xD000000000000018 || 0x80000001002347E0 != a2))
  {
    result = _stringCompareWithSmolCheck(_:_:expecting:)();
    if ((result & 1) == 0)
    {
      v21 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_apiUsageMetricsMap;
      result = swift_beginAccess();
      v22 = *(v2 + v21);
      if (*(v22 + 16))
      {
        v23 = *(v3 + v21);

        v24 = sub_10016D4D0(a1, a2);
        if ((v25 & 1) == 0)
        {
        }

        v59 = v21;
        v67 = *(*(v22 + 56) + 8 * v24);

        (*(v16 + 16))(v20, v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v15);

        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.debug.getter();

        v28 = os_log_type_enabled(v26, v27);
        v61 = v3;
        v62 = a2;
        v60 = a1;
        if (v28)
        {
          v29 = swift_slowAlloc();
          LODWORD(v68) = v27;
          v30 = v29;
          v31 = swift_slowAlloc();
          v72 = v31;
          *v30 = 136315138;
          *(v30 + 4) = sub_1000952D4(a1, a2, &v72);
          _os_log_impl(&_mh_execute_header, v26, v68, "stop API usage metric report for app: %s", v30, 0xCu);
          sub_100095808(v31);
        }

        result = (*(v16 + 8))(v20, v15);
        v32 = 0;
        v34 = v67 + 64;
        v33 = *(v67 + 64);
        v35 = 1 << *(v67 + 32);
        v36 = -1;
        if (v35 < 64)
        {
          v36 = ~(-1 << v35);
        }

        v37 = v36 & v33;
        v38 = (v35 + 63) >> 6;
        v64 = v69 + 16;
        v65 = v13;
        v39 = (v69 + 32);
        v68 = (v69 + 8);
        v66 = v6;
        v63 = (v69 + 32);
        if ((v36 & v33) != 0)
        {
          while (1)
          {
            v40 = v32;
LABEL_20:
            v43 = __clz(__rbit64(v37));
            v37 &= v37 - 1;
            v44 = v43 | (v40 << 6);
            v45 = v66;
            v46 = *(*(v67 + 48) + v44);
            v47 = v69;
            v48 = v71;
            (*(v69 + 16))(v71, *(v67 + 56) + *(v69 + 72) * v44, v66);
            v49 = sub_100095274(&qword_1002AB4A8, &unk_10023F0A0);
            v50 = *(v49 + 48);
            v51 = v65;
            *v65 = v46;
            v52 = *(v47 + 32);
            v6 = v45;
            v13 = v51;
            v53 = v48;
            v39 = v63;
            v52(&v51[v50], v53, v6);
            (*(*(v49 - 8) + 56))(v13, 0, 1, v49);
            v42 = v40;
LABEL_21:
            v54 = v70;
            sub_1001A2B7C(v13, v70);
            v55 = sub_100095274(&qword_1002AB4A8, &unk_10023F0A0);
            if ((*(*(v55 - 8) + 48))(v54, 1, v55) == 1)
            {
              break;
            }

            v56 = v54 + *(v55 + 48);
            v57 = v71;
            (*v39)(v71, v56, v6);
            DKAPIUsageMetric.send()();
            result = (*v68)(v57, v6);
            v32 = v42;
            if (!v37)
            {
              goto LABEL_13;
            }
          }

          swift_beginAccess();
          sub_1001E5484(v60, v62);
          swift_endAccess();
        }

LABEL_13:
        if (v38 <= v32 + 1)
        {
          v41 = v32 + 1;
        }

        else
        {
          v41 = v38;
        }

        v42 = v41 - 1;
        while (1)
        {
          v40 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            break;
          }

          if (v40 >= v38)
          {
            v58 = sub_100095274(&qword_1002AB4A8, &unk_10023F0A0);
            (*(*(v58 - 8) + 56))(v13, 1, 1, v58);
            v37 = 0;
            goto LABEL_21;
          }

          v37 = *(v34 + 8 * v40);
          ++v32;
          if (v37)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_10018C604(uint64_t a1, unint64_t a2, int a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v97 = a4;
  v105 = a3;
  v6 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v102 = &v92 - v8;
  v9 = type metadata accessor for DKAPIUsageMetric();
  v104 = *(v9 - 8);
  v10 = *(v104 + 64);
  __chkstk_darwin(v9);
  v99 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100095274(&unk_1002AC8D0, &qword_10023F088);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v98 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v100 = &v92 - v16;
  v17 = sub_100095274(&qword_1002AB498, &qword_10023F090);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v92 - v19;
  v21 = type metadata accessor for DKAPIUsageType();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v101 = &v92 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v103 = &v92 - v26;
  v27 = type metadata accessor for Logger();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  result = __chkstk_darwin(v27);
  v32 = &v92 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = a1;
  if (a1 != 0xD000000000000018 || 0x80000001002347E0 != a2)
  {
    result = _stringCompareWithSmolCheck(_:_:expecting:)();
    if ((result & 1) == 0)
    {
      v95 = v9;
      (*(v28 + 16))(v32, v106 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v27);

      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.debug.getter();

      v35 = os_log_type_enabled(v33, v34);
      v96 = a2;
      if (v35)
      {
        v36 = swift_slowAlloc();
        v93 = v22;
        v37 = v36;
        v38 = swift_slowAlloc();
        v94 = v21;
        v39 = v38;
        v110[0] = v38;
        *v37 = 16777730;
        *(v37 + 4) = v105;
        *(v37 + 5) = 2080;
        *(v37 + 7) = sub_1000952D4(v107, a2, v110);
        _os_log_impl(&_mh_execute_header, v33, v34, "new API usage of type: %hhu by app: %s", v37, 0xFu);
        sub_100095808(v39);
        v21 = v94;

        v22 = v93;
      }

      (*(v28 + 8))(v32, v27);
      v40 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_apiUsageMetricsMap;
      v41 = v106;
      result = swift_beginAccess();
      v42 = *(v41 + v40);
      v43 = v95;
      v44 = v96;
      if (*(v42 + 16))
      {

        v45 = sub_10016D4D0(v107, v44);
        if (v46)
        {
          v47 = *(*(v42 + 56) + 8 * v45);

          DKAPIUsageType.init(rawValue:)();
          v48 = v22;
          v49 = *(v22 + 48);
          v50 = v21;
          if (v49(v20, 1, v21) == 1)
          {

            return sub_100095C84(v20, &qword_1002AB498, &qword_10023F090);
          }

          else
          {
            v51 = v103;
            (*(v48 + 32))(v103, v20, v21);
            if (*(v47 + 16) && (v52 = sub_10016D898(v105), (v53 & 1) != 0))
            {
              v54 = v104;
              v55 = v100;
              (*(v104 + 16))(v100, *(v47 + 56) + *(v104 + 72) * v52, v43);

              (*(v54 + 56))(v55, 0, 1, v43);
              sub_100095C84(v55, &unk_1002AC8D0, &qword_10023F088);
              v56 = sub_100183468();
              v57 = sub_10018D1F4(v109, v107, v96);
              if (*v58)
              {
                v59 = sub_10018D280(v108, v105);
                if (!(*(v54 + 48))(v60, 1, v43))
                {
                  DKAPIUsageMetric.increment()();
                }

                (v59)(v108, 0);
                (v57)(v109, 0);
                (v56)(v110, 0);
              }

              else
              {
                (v57)(v109, 0);
                (v56)(v110, 0);
              }

              v87 = sub_100183468();
              v88 = sub_10018D1F4(v109, v107, v96);
              if (*v89)
              {
                v90 = sub_10018D280(v108, v105);
                if (!(*(v54 + 48))(v91, 1, v43))
                {
                  DKAPIUsageMetric.set(error:)();
                }

                (v90)(v108, 0);
                (v88)(v109, 0);
                (v87)(v110, 0);
              }

              else
              {
                (v88)(v109, 0);
                (v87)(v110, 0);
              }

              return (*(v48 + 8))(v51, v50);
            }

            else
            {

              v61 = v21;
              v62 = v100;
              v97 = *(v104 + 56);
              v97(v100, 1, 1, v43);
              sub_100095C84(v62, &unk_1002AC8D0, &qword_10023F088);
              v93 = v48;
              v63 = *(v48 + 16);
              v94 = v61;
              v63(v101, v51, v61);
              v64 = type metadata accessor for Errors();
              (*(*(v64 - 8) + 56))(v102, 1, 1, v64);
              v65 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected;
              v66 = *(v106 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
              if (v66 && (v67 = v66, v68 = dispatch thunk of DockCoreAccessory.firmwareVersion.getter(), v70 = v69, v67, v70))
              {
                v100 = v68;
              }

              else
              {

                v100 = 0x6E776F6E6B6E55;
              }

              v71 = v99;
              v72 = *(v106 + v65);
              if (!v72 || (v73 = v72, dispatch thunk of DockCoreAccessory.model.getter(), v75 = v74, v73, !v75))
              {
              }

              v76 = *(v106 + v65);
              if (v76)
              {
                v77 = v76;
                v78 = dispatch thunk of DockCoreAccessory.info.getter();

                DockCoreInfo.name.getter();
              }

              v79 = v96;

              v80 = v107;
              DKAPIUsageMetric.init(appID:type:callCount:error:firmwareVersion:hardwareModel:hardwareMake:)();
              v81 = sub_100183468();
              v82 = sub_10018D1F4(v109, v80, v79);
              if (*v83)
              {
                v84 = v104;
                v85 = v98;
                v86 = v95;
                (*(v104 + 16))(v98, v71, v95);
                v97(v85, 0, 1, v86);
                sub_1001DA66C(v85, v105);
                (v82)(v109, 0);
                (v81)(v110, 0);
              }

              else
              {
                (v82)(v109, 0);
                (v81)(v110, 0);
                v86 = v95;
                v84 = v104;
              }

              (*(v84 + 8))(v71, v86);
              return (*(v93 + 8))(v103, v94);
            }
          }
        }

        else
        {
        }
      }
    }
  }

  return result;
}

uint64_t (*sub_10018D16C(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_10019FB84(v6, a2, a3);
  return sub_1001A34C0;
}

uint64_t (*sub_10018D1F4(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_10019FCD4(v6, a2, a3);
  return sub_10018D27C;
}

uint64_t (*sub_10018D280(uint64_t **a1, unsigned __int8 a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_10019FC30(v4, a2);
  return sub_1001A34C0;
}

void sub_10018D2F8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_10018D344(int a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v5 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v5 + 4);

  v6 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_appIdMap;
  swift_beginAccess();
  v7 = *(v2 + v6);
  if (*(v7 + 16))
  {
    v8 = sub_10016D548(a1);
    if (v9)
    {
      v10 = (*(v7 + 56) + 16 * v8);
      v12 = *v10;
      v11 = v10[1];

      sub_10018DAC4(v12, v11);
      swift_beginAccess();
      sub_1001E4C84(a1);
      swift_endAccess();

      v13 = (v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_lastConnectedAppId);
      v14 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_lastConnectedAppId + 8);
      if (v14)
      {
        if (v12 == *v13 && v14 == v11)
        {
        }

        else
        {
          v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v16 & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        v17 = v13[1];
        *v13 = 0;
        v13[1] = 0;
      }
    }
  }

LABEL_13:
  v18 = *(v2 + v4);

  os_unfair_lock_unlock(v18 + 4);
}

uint64_t sub_10018D4B4(uint64_t a1)
{
  v3 = type metadata accessor for CameraOrientationInternal();
  v56 = *(v3 - 8);
  v4 = *(v56 + 64);
  v5 = __chkstk_darwin(v3);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v47 - v8;
  v10 = type metadata accessor for UUID();
  v55 = *(v10 - 8);
  v11 = *(v55 + 64);
  v12 = __chkstk_darwin(v10);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v47 - v15;
  v17 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v18 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v18 + 4);

  v19 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_lastTrackingSummary);
  *(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_lastTrackingSummary) = a1;
  v57 = a1;

  v20 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
  if (!v20)
  {
    goto LABEL_20;
  }

  v47 = v9;
  v50 = v7;
  v48 = v3;
  v51 = v17;
  v52 = v1;
  v21 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
  v22 = v20;
  v23 = v21;
  v49 = v22;
  v58 = dispatch thunk of DockCoreAccessory.info.getter();
  v53 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
  v24 = *&v23[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
  OS_dispatch_semaphore.wait()();

  v25 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
  swift_beginAccess();
  v54 = v23;
  v26 = *&v23[v25];
  v27 = *(v26 + 16);

  if (!v27)
  {
LABEL_7:

    v34 = v54;
    v35 = *&v54[v53];
    OS_dispatch_semaphore.signal()();

    v62 = 0;
    v60 = 0u;
    v61 = 0u;
LABEL_9:

    v17 = v51;
    v37 = v56;
    v38 = v50;
    if (*(&v61 + 1))
    {
      sub_100095274(&unk_1002A7A90, &unk_10023C960);
      type metadata accessor for DaemonAccessory();
      if (swift_dynamicCast())
      {
        v58 = v59[0];
        v39 = v47;
        dispatch thunk of TrackingSummaryInternal.orientation.getter();
        v40 = *(v37 + 104);
        v41 = v48;
        v40(v38, enum case for CameraOrientationInternal.landscapeLeft(_:), v48);
        sub_1001A2FAC(&qword_1002AB490, &type metadata accessor for CameraOrientationInternal);
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        v42 = *(v37 + 8);
        v42(v38, v41);
        v42(v39, v41);
        if (v60 == v59[0])
        {

          v1 = v52;
        }

        else
        {
          dispatch thunk of TrackingSummaryInternal.orientation.getter();
          v40(v38, enum case for CameraOrientationInternal.landscapeRight(_:), v41);
          dispatch thunk of RawRepresentable.rawValue.getter();
          dispatch thunk of RawRepresentable.rawValue.getter();

          v42(v38, v41);
          v42(v39, v41);
          v1 = v52;
          if (v60 != v59[0])
          {
            v43 = OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_trackingHeader;
            v44 = v58;
            v45 = *(v58 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_trackingHeader) & 0xFE;
            goto LABEL_19;
          }
        }

        v43 = OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_trackingHeader;
        v44 = v58;
        v45 = *(v58 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_trackingHeader) | 1;
LABEL_19:
        v44[v43] = v45;

        goto LABEL_20;
      }
    }

    else
    {

      sub_100095C84(&v60, &unk_1002A6F40, &unk_10023BE90);
    }

    v1 = v52;
LABEL_20:
    v46 = *(v1 + v17);

    os_unfair_lock_unlock(v46 + 4);
  }

  v29 = 0;
  v30 = v26 + 32;
  v31 = (v55 + 8);
  while (v29 < *(v26 + 16))
  {
    sub_1000A097C(v30, v59);
    v32 = *(*sub_1000A09E0(v59, v59[3]) + 24);
    DockCoreInfo.identifier.getter();

    DockCoreInfo.identifier.getter();
    LOBYTE(v32) = static UUID.== infix(_:_:)();
    v33 = *v31;
    (*v31)(v14, v10);
    v33(v16, v10);
    if (v32)
    {

      v34 = v54;
      v36 = *&v54[v53];
      OS_dispatch_semaphore.signal()();

      sub_1000A097C(v59, &v60);
      sub_100095808(v59);
      goto LABEL_9;
    }

    ++v29;
    result = sub_100095808(v59);
    v30 += 40;
    if (v27 == v29)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void sub_10018DAC4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100095274(&unk_1002A73C0, &unk_10023BE80);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v84 = &v79[-v8];
  v88 = type metadata accessor for UUID();
  v9 = *(v88 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v88);
  v87 = &v79[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v14 = &v79[-v13];
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v79[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v16 + 16))(v19, &v3[OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger], v15);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  v22 = os_log_type_enabled(v20, v21);
  v85 = v9;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v86 = v3;
    *&v90 = v24;
    *v23 = 136315394;
    *(v23 + 4) = sub_1000952D4(0xD00000000000001CLL, 0x80000001002347C0, &v90);
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_1000952D4(a1, a2, &v90);
    _os_log_impl(&_mh_execute_header, v20, v21, "%s finish camera session app=%s", v23, 0x16u);
    swift_arrayDestroy();
    v3 = v86;
  }

  (*(v16 + 8))(v19, v15);
  v25 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_previousCameraSessions;
  swift_beginAccess();
  v26 = *&v3[v25];
  if (!*(v26 + 16))
  {
    goto LABEL_16;
  }

  v27 = *&v3[v25];

  v28 = sub_10016D4D0(a1, a2);
  if ((v29 & 1) == 0)
  {
    goto LABEL_15;
  }

  v30 = *(*(v26 + 56) + 8 * v28);

  if (!(v30 >> 62))
  {
    v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v31)
    {
      goto LABEL_7;
    }

LABEL_15:

    goto LABEL_16;
  }

  v31 = _CocoaArrayWrapper.endIndex.getter();
  if (!v31)
  {
    goto LABEL_15;
  }

LABEL_7:
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    goto LABEL_49;
  }

  if ((v30 & 0xC000000000000001) != 0)
  {
    goto LABEL_51;
  }

  if ((v33 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_54:
    __break(1u);
  }

  else if (v33 < *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v34 = v3;
    v35 = a1;
    v36 = a2;
    for (i = *(v30 + 8 * v33 + 32); ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
    {
      v38 = i;

      v39 = [objc_allocWithZone(NSDate) init];
      [v39 timeIntervalSince1970];

      CameraSessionInformation.endTime.setter();
      a2 = v36;
      a1 = v35;
      v3 = v34;
LABEL_16:
      v40 = *&v3[v25];
      if (!*(v40 + 16))
      {
        goto LABEL_29;
      }

      v41 = *&v3[v25];

      v42 = sub_10016D4D0(a1, a2);
      if ((v43 & 1) == 0)
      {
        goto LABEL_28;
      }

      v44 = *(*(v40 + 56) + 8 * v42);

      if (v44 >> 62)
      {
        v45 = _CocoaArrayWrapper.endIndex.getter();
        if (!v45)
        {
LABEL_28:

LABEL_29:
          v50 = 0;
          goto LABEL_30;
        }
      }

      else
      {
        v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v45)
        {
          goto LABEL_28;
        }
      }

      v32 = __OFSUB__(v45, 1);
      v46 = v45 - 1;
      if (v32)
      {
        goto LABEL_50;
      }

      if ((v44 & 0xC000000000000001) != 0)
      {
        v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v46 & 0x8000000000000000) != 0)
        {
          goto LABEL_54;
        }

        if (v46 >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_56;
        }

        v47 = *(v44 + 8 * v46 + 32);
      }

      v48 = v47;

      CameraSessionInformation.cameraType.getter();

      v49 = TrackerCamera.rawValue.getter();
      v50 = v49 == TrackerCamera.rawValue.getter();
LABEL_30:
      v51 = *&v3[OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_trackingButtonState];
      v52 = TrackingButtonState.rawValue.getter();
      if (v52 != TrackingButtonState.rawValue.getter())
      {
        return;
      }

      v53 = *&v3[OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected];
      if (!v53)
      {
        return;
      }

      v80 = v50;
      v86 = v3;
      v54 = *&v3[OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager];
      v55 = v53;
      v56 = v54;
      v81 = v55;
      v57 = dispatch thunk of DockCoreAccessory.info.getter();
      v82 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
      v58 = *&v56[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
      OS_dispatch_semaphore.wait()();

      a2 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
      swift_beginAccess();
      v83 = v56;
      v25 = *&v56[a2];
      v59 = *(v25 + 16);

      if (!v59)
      {
LABEL_37:

        v66 = v83;
        v67 = *&v83[v82];
        OS_dispatch_semaphore.signal()();

        v92 = 0;
        v90 = 0u;
        v91 = 0u;
LABEL_39:

        v69 = v81;
        if (*(&v91 + 1))
        {
          sub_100095274(&unk_1002A7A90, &unk_10023C960);
          type metadata accessor for DaemonAccessory();
          if (swift_dynamicCast())
          {
            v70 = v89[0];
            type metadata accessor for Actuator();
            static Actuator.Pitch.getter();
            v71 = dispatch thunk of DockCoreAccessory.getActuator(name:)();

            if (v71)
            {
              v72 = type metadata accessor for TaskPriority();
              v73 = v84;
              (*(*(v72 - 8) + 56))(v84, 1, 1, v72);
              v74 = swift_allocObject();
              *(v74 + 16) = 0;
              *(v74 + 24) = 0;
              v75 = v86;
              *(v74 + 32) = v86;
              *(v74 + 40) = v80;
              *(v74 + 48) = v71;
              *(v74 + 56) = v70;

              v76 = v71;

              v77 = sub_1001B6410(0, 0, v73, &unk_10023F078, v74);

              v78 = *&v75[OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_tiltToBaseTask];
              *&v75[OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_tiltToBaseTask] = v77;
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

          sub_100095C84(&v90, &unk_1002A6F40, &unk_10023BE90);
        }

        return;
      }

      v60 = 0;
      v61 = v25 + 32;
      v3 = (v85 + 8);
      while (v60 < *(v25 + 16))
      {
        sub_1000A097C(v61, v89);
        v62 = *(*sub_1000A09E0(v89, v89[3]) + 24);
        DockCoreInfo.identifier.getter();

        v63 = v87;
        DockCoreInfo.identifier.getter();
        a2 = static UUID.== infix(_:_:)();
        v64 = *v3;
        v65 = v63;
        a1 = v88;
        (*v3)(v65, v88);
        v64(v14, a1);
        if (a2)
        {

          v66 = v83;
          v68 = *&v83[v82];
          OS_dispatch_semaphore.signal()();

          sub_1000A097C(v89, &v90);
          sub_100095808(v89);
          goto LABEL_39;
        }

        ++v60;
        sub_100095808(v89);
        v61 += 40;
        if (v59 == v60)
        {
          goto LABEL_37;
        }
      }

      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      v34 = v3;
      v35 = a1;
      v36 = a2;
    }
  }

  __break(1u);
LABEL_56:
  __break(1u);
}