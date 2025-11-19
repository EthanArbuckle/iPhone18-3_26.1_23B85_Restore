uint64_t sub_10022585C(id *a1)
{
  v1 = *a1;
  if ([*a1 endPointType] != 4)
  {
    return 0;
  }

  v2 = [v1 revocationAttestation];
  if (v2)
  {
    v3 = v2;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    sub_10006A178(v4, v6);
    return 0;
  }

  return 1;
}

uint64_t sub_1002258E4()
{
  v0 = type metadata accessor for LyonBLE();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_100225924();
  qword_10051B588 = result;
  return result;
}

uint64_t sub_100225924()
{
  v1 = v0;
  v2 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &aBlock[-1] - v5;
  *(v1 + 16) = 0;
  String.init(cString:)();
  Logger.init(subsystem:category:)();
  v7 = OBJC_IVAR____TtC10seserviced7LyonBLE_disableAOPZoneDetection;
  LOBYTE(aBlock[0]) = 0;
  v17 = 2;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  UserDefaultBacked.wrappedValue.getter();
  v8 = *(v3 + 8);
  v8(v6, v2);
  *(v1 + v7) = aBlock[0];
  v9 = OBJC_IVAR____TtC10seserviced7LyonBLE_disablePeripheralTags;
  LOBYTE(aBlock[0]) = 0;
  v17 = 2;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  UserDefaultBacked.wrappedValue.getter();
  v8(v6, v2);
  *(v1 + v9) = aBlock[0];
  v10 = OBJC_IVAR____TtC10seserviced7LyonBLE_disableScanFiltering;
  LOBYTE(aBlock[0]) = 0;
  v17 = 2;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  UserDefaultBacked.wrappedValue.getter();
  v8(v6, v2);
  *(v1 + v10) = aBlock[0];
  *(v1 + OBJC_IVAR____TtC10seserviced7LyonBLE_supportedFeatures) = 3;
  *(v1 + OBJC_IVAR____TtC10seserviced7LyonBLE_minDiscoveryScanRSSI) = -120;
  *(v1 + OBJC_IVAR____TtC10seserviced7LyonBLE_rssiThresholdCloserPlaceholder) = -80;
  *(v1 + OBJC_IVAR____TtC10seserviced7LyonBLE_rssiThresholdFurtherPlaceholder) = -85;
  *(v1 + OBJC_IVAR____TtC10seserviced7LyonBLE_scanDutyCycle) = 6;
  v11 = OBJC_IVAR____TtC10seserviced7LyonBLE_minRSSI;
  if (qword_100501BF8 != -1)
  {
    swift_once();
  }

  *(v1 + v11) = byte_10051B6B0;
  *(v1 + OBJC_IVAR____TtC10seserviced7LyonBLE_readerGroupIdentifierMask) = xmmword_1004098E0;
  *(v1 + OBJC_IVAR____TtC10seserviced7LyonBLE_scanningExpressReaderGroupIdentifiers) = 0;
  v12 = MGGetProductType();
  if (v12 == 2722529672 || v12 == 1371389549)
  {
    *(v1 + OBJC_IVAR____TtC10seserviced7LyonBLE_disableScanFiltering) = 1;
  }

  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  aBlock[4] = sub_10022D9C0;
  aBlock[5] = v1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100193978;
  aBlock[3] = &unk_1004CC5E8;
  v13 = _Block_copy(aBlock);

  os_state_add_handler();
  _Block_release(v13);
  return v1;
}

_DWORD *sub_100225D48()
{
  v1 = *(v0 + 16);
  v16 = &type metadata for Bool;
  LOBYTE(v15) = v1;
  sub_100075D50(&v15, v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v14, 0x6E696E6E75527369, 0xE900000000000067, isUniquelyReferenced_nonNull_native);
  v3 = *(v0 + 17);
  v16 = &type metadata for Bool;
  LOBYTE(v15) = v3;
  sub_100075D50(&v15, v14);
  v4 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v14, 0x696E6E6163537369, 0xEA0000000000676ELL, v4);
  v5 = *(v0 + OBJC_IVAR____TtC10seserviced7LyonBLE_disableAOPZoneDetection);
  v16 = &type metadata for Bool;
  LOBYTE(v15) = v5;
  sub_100075D50(&v15, v14);
  v6 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v14, 0xD000000000000017, 0x8000000100468330, v6);
  v7 = *(v0 + OBJC_IVAR____TtC10seserviced7LyonBLE_disablePeripheralTags);
  v16 = &type metadata for Bool;
  LOBYTE(v15) = v7;
  sub_100075D50(&v15, v14);
  v8 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v14, 0xD000000000000015, 0x8000000100468350, v8);
  v9 = *(v0 + OBJC_IVAR____TtC10seserviced7LyonBLE_disableScanFiltering);
  v16 = &type metadata for Bool;
  LOBYTE(v15) = v9;
  sub_100075D50(&v15, v14);
  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v14, 0xD000000000000014, 0x8000000100468370, v10);
  sub_1001950D4(_swiftEmptyDictionarySingleton);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v12 = sub_100015DA0("lyonble.state", isa);

  return v12;
}

void sub_100225F98(uint64_t a1, unsigned __int8 a2, char a3)
{
  v4 = v3;
  if (*(v3 + 16) == 1)
  {
    if (a1 && *(a1 + 16))
    {
      if (a3)
      {
        v5 = 0;
      }

      else
      {
        v5 = 6;
      }

      v6 = OBJC_IVAR____TtC10seserviced7LyonBLE_minRSSI;
      if (*(v3 + OBJC_IVAR____TtC10seserviced7LyonBLE_minRSSI) == a2)
      {
        v7 = a1;
      }

      else
      {
        v7 = a1;

        v12 = Logger.logObject.getter();
        v13 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 16777728;
          *(v14 + 4) = *(v4 + v6);

          *(v14 + 5) = 256;
          *(v14 + 7) = a2;
          _os_log_impl(&_mh_execute_header, v12, v13, "LyonBLE minRSSI changing from %hhd to %hhd from next scan restart", v14, 8u);
        }

        else
        {
        }

        *(v4 + v6) = a2;
      }

      v15 = OBJC_IVAR____TtC10seserviced7LyonBLE_scanDutyCycle;
      if (v5 == *(v4 + OBJC_IVAR____TtC10seserviced7LyonBLE_scanDutyCycle) && (v16 = *(v4 + OBJC_IVAR____TtC10seserviced7LyonBLE_scanningExpressReaderGroupIdentifiers)) != 0 && (, , v17 = sub_100223F84(v7, v16), , , (v17 & 1) != 0))
      {
      }

      else
      {

        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          *v20 = 134218240;
          *(v20 + 4) = *(v4 + v15);

          *(v20 + 12) = 2048;
          *(v20 + 14) = v5;
          _os_log_impl(&_mh_execute_header, v18, v19, "LyonBLE scan duty cycle changing from %ld to %ld", v20, 0x16u);
        }

        else
        {
        }

        *(v4 + v15) = v5;
        v21 = *(v4 + OBJC_IVAR____TtC10seserviced7LyonBLE_scanningExpressReaderGroupIdentifiers);
        *(v4 + OBJC_IVAR____TtC10seserviced7LyonBLE_scanningExpressReaderGroupIdentifiers) = v7;

        if (*(v4 + 17) == 1)
        {
          if (qword_100501960 != -1)
          {
            swift_once();
          }

          sub_1000E8C60(843466310, 0xE400000000000000);
          *(v4 + 17) = 0;
        }

        sub_1002263E4();
      }
    }

    else
    {
      v10 = *(v3 + OBJC_IVAR____TtC10seserviced7LyonBLE_scanningExpressReaderGroupIdentifiers);
      *(v3 + OBJC_IVAR____TtC10seserviced7LyonBLE_scanningExpressReaderGroupIdentifiers) = 0;

      if (*(v3 + 17) == 1)
      {
        if (qword_100501960 != -1)
        {
          swift_once();
        }

        sub_1000E8C60(843466310, 0xE400000000000000);
        *(v3 + 17) = 0;
      }
    }
  }

  else
  {
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v8, "LyonBLE is not running, updateBLEConfigStatus called", v9, 2u);
    }
  }
}

void sub_1002263E4()
{
  v1 = v0;
  if (*(v0 + 17))
  {
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      v4 = "Scanning already active";
LABEL_12:
      _os_log_impl(&_mh_execute_header, oslog, v2, v4, v3, 2u);

      goto LABEL_13;
    }

    goto LABEL_13;
  }

  v5 = *(v0 + OBJC_IVAR____TtC10seserviced7LyonBLE_scanningExpressReaderGroupIdentifiers);
  if (!v5 || !*(v5 + 16))
  {
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      v4 = "Request to start scanning with no reader group identifiers";
      goto LABEL_12;
    }

LABEL_13:

    return;
  }

  sub_100068FC4(&unk_100503EA0, &unk_1004101C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100409A40;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v7;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v8;
  v9 = OBJC_IVAR____TtC10seserviced7LyonBLE_scanDutyCycle;
  v10 = *(v0 + OBJC_IVAR____TtC10seserviced7LyonBLE_scanDutyCycle);
  *(inited + 120) = &type metadata for Int;
  *(inited + 96) = v10;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v11;
  *(inited + 168) = &type metadata for UInt32;
  *(inited + 144) = 655360;

  v12 = sub_10008FFDC(inited);
  swift_setDeallocating();
  sub_100068FC4(&qword_100507D30, &unk_100409C90);
  swift_arrayDestroy();
  osloga = v12;
  if (*(v0 + OBJC_IVAR____TtC10seserviced7LyonBLE_disableScanFiltering))
  {
LABEL_9:

    v59 = &_swiftEmptySetSingleton;
LABEL_30:
    sub_100068FC4(&unk_100504720, &qword_100414C40);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_100409A40;
    *(v16 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v16 + 40) = v36;
    *(v16 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v16 + 56) = v37;
    *(v16 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v16 + 72) = v38;

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.info.getter();
    p_name = &OBJC_PROTOCOL___BSServiceConnectionClient.name;
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 134218240;
      *(v41 + 4) = *(v1 + v9);
      *(v41 + 12) = 256;
      *(v41 + 14) = *(v1 + OBJC_IVAR____TtC10seserviced7LyonBLE_minRSSI);

      _os_log_impl(&_mh_execute_header, v39, v40, "LyonBLE starting scanning with %ld, minRSSI %hhd", v41, 0xFu);
    }

    else
    {
    }

    if (qword_100501960 == -1)
    {
      goto LABEL_34;
    }

    goto LABEL_43;
  }

  v13 = *(v5 + 16);
  if (qword_100501960 == -1)
  {
    if (v13 > 8)
    {
      goto LABEL_9;
    }
  }

  else
  {
    swift_once();
    if (v13 > 8)
    {
      goto LABEL_9;
    }
  }

  v14 = 1 << *(v5 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v5 + 56);
  p_name = (v14 + 63) >> 6;

  v18 = 0;
  v58 = _swiftEmptyArrayStorage;
  while (1)
  {
    v19 = v18;
    if (!v16)
    {
      break;
    }

LABEL_24:
    v20 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v21 = (*(v5 + 48) + ((v18 << 10) | (16 * v20)));
    v22 = *v21;
    v23 = v21[1];
    sub_100069E2C(*v21, v23);
    v24 = sub_100226C50(v22, v23);
    v55 = v25;
    v56 = v26;
    v57 = v27;
    v59 = v24;
    sub_10006A178(v22, v23);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v58 = sub_10012EB50(0, *(v58 + 2) + 1, 1, v58);
    }

    v28 = v59;
    v30 = *(v58 + 2);
    v29 = *(v58 + 3);
    v31 = v56;
    v32 = v57;
    v33 = v55;
    if (v30 >= v29 >> 1)
    {
      v35 = sub_10012EB50((v29 > 1), v30 + 1, 1, v58);
      v33 = v55;
      v31 = v56;
      v32 = v57;
      v58 = v35;
      v28 = v59;
    }

    *(v58 + 2) = v30 + 1;
    v34 = &v58[32 * v30];
    *(v34 + 4) = v28;
    *(v34 + 5) = v32;
    *(v34 + 6) = v33;
    *(v34 + 7) = v31;
  }

  while (1)
  {
    v18 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v18 >= p_name)
    {

      v59 = sub_1000E0110(v58);

      goto LABEL_30;
    }

    v16 = *(v5 + 56 + 8 * v18);
    ++v19;
    if (v16)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_43:
  swift_once();
LABEL_34:
  v42 = *(v1 + *(p_name + 1416));
  sub_100068FC4(&qword_100503F10, &qword_10040A008);
  v43 = type metadata accessor for UUID();
  v44 = *(v43 - 8);
  v45 = *(v44 + 72);
  v46 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_100409900;
  v48 = v47 + v46;
  if (qword_100501B88 != -1)
  {
    swift_once();
  }

  v49 = sub_1000958E4(v43, qword_10051B5C8);
  v50 = *(v44 + 16);
  v50(v48, v49, v43);
  if (qword_100501B90 != -1)
  {
    swift_once();
  }

  v51 = sub_1000958E4(v43, qword_10051B5E0);
  v50(v48 + v45, v51, v43);
  v52 = *(v1 + OBJC_IVAR____TtC10seserviced7LyonBLE_disableAOPZoneDetection);
  if (*(v1 + OBJC_IVAR____TtC10seserviced7LyonBLE_disablePeripheralTags))
  {
    v53 = 0;
  }

  else
  {
    v53 = &off_1004C3770;
  }

  type metadata accessor for DSKBLE.BLEScanRequest();
  v54 = swift_allocObject();
  *(v54 + 16) = 843466310;
  *(v54 + 24) = 0xE400000000000000;
  *(v54 + 32) = v42;
  *(v54 + 33) = 1;
  *(v54 + 56) = v59;
  *(v54 + 64) = osloga;
  *(v54 + 40) = v16;
  *(v54 + 48) = v47;
  *(v54 + 72) = 0;
  *(v54 + 80) = 0;
  *(v54 + 88) = 1;
  *(v54 + 89) = (v52 & 1) == 0;
  *(v54 + 96) = v53;
  *(v54 + 104) = sub_10022D8B8;
  *(v54 + 112) = v1;
  *(v54 + 120) = sub_10022D8D0;
  *(v54 + 128) = v1;
  *(v54 + 136) = sub_10022D8E8;
  *(v54 + 144) = v1;
  *(v54 + 152) = sub_10022D8EC;
  *(v54 + 160) = v1;
  *(v54 + 168) = sub_10022D8F0;
  *(v54 + 176) = v1;
  *(v54 + 184) = sub_10022D8F4;
  *(v54 + 192) = v1;
  *(v54 + 200) = sub_10022D8FC;
  *(v54 + 208) = v1;
  swift_retain_n();
  sub_1000E7EB0(v54);

  *(v1 + 17) = 1;
}

uint64_t sub_100226C50(uint64_t a1, unint64_t a2)
{
  v3 = a2;
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_15;
    }

    v7 = *(a1 + 16);
    v6 = *(a1 + 24);
    v8 = __OFSUB__(v6, v7);
    v9 = v6 - v7;
    if (!v8)
    {
      if (v9 == 8)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  if (v5)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 == 8)
      {
        goto LABEL_8;
      }

LABEL_15:
      sub_100069E2C(a1, a2);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();
      sub_10006A178(a1, v3);
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        __b = v36;
        *v35 = 136315138;
        sub_100288788(a1, v3);
        sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
        sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
        v37 = BidirectionalCollection<>.joined(separator:)();
        v39 = v38;

        v3 = sub_1002FFA0C(v37, v39, &__b);

        *(v35 + 4) = v3;
        _os_log_impl(&_mh_execute_header, v33, v34, "Invalid reader group identifier %s", v35, 0xCu);
        sub_1000752F4(v36);
      }

      sub_1000E1E2C();
      swift_allocError();
      *v40 = 2;
      swift_willThrow();
      return v3;
    }

    goto LABEL_20;
  }

  if (BYTE6(a2) != 8)
  {
    goto LABEL_15;
  }

LABEL_8:
  v10 = type metadata accessor for __DataStorage();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  __b = 0x1000000000;
  v42 = __DataStorage.init(length:)();
  sub_10022D4F0(&__b, 0);
  v45 = __b;
  v46 = v42 | 0x4000000000000000;
  v43 = &type metadata for Data;
  v44 = &protocol witness table for Data;
  __b = a1;
  v42 = v3;
  v13 = sub_1000752B0(&__b, &type metadata for Data);
  v14 = *v13;
  v15 = v13[1];
  sub_100069E2C(a1, v3);
  sub_10022D598(v14, v15);
  sub_1000752F4(&__b);
  Data._Representation.subscript.setter();
  v16 = (v2 + OBJC_IVAR____TtC10seserviced7LyonBLE_readerGroupIdentifierMask);
  swift_beginAccess();
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
LABEL_12:
    v3 = *v16;
    sub_100069E2C(v3, v17);
    return v3;
  }

  v18 = *(v10 + 48);
  v19 = *(v10 + 52);
  swift_allocObject();
  v20 = __DataStorage.init(length:)();
  __b = 0x1000000000;
  v42 = v20;
  sub_10022D4F0(&__b, 0);
  v21 = v42 | 0x4000000000000000;
  v22 = *v16;
  v23 = v16[1];
  *v16 = __b;
  v16[1] = v21;
  sub_10006A2D0(v22, v23);
  __b = sub_10008FCB4(8uLL);
  LODWORD(v42) = v24;
  BYTE6(v42) = v25;
  WORD2(v42) = v26;
  memset(&__b, 255, v25);
  v27 = __b;
  v28 = BYTE6(v42);
  v29 = WORD2(v42);
  v30 = v42;
  result = swift_beginAccess();
  if (v16[1] >> 60 == 15)
  {
    __break(1u);
    goto LABEL_22;
  }

  v43 = &type metadata for Data;
  v44 = &protocol witness table for Data;
  __b = v27;
  v42 = (v30 | ((v29 | (v28 << 16)) << 32)) & 0xFFFFFFFFFFFFFFLL;
  v32 = sub_1000752B0(&__b, &type metadata for Data);
  sub_10022D598(*v32, v32[1]);
  sub_1000752F4(&__b);
  swift_endAccess();
  result = swift_beginAccess();
  if (v16[1] >> 60 == 15)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  Data._Representation.subscript.setter();
  result = swift_endAccess();
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    goto LABEL_12;
  }

LABEL_23:
  __break(1u);
  return result;
}

void sub_100227148(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v6 = v5;
  v7 = v4;
  v342 = a4;
  v10 = type metadata accessor for UUID();
  isa = v10[-1].isa;
  v346 = v10;
  v11 = *(isa + 8);
  v12 = __chkstk_darwin(v10);
  v343 = &v313 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v344 = &v313 - v14;
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  v348 = v15;
  v349 = v16;
  v17 = *(v16 + 8);
  __chkstk_darwin(v15);
  v347 = (&v313 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for DispatchPredicate();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = (&v313 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v24 = qword_10051B7F0;
  *v23 = qword_10051B7F0;
  (*(v20 + 104))(v23, enum case for DispatchPredicate.onQueue(_:), v19);
  v25 = v24;
  LOBYTE(v24) = _dispatchPreconditionTest(_:)();
  v27 = *(v20 + 8);
  v26 = v20 + 8;
  v27(v23, v19);
  if ((v24 & 1) == 0)
  {
    __break(1u);
    goto LABEL_64;
  }

  v26 = OBJC_IVAR____TtC10seserviced7LyonBLE_logger;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "Lyon received onDiscovery", v31, 2u);
  }

  if (*(v7 + 16) != 1)
  {
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "LyonBLE is not running", v49, 2u);
    }

    return;
  }

  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10008B178(v32, v33, a3, &v353);

  if (!v354)
  {
    sub_1001B5024(&v353);
LABEL_27:
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v50, v51))
    {
LABEL_30:

      sub_1000E1E2C();
      swift_allocError();
      *v54 = 2;
      swift_willThrow();
      return;
    }

    v52 = swift_slowAlloc();
    *v52 = 0;
    v53 = "Lyon received connection not connectable";
LABEL_29:
    _os_log_impl(&_mh_execute_header, v50, v51, v53, v52, 2u);

    goto LABEL_30;
  }

  if ((swift_dynamicCast() & 1) == 0 || v351 != 1)
  {
    goto LABEL_27;
  }

  if (qword_1005019E8 != -1)
  {
    swift_once();
  }

  v34 = sub_1000CAA04();
  if (qword_100501A58 != -1)
  {
    v114 = v34;
    swift_once();
    v34 = v114;
  }

  *&v341 = v34;
  v340 = v26;
  v339 = "Update Aliro Versions";
  v35 = sub_10013044C(0xD000000000000012, 0x8000000100461630);
  if (v36 >> 60 == 15)
  {
    __break(1u);
    goto LABEL_214;
  }

  v37 = v35;
  v38 = v36;
  v39 = sub_1001C1BA4(v35, v36);
  sub_10006A2D0(v37, v38);
  v40 = *(v39 + 24);

  v41 = v341;
  if ((v341 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_17;
    }

LABEL_32:

    goto LABEL_33;
  }

  if (!*(v341 + 16))
  {
    goto LABEL_32;
  }

LABEL_17:
  v42 = *(v40 + 16);

  if (!v42)
  {
LABEL_33:

    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v50, v51))
    {
      goto LABEL_30;
    }

    v52 = swift_slowAlloc();
    *v52 = 0;
    v53 = "No valid endpoints found";
    goto LABEL_29;
  }

  v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10008B178(v43, v44, a3, &v353);

  if (!v354)
  {

    sub_1001B5024(&v353);
LABEL_47:
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v50, v51))
    {
      goto LABEL_30;
    }

    v52 = swift_slowAlloc();
    *v52 = 0;
    v53 = "Failed to retrieve valid AdvA";
    goto LABEL_29;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_47;
  }

  v337 = v41 & 0xC000000000000001;
  v23 = v352;
  v338 = v351;
  v45 = v352 >> 62;
  if ((v352 >> 62) <= 1)
  {
    if (!v45)
    {
      v46 = BYTE6(v352);
      goto LABEL_43;
    }

    goto LABEL_41;
  }

  if (v45 != 2)
  {
LABEL_46:

    sub_10006A178(v338, v23);
    goto LABEL_47;
  }

  v56 = v338[2];
  v55 = v338[3];
  v57 = __OFSUB__(v55, v56);
  v46 = v55 - v56;
  if (v57)
  {
    __break(1u);
LABEL_41:
    LODWORD(v46) = HIDWORD(v338) - v338;
    if (__OFSUB__(HIDWORD(v338), v338))
    {
      __break(1u);
    }

    v46 = v46;
  }

LABEL_43:
  if (v46 != 6)
  {
    goto LABEL_46;
  }

  v58 = v338;
  sub_100069E2C(v338, v23);
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.debug.getter();
  sub_10006A178(v58, v23);
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v333 = v61;
    v335 = swift_slowAlloc();
    *&v353 = v335;
    *v61 = 136380675;
    v62 = sub_100288788(v338, v23);
    v334 = v59;
    v351 = v62;
    LODWORD(v332) = v60;
    v336 = v23;
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
    v63 = BidirectionalCollection<>.joined(separator:)();
    v65 = v64;

    v66 = sub_1002FFA0C(v63, v65, &v353);
    v23 = v336;

    v67 = v333;
    *(v333 + 4) = v66;
    v68 = v334;
    _os_log_impl(&_mh_execute_header, v334, v332, "Received AdvA: %{private}s", v67, 0xCu);
    sub_1000752F4(v335);
  }

  else
  {
  }

  v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10008B178(v69, v70, a3, &v353);

  if (!v354)
  {

    sub_1001B5024(&v353);
LABEL_60:
    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      *v80 = 0;
      _os_log_impl(&_mh_execute_header, v78, v79, "Failed to retrieve valid service data", v80, 2u);
    }

    sub_1000E1E2C();
    swift_allocError();
    *v81 = 2;
    swift_willThrow();
    sub_10006A178(v338, v23);
    return;
  }

  sub_100068FC4(&qword_100504068, &qword_10040B378);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_59:

    goto LABEL_60;
  }

  v71 = v351;
  v72 = String._bridgeToObjectiveC()();
  v73 = [objc_opt_self() UUIDWithString:v72];

  if (!v71[2] || (v74 = sub_10008CE24(v73), (v75 & 1) == 0))
  {

    goto LABEL_59;
  }

  v76 = (v71[7] + 16 * v74);
  a1 = *v76;
  v26 = v76[1];
  sub_100069E2C(*v76, v26);

  v28 = v26 >> 62;
  if ((v26 >> 62) <= 1)
  {
    if (!v28)
    {
      v77 = BYTE6(v26);
      goto LABEL_70;
    }

LABEL_68:
    LODWORD(v77) = HIDWORD(a1) - a1;
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      v77 = v77;
      goto LABEL_70;
    }

LABEL_214:
    __break(1u);
LABEL_215:
    sub_100093854();
    v248 = a1;
    v249 = v6;
LABEL_216:
    sub_10006A178(v248, v249);
LABEL_218:

    v250 = [v349 homeUUIDString];
    if (v250)
    {
      v251 = v250;
      a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v252;

      if (qword_100501B00 != -1)
      {
LABEL_269:
        swift_once();
      }

      if (sub_1001DE8B0(a1, v26) == 2)
      {

        v253 = Logger.logObject.getter();
        v254 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v253, v254))
        {
          v255 = swift_slowAlloc();
          v256 = swift_slowAlloc();
          *&v353 = v256;
          *v255 = 136315138;
          v257 = sub_1002FFA0C(a1, v26, &v353);

          *(v255 + 4) = v257;
          _os_log_impl(&_mh_execute_header, v253, v254, "%s has current status as out of home, not connecting to endpoint", v255, 0xCu);
          sub_1000752F4(v256);
        }

        else
        {
        }

        goto LABEL_248;
      }
    }

    sub_100069E2C(v332, v333);
    v258 = [v349 readerIdentifier];
    if (v258)
    {
      v259 = v258;
      v260 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v262 = v261;

      sub_100288640(8, v260, v262, &v353);
      v263 = *(&v353 + 1);
      v26 = v353;
      if (v333 >> 60 == 15)
      {
        if (*(&v353 + 1) >> 60 != 15)
        {
          goto LABEL_236;
        }

        goto LABEL_229;
      }

      if (*(&v353 + 1) >> 60 != 15)
      {
        v265 = v332;
        v266 = v333;
        sub_100069E2C(v332, v333);
        sub_10006A2BC(v26, v263);
        v267 = sub_10008FB4C(v265, v266, v26, v263);
        sub_10006A2D0(v26, v263);
        sub_10006A2D0(v26, v263);
        sub_10006A178(v265, v266);
        sub_10006A2D0(v265, v266);
        if ((v267 & 1) == 0)
        {
LABEL_237:
          v264 = 2;
          goto LABEL_238;
        }

        v264 = 1;
LABEL_238:
        LODWORD(v348) = v264;
        v268 = sub_10027C718(v321, v320);
        if (v268)
        {
          v269 = v268;
          a1 = *(v268 + 16);
          swift_beginAccess();
          if (a1)
          {
            v270 = 0;
            v271 = (v269 + 40);
            while (1)
            {
              if (v270 >= *(v269 + 16))
              {
                __break(1u);
                goto LABEL_263;
              }

              v26 = *(v271 - 1);
              v272 = *v271;
              v273 = v351;
              v274 = v352;
              sub_100069E2C(v26, *v271);
              if (sub_10022CC5C(v273, v274, v26, v272, v326, v327).super.isa)
              {
                break;
              }

              ++v270;
              sub_10006A178(v26, v272);
              v271 += 2;
              if (a1 == v270)
              {
                goto LABEL_244;
              }
            }

            v279 = Logger.logObject.getter();
            v280 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v279, v280))
            {
              v281 = swift_slowAlloc();
              *v281 = 0;
              _os_log_impl(&_mh_execute_header, v279, v280, "Validated GRK from express config", v281, 2u);
            }

            v347 = *(isa + 2);
            v347(v344, &v342[OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier], v346);
            v342 = [v349 endPointType];
            v282 = type metadata accessor for LyonPeer(0);
            v283 = *(v282 + 48);
            v284 = *(v282 + 52);
            v285 = swift_allocObject();
            v286 = OBJC_IVAR____TtC10seserviced8LyonPeer_secureChannel;
            type metadata accessor for LyonBLESecureChannel();
            v287 = swift_allocObject();
            v341 = xmmword_1004098E0;
            *(v287 + 16) = xmmword_1004098E0;
            *(v287 + 32) = xmmword_1004098E0;
            *(v287 + 48) = xmmword_1004098E0;
            *(v287 + 64) = 0x100000001;
            *(v285 + v286) = v287;
            v288 = OBJC_IVAR____TtC10seserviced8LyonPeer_stepUpHelper;
            v289 = objc_allocWithZone(type metadata accessor for LyonStepUpHelper());
            v290 = v333;
            sub_100069E2C(v332, v333);
            v291 = v328;
            v292 = v329;
            sub_100069E2C(v328, v329);
            *(v285 + v288) = [v289 init];
            v293 = OBJC_IVAR____TtC10seserviced8LyonPeer_timeExtension;
            type metadata accessor for LyonTimeExtension();
            swift_allocObject();
            *(v285 + v293) = sub_10025E684();
            *(v285 + OBJC_IVAR____TtC10seserviced8LyonPeer_didFetchUrsk) = 0;
            *(v285 + OBJC_IVAR____TtC10seserviced8LyonPeer_rangingIntentRequested) = 0;
            *(v285 + OBJC_IVAR____TtC10seserviced8LyonPeer_readerStatus) = 3;
            *(v285 + OBJC_IVAR____TtC10seserviced8LyonPeer_readerStatusAtConnection) = 3;
            *(v285 + OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState) = 0;
            *(v285 + OBJC_IVAR____TtC10seserviced8LyonPeer_unsolicitedReaderStatusReportingValue) = 0;
            v294 = v285 + OBJC_IVAR____TtC10seserviced8LyonPeer_bleUwbProtocolVersion;
            *v294 = 0;
            *(v294 + 2) = 1;
            v295 = v285 + OBJC_IVAR____TtC10seserviced8LyonPeer_expeditedTransactionProtocolVersion;
            *v295 = 0;
            *(v295 + 2) = 1;
            *(v285 + OBJC_IVAR____TtC10seserviced8LyonPeer_hasError) = 512;
            *(v285 + OBJC_IVAR____TtC10seserviced8LyonPeer_readerIdentifier) = v341;
            v296 = v285 + OBJC_IVAR____TtC10seserviced8LyonPeer_uwbSessionID;
            *v296 = 0;
            *(v296 + 4) = 1;
            type metadata accessor for LyonCoreAnalytics();
            swift_allocObject();
            *(v285 + OBJC_IVAR____TtC10seserviced8LyonPeer_analyticsData) = sub_1002F9318(v348);
            *(v285 + OBJC_IVAR____TtC10seserviced8LyonPeer_endpointType) = v342;
            *(v285 + OBJC_IVAR____TtC10seserviced8LyonPeer_peripheralTXPower) = v325;
            v297 = (v285 + OBJC_IVAR____TtC10seserviced8LyonPeer_truncatedReaderGroupIdentifier);
            *v297 = v332;
            v297[1] = v290;
            v298 = (v285 + OBJC_IVAR____TtC10seserviced8LyonPeer_truncatedReaderGroupSubIdentifier);
            *v298 = v291;
            v298[1] = v292;
            v299 = v343;
            v300 = v344;
            v301 = v346;
            v347(v343, v344, v346);
            v302 = sub_10025CF18(v299);
            (*(isa + 1))(v300, v301);

            v303 = sub_10013044C(0xD000000000000012, v339 | 0x8000000000000000);
            v304 = (v302 + OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier);
            v305 = *(v302 + OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier);
            v306 = *(v302 + OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier + 8);
            *v304 = v303;
            v304[1] = v307;
            sub_10006A2D0(v305, v306);
            v308 = (v302 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
            v309 = *(v302 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
            v310 = *(v302 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
            v311 = v321;
            v312 = v320;
            *v308 = v321;
            v308[1] = v312;
            sub_10006A2BC(v311, v312);
            sub_10006A2D0(v309, v310);
            *(v302 + OBJC_IVAR____TtC10seserviced4Peer_type) = 3;

            if (qword_100501960 != -1)
            {
              swift_once();
            }

            sub_1000F0F70(v302);
            sub_10006A178(v338, v336);
            sub_10006A178(v334, v335);
            sub_10006A178(v332, v333);
            sub_10006A178(v328, v329);
            sub_10006A178(v330, v331);
            sub_10006A2D0(v321, v320);

            sub_10006A178(v326, v327);
            sub_10006A178(v26, v272);

            sub_10006A178(v351, v352);
            return;
          }

LABEL_244:
        }

        v275 = Logger.logObject.getter();
        v276 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v275, v276))
        {
          v277 = swift_slowAlloc();
          *v277 = 0;
          _os_log_impl(&_mh_execute_header, v275, v276, "Could not validate GRK, not connecting to peripheral", v277, 2u);
        }

LABEL_248:
        sub_1000E1E2C();
        swift_allocError();
        *v278 = 2;
        swift_willThrow();
        sub_10006A178(v338, v336);
        sub_10006A178(v334, v335);
        sub_10006A178(v332, v333);
        sub_10006A178(v328, v329);
        sub_10006A178(v330, v331);
        sub_10006A2D0(v321, v320);

        goto LABEL_132;
      }
    }

    else
    {
      if (v333 >> 60 == 15)
      {
LABEL_229:
        sub_10006A2D0(v332, v333);
        v264 = 1;
        goto LABEL_238;
      }

      v26 = 0;
      v263 = 0xF000000000000000;
    }

LABEL_236:
    sub_10006A2D0(v332, v333);
    sub_10006A2D0(v26, v263);
    goto LABEL_237;
  }

LABEL_64:
  if (v28 != 2)
  {
LABEL_77:

    sub_10006A178(a1, v26);
    goto LABEL_60;
  }

  v83 = *(a1 + 16);
  v82 = *(a1 + 24);
  v57 = __OFSUB__(v82, v83);
  v77 = v82 - v83;
  if (v57)
  {
    __break(1u);
    goto LABEL_68;
  }

LABEL_70:
  if (v77 != 24)
  {
    goto LABEL_77;
  }

  v336 = v23;
  sub_100069E2C(a1, v26);
  v84 = Logger.logObject.getter();
  v85 = static os_log_type_t.debug.getter();
  v334 = a1;
  v335 = v26;
  sub_10006A178(a1, v26);
  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    v333 = swift_slowAlloc();
    *&v353 = v333;
    *v86 = 136380675;
    v351 = sub_100288788(v334, v335);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
    v87 = BidirectionalCollection<>.joined(separator:)();
    v89 = v88;

    v90 = sub_1002FFA0C(v87, v89, &v353);

    *(v86 + 4) = v90;
    _os_log_impl(&_mh_execute_header, v84, v85, "Received service data: %{private}s", v86, 0xCu);
    sub_1000752F4(v333);
  }

  v91 = v334;
  v92 = v335;
  sub_100069E2C(v334, v335);
  v93 = sub_1000939AC(v91, v92, 1, 0, 0);
  if (v5)
  {

    v94 = Logger.logObject.getter();
    v95 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      *v96 = 0;
      _os_log_impl(&_mh_execute_header, v94, v95, "Failed to retrieve peripheral TX power from service data", v96, 2u);
    }

    sub_1000E1E2C();
    swift_allocError();
    *v97 = 2;
    swift_willThrow();
    v98 = v91;
    v99 = v92;
    goto LABEL_94;
  }

  v325 = v93;
  v100 = Data._Representation.subscript.getter();
  v101 = Data._Representation.subscript.getter();
  v330 = Data.subdata(in:)();
  v331 = v102;
  v326 = Data.subdata(in:)();
  v327 = v103;
  v332 = Data.subdata(in:)();
  v333 = v104;
  v328 = Data.subdata(in:)();
  v329 = v105;
  if ((v101 & 0x80) == 0)
  {

    v106 = Logger.logObject.getter();
    v107 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      *v108 = 0;
      v109 = "Lock does not support BLE/UWB type connections, not connecting";
      v110 = v107;
      v111 = v106;
      v112 = v108;
      v113 = 2;
LABEL_91:
      _os_log_impl(&_mh_execute_header, v111, v110, v109, v112, v113);
      goto LABEL_92;
    }

    goto LABEL_93;
  }

  v115 = v100 & 3;
  if (qword_100501900 != -1)
  {
    swift_once();
  }

  if (!sub_1002A11F0(v100 & 3, *(qword_10051B190 + 16)))
  {

    v106 = Logger.logObject.getter();
    v125 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v106, v125))
    {
      v126 = swift_slowAlloc();
      *v126 = 16777472;
      *(v126 + 4) = v115;
      v109 = "Protocol version %hhu not supported";
      v110 = v125;
      v111 = v106;
      v112 = v126;
      v113 = 5;
      goto LABEL_91;
    }

LABEL_93:

    sub_1000E1E2C();
    swift_allocError();
    *v127 = 2;
    swift_willThrow();
    sub_10006A178(v328, v329);
    sub_10006A178(v332, v333);
    sub_10006A178(v326, v327);
    sub_10006A178(v330, v331);
    v98 = v334;
    v99 = v335;
LABEL_94:
    sub_10006A178(v98, v99);
    sub_10006A178(v338, v336);
    return;
  }

  if (qword_1005018F8 != -1)
  {
    swift_once();
  }

  if (sub_100088DE8(v332, v333))
  {

    v116 = v332;
    v117 = v333;
    sub_100069E2C(v332, v333);
    v106 = Logger.logObject.getter();
    v118 = static os_log_type_t.info.getter();
    sub_10006A178(v116, v117);
    if (os_log_type_enabled(v106, v118))
    {
      v119 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      *&v353 = v120;
      *v119 = 136315138;
      v351 = sub_100288788(v332, v333);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
      v121 = BidirectionalCollection<>.joined(separator:)();
      v123 = v122;

      v124 = sub_1002FFA0C(v121, v123, &v353);

      *(v119 + 4) = v124;
      _os_log_impl(&_mh_execute_header, v106, v118, "Not connecting to peripheral since %s is pre-armed", v119, 0xCu);
      sub_1000752F4(v120);

LABEL_92:

      goto LABEL_93;
    }

    goto LABEL_93;
  }

  v128 = type metadata accessor for __DataStorage();
  v129 = *(v128 + 48);
  v130 = *(v128 + 52);
  swift_allocObject();
  v131 = __DataStorage.init(capacity:)();
  v351 = 0;
  v352 = v131 | 0x4000000000000000;
  Data._Representation.append(contentsOf:)();
  Data.append(_:)();
  Data.append(_:)();
  v132 = v351;
  v133 = v352;
  sub_100069E2C(v351, v352);
  v134 = Logger.logObject.getter();
  v135 = static os_log_type_t.debug.getter();
  sub_10006A178(v132, v133);
  LODWORD(v324) = v135;
  if (os_log_type_enabled(v134, v135))
  {
    v136 = swift_slowAlloc();
    v323 = swift_slowAlloc();
    *&v353 = v323;
    *v136 = 136380675;
    v350 = sub_100288788(v132, v133);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
    v137 = BidirectionalCollection<>.joined(separator:)();
    v139 = v138;

    v140 = sub_1002FFA0C(v137, v139, &v353);

    *(v136 + 4) = v140;
    _os_log_impl(&_mh_execute_header, v134, v324, "plaintext  Pad_Bytes || AdvA || Dynamic Tag Expiry Timestamp %{private}s", v136, 0xCu);
    sub_1000752F4(v323);
  }

  v141 = v332;
  v142 = v333;
  sub_100069E2C(v332, v333);
  v143 = Logger.logObject.getter();
  v144 = static os_log_type_t.debug.getter();
  sub_10006A178(v141, v142);
  if (os_log_type_enabled(v143, v144))
  {
    v145 = swift_slowAlloc();
    v324 = swift_slowAlloc();
    *&v353 = v324;
    *v145 = 136380675;
    v350 = sub_100288788(v332, v333);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
    v146 = BidirectionalCollection<>.joined(separator:)();
    v148 = v147;

    v149 = sub_1002FFA0C(v146, v148, &v353);

    *(v145 + 4) = v149;
    _os_log_impl(&_mh_execute_header, v143, v144, "truncatedReaderGroupIdentifier: %{private}s", v145, 0xCu);
    sub_1000752F4(v324);
  }

  v150 = v328;
  v151 = v329;
  sub_100069E2C(v328, v329);
  v152 = Logger.logObject.getter();
  v153 = static os_log_type_t.debug.getter();
  sub_10006A178(v150, v151);
  if (os_log_type_enabled(v152, v153))
  {
    v154 = swift_slowAlloc();
    v324 = swift_slowAlloc();
    *&v353 = v324;
    *v154 = 136380675;
    v350 = sub_100288788(v328, v329);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
    v155 = BidirectionalCollection<>.joined(separator:)();
    v157 = v156;

    v158 = sub_1002FFA0C(v155, v157, &v353);

    *(v154 + 4) = v158;
    _os_log_impl(&_mh_execute_header, v152, v153, "truncatedReaderGroupSubIdentifier: %{private}s", v154, 0xCu);
    sub_1000752F4(v324);
  }

  v159 = v330;
  v160 = v331;
  sub_100069E2C(v330, v331);
  v161 = sub_1000939F8(v159, v160, 0, 0, 1);
  v324 = 0;
  v163 = v161;
  sub_10006A178(v330, v331);
  v164 = v347;
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v166 = v165;
  v167 = v165;
  v168 = v349[1];
  ++v349;
  v168(v164, v348);
  if ((*&v167 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_256;
  }

  if (v166 <= -1.0)
  {
LABEL_256:
    __break(1u);
    goto LABEL_257;
  }

  if (v166 >= 4294967300.0)
  {
LABEL_257:
    __break(1u);
LABEL_258:
    swift_once();
LABEL_104:
    v162 = 0;
    goto LABEL_128;
  }

  if (v163 <= v166)
  {

    v189 = Logger.logObject.getter();
    LODWORD(isa) = static os_log_type_t.error.getter();
    v346 = v189;
    if (os_log_type_enabled(v189, isa))
    {
      v190 = swift_slowAlloc();
      v344 = swift_slowAlloc();
      *&v353 = v344;
      *v190 = 136315394;
      v191 = v347;
      Date.init(timeIntervalSince1970:)();
      sub_10022D9C4(&qword_100504F38, &type metadata accessor for Date);
      v192 = v348;
      v193 = dispatch thunk of CustomStringConvertible.description.getter();
      v195 = v194;
      v168(v191, v192);
      v196 = sub_1002FFA0C(v193, v195, &v353);

      *(v190 + 4) = v196;
      *(v190 + 12) = 2080;
      Date.init()();
      v197 = dispatch thunk of CustomStringConvertible.description.getter();
      v199 = v198;
      v168(v191, v192);
      v200 = sub_1002FFA0C(v197, v199, &v353);

      *(v190 + 14) = v200;
      v201 = v346;
      _os_log_impl(&_mh_execute_header, v346, isa, "Lock advertising time: %s is before current time %s, ignoring peripheral", v190, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    if (qword_100501BF0 != -1)
    {
      swift_once();
    }

    sub_1002A1A18(0, 1);
    if (*(v7 + 17) != 1)
    {
      goto LABEL_131;
    }

    if (qword_100501960 != -1)
    {
LABEL_261:
      swift_once();
    }

    v162 = v324;
LABEL_128:
    sub_1000E8C60(843466310, 0xE400000000000000);
    if (v162)
    {
    }

    *(v7 + 17) = 0;
    sub_1002263E4(v203);
    goto LABEL_131;
  }

  v169 = Logger.logObject.getter();
  v170 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v169, v170))
  {
    v171 = swift_slowAlloc();
    v323 = swift_slowAlloc();
    *&v353 = v323;
    *v171 = 136315138;
    v172 = v347;
    Date.init(timeIntervalSince1970:)();
    sub_10022D9C4(&qword_100504F38, &type metadata accessor for Date);
    v173 = v348;
    v174 = dispatch thunk of CustomStringConvertible.description.getter();
    v176 = v175;
    v168(v172, v173);
    v177 = sub_1002FFA0C(v174, v176, &v353);

    *(v171 + 4) = v177;
    _os_log_impl(&_mh_execute_header, v169, v170, "Validated dynamic tag expiry timestamp: %s", v171, 0xCu);
    sub_1000752F4(v323);
  }

  if (qword_100501BD8 != -1)
  {
    swift_once();
  }

  v316 = qword_10051B690;
  v321 = sub_10027C37C(v332, v333);
  v320 = v178;
  if (v178 >> 60 == 15)
  {

    v179 = v332;
    v180 = v333;
    sub_100069E2C(v332, v333);
    v181 = Logger.logObject.getter();
    v182 = static os_log_type_t.error.getter();
    sub_10006A178(v179, v180);
    if (os_log_type_enabled(v181, v182))
    {
      v183 = swift_slowAlloc();
      v184 = swift_slowAlloc();
      *&v353 = v184;
      *v183 = 136315138;
      v350 = sub_100288788(v332, v333);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
      v185 = BidirectionalCollection<>.joined(separator:)();
      v187 = v186;

      v188 = sub_1002FFA0C(v185, v187, &v353);

      *(v183 + 4) = v188;
      _os_log_impl(&_mh_execute_header, v181, v182, "Reader ID %s, not in an express endpoint, ignoring peripheral", v183, 0xCu);
      sub_1000752F4(v184);
    }

    goto LABEL_131;
  }

  if (v337)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_10014E510();
    sub_10022D9C4(&qword_100503608, sub_10014E510);
    Set.Iterator.init(_cocoa:)();
    v202 = v356;
    v337 = v355;
    v317 = v357;
    v323 = v358;
    v348 = v359;
  }

  else
  {
    v205 = -1 << *(v341 + 32);
    v202 = v341 + 56;
    v206 = *(v341 + 56);
    v317 = ~v205;
    v207 = -v205;
    if (v207 < 64)
    {
      v208 = ~(-1 << v207);
    }

    else
    {
      v208 = -1;
    }

    v348 = v208 & v206;

    v323 = 0;
    v337 = v209;
  }

  v210 = (v317 + 64) >> 6;
  if (v321)
  {
    v211 = 0;
  }

  else
  {
    v211 = v320 == 0xC000000000000000;
  }

  v212 = !v211;
  v319 = v212;
  v347 = (v320 >> 62);
  v213 = __OFSUB__(HIDWORD(v321), v321);
  v315 = v213;
  v314 = HIDWORD(v321) - v321;
  v318 = BYTE6(v320);
  while ((v337 & 0x8000000000000000) != 0)
  {
    v216 = __CocoaSet.Iterator.next()();
    if (!v216)
    {
      goto LABEL_210;
    }

    v350 = v216;
    sub_10014E510();
    swift_dynamicCast();
    v349 = v353;
    v26 = v323;
    v322 = v348;
LABEL_158:
    if (!v349)
    {
LABEL_210:
      sub_100093854();

      v235 = v321;
      v236 = v320;
      sub_10006A2BC(v321, v320);
      v237 = Logger.logObject.getter();
      v238 = static os_log_type_t.error.getter();
      sub_10006A2D0(v235, v236);
      if (os_log_type_enabled(v237, v238))
      {
        v239 = swift_slowAlloc();
        v240 = swift_slowAlloc();
        *&v353 = v240;
        *v239 = 136315138;
        v241 = v321;
        v242 = v320;
        sub_10006A2BC(v321, v320);
        v243 = Data.description.getter();
        v245 = v244;
        sub_10006A2D0(v241, v242);
        v246 = sub_1002FFA0C(v243, v245, &v353);

        *(v239 + 4) = v246;
        _os_log_impl(&_mh_execute_header, v237, v238, "Could not get endpoint for %s, express list may be invalid", v239, 0xCu);
        sub_1000752F4(v240);
      }

      sub_1000E1E2C();
      swift_allocError();
      *v247 = 2;
      swift_willThrow();
      sub_10006A178(v338, v336);
      sub_10006A178(v334, v335);
      sub_10006A178(v332, v333);
      sub_10006A178(v328, v329);
      sub_10006A178(v330, v331);
      sub_10006A2D0(v321, v320);
      goto LABEL_132;
    }

    v217 = [v349 publicKeyIdentifier];
    a1 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v218;

    v219 = v6 >> 62;
    if (v6 >> 62 == 3)
    {
      if (a1)
      {
        v220 = 0;
      }

      else
      {
        v220 = v6 == 0xC000000000000000;
      }

      v222 = !v220 || v347 < 3;
      if (((v222 | v319) & 1) == 0)
      {
        sub_100093854();
        v248 = 0;
        v249 = 0xC000000000000000;
        goto LABEL_216;
      }

LABEL_178:
      v223 = 0;
      goto LABEL_179;
    }

    if (v219 > 1)
    {
      if (v219 != 2)
      {
        goto LABEL_178;
      }

      v225 = *(a1 + 16);
      v224 = *(a1 + 24);
      v57 = __OFSUB__(v224, v225);
      v223 = v224 - v225;
      if (v57)
      {
LABEL_263:
        __break(1u);
LABEL_264:
        __break(1u);
LABEL_265:
        __break(1u);
LABEL_266:
        __break(1u);
LABEL_267:
        __break(1u);
LABEL_268:
        __break(1u);
        goto LABEL_269;
      }
    }

    else if (v219)
    {
      LODWORD(v223) = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_264;
      }

      v223 = v223;
    }

    else
    {
      v223 = BYTE6(v6);
    }

LABEL_179:
    if (v347 > 1)
    {
      if (v347 != 2)
      {
        if (!v223)
        {
          goto LABEL_215;
        }

LABEL_148:

        sub_10006A178(a1, v6);
        goto LABEL_149;
      }

      v228 = *(v321 + 16);
      v227 = *(v321 + 24);
      v57 = __OFSUB__(v227, v228);
      v226 = v227 - v228;
      if (v57)
      {
        __break(1u);
LABEL_260:
        __break(1u);
        goto LABEL_261;
      }
    }

    else
    {
      v226 = v318;
      if (v347)
      {
        v226 = v314;
        if (v315)
        {
          goto LABEL_260;
        }
      }
    }

    if (v223 != v226)
    {
      goto LABEL_148;
    }

    if (v223 < 1)
    {
      goto LABEL_215;
    }

    if (v219 > 1)
    {
      if (v219 == 2)
      {
        v229 = *(a1 + 16);
        v313 = *(a1 + 24);
        v230 = __DataStorage._bytes.getter();
        if (v230)
        {
          v231 = __DataStorage._offset.getter();
          if (__OFSUB__(v229, v231))
          {
            goto LABEL_267;
          }

          v230 += v229 - v231;
        }

        if (__OFSUB__(v313, v229))
        {
          goto LABEL_266;
        }

        goto LABEL_207;
      }

      *(&v353 + 6) = 0;
      *&v353 = 0;
    }

    else
    {
      if (v219)
      {
        if (a1 >> 32 < a1)
        {
          goto LABEL_265;
        }

        v313 = __DataStorage._bytes.getter();
        if (v313)
        {
          v232 = __DataStorage._offset.getter();
          if (__OFSUB__(a1, v232))
          {
            goto LABEL_268;
          }

          v230 = a1 - v232 + v313;
        }

        else
        {
          v230 = 0;
        }

LABEL_207:
        __DataStorage._length.getter();
        v234 = v324;
        sub_10019F024(v230, v321, v320, &v353);
        v324 = v234;
        sub_10006A178(a1, v6);
        if (v353)
        {
LABEL_217:
          sub_100093854();
          goto LABEL_218;
        }

        goto LABEL_208;
      }

      *&v353 = a1;
      WORD4(v353) = v6;
      BYTE10(v353) = BYTE2(v6);
      BYTE11(v353) = BYTE3(v6);
      BYTE12(v353) = BYTE4(v6);
      BYTE13(v353) = BYTE5(v6);
    }

    v233 = v324;
    sub_10019F024(&v353, v321, v320, &v350);
    v324 = v233;
    sub_10006A178(a1, v6);
    if (v350)
    {
      goto LABEL_217;
    }

LABEL_208:

LABEL_149:
    v323 = v26;
    v348 = v322;
  }

  v26 = v323;
  v214 = v323;
  v215 = v348;
  if (v348)
  {
LABEL_155:
    v322 = (v215 - 1) & v215;
    v349 = *(*(v337 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v215)))));
    goto LABEL_158;
  }

  while (1)
  {
    v26 = v214 + 1;
    if (__OFADD__(v214, 1))
    {
      break;
    }

    if (v26 >= v210)
    {
      v348 = 0;
      goto LABEL_210;
    }

    v215 = *(v202 + 8 * v26);
    v214 = (v214 + 1);
    if (v215)
    {
      goto LABEL_155;
    }
  }

  __break(1u);
  swift_once();
  sub_1002A1A18(0, 1);
  if (*(v7 + 17) == 1)
  {
    if (qword_100501960 != -1)
    {
      goto LABEL_258;
    }

    goto LABEL_104;
  }

LABEL_131:
  sub_1000E1E2C();
  swift_allocError();
  *v204 = 2;
  swift_willThrow();
  sub_10006A178(v338, v336);
  sub_10006A178(v334, v335);
  sub_10006A178(v332, v333);
  sub_10006A178(v328, v329);
  sub_10006A178(v330, v331);
LABEL_132:
  sub_10006A178(v326, v327);
  sub_10006A178(v351, v352);
}

uint64_t sub_10022A3E8(uint64_t a1, __objc2_class **a2)
{
  v4 = v3;
  v5 = v2;
  v8 = type metadata accessor for UUID();
  v127 = *(v8 - 8);
  isa = v127[8].isa;
  __chkstk_darwin(v8);
  v128 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = (&v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v16 = qword_10051B7F0;
  *v15 = qword_10051B7F0;
  (*(v12 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v11);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  v19 = *(v12 + 8);
  v18 = (v12 + 8);
  v19(v15, v11);
  if ((v16 & 1) == 0)
  {
    __break(1u);
LABEL_73:
    swift_once();
    goto LABEL_13;
  }

  v18 = OBJC_IVAR____TtC10seserviced7LyonBLE_logger;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Lyon onCharacteristics", v22, 2u);
  }

  if (*(v5 + 16) != 1)
  {
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "LyonBLE is not running", v34, 2u);
    }

    sub_100079E24();
    swift_allocError();
    *v35 = 0;
    goto LABEL_24;
  }

  if (*a2 == _TtC10seserviced8LyonPeer)
  {
    v15 = a2;
  }

  else
  {
    v15 = 0;
  }

  if (*a2 != _TtC10seserviced8LyonPeer)
  {

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v131[0] = v40;
      *v39 = 136315138;
      v41 = UUID.uuidString.getter();
      v43 = sub_1002FFA0C(v41, v42, v131);

      *(v39 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v36, v37, "Missing Lyon peer %s", v39, 0xCu);
      sub_1000752F4(v40);
    }

    sub_1000E1E2C();
    swift_allocError();
    *v44 = 2;
LABEL_24:
    swift_willThrow();
    return v129;
  }

  v23 = qword_100501B88;

  if (v23 != -1)
  {
    goto LABEL_73;
  }

LABEL_13:
  v24 = sub_1000958E4(v8, qword_10051B5C8);
  if (!*(a1 + 16) || (v25 = sub_10008C808(v24), (v26 & 1) == 0))
  {

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v131[0] = v48;
      *v47 = 136315138;
      sub_10022D9C4(&unk_100507480, &type metadata accessor for UUID);
      v49 = Dictionary.description.getter();
      v51 = sub_1002FFA0C(v49, v50, v131);

      *(v47 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v45, v46, "PSMCharacteristicSupportedUwbProtocol not found %s", v47, 0xCu);
      sub_1000752F4(v48);
    }

    *(a2 + OBJC_IVAR____TtC10seserviced8LyonPeer_hasError) = 256;
    sub_100079E24();
    swift_allocError();
    *v52 = 0;
    swift_willThrow();
    goto LABEL_69;
  }

  v121 = v15;
  v27 = (*(a1 + 56) + 16 * v25);
  v29 = *v27;
  v28 = v27[1];
  v30 = v28 >> 62;
  if ((v28 >> 62) > 1)
  {
    if (v30 != 2)
    {
      goto LABEL_36;
    }

    v54 = *(v29 + 16);
    v53 = *(v29 + 24);
    v31 = v53 - v54;
    if (!__OFSUB__(v53, v54))
    {
      goto LABEL_34;
    }

    __break(1u);
  }

  else if (!v30)
  {
    v31 = BYTE6(v28);
    goto LABEL_35;
  }

  if (__OFSUB__(HIDWORD(v29), v29))
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v31 = HIDWORD(v29) - v29;
LABEL_34:
  sub_100069E2C(v29, v28);
LABEL_35:
  if (v31 > 4)
  {
    sub_100069E2C(v29, v28);
    LODWORD(v56) = sub_100090214(v29, v28, 0, 0, 0);
    if (v4)
    {
      sub_10006A178(v29, v28);
      goto LABEL_66;
    }

    goto LABEL_47;
  }

LABEL_36:
  sub_100069E2C(v29, v28);
  v55 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v55, v8))
  {
    sub_10006A178(v29, v28);
LABEL_65:

    *(a2 + OBJC_IVAR____TtC10seserviced8LyonPeer_hasError) = 256;
    sub_100079E24();
    swift_allocError();
    *v68 = 0;
    swift_willThrow();
    goto LABEL_66;
  }

  v56 = swift_slowAlloc();
  *v56 = 134217984;
  if (v30 <= 1)
  {
    if (!v30)
    {
      v57 = BYTE6(v28);
LABEL_64:
      *(v56 + 4) = v57;
      v67 = v56;
      sub_10006A178(v29, v28);
      _os_log_impl(&_mh_execute_header, v55, v8, "PSMCharacteristicSupportedUwbProtocol has invalid length %ld", v67, 0xCu);

      goto LABEL_65;
    }

    LODWORD(v57) = HIDWORD(v29) - v29;
    if (!__OFSUB__(HIDWORD(v29), v29))
    {
      v57 = v57;
      goto LABEL_64;
    }

    __break(1u);
LABEL_91:
    swift_once();
LABEL_84:
    if (qword_100501B90 != -1)
    {
      swift_once();
    }

    v127 = sub_1000958E4(v8, qword_10051B5E0);
    swift_beginAccess();
    v115 = v132;
    v114 = v133;
    v116 = v128;
    (v18[2].isa)(v128, v121 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v8);
    sub_1000F4EB4(v127, v115, v114, v116);
    (v18[1].isa)(v116, v8);
    sub_10006A178(v29, v126);

    sub_10006A178(v132, v133);
    return v129;
  }

  if (v30 != 2)
  {
    v57 = 0;
    goto LABEL_64;
  }

  v59 = *(v29 + 16);
  v58 = *(v29 + 24);
  v60 = __OFSUB__(v58, v59);
  v57 = v58 - v59;
  if (!v60)
  {
    goto LABEL_64;
  }

  __break(1u);
LABEL_47:
  LODWORD(v129) = v56;
  sub_10006A178(v29, v28);
  LOBYTE(v25) = Data._Representation.subscript.getter();
  v119 = v25 >> 1;
  if (qword_100501900 != -1)
  {
LABEL_89:
    v117 = v25;
    swift_once();
    LOBYTE(v25) = v117;
  }

  v124 = qword_10051B190;
  v61 = *(*(qword_10051B190 + 24) + 16);
  v126 = v28;
  v125 = v29;
  v123 = v61;
  if (v61 && v25 >= 2u)
  {
    v29 = 0;
    v120 = 0;
    v62 = v125;
    do
    {
      v122 = 2 * v120;
      while (1)
      {
        v28 = v126;
        sub_100069E2C(v62, v126);
        v63 = sub_100090214(v62, v28, v122 + 3, 0, 0);
        if (v4)
        {
          sub_10006A178(v62, v28);
          v69 = v62;
          goto LABEL_67;
        }

        v64 = v63;
        LOBYTE(v25) = sub_10006A178(v62, v28);
        v65 = v124[3];
        if (v29 >= *(v65 + 16))
        {
          __break(1u);
          goto LABEL_88;
        }

        v66 = *(v65 + 2 * v29 + 32);
        if (v66 <= v64)
        {
          break;
        }

        if (++v29 >= v123)
        {
          goto LABEL_75;
        }
      }

      if (v66 >= v64)
      {
        v72 = v121 + OBJC_IVAR____TtC10seserviced8LyonPeer_bleUwbProtocolVersion;
        *v72 = v64;
        v72[2] = 0;
        break;
      }

      if (v29 >= v123)
      {
        break;
      }

      ++v120;
    }

    while (v120 < v119);
  }

LABEL_75:
  if ((*(v121 + OBJC_IVAR____TtC10seserviced8LyonPeer_bleUwbProtocolVersion + 2) & 1) == 0)
  {
    v89 = *(v121 + OBJC_IVAR____TtC10seserviced8LyonPeer_bleUwbProtocolVersion);
    v90 = *(v121 + OBJC_IVAR____TtC10seserviced8LyonPeer_secureChannel);

    v91 = Data.subdata(in:)();
    v93 = v92;
    sub_1002B3208(v91, v92);
    sub_10006A178(v91, v93);

    LOWORD(v131[0]) = bswap32(v89) >> 16;
    v132 = sub_1002B1854(v131, v131 + 2);
    v133 = v94;
    LOBYTE(v131[0]) = 1;
    v95 = sub_1002B1854(v131, v131 + 1);
    v97 = v96;
    Data.append(_:)();
    sub_10006A178(v95, v97);
    LOBYTE(v131[0]) = 3;
    v98 = sub_1002B1854(v131, v131 + 1);
    v100 = v99;
    Data.append(_:)();
    sub_10006A178(v98, v100);
    v102 = v132;
    v101 = v133;
    sub_100069E2C(v132, v133);
    v103 = v101;
    v104 = Logger.logObject.getter();
    v105 = static os_log_type_t.info.getter();
    sub_10006A178(v102, v103);
    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v108 = v102;
      v109 = v107;
      v131[0] = v107;
      *v106 = 136315138;
      v124 = sub_100288788(v108, v103);
      v130 = v124;
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
      v110 = BidirectionalCollection<>.joined(separator:)();
      v112 = v111;

      v113 = sub_1002FFA0C(v110, v112, v131);

      *(v106 + 4) = v113;
      _os_log_impl(&_mh_execute_header, v104, v105, "Writing BLE Supported Protocol Version %s", v106, 0xCu);
      sub_1000752F4(v109);
    }

    v18 = v127;
    v29 = v125;
    if (qword_100501960 == -1)
    {
      goto LABEL_84;
    }

    goto LABEL_91;
  }

  v73 = Logger.logObject.getter();
  v74 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    *v75 = 0;
    _os_log_impl(&_mh_execute_header, v73, v74, "No matching protocol version found", v75, 2u);
  }

  v29 = v125;
  v28 = v126;
  sub_100069E2C(v125, v126);
  v76 = sub_100090214(v29, v28, 3, 0, 0);
  sub_10006A178(v29, v28);
  if (v4)
  {
LABEL_66:
    v69 = v29;
LABEL_67:
    v70 = v28;
    goto LABEL_68;
  }

  v129 = sub_10013044C(0xD000000000000012, 0x8000000100461630);
  v78 = v77;
  v79 = *(v121 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
  v80 = *(v121 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
  sub_100068FC4(&unk_100503EA0, &unk_1004101C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100409900;
  *(inited + 32) = 0xD000000000000020;
  *(inited + 40) = 0x80000001004616D0;
  LOWORD(v131[0]) = v76;
  sub_10006A2BC(v79, v80);
  result = dispatch thunk of CustomStringConvertible.description.getter();
  *(inited + 48) = result;
  *(inited + 56) = v82;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0xD000000000000020;
  *(inited + 88) = 0x8000000100461750;
  v83 = v124[3];
  if (*(v83 + 16))
  {
    LOWORD(v131[0]) = *(v83 + 32);
    v84 = dispatch thunk of CustomStringConvertible.description.getter();
    *(inited + 120) = &type metadata for String;
    *(inited + 96) = v84;
    *(inited + 104) = v85;
    v86 = sub_10008FFDC(inited);
    swift_setDeallocating();
    sub_100068FC4(&qword_100507D30, &unk_100409C90);
    swift_arrayDestroy();
    v87 = v129;
    sub_1003375E0(0xD000000000000042, 0x8000000100468480, v129, v78, v79, v80, v86);

    sub_10006A2D0(v79, v80);
    sub_10006A2D0(v87, v78);
    *(v121 + OBJC_IVAR____TtC10seserviced8LyonPeer_hasError) = 256;
    sub_100079E24();
    swift_allocError();
    *v88 = 0;
    swift_willThrow();
    v69 = v125;
    v70 = v126;
LABEL_68:
    sub_10006A178(v69, v70);
LABEL_69:

    return v129;
  }

  __break(1u);
  return result;
}

void sub_10022B4DC(uint64_t a1, __objc2_class **a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = (&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v10 = qword_10051B7F0;
  *v9 = qword_10051B7F0;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v9, v5);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (*(v2 + 16) == 1 && *a2 == _TtC10seserviced8LyonPeer)
  {
    if (a1)
    {

      v12 = v2;
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v29 = v16;
        *v15 = 136315138;

        v17 = UUID.uuidString.getter();
        v19 = v18;

        v20 = sub_1002FFA0C(v17, v19, &v29);

        *(v15 + 4) = v20;
        _os_log_impl(&_mh_execute_header, v13, v14, "Error during channel open attempt to %s", v15, 0xCu);
        sub_1000752F4(v16);
      }

      if ((*(a2 + OBJC_IVAR____TtC10seserviced8LyonPeer_hasError) & 0x100) == 0)
      {
        if (qword_100501BF0 != -1)
        {
          swift_once();
        }

        sub_1002A1A18(0, 1);
        if (*(v12 + 17) == 1)
        {
          if (qword_100501960 != -1)
          {
            swift_once();
          }

          sub_1000E8C60(843466310, 0xE400000000000000);
          *(v12 + 17) = 0;
          sub_1002263E4();
        }
      }

LABEL_23:

      return;
    }

    v24 = qword_100501D78;

    if (v24 == -1)
    {
LABEL_20:
      v29 = a2;
      v26 = *(off_10050B110 + 3);
      __chkstk_darwin(v25);
      *(&v28 - 2) = v27;
      *(&v28 - 1) = &v29;
      os_unfair_lock_lock((v26 + 32));
      sub_10022D94C((v26 + 16));
      os_unfair_lock_unlock((v26 + 32));
      if (qword_1005018F8 != -1)
      {
        swift_once();
      }

      sub_100089040(a2);
      goto LABEL_23;
    }

LABEL_25:
    v25 = swift_once();
    goto LABEL_20;
  }

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "LyonBLE is not running", v23, 2u);
  }
}

void sub_10022B998(int64_t a1, unint64_t a2, __objc2_class **a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = (&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v13 = qword_10051B7F0;
  *v12 = qword_10051B7F0;
  (*(v9 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v8);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v12, v8);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (*(v4 + 16) == 1 && *a3 == _TtC10seserviced8LyonPeer)
  {
    v15 = qword_1005018F8;

    if (v15 == -1)
    {
LABEL_7:
      sub_1000832B0(a1, a2, a3);
      goto LABEL_11;
    }

LABEL_13:
    swift_once();
    goto LABEL_7;
  }

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 67109120;
    *(v18 + 4) = *(v4 + 16);

    _os_log_impl(&_mh_execute_header, v16, v17, "LyonBLE is running: %{BOOL}d or LyonPeer could not be cast", v18, 8u);

    return;
  }

LABEL_11:
}

void sub_10022BC2C(__objc2_class **a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v8 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v7, v3);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_15:
    swift_once();
LABEL_7:
    sub_100089F1C(a1);
    if (qword_100501D78 != -1)
    {
      v11 = swift_once();
    }

    v18 = a1;
    v12 = *(off_10050B110 + 3);
    __chkstk_darwin(v11);
    *(&v17 - 2) = &v18;
    *(&v17 - 1) = v13;
    os_unfair_lock_lock((v12 + 32));
    sub_10022D904((v12 + 16));
    os_unfair_lock_unlock((v12 + 32));

    return;
  }

  if (*(v1 + 16) == 1)
  {
    if (*a1 != _TtC10seserviced8LyonPeer)
    {
      return;
    }

    v10 = qword_1005018F8;

    if (v10 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "LyonBLE is not running", v16, 2u);
  }
}

uint64_t sub_10022BF08(uint64_t a1, uint64_t a2, uint64_t a3, __objc2_class **a4)
{
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = (&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v13 = qword_10051B7F0;
  *v12 = qword_10051B7F0;
  (*(v9 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v8);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  result = (*(v9 + 8))(v12, v8);
  if ((v13 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_6;
  }

  if (*a4 != _TtC10seserviced8LyonPeer)
  {
    return result;
  }

  v16 = qword_100501950;

  if (v16 != -1)
  {
    goto LABEL_9;
  }

LABEL_6:
  sub_1000CCCE0(a1, a2, a3, a4);
}

void sub_10022C0EC(uint64_t a1, __objc2_class **a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = (&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v10 = qword_10051B7F0;
  *v9 = qword_10051B7F0;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v9, v5);
  if (v10)
  {
    if (*(v2 + 16) == 1)
    {
      if (*a2 == _TtC10seserviced8LyonPeer)
      {

        v12 = Logger.logObject.getter();
        v13 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          v30[0] = swift_slowAlloc();
          *v14 = 136315394;
          v28 = a1 & 1;
          v15 = String.init<A>(describing:)();
          v17 = sub_1002FFA0C(v15, v16, v30);

          *(v14 + 4) = v17;
          *(v14 + 12) = 2080;

          v18 = UUID.uuidString.getter();
          v20 = v19;

          v21 = sub_1002FFA0C(v18, v20, v30);

          *(v14 + 14) = v21;
          _os_log_impl(&_mh_execute_header, v12, v13, "Lyon received RSSI update: %s for %s", v14, 0x16u);
          swift_arrayDestroy();
        }

        if (a1)
        {
          *(a2 + OBJC_IVAR____TtC10seserviced8LyonPeer_rangingIntentRequested) = 0;
          if (qword_100501950 != -1)
          {
            swift_once();
          }

          sub_1000CF8F4(a2);
        }

        else
        {
          *(a2 + OBJC_IVAR____TtC10seserviced8LyonPeer_rangingIntentRequested) = 1;
          if (qword_100501950 != -1)
          {
            swift_once();
          }

          sub_1000C8E3C(a2);
        }
      }
    }

    else
    {
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "LyonBLE is not running", v26, 2u);
      }
    }
  }

  else
  {
    __break(1u);
    swift_once();
    v30[0] = a1;
    swift_errorRetain();
    sub_100068FC4(&unk_100503F80, &qword_100409CF0);
    if (swift_dynamicCast())
    {
      v22 = v28;
      if (v29)
      {
        v23 = 256;
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v22 = 0;
      v23 = 0;
    }

    sub_100080E48(a2, v23 | v22);
  }
}

void sub_10022C6BC(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v8 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = v8;
  v10 = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v7, v3);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if ((*(v1 + OBJC_IVAR____TtC10seserviced7LyonBLE_disableScanFiltering) & 1) != 0 || (v11 = *(a1 + 16)) == 0)
  {
    if (qword_100501960 == -1)
    {
LABEL_10:
      sub_1000F6AA4(1uLL, 0, 0, 0, 0);
      return;
    }

LABEL_12:
    swift_once();
    goto LABEL_10;
  }

  if (qword_100501960 == -1)
  {
    if (v11 > 8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    swift_once();
    if (v11 > 8)
    {
LABEL_8:
      v12 = &_swiftEmptySetSingleton;
LABEL_28:
      sub_1000F6AA4(1uLL, 843466310, 0xE400000000000000, 136, v12);

      return;
    }
  }

  v13 = a1 + 56;
  v14 = 1 << *(a1 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a1 + 56);
  v17 = OBJC_IVAR____TtC10seserviced7LyonBLE_logger;
  v18 = (v14 + 63) >> 6;

  v19 = 0;
  v44 = _swiftEmptyArrayStorage;
  *&v20 = 136315138;
  v45 = v20;
  v47 = a1 + 56;
  v48 = a1;
  v46 = v17;
  v49 = v1;
  for (i = v18; ; v18 = i)
  {
    v21 = v19;
    if (!v16)
    {
      break;
    }

LABEL_21:
    v22 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v23 = (*(a1 + 48) + ((v19 << 10) | (16 * v22)));
    v25 = *v23;
    v24 = v23[1];
    sub_100069E2C(*v23, v24);
    v26 = sub_100226C50(v25, v24);
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v33 = v26;
    sub_10006A178(v25, v24);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v44 = sub_10012EB50(0, *(v44 + 2) + 1, 1, v44);
    }

    v35 = *(v44 + 2);
    v34 = *(v44 + 3);
    if (v35 >= v34 >> 1)
    {
      v42 = sub_10012EB50((v34 > 1), v35 + 1, 1, v44);
      v39 = v28;
      v38 = v30;
      v37 = v32;
      v44 = v42;
      v36 = v33;
    }

    else
    {
      v36 = v33;
      v37 = v32;
      v38 = v30;
      v39 = v28;
    }

    v13 = v47;
    a1 = v48;
    v40 = v44;
    *(v44 + 2) = v35 + 1;
    v41 = &v40[32 * v35];
    *(v41 + 4) = v36;
    *(v41 + 5) = v37;
    *(v41 + 6) = v38;
    *(v41 + 7) = v39;
  }

  while (1)
  {
    v19 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v19 >= v18)
    {

      v12 = sub_1000E0110(v44);

      goto LABEL_28;
    }

    v16 = *(v13 + 8 * v19);
    ++v21;
    if (v16)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
}

NSData sub_10022CC5C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  result.super.isa = Data._bridgeToObjectiveC()().super.isa;
  v60 = result.super.isa;
  v13 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v14 = 0;
    if (v13 != 2)
    {
      goto LABEL_10;
    }

    v16 = *(a1 + 16);
    v15 = *(a1 + 24);
    v14 = v15 - v16;
    if (!__OFSUB__(v15, v16))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v13)
  {
    v14 = BYTE6(a2);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
    __break(1u);
    goto LABEL_23;
  }

  v14 = HIDWORD(a1) - a1;
LABEL_10:
  result.super.isa = [objc_allocWithZone(NSMutableData) initWithLength:v14];
  if (!result.super.isa)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v17 = result.super.isa;
  sub_100069E2C(a3, a4);
  sub_100069E2C(a5, a6);
  sub_100069E2C(a1, a2);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  sub_10006A178(a3, a4);
  sub_10006A178(a5, a6);
  sub_10006A178(a1, a2);
  v57 = a6;
  v58 = a5;
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    *v20 = 136643331;
    sub_100288788(a3, a4);
    log = v18;
    v55 = v19;
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
    v21 = BidirectionalCollection<>.joined(separator:)();
    v22 = a6;
    v24 = v23;

    v25 = sub_1002FFA0C(v21, v24, &v62);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2081;
    sub_100288788(v58, v22);
    v26 = BidirectionalCollection<>.joined(separator:)();
    v28 = v27;

    v29 = sub_1002FFA0C(v26, v28, &v62);

    *(v20 + 14) = v29;
    *(v20 + 22) = 2081;
    sub_100288788(a1, a2);
    v30 = BidirectionalCollection<>.joined(separator:)();
    v32 = v31;

    v33 = sub_1002FFA0C(v30, v32, &v62);

    *(v20 + 24) = v33;
    _os_log_impl(&_mh_execute_header, log, v55, "Validating GRK with grk:%{sensitive}s, given Dynamic Tag:%{private}s, plaintextData:%{private}s", v20, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v34 = v60;
  v35 = isa;
  if (CCCrypt(0, 0, 0, [(objc_class *)v60 bytes], [(objc_class *)v60 length], 0, [(objc_class *)isa bytes], [(objc_class *)isa length], [(objc_class *)v17 mutableBytes], [(objc_class *)v17 length], 0))
  {
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "GRK encryption failed", v38, 2u);
    }

    v39 = 0;
  }

  else
  {
    v40 = v17;
    v41 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    v44 = Data.subdata(in:)();
    v46 = v45;
    sub_10006A178(v41, v43);
    sub_100069E2C(v44, v46);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.debug.getter();
    sub_10006A178(v44, v46);
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v62 = v50;
      *v49 = 136315138;
      sub_100288788(v44, v46);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      v59 = v40;
      v34 = v60;
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
      v51 = BidirectionalCollection<>.joined(separator:)();
      v53 = v52;

      v54 = sub_1002FFA0C(v51, v53, &v62);
      v40 = v59;

      *(v49 + 4) = v54;
      _os_log_impl(&_mh_execute_header, v47, v48, "Derived dynamic tag: %s", v49, 0xCu);
      sub_1000752F4(v50);
      v35 = isa;
    }

    v39 = sub_10008FB4C(v58, v57, v44, v46);
    sub_10006A178(v44, v46);
    v17 = v35;
    v35 = v34;
    v34 = v40;
  }

  return (v39 & 1);
}

uint64_t sub_10022D308()
{
  v1 = OBJC_IVAR____TtC10seserviced7LyonBLE_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10006A2D0(*(v0 + OBJC_IVAR____TtC10seserviced7LyonBLE_readerGroupIdentifierMask), *(v0 + OBJC_IVAR____TtC10seserviced7LyonBLE_readerGroupIdentifierMask + 8));
  v3 = *(v0 + OBJC_IVAR____TtC10seserviced7LyonBLE_scanningExpressReaderGroupIdentifiers);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LyonBLE()
{
  result = qword_1005075C8;
  if (!qword_1005075C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10022D41C()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_10022D4F0(int *a1, int a2)
{
  Data.InlineSlice.ensureUniqueReference()();
  v4 = *a1;
  v5 = a1[1];
  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = *(a1 + 1);

  v7 = __DataStorage._bytes.getter();
  if (!v7)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v8 = v7;
  v9 = __DataStorage._offset.getter();
  v10 = v4 - v9;
  if (__OFSUB__(v4, v9))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v11 = v5 - v4;
  v12 = __DataStorage._length.getter();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  memset((v8 + v10), a2, v13);
}

uint64_t sub_10022D598(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return Data._Representation.replaceSubrange(_:with:count:)();
    }

    goto LABEL_10;
  }

  if (v2 == 2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
    a1 = __DataStorage._bytes.getter();
    if (a1)
    {
      a1 = __DataStorage._offset.getter();
      if (__OFSUB__(v3, a1))
      {
        goto LABEL_16;
      }
    }

    if (!__OFSUB__(v4, v3))
    {
LABEL_13:
      __DataStorage._length.getter();
      return Data._Representation.replaceSubrange(_:with:count:)();
    }

    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!__DataStorage._bytes.getter() || !__OFSUB__(v5, __DataStorage._offset.getter()))
      {
        goto LABEL_13;
      }

LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  return Data._Representation.replaceSubrange(_:with:count:)();
}

uint64_t sub_10022D78C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  ObjectType = swift_getObjectType();
  v8 = sub_1002230A4();
  (*(v5 + 32))(&v8, ObjectType, v5);
}

uint64_t sub_10022D830(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  ObjectType = swift_getObjectType();
  v8 = sub_1002230A4();
  (*(v5 + 16))(&v8, ObjectType, v5);
}

uint64_t sub_10022D934(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10022D96C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10022D9C4(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_10022DA5C(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v39 = *(v3 - 8);
  v4 = *(v39 + 64);
  __chkstk_darwin(v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v7 = *(a1 + 16);
  }

  result = _swiftEmptyArrayStorage;
  if (v7)
  {
    v47 = _swiftEmptyArrayStorage;
    sub_10019F420(0, v7 & ~(v7 >> 63), 0);
    v42 = v47;
    if (v40)
    {
      result = __CocoaSet.startIndex.getter();
    }

    else
    {
      v10 = -1 << *(a1 + 32);
      result = _HashTable.startBucket.getter();
      v9 = *(a1 + 36);
    }

    v44 = result;
    v45 = v9;
    v46 = v40 != 0;
    if ((v7 & 0x8000000000000000) == 0)
    {
      v11 = 0;
      v37 = v39 + 32;
      v38 = (v39 + 16);
      v12 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v12 = a1;
      }

      v34 = a1 + 56;
      v35 = v12;
      v32 = v1;
      v33 = a1 + 64;
      v36 = v7;
      while (v11 < v7)
      {
        if (__OFADD__(v11++, 1))
        {
          goto LABEL_37;
        }

        v15 = v44;
        v16 = v46;
        v41 = v45;
        v17 = sub_10008EDB4(v44, v45, v46, a1);
        (*v38)(v6, v17 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v3);

        v18 = v42;
        v47 = v42;
        v20 = v42[2];
        v19 = v42[3];
        if (v20 >= v19 >> 1)
        {
          sub_10019F420(v19 > 1, v20 + 1, 1);
          v18 = v47;
        }

        v18[2] = v20 + 1;
        v21 = (*(v39 + 80) + 32) & ~*(v39 + 80);
        v42 = v18;
        result = (*(v39 + 32))(v18 + v21 + *(v39 + 72) * v20, v6, v3);
        if (v40)
        {
          if (!v16)
          {
            goto LABEL_42;
          }

          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v7 = v36;
          sub_100068FC4(&qword_100502C08, &qword_100409CC8);
          v13 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          result = v13(v43, 0);
          if (v11 == v7)
          {
LABEL_34:
            sub_1000937D4(v44, v45, v46);
            return v42;
          }
        }

        else
        {
          if (v16)
          {
            goto LABEL_43;
          }

          if ((v15 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          v22 = 1 << *(a1 + 32);
          if (v15 >= v22)
          {
            goto LABEL_38;
          }

          v23 = v15 >> 6;
          v24 = *(v34 + 8 * (v15 >> 6));
          if (((v24 >> v15) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(a1 + 36) != v41)
          {
            goto LABEL_40;
          }

          v25 = v24 & (-2 << (v15 & 0x3F));
          if (v25)
          {
            v22 = __clz(__rbit64(v25)) | v15 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v26 = v23 << 6;
            v27 = v23 + 1;
            v28 = (v33 + 8 * v23);
            while (v27 < (v22 + 63) >> 6)
            {
              v30 = *v28++;
              v29 = v30;
              v26 += 64;
              ++v27;
              if (v30)
              {
                result = sub_1000937D4(v15, v41, 0);
                v22 = __clz(__rbit64(v29)) + v26;
                goto LABEL_33;
              }
            }

            result = sub_1000937D4(v15, v41, 0);
          }

LABEL_33:
          v31 = *(a1 + 36);
          v44 = v22;
          v45 = v31;
          v46 = 0;
          v7 = v36;
          if (v11 == v36)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}

void *sub_10022DE8C(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for Peer();
    sub_10023E228(&qword_100503F20, type metadata accessor for Peer);
    result = Set.Iterator.init(_cocoa:)();
    v1 = v15;
    v3 = v16;
    v4 = v17;
    v5 = v18;
    v6 = v19;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  while (v1 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (type metadata accessor for Peer(), swift_dynamicCast(), !v14))
    {
LABEL_21:
      sub_100093854();
      return _swiftEmptyArrayStorage;
    }

LABEL_16:
    type metadata accessor for AlishaPeer();
    if (swift_dynamicCastClass())
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v13 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    else
    {
    }
  }

  v10 = v5;
  v11 = v6;
  if (v6)
  {
LABEL_12:
    v6 = (v11 - 1) & v11;
    v12 = *(*(v1 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v11)))));

    if (!v12)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v5 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v5 >= ((v4 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v11 = *(v3 + 8 * v5);
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10022E104(void *a1, int a2)
{
  v3 = v2;
  LODWORD(v63) = a2;
  v66 = a1;
  v4 = *v2;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = v6[8];
  __chkstk_darwin(v5);
  v9 = (&v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v10 = qword_10051B7F0;
  *v9 = qword_10051B7F0;
  v11 = enum case for DispatchPredicate.onQueue(_:);
  v12 = v6[13];
  v12(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v64 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  v13 = v6[1];
  v13(v9, v5);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_41:
    swift_once();
    goto LABEL_7;
  }

  v61 = v11;
  v62 = v6 + 13;
  v58 = v4;
  v14 = OBJC_IVAR____TtC10seserviced6Alisha_logger;

  v65 = v14;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();

  v17 = os_log_type_enabled(v15, v16);
  v59 = v13;
  v60 = v12;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v67[0] = v19;
    *v18 = 136315138;
    v20 = UUID.uuidString.getter();
    v22 = v5;
    v23 = v3;
    v24 = sub_1002FFA0C(v20, v21, v67);

    *(v18 + 4) = v24;
    v3 = v23;
    v5 = v22;
    _os_log_impl(&_mh_execute_header, v15, v16, "Peer paired %s", v18, 0xCu);
    sub_1000752F4(v19);
  }

  v25 = qword_1005019E8;

  if (v25 != -1)
  {
    goto LABEL_41;
  }

LABEL_7:
  v26 = swift_allocObject();
  v27 = v66;
  *(v26 + 16) = sub_10023F6F8;
  *(v26 + 24) = v27;

  v28 = sub_1000CAA04();

  v29 = sub_1000CA810(v28);
  if (!v29)
  {
  }

  v30 = v29;
  v66 = [objc_allocWithZone(SESConfigDCK) init];
  v31 = sub_10022FF88(v30, v66);
  *&v31[OBJC_IVAR____TtC10seserviced10AlishaPeer_version] = v63;
  v32 = [v30 getEndpointUser];
  if (!v32)
  {
    v31[OBJC_IVAR____TtC10seserviced4Peer_expressState] = 1;
  }

  v65 = v3;
  if (qword_100501D78 != -1)
  {
    v32 = swift_once();
  }

  v67[0] = v31;
  v33 = *(off_10050B110 + 3);
  __chkstk_darwin(v32);
  v63 = v34;
  *(&v58 - 2) = v34;
  *(&v58 - 1) = v67;
  os_unfair_lock_lock((v33 + 32));
  sub_10023FAA4((v33 + 16));
  os_unfair_lock_unlock((v33 + 32));
  if (qword_100501B98 != -1)
  {
    swift_once();
  }

  v35 = qword_10051B5F8;
  sub_100252B08(v31, 0, 1);
  if (qword_100501BA0 != -1)
  {
    swift_once();
  }

  v36 = qword_10051B600;
  v37 = v64;
  *v9 = v64;
  v60(v9, v61, v5);
  v38 = v37;
  LOBYTE(v37) = _dispatchPreconditionTest(_:)();
  v59(v9, v5);
  if (v37)
  {
    if (qword_100501B70 == -1)
    {
      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_20:
  v39 = qword_10051B5B0;

  v40 = sub_10024F2B4(v39, v31);

  v41 = sub_1000CA828(v40);

  if (v41)
  {
    type metadata accessor for UWBAlishaSession();
    if (swift_dynamicCastClass())
    {
      v68 = type metadata accessor for AlishaUWB();
      v69 = &off_1004CD000;
      v67[0] = v36;

      sub_1002473F0(v31, v67);

      sub_1000752F4(v67);
    }

    else
    {
    }
  }

  v42 = sub_1000CAAC4();

  v43 = sub_100239364(v42, v35);

  if (qword_100501960 != -1)
  {
    swift_once();
  }

  v44 = sub_10022DA5C(v42);
  v45 = sub_1000E0348(v44);

  v48 = sub_100238B50(v43, v46, v47);

  if ((v48 & 0x100) != 0)
  {
    v49 = -120;
  }

  else
  {
    v49 = v48;
  }

  sub_1000F6564(0, v45, v49);

  if (qword_100501928 != -1)
  {
    swift_once();
  }

  v68 = v58;
  v69 = &off_1004CC6C0;
  v67[0] = v65;

  sub_1000BAF34(v67, 0);
  sub_1000752F4(v67);
  v50 = objc_opt_self();
  sub_10004D584(v50, @"connectionCount");
  if (qword_100501A58 != -1)
  {
    swift_once();
  }

  result = sub_10013044C(0xD00000000000001ALL, 0x80000001004629D0);
  if (v52 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v53 = result;
    v54 = v52;

    v55 = sub_1001C1BA4(v53, v54);
    sub_10006A2D0(v53, v54);
    if (*(v55 + 16) == 1)
    {
      if (qword_1005018F0 != -1)
      {
        swift_once();
      }

      v56 = *(v55 + 24);

      sub_100076084(v57);
    }
  }

  return result;
}

void sub_10022EB94()
{
  v0 = objc_opt_self();

  sub_10004EBC8(v0, 0);
}

uint64_t sub_10022EC08(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_100068FC4(&unk_100503FA0, &unk_10040B2F0);
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a4;
  v7[4] = a3;

  v8 = a3;
  sub_1000D5684(&v10, v7);
}

uint64_t sub_10022ECB0(uint64_t a1, void *aBlock)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = _Block_copy(aBlock);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;

  v3(sub_10023F09C, v5);
}

uint64_t sub_10022ED44()
{
  v0 = type metadata accessor for Alisha(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_10022EDF4();
  qword_10051B5A0 = result;
  return result;
}

void sub_10022ED84()
{
  v0 = objc_allocWithZone(NSBackgroundActivityScheduler);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithIdentifier:v1];

  qword_1005076C8 = v2;
}

uint64_t sub_10022EDF4()
{
  *(v0 + 16) = 0;
  String.init(cString:)();
  Logger.init(subsystem:category:)();
  *(v0 + OBJC_IVAR____TtC10seserviced6Alisha_isLowPowerModeEnabled) = 0;
  *(v0 + OBJC_IVAR____TtC10seserviced6Alisha_isPairingInProgress) = 0;
  *(v0 + OBJC_IVAR____TtC10seserviced6Alisha_maxMessageLength) = 1024;
  *(v0 + OBJC_IVAR____TtC10seserviced6Alisha_powerLogTimer) = 0;
  *(v0 + OBJC_IVAR____TtC10seserviced6Alisha_powerLogTimerInterval) = 0x40DC200000000000;
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v3[4] = sub_10023BB6C;
  v3[5] = v0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_100193978;
  v3[3] = &unk_1004CC6D0;
  v1 = _Block_copy(v3);

  os_state_add_handler();
  _Block_release(v1);
  return v0;
}

_DWORD *sub_10022EF64()
{
  v1 = *(v0 + 16);
  v12 = &type metadata for Bool;
  LOBYTE(v11) = v1;
  sub_100075D50(&v11, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v10, 0x6E696E6E75527369, 0xE900000000000067, isUniquelyReferenced_nonNull_native);
  v3 = *(v0 + OBJC_IVAR____TtC10seserviced6Alisha_isLowPowerModeEnabled);
  v12 = &type metadata for Bool;
  LOBYTE(v11) = v3;
  sub_100075D50(&v11, v10);
  v4 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v10, 0xD000000000000015, 0x8000000100468590, v4);
  v5 = *(v0 + OBJC_IVAR____TtC10seserviced6Alisha_isPairingInProgress);
  v12 = &type metadata for Bool;
  LOBYTE(v11) = v5;
  sub_100075D50(&v11, v10);
  v6 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v10, 0xD000000000000013, 0x80000001004685B0, v6);
  sub_1001950D4(_swiftEmptyDictionarySingleton);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v8 = sub_100015DA0("alisha.state", isa);

  return v8;
}

void sub_10022F108()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v6 = qword_10051B7F0;
  *v5 = qword_10051B7F0;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (qword_100501B68 != -1)
  {
LABEL_7:
    swift_once();
  }

  v8 = qword_1005076C8;
  [qword_1005076C8 setPreregistered:1];
  v9 = swift_allocObject();
  *(v9 + 16) = v0;
  aBlock[4] = sub_10023F05C;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10022ECB0;
  aBlock[3] = &unk_1004CC7C0;
  v10 = _Block_copy(aBlock);

  [v8 scheduleWithBlock:v10];
  _Block_release(v10);
}

void sub_10022F334()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  __chkstk_darwin(v3);
  v7 = (v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_55;
  }

  while (1)
  {
    v8 = qword_10051B7F0;
    *v7 = qword_10051B7F0;
    v9 = enum case for DispatchPredicate.onQueue(_:);
    v10 = v4 + 104;
    v55 = *(v4 + 13);
    v55(v7, enum case for DispatchPredicate.onQueue(_:), v3);
    v56 = v8;
    LOBYTE(v8) = _dispatchPreconditionTest(_:)();
    v12 = *(v4 + 1);
    v11 = v4 + 8;
    v54 = v12;
    v12(v7, v3);
    if ((v8 & 1) == 0)
    {
      __break(1u);
LABEL_57:
      v19 = swift_once();
      goto LABEL_10;
    }

    v52 = v9;
    v53 = v10;
    v13 = *(v1 + 16);
    v14 = Logger.logObject.getter();
    if (v13)
    {
      v15 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "Alisha is already running", v16, 2u);
      }

      return;
    }

    v17 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v14, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v14, v17, "Starting Alisha", v18, 2u);
    }

    *(v1 + 16) = 1;
    if (qword_1005019E8 != -1)
    {
      goto LABEL_57;
    }

LABEL_10:
    v20 = *(off_100504A68 + 3);
    __chkstk_darwin(v19);
    v21 = v56;
    v47[-2] = v1;
    v47[-1] = v21;
    os_unfair_lock_lock(v20 + 8);
    v22 = 0;
    sub_10023EFA0(&v20[4]);
    os_unfair_lock_unlock(v20 + 8);
    sub_100238F20(v1);
    v23 = sub_1000CAA04();
    v24 = v23;
    v25 = v23 & 0xC000000000000001;
    if ((v23 & 0xC000000000000001) != 0)
    {
      if (!__CocoaSet.count.getter())
      {
        goto LABEL_15;
      }
    }

    else if (!*(v23 + 16))
    {
LABEL_15:

      goto LABEL_35;
    }

    v48 = v2;
    v50 = v11;
    v51 = v3;
    v57 = [objc_allocWithZone(SESConfigDCK) init];
    v49 = v7;
    v47[2] = v24;
    if (v25)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      sub_10009393C(0, &qword_100503F00, SEEndPoint_ptr);
      sub_10023EFC4();
      Set.Iterator.init(_cocoa:)();
      v24 = v59[6];
      v2 = v59[7];
      v26 = v59[8];
      v27 = v59[9];
      v4 = v59[10];
    }

    else
    {
      v28 = -1 << *(v24 + 32);
      v2 = (v24 + 56);
      v26 = ~v28;
      v29 = -v28;
      v30 = v29 < 64 ? ~(-1 << v29) : -1;
      v4 = (v30 & *(v24 + 56));

      v27 = 0;
    }

    v47[1] = v26;
    v7 = ((v26 + 64) >> 6);
    if (v24 < 0)
    {
      break;
    }

LABEL_21:
    v31 = v27;
    v32 = v4;
    v33 = v27;
    if (v4)
    {
LABEL_25:
      v3 = (v32 - 1) & v32;
      v34 = *(*(v24 + 48) + ((v33 << 9) | (8 * __clz(__rbit64(v32)))));
      if (v34)
      {
        goto LABEL_29;
      }

      goto LABEL_31;
    }

    while (1)
    {
      v33 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v33 >= v7)
      {
        goto LABEL_31;
      }

      v32 = *&v2[8 * v33];
      ++v31;
      if (v32)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_55:
    swift_once();
  }

  while (1)
  {
    v35 = __CocoaSet.Iterator.next()();
    if (!v35)
    {
      break;
    }

    v58 = v35;
    sub_10009393C(0, &qword_100503F00, SEEndPoint_ptr);
    swift_dynamicCast();
    v34 = v59[0];
    v33 = v27;
    v3 = v4;
    if (!v59[0])
    {
      break;
    }

LABEL_29:
    v59[0] = v34;
    sub_10022FB8C(v59, v1, v57);

    v27 = v33;
    v4 = v3;
    if ((v24 & 0x8000000000000000) == 0)
    {
      goto LABEL_21;
    }
  }

LABEL_31:
  sub_100093854();

  v7 = v49;
  if (qword_100501928 != -1)
  {
    goto LABEL_59;
  }

  while (1)
  {
    v59[3] = v48;
    v59[4] = &off_1004CC6C0;
    v59[0] = v1;

    sub_1000BAF34(v59, 0);
    v3 = v51;
    if (v22)
    {
    }

    sub_1000752F4(v59);
LABEL_35:
    if (qword_100501B98 != -1)
    {
      swift_once();
    }

    sub_100251F90();
    if (qword_100501C80 != -1)
    {
      swift_once();
    }

    sub_1002DB638();
    if (qword_100501BA0 != -1)
    {
      swift_once();
    }

    sub_100255BA4();
    if (qword_100501948 != -1)
    {
      swift_once();
    }

    sub_1000C2F00();
    sub_10022F108();
    sub_1002305D4();
    if (qword_100501960 != -1)
    {
      swift_once();
    }

    v22 = qword_10051B288;
    v36 = v55;
    v37 = v56;
    *v7 = v56;
    v36(v7, v52, v3);
    v38 = v37;
    LOBYTE(v37) = _dispatchPreconditionTest(_:)();
    v54(v7, v3);
    if (v37)
    {
      break;
    }

    __break(1u);
LABEL_59:
    swift_once();
  }

  v39 = *(v22 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralState);
  if (v39 == 10 || v39 == 5)
  {
    v40 = objc_opt_self();
    sub_10004EBC8(v40, 0);
  }

  else
  {
    v41 = OBJC_IVAR____TtC10seserviced6DSKBLE_closuresOnCentralState;
    swift_beginAccess();
    v42 = *(v22 + v41);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v22 + v41) = v42;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v42 = sub_10012E6B0(0, v42[2] + 1, 1, v42);
      *(v22 + v41) = v42;
    }

    v45 = v42[2];
    v44 = v42[3];
    if (v45 >= v44 >> 1)
    {
      v42 = sub_10012E6B0((v44 > 1), v45 + 1, 1, v42);
    }

    v42[2] = v45 + 1;
    v46 = &v42[3 * v45];
    *(v46 + 32) = 1;
    v46[5] = sub_10022EB94;
    v46[6] = 0;
    *(v22 + v41) = v42;
    swift_endAccess();
  }
}

void sub_10022FB8C(char **a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  v5 = sub_10022FF88(*a1, a3);
  if (v3)
  {

    v6 = v4;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = v30;
      *v9 = 136315138;
      v10 = [v6 publicKeyIdentifier];
      v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      sub_100288788(v11, v13);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
      v14 = BidirectionalCollection<>.joined(separator:)();
      v16 = v15;
      sub_10006A178(v11, v13);

      v17 = sub_1002FFA0C(v14, v16, &v31);

      *(v9 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v7, v8, "Failed to initialize peer for %s", v9, 0xCu);
      sub_1000752F4(v30);
    }

    else
    {
    }
  }

  else
  {
    v18 = v5;
    v19 = qword_100501D78;
    v20 = swift_retain_n();
    if (v19 != -1)
    {
      v20 = swift_once();
    }

    v31 = v18;
    v21 = *(off_10050B110 + 3);
    __chkstk_darwin(v20);
    os_unfair_lock_lock((v21 + 32));
    sub_10023F02C((v21 + 16));
    os_unfair_lock_unlock((v21 + 32));
    v22 = [v4 supportedRKEFunctions];
    if (v22 && ((v23 = v22, sub_10009393C(0, &qword_100504C80, NSNumber_ptr), v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v23, v24 >> 62) ? (v25 = _CocoaArrayWrapper.endIndex.getter()) : (v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v25))
    {
      v26 = *(v18 + OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier);
      v27 = *(v18 + OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier + 8);
      sub_10006A2BC(v26, v27);

      v28 = *(v18 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
      v29 = *(v18 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
      sub_10006A2BC(v28, v29);

      sub_1003375E0(0xD000000000000042, 0x80000001004612F0, v26, v27, v28, v29, 0);

      sub_10006A2D0(v28, v29);
      sub_10006A2D0(v26, v27);
    }

    else
    {
    }
  }
}

char *sub_10022FF88(char *a1, void *a2)
{
  v83 = a2;
  v4 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v75 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v75 - v15;
  __chkstk_darwin(v14);
  v18 = &v75 - v17;
  v84 = a1;
  v19 = [a1 bleUUID];
  if (!v19)
  {
    goto LABEL_6;
  }

  v82 = v18;
  a1 = v19;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v85 = v9;

  UUID.init(uuidString:)();
  v20 = v85;

  if ((*(v20 + 48))(v7, 1, v8) == 1)
  {
    sub_100075768(v7, &unk_10050BE80, &unk_10040B360);
LABEL_6:
    sub_100079E24();
    swift_allocError();
    *v26 = 0;
    swift_willThrow();
    return a1;
  }

  a1 = v82;
  (*(v20 + 32))(v82, v7, v8);
  v21 = v84;
  v22 = sub_100235DE8(v84);
  if (v2)
  {

    (*(v20 + 8))(a1, v8);
    goto LABEL_6;
  }

  v28 = v22;
  v76 = v25;
  v77 = v24;
  v78 = v23;
  v81 = *(v20 + 16);
  v79 = v20 + 16;
  v81(v16, a1, v8);
  v29 = [v21 readerConfigID];
  if (v29)
  {
    v30 = v29;
    v80 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;
  }

  else
  {
    v80 = 0;
    v32 = 0xF000000000000000;
  }

  v33 = type metadata accessor for AlishaPeer();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  v36 = swift_allocObject();
  *(v36 + OBJC_IVAR____TtC10seserviced10AlishaPeer_version) = 256;
  type metadata accessor for AlishaPeer.Configuration();
  v37 = swift_allocObject();
  *(v37 + 64) = 0;
  *(v37 + 72) = _swiftEmptyArrayStorage;
  *(v37 + 80) = 0;
  *(v37 + 88) = &_swiftEmptyDictionarySingleton;
  *(v37 + 96) = xmmword_10040FBF0;
  *(v37 + 112) = 0;
  v39 = v77;
  v38 = v78;
  *(v37 + 16) = v28;
  *(v37 + 24) = v38;
  v40 = v76;
  *(v37 + 32) = v39;
  *(v37 + 40) = v40;
  v41 = v80;
  *(v37 + 48) = v80;
  *(v37 + 56) = v32;
  sub_10006A2BC(v41, v32);
  sub_10006A2BC(v41, v32);
  sub_10006A2D0(0, 0xF000000000000000);
  sub_100286CD0(v83, 0, 0xF000000000000000);
  sub_10006A2D0(v41, v32);
  *(v36 + OBJC_IVAR____TtC10seserviced10AlishaPeer_configuration) = v37;
  v81(v13, v16, v8);
  a1 = sub_10025CF18(v13);
  sub_10006A2D0(v41, v32);
  v42 = *(v85 + 8);
  v85 += 8;
  v83 = v42;
  (v42)(v16, v8);

  v43 = sub_10013044C(0xD00000000000001ALL, 0x80000001004629D0);
  v44 = &a1[OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier];
  v45 = *&a1[OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier];
  v46 = *&a1[OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier + 8];
  *v44 = v43;
  v44[1] = v47;
  sub_10006A2D0(v45, v46);
  if (qword_100501A58 != -1)
  {
    swift_once();
  }

  v81 = qword_10051B3F0;
  v48 = v84;
  v49 = [v84 publicKeyIdentifier];
  v50 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v52 = v51;

  v53 = [v48 appletIdentifier];
  v54 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v56 = v55;

  v57 = v50;
  LOBYTE(v50) = sub_1001C1F18(v50, v52, v54, v56);
  v58 = v54;
  v59 = v48;
  sub_10006A178(v58, v56);
  sub_10006A178(v57, v52);
  v60 = OBJC_IVAR____TtC10seserviced4Peer_expressState;
  a1[OBJC_IVAR____TtC10seserviced4Peer_expressState] = v50;
  v61 = [v48 trackingReceipt];
  if (v61)
  {
    v62 = v61;
    v63 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v64;

    sub_10006A178(v63, v65);
    v66 = 2;
  }

  else
  {
    v66 = 1;
  }

  a1[OBJC_IVAR____TtC10seserviced4Peer_pairingState] = v66;
  v67 = [v59 publicKeyIdentifier];
  v68 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v70 = v69;

  v71 = &a1[OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier];
  v72 = *&a1[OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier];
  v73 = *&a1[OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8];
  *v71 = v68;
  v71[1] = v70;
  sub_10006A2D0(v72, v73);
  a1[OBJC_IVAR____TtC10seserviced4Peer_type] = 0;
  LODWORD(v67) = a1[v60];

  if (v67)
  {
    v74 = objc_opt_self();
    sub_10004EBC8(v74, 3);
  }

  (v83)(v82, v8);
  return a1;
}

void sub_1002305D4()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v6 = qword_10051B7F0;
  *v5 = qword_10051B7F0;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  v8 = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v5, v1);
  if (v8)
  {
    v9 = objc_allocWithZone(SESTimer);
    aBlock[4] = sub_10023F048;
    aBlock[5] = v0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100080830;
    aBlock[3] = &unk_1004CC770;
    v10 = _Block_copy(aBlock);

    v11 = sub_1003AE50C(v9, v7, v10);
    _Block_release(v10);

    v12 = *(v0 + OBJC_IVAR____TtC10seserviced6Alisha_powerLogTimer);
    *(v0 + OBJC_IVAR____TtC10seserviced6Alisha_powerLogTimer) = v11;

    sub_100237EE0();
  }

  else
  {
    __break(1u);
  }
}

void sub_1002307D0()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  i = *(v2 - 1);
  v4 = *(i + 64);
  __chkstk_darwin(v2);
  v6 = (&v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_50;
  }

  while (1)
  {
    v7 = qword_10051B7F0;
    *v6 = qword_10051B7F0;
    (*(i + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
    v8 = v7;
    LOBYTE(v7) = _dispatchPreconditionTest(_:)();
    (*(i + 8))(v6, v2);
    if ((v7 & 1) == 0)
    {
      __break(1u);
LABEL_52:
      swift_once();
      goto LABEL_7;
    }

    v9 = *(v1 + 16);
    v10 = Logger.logObject.getter();
    if (v9 != 1)
    {
      break;
    }

    v11 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Stopping Alisha", v12, 2u);
    }

    if (qword_1005019E8 != -1)
    {
      goto LABEL_52;
    }

LABEL_7:
    v13 = *(off_100504A68 + 3);
    os_unfair_lock_lock((v13 + 32));
    v6 = 0;
    sub_10023ECA0((v13 + 16));
    os_unfair_lock_unlock((v13 + 32));
    if (qword_100501928 != -1)
    {
      swift_once();
    }

    sub_1000BB4B4(0);
    if (qword_100501908 != -1)
    {
      swift_once();
    }

    sub_10009D764();
    if (qword_100501B98 != -1)
    {
      swift_once();
    }

    sub_100252624();
    if (qword_100501C80 != -1)
    {
      swift_once();
    }

    sub_1002DB870();
    if (qword_100501BA0 != -1)
    {
      swift_once();
    }

    sub_100255F64();
    if (qword_100501948 != -1)
    {
      swift_once();
    }

    sub_1000C3230();
    if (qword_100501C40 != -1)
    {
      swift_once();
    }

    sub_1002A7730(0);
    if (qword_100501D78 != -1)
    {
      swift_once();
    }

    v2 = off_10050B110;
    v39 = v1;
    v40 = off_10050B110;
    v14 = sub_1000CAAC4();
    v38 = v14;
    if ((v14 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      v2 = __CocoaSet.makeIterator()();
      type metadata accessor for Peer();
      sub_10023E228(&qword_100503F20, type metadata accessor for Peer);
      Set.Iterator.init(_cocoa:)();
      v16 = v42[2];
      v15 = v42[3];
      v17 = v42[4];
      v18 = v42[5];
      v1 = v42[6];
    }

    else
    {
      v21 = -1 << *(v14 + 32);
      v15 = v14 + 56;
      v17 = ~v21;
      v22 = -v21;
      if (v22 < 64)
      {
        v23 = ~(-1 << v22);
      }

      else
      {
        v23 = -1;
      }

      v1 = v23 & *(v14 + 56);
      v18 = 0;
    }

    v37 = v17;
    for (i = (v17 + 64) >> 6; v16 < 0; v1 = v27)
    {
      v30 = __CocoaSet.Iterator.next()();
      if (!v30)
      {
        goto LABEL_43;
      }

      v41 = v30;
      type metadata accessor for Peer();
      v29 = swift_dynamicCast();
      v28 = v42[0];
      v26 = v18;
      v27 = v1;
      if (!v42[0])
      {
        goto LABEL_43;
      }

LABEL_41:
      v42[0] = v28;
      v31 = v40[3];
      __chkstk_darwin(v29);
      v2 = &v37 - 4;
      *(&v37 - 2) = v42;
      *(&v37 - 1) = v32;
      os_unfair_lock_lock((v31 + 32));
      sub_10023FA8C((v31 + 16));
      os_unfair_lock_unlock((v31 + 32));

      v18 = v26;
    }

    v24 = v18;
    v25 = v1;
    v26 = v18;
    if (v1)
    {
LABEL_37:
      v27 = (v25 - 1) & v25;
      v28 = *(*(v16 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v25)))));

      if (v28)
      {
        goto LABEL_41;
      }

LABEL_43:
      sub_100093854();

      if (qword_100501B68 != -1)
      {
        swift_once();
      }

      [qword_1005076C8 invalidate];
      v33 = OBJC_IVAR____TtC10seserviced6Alisha_powerLogTimer;
      v34 = v39;
      v35 = *(v39 + OBJC_IVAR____TtC10seserviced6Alisha_powerLogTimer);
      if (v35)
      {
        sub_1003AE754(v35);
        v36 = *(v34 + v33);
      }

      else
      {
        v36 = 0;
      }

      *(v34 + v33) = 0;

      *(v34 + OBJC_IVAR____TtC10seserviced6Alisha_isLowPowerModeEnabled) = 0;
      *(v34 + OBJC_IVAR____TtC10seserviced6Alisha_isPairingInProgress) = 0;
      *(v34 + 16) = 0;
      return;
    }

    while (1)
    {
      v26 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v26 >= i)
      {
        goto LABEL_43;
      }

      v25 = *(v15 + 8 * v26);
      ++v24;
      if (v25)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_50:
    swift_once();
  }

  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v10, v19, "Alisha is not running", v20, 2u);
  }
}

void sub_100230F04(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = (&v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v13 = qword_10051B7F0;
  *v12 = qword_10051B7F0;
  (*(v9 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v8);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v12, v8);
  if (v13)
  {
    if (qword_100501DA0 == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_5:
  sub_100338760(a3 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, a1, a2);
  if ((*(a3 + OBJC_IVAR____TtC10seserviced4Peer_isConnected) & 1) == 0)
  {
    if (qword_100501B98 != -1)
    {
      swift_once();
    }

    sub_100252B08(a3, *(v4 + OBJC_IVAR____TtC10seserviced6Alisha_isLowPowerModeEnabled), 0);
    if (qword_100501960 != -1)
    {
      swift_once();
    }

    sub_1000F5CB8(a3);
  }
}

void sub_100231150(uint64_t a1, unint64_t a2, int64_t a3)
{
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = (&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v12 = qword_10051B7F0;
  *v11 = qword_10051B7F0;
  (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v11, v7);
  if (v12)
  {
    if (*(v3 + 16) == 1)
    {

      sub_10023BB88(a1, a2, 1, a3, v3, v3);
    }

    else
    {
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "Not running", v16, 2u);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100231354(unsigned __int8 a1, int a2, void *a3, unint64_t a4, uint64_t a5, unint64_t *a6, int64_t a7)
{
  v219 = a5;
  v217 = a6;
  v12 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  v209 = *(v12 - 8);
  v13 = *(v209 + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v216 = &v201 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v218 = (&v201 - v15);
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  v18 = v17[8];
  __chkstk_darwin(v16);
  v20 = (&v201 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v21 = qword_10051B7F0;
  *v20 = qword_10051B7F0;
  v22 = v17[13];
  v213 = enum case for DispatchPredicate.onQueue(_:);
  v214 = v17 + 13;
  v212 = v22;
  v22(v20);
  v210 = v21;
  v23 = _dispatchPreconditionTest(_:)();
  v24 = v17[1];
  v215 = v16;
  v211 = v24;
  v24(v20, v16);
  if ((v23 & 1) == 0)
  {
    __break(1u);
    goto LABEL_138;
  }

  v208 = v13;
  v25 = OBJC_IVAR____TtC10seserviced6Alisha_isPairingInProgress;
  if (*(v220 + OBJC_IVAR____TtC10seserviced6Alisha_isPairingInProgress))
  {
    goto LABEL_5;
  }

  if (*(a7 + OBJC_IVAR____TtC10seserviced4Peer_pairingState) == 2)
  {
    v30 = a1 - 1;
    if (*(v220 + OBJC_IVAR____TtC10seserviced6Alisha_isLowPowerModeEnabled) == 1 && v30 < 2)
    {
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v31, v32, "Command blocked because of low power mode", v33, 2u);
      }

      v34 = &off_1004C3AB0;
LABEL_15:
      v35 = sub_1002B3B94(v34);
      v37 = v36;
      v20 = sub_100239160(3, 17, v35, v36);
      v23 = v38;
      sub_10006A178(v35, v37);
      if (qword_100501960 == -1)
      {
LABEL_16:
        v39 = v20;
        v40 = v23;
        v41 = a7;
LABEL_17:
        sub_1000E71A0(v39, v40, v41);
        v42 = v20;
        v43 = v23;
LABEL_18:
        sub_10006A178(v42, v43);
        return;
      }

LABEL_138:
      swift_once();
      goto LABEL_16;
    }

    v44 = a1 == 1;
    if (v30 <= 1)
    {
      v45 = OBJC_IVAR____TtC10seserviced4Peer_expressState;
      if (*(a7 + OBJC_IVAR____TtC10seserviced4Peer_expressState) != 1)
      {

        v102 = Logger.logObject.getter();
        v103 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v102, v103))
        {
          v104 = swift_slowAlloc();
          v105 = swift_slowAlloc();
          v221 = v105;
          *v104 = 136315138;
          LOBYTE(v223) = *(a7 + v45);
          v106 = String.init<A>(describing:)();
          v108 = sub_1002FFA0C(v106, v107, &v221);

          *(v104 + 4) = v108;
          _os_log_impl(&_mh_execute_header, v102, v103, "Command blocked because of non express mode %s", v104, 0xCu);
          sub_1000752F4(v105);
        }

        v109 = sub_1002B3B94(&off_1004C3A10);
        v111 = v110;
        v112 = sub_100239160(3, 17, v109, v110);
        v114 = v113;
        sub_10006A178(v109, v111);
        if (qword_100501960 != -1)
        {
          swift_once();
        }

        sub_1000E71A0(v112, v114, a7);
        if (*(a7 + v45) == 2)
        {
          v115 = objc_opt_self();
          sub_10004EBC8(v115, 4);
          v116 = sub_1000E7974(a7);
          if (v116 != 2 && (v116 & 1) == 0)
          {
            sub_10004D584(v115, @"unlockNeededForCarActionCount");
            v117 = *(a7 + OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier + 8);
            if (v117 >> 60 != 15)
            {
              v118 = *(a7 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
              if (v118 >> 60 != 15)
              {
                v119 = *(a7 + OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier);
                v217 = *(a7 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
                v120 = v217;
                v218 = v119;
                v220 = "disconnectionCount";
                sub_100068FC4(&unk_100503EA0, &unk_1004101C0);
                inited = swift_initStackObject();
                *(inited + 16) = xmmword_1004098F0;
                *(inited + 32) = 0xD000000000000014;
                v219 = inited + 32;
                *(inited + 40) = 0x80000001004686F0;
                sub_10006A2BC(v119, v117);
                sub_10006A2BC(v120, v118);
                sub_10006A2BC(v119, v117);
                sub_10006A2BC(v120, v118);
                v221 = sub_100288788(v119, v117);
                v216 = sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
                sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
                v122 = BidirectionalCollection<>.joined(separator:)();
                v124 = v123;

                v221 = v122;
                v222 = v124;
                v125._countAndFlagsBits = 58;
                v125._object = 0xE100000000000000;
                String.append(_:)(v125);
                v126 = v217;
                v223 = sub_100288788(v217, v118);
                v127 = BidirectionalCollection<>.joined(separator:)();
                v129 = v128;

                v130._countAndFlagsBits = v127;
                v130._object = v129;
                String.append(_:)(v130);

                v131 = v221;
                v132 = v222;
                *(inited + 72) = &type metadata for String;
                *(inited + 48) = v131;
                *(inited + 56) = v132;
                v133 = sub_10008FFDC(inited);
                swift_setDeallocating();
                sub_100075768(v219, &qword_100507D30, &unk_100409C90);
                v134 = v218;
                sub_1003375E0(0xD000000000000025, v220 | 0x8000000000000000, v218, v117, v126, v118, v133);

                sub_10006A2D0(v126, v118);
                sub_10006A2D0(v134, v117);
                sub_10006A2D0(v126, v118);
                sub_10006A2D0(v134, v117);
              }
            }
          }
        }

        v42 = v112;
        v43 = v114;
        goto LABEL_18;
      }
    }
  }

  else
  {
    v44 = 0;
    if (a1 != 3 && a1 != 6)
    {
LABEL_5:

      v26 = v220;

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 67109376;
        *(v29 + 4) = *(v26 + v25);

        *(v29 + 8) = 1024;
        *(v29 + 10) = *(a7 + OBJC_IVAR____TtC10seserviced4Peer_pairingState) != 2;

        _os_log_impl(&_mh_execute_header, v27, v28, "Sending DEVICE_BUSY because pairing is in progress %{BOOL}d or peer is not fully paired %{BOOL}d", v29, 0xEu);
      }

      else
      {
      }

      v34 = &off_1004C3AD8;
      goto LABEL_15;
    }
  }

  v206 = v44;
  v205 = a1;
  v204 = a2;
  v201 = objc_opt_self();
  v46 = [v201 sessionManager];
  v47 = [v46 getActiveDCKSessions];

  sub_10009393C(0, &qword_100505370, off_1004BE540);
  v48 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v207 = a7;
  v203 = a4;
  v202 = a3;
  if (v48 >> 62)
  {
    v49 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v50 = 0;
  while (1)
  {
    if (v49 == v50)
    {

      v54 = v207;
      LODWORD(v55) = v204;
      v56 = v205;
      if (!v205)
      {
        goto LABEL_56;
      }

      if (v206)
      {
        if (qword_100501C80 != -1)
        {
          swift_once();
        }

        v57 = type metadata accessor for UUID();
        v58 = *(v57 - 8);
        v59 = v218;
        (*(v58 + 16))(v218, v219, v57);
        (*(v58 + 56))(v59, 0, 1, v57);
        sub_1002D9C74(v55, v202, v203, v54, 3, v59, v217, 0);
        goto LABEL_72;
      }

      if (v205 > 3)
      {
        if (v205 != 4)
        {
LABEL_67:
          if (v56 == 5)
          {
            if (v55 == 20)
            {
              if (qword_100501DB0 != -1)
              {
                swift_once();
              }

              sub_10034B6C0(v202, v203, v54);
              return;
            }

            goto LABEL_93;
          }

          if (v56 != 6)
          {
            goto LABEL_93;
          }

          if (qword_1005019F0 != -1)
          {
            swift_once();
          }

          v100 = type metadata accessor for UUID();
          v101 = *(v100 - 8);
          v59 = v218;
          (*(v101 + 16))(v218, v219, v100);
          (*(v101 + 56))(v59, 0, 1, v100);
          sub_100151780(v55, v202, v203, v54, 1, v59, 0, 1);
LABEL_72:
          sub_100075768(v59, &unk_10050BE80, &unk_10040B360);
          return;
        }

LABEL_61:
        if (v55 == 16)
        {
          v91 = &v54[OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier];
          v92 = *&v54[OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8];
          if (v92 >> 60 == 15)
          {

            v93 = Logger.logObject.getter();
            v94 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v93, v94))
            {
              v95 = swift_slowAlloc();
              v96 = swift_slowAlloc();
              v221 = v96;
              *v95 = 136315138;
              v97 = UUID.uuidString.getter();
              v99 = sub_1002FFA0C(v97, v98, &v221);

              *(v95 + 4) = v99;
              _os_log_impl(&_mh_execute_header, v93, v94, "Peer missing key identifier %s", v95, 0xCu);
              sub_1000752F4(v96);
            }
          }

          else
          {
            v177 = *v91;
            sub_100069E2C(*v91, *&v54[OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8]);
            v178 = Logger.logObject.getter();
            v179 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v178, v179))
            {
              v180 = swift_slowAlloc();
              *v180 = 0;
              _os_log_impl(&_mh_execute_header, v178, v179, "Passthrough message received", v180, 2u);
            }

            v181 = [v201 sessionManager];
            isa = Data._bridgeToObjectiveC()().super.isa;
            v183 = Data._bridgeToObjectiveC()().super.isa;
            [v181 didReceivePassthroughMessage:isa keyIdentifier:v183];

            sub_10006A2D0(v177, v92);
          }

          return;
        }

        v76 = Logger.logObject.getter();
        v156 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v76, v156))
        {
          v157 = swift_slowAlloc();
          *v157 = 16777472;
          v157[4] = v55;
          _os_log_impl(&_mh_execute_header, v76, v156, "Incorrect passthrough message identifier %hhu", v157, 5u);
          goto LABEL_96;
        }

        goto LABEL_97;
      }

      if (v205 != 2)
      {
        if (v205 == 3)
        {
          if (v204 == 17)
          {
            goto LABEL_121;
          }

          goto LABEL_87;
        }

LABEL_93:
        v143 = v202;
        v144 = v203;
        sub_100069E2C(v202, v203);
        v76 = Logger.logObject.getter();
        v145 = static os_log_type_t.info.getter();
        sub_10006A178(v143, v144);
        if (os_log_type_enabled(v76, v145))
        {
          v146 = swift_slowAlloc();
          v147 = swift_slowAlloc();
          v148 = v55;
          v81 = v147;
          v221 = v147;
          *v146 = 16777986;
          *(v146 + 4) = v205;
          *(v146 + 5) = 256;
          *(v146 + 7) = v148;
          *(v146 + 8) = 2080;
          v223 = sub_100288788(v143, v144);
          sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
          sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
          v149 = BidirectionalCollection<>.joined(separator:)();
          v151 = v150;

          v152 = sub_1002FFA0C(v149, v151, &v221);

          *(v146 + 10) = v152;
          v86 = "Ignoring unknown message type %hhu identifier %hhu payload %s";
          v87 = v145;
          v88 = v76;
          v89 = v146;
          v90 = 18;
          goto LABEL_95;
        }

        goto LABEL_97;
      }

      if (qword_100501BA0 != -1)
      {
        swift_once();
      }

      v158 = qword_10051B600;
      v159 = type metadata accessor for UUID();
      v160 = *(v159 - 8);
      v161 = v216;
      (*(v160 + 16))(v216, v219, v159);
      (*(v160 + 56))(v161, 0, 1, v159);
      v162 = v210;
      *v20 = v210;
      v163 = v215;
      v212(v20, v213, v215);
      v164 = v162;
      LOBYTE(v162) = _dispatchPreconditionTest(_:)();
      v211(v20, v163);
      if (v162)
      {
        if (qword_100501B70 == -1)
        {
          goto LABEL_107;
        }
      }

      else
      {
        __break(1u);
      }

      swift_once();
LABEL_107:
      v165 = qword_10051B5B0;

      v166 = sub_10024F2B4(v165, v54);

      v20 = sub_1000CA828(v166);

      if (!v20)
      {
        goto LABEL_125;
      }

      type metadata accessor for UWBAlishaSession();
      v167 = swift_dynamicCastClass();
      if (!v167)
      {
        goto LABEL_124;
      }

      if (*(v167 + OBJC_IVAR____TtC10seserviced10UWBSession_state) - 5 < 2)
      {
        v168 = Logger.logObject.getter();
        v169 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v168, v169))
        {
          v170 = swift_slowAlloc();
          *v170 = 0;
          _os_log_impl(&_mh_execute_header, v168, v169, "Command temporarily blocked because the UWB session is suspended", v170, 2u);
        }

        if (qword_100501B60 != -1)
        {
          swift_once();
        }

        v171 = sub_1002B3B94(&off_1004C3998);
        v173 = v172;
        v174 = sub_100239160(3, 17, v171, v172);
        v176 = v175;
        sub_10006A178(v171, v173);
        if (qword_100501960 != -1)
        {
          swift_once();
        }

        sub_1000E71A0(v174, v176, v54);

        sub_10006A178(v174, v176);
        goto LABEL_136;
      }

      v191 = 3;
      if (v55 != 18 && v55 != 9)
      {
        if (v55 != 3)
        {
LABEL_133:
          if (qword_100501B60 != -1)
          {
            swift_once();
          }

          v193 = sub_100239160(2, v55, v202, v203);
          v195 = v194;
          v196 = v218;
          sub_1000756F8(v216, v218);
          v197 = (*(v209 + 80) + 40) & ~*(v209 + 80);
          v198 = (v208 + v197 + 7) & 0xFFFFFFFFFFFFFFF8;
          v199 = swift_allocObject();
          v199[2] = v158;
          v199[3] = v54;
          v199[4] = 3;
          sub_100075390(v196, v199 + v197);
          v200 = v199 + v198;
          *v200 = v217;
          v200[8] = 0;

          sub_100240FEC(v193, v195, sub_10023F5BC, v199);

          sub_10006A178(v193, v195);

          goto LABEL_136;
        }

        v191 = 2;
      }

      v192 = objc_opt_self();
      UUID.uuidString.getter();
      v55 = String._bridgeToObjectiveC()();

      sub_1003ADCE0(v192, v191, v55);

      LOBYTE(v55) = v204;
      goto LABEL_133;
    }

    if ((v48 & 0xC000000000000001) != 0)
    {
      v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v50 >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_123;
      }

      v51 = *(v48 + 8 * v50 + 32);
    }

    v52 = v51;
    if (__OFADD__(v50, 1))
    {
      break;
    }

    v53 = [v51 isPreArmed];

    ++v50;
    if (v53)
    {

      v54 = v207;
      if (v206)
      {
        v60 = Logger.logObject.getter();
        v61 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          *v62 = 0;
          _os_log_impl(&_mh_execute_header, v60, v61, "Device SE busy because a pass is pre-armed", v62, 2u);
        }

        v63 = &off_1004C3A38;
LABEL_44:
        v64 = sub_1002B3B94(v63);
        v66 = v65;
        v20 = sub_100239160(3, 17, v64, v65);
        v23 = v67;
        sub_10006A178(v64, v66);
        if (qword_100501960 != -1)
        {
          swift_once();
        }

        v39 = v20;
        v40 = v23;
        v41 = v54;
        goto LABEL_17;
      }

      v56 = v205;
      if (v205 <= 3)
      {
        LOBYTE(v55) = v204;
        if (v205)
        {
          if (v205 == 2)
          {
            v153 = Logger.logObject.getter();
            v154 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v153, v154))
            {
              v155 = swift_slowAlloc();
              *v155 = 0;
              _os_log_impl(&_mh_execute_header, v153, v154, "Device busy because a pass is pre-armed", v155, 2u);
            }

            v63 = &off_1004C3A60;
            goto LABEL_44;
          }

          if (v205 == 3)
          {
            if (v204 == 17)
            {
              v68 = sub_1002B3B94(&off_1004C3A88);
              v70 = v69;
              if (sub_10008FB4C(v202, v203, v68, v69))
              {
                v71 = Logger.logObject.getter();
                v72 = static os_log_type_t.info.getter();
                if (os_log_type_enabled(v71, v72))
                {
                  v73 = swift_slowAlloc();
                  *v73 = 0;
                  _os_log_impl(&_mh_execute_header, v71, v72, "Ignoring URSK Refresh while pass is pre-armed", v73, 2u);
                }

                sub_10006A178(v68, v70);

                return;
              }

              sub_10006A178(v68, v70);
LABEL_121:
              sub_100233044(v202, v203, v54);
              return;
            }

LABEL_87:
            v135 = v202;
            v136 = v203;
            sub_100069E2C(v202, v203);
            v76 = Logger.logObject.getter();
            v77 = static os_log_type_t.error.getter();
            sub_10006A178(v135, v136);
            if (os_log_type_enabled(v76, v77))
            {
              v78 = swift_slowAlloc();
              v137 = swift_slowAlloc();
              v138 = v55;
              v81 = v137;
              v221 = v137;
              *v78 = 16777730;
              *(v78 + 4) = v138;
              *(v78 + 5) = 2080;
              v223 = sub_100288788(v135, v136);
              sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
              sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
              v139 = BidirectionalCollection<>.joined(separator:)();
              v141 = v140;

              v142 = sub_1002FFA0C(v139, v141, &v221);

              *(v78 + 7) = v142;
              v86 = "Invalid event identifier %hhu payload %s";
              goto LABEL_58;
            }

            goto LABEL_97;
          }

          goto LABEL_93;
        }

LABEL_56:
        v74 = v202;
        v75 = v203;
        sub_100069E2C(v202, v203);
        v76 = Logger.logObject.getter();
        v77 = static os_log_type_t.info.getter();
        sub_10006A178(v74, v75);
        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          v79 = swift_slowAlloc();
          v80 = v55;
          v81 = v79;
          v221 = v79;
          *v78 = 16777730;
          *(v78 + 4) = v80;
          *(v78 + 5) = 2080;
          v223 = sub_100288788(v74, v75);
          sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
          sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
          v82 = BidirectionalCollection<>.joined(separator:)();
          v84 = v83;

          v85 = sub_1002FFA0C(v82, v84, &v221);

          *(v78 + 7) = v85;
          v86 = "Ignoring pairing message while not pairing %hhu payload %s";
LABEL_58:
          v87 = v77;
          v88 = v76;
          v89 = v78;
          v90 = 15;
LABEL_95:
          _os_log_impl(&_mh_execute_header, v88, v87, v86, v89, v90);
          sub_1000752F4(v81);

LABEL_96:
        }

LABEL_97:

        return;
      }

      LOBYTE(v55) = v204;
      if (v205 != 4)
      {
        goto LABEL_67;
      }

      goto LABEL_61;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:

LABEL_125:

  v184 = Logger.logObject.getter();
  v185 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v184, v185))
  {
    v186 = swift_slowAlloc();
    v187 = swift_slowAlloc();
    v221 = v187;
    *v186 = 136315138;
    v188 = UUID.uuidString.getter();
    v190 = sub_1002FFA0C(v188, v189, &v221);

    *(v186 + 4) = v190;
    _os_log_impl(&_mh_execute_header, v184, v185, "No active UWB Alisha session for %s", v186, 0xCu);
    sub_1000752F4(v187);
  }

LABEL_136:
  sub_100075768(v216, &unk_10050BE80, &unk_10040B360);
}

void sub_100233044(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v110 = a3;
  v5 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v106 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v108 = &v103 - v9;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = v11[8];
  __chkstk_darwin(v10);
  v14 = (&v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v15 = qword_10051B7F0;
  *v14 = qword_10051B7F0;
  v16 = enum case for DispatchPredicate.onQueue(_:);
  v17 = v11[13];
  v17(v14, enum case for DispatchPredicate.onQueue(_:), v10);
  v107 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  v18 = v11[1];
  v18(v14, v10);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_92;
  }

  sub_100069E2C(a1, a2);
  v19 = sub_1000939AC(a1, a2, 0, 0, 0);
  if (v19 > 3u)
  {
    if (v19 == 4)
    {
      if (qword_100501DB0 != -1)
      {
        swift_once();
      }

      sub_100069E2C(a1, a2);
      sub_100084D68(1, a1, a2, &v111);
      v21 = v111;
      v22 = v112;
      sub_10034C8DC(v111, v112, v110);
      goto LABEL_27;
    }

    if (v19 != 6)
    {
      goto LABEL_15;
    }

    if (qword_1005019F0 == -1)
    {
LABEL_14:
      sub_100069E2C(a1, a2);
      sub_100084D68(1, a1, a2, &v111);
      v21 = v111;
      v22 = v112;
      sub_100152B0C(v111, v112);
LABEL_27:
      sub_10006A178(v21, v22);
      return;
    }

LABEL_92:
    swift_once();
    goto LABEL_14;
  }

  if (v19 == 1)
  {
    v32 = a2 >> 62;
    if ((a2 >> 62) > 1)
    {
      if (v32 != 2)
      {
        return;
      }

      v38 = *(a1 + 16);
      v37 = *(a1 + 24);
      v35 = __OFSUB__(v37, v38);
      v39 = v37 - v38;
      if (v35)
      {
        goto LABEL_95;
      }

      if (v39 < 2)
      {
        return;
      }
    }

    else if (v32)
    {
      if (__OFSUB__(HIDWORD(a1), a1))
      {
LABEL_96:
        __break(1u);
        goto LABEL_97;
      }

      if (HIDWORD(a1) - a1 < 2)
      {
        return;
      }
    }

    else if (BYTE6(a2) < 2uLL)
    {
      return;
    }

    sub_100069E2C(a1, a2);
    if (sub_1000939AC(a1, a2, 1, 0, 0))
    {
      sub_100069E2C(a1, a2);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.info.getter();
      sub_10006A178(a1, a2);
      if (!os_log_type_enabled(v23, v24))
      {
        goto LABEL_19;
      }

      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v111 = v26;
      *v25 = 136315138;
      v113 = sub_100288788(a1, a2);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
      v54 = BidirectionalCollection<>.joined(separator:)();
      v56 = v55;

      v57 = sub_1002FFA0C(v54, v56, &v111);

      *(v25 + 4) = v57;
      v31 = "Ignoring unknown Command Complete event %s";
      goto LABEL_17;
    }

    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&_mh_execute_header, v59, v60, "Received Deselect_SE", v61, 2u);
    }

    v19 = v110;
    if (qword_100501A30 == -1)
    {
LABEL_63:
      sub_100194774(v19);
      return;
    }

LABEL_97:
    v102 = v19;
    swift_once();
    v19 = v102;
    goto LABEL_63;
  }

  if (v19 != 2)
  {
LABEL_15:
    sub_100069E2C(a1, a2);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();
    sub_10006A178(a1, a2);
    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_19;
    }

    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v111 = v26;
    *v25 = 136315138;
    v113 = sub_100288788(a1, a2);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
    v27 = BidirectionalCollection<>.joined(separator:)();
    v29 = v28;

    v30 = sub_1002FFA0C(v27, v29, &v111);

    *(v25 + 4) = v30;
    v31 = "Ignoring unknown event %s";
    goto LABEL_17;
  }

  v20 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v20)
    {
      if (BYTE6(a2) < 2uLL)
      {
        return;
      }

      goto LABEL_39;
    }

    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 < 2)
      {
        return;
      }

      goto LABEL_39;
    }

    goto LABEL_94;
  }

  if (v20 != 2)
  {
    return;
  }

  v34 = *(a1 + 16);
  v33 = *(a1 + 24);
  v35 = __OFSUB__(v33, v34);
  v36 = v33 - v34;
  if (v35)
  {
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  if (v36 < 2)
  {
    return;
  }

LABEL_39:
  sub_100069E2C(a1, a2);
  v40 = sub_1000939AC(a1, a2, 1, 0, 0);
  if (v40 > 3)
  {
    if (v40 == 4)
    {
      if (qword_100501BA0 != -1)
      {
        swift_once();
      }

      v58 = 3;
    }

    else
    {
      if (v40 != 7)
      {
LABEL_64:
        sub_100069E2C(a1, a2);
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.info.getter();
        sub_10006A178(a1, a2);
        if (!os_log_type_enabled(v23, v24))
        {
          goto LABEL_19;
        }

        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v111 = v26;
        *v25 = 136315138;
        v113 = sub_100288788(a1, a2);
        sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
        sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
        v62 = BidirectionalCollection<>.joined(separator:)();
        v64 = v63;

        v65 = sub_1002FFA0C(v62, v64, &v111);

        *(v25 + 4) = v65;
        v31 = "Ignoring unknown Ranging Session Status Changed event %s";
LABEL_17:
        _os_log_impl(&_mh_execute_header, v23, v24, v31, v25, 0xCu);
        sub_1000752F4(v26);

LABEL_18:

        goto LABEL_19;
      }

      if (qword_100501BA0 != -1)
      {
        swift_once();
      }

      v58 = 2;
    }

    sub_1002558C4(v58, v110);
    return;
  }

  if (v40)
  {
    if (v40 == 3)
    {
      if (qword_100501B70 != -1)
      {
        swift_once();
      }

      v41 = qword_10051B5B0;
      v42 = v110;

      v43 = sub_10024F2B4(v41, v42);

      v23 = sub_1000CA828(v43);

      if (v23)
      {
        sub_1002463FC();
        sub_100246268(0);
        v44 = qword_1005019E8;
        v45 = v110;

        if (v44 != -1)
        {
          swift_once();
        }

        v46 = swift_allocObject();
        *(v46 + 16) = sub_10023FA88;
        *(v46 + 24) = v45;

        v47 = sub_1000CAA04();

        v48 = sub_1000CA810(v47);

        if (v48)
        {
          v49 = [v48 readerInfo];
          if (v49)
          {
            v50 = v49;
            v51 = objc_opt_self();
            v52 = [v48 getEndpointUser];
            UUID.uuidString.getter();
            v53 = String._bridgeToObjectiveC()();

            sub_10004D01C(v51, 2, 3, v50, v52, v53);

            return;
          }
        }

        goto LABEL_19;
      }

      return;
    }

    goto LABEL_64;
  }

  v66 = v110;
  if (*(v110 + OBJC_IVAR____TtC10seserviced4Peer_expressState) != 1)
  {
    v23 = Logger.logObject.getter();
    v76 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v23, v76))
    {
      goto LABEL_19;
    }

    v77 = swift_slowAlloc();
    *v77 = 0;
    _os_log_impl(&_mh_execute_header, v23, v76, "Ignoring URSK Refresh while express is off", v77, 2u);
    goto LABEL_18;
  }

  if (qword_100501C80 != -1)
  {
    swift_once();
  }

  v104 = qword_10051B6E8;
  v67 = type metadata accessor for UUID();
  (*(*(v67 - 8) + 56))(v108, 1, 1, v67);
  v68 = swift_allocObject();
  *(v68 + 16) = v109;
  *(v68 + 24) = v66;
  v105 = v68;
  v69 = v107;
  *v14 = v107;
  v17(v14, v16, v10);
  v70 = v69;

  v71 = _dispatchPreconditionTest(_:)();
  v18(v14, v10);
  if ((v71 & 1) == 0)
  {
    __break(1u);
LABEL_99:
    swift_once();
    goto LABEL_88;
  }

  if (*(v104 + OBJC_IVAR____TtC10seserviced8AlishaSE_isRunning) == 1)
  {
    if (qword_100501A30 != -1)
    {
      swift_once();
    }

    v72 = *(v66 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
    if (v72 >> 60 == 15)
    {
      v73 = 0;
      v74 = 0;
      v75 = 0;
    }

    else
    {
      v83 = *(v66 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
      v73 = type metadata accessor for AlishaSE.HandoffToken();
      v75 = swift_allocObject();
      *(v75 + 16) = v83;
      *(v75 + 24) = v72;
      sub_100069E2C(v83, v72);
      v74 = &off_1004CF620;
    }

    v81 = v108;
    v84 = v106;
    sub_1000756F8(v108, v106);
    v85 = type metadata accessor for SERequest();
    v86 = *(v85 + 48);
    v87 = *(v85 + 52);
    v88 = swift_allocObject();
    v89 = v88 + OBJC_IVAR____TtC10seserviced9SERequest_reason;
    strcpy((v88 + OBJC_IVAR____TtC10seserviced9SERequest_reason), "URSK Refresh");
    *(v89 + 13) = 0;
    *(v89 + 14) = -5120;
    *(v88 + OBJC_IVAR____TtC10seserviced9SERequest_isBlockSelecting) = 1;
    *(v88 + 16) = 0;
    *(v88 + 24) = 1;
    v90 = (v88 + OBJC_IVAR____TtC10seserviced9SERequest_handoffToken);
    *v90 = v75;
    v90[1] = 0;
    v90[2] = 0;
    v90[3] = v73;
    v90[4] = v74;
    *(v88 + OBJC_IVAR____TtC10seserviced9SERequest_priority) = 2;
    v66 = v110;
    *(v88 + OBJC_IVAR____TtC10seserviced9SERequest_peer) = v110;
    v91 = v88 + OBJC_IVAR____TtC10seserviced9SERequest_sessionChecks;
    *v91 = 0;
    *(v91 + 8) = 1;
    sub_1000756F8(v84, v88 + OBJC_IVAR____TtC10seserviced9SERequest_connectionIdentifier);
    v92 = v88 + OBJC_IVAR____TtC10seserviced9SERequest_sequenceNumber;
    *v92 = 0;
    *(v92 + 8) = 1;
    v93 = v105;
    *(v88 + 32) = sub_10023F6CC;
    *(v88 + 40) = v93;

    sub_100075768(v84, &unk_10050BE80, &unk_10040B360);
    sub_1001939C8(0, v88);
  }

  else
  {
    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.error.getter();
    v80 = os_log_type_enabled(v78, v79);
    v81 = v108;
    if (v80)
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&_mh_execute_header, v78, v79, "Not running", v82, 2u);
    }
  }

  sub_100075768(v81, &unk_10050BE80, &unk_10040B360);
  v94 = qword_1005019E8;

  if (v94 != -1)
  {
    goto LABEL_99;
  }

LABEL_88:
  v95 = swift_allocObject();
  *(v95 + 16) = sub_10023FA88;
  *(v95 + 24) = v66;

  v96 = sub_1000CAA04();

  v23 = sub_1000CA810(v96);

  if (v23)
  {
    v97 = [v23 readerInfo];
    if (v97)
    {
      v98 = v97;
      v99 = objc_opt_self();
      v100 = [v23 getEndpointUser];
      UUID.uuidString.getter();
      v101 = String._bridgeToObjectiveC()();

      sub_10004D01C(v99, 2, 0, v98, v100, v101);

      return;
    }

LABEL_19:
  }
}

void sub_10023419C(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v49 = v7;
      *v6 = 136315138;
      sub_100075400();
      v8 = Error.localizedDescription.getter();
      v10 = sub_1002FFA0C(v8, v9, &v49);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, oslog, v5, "Failed to get SE to clear URSKs %s", v6, 0xCu);
      sub_1000752F4(v7);

      return;
    }

    v21 = oslog;
    goto LABEL_15;
  }

  v12 = sub_10013044C(0xD000000000000014, 0x8000000100468730);
  if (v13 >> 60 == 15)
  {
    __break(1u);
    return;
  }

  v14 = v12;
  v15 = v13;
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A2D0(v14, v15);
  v17 = sub_1003AF1FC(a1, isa);

  if (!v17)
  {
    v22 = (a4 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
    v23 = *(a4 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
    if (v23 >> 60 != 15)
    {
      v24 = *v22;
      sub_100069E2C(*v22, *(a4 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8));
      v25 = Data._bridgeToObjectiveC()().super.isa;
      v49 = 0;
      v26 = sub_1003AEF50();

      if (v26)
      {
        v27 = v49;

        sub_100069E2C(v24, v23);
        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.info.getter();
        sub_10006A2D0(v24, v23);
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v49 = v31;
          *v30 = 136315138;
          sub_100288788(v24, v23);
          sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
          sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
          v32 = BidirectionalCollection<>.joined(separator:)();
          v34 = v33;

          v35 = sub_1002FFA0C(v32, v34, &v49);

          *(v30 + 4) = v35;
          _os_log_impl(&_mh_execute_header, v28, v29, "All keys for %s have been deleted from Sunsprite", v30, 0xCu);
          sub_1000752F4(v31);

          sub_10006A2D0(v24, v23);
        }

        else
        {

          sub_10006A2D0(v24, v23);
        }
      }

      else
      {
        v36 = v49;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_10006A2BC(v24, v23);
        swift_errorRetain();
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.error.getter();
        sub_10006A2D0(v24, v23);

        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          *v39 = 136315394;
          sub_100288788(v24, v23);
          sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
          sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
          v40 = BidirectionalCollection<>.joined(separator:)();
          v42 = v41;

          v43 = sub_1002FFA0C(v40, v42, &v49);

          *(v39 + 4) = v43;
          *(v39 + 12) = 2080;
          swift_getErrorValue();
          v44 = Error.localizedDescription.getter();
          v46 = sub_1002FFA0C(v44, v45, &v49);

          *(v39 + 14) = v46;
          _os_log_impl(&_mh_execute_header, v37, v38, "Failed to clear the keys for %s %s", v39, 0x16u);
          swift_arrayDestroy();

          sub_10006A2D0(v24, v23);
        }

        else
        {

          sub_10006A2D0(v24, v23);
        }
      }

      return;
    }

    osloga = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(osloga, v18))
    {
      goto LABEL_14;
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = "Found peer with no key identifier";
    goto LABEL_13;
  }

  osloga = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(osloga, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = "Failed to select Sunsprite";
LABEL_13:
    _os_log_impl(&_mh_execute_header, osloga, v18, v20, v19, 2u);
  }

LABEL_14:
  v21 = osloga;
LABEL_15:
}

void sub_1002348E0(uint64_t a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v7 = qword_10051B7F0;
  *v6 = qword_10051B7F0;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_7;
  }

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Peer connected", v11, 2u);
  }

  v12 = objc_opt_self();
  UUID.uuidString.getter();
  v13 = String._bridgeToObjectiveC()();

  sub_10004CA44(v12, v13);

  sub_10004D584(v12, @"connectionCount");
  sub_10004EBC8(v12, 1);
  if (qword_100501B98 != -1)
  {
    goto LABEL_11;
  }

LABEL_7:
  sub_100251228(a1);
  if (qword_100501BA0 != -1)
  {
    swift_once();
  }

  sub_1002558C4(1u, a1);
  v14 = *(a1 + OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier);
  v15 = *(a1 + OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier + 8);
  v16 = *(a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
  v17 = *(a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
  sub_10006A2BC(v14, v15);
  sub_10006A2BC(v16, v17);
  sub_1003375E0(0xD00000000000003CLL, 0x8000000100468750, v14, v15, v16, v17, 0);
  sub_10006A2D0(v16, v17);
  sub_10006A2D0(v14, v15);
  v18 = objc_opt_self();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v18 bleLogVehicleConnected:isa];

  v20 = String._bridgeToObjectiveC()();
  sub_100068FC4(&unk_100507CD0, &unk_100414C50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004098F0;
  *(inited + 32) = 0x4449555572656550;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = UUID.uuidString.getter();
  *(inited + 56) = v22;
  sub_1000910F0(inited);
  swift_setDeallocating();
  sub_100075768(inited + 32, &unk_100504020, &qword_100409CC0);
  v23 = Dictionary._bridgeToObjectiveC()().super.isa;

  PLLogRegisteredEvent();
}

void sub_100234D44(unint64_t a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v35[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v7 = qword_10051B7F0;
  *v6 = qword_10051B7F0;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_23:
    swift_once();
    goto LABEL_7;
  }

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Peer disconnected", v11, 2u);
  }

  v12 = *(a1 + OBJC_IVAR____TtC10seserviced4Peer_buffer);
  v13 = *(a1 + OBJC_IVAR____TtC10seserviced4Peer_buffer + 8);
  *(a1 + OBJC_IVAR____TtC10seserviced4Peer_buffer) = xmmword_1004098E0;
  sub_10006A2D0(v12, v13);
  *(a1 + OBJC_IVAR____TtC10seserviced4Peer_sequenceNumber) = 0;
  if (qword_100501C80 != -1)
  {
    goto LABEL_23;
  }

LABEL_7:
  sub_1002DC22C(a1);
  if (qword_100501BA0 != -1)
  {
    swift_once();
  }

  sub_10025640C(a1);
  if (qword_100501C40 != -1)
  {
    swift_once();
  }

  sub_1002A7730(a1);
  if (qword_100501DB0 != -1)
  {
    swift_once();
  }

  sub_1003488C8(a1);
  if (qword_1005019F0 != -1)
  {
    swift_once();
  }

  sub_1001512D0(a1);
  v14 = *(a1 + OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier);
  v15 = *(a1 + OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier + 8);
  v16 = *(a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
  v17 = *(a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
  sub_10006A2BC(v14, v15);
  sub_10006A2BC(v16, v17);
  sub_1003375E0(0xD00000000000003FLL, 0x8000000100468660, v14, v15, v16, v17, 0);
  sub_10006A2D0(v16, v17);
  sub_10006A2D0(v14, v15);
  v18 = qword_1005019E8;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = swift_allocObject();
  *(v19 + 16) = sub_10023FA88;
  *(v19 + 24) = a1;

  v20 = sub_1000CAA04();

  v21 = sub_1000CA810(v20);

  if (v21)
  {
    v22 = [v21 readerInfo];
    if (v22)
    {
      v23 = v22;
      v24 = objc_opt_self();
      v25 = [v21 getEndpointUser];
      UUID.uuidString.getter();
      v26 = String._bridgeToObjectiveC()();

      sub_10004D01C(v24, 0x8000, 2, v23, v25, v26);

      v21 = v26;
    }
  }

  v27 = objc_opt_self();
  UUID.uuidString.getter();
  v28 = String._bridgeToObjectiveC()();

  sub_1003ADC30(v27, v28);

  sub_10004D584(v27, @"disconnectionCount");
  v29 = objc_opt_self();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v29 bleLogVehicleDisconnected:isa];

  v31 = String._bridgeToObjectiveC()();
  sub_100068FC4(&unk_100507CD0, &unk_100414C50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004098F0;
  *(inited + 32) = 0x4449555572656550;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = UUID.uuidString.getter();
  *(inited + 56) = v33;
  sub_1000910F0(inited);
  swift_setDeallocating();
  sub_100075768(inited + 32, &unk_100504020, &qword_100409CC0);
  v34 = Dictionary._bridgeToObjectiveC()().super.isa;

  PLLogRegisteredEvent();
}

void sub_1002353D0(char a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v9 = qword_10051B7F0;
  *v8 = qword_10051B7F0;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v26 = v14;
    *v13 = 136315138;
    if (a1)
    {
      v15 = 0x7964616572;
    }

    else
    {
      v15 = 0x6461657220746F6ELL;
    }

    if (a1)
    {
      v16 = 0xE500000000000000;
    }

    else
    {
      v16 = 0xE900000000000079;
    }

    v17 = sub_1002FFA0C(v15, v16, &v26);

    *(v13 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v11, v12, "Driving readiness changed %s", v13, 0xCu);
    sub_1000752F4(v14);
  }

  if (a1)
  {
    if (qword_100501DA0 == -1)
    {
LABEL_14:
      sub_100339298(a2 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier);
      if (qword_100501960 != -1)
      {
        swift_once();
      }

      sub_1000F5CB8(a2);
      if (qword_100501BA0 != -1)
      {
        swift_once();
      }

      sub_1002558C4(6u, a2);
      v18 = (a2 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
      v19 = *(a2 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
      if (v19 >> 60 != 15)
      {
        v20 = *v18;
        sub_100069E2C(*v18, *(a2 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8));
        if (qword_1005019E8 != -1)
        {
          swift_once();
        }

        v21 = sub_1000CAA04();
        v22 = sub_1000CA810(v21);

        if (v22)
        {
          v23 = objc_opt_self();
          UUID.uuidString.getter();
          v24 = String._bridgeToObjectiveC()();

          sub_1003AE394(v23, v22, v24);
        }

        sub_10006A2D0(v20, v19);
      }

      return;
    }

LABEL_29:
    swift_once();
    goto LABEL_14;
  }

  if (qword_100501DA0 != -1)
  {
    swift_once();
  }

  sub_100339910(a2 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier);
}

void sub_100235820(char a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v9 = qword_10051B7F0;
  *v8 = qword_10051B7F0;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v11 = (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_34:
    v38 = v11;
    swift_once();
    v11 = v38;
    goto LABEL_32;
  }

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v40 = v15;
    *v14 = 136315138;
    if (a1)
    {
      v16 = 0x64656B636F6CLL;
    }

    else
    {
      v16 = 0x64656B636F6C6E75;
    }

    if (a1)
    {
      v17 = 0xE600000000000000;
    }

    else
    {
      v17 = 0xE800000000000000;
    }

    v18 = sub_1002FFA0C(v16, v17, &v40);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v12, v13, "Lock state changed %s", v14, 0xCu);
    sub_1000752F4(v15);
  }

  if (a1)
  {
    if (qword_100501DA0 != -1)
    {
      swift_once();
    }

    sub_100339298(a2 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier);
    v19 = qword_1005019E8;

    if (v19 != -1)
    {
      swift_once();
    }

    v20 = swift_allocObject();
    *(v20 + 16) = sub_10023FA88;
    *(v20 + 24) = a2;

    v21 = sub_1000CAA04();

    v22 = sub_1000CA810(v21);

    if (v22)
    {
      v23 = [v22 readerInfo];
      if (v23)
      {
        v24 = v23;
        v25 = objc_opt_self();
        v26 = [v22 getEndpointUser];
        UUID.uuidString.getter();
        v27 = String._bridgeToObjectiveC()();

        sub_10004D01C(v25, 0x8000, 0, v24, v26, v27);

        v22 = v27;
      }
    }

    v28 = qword_100501BA0;
    v11 = 4;
  }

  else
  {
    if (qword_100501DA0 != -1)
    {
      swift_once();
    }

    sub_100339910(a2 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier);
    v29 = qword_1005019E8;

    if (v29 != -1)
    {
      swift_once();
    }

    v30 = swift_allocObject();
    *(v30 + 16) = sub_10023F6D8;
    *(v30 + 24) = a2;

    v31 = sub_1000CAA04();

    v32 = sub_1000CA810(v31);

    if (v32)
    {
      v33 = [v32 readerInfo];
      if (v33)
      {
        v34 = v33;
        v35 = objc_opt_self();
        v36 = [v32 getEndpointUser];
        UUID.uuidString.getter();
        v37 = String._bridgeToObjectiveC()();

        sub_10004D01C(v35, 0x8000, 1, v34, v36, v37);

        v32 = v37;
      }
    }

    v28 = qword_100501BA0;
    v11 = 5;
  }

  if (v28 != -1)
  {
    goto LABEL_34;
  }

LABEL_32:
  sub_1002558C4(v11, a2);
}

uint64_t sub_100235DE8(void *a1)
{
  v2 = v1;
  v4 = [a1 readerInfo];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v38 = v6;
    v39 = v8;
    sub_10012512C();
    v9 = StringProtocol.components<A>(separatedBy:)();

    if (v9[2] >= 4uLL)
    {
      v12 = v9[6];
      v34 = v9[7];
      v35 = v9[10];
      v36 = v9[11];

      return v12;
    }

    v10 = OBJC_IVAR____TtC10seserviced6Alisha_logger;
    v11 = a1;
    v12 = v2 + v10;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v38 = v40;
      *v15 = 136315138;
      v16 = [v11 publicKeyIdentifier];
      v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      sub_100288788(v17, v19);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
      v12 = BidirectionalCollection<>.joined(separator:)();
      v21 = v20;
      sub_10006A178(v17, v19);

      v22 = sub_1002FFA0C(v12, v21, &v38);

      *(v15 + 4) = v22;
      v23 = "Invalid reader info from %s";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v13, v14, v23, v15, 0xCu);
      sub_1000752F4(v40);
    }
  }

  else
  {
    v24 = OBJC_IVAR____TtC10seserviced6Alisha_logger;
    v25 = a1;
    v12 = v2 + v24;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v38 = v40;
      *v15 = 136315138;
      v26 = [v25 publicKeyIdentifier];
      v27 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      sub_100288788(v27, v29);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
      v12 = BidirectionalCollection<>.joined(separator:)();
      v31 = v30;
      sub_10006A178(v27, v29);

      v32 = sub_1002FFA0C(v12, v31, &v38);

      *(v15 + 4) = v32;
      v23 = "Missing reader info from %s";
      goto LABEL_7;
    }
  }

  sub_100079E24();
  swift_allocError();
  *v33 = 0;
  swift_willThrow();
  return v12;
}

uint64_t sub_100236214(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100068FC4(&qword_1005031D0, &unk_100413B20);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v36 - v11;
  v13 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v36 - v19;
  __chkstk_darwin(v18);
  v22 = &v36 - v21;
  if ([a1 endPointType] != 1)
  {
    return 0;
  }

  v39 = a2;
  result = [a1 bleUUID];
  if (!result)
  {
    return result;
  }

  v37 = v8;

  v38 = a1;
  result = [a1 bleUUID];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v24 = result;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  UUID.init(uuidString:)();

  (*(v5 + 16))(v20, v39 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v4);
  (*(v5 + 56))(v20, 0, 1, v4);
  v25 = *(v9 + 48);
  sub_1000756F8(v22, v12);
  sub_1000756F8(v20, &v12[v25]);
  v26 = *(v5 + 48);
  if (v26(v12, 1, v4) == 1)
  {
    sub_100075768(v20, &unk_10050BE80, &unk_10040B360);
    sub_100075768(v22, &unk_10050BE80, &unk_10040B360);
    if (v26(&v12[v25], 1, v4) == 1)
    {
      sub_100075768(v12, &unk_10050BE80, &unk_10040B360);
LABEL_11:
      v31 = [v38 revocationAttestation];
      if (!v31)
      {
        return 1;
      }

      v32 = v31;
      v33 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      sub_10006A178(v33, v35);
      return 0;
    }

    goto LABEL_9;
  }

  sub_1000756F8(v12, v17);
  if (v26(&v12[v25], 1, v4) == 1)
  {
    sub_100075768(v20, &unk_10050BE80, &unk_10040B360);
    sub_100075768(v22, &unk_10050BE80, &unk_10040B360);
    (*(v5 + 8))(v17, v4);
LABEL_9:
    sub_100075768(v12, &qword_1005031D0, &unk_100413B20);
    return 0;
  }

  v27 = v37;
  (*(v5 + 32))(v37, &v12[v25], v4);
  sub_10023E228(&qword_100502C18, &type metadata accessor for UUID);
  v28 = v5;
  v29 = dispatch thunk of static Equatable.== infix(_:_:)();
  v30 = *(v28 + 8);
  v30(v27, v4);
  sub_100075768(v20, &unk_10050BE80, &unk_10040B360);
  sub_100075768(v22, &unk_10050BE80, &unk_10040B360);
  v30(v17, v4);
  sub_100075768(v12, &unk_10050BE80, &unk_10040B360);
  if (v29)
  {
    goto LABEL_11;
  }

  return 0;
}

void sub_100236714(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = (&v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v16 = qword_10051B7F0;
  *v15 = qword_10051B7F0;
  (*(v12 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v11);
  v17 = v16;
  v18 = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v15, v11);
  if ((v18 & 1) == 0)
  {
    __break(1u);
LABEL_36:
    swift_once();
    goto LABEL_8;
  }

  v70 = v10;
  v71 = v7;
  v19 = OBJC_IVAR____TtC10seserviced6Alisha_logger;
  sub_100069E2C(a1, a2);
  v73 = v19;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();
  sub_10006A178(a1, a2);
  v22 = os_log_type_enabled(v20, v21);
  v72 = v6;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v69 = v3;
    v24 = v23;
    v68 = swift_slowAlloc();
    v75 = v68;
    *v24 = 136315138;
    v18 = 0;
    v74 = sub_100288788(a1, a2);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
    v25 = BidirectionalCollection<>.joined(separator:)();
    v27 = v26;

    v28 = sub_1002FFA0C(v25, v27, &v75);

    *(v24 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v20, v21, "Key tracking completed %s", v24, 0xCu);
    sub_1000752F4(v68);
  }

  else
  {

    v18 = 0;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  sub_100069E2C(a1, a2);
  if (qword_100501D78 != -1)
  {
    goto LABEL_36;
  }

LABEL_8:
  v29 = swift_allocObject();
  *(v29 + 16) = sub_10006A278;
  *(v29 + 24) = v11;

  v30 = sub_1000CAAC4();

  v31 = sub_1000CA840(v30);

  if (v31)
  {
    type metadata accessor for AlishaPeer();
    v32 = swift_dynamicCastClass();
    if (v32 && (v33 = v32, v34 = OBJC_IVAR____TtC10seserviced4Peer_pairingState, *(v32 + OBJC_IVAR____TtC10seserviced4Peer_pairingState) == 1))
    {
      v35 = swift_allocObject();
      *(v35 + 16) = a1;
      *(v35 + 24) = a2;
      sub_100069E2C(a1, a2);
      v36 = qword_1005019E8;

      if (v36 != -1)
      {
        swift_once();
      }

      v37 = swift_allocObject();
      *(v37 + 16) = sub_10023F790;
      *(v37 + 24) = v35;

      v38 = sub_1000CAA04();

      v39 = sub_1000CA810(v38);

      if (v39)
      {
        v69 = [objc_allocWithZone(SESConfigDCK) init];
        v40 = *(v33 + OBJC_IVAR____TtC10seserviced10AlishaPeer_configuration);

        v41 = [v39 readerConfigID];
        if (v41)
        {
          v42 = v41;
          v43 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v45 = v44;
        }

        else
        {
          v43 = 0;
          v45 = 0xF000000000000000;
        }

        sub_100286CD0(v69, v43, v45);
        sub_10006A2D0(v43, v45);

        *(v33 + v34) = 2;
        v49 = v72;
        if (*(v33 + OBJC_IVAR____TtC10seserviced4Peer_isConnected) == 1)
        {
          v50 = Logger.logObject.getter();
          v51 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v50, v51))
          {
            v52 = swift_slowAlloc();
            *v52 = 0;
            _os_log_impl(&_mh_execute_header, v50, v51, "Sending REQUEST_STANDARD_TRANSACTION", v52, 2u);
          }

          if (qword_100501B60 != -1)
          {
            swift_once();
          }

          v53 = sub_1002B3B94(&off_1004C49F0);
          v55 = v54;
          v56 = sub_100239160(3, 17, v53, v54);
          v58 = v57;
          sub_10006A178(v53, v55);
          if (qword_100501960 != -1)
          {
            swift_once();
          }

          sub_1000E71A0(v56, v58, v33);
          if (v18)
          {
            v59 = Logger.logObject.getter();
            v60 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v59, v60))
            {
              v61 = swift_slowAlloc();
              *v61 = 0;
              _os_log_impl(&_mh_execute_header, v59, v60, "Failed to send REQUEST_STANDARD_TRANSACTION event", v61, 2u);
            }

            sub_10006A178(v56, v58);
          }

          else
          {
            sub_10006A178(v56, v58);
          }
        }

        v62 = objc_opt_self();
        v63 = v71;
        v64 = v33 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
        v65 = v70;
        (*(v71 + 16))(v70, v64, v49);

        UUID.uuidString.getter();
        (*(v63 + 8))(v65, v49);
        v66 = String._bridgeToObjectiveC()();

        sub_1003AE298(v62, 4, v66);
      }

      else
      {

        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          *v48 = 0;
          _os_log_impl(&_mh_execute_header, v46, v47, "Failed to retrieve endpoint", v48, 2u);
        }
      }
    }

    else
    {
    }
  }
}

unint64_t sub_100237044(void *a1, uint64_t a2, unint64_t a3)
{
  v5 = [a1 publicKeyIdentifier];
  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  LOBYTE(a3) = sub_10008FB4C(v6, v8, a2, a3);
  sub_10006A178(v6, v8);
  return a3 & 1;
}

void sub_1002370C8(uint64_t a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v7 = qword_10051B7F0;
  *v6 = qword_10051B7F0;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    v9 = qword_1005019E8;

    if (v9 == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_5:
  v10 = swift_allocObject();
  *(v10 + 16) = sub_10023FA88;
  *(v10 + 24) = a1;

  v11 = sub_1000CAA04();

  v12 = sub_1000CA810(v11);

  if (v12)
  {
    v13 = [v12 readerInfo];
    if (v13)
    {
      v14 = v13;
      v15 = objc_opt_self();
      UUID.uuidString.getter();
      v16 = String._bridgeToObjectiveC()();

      sub_1003ADCE0(v15, 1u, v16);

      UUID.uuidString.getter();
      v17 = String._bridgeToObjectiveC()();

      sub_10004D01C(v15, 0x8000, 3, v14, 0, v17);

      type metadata accessor for AlishaPeer();
      v18 = swift_dynamicCastClass();
      if (v18 && (*(*(v18 + OBJC_IVAR____TtC10seserviced10AlishaPeer_configuration) + 112) & 1) == 0)
      {
        v19 = v18;
        v20 = qword_100501960;

        if (v20 != -1)
        {
          swift_once();
        }

        sub_1000E67E4(v19);
      }

      return;
    }
  }

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v29 = v24;
    *v23 = 136315138;
    v25 = UUID.uuidString.getter();
    v27 = sub_1002FFA0C(v25, v26, &v29);

    *(v23 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v21, v22, "Missing endpoint reader information %s", v23, 0xCu);
    sub_1000752F4(v24);
  }
}

uint64_t sub_1002374FC(void *a1)
{
  if ([a1 endPointType] != 1)
  {
    return 0;
  }

  v2 = [a1 bleUUID];
  if (v2)
  {

    return 0;
  }

  result = [a1 blePairingRequest];
  if (result)
  {

    v4 = [a1 revocationAttestation];
    if (!v4)
    {
      return 1;
    }

    v5 = v4;
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    sub_10006A178(v6, v8);
    return 0;
  }

  return result;
}

uint64_t sub_1002375C4(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501B78 != -1)
  {
    swift_once();
  }

  if (byte_10051B5B8 == 1)
  {
    v20 = v7;
    if (qword_100501D90 != -1)
    {
      swift_once();
    }

    v19[1] = qword_10051B7F0;
    v16 = swift_allocObject();
    v16[2] = a3;
    v16[3] = a1;
    v16[4] = a2;
    aBlock[4] = sub_10023F0E8;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100080830;
    aBlock[3] = &unk_1004CC838;
    v17 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v21 = _swiftEmptyArrayStorage;
    sub_10023E228(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags);
    sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
    sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v17);
    (*(v20 + 8))(v10, v6);
    (*(v12 + 8))(v15, v11);
  }

  else
  {
    if (qword_100501B68 != -1)
    {
      swift_once();
    }

    [qword_1005076C8 invalidate];
    return a1(1);
  }
}

id sub_100237970(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D88 != -1)
  {
LABEL_42:
    swift_once();
  }

  (*(v6 + 16))(v9, qword_10051B7E8 + OBJC_IVAR____TtC10seserviced3DSK_logger, v5);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Posting CA General Transaction Statistics", v12, 2u);
  }

  (*(v6 + 8))(v9, v5);
  if (qword_1005019E8 != -1)
  {
    swift_once();
  }

  v9 = off_100504A68;
  v13 = sub_1000CAA04();
  v14 = v13;
  v37 = a3;
  v38 = a2;
  if ((v13 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    v9 = sub_10009393C(0, &qword_100503F00, SEEndPoint_ptr);
    sub_10023EFC4();
    Set.Iterator.init(_cocoa:)();
    v16 = v43;
    v15 = v44;
    v17 = v45;
    v18 = v46;
    a3 = v47;
  }

  else
  {
    v19 = -1 << *(v13 + 32);
    v15 = v13 + 56;
    v17 = ~v19;
    v20 = -v19;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    a3 = v21 & *(v13 + 56);

    v18 = 0;
    v16 = v14;
  }

  v39 = 0;
  v40 = 0;
  v36 = v17;
  v5 = (v17 + 64) >> 6;
LABEL_13:
  v6 = 1;
  while (1)
  {
    while (1)
    {
      a2 = v18;
      if (v16 < 0)
      {
        v24 = __CocoaSet.Iterator.next()();
        if (!v24 || (v41 = v24, sub_10009393C(0, &qword_100503F00, SEEndPoint_ptr), swift_dynamicCast(), (v9 = v42) == 0))
        {
LABEL_40:
          sub_100093854();

          v34 = sub_10023F0F4();
          v35 = objc_opt_self();
          sub_10004ECB0(v35, v39, v40, v6 & 1, v34);
          return v38(1);
        }
      }

      else
      {
        v22 = v18;
        v23 = a3;
        if (!a3)
        {
          while (1)
          {
            v18 = v22 + 1;
            if (__OFADD__(v22, 1))
            {
              break;
            }

            if (v18 >= v5)
            {
              goto LABEL_40;
            }

            v23 = *(v15 + 8 * v18);
            ++v22;
            if (v23)
            {
              goto LABEL_19;
            }
          }

          __break(1u);
          goto LABEL_42;
        }

LABEL_19:
        a3 = (v23 - 1) & v23;
        v9 = *(*(v16 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v23)))));
        if (!v9)
        {
          goto LABEL_40;
        }
      }

      result = [v9 getEndpointUser];
      if (result != 1)
      {
        break;
      }

      v26 = __CFADD__(v40++, 1);
      if (v26)
      {
        goto LABEL_43;
      }

LABEL_30:
      if ((v6 & 1) != 0 && (v27 = [v9 environment]) != 0)
      {
        v28 = v27;
        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v30;

        if (v29 == 80 && v31 == 0xE100000000000000)
        {

          goto LABEL_13;
        }

        v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v6 = (v33 & 1) != 0;
      }

      else
      {

        v6 = 0;
      }
    }

    if (!result)
    {
      break;
    }
  }

  v26 = __CFADD__(v39++, 1);
  if (!v26)
  {
    goto LABEL_30;
  }

  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_100237E3C(void *a1)
{
  if ([a1 endPointType] != 1)
  {
    return 0;
  }

  v2 = [a1 revocationAttestation];
  if (v2)
  {
    v3 = v2;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    sub_10006A178(v4, v6);
    return 0;
  }

  result = [a1 bleUUID];
  if (result)
  {

    return 1;
  }

  return result;
}

void sub_100237EE0()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v7 = qword_10051B7F0;
  *v6 = qword_10051B7F0;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  v9 = _dispatchPreconditionTest(_:)();
  v11 = *(v3 + 8);
  inited = v3 + 8;
  v11(v6, v2);
  if (v9)
  {
    v6 = String._bridgeToObjectiveC()();
    sub_100068FC4(&qword_100507808, &qword_10040FC78);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004098F0;
    *(inited + 32) = 0xD000000000000012;
    v9 = inited + 32;
    *(inited + 40) = 0x8000000100468640;
    if (qword_1005019E8 == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_5:
  v12 = sub_1000CAA04();
  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = __CocoaSet.count.getter();
  }

  else
  {
    v13 = *(v12 + 16);
  }

  *(inited + 48) = v13;
  sub_100091F9C(inited);
  swift_setDeallocating();
  sub_100075768(v9, &qword_100507810, &qword_1004143C0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  PLLogRegisteredEvent();

  v15 = *(v1 + OBJC_IVAR____TtC10seserviced6Alisha_powerLogTimer);
  if (v15)
  {
    sub_1003AE618(v15, 28800.0);
  }

  else
  {
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Power log timer not initialized", v18, 2u);
    }
  }
}

uint64_t sub_100238238()
{
  v1 = OBJC_IVAR____TtC10seserviced6Alisha_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10023830C()
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

uint64_t sub_1002383C4(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC10seserviced4Peer_type) || *(a1 + OBJC_IVAR____TtC10seserviced4Peer_pairingState) != 2)
  {
    return 0;
  }

  else
  {
    return *(a1 + OBJC_IVAR____TtC10seserviced4Peer_isConnected);
  }
}

uint64_t sub_100238410()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v6 = *(v13 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v13);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v12[1] = qword_10051B7F0;
  aBlock[4] = sub_10023E220;
  aBlock[5] = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004CC6F8;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v14 = _swiftEmptyArrayStorage;
  sub_10023E228(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v13);
}

void sub_1002386F8(uint64_t a1)
{
  if (*(a1 + 16) != 1)
  {
    return;
  }

  if (qword_100501D78 != -1)
  {
LABEL_24:
    swift_once();
  }

  v1 = sub_1000CAAC4();
  v2 = sub_10022DE8C(v1);

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_5;
    }

LABEL_26:

    return;
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
    goto LABEL_26;
  }

LABEL_5:
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Applying updated asset", v6, 2u);
  }

  v17 = [objc_allocWithZone(SESConfigDCK) init];
  v7 = 0;
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (v7 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v8 = *(v2 + 8 * v7 + 32);

      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }
    }

    v10 = OBJC_IVAR____TtC10seserviced10AlishaPeer_configuration;
    v11 = *(v8 + OBJC_IVAR____TtC10seserviced10AlishaPeer_configuration);
    sub_100286CD0(v17, 0, 0xF000000000000000);
    v12 = *(v8 + v10);
    v13 = *(v12 + 96);
    v14 = *(v12 + 104);
    if (qword_100501960 != -1)
    {
      v16 = *(v12 + 96);
      v15 = *(v12 + 104);
      swift_once();
      v14 = v15;
      v13 = v16;
    }

    sub_1000F3488(v13, v14, v8);

    ++v7;
  }

  while (v9 != v3);
}

uint64_t sub_1002389F4(uint64_t a1, void *a2)
{
  if (*(a1 + OBJC_IVAR____TtC10seserviced4Peer_type))
  {
    return 0;
  }

  v5 = *(a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
  v4 = *(a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
  sub_10006A2BC(v5, v4);
  v6 = [a2 publicKeyIdentifier];
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (v4 >> 60 == 15)
  {
    if (v9 >> 60 == 15)
    {
      sub_10006A2D0(v5, v4);
      return 1;
    }

    goto LABEL_7;
  }

  if (v9 >> 60 == 15)
  {
LABEL_7:
    sub_10006A2D0(v5, v4);
    sub_10006A2D0(v7, v9);
    return 0;
  }

  sub_10006A2BC(v5, v4);
  sub_100069E2C(v7, v9);
  v10 = sub_10008FB4C(v5, v4, v7, v9);
  sub_10006A2D0(v7, v9);
  sub_10006A178(v7, v9);
  sub_10006A2D0(v5, v4);
  sub_10006A2D0(v5, v4);
  return v10 & 1;
}

uint64_t sub_100238B50(uint64_t a1, double a2, int8x16_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    LOBYTE(v4) = 0;
    return v4 | ((v3 == 0) << 8);
  }

  v4 = *(a1 + 32);
  v5 = v3 - 1;
  if (v3 != 1)
  {
    if (v3 < 5)
    {
      v6 = 1;
      goto LABEL_17;
    }

    if (v3 >= 0x21)
    {
      v7 = v5 & 0xFFFFFFFFFFFFFFE0;
      v8 = vdupq_n_s8(v4);
      v9 = (a1 + 49);
      v10 = v5 & 0xFFFFFFFFFFFFFFE0;
      a3 = v8;
      do
      {
        v8 = vminq_s8(v9[-1], v8);
        a3 = vminq_s8(*v9, a3);
        v9 += 2;
        v10 -= 32;
      }

      while (v10);
      v11 = vminq_s8(v8, a3);
      v11.i8[0] = vminvq_s8(v11);
      v4 = v11.i32[0];
      if (v5 == v7)
      {
        return v4 | ((v3 == 0) << 8);
      }

      if ((v5 & 0x1C) == 0)
      {
        v6 = v7 | 1;
LABEL_17:
        v16 = v3 - v6;
        v17 = (v6 + a1 + 32);
        do
        {
          v19 = *v17++;
          v18 = v19;
          if (v19 < v4)
          {
            LOBYTE(v4) = v18;
          }

          --v16;
        }

        while (v16);
        return v4 | ((v3 == 0) << 8);
      }
    }

    else
    {
      v7 = 0;
    }

    v6 = v5 & 0xFFFFFFFFFFFFFFFCLL | 1;
    v12 = vdup_n_s16(v4);
    v13 = (v7 + a1 + 33);
    v14 = v7 - (v5 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v15 = *v13++;
      a3.i32[0] = v15;
      a3.i64[0] = vmovl_s8(*a3.i8).u64[0];
      v12 = vmin_s16(*a3.i8, vshr_n_s16(vshl_n_s16(v12, 8uLL), 8uLL));
      v14 += 4;
    }

    while (v14);
    LOBYTE(v4) = vminv_s16(vshr_n_s16(vshl_n_s16(v12, 8uLL), 8uLL));
    if (v5 == (v5 & 0xFFFFFFFFFFFFFFFCLL))
    {
      return v4 | ((v3 == 0) << 8);
    }

    goto LABEL_17;
  }

  return v4 | ((v3 == 0) << 8);
}

uint64_t sub_100238CE8(void *a1)
{
  if (*(*a1 + OBJC_IVAR____TtC10seserviced4Peer_type))
  {
    return 0;
  }

  else
  {
    return *(*a1 + OBJC_IVAR____TtC10seserviced4Peer_isConnected);
  }
}

uint64_t sub_100238D1C(uint64_t *a1)
{
  v2 = *a1;
  v3 = type metadata accessor for SESAssetManager();
  v13[3] = v2;
  v13[4] = &off_1004C5CD0;
  v13[0] = a1;
  v4 = qword_100501C58;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = *(qword_1005098E8 + OBJC_IVAR____TtC10seserviced15SESAssetManager_queue);
  sub_1000BC094(v13, v12);
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  sub_1000BC104(v12, v6 + 24);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_10023FA68;
  *(v7 + 24) = v6;
  v11[4] = sub_1000B3FF0;
  v11[5] = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100346DB0;
  v11[3] = &unk_1004CCA90;
  v8 = _Block_copy(v11);
  v9 = v5;

  dispatch_sync(v9, v8);

  _Block_release(v8);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if ((v8 & 1) == 0)
  {
    return sub_1000752F4(v13);
  }

  __break(1u);
  return result;
}

uint64_t sub_100238F20(uint64_t *a1)
{
  v2 = *a1;
  v3 = type metadata accessor for SESAssetManager();
  v13[3] = v2;
  v13[4] = &off_1004CC6B0;
  v13[0] = a1;
  v4 = qword_100501C58;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = *(qword_1005098E8 + OBJC_IVAR____TtC10seserviced15SESAssetManager_queue);
  sub_1000BC094(v13, v12);
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  sub_1000BC104(v12, v6 + 24);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_10023F738;
  *(v7 + 24) = v6;
  v11[4] = sub_1000B3564;
  v11[5] = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100346DB0;
  v11[3] = &unk_1004CCA18;
  v8 = _Block_copy(v11);
  v9 = v5;

  dispatch_sync(v9, v8);

  _Block_release(v8);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if ((v8 & 1) == 0)
  {
    return sub_1000752F4(v13);
  }

  __break(1u);
  return result;
}

uint64_t sub_100239124@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t *)@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  result = sub_1002F79A8(a2, a3, *(a1 + 8));
  *a4 = result & 1;
  return result;
}

uint64_t sub_100239160(char a1, char a2, uint64_t a3, unint64_t a4)
{
  v4 = BYTE6(a4);
  v8 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v8)
    {
      v9 = BYTE6(a4);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v8 != 2)
  {
    v9 = 0;
    goto LABEL_11;
  }

  v11 = *(a3 + 16);
  v10 = *(a3 + 24);
  v12 = __OFSUB__(v10, v11);
  v9 = v10 - v11;
  if (v12)
  {
    __break(1u);
LABEL_8:
    LODWORD(v9) = HIDWORD(a3) - a3;
    if (__OFSUB__(HIDWORD(a3), a3))
    {
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    v9 = v9;
  }

LABEL_11:
  if (__OFADD__(v9, 4))
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v32 = sub_1001303A8(v9 + 4);
  v33 = v13;
  LOBYTE(v27) = a1;
  v30 = &type metadata for UnsafeRawBufferPointer;
  v31 = &protocol witness table for UnsafeRawBufferPointer;
  v28 = &v27;
  v29 = (&v27 + 1);
  v14 = sub_1000752B0(&v28, &type metadata for UnsafeRawBufferPointer);
  v16 = *v14;
  v15 = v14[1];
  Data._Representation.append(contentsOf:)();
  sub_1000752F4(&v28);
  LOBYTE(v27) = a2;
  v30 = &type metadata for UnsafeRawBufferPointer;
  v31 = &protocol witness table for UnsafeRawBufferPointer;
  v28 = &v27;
  v29 = (&v27 + 1);
  v17 = sub_1000752B0(&v28, &type metadata for UnsafeRawBufferPointer);
  v19 = *v17;
  v18 = v17[1];
  Data._Representation.append(contentsOf:)();
  sub_1000752F4(&v28);
  if (v8 > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_24;
    }

    v22 = *(a3 + 16);
    v21 = *(a3 + 24);
    v12 = __OFSUB__(v21, v22);
    v20 = v21 - v22;
    if (!v12)
    {
LABEL_21:
      if ((v20 & 0x8000000000000000) == 0)
      {
        if (!(v20 >> 16))
        {
          goto LABEL_25;
        }

        __break(1u);
LABEL_24:
        LODWORD(v20) = 0;
        goto LABEL_25;
      }

      goto LABEL_27;
    }

    __break(1u);
LABEL_19:
    LODWORD(v20) = HIDWORD(a3) - a3;
    if (__OFSUB__(HIDWORD(a3), a3))
    {
      goto LABEL_29;
    }

    v20 = v20;
    goto LABEL_21;
  }

  if (v8)
  {
    goto LABEL_19;
  }

  LODWORD(v20) = v4;
LABEL_25:
  v27 = bswap32(v20) >> 16;
  v30 = &type metadata for UnsafeRawBufferPointer;
  v31 = &protocol witness table for UnsafeRawBufferPointer;
  v28 = &v27;
  v29 = &v28;
  v23 = sub_1000752B0(&v28, &type metadata for UnsafeRawBufferPointer);
  v25 = *v23;
  v24 = v23[1];
  Data._Representation.append(contentsOf:)();
  sub_1000752F4(&v28);
  Data.append(_:)();
  return v32;
}

uint64_t sub_100239364(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v54 = type metadata accessor for UUID();
  v6 = a1;
  v7 = *(v54 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v53 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v9 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for Peer();
    sub_10023E228(&qword_100503F20, type metadata accessor for Peer);
    Set.Iterator.init(_cocoa:)();
    result = v59;
    v13 = v60;
    v14 = v61;
    v15 = v62;
    v16 = v63;
  }

  else
  {
    v17 = -1 << *(v9 + 32);
    v13 = v9 + 56;
    v14 = ~v17;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v9 + 56);

    v16 = v20;
    v15 = 0;
  }

  v49 = v14;
  v51 = (v7 + 8);
  v52 = (v7 + 16);
  v55 = _swiftEmptyArrayStorage;
  *&v11 = 136315138;
  v50 = v11;
  v56 = result;
LABEL_8:
  v21 = v15;
  v22 = v16;
  while (1)
  {
    if (result < 0)
    {
      v26 = __CocoaSet.Iterator.next()();
      if (!v26 || (v58 = v26, type metadata accessor for Peer(), swift_dynamicCast(), v25 = v64, v15 = v21, v57 = v22, !v64))
      {
LABEL_29:
        sub_100093854();
        return v55;
      }

      goto LABEL_19;
    }

    v23 = v21;
    v24 = v22;
    v15 = v21;
    if (!v22)
    {
      break;
    }

LABEL_15:
    v57 = (v24 - 1) & v24;
    v25 = *(*(result + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v24)))));

    if (!v25)
    {
      goto LABEL_29;
    }

LABEL_19:
    type metadata accessor for AlishaPeer();
    v27 = swift_dynamicCastClass();
    if (v27)
    {
      v28 = *(*(v27 + OBJC_IVAR____TtC10seserviced10AlishaPeer_configuration) + 104);

      v21 = v15;
      result = v56;
      v22 = v57;
      if (v28 == v28)
      {
        v40 = v55;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v40 = sub_10012EEF4(0, *(v40 + 2) + 1, 1, v40);
        }

        v43 = *(v40 + 2);
        v42 = *(v40 + 3);
        result = v56;
        v16 = v57;
        if (v43 >= v42 >> 1)
        {
          v40 = sub_10012EEF4((v42 > 1), v43 + 1, 1, v40);
          result = v56;
          v16 = v57;
        }

        *(v40 + 2) = v43 + 1;
        v55 = v40;
        v40[v43 + 32] = v28;
        goto LABEL_8;
      }
    }

    else
    {

      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v48 = a2;
        v32 = v31;
        v46 = swift_slowAlloc();
        v64 = v46;
        *v32 = v50;
        v33 = *v52;
        v45 = v29;
        v34 = v53;
        HIDWORD(v44) = v30;
        v35 = v54;
        v33(v53, v25 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v54);
        sub_10023E228(&qword_100504C70, &type metadata accessor for UUID);
        v36 = dispatch thunk of CustomStringConvertible.description.getter();
        v47 = v3;
        v38 = v37;
        (*v51)(v34, v35);
        v39 = sub_1002FFA0C(v36, v38, &v64);
        v3 = v47;

        *(v32 + 4) = v39;
        v29 = v45;
        _os_log_impl(&_mh_execute_header, v45, BYTE4(v44), "Failed to cast Peer to AlishaPeer %s", v32, 0xCu);
        sub_1000752F4(v46);

        a2 = v48;
      }

      v21 = v15;
      result = v56;
      v22 = v57;
    }
  }

  while (1)
  {
    v15 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v15 >= ((v14 + 64) >> 6))
    {
      goto LABEL_29;
    }

    v24 = *(v13 + 8 * v15);
    ++v23;
    if (v24)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100239874(uint64_t a1, unint64_t a2, int a3, int64_t a4, unint64_t a5, uint64_t a6)
{
  v123 = a6;
  v118[1] = a5;
  v125 = a3;
  v118[0] = a2;
  v119 = a1;
  v122 = type metadata accessor for Alisha.DKMessage(0);
  v9 = *(*(v122 - 8) + 64);
  __chkstk_darwin(v122);
  v121 = v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = (v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_168;
  }

LABEL_2:
  v16 = qword_10051B7F0;
  *v15 = qword_10051B7F0;
  (*(v12 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v11);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v15, v11);
  if ((v16 & 1) == 0)
  {
    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

  if (v125)
  {
    v19 = *(a4 + OBJC_IVAR____TtC10seserviced4Peer_buffer + 8);
    *&v129 = *(a4 + OBJC_IVAR____TtC10seserviced4Peer_buffer);
    v18 = v129;
    *(&v129 + 1) = v19;
    *(a4 + OBJC_IVAR____TtC10seserviced4Peer_buffer) = xmmword_1004098E0;
    sub_10006A2BC(v18, v19);
    sub_10006A2D0(v18, v19);
    if (v19 >> 60 == 15 || (Data.append(_:)(), v19 = *(&v129 + 1), *(&v129 + 1) >> 60 == 15))
    {
      v6 = v119;
      v7 = v118[0];
      sub_100069E2C(v119, v118[0]);
      v20 = v6;
      v21 = v7;
    }

    else
    {
      v20 = v129;
      sub_100069E2C(v129, *(&v129 + 1));
      v21 = v19;
      v7 = v118[0];
      v6 = v119;
    }

    *&v132 = v20;
    *(&v132 + 1) = v21;
    sub_100069E2C(v6, v7);
    v23 = Logger.logObject.getter();
    LOBYTE(v22) = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v23, v22))
    {
      sub_10006A178(v6, v7);
LABEL_43:

      sub_10006A2D0(v129, v19);
      goto LABEL_44;
    }

    v24 = swift_slowAlloc();
    v6 = v24;
    *v24 = 134218240;
    v26 = v7 >> 62;
    if ((v7 >> 62) <= 1)
    {
      if (v26)
      {
        LODWORD(v27) = HIDWORD(v119) - v119;
        if (__OFSUB__(HIDWORD(v119), v119))
        {
          goto LABEL_171;
        }

        v27 = v27;
      }

      else
      {
        v27 = BYTE6(v7);
      }

      goto LABEL_33;
    }

    goto LABEL_22;
  }

  v22 = v118[0];
  *&v132 = v119;
  *(&v132 + 1) = v118[0];
  sub_100069E2C(v119, v118[0]);
  v23 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v23, v19))
  {
    v24 = swift_slowAlloc();
    *v24 = 134217984;
    v25 = v22 >> 62;
    if ((v22 >> 62) > 1)
    {
      if (v25 == 2)
      {
        v29 = *(v119 + 16);
        v28 = *(v119 + 24);
        v30 = __OFSUB__(v28, v29);
        v26 = v28 - v29;
        if (v30)
        {
          __break(1u);
LABEL_22:
          if (v26 != 2)
          {
            v27 = 0;
            goto LABEL_33;
          }

          v32 = *(v119 + 16);
          v31 = *(v119 + 24);
          v30 = __OFSUB__(v31, v32);
          v27 = v31 - v32;
          if (!v30)
          {
LABEL_33:
            *(v6 + 4) = v27;
            sub_10006A178(v119, v7);
            *(v6 + 12) = 2048;
            swift_beginAccess();
            v33 = v132;
            v34 = *(&v132 + 1) >> 62;
            if ((*(&v132 + 1) >> 62) > 1)
            {
              v35 = 0;
              if (v34 != 2)
              {
                goto LABEL_42;
              }

              v33 = *(v132 + 16);
              v36 = *(v132 + 24);
              v30 = __OFSUB__(v36, v33);
              v35 = v36 - v33;
              if (!v30)
              {
                goto LABEL_42;
              }

              __break(1u);
            }

            else if (!v34)
            {
              v35 = BYTE14(v132);
LABEL_42:
              *(v6 + 14) = v35;
              _os_log_impl(&_mh_execute_header, v23, v22, "Processing %ld bytes; %ld bytes including accumulated", v6, 0x16u);

              goto LABEL_43;
            }

            v30 = __OFSUB__(HIDWORD(v33), v33);
            v37 = HIDWORD(v33) - v33;
            if (v30)
            {
              goto LABEL_172;
            }

            v35 = v37;
            goto LABEL_42;
          }

          __break(1u);
          goto LABEL_26;
        }
      }

      else
      {
        v26 = 0;
      }
    }

    else
    {
      if (v25)
      {
LABEL_26:
        LODWORD(v26) = HIDWORD(v119) - v119;
        if (__OFSUB__(HIDWORD(v119), v119))
        {
          goto LABEL_170;
        }

        v26 = v26;
        goto LABEL_31;
      }

      v26 = BYTE6(v22);
    }

LABEL_31:
    *(v24 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v23, v19, "Processing %ld bytes", v24, 0xCu);

    goto LABEL_44;
  }

LABEL_44:
  v124 = OBJC_IVAR____TtC10seserviced4Peer_sequenceNumber;
  v12 = OBJC_IVAR____TtC10seserviced4Peer_connectionIdentifier;
  swift_beginAccess();
  v120 = v12;
  swift_beginAccess();
  v15 = 0;
  while (1)
  {
    v11 = *(&v132 + 1);
    v38 = v132;
    v39 = *(&v132 + 1) >> 62;
    if ((*(&v132 + 1) >> 62) > 1)
    {
      if (v39 != 2)
      {
        goto LABEL_136;
      }

      v40 = *(v132 + 16);
      v41 = *(v132 + 24);
    }

    else
    {
      if (!v39)
      {
        if ((*(&v132 + 1) & 0xFF000000000000) == 0)
        {
          goto LABEL_136;
        }

        if (BYTE14(v132) < 4uLL)
        {
          goto LABEL_94;
        }

        goto LABEL_60;
      }

      v40 = v132;
      v41 = v132 >> 32;
    }

    if (v40 == v41)
    {
      goto LABEL_136;
    }

    if (v39 == 2)
    {
      v43 = *(v132 + 16);
      v42 = *(v132 + 24);
      v30 = __OFSUB__(v42, v43);
      v44 = v42 - v43;
      if (v30)
      {
        goto LABEL_163;
      }

      if (v44 < 4)
      {
        goto LABEL_94;
      }
    }

    else
    {
      if (__OFSUB__(DWORD1(v132), v132))
      {
        goto LABEL_164;
      }

      if (DWORD1(v132) - v132 < 4)
      {
LABEL_94:
        v75 = Logger.logObject.getter();
        LOBYTE(v38) = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v75, v38))
        {
          v76 = swift_slowAlloc();
          *v76 = 134217984;
          v77 = v132;
          v78 = *(&v132 + 1) >> 62;
          if ((*(&v132 + 1) >> 62) > 1)
          {
            goto LABEL_105;
          }

          if (v78)
          {
            goto LABEL_128;
          }

          v77 = BYTE14(v132);
LABEL_131:
          *(v76 + 4) = v77;
          _os_log_impl(&_mh_execute_header, v75, v38, "Got partial data of size %ld < header size", v76, 0xCu);
        }

        v11 = *(&v132 + 1);
        v38 = v132;
        if (v125)
        {
          v130 = &type metadata for Data;
          v131 = &protocol witness table for Data;
          v129 = v132;
          v97 = sub_1000752B0(&v129, &type metadata for Data);
          v88 = *v97;
          v89 = v97[1];
          v98 = v89 >> 62;
          if ((v89 >> 62) > 1)
          {
            if (v98 != 2)
            {
              goto LABEL_144;
            }

            v103 = *(v88 + 16);
            v104 = *(v88 + 24);
            sub_100069E2C(v38, v11);
            v11 = v89 & 0x3FFFFFFFFFFFFFFFLL;
            v38 = __DataStorage._bytes.getter();
            if (v38)
            {
              v11 = v89 & 0x3FFFFFFFFFFFFFFFLL;
              v105 = __DataStorage._offset.getter();
              if (__OFSUB__(v103, v105))
              {
                goto LABEL_178;
              }

              v38 += v103 - v105;
            }

            v30 = __OFSUB__(v104, v103);
            v93 = v104 - v103;
            if (v30)
            {
              __break(1u);
              goto LABEL_144;
            }
          }

          else
          {
            if (!v98)
            {
LABEL_135:
              v127[0] = v88;
              LOWORD(v127[1]) = v89;
              BYTE2(v127[1]) = BYTE2(v89);
              BYTE3(v127[1]) = BYTE3(v89);
              BYTE4(v127[1]) = BYTE4(v89);
              BYTE5(v127[1]) = BYTE5(v89);
              sub_100069E2C(v38, v11);
              v99 = v127;
              v100 = v127 + BYTE6(v89);
              goto LABEL_156;
            }

            v106 = v88;
            v107 = v88 >> 32;
            v93 = v107 - v106;
            if (v107 < v106)
            {
              goto LABEL_176;
            }

            sub_100069E2C(v38, v11);
            v38 = __DataStorage._bytes.getter();
            if (v38)
            {
              v108 = __DataStorage._offset.getter();
              v88 = v106 - v108;
              if (__OFSUB__(v106, v108))
              {
                goto LABEL_179;
              }

LABEL_148:
              v38 += v88;
            }
          }

LABEL_149:
          v109 = __DataStorage._length.getter();
          if (v109 >= v93)
          {
            v110 = v93;
          }

          else
          {
            v110 = v109;
          }

          v111 = (v110 + v38);
          if (v38)
          {
            v100 = v111;
          }

          else
          {
            v100 = 0;
          }

          v99 = v38;
          goto LABEL_156;
        }

LABEL_136:
        v101 = v38;
        v102 = v11;
        return sub_10006A178(v101, v102);
      }
    }

LABEL_60:
    sub_100069E2C(v132, *(&v132 + 1));
    v11 = sub_1000939AC(v38, v11, 0, 0, 0);
    v46 = *(&v132 + 1);
    v45 = v132;
    sub_100069E2C(v132, *(&v132 + 1));
    v47 = sub_1000939AC(v45, v46, 1, 0, 0);
    v49 = *(&v132 + 1);
    v48 = v132;
    sub_100069E2C(v132, *(&v132 + 1));
    v7 = sub_100090214(v48, v49, 2, 0, 0);
    sub_10006A178(v48, v49);
    v50 = v7;
    v6 = v7 + 4;
    if (v7 > 0x3FCu)
    {

      v79 = Logger.logObject.getter();
      v80 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        *v81 = 134218240;
        *(v81 + 4) = v6;
        *(v81 + 12) = 2048;
        *(v81 + 14) = 1024;

        _os_log_impl(&_mh_execute_header, v79, v80, "Discarding message exceeding max size %ld > %ld", v81, 0x16u);
      }

      else
      {
      }

      goto LABEL_157;
    }

    v52 = *(&v132 + 1);
    v51 = v132;
    v53 = *(&v132 + 1) >> 62;
    if ((*(&v132 + 1) >> 62) > 1)
    {
      v54 = v124;
      if (v53 != 2)
      {
        break;
      }

      v56 = *(v132 + 16);
      v55 = *(v132 + 24);
      v30 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v30)
      {
        goto LABEL_167;
      }

      if (v57 < v6)
      {
        break;
      }

      goto LABEL_71;
    }

    v54 = v124;
    if (!v53)
    {
      if (BYTE14(v132) < v6)
      {
        break;
      }

      goto LABEL_71;
    }

    if (__OFSUB__(DWORD1(v132), v132))
    {
      goto LABEL_166;
    }

    if (DWORD1(v132) - v132 < v6)
    {
      break;
    }

LABEL_71:
    if ((v125 & 1) != 0 && v11 <= 5u && ((1 << v11) & 0x27) != 0)
    {
      v58 = *(a4 + v54);
      v30 = __OFADD__(v58, 1);
      v59 = v58 + 1;
      if (v30)
      {
        goto LABEL_165;
      }

      *(a4 + v54) = v59;
    }

    v60 = v53;
    if (v53)
    {
      if (v53 == 2)
      {
        v61 = *(v51 + 16);
      }

      else
      {
        v61 = v51;
      }
    }

    else
    {
      v61 = 0;
    }

    v7 = v61 + 4;
    if (__OFADD__(v61, 4))
    {
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
      __break(1u);
LABEL_166:
      __break(1u);
LABEL_167:
      __break(1u);
LABEL_168:
      swift_once();
      goto LABEL_2;
    }

    if (v53)
    {
      if (v53 == 2)
      {
        v60 = *(v51 + 16);
      }

      else
      {
        v60 = v51;
      }
    }

    v62 = v60 + 4;
    if (__OFADD__(v60, 4))
    {
      goto LABEL_160;
    }

    v12 = a4;
    a4 = v62 + v50;
    if (__OFADD__(v62, v50))
    {
      goto LABEL_161;
    }

    if (a4 < v7)
    {
      goto LABEL_162;
    }

    v63 = v54;
    sub_100069E2C(v51, v52);
    v64 = Data.subdata(in:)();
    v66 = v65;
    sub_10006A178(v51, v52);
    v67 = v122;
    v68 = *(v122 + 28);
    v69 = type metadata accessor for UUID();
    v70 = *(*(v69 - 8) + 16);
    v126 = v6;
    v6 = v121;
    v70(&v121[v68], v12 + v120, v69);
    v71 = *(v12 + v63);
    v15 = 0;
    *v6 = v11;
    *(v6 + 1) = v47;
    *(v6 + 8) = v64;
    *(v6 + 16) = v66;
    a4 = v12;
    *(v6 + *(v67 + 32)) = v71;
    *(v6 + *(v67 + 36)) = v12;
    v72 = *(v6 + 8);
    v7 = *(v6 + 16);

    sub_1000B136C(v11, v47, v72, v7, v6 + v68, v12);
    sub_10023BB10(v6);
    v73 = v132;
    sub_100069E2C(v132, *(&v132 + 1));
    sub_100084D68(v126, v73, *(&v73 + 1), &v129);
    v74 = v132;
    v132 = v129;
    sub_10006A178(v74, *(&v74 + 1));
  }

  v75 = Logger.logObject.getter();
  LOBYTE(v38) = static os_log_type_t.info.getter();
  if (!os_log_type_enabled(v75, v38))
  {
    goto LABEL_113;
  }

  v76 = swift_slowAlloc();
  *v76 = 134218240;
  v77 = v132;
  v78 = *(&v132 + 1) >> 62;
  if ((*(&v132 + 1) >> 62) <= 1)
  {
    if (!v78)
    {
      v77 = BYTE14(v132);
      goto LABEL_112;
    }

LABEL_109:
    v30 = __OFSUB__(HIDWORD(v77), v77);
    LODWORD(v77) = HIDWORD(v77) - v77;
    if (!v30)
    {
      v77 = v77;
      goto LABEL_112;
    }

LABEL_173:
    __break(1u);
LABEL_174:
    __break(1u);
LABEL_175:
    __break(1u);
LABEL_176:
    __break(1u);
LABEL_177:
    __break(1u);
LABEL_178:
    __break(1u);
LABEL_179:
    __break(1u);
  }

  if (v78 != 2)
  {
    v77 = 0;
    goto LABEL_112;
  }

  v82 = *(v132 + 16);
  v83 = *(v132 + 24);
  v30 = __OFSUB__(v83, v82);
  v77 = v83 - v82;
  if (v30)
  {
    __break(1u);
LABEL_105:
    if (v78 == 2)
    {
      v86 = v77 + 16;
      v84 = *(v77 + 16);
      v85 = *(v86 + 8);
      v30 = __OFSUB__(v85, v84);
      v77 = v85 - v84;
      if (v30)
      {
        __break(1u);
        goto LABEL_109;
      }
    }

    else
    {
      v77 = 0;
    }

    goto LABEL_131;
  }

LABEL_112:
  *(v76 + 4) = v77;
  *(v76 + 12) = 2048;
  *(v76 + 14) = v6;
  _os_log_impl(&_mh_execute_header, v75, v38, "Got partial data of size %ld expected %ld", v76, 0x16u);

LABEL_113:

  v11 = *(&v132 + 1);
  v38 = v132;
  if ((v125 & 1) == 0)
  {
    goto LABEL_136;
  }

  v130 = &type metadata for Data;
  v131 = &protocol witness table for Data;
  v129 = v132;
  v87 = sub_1000752B0(&v129, &type metadata for Data);
  v88 = *v87;
  v89 = v87[1];
  v90 = v89 >> 62;
  if ((v89 >> 62) > 1)
  {
    goto LABEL_121;
  }

  if (!v90)
  {
    goto LABEL_135;
  }

  v91 = v88;
  v92 = v88 >> 32;
  v93 = v92 - v91;
  if (v92 < v91)
  {
    goto LABEL_174;
  }

  sub_100069E2C(v38, v11);
  v38 = __DataStorage._bytes.getter();
  if (!v38)
  {
    goto LABEL_149;
  }

  v11 = v89 & 0x3FFFFFFFFFFFFFFFLL;
  v94 = __DataStorage._offset.getter();
  v88 = v91 - v94;
  if (!__OFSUB__(v91, v94))
  {
    goto LABEL_148;
  }

  __break(1u);
LABEL_121:
  if (v90 == 2)
  {
    v95 = *(v88 + 16);
    v96 = *(v88 + 24);
    sub_100069E2C(v38, v11);
    v75 = (v89 & 0x3FFFFFFFFFFFFFFFLL);
    v76 = __DataStorage._bytes.getter();
    v38 = v76;
    if (v76)
    {
      v75 = (v89 & 0x3FFFFFFFFFFFFFFFLL);
      v76 = __DataStorage._offset.getter();
      v77 = v95 - v76;
      if (__OFSUB__(v95, v76))
      {
        goto LABEL_177;
      }

      v38 += v77;
    }

    v30 = __OFSUB__(v96, v95);
    v93 = v96 - v95;
    if (!v30)
    {
      goto LABEL_149;
    }

    __break(1u);
LABEL_128:
    v30 = __OFSUB__(HIDWORD(v77), v77);
    LODWORD(v77) = HIDWORD(v77) - v77;
    if (v30)
    {
      goto LABEL_175;
    }

    v77 = v77;
    goto LABEL_131;
  }

LABEL_144:
  memset(v127, 0, 14);
  sub_100069E2C(v38, v11);
  v99 = v127;
  v100 = v127;
LABEL_156:
  sub_10008E434(v99, v100, v128);
  v112 = v128[0];
  v113 = v128[1];
  sub_1000752F4(&v129);
  v114 = (a4 + OBJC_IVAR____TtC10seserviced4Peer_buffer);
  v115 = *(a4 + OBJC_IVAR____TtC10seserviced4Peer_buffer);
  v116 = *(a4 + OBJC_IVAR____TtC10seserviced4Peer_buffer + 8);
  *v114 = v112;
  v114[1] = v113;
  sub_10006A2D0(v115, v116);
LABEL_157:
  v102 = *(&v132 + 1);
  v101 = v132;
  return sub_10006A178(v101, v102);
}