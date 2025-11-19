uint64_t sub_1001C5054(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  sub_10005DC58(&qword_10058FED0, &qword_100493980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004938F0;
  *(inited + 32) = kSecAttrAccessGroup;
  *(inited + 40) = a3;
  *(inited + 48) = a4;
  *(inited + 64) = &type metadata for String;
  *(inited + 72) = kSecAttrSynchronizable;
  *(inited + 104) = &type metadata for Bool;
  *(inited + 112) = kSecAttrIsInvisible;
  *(inited + 120) = 1;
  *(inited + 144) = &type metadata for Bool;
  *(inited + 152) = kSecAttrLabel;
  *(inited + 80) = a11 == 1;
  if (a11 <= 1u)
  {
    if (a11)
    {
      v20 = 0xE600000000000000;
      v19 = 0x63696C627570;
    }

    else
    {
      v20 = 0xE700000000000000;
      v19 = 0x65746176697270;
    }
  }

  else if (a11 == 2)
  {
    v20 = 0xEC0000006C61636FLL;
    v19 = 0x6C5F63696C627570;
  }

  else if (a11 == 3)
  {
    v19 = 0xD000000000000010;
    v20 = 0x80000001004B5200;
  }

  else
  {
    v20 = 0x80000001004B5220;
    v19 = 0xD000000000000011;
  }

  *(inited + 160) = v19;
  *(inited + 168) = v20;
  *(inited + 184) = &type metadata for String;
  *(inited + 192) = kSecAttrAccount;
  *(inited + 200) = a9;
  *(inited + 208) = a10;
  *(inited + 224) = &type metadata for String;
  *(inited + 232) = kSecAttrService;
  *(inited + 240) = a7;
  *(inited + 248) = a8;
  *(inited + 264) = &type metadata for String;
  *(inited + 272) = kSecValueData;
  *(inited + 304) = &type metadata for Data;
  *(inited + 280) = a1;
  *(inited + 288) = a2;
  v21 = inited;
  v22 = kSecAttrAccessGroup;

  v23 = kSecAttrSynchronizable;
  v24 = kSecAttrIsInvisible;
  v25 = kSecAttrLabel;
  v26 = kSecAttrAccount;

  v27 = kSecAttrService;

  v28 = kSecValueData;
  sub_10000AB0C(a1, a2);
  v29 = sub_1000821A0(v21);
  swift_setDeallocating();
  sub_10005DC58(&qword_10058BAE0, &qword_100480E28);
  result = swift_arrayDestroy();
  if (a11 - 1 >= 2)
  {
    type metadata accessor for CFString(0);
    v40 = v31;
    *&v39 = kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
    sub_100085188(&v39, v38);
    v32 = kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = v29;
    sub_100080710(v38, kSecAttrAccessible, isUniquelyReferenced_nonNull_native);
    return v37;
  }

  if (kSecAttrSyncViewHint)
  {
    v40 = &type metadata for String;
    *&v39 = a5;
    *(&v39 + 1) = a6;
    sub_100085188(&v39, v38);
    v34 = kSecAttrSyncViewHint;

    v35 = swift_isUniquelyReferenced_nonNull_native();
    v37 = v29;
    sub_100080710(v38, v34, v35);

    return v37;
  }

  __break(1u);
  return result;
}

uint64_t AppleKeychain.init(accessGroup:view:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Logger.init(subsystem:category:)();
  *(v4 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_notificationToken) = -1;
  v9 = (v4 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_tokens);
  *v9 = &_swiftEmptySetSingleton;
  v9[1] = 0;
  *(v4 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_keychainMonitors) = &_swiftEmptyDictionarySingleton;
  v10 = (v4 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_nanPairingService);
  *v10 = 0x726961705F6E616ELL;
  v10[1] = 0xEB00000000676E69;
  v11 = (v4 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_identityKeyAccount);
  *v11 = 0x656369766564;
  v11[1] = 0xE600000000000000;
  *(v4 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_pairedPeers) = &_swiftEmptyDictionarySingleton;
  v12 = (v4 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_keychainAccessGroup);
  *v12 = a1;
  v12[1] = a2;
  v13 = (v4 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_keychainView);
  *v13 = a3;
  v13[1] = a4;
  v14 = AppleKeychain.loadPairedPeerAssociationsWithIDs()();
  v15 = OBJC_IVAR____TtC7CoreP2P13AppleKeychain_pairedPeers;
  swift_beginAccess();
  v16 = *(v4 + v15);
  *(v4 + v15) = v14;

  return v4;
}

void sub_1001C5540()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7CoreP2P13AppleKeychain_keychainMonitors;
  swift_beginAccess();
  v3 = *(*(v1 + v2) + 16);
  v4 = OBJC_IVAR____TtC7CoreP2P13AppleKeychain_notificationToken;
  if (v3)
  {
    swift_beginAccess();
    if (!notify_is_valid_token(*(v1 + v4)))
    {
      _StringGuts.grow(_:)(33);

      v19[0] = 0xD00000000000001FLL;
      v19[1] = 0x80000001004BAEA0;
      String.append(_:)(*(v1 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_keychainView));

      v5 = sub_1001D5E40(0xD00000000000001FLL, 0x80000001004BAEA0, v1);

      if (v5)
      {
        v6 = Logger.logObject.getter();
        v7 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v6, v7))
        {
          v8 = swift_slowAlloc();
          v9 = swift_slowAlloc();
          v19[0] = v9;
          *v8 = 136315138;
          v10 = sub_1002A5014(v5);
          v12 = sub_100002320(v10, v11, v19);

          *(v8 + 4) = v12;
          v13 = "Failed to start monitoring keychain updates with error: %s";
LABEL_10:
          _os_log_impl(&_mh_execute_header, v6, v7, v13, v8, 0xCu);
          sub_100002A00(v9);

          goto LABEL_11;
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
    swift_beginAccess();
    if (notify_is_valid_token(*(v1 + v4)))
    {
      v14 = notify_cancel(*(v1 + v4));
      *(v1 + v4) = -1;
      if (v14)
      {
        v15 = v14;
        v6 = Logger.logObject.getter();
        v7 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v6, v7))
        {
          v8 = swift_slowAlloc();
          v9 = swift_slowAlloc();
          v19[0] = v9;
          *v8 = 136315138;
          v16 = sub_1002A5014(v15);
          v18 = sub_100002320(v16, v17, v19);

          *(v8 + 4) = v18;
          v13 = "Failed to cancel monitoring keychain updates with error: %s";
          goto LABEL_10;
        }

LABEL_11:
      }
    }
  }
}

void sub_1001C57E4(const char *a1@<X0>, uint64_t a2@<X1>, uint32_t *a3@<X8>)
{
  if (qword_10058AA28 != -1)
  {
    swift_once();
  }

  v6 = static OS_dispatch_queue.nan;
  v7 = swift_allocObject();
  swift_weakInit();
  v11[4] = sub_1001D7A54;
  v11[5] = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_1001C5BEC;
  v11[3] = &unk_1005675A8;
  v8 = _Block_copy(v11);

  v9 = OBJC_IVAR____TtC7CoreP2P13AppleKeychain_notificationToken;
  swift_beginAccess();
  v10 = notify_register_dispatch(a1, (a2 + v9), v6, v8);
  swift_endAccess();
  _Block_release(v8);
  *a3 = v10;
}

uint64_t sub_1001C5948()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v1 + 16))(v4, Strong + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_logger, v0);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Received keychain updated notification", v8, 2u);
    }

    (*(v1 + 8))(v4, v0);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = OBJC_IVAR____TtC7CoreP2P13AppleKeychain_keychainMonitors;
    v11 = result;
    swift_beginAccess();
    v12 = *(v11 + v10);

    v13 = 1 << *(v12 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v12 + 64);
    v16 = (v13 + 63) >> 6;

    for (i = 0; v15; result = )
    {
      v18 = i;
LABEL_14:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v20 = *(v12 + 56) + ((v18 << 10) | (16 * v19));
      v22 = *v20;
      v21 = *(v20 + 8);

      v22(v23);
    }

    while (1)
    {
      v18 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v18 >= v16)
      {
      }

      v15 = *(v12 + 64 + 8 * v18);
      ++i;
      if (v15)
      {
        i = v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1001C5BEC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t AppleKeychain.monitor(using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = sub_1001B93E4();
  v8 = v7;
  result = swift_endAccess();
  if (v8)
  {
    __break(1u);
  }

  else
  {
    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    *(v10 + 24) = a2;
    v11 = OBJC_IVAR____TtC7CoreP2P13AppleKeychain_keychainMonitors;
    swift_beginAccess();

    v12 = *(v3 + v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v3 + v11);
    *(v3 + v11) = 0x8000000000000000;
    sub_100080850(sub_1001D6BCC, v10, v6, isUniquelyReferenced_nonNull_native);
    *(v3 + v11) = v14;
    swift_endAccess();
    sub_1001C5540();
    return v6;
  }

  return result;
}

Swift::Void __swiftcall AppleKeychain.stopMonitoring(_:)(Swift::UInt64 a1)
{
  swift_beginAccess();
  v2 = sub_10007F974(a1);
  swift_endAccess();
  sub_100010520(v2);
  sub_1001C5540();
  swift_beginAccess();
  sub_1001D4D20(a1);
  swift_endAccess();
}

uint64_t AppleKeychain.findIdentities(for:)(uint64_t a1, uint64_t a2, void *a3)
{
  v463 = a1;
  v5 = *(*(sub_10005DC58(&qword_10058FEC0, &qword_100493970) - 8) + 64);
  __chkstk_darwin();
  v471 = &v395 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v483 = (&v395 - v7);
  v8 = type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy();
  v432 = *(v8 - 8);
  v433 = v8;
  v9 = *(v432 + 64);
  __chkstk_darwin();
  v430 = &v395 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v431 = type metadata accessor for Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy();
  v429 = *(v431 - 8);
  v11 = *(v429 + 64);
  __chkstk_darwin();
  v425 = &v395 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v426 = type metadata accessor for Duration.UnitsFormatStyle.UnitWidth();
  v424 = *(v426 - 8);
  v13 = *(v424 + 64);
  __chkstk_darwin();
  v422 = &v395 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Duration.UnitsFormatStyle();
  v427 = *(v15 - 8);
  v428 = v15;
  v16 = *(v427 + 64);
  __chkstk_darwin();
  v423 = &v395 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v484 = type metadata accessor for UUID();
  v473 = *(v484 - 8);
  v18 = *(v473 + 64);
  __chkstk_darwin();
  v469 = &v395 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v445 = &v395 - v20;
  __chkstk_darwin();
  v482 = &v395 - v21;
  __chkstk_darwin();
  v472 = (&v395 - v22);
  __chkstk_darwin();
  v447 = (&v395 - v23);
  __chkstk_darwin();
  v440 = (&v395 - v24);
  v25 = *(*(sub_10005DC58(&qword_10058FE28, &unk_1004B2430) - 8) + 64);
  __chkstk_darwin();
  v470 = &v395 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v442 = (&v395 - v27);
  __chkstk_darwin();
  v435 = &v395 - v28;
  v29 = *(*(sub_10005DC58(&qword_10058FE50, &unk_100493930) - 8) + 64);
  __chkstk_darwin();
  v461 = &v395 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v446 = (&v395 - v31);
  __chkstk_darwin();
  v458 = (&v395 - v32);
  v480 = type metadata accessor for LongTermPairingKeys.PublicIdentity(0);
  v476 = *(v480 - 8);
  v33 = *(v476 + 64);
  __chkstk_darwin();
  v481 = &v395 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v466 = &v395 - v35;
  __chkstk_darwin();
  v441 = (&v395 - v36);
  __chkstk_darwin();
  v444 = (&v395 - v37);
  __chkstk_darwin();
  *&v439 = &v395 - v38;
  __chkstk_darwin();
  v443 = &v395 - v39;
  v465 = type metadata accessor for LongTermPairingKeys.PrivateIdentity(0);
  v464 = *(v465 - 8);
  v40 = *(v464 + 64);
  __chkstk_darwin();
  v459 = (&v395 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v467 = (&v395 - v42);
  __chkstk_darwin();
  v438 = &v395 - v43;
  v44 = *(*(sub_10005DC58(&qword_10058FEC8, &qword_100493978) - 8) + 64);
  __chkstk_darwin();
  v451 = &v395 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v452 = (&v395 - v46);
  __chkstk_darwin();
  v434 = &v395 - v47;
  __chkstk_darwin();
  v474 = &v395 - v48;
  __chkstk_darwin();
  v454 = &v395 - v49;
  v475 = type metadata accessor for Date();
  v453 = *(v475 - 8);
  v50 = *(v453 + 8);
  __chkstk_darwin();
  v460 = &v395 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v436 = &v395 - v52;
  __chkstk_darwin();
  v437 = &v395 - v53;
  __chkstk_darwin();
  v456 = (&v395 - v54);
  __chkstk_darwin();
  v421 = &v395 - v55;
  __chkstk_darwin();
  v462 = &v395 - v56;
  v450 = sub_10005DC58(&qword_10058FED0, &qword_100493980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004817D0;
  v478 = kSecClass;
  *(inited + 32) = kSecClass;
  v479 = (inited + 32);
  p_isa = &kSecClassGenericPassword->isa;
  type metadata accessor for CFString(0);
  v59 = v58;
  *(inited + 40) = kSecClassGenericPassword;
  *(inited + 64) = v58;
  *(inited + 72) = kSecAttrSynchronizable;
  *(inited + 80) = kSecAttrSynchronizableAny;
  *(inited + 104) = v58;
  *(inited + 112) = kSecAttrService;
  v455 = a2;
  *(inited + 120) = a2;
  *(inited + 128) = a3;
  *(inited + 144) = &type metadata for String;
  *(inited + 152) = kSecMatchLimit;
  *(inited + 160) = kSecMatchLimitAll;
  *(inited + 184) = v58;
  *(inited + 192) = kSecReturnData;
  *(inited + 200) = 1;
  *(inited + 224) = &type metadata for Bool;
  *(inited + 232) = kSecReturnAttributes;
  *(inited + 264) = &type metadata for Bool;
  *(inited + 240) = 1;
  v468 = a3;
  swift_bridgeObjectRetain_n();
  v449 = v478;
  v448 = p_isa;
  v60 = kSecAttrSynchronizable;
  v61 = kSecAttrSynchronizableAny;
  v62 = kSecAttrService;
  v63 = kSecMatchLimit;
  v64 = kSecMatchLimitAll;
  v65 = kSecReturnData;
  v66 = kSecReturnAttributes;
  sub_1000821A0(inited);
  swift_setDeallocating();
  v67 = sub_10005DC58(&qword_10058BAE0, &qword_100480E28);
  swift_arrayDestroy();
  v68 = sub_1001D469C(&qword_10058B320, type metadata accessor for CFString);
  v69.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v491 = 0;
  if (SecItemCopyMatching(v69.super.isa, &v491))
  {
    swift_bridgeObjectRelease_n();
    (*(v464 + 56))(v463, 1, 1, v465);
LABEL_76:

    v164 = _swiftEmptyArrayStorage;
    goto LABEL_77;
  }

  v420 = v59;
  if (!v491)
  {
    swift_bridgeObjectRelease_n();
    v71 = v463;
    v73 = v465;
    v74 = v464;
LABEL_75:
    (*(v74 + 56))(v71, 1, 1, v73);
    goto LABEL_76;
  }

  v418 = v60;
  v419 = v68;
  *&v486 = v491;
  swift_unknownObjectRetain();
  sub_10005DC58(&qword_10058F4D8, &unk_100492880);
  v70 = swift_dynamicCast();
  v71 = v463;
  v72 = v468;
  v73 = v465;
  v74 = v464;
  if ((v70 & 1) == 0)
  {
    swift_bridgeObjectRelease_n();
    goto LABEL_75;
  }

  v411 = v67;
  v412 = v62;
  isa = v69.super.isa;
  v75 = v489[0];
  Date.init()();
  v76 = *(v74 + 56);
  v77 = v454;
  p_isa = (v74 + 56);
  v417 = v76;
  v76(v454, 1, 1, v73);
  v485 = &_swiftEmptyDictionarySingleton;
  data = v75->data;
  v478 = v75;
  if (!data)
  {

    v414 = 0;
    v410 = &_swiftEmptyDictionarySingleton;
    v83 = v457;
    v185 = v459;
    v186 = v456;
    goto LABEL_89;
  }

  v409 = 0;
  v405 = 0;
  v80 = 0;
  v414 = 0;
  v408 = OBJC_IVAR____TtC7CoreP2P13AppleKeychain_logger;
  v81 = v75 + 1;
  v413 = (v476 + 56);
  v479 = kSecAttrLabel;
  v400 = (v453 + 48);
  v399 = (v453 + 32);
  v415 = kSecValueData;
  v406 = (v473 + 16);
  v401 = kSecAttrModificationDate;
  v402 = (v473 + 8);
  v403 = (v74 + 48);
  v404 = (v453 + 56);
  v82 = data - 1;
  v83 = &qword_100493978;
  *&v78 = 136315138;
  v407 = v78;
  v410 = &_swiftEmptyDictionarySingleton;
  v84 = type metadata for Any;
  v85 = v467;
  v72 = v474;
  while (1)
  {
    while (1)
    {
      if (v80 >= v75->data)
      {
        __break(1u);
        goto LABEL_170;
      }

      v86 = *(&v81->isa + v80);
      if (!*(v86 + 16))
      {
        goto LABEL_41;
      }

      v87 = *(&v81->isa + v80);

      v88 = sub_10007CFD0(v479);
      if ((v89 & 1) == 0)
      {
        goto LABEL_40;
      }

      sub_100002B30(*(v86 + 56) + 32 * v88, &v486);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_40;
      }

      v90 = *v489;

      v91 = _findStringSwitchCase(cases:string:)(&off_1005560B0, v90);
      swift_bridgeObjectRelease_n();
      if (!v91)
      {
        break;
      }

      v75 = v478;
      if (v91 == 1)
      {
        v84 = type metadata for Any;
        if (!*(v86 + 16))
        {
          goto LABEL_32;
        }

        v92 = sub_10007CFD0(v415);
        if ((v93 & 1) == 0)
        {
          goto LABEL_32;
        }

        sub_100002B30(*(v86 + 56) + 32 * v92, &v486);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_32;
        }

        v95 = v489[1];
        v94 = v489[0];
        v398 = sub_100033AA8(_swiftEmptyArrayStorage);
        v96 = type metadata accessor for BinaryDecoder();
        v97 = swift_allocObject();
        v98 = 0;
        *(v97 + 40) = &_swiftEmptyDictionarySingleton;
        *(v97 + 16) = __PAIR128__(v95, v94);
        v99 = v95 >> 62;
        if ((v95 >> 62) > 1)
        {
          if (v99 == 2)
          {
            v98 = *(v94 + 16);
          }
        }

        else if (v99)
        {
          v98 = v94;
        }

        *(v97 + 32) = v98;
        swift_beginAccess();
        *(v97 + 40) = v398;
        v487 = v96;
        v488 = sub_1001D469C(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
        *&v486 = v97;
        sub_10000AB0C(v94, v95);

        v398 = v95;
        v109 = v458;
        v110 = v414;
        LongTermPairingKeys.PublicIdentity.init(from:)(&v486, v458);
        if (v110)
        {

          sub_1000124C8(v94, v398);

          v414 = 0;
          v84 = type metadata for Any;
          v75 = v478;
LABEL_32:
          v111 = v458;
          (*v413)(v458, 1, 1, v480);
          sub_100016290(v111, &qword_10058FE50, &unk_100493930);
          sub_1001C95DC(v457, v86, v455, v468);

LABEL_33:
          v85 = v467;
          v72 = v474;
          if (v82 == v80)
          {
            goto LABEL_78;
          }

          goto LABEL_42;
        }

        v414 = 0;

        sub_1000124C8(v94, v398);
        (*v413)(v109, 0, 1, v480);
        sub_1001D6B5C(v109, v443, type metadata accessor for LongTermPairingKeys.PublicIdentity);
        if (*(v86 + 16) && (v115 = sub_10007CFD0(v401), (v116 & 1) != 0))
        {
          sub_100002B30(*(v86 + 56) + 32 * v115, &v486);

          v117 = v435;
          v118 = v475;
          v119 = swift_dynamicCast();
          v120 = *v404;
          (*v404)(v117, v119 ^ 1u, 1, v118);
          v121 = (*v400)(v117, 1, v118);
          v122 = v440;
          v123 = v439;
          if (v121 != 1)
          {
            v410 = *v399;
            v124 = v475;
            (v410)(v421, v117, v475);
            v125 = *(v480 + 28);
            v126 = v443;
            sub_100016290(&v443[v125], &qword_10058FE28, &unk_1004B2430);
            (v410)(&v126[v125], v421, v124);
            v127 = v124;
            v123 = v439;
            v122 = v440;
            v120(&v126[v125], 0, 1, v127);
LABEL_53:
            v132 = v443;
            v133 = *v406;
            (*v406)(v122, v443, v484);
            sub_1001D45C0(v132, v123, type metadata accessor for LongTermPairingKeys.PublicIdentity);
            v134 = v485;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v486 = v134;
            v136 = sub_10002A440(v122);
            v138 = v134->data;
            v139 = (v137 & 1) == 0;
            v140 = __OFADD__(v138, v139);
            v141 = &v138[v139];
            if (v140)
            {
              __break(1u);
LABEL_177:
              __break(1u);
            }

            v142 = v137;
            if (v134->length >= v141)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v163 = v136;
                sub_100196DF0();
                v136 = v163;
              }

              v143 = v440;
            }

            else
            {
              sub_10018FDE8(v141, isUniquelyReferenced_nonNull_native);
              v143 = v440;
              v136 = sub_10002A440(v440);
              if ((v142 & 1) != (v144 & 1))
              {
                goto LABEL_179;
              }
            }

            v157 = v486;
            if (v142)
            {
              sub_1001D7894(v439, *(v486 + 56) + *(v476 + 72) * v136, type metadata accessor for LongTermPairingKeys.PublicIdentity);
              (*v402)(v143, v484);
            }

            else
            {
              *(v486 + 8 * (v136 >> 6) + 64) |= 1 << v136;
              v158 = v473;
              v159 = &v157[1].data[*(v473 + 72) * v136];
              v410 = v136;
              v160 = v484;
              v133(v159, v143, v484);
              sub_1001D6B5C(v439, v157[1].length + *(v476 + 72) * v410, type metadata accessor for LongTermPairingKeys.PublicIdentity);
              (*(v158 + 8))(v143, v160);
              v161 = v157->data;
              v140 = __OFADD__(v161, 1);
              v162 = v161 + 1;
              if (v140)
              {
                goto LABEL_177;
              }

              v157->data = v162;
            }

            v84 = type metadata for Any;
            v75 = v478;
            v410 = v157;
            v485 = v157;
            sub_1001D46E4(v443, type metadata accessor for LongTermPairingKeys.PublicIdentity);
            goto LABEL_33;
          }
        }

        else
        {

          v117 = v435;
          (*v404)(v435, 1, 1, v475);
          v122 = v440;
          v123 = v439;
        }

        sub_100016290(v117, &qword_10058FE28, &unk_1004B2430);
        goto LABEL_53;
      }

      if (v91 != 2)
      {
        v84 = type metadata for Any;
        if (v82 == v80)
        {
          goto LABEL_78;
        }

        goto LABEL_42;
      }

      v409 = 1;
      v145 = v82 == v80++;
      v84 = type metadata for Any;
      if (v145)
      {
        goto LABEL_79;
      }
    }

    v84 = type metadata for Any;
    v75 = v478;
    if (!*(v86 + 16))
    {
      goto LABEL_39;
    }

    v100 = sub_10007CFD0(v415);
    if ((v101 & 1) == 0)
    {
      goto LABEL_39;
    }

    sub_100002B30(*(v86 + 56) + 32 * v100, &v486);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_39;
    }

    v102 = v489[1];
    v103 = v489[0];
    v397 = sub_100033AA8(_swiftEmptyArrayStorage);
    v396 = type metadata accessor for BinaryDecoder();
    v104 = swift_allocObject();
    v105 = v103;
    v106 = v104;
    v107 = 0;
    *(v104 + 40) = &_swiftEmptyDictionarySingleton;
    *(v104 + 16) = __PAIR128__(v102, v105);
    v108 = v102 >> 62;
    v398 = v102;
    if ((v102 >> 62) > 1)
    {
      if (v108 == 2)
      {
        v107 = v105[2].isa;
      }
    }

    else if (v108)
    {
      v107 = v105;
    }

    *(v104 + 32) = v107;
    v112 = v105;
    swift_beginAccess();
    v113 = v396;
    *(v106 + 40) = v397;
    v487 = v113;
    v488 = sub_1001D469C(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
    *&v486 = v106;
    v397 = v112;
    sub_10000AB0C(v112, v398);

    v114 = v414;
    LongTermPairingKeys.PrivateIdentity.init(from:)(&v486, v72);
    if (v114)
    {

      sub_1000124C8(v397, v398);

      v414 = 0;
      v84 = type metadata for Any;
      v75 = v478;
LABEL_39:
      v417(v72, 1, 1, v465);
      sub_100016290(v72, &qword_10058FEC8, &qword_100493978);
      sub_1001C95DC(v457, v86, v455, v468);
LABEL_40:

LABEL_41:
      if (v82 == v80)
      {
        goto LABEL_78;
      }

      goto LABEL_42;
    }

    v414 = 0;

    sub_1000124C8(v397, v398);
    v128 = v474;
    v129 = v465;
    v417(v474, 0, 1, v465);
    sub_1001D6B5C(v128, v438, type metadata accessor for LongTermPairingKeys.PrivateIdentity);
    v130 = v434;
    sub_100012400(v454, v434, &qword_10058FEC8, &qword_100493978);
    if ((*v403)(v130, 1, v129) != 1)
    {
      break;
    }

    sub_100016290(v130, &qword_10058FEC8, &qword_100493978);
    v84 = type metadata for Any;
    v75 = v478;
    if (v405)
    {
      goto LABEL_63;
    }

    v131 = v454;
    sub_100016290(v454, &qword_10058FEC8, &qword_100493978);
    sub_1001D6B5C(v438, v131, type metadata accessor for LongTermPairingKeys.PrivateIdentity);
    v417(v131, 0, 1, v465);
    v405 = 0;
    if (v82 == v80)
    {
      goto LABEL_78;
    }

LABEL_42:
    ++v80;
  }

  sub_1001D6B5C(v130, v85, type metadata accessor for LongTermPairingKeys.PrivateIdentity);
  v146 = v455;
  v147 = v468;
  AppleKeychain.remove(identity:for:)(v85, v455, v468);

  v148 = Logger.logObject.getter();
  v149 = static os_log_type_t.error.getter();

  v405 = v149;
  if (os_log_type_enabled(v148, v149))
  {
    v150 = swift_slowAlloc();
    v151 = swift_slowAlloc();
    v397 = v148;
    v398 = v151;
    v489[0] = v151;
    *v150 = v407;
    *&v486 = 39;
    *(&v486 + 1) = 0xE100000000000000;
    v152._countAndFlagsBits = v146;
    v152._object = v147;
    String.append(_:)(v152);
    v153._countAndFlagsBits = 39;
    v153._object = 0xE100000000000000;
    String.append(_:)(v153);
    v154 = sub_100002320(v486, *(&v486 + 1), v489);

    *(v150 + 4) = v154;
    v148 = v397;
    _os_log_impl(&_mh_execute_header, v397, v405, "Found multiple private identities for %s. Will remove all private identities found", v150, 0xCu);
    sub_100002A00(v398);
  }

  sub_1001D46E4(v467, type metadata accessor for LongTermPairingKeys.PrivateIdentity);
  v75 = v478;
  v155 = v454;
  sub_100016290(v454, &qword_10058FEC8, &qword_100493978);
  v417(v155, 1, 1, v465);
  v84 = type metadata for Any;
LABEL_63:
  v156 = v438;
  AppleKeychain.remove(identity:for:)(v438, v455, v468);
  sub_1001D46E4(v156, type metadata accessor for LongTermPairingKeys.PrivateIdentity);
  if (v82 != v80)
  {
    v405 = 1;
    v72 = v474;
    goto LABEL_42;
  }

LABEL_78:
  if (v409)
  {
LABEL_79:
    v166 = swift_allocObject();
    *(v166 + 16) = xmmword_100486AE0;
    *(v166 + 32) = kSecAttrAccessGroup;
    v167 = *(v457 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_keychainAccessGroup + 8);
    *(v166 + 40) = *(v457 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_keychainAccessGroup);
    *(v166 + 48) = v167;
    v168 = v479;
    *(v166 + 64) = &type metadata for String;
    *(v166 + 72) = v168;
    strcpy((v166 + 80), "public_local");
    *(v166 + 93) = 0;
    *(v166 + 94) = -5120;
    v169 = v412;
    *(v166 + 104) = &type metadata for String;
    *(v166 + 112) = v169;
    v170 = v468;
    *(v166 + 120) = v455;
    *(v166 + 128) = v170;
    v172 = v448;
    v171 = v449;
    *(v166 + 144) = &type metadata for String;
    *(v166 + 152) = v171;
    *(v166 + 184) = v420;
    *(v166 + 160) = v172;
    v173 = v171;
    v174 = v172;
    v175 = v169;
    v176 = kSecAttrAccessGroup;

    v177 = v168;
    sub_1000821A0(v166);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v178.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v179 = SecItemDelete(v178.super.isa);
    if (v179)
    {
      v180 = SecCopyErrorMessageString(v179, 0);
      if (v180)
      {
        v181 = v180;
        v182 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v184 = v183;
      }

      else
      {
        v182 = 0x6E776F6E6B6E75;
        v184 = 0xE700000000000000;
      }

      v83 = v457;
      v72 = v468;

      v187 = Logger.logObject.getter();
      v188 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v187, v188))
      {
        v189 = swift_slowAlloc();
        v190 = swift_slowAlloc();
        *&v486 = v190;
        *v189 = v407;
        *(v189 + 4) = sub_100002320(v182, v184, &v486);
        _os_log_impl(&_mh_execute_header, v187, v188, "Failed to remove public identites of paired devices stored locally with error: %s", v189, 0xCu);
        sub_100002A00(v190);
      }

      v77 = v454;
      v73 = v465;
      v74 = v464;
      v185 = v459;
      v186 = v456;
    }

    else
    {

      v83 = v457;
      v77 = v454;
      v73 = v465;
      v74 = v464;
      v185 = v459;
      v186 = v456;
      v72 = v468;
    }
  }

  else
  {
    v72 = v468;

    v77 = v454;
    v73 = v465;
    v74 = v464;
    v185 = v459;
    v186 = v456;
    v83 = v457;
  }

LABEL_89:
  v191 = v77;
  v192 = v452;
  sub_100012400(v191, v452, &qword_10058FEC8, &qword_100493978);
  v443 = *(v74 + 48);
  v193 = (v443)(v192, 1, v73);
  v194 = v484;
  v464 = v74 + 48;
  if (v193 != 1)
  {
    sub_1001D6B5C(v192, v185, type metadata accessor for LongTermPairingKeys.PrivateIdentity);
    v196 = *(v473 + 16);
    v197 = v447;
    v196(v447, v185, v194);
    v198 = v410;
    if (!*(v410 + 16) || (v199 = sub_10002A440(v197), (v200 & 1) == 0))
    {
      v207 = v468;

      (*(v473 + 8))(v197, v194);

      v208 = Logger.logObject.getter();
      v209 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v208, v209))
      {
        v210 = swift_slowAlloc();
        v211 = swift_slowAlloc();
        v489[0] = v211;
        *v210 = 136315138;
        *&v486 = 39;
        *(&v486 + 1) = 0xE100000000000000;
        v212._countAndFlagsBits = v455;
        v212._object = v207;
        String.append(_:)(v212);
        v213._countAndFlagsBits = 39;
        v213._object = 0xE100000000000000;
        String.append(_:)(v213);
        v214 = sub_100002320(v486, *(&v486 + 1), v489);

        *(v210 + 4) = v214;
        v215 = v455;
        _os_log_impl(&_mh_execute_header, v208, v209, "Detected public identity is missing from the keychain for %s attempting to re-insert", v210, 0xCu);
        sub_100002A00(v211);
        v185 = v459;

        v194 = v484;

        v216 = v466;
      }

      else
      {

        v216 = v466;
        v215 = v455;
      }

      v196(v216, v185, v194);
      v217 = *(type metadata accessor for LongTermPairingKeys.Identity(0) + 20);
      v218 = type metadata accessor for SymmetricKey();
      (*(*(v218 - 8) + 16))(v216 + v217, v185 + v217, v218);
      v219 = v465;
      v220 = v480;
      v221 = v216 + *(v480 + 20);
      v222 = v185 + *(v465 + 20);
      P256.Signing.PrivateKey.publicKey.getter();
      v223 = (v216 + *(v220 + 24));
      *v223 = 0;
      v223[1] = 0;
      (*(v453 + 7))(v216 + *(v220 + 28), 1, 1, v475);
      v83 = v457;
      LOBYTE(v222) = AppleKeychain.save(identity:for:publicly:)(v216, v215, v207, 1);
      sub_1001D46E4(v216, type metadata accessor for LongTermPairingKeys.PublicIdentity);
      v72 = v207;
      if ((v222 & 1) == 0)
      {
        AppleKeychain.remove(identity:for:)(v185, v215, v207);
        v224 = v454;
        sub_100016290(v454, &qword_10058FEC8, &qword_100493978);
        v417(v224, 1, 1, v219);
      }

      goto LABEL_100;
    }

    v201 = *(v198 + 56) + *(v476 + 72) * v199;
    v202 = v441;
    sub_1001D45C0(v201, v441, type metadata accessor for LongTermPairingKeys.PublicIdentity);
    (*(v473 + 8))(v197, v194);
    v203 = v444;
    sub_1001D6B5C(v202, v444, type metadata accessor for LongTermPairingKeys.PublicIdentity);
    v204 = v442;
    sub_100012400(v203 + *(v480 + 28), v442, &qword_10058FE28, &unk_1004B2430);
    v205 = v453;
    v206 = v475;
    if ((*(v453 + 6))(v204, 1, v475) == 1)
    {
      v72 = v468;

      sub_1001D46E4(v203, type metadata accessor for LongTermPairingKeys.PublicIdentity);
      sub_100016290(v204, &qword_10058FE28, &unk_1004B2430);
      v83 = v457;
LABEL_100:
      v195 = v483;
      v225 = v446;
      goto LABEL_101;
    }

    v205[4](v186, v204, v206);
    v324 = v462;
    Date.timeIntervalSince(_:)();
    v72 = v468;
    v83 = v457;
    if (v325 <= 5356800.0)
    {
      goto LABEL_161;
    }

    v326 = OBJC_IVAR____TtC7CoreP2P13AppleKeychain_logger;
    v327 = v205[2];
    v327(v437, v324, v206);
    v327(v436, v186, v206);

    v441 = v326;
    v328 = Logger.logObject.getter();
    v329 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v328, v329))
    {
      v330 = swift_slowAlloc();
      v479 = swift_slowAlloc();
      v489[0] = v479;
      *v330 = 136315394;
      *&v486 = 39;
      *(&v486 + 1) = 0xE100000000000000;
      LODWORD(p_isa) = v329;
      v331._countAndFlagsBits = v455;
      v331._object = v72;
      String.append(_:)(v331);
      v332._countAndFlagsBits = 39;
      v332._object = 0xE100000000000000;
      String.append(_:)(v332);
      v333 = sub_100002320(v486, *(&v486 + 1), v489);

      *(v330 + 4) = v333;
      *(v330 + 12) = 2080;
      Date.timeIntervalSince(_:)();
      v474 = static Duration.seconds(_:)();
      v467 = v334;
      sub_10005DC58(&qword_10058FEE0, &unk_100493990);
      v335 = *(type metadata accessor for Duration.UnitsFormatStyle.Unit() - 8);
      v336 = *(v335 + 72);
      v337 = (*(v335 + 80) + 32) & ~*(v335 + 80);
      v338 = swift_allocObject();
      *(v338 + 16) = xmmword_100483520;
      static Duration.UnitsFormatStyle.Unit.days.getter();
      v83 = v457;
      static Duration.UnitsFormatStyle.Unit.hours.getter();
      sub_100029108(v338);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v339 = v422;
      static Duration.UnitsFormatStyle.UnitWidth.wide.getter();
      v340 = v425;
      static Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.hide.getter();
      v341 = v430;
      static Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.hide.getter();
      v342 = v423;
      static FormatStyle<>.units(allowed:width:maximumUnitCount:zeroValueUnits:valueLength:fractionalPart:)();

      (*(v432 + 8))(v341, v433);
      (*(v429 + 8))(v340, v431);
      (*(v424 + 8))(v339, v426);
      sub_1001D469C(&qword_10058FEE8, &type metadata accessor for Duration.UnitsFormatStyle);
      v343 = v428;
      Duration.formatted<A>(_:)();
      (*(v427 + 8))(v342, v343);
      v344 = *(v453 + 1);
      v344(v436, v206);
      v442 = v344;
      v344(v437, v206);
      v345 = sub_100002320(v486, *(&v486 + 1), v489);

      *(v330 + 14) = v345;
      _os_log_impl(&_mh_execute_header, v328, p_isa, "Last modified public identity for %s  %s ago in the keychain updating last modified timestamp", v330, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v347 = *(v453 + 1);
      v347(v436, v206);
      v442 = v347;
      v347(v437, v206);
    }

    p_isa = LongTermPairingKeys.PublicIdentity.rawRepresentation.getter();
    v474 = v348;
    v349 = *(v83 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_keychainAccessGroup);
    v467 = *(v83 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_keychainAccessGroup + 8);
    v350 = v467;
    v351 = *(v83 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_keychainView + 8);
    v447 = *(v83 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_keychainView);
    v452 = v351;
    v352 = UUID.uuidString.getter();
    v354 = v353;
    v355 = swift_allocObject();
    *(v355 + 16) = xmmword_1004938F0;
    v458 = kSecAttrAccessGroup;
    *(v355 + 32) = kSecAttrAccessGroup;
    v479 = (v355 + 32);
    *(v355 + 40) = v349;
    *(v355 + 48) = v350;
    v356 = v418;
    *(v355 + 64) = &type metadata for String;
    *(v355 + 72) = v356;
    *(v355 + 80) = 1;
    *(v355 + 104) = &type metadata for Bool;
    *(v355 + 112) = kSecAttrIsInvisible;
    *(v355 + 120) = 1;
    *(v355 + 144) = &type metadata for Bool;
    *(v355 + 152) = kSecAttrLabel;
    *(v355 + 160) = 0x63696C627570;
    *(v355 + 168) = 0xE600000000000000;
    *(v355 + 184) = &type metadata for String;
    *(v355 + 192) = kSecAttrAccount;
    *(v355 + 200) = v352;
    *(v355 + 208) = v354;
    v357 = v412;
    *(v355 + 224) = &type metadata for String;
    *(v355 + 232) = v357;
    v358 = v468;
    *(v355 + 240) = v455;
    *(v355 + 248) = v358;
    *(v355 + 264) = &type metadata for String;
    *(v355 + 272) = kSecValueData;
    *(v355 + 304) = &type metadata for Data;
    v359 = p_isa;
    v360 = v474;
    *(v355 + 280) = p_isa;
    *(v355 + 288) = v360;
    v361 = v356;
    v362 = v357;
    v363 = v458;

    v364 = kSecAttrIsInvisible;
    v365 = kSecAttrLabel;
    v366 = kSecAttrAccount;

    v367 = kSecValueData;
    sub_10000AB0C(v359, v360);
    v368 = sub_1000821A0(v355);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    if (kSecAttrSyncViewHint)
    {
      v369 = kSecAttrSyncViewHint;

      v487 = &type metadata for String;
      *&v486 = v447;
      *(&v486 + 1) = v452;
      sub_100085188(&v486, v489);

      v370 = swift_isUniquelyReferenced_nonNull_native();
      v490 = v368;
      sub_100080710(v489, v369, v370);
      sub_1000124C8(v359, v360);

      v371 = v490;
      v372 = swift_initStackObject();
      *(v372 + 16) = xmmword_100480F40;
      v374 = v448;
      v373 = v449;
      *(v372 + 32) = v449;
      *(v372 + 64) = v420;
      *(v372 + 40) = v374;
      v375 = v373;
      v376 = v374;

      v377 = sub_1000821A0(v372);
      swift_setDeallocating();
      sub_100016290(v372 + 32, &qword_10058BAE0, &qword_100480E28);
      v378 = swift_isUniquelyReferenced_nonNull_native();
      *&v486 = v371;
      v379 = v414;
      sub_1001D60E8(v377, sub_1001D5980, 0, v378, &v486);

      v414 = v379;
      v85 = v456;
      if (!v379)
      {
        v380 = Dictionary._bridgeToObjectiveC()().super.isa;

        v381 = Dictionary._bridgeToObjectiveC()().super.isa;

        v382 = SecItemUpdate(v380, v381);

        v72 = v468;
        v383 = v455;
        v83 = v457;
        if (!v382)
        {
LABEL_171:
          v442(v85, v475);
          v346 = v444;
          goto LABEL_172;
        }

        v84 = Logger.logObject.getter();
        v384 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v84, v384))
        {
          v385 = swift_slowAlloc();
          v489[0] = swift_slowAlloc();
          *v385 = 136315394;
          *&v486 = 39;
          *(&v486 + 1) = 0xE100000000000000;
          v386._countAndFlagsBits = v383;
          v386._object = v72;
          String.append(_:)(v386);
          v387._countAndFlagsBits = 39;
          v387._object = 0xE100000000000000;
          String.append(_:)(v387);
          v388 = sub_100002320(v486, *(&v486 + 1), v489);

          *(v385 + 4) = v388;
          *(v385 + 12) = 2080;
          v389 = SecCopyErrorMessageString(v382, 0);
          if (v389)
          {
            v390 = v389;
            v391 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v393 = v392;
          }

          else
          {
            v391 = 0x6E776F6E6B6E75;
            v393 = 0xE700000000000000;
          }

          v195 = v483;
          v394 = sub_100002320(v391, v393, v489);

          *(v385 + 14) = v394;
          _os_log_impl(&_mh_execute_header, v84, v384, "Failed to update the last modified timestamp of the public identity to the keychain for %s with error: %s", v385, 0x16u);
          swift_arrayDestroy();

          v442(v456, v475);
          sub_1001D46E4(v444, type metadata accessor for LongTermPairingKeys.PublicIdentity);
          goto LABEL_173;
        }

LABEL_170:

        goto LABEL_171;
      }
    }

    else
    {
      __break(1u);
LABEL_179:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

    __break(1u);
    return result;
  }

  sub_100016290(v192, &qword_10058FEC8, &qword_100493978);
  v195 = v483;
  while (1)
  {
    v226 = v485->data;
    v478 = v485;
    if (v226 < 0x65)
    {
      break;
    }

    v227 = v485[2].isa;
    v446 = v485 + 2;
    v228 = 1 << LOBYTE(v485[1].isa);
    v229 = -1;
    if (v228 < 64)
    {
      v229 = ~(-1 << v228);
    }

    v72 = v229 & v227;
    v442 = (v83 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_keychainAccessGroup);
    v186 = (v228 + 63) >> 6;
    v467 = (v473 + 16);
    p_isa = (v473 + 32);
    v459 = (v453 + 48);
    v452 = (v453 + 32);
    v447 = (v453 + 8);
    v474 = (v473 + 8);
    v441 = kSecAttrAccount;
    v440 = kSecAttrAccessGroup;

    v230 = 0;
    v444 = _swiftEmptyArrayStorage;
    v206 = &qword_10058FED8;
    v439 = xmmword_100486AF0;
    v456 = v186;
LABEL_106:
    v231 = v230;
    v205 = v472;
    while (v72)
    {
      v203 = v231;
LABEL_118:
      v233 = __clz(__rbit64(v72));
      v72 &= v72 - 1;
      v234 = v233 | (v203 << 6);
      v235 = v478;
      v236 = v473;
      v237 = v484;
      (*(v473 + 16))(v205, &v478[1].data[*(v473 + 72) * v234], v484);
      v238 = v466;
      sub_1001D45C0(v235[1].length + *(v476 + 72) * v234, v466, type metadata accessor for LongTermPairingKeys.PublicIdentity);
      v239 = sub_10005DC58(&qword_10058FED8, &qword_100493988);
      v240 = *(v239 + 48);
      v241 = *(v236 + 32);
      v242 = v471;
      v241(v471, v205, v237);
      sub_1001D6B5C(v238, &v242[v240], type metadata accessor for LongTermPairingKeys.PublicIdentity);
      (*(*(v239 - 8) + 56))(v242, 0, 1, v239);
      v83 = v203;
      v243 = v242;
      v195 = v483;
      v186 = v456;
LABEL_119:
      sub_10001CEA8(v243, v195, &qword_10058FEC0, &qword_100493970);
      v244 = sub_10005DC58(&qword_10058FED8, &qword_100493988);
      v245 = (*(*(v244 - 8) + 48))(v195, 1, v244);
      v246 = v470;
      if (v245 == 1)
      {

        v287 = v444;

        v288 = Logger.logObject.getter();
        v289 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v288, v289))
        {
          v290 = swift_slowAlloc();
          *v290 = 134217984;
          *(v290 + 4) = v444[2];

          _os_log_impl(&_mh_execute_header, v288, v289, "Removed %ld stale identities that were not modified recently", v290, 0xCu);
          v287 = v444;
        }

        else
        {
        }

        v291 = v484;
        v292 = v480;
        v293 = v287[2];
        v294 = v469;
        if (v293)
        {
          v295 = v287 + ((*(v473 + 80) + 32) & ~*(v473 + 80));
          v296 = *(v473 + 72);
          v297 = *(v473 + 16);
          v483 = (v476 + 56);
          v482 = v297;
          (v297)(v469, v295, v484);
          while (1)
          {
            v300 = sub_10002A440(v294);
            if (v301)
            {
              v302 = v300;
              v303 = v485;
              v304 = swift_isUniquelyReferenced_nonNull_native();
              *&v486 = v303;
              if (!v304)
              {
                sub_100196DF0();
                v303 = v486;
              }

              v305 = *v474;
              v306 = v484;
              (*v474)(&v303[1].data[v302 * v296], v484);
              v299 = v461;
              sub_1001D6B5C(v303[1].length + *(v476 + 72) * v302, v461, type metadata accessor for LongTermPairingKeys.PublicIdentity);
              v307 = v302;
              v291 = v306;
              sub_1001936E0(v307, v303);
              v305(v469, v306);
              v298 = 0;
              v478 = v303;
              v485 = v303;
              v292 = v480;
              v297 = v482;
            }

            else
            {
              (*v474)(v294, v291);
              v298 = 1;
              v299 = v461;
            }

            (*v483)(v299, v298, 1, v292);
            sub_100016290(v299, &qword_10058FE50, &unk_100493930);
            v295 += v296;
            --v293;
            v294 = v469;
            if (!v293)
            {
              break;
            }

            (v297)(v469, v295, v291);
          }
        }

        v72 = v468;
        goto LABEL_147;
      }

      v479 = v83;
      v247 = *(v244 + 48);
      v248 = v482;
      v249 = v484;
      v458 = *p_isa;
      (v458)(v482, v195, v484);
      v250 = v481;
      sub_1001D6B5C(v195 + v247, v481, type metadata accessor for LongTermPairingKeys.PublicIdentity);
      sub_100012400(v250 + *(v480 + 28), v246, &qword_10058FE28, &unk_1004B2430);
      v251 = v475;
      if ((*v459)(v246, 1, v475) == 1)
      {
        sub_1001D46E4(v250, type metadata accessor for LongTermPairingKeys.PublicIdentity);
        (*v474)(v248, v249);
        sub_100016290(v246, &qword_10058FE28, &unk_1004B2430);
      }

      else
      {
        v252 = v460;
        (*v452)();
        Date.timeIntervalSince(_:)();
        if (v253 > 16070400.0)
        {
          v256 = swift_allocObject();
          *(v256 + 16) = v439;
          v258 = v448;
          v257 = v449;
          *(v256 + 32) = v449;
          v438 = v256 + 32;
          *(v256 + 40) = v258;
          v259 = v418;
          *(v256 + 64) = v420;
          *(v256 + 72) = v259;
          *(v256 + 80) = 1;
          v260 = v412;
          *(v256 + 104) = &type metadata for Bool;
          *(v256 + 112) = v260;
          *(v256 + 120) = v455;
          *(v256 + 128) = v468;
          v261 = v441;
          *(v256 + 144) = &type metadata for String;
          *(v256 + 152) = v261;

          v262 = v257;
          v263 = v258;
          v264 = v259;
          v265 = v260;
          v266 = v261;
          v267 = v481;
          *(v256 + 160) = UUID.uuidString.getter();
          *(v256 + 168) = v268;
          v269 = v440;
          *(v256 + 184) = &type metadata for String;
          *(v256 + 192) = v269;
          v270 = *v442;
          v271 = *(v442 + 1);
          *(v256 + 224) = &type metadata for String;
          *(v256 + 200) = v270;
          *(v256 + 208) = v271;
          v272 = v269;

          sub_1000821A0(v256);
          swift_setDeallocating();
          swift_arrayDestroy();
          swift_deallocClassInstance();
          v273.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

          v274 = SecItemDelete(v273.super.isa);
          v275 = v445;
          v195 = v483;
          if (v274)
          {
            v276 = SecCopyErrorMessageString(v274, 0);
            if (v276)
            {
              v277 = v276;
              v278 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v280 = v279;
            }

            else
            {
              v280 = 0xE700000000000000;
              v278 = 0x6E776F6E6B6E75;
            }

            sub_1001C97EC(v278, v280, v457, v462, v460, v455, v468);
          }

          (*v467)(v275, v482, v484);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v444 = sub_100116AA4(0, v444[2] + 1, 1, v444);
          }

          v206 = &qword_10058FED8;
          v186 = v456;
          v230 = v479;
          v282 = v444[2];
          v281 = v444[3];
          if (v282 >= v281 >> 1)
          {
            v444 = sub_100116AA4(v281 > 1, v282 + 1, 1, v444);
          }

          (*v447)(v460, v475);
          sub_1001D46E4(v267, type metadata accessor for LongTermPairingKeys.PublicIdentity);
          v283 = v473;
          v284 = v484;
          (*(v473 + 8))(v482, v484);
          v286 = v444;
          v285 = v445;
          v444[2] = v282 + 1;
          (v458)(v286 + ((*(v283 + 80) + 32) & ~*(v283 + 80)) + *(v283 + 72) * v282, v285, v284);
          goto LABEL_106;
        }

        (*v447)(v252, v251);
        sub_1001D46E4(v481, type metadata accessor for LongTermPairingKeys.PublicIdentity);
        (*v474)(v482, v484);
      }

      v231 = v479;
      v205 = v472;
      v195 = v483;
      v206 = &qword_10058FED8;
    }

    if (v186 <= v231 + 1)
    {
      v232 = v231 + 1;
    }

    else
    {
      v232 = v186;
    }

    v83 = (v232 - 1);
    while (1)
    {
      v203 = v231 + 1;
      if (__OFADD__(v231, 1))
      {
        break;
      }

      if (v203 >= v186)
      {
        v254 = sub_10005DC58(&qword_10058FED8, &qword_100493988);
        v255 = v471;
        (*(*(v254 - 8) + 56))(v471, 1, 1, v254);
        v243 = v255;
        v72 = 0;
        goto LABEL_119;
      }

      v72 = *(&v446->isa + v203);
      ++v231;
      if (v72)
      {
        goto LABEL_118;
      }
    }

    __break(1u);
LABEL_161:

    (v205[1])(v186, v206);
    v346 = v203;
LABEL_172:
    sub_1001D46E4(v346, type metadata accessor for LongTermPairingKeys.PublicIdentity);
    v195 = v483;
LABEL_173:
    v225 = v446;
    v185 = v459;
LABEL_101:
    sub_10007F920(v185, v225);
    sub_100016290(v225, &qword_10058FE50, &unk_100493930);
    sub_1001D46E4(v185, type metadata accessor for LongTermPairingKeys.PrivateIdentity);
  }

LABEL_147:

  v308 = Logger.logObject.getter();
  v309 = static os_log_type_t.default.getter();

  v310 = os_log_type_enabled(v308, v309);
  v311 = v451;
  if (v310)
  {
    v312 = swift_slowAlloc();
    v484 = swift_slowAlloc();
    v490 = v484;
    *v312 = 134218498;
    *(v312 + 4) = v478->data;
    *(v312 + 12) = 2080;
    v313 = v454;
    swift_beginAccess();
    LODWORD(v483) = v309;
    sub_100012400(v313, v311, &qword_10058FEC8, &qword_100493978);
    v314 = v72;
    v315 = (v443)(v311, 1, v465);
    sub_100016290(v311, &qword_10058FEC8, &qword_100493978);
    if (v315 == 1)
    {
      v316 = 0x74756F68746977;
    }

    else
    {
      v316 = 1752459639;
    }

    if (v315 == 1)
    {
      v317 = 0xE700000000000000;
    }

    else
    {
      v317 = 0xE400000000000000;
    }

    v318 = sub_100002320(v316, v317, &v490);

    *(v312 + 14) = v318;
    *(v312 + 22) = 2080;
    v319 = v463;
    *&v486 = 39;
    *(&v486 + 1) = 0xE100000000000000;
    v320._countAndFlagsBits = v455;
    v320._object = v314;
    String.append(_:)(v320);
    v321._countAndFlagsBits = 39;
    v321._object = 0xE100000000000000;
    String.append(_:)(v321);
    v322 = sub_100002320(v486, *(&v486 + 1), &v490);

    *(v312 + 24) = v322;
    _os_log_impl(&_mh_execute_header, v308, v483, "Found %ld paired identities %s private identity in the keychain for %s", v312, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v313 = v454;
    v319 = v463;
  }

  swift_beginAccess();
  sub_100012400(v313, v319, &qword_10058FEC8, &qword_100493978);

  v164 = sub_1001B9118(v323);

  (*(v453 + 1))(v462, v475);

  sub_100016290(v313, &qword_10058FEC8, &qword_100493978);
LABEL_77:
  swift_unknownObjectRelease();
  return v164;
}

void sub_1001C95DC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_10005DC58(&qword_10058FED0, &qword_100493980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100480F40;
  *(inited + 32) = kSecClass;
  type metadata accessor for CFString(0);
  *(inited + 64) = v9;
  *(inited + 40) = kSecClassGenericPassword;

  v10 = kSecClass;
  v11 = kSecClassGenericPassword;
  v12 = sub_1000821A0(inited);
  swift_setDeallocating();
  sub_100016290(inited + 32, &qword_10058BAE0, &qword_100480E28);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = a2;
  sub_1001D60E8(v12, sub_1001D5980, 0, isUniquelyReferenced_nonNull_native, &v21);

  sub_1001D469C(&qword_10058B320, type metadata accessor for CFString);
  v14.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v15 = SecItemDelete(v14.super.isa);
  if (v15)
  {
    v16 = SecCopyErrorMessageString(v15, 0);
    if (v16)
    {
      v17 = v16;
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;
    }

    else
    {
      v20 = 0xE700000000000000;
      v18 = 0x6E776F6E6B6E75;
    }

    sub_1001CAE68(v18, v20, a1, a3, a4, "Failed to remove badly formed identity for %s with error: %s");
  }
}

void sub_1001C97EC(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  v64 = a6;
  v65 = a1;
  v66 = a5;
  v67 = a3;
  v10 = type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy();
  v62 = *(v10 - 8);
  v63 = v10;
  v11 = *(v62 + 64);
  __chkstk_darwin();
  v60 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy();
  v59 = *(v61 - 8);
  v13 = *(v59 + 64);
  __chkstk_darwin();
  v55 = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for Duration.UnitsFormatStyle.UnitWidth();
  v54 = *(v56 - 8);
  v15 = *(v54 + 64);
  __chkstk_darwin();
  v52 = v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Duration.UnitsFormatStyle();
  v57 = *(v17 - 8);
  v58 = v17;
  v18 = *(v57 + 64);
  __chkstk_darwin();
  v53 = v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Date();
  v21 = *(v20 - 8);
  v22 = v21[8];
  __chkstk_darwin();
  v24 = v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v26 = v48 - v25;
  v27 = v21[2];
  v27(v48 - v25, a4, v20);
  v27(v24, v66, v20);

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();
  v67 = a2;

  v66 = a7;

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v70[0] = v51;
    *v30 = 136315650;
    v50 = v29;
    Date.timeIntervalSince(_:)();
    v48[2] = static Duration.seconds(_:)();
    v48[1] = v31;
    sub_10005DC58(&qword_10058FEE0, &unk_100493990);
    v32 = *(type metadata accessor for Duration.UnitsFormatStyle.Unit() - 8);
    v49 = v28;
    v33 = *(v32 + 72);
    v34 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_100483520;
    static Duration.UnitsFormatStyle.Unit.days.getter();
    static Duration.UnitsFormatStyle.Unit.hours.getter();
    sub_100029108(v35);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v36 = v52;
    static Duration.UnitsFormatStyle.UnitWidth.wide.getter();
    v37 = v55;
    static Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.hide.getter();
    v38 = v60;
    static Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.hide.getter();
    v39 = v53;
    static FormatStyle<>.units(allowed:width:maximumUnitCount:zeroValueUnits:valueLength:fractionalPart:)();

    (*(v62 + 8))(v38, v63);
    (*(v59 + 8))(v37, v61);
    (*(v54 + 8))(v36, v56);
    sub_1001D469C(&qword_10058FEE8, &type metadata accessor for Duration.UnitsFormatStyle);
    v40 = v58;
    Duration.formatted<A>(_:)();
    (*(v57 + 8))(v39, v40);
    v41 = v21[1];
    v41(v24, v20);
    v41(v26, v20);
    v42 = sub_100002320(v68, v69, v70);

    *(v30 + 4) = v42;
    *(v30 + 12) = 2080;
    v68 = 39;
    v69 = 0xE100000000000000;
    v43._countAndFlagsBits = v64;
    v43._object = v66;
    String.append(_:)(v43);
    v44._countAndFlagsBits = 39;
    v44._object = 0xE100000000000000;
    String.append(_:)(v44);
    v45 = sub_100002320(v68, v69, v70);

    *(v30 + 14) = v45;
    *(v30 + 22) = 2080;
    *(v30 + 24) = sub_100002320(v65, v67, v70);
    v46 = v49;
    _os_log_impl(&_mh_execute_header, v49, v50, "Failed to delete a stale device identity last modified %s ago from the keychain for %s with error: %s", v30, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v47 = v21[1];
    v47(v24, v20);
    v47(v26, v20);
  }
}

BOOL AppleKeychain.save(identity:for:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = sub_1001BAB54();
  v9 = v8;
  v10 = a1 + *(type metadata accessor for LongTermPairingKeys.PrivateIdentity(0) + 20);
  v11 = P256.Signing.PrivateKey.rawRepresentation.getter();
  v13 = v12;
  *&v68[0] = v7;
  *(&v68[0] + 1) = v9;
  v70 = &type metadata for Data;
  v71 = &protocol witness table for Data;
  *&v69 = v11;
  *(&v69 + 1) = v12;
  v14 = sub_100029B34(&v69, &type metadata for Data);
  v15 = *v14;
  v16 = v14[1];
  sub_10000AB0C(v7, v9);
  sub_10000AB0C(v11, v13);
  sub_100178A18(v15, v16);
  sub_1000124C8(v11, v13);
  sub_1000124C8(v7, v9);
  sub_100002A00(&v69);
  v17 = v7;
  v19 = *(v4 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_keychainAccessGroup);
  v18 = *(v4 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_keychainAccessGroup + 8);
  v66 = v9;
  v20 = UUID.uuidString.getter();
  v22 = v21;
  sub_10005DC58(&qword_10058FED0, &qword_100493980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004938F0;
  *(inited + 32) = kSecAttrAccessGroup;
  *(inited + 40) = v19;
  *(inited + 48) = v18;
  *(inited + 64) = &type metadata for String;
  *(inited + 72) = kSecAttrSynchronizable;
  *(inited + 80) = 0;
  *(inited + 104) = &type metadata for Bool;
  *(inited + 112) = kSecAttrIsInvisible;
  *(inited + 120) = 1;
  *(inited + 144) = &type metadata for Bool;
  *(inited + 152) = kSecAttrLabel;
  *(inited + 160) = 0x65746176697270;
  *(inited + 168) = 0xE700000000000000;
  *(inited + 184) = &type metadata for String;
  *(inited + 192) = kSecAttrAccount;
  *(inited + 200) = v20;
  *(inited + 208) = v22;
  *(inited + 224) = &type metadata for String;
  *(inited + 232) = kSecAttrService;
  v65 = a2;
  *(inited + 240) = a2;
  *(inited + 248) = a3;
  *(inited + 264) = &type metadata for String;
  *(inited + 272) = kSecValueData;
  *(inited + 304) = &type metadata for Data;
  *(inited + 280) = v17;
  *(inited + 288) = v66;
  v24 = kSecAttrAccessGroup;

  v25 = kSecAttrSynchronizable;
  v26 = kSecAttrIsInvisible;
  v27 = kSecAttrLabel;
  v28 = kSecAttrAccount;
  v29 = kSecAttrService;

  v30 = kSecValueData;
  sub_10000AB0C(v17, v66);
  v31 = sub_1000821A0(inited);
  swift_setDeallocating();
  sub_10005DC58(&qword_10058BAE0, &qword_100480E28);
  swift_arrayDestroy();
  type metadata accessor for CFString(0);
  v33 = v32;
  v70 = v32;
  *&v69 = kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
  sub_100085188(&v69, v68);
  v34 = kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100080710(v68, kSecAttrAccessible, isUniquelyReferenced_nonNull_native);
  sub_1000124C8(v17, v66);
  v36 = v31;
  v37 = swift_initStackObject();
  *(v37 + 32) = kSecClass;
  *(v37 + 16) = xmmword_100480F40;
  *(v37 + 64) = v33;
  *(v37 + 40) = kSecClassGenericPassword;

  v38 = kSecClass;
  v39 = kSecClassGenericPassword;
  v40 = sub_1000821A0(v37);
  swift_setDeallocating();
  sub_100016290(v37 + 32, &qword_10058BAE0, &qword_100480E28);
  v41 = swift_isUniquelyReferenced_nonNull_native();
  *&v69 = v36;
  sub_1001D60E8(v40, sub_1001D5980, 0, v41, &v69);

  sub_1001D469C(&qword_10058B320, type metadata accessor for CFString);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v43 = SecItemAdd(isa, 0);

  if (v43 == -25299)
  {
    v44 = swift_initStackObject();
    *(v44 + 16) = xmmword_100480F40;
    *(v44 + 32) = v38;
    *(v44 + 64) = v33;
    *(v44 + 40) = v39;

    v45 = v38;
    v46 = v39;
    v47 = sub_1000821A0(v44);
    swift_setDeallocating();
    sub_100016290(v44 + 32, &qword_10058BAE0, &qword_100480E28);
    v48 = swift_isUniquelyReferenced_nonNull_native();
    *&v69 = v36;
    sub_1001D60E8(v47, sub_1001D5980, 0, v48, &v69);

    v49 = Dictionary._bridgeToObjectiveC()().super.isa;

    v50 = Dictionary._bridgeToObjectiveC()().super.isa;

    v43 = SecItemUpdate(v49, v50);

    v51 = a3;
    if (!v43)
    {
      return v43 == 0;
    }
  }

  else
  {

    v51 = a3;
    if (!v43)
    {
      return v43 == 0;
    }
  }

  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *&v68[0] = swift_slowAlloc();
    *v54 = 136315394;
    *&v69 = 39;
    *(&v69 + 1) = 0xE100000000000000;
    v55._countAndFlagsBits = v65;
    v55._object = v51;
    String.append(_:)(v55);
    v56._countAndFlagsBits = 39;
    v56._object = 0xE100000000000000;
    String.append(_:)(v56);
    v57 = sub_100002320(v69, *(&v69 + 1), v68);

    *(v54 + 4) = v57;
    *(v54 + 12) = 2080;
    v58 = SecCopyErrorMessageString(v43, 0);
    if (v58)
    {
      v59 = v58;
      v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v62 = v61;
    }

    else
    {
      v62 = 0xE700000000000000;
      v60 = 0x6E776F6E6B6E75;
    }

    v63 = sub_100002320(v60, v62, v68);

    *(v54 + 14) = v63;
    _os_log_impl(&_mh_execute_header, v52, v53, "Failed to add the generated private identity to the keychain for %s with error: %s", v54, 0x16u);
    swift_arrayDestroy();
  }

  return v43 == 0;
}

BOOL AppleKeychain.save(identity:for:publicly:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  if (a4)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  v59 = v8;
  v9 = sub_1001BAB54();
  v11 = v10;
  v12 = a1 + *(type metadata accessor for LongTermPairingKeys.PublicIdentity(0) + 20);
  v13 = P256.Signing.PublicKey.rawRepresentation.getter();
  v15 = v14;
  v65 = v9;
  v66 = v11;
  v63 = &type metadata for Data;
  v64 = &protocol witness table for Data;
  v61 = v13;
  v62 = v14;
  v16 = sub_100029B34(&v61, &type metadata for Data);
  v17 = *v16;
  v18 = v16[1];
  sub_10000AB0C(v9, v11);
  sub_10000AB0C(v13, v15);
  sub_100178A18(v17, v18);
  sub_1000124C8(v13, v15);
  sub_1000124C8(v9, v11);
  sub_100002A00(&v61);
  v19 = v65;
  v20 = v66;
  v21 = *(v5 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_keychainAccessGroup);
  v22 = *(v5 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_keychainAccessGroup + 8);
  v24 = *(v5 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_keychainView);
  v23 = *(v5 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_keychainView + 8);
  v25 = UUID.uuidString.getter();
  v58 = a2;
  v27 = sub_1001C5054(v19, v20, v21, v22, v24, v23, a2, a3, v25, v26, v59);
  sub_1000124C8(v19, v20);

  sub_10005DC58(&qword_10058FED0, &qword_100493980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100480F40;
  *(inited + 32) = kSecClass;
  type metadata accessor for CFString(0);
  v30 = v29;
  *(inited + 64) = v29;
  *(inited + 40) = kSecClassGenericPassword;

  v31 = kSecClass;
  v32 = kSecClassGenericPassword;
  v33 = sub_1000821A0(inited);
  swift_setDeallocating();
  sub_100016290(inited + 32, &qword_10058BAE0, &qword_100480E28);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v61 = v27;
  sub_1001D60E8(v33, sub_1001D5980, 0, isUniquelyReferenced_nonNull_native, &v61);

  sub_1001D469C(&qword_10058B320, type metadata accessor for CFString);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v36 = SecItemAdd(isa, 0);

  if (v36 == -25299)
  {
    v37 = swift_initStackObject();
    *(v37 + 16) = xmmword_100480F40;
    *(v37 + 32) = v31;
    *(v37 + 64) = v30;
    *(v37 + 40) = v32;

    v38 = v31;
    v39 = v32;
    v40 = sub_1000821A0(v37);
    swift_setDeallocating();
    sub_100016290(v37 + 32, &qword_10058BAE0, &qword_100480E28);
    v41 = swift_isUniquelyReferenced_nonNull_native();
    v61 = v27;
    sub_1001D60E8(v40, sub_1001D5980, 0, v41, &v61);

    v42 = Dictionary._bridgeToObjectiveC()().super.isa;

    v43 = Dictionary._bridgeToObjectiveC()().super.isa;

    v36 = SecItemUpdate(v42, v43);

    v44 = a3;
    if (!v36)
    {
      return v36 == 0;
    }
  }

  else
  {

    v44 = a3;
    if (!v36)
    {
      return v36 == 0;
    }
  }

  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *v47 = 136315394;
    v61 = 39;
    v62 = 0xE100000000000000;
    v48._countAndFlagsBits = v58;
    v48._object = v44;
    String.append(_:)(v48);
    v49._countAndFlagsBits = 39;
    v49._object = 0xE100000000000000;
    String.append(_:)(v49);
    v50 = sub_100002320(v61, v62, &v65);

    *(v47 + 4) = v50;
    *(v47 + 12) = 2080;
    v51 = SecCopyErrorMessageString(v36, 0);
    if (v51)
    {
      v52 = v51;
      v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v55 = v54;
    }

    else
    {
      v55 = 0xE700000000000000;
      v53 = 0x6E776F6E6B6E75;
    }

    v56 = sub_100002320(v53, v55, &v65);

    *(v47 + 14) = v56;
    _os_log_impl(&_mh_execute_header, v45, v46, "Failed to add the generated public identity to the keychain for %s with error: %s", v47, 0x16u);
    swift_arrayDestroy();
  }

  return v36 == 0;
}

Swift::Void __swiftcall AppleKeychain.removeAllIdentities(for:)(CoreP2P::NANServiceName a1)
{
  object = a1.string._object;
  countAndFlagsBits = a1.string._countAndFlagsBits;
  sub_10005DC58(&qword_10058FED0, &qword_100493980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100483520;
  *(inited + 32) = kSecAttrSynchronizable;
  type metadata accessor for CFString(0);
  v6 = v5;
  *(inited + 40) = kSecAttrSynchronizableAny;
  *(inited + 64) = v5;
  *(inited + 72) = kSecAttrService;
  *(inited + 104) = &type metadata for String;
  *(inited + 80) = countAndFlagsBits;
  *(inited + 88) = object;
  v7 = kSecAttrSynchronizable;
  v8 = kSecAttrSynchronizableAny;
  v9 = kSecAttrService;

  v10 = sub_1000821A0(inited);
  swift_setDeallocating();
  sub_10005DC58(&qword_10058BAE0, &qword_100480E28);
  swift_arrayDestroy();
  v11 = swift_initStackObject();
  *(v11 + 32) = kSecClass;
  *(v11 + 16) = xmmword_100480F40;
  *(v11 + 64) = v6;
  *(v11 + 40) = kSecClassGenericPassword;
  v12 = kSecClass;
  v13 = kSecClassGenericPassword;
  v14 = sub_1000821A0(v11);
  swift_setDeallocating();
  sub_100016290(v11 + 32, &qword_10058BAE0, &qword_100480E28);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = v10;
  sub_1001D60E8(v14, sub_1001D5980, 0, isUniquelyReferenced_nonNull_native, &v23);

  sub_1001D469C(&qword_10058B320, type metadata accessor for CFString);
  v16.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v17 = SecItemDelete(v16.super.isa);
  if (v17)
  {
    v18 = SecCopyErrorMessageString(v17, 0);
    if (v18)
    {
      v19 = v18;
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;
    }

    else
    {
      v22 = 0xE700000000000000;
      v20 = 0x6E776F6E6B6E75;
    }

    sub_1001CAE68(v20, v22, v1, countAndFlagsBits, object, "Failed to delete all device identities from the keychain for %s with error: %s");
  }
}

void sub_1001CAE68(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, const char *a6)
{

  oslog = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 136315394;
    v18 = v13;
    v14._countAndFlagsBits = a4;
    v14._object = a5;
    String.append(_:)(v14);
    v15._countAndFlagsBits = 39;
    v15._object = 0xE100000000000000;
    String.append(_:)(v15);
    v16 = sub_100002320(39, 0xE100000000000000, &v18);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_100002320(a1, a2, &v18);
    _os_log_impl(&_mh_execute_header, oslog, v11, a6, v12, 0x16u);
    swift_arrayDestroy();
  }
}

void AppleKeychain.remove(identity:for:)(uint64_t a1, uint64_t a2, void *a3)
{
  sub_10005DC58(&qword_10058FED0, &qword_100493980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100480F30;
  *(inited + 32) = kSecAttrSynchronizable;
  type metadata accessor for CFString(0);
  v8 = v7;
  *(inited + 40) = kSecAttrSynchronizableAny;
  *(inited + 64) = v7;
  *(inited + 72) = kSecAttrService;
  *(inited + 80) = a2;
  *(inited + 88) = a3;
  *(inited + 104) = &type metadata for String;
  *(inited + 112) = kSecAttrAccount;
  v9 = kSecAttrSynchronizable;
  v10 = kSecAttrSynchronizableAny;
  v11 = kSecAttrService;
  v28 = a3;

  v12 = kSecAttrAccount;
  v29 = a1;
  v13 = UUID.uuidString.getter();
  *(inited + 144) = &type metadata for String;
  *(inited + 120) = v13;
  *(inited + 128) = v14;
  v15 = sub_1000821A0(inited);
  swift_setDeallocating();
  sub_10005DC58(&qword_10058BAE0, &qword_100480E28);
  swift_arrayDestroy();
  v16 = swift_initStackObject();
  *(v16 + 32) = kSecClass;
  *(v16 + 16) = xmmword_100480F40;
  *(v16 + 64) = v8;
  *(v16 + 40) = kSecClassGenericPassword;
  v17 = kSecClass;
  v18 = kSecClassGenericPassword;
  v19 = sub_1000821A0(v16);
  swift_setDeallocating();
  sub_100016290(v16 + 32, &qword_10058BAE0, &qword_100480E28);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = v15;
  sub_1001D60E8(v19, sub_1001D5980, 0, isUniquelyReferenced_nonNull_native, &v31);

  sub_1001D469C(&qword_10058B320, type metadata accessor for CFString);
  v21.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v22 = SecItemDelete(v21.super.isa);
  if (v22)
  {
    v23 = SecCopyErrorMessageString(v22, 0);
    if (v23)
    {
      v24 = v23;
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;
    }

    else
    {
      v27 = 0xE700000000000000;
      v25 = 0x6E776F6E6B6E75;
    }

    sub_1001CB2F8(v25, v27, v30, v29, a2, v28);
  }

  else
  {
  }
}

void sub_1001CB2F8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = *(*(type metadata accessor for LongTermPairingKeys.PrivateIdentity(0) - 8) + 64);
  __chkstk_darwin();
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001D45C0(a4, v13, type metadata accessor for LongTermPairingKeys.PrivateIdentity);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v25 = a1;
    v17 = v16;
    v28 = swift_slowAlloc();
    *v17 = 136315650;
    type metadata accessor for UUID();
    sub_1001D469C(&qword_100597520, &type metadata accessor for UUID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    sub_1001D46E4(v13, type metadata accessor for LongTermPairingKeys.PrivateIdentity);
    v21 = sub_100002320(v18, v20, &v28);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    v26 = 39;
    v27 = 0xE100000000000000;
    v22._countAndFlagsBits = a5;
    v22._object = a6;
    String.append(_:)(v22);
    v23._countAndFlagsBits = 39;
    v23._object = 0xE100000000000000;
    String.append(_:)(v23);
    v24 = sub_100002320(v26, v27, &v28);

    *(v17 + 14) = v24;
    *(v17 + 22) = 2080;
    *(v17 + 24) = sub_100002320(v25, a2, &v28);
    _os_log_impl(&_mh_execute_header, v14, v15, "Failed to delete the device identity %s from the keychain for %s with error: %s", v17, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1001D46E4(v13, type metadata accessor for LongTermPairingKeys.PrivateIdentity);
  }
}

void AppleKeychain.addIdentityKey(_:)()
{
  v1 = v0;
  v2 = sub_100033AA8(_swiftEmptyArrayStorage);
  v3 = type metadata accessor for BinaryEncoder();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100480A90;
  *(v4 + 32) = v2;
  v52 = v3;
  v53 = sub_1001D469C(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
  *&v51 = v4;

  NANIdentityKey.encode(to:)(&v51);
  sub_100002A00(&v51);
  swift_beginAccess();
  v48 = *(v4 + 24);
  v49 = *(v4 + 16);
  sub_10000AB0C(v49, v48);

  v5 = *(v0 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_keychainAccessGroup);
  v6 = *(v0 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_keychainAccessGroup + 8);
  v7 = *(v1 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_nanPairingService);
  v8 = *(v1 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_nanPairingService + 8);
  v9 = *(v1 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_identityKeyAccount);
  v10 = *(v1 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_identityKeyAccount + 8);
  sub_10005DC58(&qword_10058FED0, &qword_100493980);
  inited = swift_initStackObject();
  *(inited + 32) = kSecAttrAccessGroup;
  *(inited + 16) = xmmword_1004938F0;
  *(inited + 40) = v5;
  *(inited + 48) = v6;
  *(inited + 64) = &type metadata for String;
  *(inited + 72) = kSecAttrSynchronizable;
  *(inited + 80) = 0;
  *(inited + 104) = &type metadata for Bool;
  *(inited + 112) = kSecAttrIsInvisible;
  *(inited + 120) = 1;
  *(inited + 144) = &type metadata for Bool;
  *(inited + 152) = kSecAttrLabel;
  *(inited + 160) = 0xD000000000000010;
  *(inited + 168) = 0x80000001004B5200;
  *(inited + 184) = &type metadata for String;
  *(inited + 192) = kSecAttrAccount;
  *(inited + 200) = v9;
  *(inited + 208) = v10;
  *(inited + 224) = &type metadata for String;
  *(inited + 232) = kSecAttrService;
  *(inited + 240) = v7;
  *(inited + 248) = v8;
  *(inited + 264) = &type metadata for String;
  *(inited + 272) = kSecValueData;
  *(inited + 304) = &type metadata for Data;
  *(inited + 280) = v49;
  *(inited + 288) = v48;
  sub_10000AB0C(v49, v48);
  v12 = kSecAttrAccessGroup;

  v13 = kSecAttrSynchronizable;
  v14 = kSecAttrIsInvisible;
  v15 = kSecAttrLabel;
  v16 = kSecAttrAccount;

  v17 = kSecAttrService;

  v18 = kSecValueData;
  v19 = sub_1000821A0(inited);
  swift_setDeallocating();
  sub_10005DC58(&qword_10058BAE0, &qword_100480E28);
  swift_arrayDestroy();
  type metadata accessor for CFString(0);
  v21 = v20;
  v52 = v20;
  *&v51 = kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
  sub_100085188(&v51, v50);
  v22 = kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100080710(v50, kSecAttrAccessible, isUniquelyReferenced_nonNull_native);
  sub_1000124C8(v49, v48);
  v24 = swift_initStackObject();
  *(v24 + 32) = kSecClass;
  *(v24 + 16) = xmmword_100480F40;
  *(v24 + 64) = v21;
  *(v24 + 40) = kSecClassGenericPassword;

  v25 = kSecClass;
  v26 = kSecClassGenericPassword;
  v27 = sub_1000821A0(v24);
  swift_setDeallocating();
  sub_100016290(v24 + 32, &qword_10058BAE0, &qword_100480E28);
  v28 = swift_isUniquelyReferenced_nonNull_native();
  *&v51 = v19;
  sub_1001D60E8(v27, sub_1001D5980, 0, v28, &v51);

  sub_1001D469C(&qword_10058B320, type metadata accessor for CFString);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v30 = SecItemAdd(isa, 0);

  if (v30 == -25299)
  {
    v31 = swift_initStackObject();
    *(v31 + 16) = xmmword_100480F40;
    *(v31 + 32) = v25;
    *(v31 + 64) = v21;
    *(v31 + 40) = v26;

    v32 = v25;
    v33 = v26;
    v34 = sub_1000821A0(v31);
    swift_setDeallocating();
    sub_100016290(v31 + 32, &qword_10058BAE0, &qword_100480E28);
    v35 = swift_isUniquelyReferenced_nonNull_native();
    *&v51 = v19;
    sub_1001D60E8(v34, sub_1001D5980, 0, v35, &v51);

    v36 = Dictionary._bridgeToObjectiveC()().super.isa;

    v37 = Dictionary._bridgeToObjectiveC()().super.isa;

    v30 = SecItemUpdate(v36, v37);

    if (!v30)
    {
      return;
    }
  }

  else
  {

    if (!v30)
    {
      return;
    }
  }

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *&v51 = v41;
    *v40 = 136315138;
    v42 = SecCopyErrorMessageString(v30, 0);
    if (v42)
    {
      v43 = v42;
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;
    }

    else
    {
      v46 = 0xE700000000000000;
      v44 = 0x6E776F6E6B6E75;
    }

    v47 = sub_100002320(v44, v46, &v51);

    *(v40 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v38, v39, "Failed to add the NAN identity key to the keychain with error: %s", v40, 0xCu);
    sub_100002A00(v41);
  }
}

uint64_t AppleKeychain.findIdentityKey()@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  v2 = *(*(sub_10005DC58(&unk_100595C50, &unk_1004AFD20) - 8) + 64);
  __chkstk_darwin();
  v59 = &v58 - v3;
  sub_10005DC58(&qword_10058FED0, &qword_100493980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004817D0;
  *(inited + 32) = kSecClass;
  v67 = kSecClass;
  v68 = inited + 32;
  v66 = kSecClassGenericPassword;
  type metadata accessor for CFString(0);
  *(inited + 40) = kSecClassGenericPassword;
  v65 = kSecAttrService;
  *(inited + 64) = v5;
  *(inited + 72) = kSecAttrService;
  v6 = *(v1 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_nanPairingService);
  v63 = *(v1 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_nanPairingService + 8);
  v7 = v63;
  *(inited + 80) = v6;
  *(inited + 88) = v7;
  v64 = kSecAttrAccount;
  *(inited + 104) = &type metadata for String;
  *(inited + 112) = kSecAttrAccount;
  v62 = v1;
  v8 = *(v1 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_identityKeyAccount + 8);
  *(inited + 120) = *(v1 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_identityKeyAccount);
  *(inited + 128) = v8;
  *(inited + 144) = &type metadata for String;
  *(inited + 152) = kSecMatchLimit;
  *(inited + 160) = kSecMatchLimitOne;
  *(inited + 184) = v5;
  *(inited + 192) = kSecReturnData;
  *(inited + 200) = 1;
  *(inited + 224) = &type metadata for Bool;
  *(inited + 232) = kSecAttrAccessible;
  *(inited + 264) = v5;
  *(inited + 240) = kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
  v9 = v67;
  v10 = v66;
  v11 = v65;

  v12 = v64;

  v13 = kSecMatchLimit;
  v14 = kSecMatchLimitOne;
  v15 = kSecReturnData;
  v16 = kSecAttrAccessible;
  v17 = kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
  sub_1000821A0(inited);
  swift_setDeallocating();
  sub_10005DC58(&qword_10058BAE0, &qword_100480E28);
  swift_arrayDestroy();
  sub_1001D469C(&qword_10058B320, type metadata accessor for CFString);
  v18.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v70 = 0;
  v19 = SecItemCopyMatching(v18.super.isa, &v70);
  if (v19)
  {
    if (v19 == -25300)
    {
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "No NAN identity key stored in the keychain", v22, 2u);
      }

      v23 = type metadata accessor for NANIdentityKey(0);
      (*(*(v23 - 8) + 56))(v60, 1, 1, v23);
      return swift_unknownObjectRelease();
    }

    v39 = v19;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v69[0] = v43;
      *v42 = 136315138;
      v44 = SecCopyErrorMessageString(v39, 0);
      if (v44)
      {
        v45 = v44;
        v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v48 = v47;
      }

      else
      {
        v48 = 0xE700000000000000;
        v46 = 0x6E776F6E6B6E75;
      }

      v53 = sub_100002320(v46, v48, v69);

      *(v42 + 4) = v53;
      _os_log_impl(&_mh_execute_header, v40, v41, "Failed to find the NAN identity key in the keychain with error: %s", v42, 0xCu);
      sub_100002A00(v43);
    }

    v52 = 0;
LABEL_21:
    sub_1001D6BF4();
    swift_allocError();
    *v54 = v52;
    swift_willThrow();

    return swift_unknownObjectRelease();
  }

  v24 = v59;
  if (!v70)
  {
LABEL_15:
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "Failed to parse the NAN identity key from the keychain", v51, 2u);
    }

    v52 = 1;
    goto LABEL_21;
  }

  v25 = swift_unknownObjectRetain();
  v26 = CFGetTypeID(v25);
  if (v26 != CFDataGetTypeID())
  {
    swift_unknownObjectRelease();
    goto LABEL_15;
  }

  type metadata accessor for CFData(0);
  swift_unknownObjectRetain();
  v27 = swift_dynamicCastUnknownClassUnconditional();
  v28 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  v68 = sub_100033AA8(_swiftEmptyArrayStorage);
  v31 = type metadata accessor for BinaryDecoder();
  v32 = swift_allocObject();
  v33 = 0;
  v32[5] = &_swiftEmptyDictionarySingleton;
  v34 = v28;
  v32[2] = v28;
  v32[3] = v30;
  v35 = v30 >> 62;
  if ((v30 >> 62) > 1)
  {
    v36 = v61;
    v37 = v24;
    v38 = v34;
    if (v35 == 2)
    {
      v33 = *(v34 + 16);
    }
  }

  else
  {
    v36 = v61;
    v37 = v24;
    v38 = v34;
    if (v35)
    {
      v33 = v34;
    }
  }

  v32[4] = v33;
  swift_beginAccess();
  v32[5] = v68;
  v69[3] = v31;
  v69[4] = sub_1001D469C(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
  v69[0] = v32;
  sub_10000AB0C(v38, v30);

  NANIdentityKey.init(from:)(v69, v37);
  if (v36)
  {

    swift_unknownObjectRelease();
    v56 = 1;
  }

  else
  {
    swift_unknownObjectRelease();

    v56 = 0;
  }

  sub_1000124C8(v38, v30);
  v57 = type metadata accessor for NANIdentityKey(0);
  (*(*(v57 - 8) + 56))(v37, v56, 1, v57);
  sub_10001CEA8(v37, v60, &unk_100595C50, &unk_1004AFD20);
  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall AppleKeychain.deleteIdentityKey()()
{
  sub_10005DC58(&qword_10058FED0, &qword_100493980);
  inited = swift_initStackObject();
  *(inited + 32) = kSecAttrService;
  *(inited + 16) = xmmword_100480F30;
  v2 = *(v0 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_nanPairingService + 8);
  *(inited + 40) = *(v0 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_nanPairingService);
  *(inited + 48) = v2;
  *(inited + 64) = &type metadata for String;
  *(inited + 72) = kSecAttrAccount;
  v3 = *(v0 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_identityKeyAccount + 8);
  *(inited + 80) = *(v0 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_identityKeyAccount);
  *(inited + 88) = v3;
  *(inited + 104) = &type metadata for String;
  *(inited + 112) = kSecAttrAccessible;
  type metadata accessor for CFString(0);
  v5 = v4;
  *(inited + 144) = v4;
  *(inited + 120) = kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
  v6 = kSecAttrService;

  v7 = kSecAttrAccount;

  v8 = kSecAttrAccessible;
  v9 = kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
  v10 = sub_1000821A0(inited);
  swift_setDeallocating();
  sub_10005DC58(&qword_10058BAE0, &qword_100480E28);
  swift_arrayDestroy();
  v11 = swift_initStackObject();
  *(v11 + 32) = kSecClass;
  *(v11 + 16) = xmmword_100480F40;
  *(v11 + 64) = v5;
  *(v11 + 40) = kSecClassGenericPassword;
  v12 = kSecClass;
  v13 = kSecClassGenericPassword;
  v14 = sub_1000821A0(v11);
  swift_setDeallocating();
  sub_100016290(v11 + 32, &qword_10058BAE0, &qword_100480E28);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = v10;
  sub_1001D60E8(v14, sub_1001D5980, 0, isUniquelyReferenced_nonNull_native, &v27);

  sub_1001D469C(&qword_10058B320, type metadata accessor for CFString);
  v16.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v17 = SecItemDelete(v16.super.isa);
  if (v17)
  {
    v18 = SecCopyErrorMessageString(v17, 0);
    if (v18)
    {
      v19 = v18;
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;
    }

    else
    {
      v22 = 0xE700000000000000;
      v20 = 0x6E776F6E6B6E75;
    }

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_100002320(v20, v22, &v27);
      _os_log_impl(&_mh_execute_header, v23, v24, "Failed to delete identity key from the keychain with error: %s", v25, 0xCu);
      sub_100002A00(v26);
    }
  }

  else
  {
  }
}

uint64_t AppleKeychain.installPairedPeer(with:)(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v117 = &v115 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v119 = &v115 - v7;
  __chkstk_darwin();
  v116 = &v115 - v8;
  __chkstk_darwin();
  v118 = &v115 - v9;
  __chkstk_darwin();
  v147 = &v115 - v10;
  __chkstk_darwin();
  v132 = &v115 - v11;
  v12 = *(*(sub_10005DC58(&unk_1005985B0, &unk_1004939A0) - 8) + 64);
  __chkstk_darwin();
  v14 = &v115 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v140 = &v115 - v15;
  v126 = type metadata accessor for NANPairedDeviceSharedAssociation(0);
  v131 = *(v126 - 8);
  v16 = *(v131 + 64);
  __chkstk_darwin();
  v125 = &v115 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v115 - v18;
  __chkstk_darwin();
  v130 = &v115 - v20;
  __chkstk_darwin();
  v22 = &v115 - v21;
  v23 = *(*(sub_10005DC58(&qword_10058F4D0, &qword_100491AB0) - 8) + 64);
  __chkstk_darwin();
  v120 = &v115 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v26 = &v115 - v25;
  v135 = v1;
  v27 = AppleKeychain.loadPairedPeerAssociationsWithIDs()();
  v28 = *(v4 + 56);
  v129 = v26;
  v124 = v4 + 56;
  v123 = v28;
  v28(v26, 1, 1, v3);
  v138 = a1;
  v29 = a1;
  v30 = v19;
  v128 = v22;
  result = sub_1001D45C0(v29, v22, type metadata accessor for NANPairedDeviceSharedAssociation);
  v33 = 0;
  v34 = 0;
  v36 = v27 + 64;
  v35 = *(v27 + 64);
  v133 = v27;
  v37 = 1 << *(v27 + 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v39 = v38 & v35;
  v127 = OBJC_IVAR____TtC7CoreP2P13AppleKeychain_logger;
  v40 = (v37 + 63) >> 6;
  v143 = (v4 + 16);
  v144 = (v4 + 32);
  v134 = v4;
  v139 = (v4 + 8);
  *&v32 = 136315138;
  v121 = v32;
  v141 = v14;
  v142 = v3;
  v136 = v40;
  v137 = v27 + 64;
  v145 = v30;
  while (1)
  {
    if (!v39)
    {
      if (v40 <= v33 + 1)
      {
        v42 = v33 + 1;
      }

      else
      {
        v42 = v40;
      }

      v43 = v42 - 1;
      while (1)
      {
        v41 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          break;
        }

        if (v41 >= v40)
        {
          v146 = v34;
          v65 = sub_10005DC58(&unk_100597500, &unk_1004939B0);
          v53 = v141;
          (*(*(v65 - 8) + 56))(v141, 1, 1, v65);
          v39 = 0;
          v33 = v43;
          goto LABEL_18;
        }

        v39 = *(v36 + 8 * v41);
        ++v33;
        if (v39)
        {
          v146 = v34;
          v33 = v41;
          goto LABEL_17;
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
      __break(1u);
      return result;
    }

    v146 = v34;
    v41 = v33;
LABEL_17:
    v44 = __clz(__rbit64(v39));
    v39 &= v39 - 1;
    v45 = v44 | (v41 << 6);
    v46 = v133;
    v47 = v134;
    v48 = v132;
    (*(v134 + 16))(v132, *(v133 + 48) + *(v134 + 72) * v45, v3);
    v49 = v130;
    sub_1001D45C0(*(v46 + 56) + *(v131 + 72) * v45, v130, type metadata accessor for NANPairedDeviceSharedAssociation);
    v50 = sub_10005DC58(&unk_100597500, &unk_1004939B0);
    v51 = *(v50 + 48);
    v52 = *(v47 + 32);
    v53 = v141;
    v52(v141, v48, v3);
    sub_1001D6B5C(v49, v53 + v51, type metadata accessor for NANPairedDeviceSharedAssociation);
    (*(*(v50 - 8) + 56))(v53, 0, 1, v50);
    v30 = v145;
LABEL_18:
    v54 = v53;
    v55 = v140;
    sub_10001CEA8(v54, v140, &unk_1005985B0, &unk_1004939A0);
    v56 = sub_10005DC58(&unk_100597500, &unk_1004939B0);
    if ((*(*(v56 - 8) + 48))(v55, 1, v56) == 1)
    {
      break;
    }

    v57 = *(v56 + 48);
    v3 = v142;
    (*v144)(v147, v55, v142);
    sub_1001D6B5C(v55 + v57, v30, type metadata accessor for NANPairedDeviceSharedAssociation);
    v34 = v146;
    SymmetricKey.withUnsafeBytes<A>(_:)();
    v58 = v150;
    v59 = v151;
    SymmetricKey.withUnsafeBytes<A>(_:)();
    result = v150;
    v60 = v59 >> 62;
    v61 = v151 >> 62;
    if (v59 >> 62 != 3)
    {
      if (v60)
      {
        if (v60 == 1)
        {
          LODWORD(v62) = HIDWORD(v58) - v58;
          if (__OFSUB__(HIDWORD(v58), v58))
          {
            goto LABEL_65;
          }

          v62 = v62;
        }

        else
        {
          v67 = *(v58 + 16);
          v66 = *(v58 + 24);
          v68 = __OFSUB__(v66, v67);
          v62 = v66 - v67;
          if (v68)
          {
            goto LABEL_66;
          }
        }
      }

      else
      {
        v62 = BYTE6(v59);
      }

LABEL_33:
      if (v61 <= 1)
      {
        if (v61)
        {
          if (__OFSUB__(HIDWORD(v150), v150))
          {
            goto LABEL_64;
          }

          if (v62 != HIDWORD(v150) - v150)
          {
LABEL_5:
            sub_1000124C8(v150, v151);
            sub_1000124C8(v58, v59);
            v30 = v145;
            goto LABEL_6;
          }
        }

        else if (v62 != BYTE6(v151))
        {
          goto LABEL_5;
        }

        goto LABEL_43;
      }

      if (v61 == 2)
      {
        v70 = v150[2];
        v69 = v150[3];
        v68 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v68)
        {
          goto LABEL_63;
        }

        if (v62 != v71)
        {
          goto LABEL_5;
        }

LABEL_43:
        if (v62 >= 1)
        {
          v72 = v150;
          v73 = v151;
          sub_10000AB0C(v150, v151);
          v74 = sub_100031C74(v58, v59, v72, v73);
          sub_1000124C8(v58, v59);
          sub_1000124C8(v72, v73);
          v30 = v145;
          if ((v74 & 1) == 0)
          {
            goto LABEL_6;
          }

          goto LABEL_48;
        }
      }

      else if (v62)
      {
        goto LABEL_5;
      }

      sub_1000124C8(v150, v151);
      v63 = v58;
      v64 = v59;
      goto LABEL_47;
    }

    v62 = 0;
    if (v58)
    {
      goto LABEL_33;
    }

    if (v59 != 0xC000000000000000)
    {
      goto LABEL_33;
    }

    if (v151 >> 62 != 3)
    {
      goto LABEL_33;
    }

    v62 = 0;
    if (v150 || v151 != 0xC000000000000000)
    {
      goto LABEL_33;
    }

    sub_1000124C8(0, 0xC000000000000000);
    v63 = 0;
    v64 = 0xC000000000000000;
LABEL_47:
    sub_1000124C8(v63, v64);
    v30 = v145;
LABEL_48:
    v75 = v129;
    sub_100016290(v129, &qword_10058F4D0, &qword_100491AB0);
    (*v143)(v75, v147, v3);
    v123(v75, 0, 1, v3);
    *&v128[*(v126 + 32)] = *(v30 + *(v126 + 32));
    v76 = v125;
    sub_1001D45C0(v30, v125, type metadata accessor for NANPairedDeviceSharedAssociation);
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      v148 = v122;
      *v79 = v121;
      SymmetricKey.withUnsafeBytes<A>(_:)();
      v146 = v34;
      v80 = v76;
      v82 = v150;
      v81 = v151;
      v83 = Data.hexString.getter(v150, v151);
      v85 = v84;
      sub_1000124C8(v82, v81);
      v86 = v80;
      v34 = v146;
      sub_1001D46E4(v86, type metadata accessor for NANPairedDeviceSharedAssociation);
      v87 = sub_100002320(v83, v85, &v148);
      v3 = v142;

      *(v79 + 4) = v87;
      _os_log_impl(&_mh_execute_header, v77, v78, "Paired Peer: Uninstalling existing shared association for %s", v79, 0xCu);
      sub_100002A00(v122);

      v30 = v145;
    }

    else
    {

      sub_1001D46E4(v76, type metadata accessor for NANPairedDeviceSharedAssociation);
    }

    AppleKeychain.uninstallPairedPeer(with:)(v30);
LABEL_6:
    sub_1001D46E4(v30, type metadata accessor for NANPairedDeviceSharedAssociation);
    result = (*v139)(v147, v3);
    v40 = v136;
    v36 = v137;
  }

  v88 = v120;
  sub_100012400(v129, v120, &qword_10058F4D0, &qword_100491AB0);
  v89 = v142;
  if ((*(v134 + 48))(v88, 1, v142) == 1)
  {
    sub_100016290(v88, &qword_10058F4D0, &qword_100491AB0);
    v90 = v119;
    UUID.init()();
    v91 = v117;
    (*v143)(v117, v90, v89);
    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v150 = v95;
      *v94 = v121;
      sub_1001D469C(&qword_100597520, &type metadata accessor for UUID);
      v96 = dispatch thunk of CustomStringConvertible.description.getter();
      v98 = v97;
      v99 = *v139;
      (*v139)(v91, v89);
      v100 = sub_100002320(v96, v98, &v150);

      *(v94 + 4) = v100;
      _os_log_impl(&_mh_execute_header, v92, v93, "Installing peer with UUID: %s", v94, 0xCu);
      sub_100002A00(v95);
    }

    else
    {

      v99 = *v139;
      (*v139)(v91, v89);
    }

    v111 = v128;
    v112 = v128;
    v113 = &v149;
  }

  else
  {
    v101 = v118;
    (*v144)(v118, v88, v89);
    v102 = v116;
    (*v143)(v116, v101, v89);
    v103 = Logger.logObject.getter();
    v104 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v150 = v106;
      *v105 = v121;
      sub_1001D469C(&qword_100597520, &type metadata accessor for UUID);
      v107 = dispatch thunk of CustomStringConvertible.description.getter();
      v109 = v108;
      v99 = *v139;
      (*v139)(v102, v89);
      v110 = sub_100002320(v107, v109, &v150);

      *(v105 + 4) = v110;
      _os_log_impl(&_mh_execute_header, v103, v104, "Updating peer with UUID: %s", v105, 0xCu);
      sub_100002A00(v106);
    }

    else
    {

      v99 = *v139;
      (*v139)(v102, v89);
    }

    v111 = v128;
    v112 = v128;
    v113 = &v148;
  }

  v114 = *(v113 - 32);
  AppleKeychain.installPairedPeer(with:using:)(v112, v114);
  v99(v114, v89);
  sub_1001D46E4(v111, type metadata accessor for NANPairedDeviceSharedAssociation);
  return sub_100016290(v129, &qword_10058F4D0, &qword_100491AB0);
}

void AppleKeychain.installPairedPeer(with:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(*(sub_10005DC58(&qword_10058BAD0, &qword_100480E18) - 8) + 64);
  __chkstk_darwin();
  v72 = &v67 - v7;
  v8 = type metadata accessor for UUID();
  v68 = *(v8 - 8);
  v69 = v8;
  v9 = *(v68 + 64);
  __chkstk_darwin();
  v70 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100033AA8(_swiftEmptyArrayStorage);
  v12 = type metadata accessor for BinaryEncoder();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100480A90;
  *(v13 + 32) = v11;
  v85 = v12;
  v86 = sub_1001D469C(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
  *&v84 = v13;

  v71 = a1;
  NANPairedDeviceSharedAssociation.encode(to:)(&v84);
  v76 = 0;
  sub_100002A00(&v84);
  swift_beginAccess();
  v14 = *(v13 + 16);
  v80 = *(v13 + 24);
  *&v81 = v14;
  sub_10000AB0C(v14, v80);

  v16 = *(v3 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_keychainAccessGroup);
  v15 = *(v3 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_keychainAccessGroup + 8);
  v77 = a2;
  v78 = v3;
  v17 = *(v3 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_nanPairingService);
  v18 = *(v3 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_nanPairingService + 8);
  v73 = v15;
  v74 = v17;
  v19 = UUID.uuidString.getter();
  v21 = v20;
  v79 = sub_10005DC58(&qword_10058FED0, &qword_100493980);
  inited = swift_initStackObject();
  *(inited + 32) = kSecAttrAccessGroup;
  v75 = inited + 32;
  *(inited + 16) = xmmword_1004938F0;
  *(inited + 40) = v16;
  *(inited + 48) = v15;
  *(inited + 64) = &type metadata for String;
  *(inited + 72) = kSecAttrSynchronizable;
  *(inited + 80) = 0;
  *(inited + 104) = &type metadata for Bool;
  *(inited + 112) = kSecAttrIsInvisible;
  *(inited + 120) = 1;
  *(inited + 144) = &type metadata for Bool;
  *(inited + 152) = kSecAttrLabel;
  *(inited + 160) = 0xD000000000000011;
  *(inited + 168) = 0x80000001004B5220;
  *(inited + 184) = &type metadata for String;
  *(inited + 192) = kSecAttrAccount;
  *(inited + 200) = v19;
  *(inited + 208) = v21;
  *(inited + 224) = &type metadata for String;
  *(inited + 232) = kSecAttrService;
  *(inited + 240) = v74;
  *(inited + 248) = v18;
  *(inited + 264) = &type metadata for String;
  *(inited + 272) = kSecValueData;
  *(inited + 304) = &type metadata for Data;
  v24 = v80;
  v23 = v81;
  *(inited + 280) = v81;
  *(inited + 288) = v24;
  sub_10000AB0C(v23, v24);
  v25 = kSecAttrAccessGroup;

  v26 = kSecAttrSynchronizable;
  v27 = kSecAttrIsInvisible;
  v28 = kSecAttrLabel;
  v29 = kSecAttrAccount;
  v30 = kSecAttrService;

  v31 = kSecValueData;
  v32 = sub_1000821A0(inited);
  swift_setDeallocating();
  sub_10005DC58(&qword_10058BAE0, &qword_100480E28);
  swift_arrayDestroy();
  type metadata accessor for CFString(0);
  v34 = v33;
  v85 = v33;
  *&v84 = kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
  sub_100085188(&v84, v83);
  v35 = kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v82 = v32;
  sub_100080710(v83, kSecAttrAccessible, isUniquelyReferenced_nonNull_native);
  sub_1000124C8(v81, v80);
  v37 = v82;
  v38 = swift_initStackObject();
  *(v38 + 32) = kSecClass;
  v81 = xmmword_100480F40;
  *(v38 + 16) = xmmword_100480F40;
  *(v38 + 64) = v34;
  *(v38 + 40) = kSecClassGenericPassword;

  v39 = kSecClass;
  v40 = kSecClassGenericPassword;
  v41 = sub_1000821A0(v38);
  swift_setDeallocating();
  sub_100016290(v38 + 32, &qword_10058BAE0, &qword_100480E28);
  v42 = swift_isUniquelyReferenced_nonNull_native();
  *&v84 = v37;
  v43 = v76;
  sub_1001D60E8(v41, sub_1001D5980, 0, v42, &v84);

  if (v43)
  {

    __break(1u);

    sub_100002A00(&v84);
    swift_unexpectedError();
    __break(1u);
  }

  else
  {
    sub_1001D469C(&qword_10058B320, type metadata accessor for CFString);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v45 = SecItemAdd(isa, 0);

    if (v45 == -25299)
    {
      v46 = swift_initStackObject();
      *(v46 + 16) = v81;
      *(v46 + 32) = v39;
      *(v46 + 64) = v34;
      *(v46 + 40) = v40;

      v47 = v39;
      v48 = v40;
      v49 = sub_1000821A0(v46);
      swift_setDeallocating();
      sub_100016290(v46 + 32, &qword_10058BAE0, &qword_100480E28);
      v50 = swift_isUniquelyReferenced_nonNull_native();
      *&v84 = v37;
      sub_1001D60E8(v49, sub_1001D5980, 0, v50, &v84);

      v51 = Dictionary._bridgeToObjectiveC()().super.isa;

      v52 = Dictionary._bridgeToObjectiveC()().super.isa;

      v45 = SecItemUpdate(v51, v52);

      v53 = v77;
      if (!v45)
      {
        goto LABEL_5;
      }
    }

    else
    {

      v53 = v77;
      if (!v45)
      {
LABEL_5:
        v54 = v70;
        (*(v68 + 16))(v70, v53, v69);
        v55 = v72;
        sub_1001D45C0(v71, v72, type metadata accessor for NANPairedDeviceSharedAssociation);
        v56 = type metadata accessor for NANPairedDeviceSharedAssociation(0);
        (*(*(v56 - 8) + 56))(v55, 0, 1, v56);
        swift_beginAccess();
        sub_100072D18(v55, v54);
        swift_endAccess();
        return;
      }
    }

    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *&v84 = v60;
      *v59 = 136315138;
      v61 = SecCopyErrorMessageString(v45, 0);
      if (v61)
      {
        v62 = v61;
        v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v65 = v64;
      }

      else
      {
        v65 = 0xE700000000000000;
        v63 = 0x6E776F6E6B6E75;
      }

      v66 = sub_100002320(v63, v65, &v84);

      *(v59 + 4) = v66;
      _os_log_impl(&_mh_execute_header, v57, v58, "Failed to add the NAN paired peer keys to the keychain with error: %s", v59, 0xCu);
      sub_100002A00(v60);
    }
  }
}

uint64_t AppleKeychain.uninstallPairedPeer(with:)(uint64_t a1)
{
  v3 = *(*(sub_10005DC58(&qword_10058BAD0, &qword_100480E18) - 8) + 64);
  __chkstk_darwin();
  v5 = v53 - v4;
  v6 = *(*(sub_10005DC58(&unk_1005985B0, &unk_1004939A0) - 8) + 64);
  __chkstk_darwin();
  v8 = v53 - v7;
  v9 = *(*(sub_10005DC58(&qword_10058F4D0, &qword_100491AB0) - 8) + 64);
  __chkstk_darwin();
  v11 = v53 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  v56 = v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC7CoreP2P13AppleKeychain_pairedPeers;
  swift_beginAccess();
  v17 = *(v1 + v16);
  v57[2] = a1;

  sub_10019BC64(sub_1001D6C48, v57, v17, v8);

  v18 = sub_10005DC58(&unk_100597500, &unk_1004939B0);
  if ((*(*(v18 - 8) + 48))(v8, 1, v18) == 1)
  {
    sub_100016290(v8, &unk_1005985B0, &unk_1004939A0);
    (*(v13 + 56))(v11, 1, 1, v12);
    return sub_100016290(v11, &qword_10058F4D0, &qword_100491AB0);
  }

  v54 = 0;
  v55 = v5;
  v19 = *(v18 + 48);
  v20 = *(v13 + 32);
  v20(v11, v8, v12);
  (*(v13 + 56))(v11, 0, 1, v12);
  sub_1001D46E4(&v8[v19], type metadata accessor for NANPairedDeviceSharedAssociation);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_100016290(v11, &qword_10058F4D0, &qword_100491AB0);
  }

  v20(v56, v11, v12);
  v53[1] = sub_10005DC58(&qword_10058FED0, &qword_100493980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100480F30;
  *(inited + 32) = kSecAttrService;
  v53[2] = v1;
  v23 = (v1 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_nanPairingService);
  v24 = *(v1 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_nanPairingService + 8);
  *(inited + 40) = *v23;
  *(inited + 48) = v24;
  *(inited + 64) = &type metadata for String;
  *(inited + 72) = kSecAttrAccount;
  v25 = kSecAttrService;

  v26 = kSecAttrAccount;
  *(inited + 80) = UUID.uuidString.getter();
  *(inited + 88) = v27;
  *(inited + 104) = &type metadata for String;
  *(inited + 112) = kSecAttrAccessible;
  type metadata accessor for CFString(0);
  v29 = v28;
  *(inited + 144) = v28;
  *(inited + 120) = kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
  v30 = kSecAttrAccessible;
  v31 = kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
  v32 = sub_1000821A0(inited);
  swift_setDeallocating();
  sub_10005DC58(&qword_10058BAE0, &qword_100480E28);
  swift_arrayDestroy();
  v33 = swift_initStackObject();
  *(v33 + 32) = kSecClass;
  *(v33 + 16) = xmmword_100480F40;
  *(v33 + 64) = v29;
  *(v33 + 40) = kSecClassGenericPassword;
  v34 = kSecClass;
  v35 = kSecClassGenericPassword;
  v36 = sub_1000821A0(v33);
  swift_setDeallocating();
  sub_100016290(v33 + 32, &qword_10058BAE0, &qword_100480E28);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v58[0] = v32;
  v38 = v54;
  sub_1001D60E8(v36, sub_1001D5980, 0, isUniquelyReferenced_nonNull_native, v58);

  if (v38)
  {

    __break(1u);
  }

  else
  {
    sub_1001D469C(&qword_10058B320, type metadata accessor for CFString);
    v39.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v40 = SecItemDelete(v39.super.isa);
    if (v40)
    {
      v41 = SecCopyErrorMessageString(v40, 0);
      if (v41)
      {
        v42 = v41;
        v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v45 = v44;
      }

      else
      {
        v45 = 0xE700000000000000;
        v43 = 0x6E776F6E6B6E75;
      }

      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v54 = v43;
        v49 = v48;
        v50 = swift_slowAlloc();
        v58[0] = v50;
        *v49 = 136315138;
        *(v49 + 4) = sub_100002320(v54, v45, v58);
        _os_log_impl(&_mh_execute_header, v46, v47, "Failed to delete the NAN paired peer keys from the keychain with error: %s", v49, 0xCu);
        sub_100002A00(v50);
      }
    }

    else
    {
    }

    swift_beginAccess();
    v51 = v55;
    v52 = v56;
    sub_1001B91E0(v56, v55);
    sub_100016290(v51, &qword_10058BAD0, &qword_100480E18);
    swift_endAccess();
    return (*(v13 + 8))(v52, v12);
  }

  return result;
}

Swift::Void __swiftcall AppleKeychain.uninstallAllPairedPeers()()
{
  v1 = *(*(sub_10005DC58(&qword_10058BAD0, &qword_100480E18) - 8) + 64);
  __chkstk_darwin();
  v134 = &v118[-v2];
  v3 = *(*(sub_10005DC58(&qword_10058F4D0, &qword_100491AB0) - 8) + 64);
  __chkstk_darwin();
  v138 = &v118[-v4];
  v5 = type metadata accessor for UUID();
  v144 = *(v5 - 8);
  v145 = v5;
  v6 = *(v144 + 64);
  __chkstk_darwin();
  v137 = &v118[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10005DC58(&qword_10058FED0, &qword_100493980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100486AF0;
  *(inited + 32) = kSecClass;
  v149 = inited + 32;
  type metadata accessor for CFString(0);
  *(inited + 40) = kSecClassGenericPassword;
  *(inited + 64) = v9;
  *(inited + 72) = kSecAttrService;
  v150 = v9;
  v10 = *(v0 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_nanPairingService);
  v11 = *(v0 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_nanPairingService + 8);
  v143 = v10;
  *(inited + 80) = v10;
  *(inited + 88) = v11;
  *(inited + 104) = &type metadata for String;
  *(inited + 112) = kSecMatchLimit;
  *(inited + 120) = kSecMatchLimitAll;
  *(inited + 144) = v9;
  *(inited + 152) = kSecReturnData;
  *(inited + 160) = 1;
  *(inited + 184) = &type metadata for Bool;
  *(inited + 192) = kSecReturnAttributes;
  *(inited + 224) = &type metadata for Bool;
  *(inited + 200) = 1;
  v141 = kSecClass;
  v140 = kSecClassGenericPassword;
  v139 = kSecAttrService;
  v142 = v11;

  v12 = kSecMatchLimit;
  v13 = kSecMatchLimitAll;
  v14 = kSecReturnData;
  v15 = v148;
  v16 = kSecReturnAttributes;
  sub_1000821A0(inited);
  swift_setDeallocating();
  v17 = sub_10005DC58(&qword_10058BAE0, &qword_100480E28);
  swift_arrayDestroy();
  v149 = sub_1001D469C(&qword_10058B320, type metadata accessor for CFString);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v19 = OBJC_IVAR____TtC7CoreP2P13AppleKeychain_logger;
  v20 = isa;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    *(v23 + 4) = v20;
    *v24 = v20;
    v25 = v20;
    _os_log_impl(&_mh_execute_header, v21, v22, "Querying ALL paired peers with query: %@", v23, 0xCu);
    sub_100016290(v24, &qword_10058B780, &qword_100480AC0);
  }

  v158 = 0;
  v26 = SecItemCopyMatching(v20, &v158);
  if (v26 == -25300)
  {
    v104 = v20;
    v105 = Logger.logObject.getter();
    v106 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      *v107 = 138412290;
      *(v107 + 4) = v104;
      *v108 = v104;
      v109 = v104;
      v110 = "No items found for: %@";
      v111 = v106;
      v112 = v105;
      v113 = v107;
      v114 = 12;
LABEL_46:
      _os_log_impl(&_mh_execute_header, v112, v111, v110, v113, v114);
      sub_100016290(v108, &qword_10058B780, &qword_100480AC0);

      goto LABEL_52;
    }

LABEL_47:

    goto LABEL_52;
  }

  if (v26)
  {
    v115 = v26;
    v104 = v20;
    v105 = Logger.logObject.getter();
    v116 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v105, v116))
    {
      v117 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      *v117 = 138412546;
      *(v117 + 4) = v104;
      *v108 = v104;
      *(v117 + 12) = 1024;
      *(v117 + 14) = v115;
      v109 = v104;
      v110 = "Failed to get items for: %@. Error: %d";
      v111 = v116;
      v112 = v105;
      v113 = v117;
      v114 = 18;
      goto LABEL_46;
    }

    goto LABEL_47;
  }

  if (v158 && (v153 = v158, swift_unknownObjectRetain(), sub_10005DC58(&qword_10058F4D8, &unk_100492880), (swift_dynamicCast() & 1) != 0))
  {
    v28 = v151;
    if (*(v151 + 16))
    {
      v29 = *(v151 + 16);
      v126 = v20;
      v128 = v17;
      v132 = (v15 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_identityKeyAccount);
      v146 = kSecAttrAccount;
      v127 = (v144 + 48);
      v123 = OBJC_IVAR____TtC7CoreP2P13AppleKeychain_pairedPeers;
      v124 = (v144 + 32);
      v125 = (v144 + 8);
      v30 = 32;
      *&v27 = 136315138;
      v133 = v27;
      v135 = v19;
      v136 = v151;
      v31 = v29;
      do
      {
        v32 = *(v28 + v30);
        v33 = *(v32 + 16);

        if (v33 && (v34 = sub_10007CFD0(v146), (v35 & 1) != 0) && (sub_100002B30(*(v32 + 56) + 32 * v34, &v153), (swift_dynamicCast() & 1) != 0))
        {

          v37 = v151;
          v36 = v152;
          if (v151 == *v132 && v152 == v132[1] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
          }

          else
          {
            v147 = v30;
            v131 = v31;
            v49 = v140;
            v48 = v141;
            v155[0] = v141;
            v155[1] = v140;
            v50 = v139;
            v155[4] = v150;
            v156[0] = v139;
            v156[1] = v143;
            v156[2] = v142;
            v51 = v146;
            v156[4] = &type metadata for String;
            v157[0] = v146;
            v157[4] = &type metadata for String;
            v157[1] = v37;
            v157[2] = v36;
            sub_10005DC58(&qword_10058BAD8, &qword_100480E20);
            v52 = static _DictionaryStorage.allocate(capacity:)();
            v53 = v48;
            v54 = v49;
            v55 = v50;

            v56 = v51;

            sub_100012400(v155, &v153, &qword_10058BAE0, &qword_100480E28);
            v57 = v153;
            v58 = sub_10007CFD0(v153);
            if (v59)
            {
              goto LABEL_53;
            }

            v60 = v52 + 8;
            *(v52 + ((v58 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v58;
            *(v52[6] + 8 * v58) = v57;
            sub_100085188(v154, (v52[7] + 32 * v58));
            v61 = v52[2];
            v62 = __OFADD__(v61, 1);
            v63 = v61 + 1;
            if (v62)
            {
              goto LABEL_54;
            }

            v52[2] = v63;
            sub_100012400(v156, &v153, &qword_10058BAE0, &qword_100480E28);
            v64 = v153;
            v65 = sub_10007CFD0(v153);
            if (v66)
            {
              goto LABEL_53;
            }

            *(v60 + ((v65 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v65;
            *(v52[6] + 8 * v65) = v64;
            sub_100085188(v154, (v52[7] + 32 * v65));
            v67 = v52[2];
            v62 = __OFADD__(v67, 1);
            v68 = v67 + 1;
            if (v62)
            {
              goto LABEL_54;
            }

            v52[2] = v68;
            sub_100012400(v157, &v153, &qword_10058BAE0, &qword_100480E28);
            v69 = v153;
            v70 = sub_10007CFD0(v153);
            if (v71)
            {
LABEL_53:
              __break(1u);
LABEL_54:
              __break(1u);
            }

            *(v60 + ((v70 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v70;
            *(v52[6] + 8 * v70) = v69;
            sub_100085188(v154, (v52[7] + 32 * v70));
            v72 = v52[2];
            v62 = __OFADD__(v72, 1);
            v73 = v72 + 1;
            if (v62)
            {
              goto LABEL_54;
            }

            v52[2] = v73;
            swift_arrayDestroy();
            v74 = Dictionary._bridgeToObjectiveC()().super.isa;

            v130 = v74;
            v75 = SecItemDelete(v74);
            v28 = v136;
            v30 = v147;
            if (v75)
            {
              v76 = SecCopyErrorMessageString(v75, 0);
              v122 = v37;
              if (v76)
              {
                v77 = v76;
                v121 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v129 = v78;
              }

              else
              {
                v129 = 0xE700000000000000;
                v121 = 0x6E776F6E6B6E75;
              }

              v79 = Logger.logObject.getter();
              v80 = static os_log_type_t.error.getter();

              v119 = v80;
              if (os_log_type_enabled(v79, v80))
              {
                v81 = swift_slowAlloc();
                v120 = v79;
                v82 = v81;
                v83 = swift_slowAlloc();
                v153 = v83;
                *v82 = v133;
                *(v82 + 4) = sub_100002320(v121, v129, &v153);
                _os_log_impl(&_mh_execute_header, v120, v119, "Failed to delete the NAN paired peer with error: %s", v82, 0xCu);
                sub_100002A00(v83);
                v28 = v136;
              }

              else
              {
              }
            }

            v84 = v138;
            UUID.init(uuidString:)();

            v85 = v145;
            if ((*v127)(v84, 1, v145) == 1)
            {

              sub_100016290(v84, &qword_10058F4D0, &qword_100491AB0);
              v31 = v131;
            }

            else
            {
              v86 = v137;
              (*v124)(v137, v84, v85);
              v87 = v123;
              swift_beginAccess();
              v88 = *(v15 + v87);
              v89 = sub_10002A440(v86);
              if (v90)
              {
                v91 = v89;
                v92 = *(v15 + v87);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v94 = *(v15 + v87);
                v151 = v94;
                *(v15 + v87) = 0x8000000000000000;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_100196404();
                  v94 = v151;
                }

                v95 = v145;
                (*(v144 + 8))(*(v94 + 48) + *(v144 + 72) * v91, v145);
                v96 = *(v94 + 56);
                v97 = type metadata accessor for NANPairedDeviceSharedAssociation(0);
                v98 = *(v97 - 8);
                v99 = v96 + *(v98 + 72) * v91;
                v100 = v125;
                v101 = v134;
                sub_1001D6B5C(v99, v134, type metadata accessor for NANPairedDeviceSharedAssociation);
                sub_100193868(v91, v94);
                *(v15 + v87) = v94;
                v102 = v101;
                (*(v98 + 56))(v101, 0, 1, v97);
                v28 = v136;
                v31 = v131;
              }

              else
              {
                v103 = type metadata accessor for NANPairedDeviceSharedAssociation(0);
                v102 = v134;
                (*(*(v103 - 8) + 56))(v134, 1, 1, v103);
                v95 = v145;
                v31 = v131;
                v100 = v125;
              }

              sub_100016290(v102, &qword_10058BAD0, &qword_100480E18);
              swift_endAccess();

              (*v100)(v137, v95);
              v30 = v147;
            }
          }
        }

        else
        {

          v38 = Logger.logObject.getter();
          v39 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            v41 = swift_slowAlloc();
            v153 = v41;
            *v40 = v133;
            v42 = Dictionary.description.getter();
            v147 = v30;
            v43 = v31;
            v44 = v15;
            v46 = v45;

            v47 = sub_100002320(v42, v46, &v153);
            v15 = v44;
            v31 = v43;
            v30 = v147;

            *(v40 + 4) = v47;
            _os_log_impl(&_mh_execute_header, v38, v39, "Failed to read account from %s", v40, 0xCu);
            sub_100002A00(v41);

            v28 = v136;
          }

          else
          {
          }
        }

        v30 += 8;
        --v31;
      }

      while (v31);
    }

    else
    {
    }
  }

  else
  {
  }

LABEL_52:
  swift_unknownObjectRelease();
}

Swift::Void __swiftcall AppleKeychain.uninstallAllIdentities()()
{
  v1 = v0;
  sub_10005DC58(&qword_10058FED0, &qword_100493980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100483520;
  *(inited + 32) = kSecClass;
  type metadata accessor for CFString(0);
  v4 = v3;
  *(inited + 40) = kSecClassGenericPassword;
  *(inited + 64) = v3;
  *(inited + 72) = kSecAttrService;
  v5 = *(v0 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_nanPairingService);
  v6 = *(v0 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_nanPairingService + 8);
  *(inited + 104) = &type metadata for String;
  *(inited + 80) = v5;
  *(inited + 88) = v6;
  v7 = kSecClass;
  v8 = kSecClassGenericPassword;
  v9 = v7;
  v10 = v8;
  v11 = kSecAttrService;

  v12 = sub_1000821A0(inited);
  swift_setDeallocating();
  sub_10005DC58(&qword_10058BAE0, &qword_100480E28);
  swift_arrayDestroy();

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v41[0] = v40;
    *v15 = 136315138;
    sub_1001D469C(&qword_10058B320, type metadata accessor for CFString);
    v16 = Dictionary.description.getter();
    v18 = v10;
    v19 = sub_100002320(v16, v17, v41);

    *(v15 + 4) = v19;
    v10 = v18;
    _os_log_impl(&_mh_execute_header, v13, v14, "Uninstalling ALL identities with query: %s", v15, 0xCu);
    sub_100002A00(v40);
  }

  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_100480F40;
  *(v20 + 32) = v9;
  v21 = v20 + 32;
  *(v20 + 64) = v4;
  *(v20 + 40) = v10;
  v22 = sub_1000821A0(v20);
  swift_setDeallocating();
  sub_100016290(v21, &qword_10058BAE0, &qword_100480E28);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v41[0] = v12;
  sub_1001D60E8(v22, sub_1001D5980, 0, isUniquelyReferenced_nonNull_native, v41);

  sub_1001D469C(&qword_10058B320, type metadata accessor for CFString);
  v24.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v25 = SecItemDelete(v24.super.isa);
  if (v25)
  {
    v26 = SecCopyErrorMessageString(v25, 0);
    if (v26)
    {
      v27 = v26;
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;
    }

    else
    {
      v30 = 0xE700000000000000;
      v28 = 0x6E776F6E6B6E75;
    }

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v41[0] = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_100002320(v28, v30, v41);
      _os_log_impl(&_mh_execute_header, v31, v32, "Uninstalling ALL identities failed: %s", v33, 0xCu);
      sub_100002A00(v34);
    }
  }

  else
  {
  }

  v35 = OBJC_IVAR____TtC7CoreP2P13AppleKeychain_pairedPeers;
  swift_beginAccess();
  v36 = *(v1 + v35);
  *(v1 + v35) = &_swiftEmptyDictionarySingleton;

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&_mh_execute_header, v37, v38, "Uninstalling ALL identities completed", v39, 2u);
  }
}

void *AppleKeychain.findPairedPeerAssociations()()
{
  v0 = AppleKeychain.loadPairedPeerAssociationsWithIDs()();
  v1 = v0;
  v2 = *(v0 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1000DD53C(*(v0 + 16), 0);
  v4 = *(type metadata accessor for NANPairedDeviceSharedAssociation(0) - 8);
  v5 = sub_1000DD9E8(&v7, v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v2, v1);
  sub_1000E290C();
  if (v5 != v2)
  {
    __break(1u);
LABEL_4:

    return _swiftEmptyArrayStorage;
  }

  return v3;
}

uint64_t AppleKeychain.loadPairedPeerAssociationsWithIDs()()
{
  v1 = *(*(sub_10005DC58(&qword_10058FEF8, &unk_1004939C0) - 8) + 64);
  __chkstk_darwin();
  v40 = &v39 - v2;
  v3 = sub_10005DC58(&qword_10058BAC0, &qword_100480E08);
  v45 = *(v3 - 8);
  v46 = v3;
  v4 = *(v45 + 64);
  __chkstk_darwin();
  v44 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v43 = &v39 - v6;
  sub_10005DC58(&qword_10058FED0, &qword_100493980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004817D0;
  v42 = kSecClass;
  *(inited + 32) = kSecClass;
  v48 = inited + 32;
  isa = kSecClassGenericPassword;
  type metadata accessor for CFString(0);
  *(inited + 40) = kSecClassGenericPassword;
  *(inited + 64) = v8;
  *(inited + 72) = kSecAttrService;
  v39 = v0;
  v9 = (v0 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_nanPairingService);
  v10 = *(v0 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_nanPairingService + 8);
  *(inited + 80) = *v9;
  *(inited + 88) = v10;
  *(inited + 104) = &type metadata for String;
  *(inited + 112) = kSecMatchLimit;
  *(inited + 120) = kSecMatchLimitAll;
  *(inited + 144) = v8;
  *(inited + 152) = kSecReturnData;
  v47 = v8;
  *(inited + 160) = 1;
  *(inited + 184) = &type metadata for Bool;
  *(inited + 192) = kSecReturnAttributes;
  *(inited + 200) = 1;
  *(inited + 224) = &type metadata for Bool;
  *(inited + 232) = kSecAttrAccessible;
  *(inited + 264) = v8;
  *(inited + 240) = kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
  v11 = v42;
  v12 = isa;
  v13 = kSecAttrService;

  v14 = kSecMatchLimit;
  v15 = kSecMatchLimitAll;
  v16 = kSecReturnData;
  v17 = kSecReturnAttributes;
  v18 = kSecAttrAccessible;
  v19 = kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
  sub_1000821A0(inited);
  swift_setDeallocating();
  sub_10005DC58(&qword_10058BAE0, &qword_100480E28);
  swift_arrayDestroy();
  sub_1001D469C(&qword_10058B320, type metadata accessor for CFString);
  v20.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v51 = 0;
  if (SecItemCopyMatching(v20.super.isa, &v51) || (v23 = v40, !v51) || (v50[0] = v51, swift_unknownObjectRetain(), sub_10005DC58(&qword_10058F4D8, &unk_100492880), (swift_dynamicCast() & 1) == 0))
  {
    v21 = sub_1000822C8(_swiftEmptyArrayStorage);

LABEL_3:
    swift_unknownObjectRelease();
    return v21;
  }

  isa = v20.super.isa;
  v24 = v49;
  v25 = *(v49 + 16);
  if (v25)
  {
    v26 = 0;
    v27 = 0;
    v48 = v49 + 32;
    v28 = v46;
    v29 = (v45 + 48);
    v30 = _swiftEmptyArrayStorage;
    v31 = v44;
    v42 = (v45 + 48);
    do
    {
      if (v26 >= *(v24 + 16))
      {
        __break(1u);
      }

      v50[0] = *(v48 + 8 * v26);
      sub_1001D0184(v50, v23);
      if ((v29->isa)(v23, 1, v28) == 1)
      {
        sub_100016290(v23, &qword_10058FEF8, &unk_1004939C0);
      }

      else
      {
        v47 = v27;
        v32 = v43;
        sub_10001CEA8(v23, v43, &qword_10058BAC0, &qword_100480E08);
        sub_10001CEA8(v32, v31, &qword_10058BAC0, &qword_100480E08);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_100116434(0, v30[2] + 1, 1, v30);
        }

        v34 = v30[2];
        v33 = v30[3];
        if (v34 >= v33 >> 1)
        {
          v30 = sub_100116434(v33 > 1, v34 + 1, 1, v30);
        }

        v30[2] = v34 + 1;
        v31 = v44;
        sub_10001CEA8(v44, v30 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v34, &qword_10058BAC0, &qword_100480E08);
        v28 = v46;
        v27 = v47;
        v29 = v42;
      }

      ++v26;
    }

    while (v25 != v26);
  }

  else
  {
    v27 = 0;
    v30 = _swiftEmptyArrayStorage;
  }

  if (v30[2])
  {
    sub_10005DC58(&qword_10058BAC8, &qword_100480E10);
    v35 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v35 = &_swiftEmptyDictionarySingleton;
  }

  v50[0] = v35;
  sub_1001D59D0(v30, 1, v50);
  if (!v27)
  {

    v21 = v50[0];
    v36 = OBJC_IVAR____TtC7CoreP2P13AppleKeychain_pairedPeers;
    v37 = v39;
    swift_beginAccess();
    v38 = *(v37 + v36);
    *(v37 + v36) = v21;

    goto LABEL_3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001D0184@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v5 = *(*(sub_10005DC58(&qword_10058BAD0, &qword_100480E18) - 8) + 64);
  __chkstk_darwin();
  v7 = &v41 - v6;
  v8 = type metadata accessor for NANPairedDeviceSharedAssociation(0);
  v48 = *(v8 - 8);
  v9 = *(v48 + 64);
  __chkstk_darwin();
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(sub_10005DC58(&qword_10058F4D0, &qword_100491AB0) - 8) + 64);
  __chkstk_darwin();
  v14 = &v41 - v13;
  v15 = type metadata accessor for UUID();
  v52 = *(v15 - 8);
  v16 = *(v52 + 64);
  __chkstk_darwin();
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  if (!*(v19 + 16))
  {
    goto LABEL_11;
  }

  v20 = sub_10007CFD0(kSecValueData);
  if ((v21 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_100002B30(*(v19 + 56) + 32 * v20, v49);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  v22 = v50;
  v47 = v51;
  if (!*(v19 + 16) || (v46 = v50, v23 = sub_10007CFD0(kSecAttrAccount), v22 = v46, (v24 & 1) == 0))
  {
    v26 = v22;
LABEL_10:
    sub_1000124C8(v26, v47);
    goto LABEL_11;
  }

  sub_100002B30(*(v19 + 56) + 32 * v23, v49);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v26 = v46;
    goto LABEL_10;
  }

  UUID.init(uuidString:)();

  v25 = v52;
  if ((*(v52 + 48))(v14, 1, v15) == 1)
  {
    sub_1000124C8(v46, v47);
    sub_100016290(v14, &qword_10058F4D0, &qword_100491AB0);
LABEL_11:
    v27 = sub_10005DC58(&qword_10058BAC0, &qword_100480E08);
    return (*(*(v27 - 8) + 56))(a2, 1, 1, v27);
  }

  v42 = *(v25 + 32);
  v43 = v25 + 32;
  v42(v18, v14, v15);
  v45 = sub_100033AA8(_swiftEmptyArrayStorage);
  v44 = type metadata accessor for BinaryDecoder();
  v29 = swift_allocObject();
  v30 = 0;
  v29[5] = &_swiftEmptyDictionarySingleton;
  v32 = v46;
  v31 = v47;
  v29[2] = v46;
  v29[3] = v31;
  v33 = v31 >> 62;
  if (v33 > 1)
  {
    if (v33 == 2)
    {
      v30 = *(v32 + 16);
    }
  }

  else if (v33)
  {
    v30 = v32;
  }

  v29[4] = v30;
  swift_beginAccess();
  v34 = v44;
  v29[5] = v45;
  v49[3] = v34;
  v49[4] = sub_1001D469C(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
  v49[0] = v29;
  v35 = v32;
  v36 = v47;
  sub_10000AB0C(v35, v47);

  NANPairedDeviceSharedAssociation.init(from:)(v49, v7);
  if (v2)
  {

    sub_1000124C8(v46, v36);
    (*(v52 + 8))(v18, v15);
    (*(v48 + 56))(v7, 1, 1, v8);
    sub_100016290(v7, &qword_10058BAD0, &qword_100480E18);
    v37 = sub_10005DC58(&qword_10058BAC0, &qword_100480E08);
    return (*(*(v37 - 8) + 56))(a2, 1, 1, v37);
  }

  else
  {

    sub_1000124C8(v46, v36);
    (*(v48 + 56))(v7, 0, 1, v8);
    sub_1001D6B5C(v7, v11, type metadata accessor for NANPairedDeviceSharedAssociation);
    v38 = sub_10005DC58(&qword_10058BAC0, &qword_100480E08);
    v39 = a2;
    v40 = *(v38 + 48);
    v42(v39, v18, v15);
    sub_1001D6B5C(v11, &v39[v40], type metadata accessor for NANPairedDeviceSharedAssociation);
    return (*(*(v38 - 8) + 56))(v39, 0, 1, v38);
  }
}

uint64_t AppleKeychain.incrementUsageCount(for:)(uint64_t a1)
{
  v2 = *(*(sub_10005DC58(&unk_1005985B0, &unk_1004939A0) - 8) + 64);
  __chkstk_darwin();
  v4 = &v16[-v3];
  v5 = sub_10005DC58(&unk_100597500, &unk_1004939B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v16[-v8];
  v10 = AppleKeychain.loadPairedPeerAssociationsWithIDs()();
  v17 = a1;
  sub_10019BC64(sub_1001AC5B0, v16, v10, v4);

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100016290(v4, &unk_1005985B0, &unk_1004939A0);
    return 0;
  }

  sub_10001CEA8(v4, v9, &unk_100597500, &unk_1004939B0);
  v12 = &v9[*(v5 + 48)];
  AppleKeychain.uninstallPairedPeer(with:)(v12);
  result = type metadata accessor for NANPairedDeviceSharedAssociation(0);
  v14 = *(result + 32);
  v15 = *(v12 + v14);
  v11 = v15 + 1;
  if (v15 != -1)
  {
    *(v12 + v14) = v11;
    AppleKeychain.installPairedPeer(with:using:)(v12, v9);
    sub_100016290(v9, &unk_100597500, &unk_1004939B0);
    return v11;
  }

  __break(1u);
  return result;
}

uint64_t AppleKeychain.decrementUsageCount(for:)(uint64_t a1)
{
  v2 = *(*(sub_10005DC58(&unk_1005985B0, &unk_1004939A0) - 8) + 64);
  __chkstk_darwin();
  v4 = &v16[-v3];
  v5 = sub_10005DC58(&unk_100597500, &unk_1004939B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v16[-v8];
  v10 = AppleKeychain.loadPairedPeerAssociationsWithIDs()();
  v17 = a1;
  sub_10019BC64(sub_1001AC51C, v16, v10, v4);

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100016290(v4, &unk_1005985B0, &unk_1004939A0);
    return 0;
  }

  sub_10001CEA8(v4, v9, &unk_100597500, &unk_1004939B0);
  v12 = &v9[*(v5 + 48)];
  AppleKeychain.uninstallPairedPeer(with:)(v12);
  result = type metadata accessor for NANPairedDeviceSharedAssociation(0);
  v14 = *(result + 32);
  v15 = *(v12 + v14);
  v11 = v15 - 1;
  if (v15)
  {
    *(v12 + v14) = v11;
    if (v15 != 1)
    {
      AppleKeychain.installPairedPeer(with:using:)(v12, v9);
    }

    sub_100016290(v9, &unk_100597500, &unk_1004939B0);
    return v11;
  }

  __break(1u);
  return result;
}

uint64_t AppleKeychain.deinit()
{
  v1 = OBJC_IVAR____TtC7CoreP2P13AppleKeychain_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_keychainAccessGroup + 8);

  v4 = *(v0 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_keychainView + 8);

  v5 = *(v0 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_tokens);
  v6 = *(v0 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_tokens + 8);

  v7 = *(v0 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_keychainMonitors);

  v8 = *(v0 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_nanPairingService + 8);

  v9 = *(v0 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_identityKeyAccount + 8);

  v10 = *(v0 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_pairedPeers);

  return v0;
}

uint64_t AppleKeychain.__deallocating_deinit()
{
  AppleKeychain.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1001D0EC8(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = sub_10007F974(a1);
  swift_endAccess();
  sub_100010520(v4);
  sub_1001C5540();
  swift_beginAccess();
  sub_1001D4D20(a1);
  return swift_endAccess();
}

uint64_t sub_1001D1034(void *a1)
{
  v3 = v1;
  v5 = sub_10005DC58(&qword_100590810, &qword_100493E30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v12[-v8];
  v10 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_1001D77A4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  type metadata accessor for LongTermPairingKeys.PrivateIdentity(0);
  sub_1001D469C(&qword_100590818, type metadata accessor for LongTermPairingKeys.PrivateIdentity);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v13 = *(v3 + *(type metadata accessor for StorageEntry(0) + 20));
    v12[15] = 1;
    sub_10005DC58(&qword_1005907F8, &qword_100493E28);
    sub_1001D77F8(&qword_100590820, &qword_100590828);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1001D1250@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = *(*(sub_10005DC58(&qword_10058FEC8, &qword_100493978) - 8) + 64);
  __chkstk_darwin();
  v23 = &v19 - v5;
  v6 = sub_10005DC58(&qword_1005907E0, &qword_100493E20);
  v21 = *(v6 - 8);
  v22 = v6;
  v7 = *(v21 + 64);
  __chkstk_darwin();
  v9 = &v19 - v8;
  v10 = type metadata accessor for StorageEntry(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin();
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for LongTermPairingKeys.PrivateIdentity(0);
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_1001D77A4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100002A00(a1);
    return sub_100016290(v13, &qword_10058FEC8, &qword_100493978);
  }

  else
  {
    v16 = v21;
    v26 = 0;
    sub_1001D469C(&qword_1005907F0, type metadata accessor for LongTermPairingKeys.PrivateIdentity);
    v17 = v22;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_1000B1B78(v23, v13, &qword_10058FEC8, &qword_100493978);
    sub_10005DC58(&qword_1005907F8, &qword_100493E28);
    v25 = 1;
    sub_1001D77F8(&qword_100590800, &qword_100590808);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v16 + 8))(v9, v17);
    *&v13[*(v10 + 20)] = v24;
    sub_1001D45C0(v13, v20, type metadata accessor for StorageEntry);
    sub_100002A00(a1);
    return sub_1001D46E4(v13, type metadata accessor for StorageEntry);
  }
}

uint64_t sub_1001D15F8()
{
  if (*v0)
  {
    result = 0x7365756C6176;
  }

  else
  {
    result = 7955819;
  }

  *v0;
  return result;
}

uint64_t sub_1001D1628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7365756C6176 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1001D1700(uint64_t a1)
{
  v2 = sub_1001D77A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D173C(uint64_t a1)
{
  v2 = sub_1001D77A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001D17A8()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = *(v0 + 40);
  result = swift_bridgeObjectRetain_n();
  for (i = 0; v4; result = )
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v11 = *(v1 + 56) + ((v9 << 10) | (16 * v10));
    v13 = *v11;
    v12 = *(v11 + 8);

    v13(v14);
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v5)
    {
    }

    v4 = *(v1 + 64 + 8 * v9);
    ++i;
    if (v4)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1001D18C0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1001D1914;
}

uint64_t sub_1001D1914(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_1001D17A8();
  }

  return result;
}

char *InMemoryKeychain.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 2) = &_swiftEmptyDictionarySingleton;
  *(v3 + 3) = &_swiftEmptySetSingleton;
  *(v3 + 4) = 0;
  *(v3 + 5) = &_swiftEmptyDictionarySingleton;
  v4 = OBJC_IVAR____TtC7CoreP2P16InMemoryKeychain_myIdentityKey;
  v5 = type metadata accessor for NANIdentityKey(0);
  (*(*(v5 - 8) + 56))(&v3[v4], 1, 1, v5);
  *&v3[OBJC_IVAR____TtC7CoreP2P16InMemoryKeychain_pairedPeers] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC7CoreP2P16InMemoryKeychain_pairedPeersWithIDs] = &_swiftEmptyDictionarySingleton;
  return v3;
}

char *InMemoryKeychain.init()()
{
  *(v0 + 2) = &_swiftEmptyDictionarySingleton;
  *(v0 + 3) = &_swiftEmptySetSingleton;
  *(v0 + 4) = 0;
  *(v0 + 5) = &_swiftEmptyDictionarySingleton;
  v1 = OBJC_IVAR____TtC7CoreP2P16InMemoryKeychain_myIdentityKey;
  v2 = type metadata accessor for NANIdentityKey(0);
  (*(*(v2 - 8) + 56))(&v0[v1], 1, 1, v2);
  *&v0[OBJC_IVAR____TtC7CoreP2P16InMemoryKeychain_pairedPeers] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC7CoreP2P16InMemoryKeychain_pairedPeersWithIDs] = &_swiftEmptyDictionarySingleton;
  return v0;
}

uint64_t InMemoryKeychain.monitor(using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = sub_1001B93E4();
  v8 = v7;
  result = swift_endAccess();
  if (v8)
  {
    __break(1u);
  }

  else
  {
    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    *(v10 + 24) = a2;
    swift_beginAccess();

    v11 = *(v3 + 40);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v3 + 40);
    *(v3 + 40) = 0x8000000000000000;
    sub_100080850(sub_1001D7A78, v10, v6, isUniquelyReferenced_nonNull_native);
    *(v3 + 40) = v13;
    swift_endAccess();
    return v6;
  }

  return result;
}

Swift::Void __swiftcall InMemoryKeychain.stopMonitoring(_:)(Swift::UInt64 a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 40);
  v5 = sub_100085268(a1);
  if (v6)
  {
    v7 = v5;
    v8 = *(v2 + 40);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v2 + 40);
    *(v2 + 40) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10019711C();
    }

    v11 = *(*(v10 + 56) + 16 * v7 + 8);

    sub_1001936F8(v7, v10);
    *(v2 + 40) = v10;
  }

  swift_endAccess();
}

void *InMemoryKeychain.findIdentities(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for StorageEntry(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v20 - v12;
  swift_beginAccess();
  v14 = *(v3 + 16);
  if (*(v14 + 16))
  {
    v15 = *(v3 + 16);

    v16 = sub_10007D1A4(a2, a3);
    if (v17)
    {
      sub_1001D45C0(*(v14 + 56) + *(v8 + 72) * v16, v11, type metadata accessor for StorageEntry);

      sub_1001D6B5C(v11, v13, type metadata accessor for StorageEntry);
      sub_10001CEA8(v13, a1, &qword_10058FEC8, &qword_100493978);
      return *&v13[*(v7 + 20)];
    }
  }

  v19 = type metadata accessor for LongTermPairingKeys.PrivateIdentity(0);
  (*(*(v19 - 8) + 56))(a1, 1, 1, v19);
  return _swiftEmptyArrayStorage;
}

uint64_t InMemoryKeychain.save(identity:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for StorageEntry(0);
  v9 = *(v8 - 8);
  v30 = v8;
  v31 = v9;
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*(sub_10005DC58(&qword_10058FEC8, &qword_100493978) - 8) + 64);
  __chkstk_darwin();
  v15 = &v30 - v14;
  sub_1001D45C0(a1, &v30 - v14, type metadata accessor for LongTermPairingKeys.PrivateIdentity);
  v16 = type metadata accessor for LongTermPairingKeys.PrivateIdentity(0);
  v17 = *(*(v16 - 8) + 56);
  v17(v15, 0, 1, v16);
  swift_beginAccess();
  v18 = *(v4 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *(v4 + 16);
  v33 = a3;
  v34 = v20;
  *(v4 + 16) = 0x8000000000000000;
  v32 = a2;
  v22 = sub_10007D1A4(a2, a3);
  v23 = v20[2];
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    __break(1u);
    goto LABEL_10;
  }

  LOBYTE(a3) = v21;
  if (v20[3] >= v25)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_6;
    }

LABEL_10:
    sub_100196B98();
    v20 = v34;
    goto LABEL_6;
  }

  sub_10018FA54(v25, isUniquelyReferenced_nonNull_native);
  v20 = v34;
  v26 = sub_10007D1A4(v32, v33);
  if ((a3 & 1) != (v27 & 1))
  {
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v22 = v26;
LABEL_6:
  v28 = v31;
  *(v4 + 16) = v20;
  if ((a3 & 1) == 0)
  {
    v17(v12, 1, 1, v16);
    sub_100016290(v12, &qword_10058FEC8, &qword_100493978);
    v17(v12, 1, 1, v16);
    *&v12[*(v30 + 20)] = _swiftEmptyArrayStorage;
    sub_1001A99F0(v22, v32, v33, v12, v20);
  }

  sub_1000B1B78(v15, v20[7] + *(v28 + 72) * v22, &qword_10058FEC8, &qword_100493978);
  swift_endAccess();
  sub_1001D17A8();
  return 1;
}

Swift::Void __swiftcall InMemoryKeychain.removeAllIdentities(for:)(CoreP2P::NANServiceName a1)
{
  object = a1.string._object;
  countAndFlagsBits = a1.string._countAndFlagsBits;
  v3 = *(*(sub_10005DC58(&unk_10058F740, &unk_100492AB0) - 8) + 64);
  __chkstk_darwin();
  v5 = &v6 - v4;
  swift_beginAccess();
  sub_10007FC88(countAndFlagsBits, object, v5);
  sub_100016290(v5, &unk_10058F740, &unk_100492AB0);
  swift_endAccess();
  sub_1001D17A8();
}

uint64_t InMemoryKeychain.remove(identity:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v66 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = v7[8];
  __chkstk_darwin();
  v55 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_10005DC58(&qword_10058FF00, &qword_1004939D0);
  v10 = *(*(v65 - 8) + 64);
  __chkstk_darwin();
  v12 = &v53 - v11;
  v13 = type metadata accessor for LongTermPairingKeys.PrivateIdentity(0);
  v63 = *(v13 - 8);
  v64 = v13;
  v14 = *(v63 + 64);
  __chkstk_darwin();
  v54 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(*(sub_10005DC58(&unk_10058F740, &unk_100492AB0) - 8) + 64);
  __chkstk_darwin();
  v18 = &v53 - v17;
  v19 = *(*(sub_10005DC58(&qword_10058F4D0, &qword_100491AB0) - 8) + 64);
  __chkstk_darwin();
  v62 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v22 = &v53 - v21;
  __chkstk_darwin();
  v24 = &v53 - v23;
  swift_beginAccess();
  v59 = v3;
  v60 = a2;
  v25 = *(v3 + 16);
  v26 = *(v25 + 16);
  v61 = a3;
  if (!v26)
  {
    goto LABEL_5;
  }

  v27 = sub_10007D1A4(a2, a3);
  if ((v28 & 1) == 0)
  {

LABEL_5:
    v35 = type metadata accessor for StorageEntry(0);
    (*(*(v35 - 8) + 56))(v18, 1, 1, v35);
    goto LABEL_6;
  }

  v29 = v27;
  v58 = v7;
  v30 = *(v25 + 56);
  v31 = type metadata accessor for StorageEntry(0);
  v57 = v24;
  v32 = v31;
  v33 = *(v31 - 8);
  v34 = v30 + *(v33 + 72) * v29;
  v7 = v58;
  sub_1001D45C0(v34, v18, type metadata accessor for StorageEntry);
  v35 = v32;
  v24 = v57;

  (*(v33 + 56))(v18, 0, 1, v35);
LABEL_6:
  type metadata accessor for StorageEntry(0);
  v36 = *(v35 - 8);
  v57 = *(v36 + 48);
  v58 = v35;
  v56 = v36 + 48;
  if ((v57)(v18, 1, v35) || (*(v63 + 48))(v18, 1, v64))
  {
    sub_100016290(v18, &unk_10058F740, &unk_100492AB0);
    v37 = v7[7];
    v37(v24, 1, 1, v6);
    v38 = v7[2];
  }

  else
  {
    v52 = v54;
    sub_1001D45C0(v18, v54, type metadata accessor for LongTermPairingKeys.PrivateIdentity);
    sub_100016290(v18, &unk_10058F740, &unk_100492AB0);
    v38 = v7[2];
    v38(v24, v52, v6);
    sub_1001D46E4(v52, type metadata accessor for LongTermPairingKeys.PrivateIdentity);
    v37 = v7[7];
    v37(v24, 0, 1, v6);
  }

  v38(v22, v66, v6);
  v37(v22, 0, 1, v6);
  v39 = *(v65 + 48);
  sub_100012400(v24, v12, &qword_10058F4D0, &qword_100491AB0);
  sub_100012400(v22, &v12[v39], &qword_10058F4D0, &qword_100491AB0);
  v40 = v7;
  v41 = v7[6];
  if (v41(v12, 1, v6) != 1)
  {
    v42 = v62;
    sub_100012400(v12, v62, &qword_10058F4D0, &qword_100491AB0);
    if (v41(&v12[v39], 1, v6) != 1)
    {
      v44 = v55;
      (v40[4])(v55, &v12[v39], v6);
      sub_1001D469C(&qword_100597540, &type metadata accessor for UUID);
      v45 = v42;
      v46 = dispatch thunk of static Equatable.== infix(_:_:)();
      v47 = v40[1];
      v47(v44, v6);
      sub_100016290(v22, &qword_10058F4D0, &qword_100491AB0);
      sub_100016290(v24, &qword_10058F4D0, &qword_100491AB0);
      v47(v45, v6);
      result = sub_100016290(v12, &qword_10058F4D0, &qword_100491AB0);
      if ((v46 & 1) == 0)
      {
        return result;
      }

      goto LABEL_16;
    }

    sub_100016290(v22, &qword_10058F4D0, &qword_100491AB0);
    sub_100016290(v24, &qword_10058F4D0, &qword_100491AB0);
    (v40[1])(v42, v6);
    return sub_100016290(v12, &qword_10058FF00, &qword_1004939D0);
  }

  sub_100016290(v22, &qword_10058F4D0, &qword_100491AB0);
  sub_100016290(v24, &qword_10058F4D0, &qword_100491AB0);
  if (v41(&v12[v39], 1, v6) != 1)
  {
    return sub_100016290(v12, &qword_10058FF00, &qword_1004939D0);
  }

  sub_100016290(v12, &qword_10058F4D0, &qword_100491AB0);
LABEL_16:
  v48 = sub_1001D18C0(v68);
  v49 = sub_1001A9658(v67, v60, v61);
  v51 = v50;
  if (!(v57)(v50, 1, v58))
  {
    sub_100016290(v51, &qword_10058FEC8, &qword_100493978);
    (*(v63 + 56))(v51, 1, 1, v64);
  }

  (v49)(v67, 0);
  return v48(v68, 0);
}

uint64_t InMemoryKeychain.addIdentityKey(_:)(uint64_t a1)
{
  v3 = *(*(sub_10005DC58(&unk_100595C50, &unk_1004AFD20) - 8) + 64);
  __chkstk_darwin();
  v5 = &v9 - v4;
  sub_1001D45C0(a1, &v9 - v4, type metadata accessor for NANIdentityKey);
  v6 = type metadata accessor for NANIdentityKey(0);
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  v7 = OBJC_IVAR____TtC7CoreP2P16InMemoryKeychain_myIdentityKey;
  swift_beginAccess();
  sub_1000B1B78(v5, v1 + v7, &unk_100595C50, &unk_1004AFD20);
  return swift_endAccess();
}

uint64_t InMemoryKeychain.findIdentityKey()@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7CoreP2P16InMemoryKeychain_myIdentityKey;
  swift_beginAccess();
  return sub_100012400(v1 + v3, a1, &unk_100595C50, &unk_1004AFD20);
}

Swift::Void __swiftcall InMemoryKeychain.deleteIdentityKey()()
{
  v1 = *(*(sub_10005DC58(&unk_100595C50, &unk_1004AFD20) - 8) + 64);
  __chkstk_darwin();
  v3 = &v6 - v2;
  v4 = type metadata accessor for NANIdentityKey(0);
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtC7CoreP2P16InMemoryKeychain_myIdentityKey;
  swift_beginAccess();
  sub_1000B1B78(v3, v0 + v5, &unk_100595C50, &unk_1004AFD20);
  swift_endAccess();
}

uint64_t InMemoryKeychain.installPairedPeer(with:)(uint64_t a1)
{
  v3 = *(*(sub_10005DC58(&qword_10058BAD0, &qword_100480E18) - 8) + 64);
  __chkstk_darwin();
  v5 = &v23 - v4;
  v6 = *(*(type metadata accessor for UUID() - 8) + 64);
  __chkstk_darwin();
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NANPairedDeviceSharedAssociation(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC7CoreP2P16InMemoryKeychain_pairedPeers;
  swift_beginAccess();
  v15 = *(v1 + v14);

  sub_10019891C(a1, v15);
  v17 = v16;

  if (v17)
  {
    sub_1001D45C0(a1, v13, type metadata accessor for NANPairedDeviceSharedAssociation);
    swift_beginAccess();
    v19 = *(v1 + v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + v14) = v19;
    v24 = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v19 = sub_100116ACC(0, v19[2] + 1, 1, v19);
      *(v1 + v14) = v19;
    }

    v22 = v19[2];
    v21 = v19[3];
    if (v22 >= v21 >> 1)
    {
      v19 = sub_100116ACC(v21 > 1, v22 + 1, 1, v19);
    }

    v19[2] = v22 + 1;
    sub_1001D6B5C(v13, v19 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v22, type metadata accessor for NANPairedDeviceSharedAssociation);
    *(v1 + v14) = v19;
    swift_endAccess();
    UUID.init()();
    sub_1001D45C0(a1, v5, type metadata accessor for NANPairedDeviceSharedAssociation);
    (*(v10 + 56))(v5, 0, 1, v24);
    swift_beginAccess();
    sub_100072D18(v5, v8);
    return swift_endAccess();
  }

  return result;
}

uint64_t InMemoryKeychain.uninstallPairedPeer(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(*(sub_10005DC58(&qword_10058BAD0, &qword_100480E18) - 8) + 64);
  __chkstk_darwin();
  v34 = &v32 - v5;
  v6 = *(*(sub_10005DC58(&unk_1005985B0, &unk_1004939A0) - 8) + 64);
  __chkstk_darwin();
  v8 = &v32 - v7;
  v9 = *(*(sub_10005DC58(&qword_10058F4D0, &qword_100491AB0) - 8) + 64);
  __chkstk_darwin();
  v11 = &v32 - v10;
  v12 = type metadata accessor for UUID();
  v35 = *(v12 - 8);
  v13 = *(v35 + 64);
  __chkstk_darwin();
  v33 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(*(type metadata accessor for NANPairedDeviceSharedAssociation(0) - 8) + 64);
  __chkstk_darwin();
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC7CoreP2P16InMemoryKeychain_pairedPeers;
  swift_beginAccess();
  v19 = *(v1 + v18);

  v20 = sub_10019891C(a1, v19);
  v22 = v21;

  if ((v22 & 1) == 0)
  {
    swift_beginAccess();
    sub_100199624(v20, v17);
    sub_1001D46E4(v17, type metadata accessor for NANPairedDeviceSharedAssociation);
    swift_endAccess();
    v24 = OBJC_IVAR____TtC7CoreP2P16InMemoryKeychain_pairedPeersWithIDs;
    swift_beginAccess();
    v25 = *(v2 + v24);
    __chkstk_darwin();
    *(&v32 - 2) = a1;

    sub_10019BC64(sub_1001D7A5C, (&v32 - 4), v25, v8);

    v26 = sub_10005DC58(&unk_100597500, &unk_1004939B0);
    if ((*(*(v26 - 8) + 48))(v8, 1, v26) == 1)
    {
      sub_100016290(v8, &unk_1005985B0, &unk_1004939A0);
      (*(v35 + 56))(v11, 1, 1, v12);
      return sub_100016290(v11, &qword_10058F4D0, &qword_100491AB0);
    }

    v27 = *(v26 + 48);
    v28 = v35;
    v29 = *(v35 + 32);
    v29(v11, v8, v12);
    (*(v28 + 56))(v11, 0, 1, v12);
    sub_1001D46E4(&v8[v27], type metadata accessor for NANPairedDeviceSharedAssociation);
    if ((*(v28 + 48))(v11, 1, v12) == 1)
    {
      return sub_100016290(v11, &qword_10058F4D0, &qword_100491AB0);
    }

    v30 = v33;
    v29(v33, v11, v12);
    swift_beginAccess();
    v31 = v34;
    sub_1001B91E0(v30, v34);
    sub_100016290(v31, &qword_10058BAD0, &qword_100480E18);
    swift_endAccess();
    return (*(v28 + 8))(v30, v12);
  }

  return result;
}

Swift::Void __swiftcall InMemoryKeychain.uninstallAllPairedPeers()()
{
  v1 = OBJC_IVAR____TtC7CoreP2P16InMemoryKeychain_pairedPeers;
  swift_beginAccess();
  v2 = *(v0 + v1);
  *(v0 + v1) = _swiftEmptyArrayStorage;

  v3 = OBJC_IVAR____TtC7CoreP2P16InMemoryKeychain_pairedPeersWithIDs;
  swift_beginAccess();
  v4 = *(v0 + v3);
  *(v0 + v3) = &_swiftEmptyDictionarySingleton;
}

Swift::Void __swiftcall InMemoryKeychain.uninstallAllIdentities()()
{
  v1 = *(*(sub_10005DC58(&unk_100595C50, &unk_1004AFD20) - 8) + 64);
  __chkstk_darwin();
  v3 = &v10 - v2;
  v4 = OBJC_IVAR____TtC7CoreP2P16InMemoryKeychain_pairedPeers;
  swift_beginAccess();
  v5 = *(v0 + v4);
  *(v0 + v4) = _swiftEmptyArrayStorage;

  v6 = OBJC_IVAR____TtC7CoreP2P16InMemoryKeychain_pairedPeersWithIDs;
  swift_beginAccess();
  v7 = *(v0 + v6);
  *(v0 + v6) = &_swiftEmptyDictionarySingleton;

  v8 = type metadata accessor for NANIdentityKey(0);
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  v9 = OBJC_IVAR____TtC7CoreP2P16InMemoryKeychain_myIdentityKey;
  swift_beginAccess();
  sub_1000B1B78(v3, v0 + v9, &unk_100595C50, &unk_1004AFD20);
  swift_endAccess();
}

uint64_t sub_1001D36D8(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t InMemoryKeychain.incrementUsageCount(for:)(uint64_t a1)
{
  v3 = *(*(sub_10005DC58(&unk_1005985B0, &unk_1004939A0) - 8) + 64);
  __chkstk_darwin();
  v5 = &v22[-v4];
  v6 = *(*(sub_10005DC58(&qword_10058BAD0, &qword_100480E18) - 8) + 64);
  __chkstk_darwin();
  v8 = &v22[-v7];
  v9 = type metadata accessor for NANPairedDeviceSharedAssociation(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v22[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = OBJC_IVAR____TtC7CoreP2P16InMemoryKeychain_pairedPeersWithIDs;
  swift_beginAccess();
  v15 = *(v1 + v14);
  v23 = a1;

  sub_10019BC64(sub_1001AC5B0, v22, v15, v5);

  v16 = sub_10005DC58(&unk_100597500, &unk_1004939B0);
  if ((*(*(v16 - 8) + 48))(v5, 1, v16) == 1)
  {
    sub_100016290(v5, &unk_1005985B0, &unk_1004939A0);
    (*(v10 + 56))(v8, 1, 1, v9);
LABEL_4:
    sub_100016290(v8, &qword_10058BAD0, &qword_100480E18);
    return 0;
  }

  sub_1001D6B5C(&v5[*(v16 + 48)], v8, type metadata accessor for NANPairedDeviceSharedAssociation);
  (*(v10 + 56))(v8, 0, 1, v9);
  v17 = type metadata accessor for UUID();
  (*(*(v17 - 8) + 8))(v5, v17);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    goto LABEL_4;
  }

  sub_1001D6B5C(v8, v13, type metadata accessor for NANPairedDeviceSharedAssociation);
  result = InMemoryKeychain.uninstallPairedPeer(with:)(v13);
  v19 = *(v9 + 32);
  v20 = *&v13[v19];
  v21 = v20 + 1;
  if (v20 == -1)
  {
    __break(1u);
  }

  else
  {
    *&v13[v19] = v21;
    InMemoryKeychain.installPairedPeer(with:)(v13);
    sub_1001D46E4(v13, type metadata accessor for NANPairedDeviceSharedAssociation);
    return v21;
  }

  return result;
}

uint64_t InMemoryKeychain.decrementUsageCount(for:)(uint64_t a1)
{
  v3 = *(*(sub_10005DC58(&unk_1005985B0, &unk_1004939A0) - 8) + 64);
  __chkstk_darwin();
  v5 = &v24[-v4];
  v6 = *(*(sub_10005DC58(&qword_10058BAD0, &qword_100480E18) - 8) + 64);
  __chkstk_darwin();
  v8 = &v24[-v7];
  v9 = type metadata accessor for NANPairedDeviceSharedAssociation(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v24[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = OBJC_IVAR____TtC7CoreP2P16InMemoryKeychain_pairedPeersWithIDs;
  swift_beginAccess();
  v15 = *(v1 + v14);
  v25 = a1;

  sub_10019BC64(sub_1001AC5B0, v24, v15, v5);

  v16 = sub_10005DC58(&unk_100597500, &unk_1004939B0);
  if ((*(*(v16 - 8) + 48))(v5, 1, v16) == 1)
  {
    sub_100016290(v5, &unk_1005985B0, &unk_1004939A0);
    (*(v10 + 56))(v8, 1, 1, v9);
LABEL_4:
    sub_100016290(v8, &qword_10058BAD0, &qword_100480E18);
    return 0;
  }

  sub_1001D6B5C(&v5[*(v16 + 48)], v8, type metadata accessor for NANPairedDeviceSharedAssociation);
  (*(v10 + 56))(v8, 0, 1, v9);
  v17 = type metadata accessor for UUID();
  (*(*(v17 - 8) + 8))(v5, v17);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    goto LABEL_4;
  }

  sub_1001D6B5C(v8, v13, type metadata accessor for NANPairedDeviceSharedAssociation);
  result = InMemoryKeychain.uninstallPairedPeer(with:)(v13);
  v19 = *(v9 + 32);
  v20 = *&v13[v19];
  v21 = v20 != 0;
  v22 = v20 - 1;
  if (v21)
  {
    *&v13[v19] = v22;
    v23 = v22;
    if (v22)
    {
      InMemoryKeychain.installPairedPeer(with:)(v13);
    }

    sub_1001D46E4(v13, type metadata accessor for NANPairedDeviceSharedAssociation);
    return v23;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *InMemoryKeychain.deinit()
{
  v1 = v0[2];

  v2 = v0[3];
  v3 = v0[4];

  v4 = v0[5];

  sub_100016290(v0 + OBJC_IVAR____TtC7CoreP2P16InMemoryKeychain_myIdentityKey, &unk_100595C50, &unk_1004AFD20);
  v5 = *(v0 + OBJC_IVAR____TtC7CoreP2P16InMemoryKeychain_pairedPeers);

  v6 = *(v0 + OBJC_IVAR____TtC7CoreP2P16InMemoryKeychain_pairedPeersWithIDs);

  return v0;
}

uint64_t InMemoryKeychain.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];
  v3 = v0[4];

  v4 = v0[5];

  sub_100016290(v0 + OBJC_IVAR____TtC7CoreP2P16InMemoryKeychain_myIdentityKey, &unk_100595C50, &unk_1004AFD20);
  v5 = *(v0 + OBJC_IVAR____TtC7CoreP2P16InMemoryKeychain_pairedPeers);

  v6 = *(v0 + OBJC_IVAR____TtC7CoreP2P16InMemoryKeychain_pairedPeersWithIDs);

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1001D3F40(uint64_t a1)
{
  v3 = *(*(sub_10005DC58(&unk_100595C50, &unk_1004AFD20) - 8) + 64);
  __chkstk_darwin();
  v5 = &v10 - v4;
  v6 = *v1;
  sub_1001D45C0(a1, &v10 - v4, type metadata accessor for NANIdentityKey);
  v7 = type metadata accessor for NANIdentityKey(0);
  (*(*(v7 - 8) + 56))(v5, 0, 1, v7);
  v8 = OBJC_IVAR____TtC7CoreP2P16InMemoryKeychain_myIdentityKey;
  swift_beginAccess();
  sub_1000B1B78(v5, v6 + v8, &unk_100595C50, &unk_1004AFD20);
  return swift_endAccess();
}

uint64_t sub_1001D4068@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7CoreP2P16InMemoryKeychain_myIdentityKey;
  swift_beginAccess();
  return sub_100012400(v3 + v4, a1, &unk_100595C50, &unk_1004AFD20);
}

uint64_t sub_1001D40DC()
{
  v1 = *(*(sub_10005DC58(&unk_100595C50, &unk_1004AFD20) - 8) + 64);
  __chkstk_darwin();
  v3 = &v8 - v2;
  v4 = *v0;
  v5 = type metadata accessor for NANIdentityKey(0);
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = OBJC_IVAR____TtC7CoreP2P16InMemoryKeychain_myIdentityKey;
  swift_beginAccess();
  sub_1000B1B78(v3, v4 + v6, &unk_100595C50, &unk_1004AFD20);
  return swift_endAccess();
}

uint64_t sub_1001D4228()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC7CoreP2P16InMemoryKeychain_pairedPeers;
  swift_beginAccess();
  v3 = *(v1 + v2);
  *(v1 + v2) = _swiftEmptyArrayStorage;

  v4 = OBJC_IVAR____TtC7CoreP2P16InMemoryKeychain_pairedPeersWithIDs;
  swift_beginAccess();
  v5 = *(v1 + v4);
  *(v1 + v4) = &_swiftEmptyDictionarySingleton;
}

uint64_t sub_1001D42E0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *v3;
  v5 = *a3;
  swift_beginAccess();
  v6 = *(v4 + v5);
}

uint64_t sub_1001D43E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  InMemoryKeychain.save(identity:for:)(a1, a2, a3);
  return 1;
}

uint64_t sub_1001D4434(uint64_t a1, uint64_t a2)
{
  v5 = *(*(sub_10005DC58(&unk_10058F740, &unk_100492AB0) - 8) + 64);
  __chkstk_darwin();
  v7 = &v10 - v6;
  v8 = *v2;
  swift_beginAccess();
  sub_10007FC88(a1, a2, v7);
  sub_100016290(v7, &unk_10058F740, &unk_100492AB0);
  swift_endAccess();
  return sub_1001D17A8();
}

uint64_t sub_1001D45C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1001D4648()
{
  result = qword_10058FE10;
  if (!qword_10058FE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058FE10);
  }

  return result;
}

uint64_t sub_1001D469C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001D46E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_1001D4744()
{
  v1 = v0;
  sub_10005DC58(qword_100597D50, &unk_10048D5E0);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

id sub_1001D4884()
{
  v1 = v0;
  sub_10005DC58(&unk_100597CE0, &qword_10048D610);
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

void *sub_1001D49D4()
{
  v1 = v0;
  v2 = *(type metadata accessor for AWDLPeer.AdvertisedService(0) - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_10058EC18, &qword_1004B1E90);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v2 + 72) * (v18 | (v12 << 6));
        sub_1001D45C0(*(v6 + 48) + v21, v5, type metadata accessor for AWDLPeer.AdvertisedService);
        result = sub_1001D6B5C(v5, *(v8 + 48) + v21, type metadata accessor for AWDLPeer.AdvertisedService);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
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
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_1001D4BE0()
{
  v1 = v0;
  sub_10005DC58(&unk_10059B1A0, &qword_10048D5F0);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_1001D4D20(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = static Hasher._hash(seed:_:)();
  v6 = -1 << *(v3 + 32);
  v7 = v5 & ~v6;
  if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  while (*(*(v3 + 48) + 8 * v7) != a1)
  {
    v7 = (v7 + 1) & v8;
    if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 0;
    }
  }

  v10 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v1;
  v14 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1001D4744();
    v12 = v14;
  }

  v13 = *(*(v12 + 48) + 8 * v7);
  sub_1001D5324(v7);
  result = v13;
  *v1 = v14;
  return result;
}

uint64_t sub_1001D4E10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for AWDLPeer.AdvertisedService(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v2;
  v10 = *v2;
  v11 = *(*v2 + 40);
  Hasher.init(_seed:)();
  v12 = *(a1 + 8);
  v14 = *(a1 + 24);
  v13 = *(a1 + 32);
  v15 = *(a1 + 40);
  v16 = *(a1 + 41);
  v46 = *(a1 + 16);
  v47 = v12;
  String.lowercased()();
  String.hash(into:)();

  v41 = v13;
  v42 = v14;
  String.lowercased()();
  String.hash(into:)();

  if (v15)
  {
    v17 = 7365749;
  }

  else
  {
    v17 = 7365492;
  }

  String.hash(into:)();

  v39 = v16;
  Hasher._combine(_:)(v16);
  v18 = Hasher._finalize()();
  v48 = v10;
  v19 = -1 << *(v10 + 32);
  v20 = v18 & ~v19;
  v45 = v10 + 56;
  if (((*(v10 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
  {
    v33 = 1;
    return (*(v6 + 56))(a2, v33, 1, v5);
  }

  v40 = v17;
  v37 = v5;
  v38 = a2;
  v43 = ~v19;
  v36 = v6;
  v44 = *(v6 + 72);
  while (1)
  {
    v21 = v44 * v20;
    sub_1001D45C0(*(v48 + 48) + v44 * v20, v9, type metadata accessor for AWDLPeer.AdvertisedService);
    v22 = *(v9 + 2);
    v23 = *(v9 + 3);
    v24 = *(v9 + 4);
    v25 = v9[40];
    v26 = v9[41];
    v51 = *(v9 + 1);
    v52 = v22;
    v49 = v47;
    v50 = v46;
    sub_10005E2E4();
    if (StringProtocol.caseInsensitiveCompare<A>(_:)())
    {
      goto LABEL_6;
    }

    v51 = v23;
    v52 = v24;
    v49 = v42;
    v50 = v41;
    if (StringProtocol.caseInsensitiveCompare<A>(_:)())
    {
      goto LABEL_6;
    }

    v27 = v25 ? 7365749 : 7365492;
    if (v27 == v40)
    {
      break;
    }

    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();
    swift_bridgeObjectRelease_n();
    if (v28)
    {
      goto LABEL_16;
    }

LABEL_6:
    sub_1001D46E4(v9, type metadata accessor for AWDLPeer.AdvertisedService);
LABEL_7:
    v20 = (v20 + 1) & v43;
    if (((*(v45 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
      v33 = 1;
      a2 = v38;
      v5 = v37;
      v6 = v36;
      return (*(v6 + 56))(a2, v33, 1, v5);
    }
  }

  swift_bridgeObjectRelease_n();
LABEL_16:
  sub_1001D46E4(v9, type metadata accessor for AWDLPeer.AdvertisedService);
  if (v26 != v39)
  {
    goto LABEL_7;
  }

  v29 = v35;
  v30 = *v35;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32 = *v29;
  v51 = *v29;
  v6 = v36;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1001D49D4();
    v32 = v51;
  }

  a2 = v38;
  sub_1001D6B5C(*(v32 + 48) + v21, v38, type metadata accessor for AWDLPeer.AdvertisedService);
  sub_1001D54A8(v20);
  v33 = 0;
  *v29 = v51;
  v5 = v37;
  return (*(v6 + 56))(a2, v33, 1, v5);
}

uint64_t sub_1001D5218(unsigned __int8 a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = 1;
  v6 = static Hasher._hash(seed:bytes:count:)();
  v7 = -1 << *(v3 + 32);
  v8 = v6 & ~v7;
  if ((*(v3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v3 + 48) + v8) != a1)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        v10 = 0;
        v5 = 1;
        return v10 | (v5 << 8);
      }
    }

    v11 = *v1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v1;
    v15 = *v1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1001D4BE0();
      v13 = v15;
    }

    v10 = *(*(v13 + 48) + v8);
    sub_1001D57F8(v8);
    v5 = 0;
    *v1 = v15;
  }

  else
  {
    v10 = 0;
  }

  return v10 | (v5 << 8);
}

unint64_t sub_1001D5324(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(v3 + 48);
        v12 = (v11 + 8 * v6);
        v13 = *v12;
        v14 = static Hasher._hash(seed:_:)() & v7;
        if (v2 >= v9)
        {
          if (v14 >= v9 && v2 >= v14)
          {
LABEL_16:
            v17 = (v11 + 8 * v2);
            if (v2 != v6 || v17 >= v12 + 1)
            {
              *v17 = *v12;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v9 || v2 >= v14)
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

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1001D54A8(int64_t a1)
{
  v32 = type metadata accessor for AWDLPeer.AdvertisedService(0);
  v3 = *(v32 - 8);
  v4 = *(v3 + 64);
  result = __chkstk_darwin();
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;
    v13 = *v1;

    v14 = _HashTable.previousHole(before:)();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v15 = *(v3 + 72);
      v35 = v8;
      v36 = v9;
      v33 = v15;
      v34 = (v14 + 1) & v12;
      do
      {
        v16 = v15 * v11;
        sub_1001D45C0(*(v8 + 48) + v15 * v11, v7, type metadata accessor for AWDLPeer.AdvertisedService);
        v17 = *(v8 + 40);
        Hasher.init(_seed:)();
        v18 = *(v7 + 1);
        v19 = *(v7 + 2);
        v20 = *(v7 + 3);
        v21 = *(v7 + 4);
        v22 = v7[40];
        v23 = v12;
        v24 = v7[41];
        String.lowercased()();
        String.hash(into:)();

        String.lowercased()();
        String.hash(into:)();

        String.hash(into:)();

        v25 = v24;
        v12 = v23;
        Hasher._combine(_:)(v25);
        v26 = Hasher._finalize()();
        sub_1001D46E4(v7, type metadata accessor for AWDLPeer.AdvertisedService);
        v27 = v26 & v23;
        if (a1 >= v34)
        {
          if (v27 < v34)
          {
            v8 = v35;
            v15 = v33;
            goto LABEL_5;
          }

          v8 = v35;
          v15 = v33;
          if (a1 < v27)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v8 = v35;
          v15 = v33;
          if (v27 < v34 && a1 < v27)
          {
            goto LABEL_5;
          }
        }

        v28 = v15 * a1;
        if (v15 * a1 < v16 || *(v8 + 48) + v15 * a1 >= (*(v8 + 48) + v16 + v15))
        {
          swift_arrayInitWithTakeFrontToBack();
          goto LABEL_17;
        }

        a1 = v11;
        if (v28 != v16)
        {
          swift_arrayInitWithTakeBackToFront();
LABEL_17:
          a1 = v11;
        }

LABEL_5:
        v11 = (v11 + 1) & v12;
        v9 = v36;
      }

      while (((*(v36 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v29 = *(v8 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v31;
    ++*(v8 + 36);
  }

  return result;
}

unint64_t sub_1001D57F8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(v3 + 48);
        v12 = (v11 + v6);
        v13 = *(v11 + v6);
        v14 = static Hasher._hash(seed:bytes:count:)() & v7;
        if (v2 >= v9)
        {
          if (v14 >= v9 && v2 >= v14)
          {
LABEL_16:
            v17 = (v11 + v2);
            if (v2 != v6 || v17 >= v12 + 1)
            {
              *v17 = *v12;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v9 || v2 >= v14)
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

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

id sub_1001D5980@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  sub_100002B30((a1 + 1), (a2 + 1));
  *a2 = v4;

  return v4;
}

uint64_t sub_1001D59D0(uint64_t a1, char a2, uint64_t *a3)
{
  v53 = a3;
  v48 = *(type metadata accessor for NANPairedDeviceSharedAssociation(0) - 8);
  v5 = *(v48 + 64);
  __chkstk_darwin();
  v44 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v42 - v7;
  v9 = type metadata accessor for UUID();
  v45 = *(v9 - 8);
  v10 = *(v45 + 64);
  __chkstk_darwin();
  v52 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(sub_10005DC58(&qword_10058BAC0, &qword_100480E08) - 8) + 64);
  result = __chkstk_darwin();
  v49 = &v42 - v15;
  v16 = *(a1 + 16);
  if (v16)
  {
    v47 = *(result + 48);
    v17 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v46 = *(v14 + 72);
    v50 = (v45 + 32);
    v43 = (v45 + 8);
    while (1)
    {
      v51 = v16;
      v20 = v49;
      sub_100012400(v17, v49, &qword_10058BAC0, &qword_100480E08);
      v21 = *v50;
      v22 = v52;
      v23 = v9;
      (*v50)(v52, v20, v9);
      v24 = v20 + v47;
      v25 = v8;
      sub_1001D6B5C(v24, v8, type metadata accessor for NANPairedDeviceSharedAssociation);
      v26 = *v53;
      v28 = sub_10002A440(v22);
      v29 = *(v26 + 16);
      v30 = (v27 & 1) == 0;
      v31 = v29 + v30;
      if (__OFADD__(v29, v30))
      {
        break;
      }

      v32 = v27;
      if (*(v26 + 24) >= v31)
      {
        if ((a2 & 1) == 0)
        {
          sub_100196404();
        }
      }

      else
      {
        v33 = v53;
        sub_10018EA08(v31, a2 & 1);
        v34 = *v33;
        v35 = sub_10002A440(v52);
        if ((v32 & 1) != (v36 & 1))
        {
          goto LABEL_17;
        }

        v28 = v35;
      }

      v37 = *v53;
      if (v32)
      {
        v18 = *(v48 + 72) * v28;
        v19 = v44;
        sub_1001D45C0(v37[7] + v18, v44, type metadata accessor for NANPairedDeviceSharedAssociation);
        v8 = v25;
        sub_1001D46E4(v25, type metadata accessor for NANPairedDeviceSharedAssociation);
        v9 = v23;
        (*v43)(v52, v23);
        result = sub_1001D7894(v19, v37[7] + v18, type metadata accessor for NANPairedDeviceSharedAssociation);
      }

      else
      {
        v37[(v28 >> 6) + 8] |= 1 << v28;
        v9 = v23;
        v21(v37[6] + *(v45 + 72) * v28, v52, v23);
        v38 = v37[7] + *(v48 + 72) * v28;
        v8 = v25;
        result = sub_1001D6B5C(v25, v38, type metadata accessor for NANPairedDeviceSharedAssociation);
        v39 = v37[2];
        v40 = __OFADD__(v39, 1);
        v41 = v39 + 1;
        if (v40)
        {
          goto LABEL_16;
        }

        v37[2] = v41;
      }

      v17 += v46;
      a2 = 1;
      v16 = v51 - 1;
      if (v51 == 1)
      {
        return result;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001D5E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      *name = a1;
      v22 = a2 & 0xFFFFFFFFFFFFFFLL;
      if (qword_10058AA28 != -1)
      {
        swift_once();
      }

      v6 = static OS_dispatch_queue.nan;
      v12 = swift_allocObject();
      swift_weakInit();
      v19 = sub_1001D7918;
      v20 = v12;
      aBlock = _NSConcreteStackBlock;
      v16 = 1107296256;
      v17 = sub_1001C5BEC;
      v18 = &unk_100567558;
      v8 = _Block_copy(&aBlock);

      v13 = OBJC_IVAR____TtC7CoreP2P13AppleKeychain_notificationToken;
      swift_beginAccess();
      v10 = name;
      v11 = (a3 + v13);
      goto LABEL_10;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v5 = a2 & 0xFFFFFFFFFFFFFFFLL;
      if (qword_10058AA28 != -1)
      {
        swift_once();
      }

      v6 = static OS_dispatch_queue.nan;
      v7 = swift_allocObject();
      swift_weakInit();
      v19 = sub_1001D7A54;
      v20 = v7;
      aBlock = _NSConcreteStackBlock;
      v16 = 1107296256;
      v17 = sub_1001C5BEC;
      v18 = &unk_100567580;
      v8 = _Block_copy(&aBlock);

      v9 = OBJC_IVAR____TtC7CoreP2P13AppleKeychain_notificationToken;
      swift_beginAccess();
      v10 = (v5 + 32);
      v11 = (a3 + v9);
LABEL_10:
      a3 = notify_register_dispatch(v10, v11, v6, v8);
      swift_endAccess();
      _Block_release(v8);
      return a3;
    }
  }

  _StringGuts._slowWithCString<A>(_:)();
  if (!v3)
  {
    return v23;
  }

  return a3;
}

unint64_t sub_1001D60E8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v47 = a1;
  v48 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v49 = v8;
  v50 = 0;
  v51 = v11 & v9;
  v52 = a2;
  v53 = a3;

  sub_1001E849C(&v45);
  v12 = v45;
  if (!v45)
  {
    goto LABEL_25;
  }

  sub_100085188(v46, v44);
  v13 = *a5;
  result = sub_10007CFD0(v12);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v15;
  if (*(v13 + 24) < v19)
  {
    sub_10018F4B4(v19, a4 & 1);
    v21 = *a5;
    result = sub_10007CFD0(v12);
    if ((v20 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    type metadata accessor for CFString(0);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_100196A18();
    result = v26;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (v20)
  {
LABEL_11:
    v23 = *a5;
    v24 = 32 * result;
    sub_100002B30(*(*a5 + 56) + 32 * result, v43);
    sub_100002A00(v44);

    v25 = *(v23 + 56);
    sub_100002A00((v25 + v24));
    sub_100085188(v43, (v25 + v24));
    goto LABEL_15;
  }

LABEL_13:
  v27 = *a5;
  *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
  *(v27[6] + 8 * result) = v12;
  result = sub_100085188(v44, (v27[7] + 32 * result));
  v28 = v27[2];
  v18 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v18)
  {
    v27[2] = v29;
LABEL_15:
    sub_1001E849C(&v45);
    v12 = v45;
    if (v45)
    {
      v20 = 1;
      do
      {
        sub_100085188(v46, v44);
        v33 = *a5;
        result = sub_10007CFD0(v12);
        v35 = *(v33 + 16);
        v36 = (v34 & 1) == 0;
        v18 = __OFADD__(v35, v36);
        v37 = v35 + v36;
        if (v18)
        {
          goto LABEL_26;
        }

        a4 = v34;
        if (*(v33 + 24) < v37)
        {
          sub_10018F4B4(v37, 1);
          v38 = *a5;
          result = sub_10007CFD0(v12);
          if ((a4 & 1) != (v39 & 1))
          {
            goto LABEL_8;
          }
        }

        if (a4)
        {
          v30 = *a5;
          v31 = 32 * result;
          sub_100002B30(*(*a5 + 56) + 32 * result, v43);
          sub_100002A00(v44);

          v32 = *(v30 + 56);
          sub_100002A00((v32 + v31));
          sub_100085188(v43, (v32 + v31));
        }

        else
        {
          v40 = *a5;
          *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
          *(v40[6] + 8 * result) = v12;
          result = sub_100085188(v44, (v40[7] + 32 * result));
          v41 = v40[2];
          v18 = __OFADD__(v41, 1);
          v42 = v41 + 1;
          if (v18)
          {
            goto LABEL_27;
          }

          v40[2] = v42;
        }

        sub_1001E849C(&v45);
        v12 = v45;
      }

      while (v45);
    }

LABEL_25:
    sub_1000E290C();
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t _s7CoreP2P16InMemoryKeychainC4save8identity3for8publiclySbAA19LongTermPairingKeysV14PublicIdentityV_AA14NANServiceNameVSbtF_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for StorageEntry(0);
  v35 = *(v8 - 8);
  v9 = *(v35 + 64);
  __chkstk_darwin();
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *(type metadata accessor for LongTermPairingKeys.PublicIdentity(0) - 8);
  v12 = *(v36 + 64);
  __chkstk_darwin();
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001D45C0(a1, v14, type metadata accessor for LongTermPairingKeys.PublicIdentity);
  swift_beginAccess();
  v15 = *(v4 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = *(v4 + 16);
  v17 = v37;
  *(v4 + 16) = 0x8000000000000000;
  v19 = sub_10007D1A4(a2, a3);
  v20 = v17[2];
  v21 = (v18 & 1) == 0;
  v22 = v20 + v21;
  if (__OFADD__(v20, v21))
  {
    __break(1u);
    goto LABEL_14;
  }

  v23 = v18;
  if (v17[3] >= v22)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *(v4 + 16) = v17;
      if (v18)
      {
        goto LABEL_9;
      }
    }

    else
    {
      sub_100196B98();
      v17 = v37;
      *(v4 + 16) = v37;
      if (v23)
      {
        goto LABEL_9;
      }
    }

LABEL_8:
    v26 = type metadata accessor for LongTermPairingKeys.PrivateIdentity(0);
    v27 = *(*(v26 - 8) + 56);
    v34 = a2;
    v27(v11, 1, 1, v26);
    sub_100016290(v11, &qword_10058FEC8, &qword_100493978);
    v27(v11, 1, 1, v26);
    *&v11[*(v8 + 20)] = _swiftEmptyArrayStorage;
    sub_1001A99F0(v19, v34, a3, v11, v17);

    goto LABEL_9;
  }

  sub_10018FA54(v22, isUniquelyReferenced_nonNull_native);
  v17 = v37;
  v24 = sub_10007D1A4(a2, a3);
  if ((v23 & 1) != (v25 & 1))
  {
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v19 = v24;
  *(v4 + 16) = v17;
  if ((v23 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_9:
  a3 = v17[7] + *(v35 + 72) * v19;
  v8 = *(v8 + 20);
  v17 = *(a3 + v8);
  v28 = swift_isUniquelyReferenced_nonNull_native();
  *(a3 + v8) = v17;
  if ((v28 & 1) == 0)
  {
LABEL_14:
    v17 = sub_100116A7C(0, v17[2] + 1, 1, v17);
    *(a3 + v8) = v17;
  }

  v29 = v36;
  v31 = v17[2];
  v30 = v17[3];
  if (v31 >= v30 >> 1)
  {
    v17 = sub_100116A7C(v30 > 1, v31 + 1, 1, v17);
    *(a3 + v8) = v17;
  }

  v17[2] = v31 + 1;
  sub_1001D6B5C(v14, v17 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v31, type metadata accessor for LongTermPairingKeys.PublicIdentity);
  swift_endAccess();
  sub_1001D17A8();
  return 1;
}

uint64_t sub_1001D67A4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  v26 = a3 >> 8;
  v27 = a3 >> 16;
  v28 = a3 >> 24;
  v29 = HIDWORD(a3);
  v30 = a3 >> 40;
  v4 = type metadata accessor for SymmetricKey();
  v32 = *(v4 - 8);
  v33 = v4;
  v5 = *(v32 + 64);
  __chkstk_darwin();
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v31 = &v26 - v8;
  SymmetricKey.withUnsafeBytes<A>(_:)();
  v9 = v34;
  v10 = P256.KeyAgreement.PublicKey.rawRepresentation.getter();
  v12 = v11;
  v37 = v9;
  v35 = &type metadata for Data;
  v36 = &protocol witness table for Data;
  *&v34 = v10;
  *(&v34 + 1) = v11;
  v13 = sub_100029B34(&v34, &type metadata for Data);
  v14 = *v13;
  v15 = v13[1];
  sub_10000AB0C(v9, *(&v9 + 1));
  sub_10000AB0C(v10, v12);
  sub_100178A18(v14, v15);
  sub_1000124C8(v10, v12);
  sub_1000124C8(v9, *(&v9 + 1));
  sub_100002A00(&v34);
  v34 = v37;
  SymmetricKey.init<A>(data:)();
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1004817D0;
  *(v16 + 32) = v3;
  v17 = v27;
  *(v16 + 33) = v26;
  *(v16 + 34) = v17;
  v18 = v29;
  *(v16 + 35) = v28;
  *(v16 + 36) = v18;
  *(v16 + 37) = v30;
  v19 = sub_10002D874(v16);
  v21 = v20;

  *&v34 = v19;
  *(&v34 + 1) = v21;
  if (qword_10058A9F8 != -1)
  {
    swift_once();
  }

  v37 = xmmword_10058FDF8;
  sub_10000AB0C(xmmword_10058FDF8, *(&xmmword_10058FDF8 + 1));
  static SHA256Digest.byteCount.getter();
  type metadata accessor for SHA256();
  sub_1001D469C(&qword_10059AB90, &type metadata accessor for SHA256);
  sub_1000BA0A4();
  v22 = v31;
  static HKDF.deriveKey<A, B>(inputKeyMaterial:salt:info:outputByteCount:)();
  sub_1000124C8(v37, *(&v37 + 1));
  sub_1000124C8(v34, *(&v34 + 1));
  v23 = v33;
  v24 = *(v32 + 8);
  v24(v7, v33);
  SymmetricKey.withUnsafeBytes<A>(_:)();
  v24(v22, v23);
  return v34;
}

uint64_t sub_1001D6B5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001D6BCC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_1001D6BF4()
{
  result = qword_10058FEF0;
  if (!qword_10058FEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058FEF0);
  }

  return result;
}

BOOL sub_1001D6C84(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = sub_10005DC58(&unk_100597500, &unk_1004939B0);
  return _s7CoreP2P32NANPairedDeviceSharedAssociationV23__derived_struct_equalsySbAC_ACtFZ_0(a1 + *(v4 + 48), v3);
}

uint64_t sub_1001D6D08()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for LongTermPairingKeys.PrivateIdentity(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for LongTermPairingKeys.PairedDevices();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_1001D6E20()
{
  type metadata accessor for LongTermPairingKeys.Identity(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for P256.Signing.PublicKey();
    if (v1 <= 0x3F)
    {
      sub_1001D6F04();
      if (v2 <= 0x3F)
      {
        sub_1001D7038(319, &unk_100590098, &type metadata accessor for Date, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1001D6F04()
{
  if (!qword_100599180)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100599180);
    }
  }
}

void sub_1001D6F7C()
{
  type metadata accessor for SymmetricKey();
  if (v0 <= 0x3F)
  {
    sub_1001D7038(319, &unk_100590138, type metadata accessor for LongTermPairingKeys.PublicIdentity, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1001D7038(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1001D70C4()
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

void sub_1001D71AC()
{
  sub_1001D7038(319, &qword_10059A640, type metadata accessor for NANIdentityKey, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1001D72B4()
{
  sub_1001D7038(319, &qword_100590700, type metadata accessor for LongTermPairingKeys.PrivateIdentity, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_1001D7038(319, &unk_100590708, type metadata accessor for LongTermPairingKeys.PublicIdentity, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1001D73BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v9 = a4(0);
  v10 = *(v9 - 8);
  if (*(v10 + 84) == a2)
  {
    v11 = *(v10 + 48);

    return v11(a1, a2, v9);
  }

  else
  {
    v13 = a5(0);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + *(a3 + 20);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1001D74CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v11 = a5(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a3)
  {
    v13 = *(v12 + 56);

    return v13(a1, a2, a2, v11);
  }

  else
  {
    v15 = a6(0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + *(a4 + 20);

    return v16(v17, a2, a2, v15);
  }
}

uint64_t sub_1001D760C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1001D76A0()
{
  result = qword_1005907C8;
  if (!qword_1005907C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005907C8);
  }

  return result;
}

unint64_t sub_1001D76F8()
{
  result = qword_1005907D0;
  if (!qword_1005907D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005907D0);
  }

  return result;
}

unint64_t sub_1001D7750()
{
  result = qword_1005907D8;
  if (!qword_1005907D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005907D8);
  }

  return result;
}

unint64_t sub_1001D77A4()
{
  result = qword_1005907E8;
  if (!qword_1005907E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005907E8);
  }

  return result;
}

uint64_t sub_1001D77F8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10005DD04(&qword_1005907F8, &qword_100493E28);
    sub_1001D469C(a2, type metadata accessor for LongTermPairingKeys.PublicIdentity);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001D7894(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t sub_1001D793C()
{
  result = qword_100590870;
  if (!qword_100590870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590870);
  }

  return result;
}

unint64_t sub_1001D7994()
{
  result = qword_100590878;
  if (!qword_100590878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590878);
  }

  return result;
}

unint64_t sub_1001D79EC()
{
  result = qword_100590880;
  if (!qword_100590880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590880);
  }

  return result;
}

uint64_t sub_1001D7A7C()
{
  v0 = type metadata accessor for Logger();
  sub_100068888(v0, qword_100590888);
  sub_100037644(v0, qword_100590888);
  return Logger.init(subsystem:category:)();
}

char *static Sandbox.check()()
{
  result = sub_100477110();
  if ((result & 1) == 0)
  {
    v1 = result;
    if (qword_10058AA00 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100037644(v2, qword_100590888);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11 = v6;
      *v5 = 136315138;
      v7 = errno.getter();
      result = strerror(v7);
      if (!result)
      {
        __break(1u);
        return result;
      }

      v8 = String.init(cString:)();
      v10 = sub_100002320(v8, v9, &v11);

      *(v5 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v3, v4, "Sandbox check failed with error: %s", v5, 0xCu);
      sub_100002A00(v6);
    }

    return v1;
  }

  return result;
}

uint64_t AWDLElectionMetric.rawValue.getter(uint64_t result)
{
  if ((result & 0x100000000) != 0)
  {
    return *&asc_1004940A8[4 * result];
  }

  return result;
}

uint64_t AWDLElectionMetric.init(from:)(uint64_t *a1)
{
  v3 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  sub_100029B34(v7, v7[3]);
  v4 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
  v5 = sub_1000395B0(v4);
  sub_100002A00(v7);
  sub_100002A00(a1);
  return v5 | ((HIDWORD(v5) & 1) << 32);
}

uint64_t AWDLElectionMetric.encode(to:)(void *a1, uint64_t a2)
{
  v3 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  if ((a2 & 0x100000000) != 0)
  {
    v4 = *&asc_1004940A8[4 * a2];
  }

  sub_100031694(v6, v6[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return sub_100002A00(v6);
}

void AWDLElectionMetric.hash(into:)(int a1, uint64_t a2)
{
  if ((a2 & 0x100000000) != 0)
  {
    LODWORD(a2) = *&asc_1004940A8[4 * a2];
  }

  Hasher._combine(_:)(a2);
}

Swift::Int AWDLElectionMetric.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  if ((a1 & 0x100000000) != 0)
  {
    LODWORD(a1) = *&asc_1004940A8[4 * a1];
  }

  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int sub_1001D8048()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  Hasher.init(_seed:)();
  if (v2 == 1)
  {
    v1 = *&asc_1004940A8[4 * v1];
  }

  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void sub_1001D80A8()
{
  v1 = *v0;
  if (*(v0 + 4) == 1)
  {
    v1 = *&asc_1004940A8[4 * v1];
  }

  Hasher._combine(_:)(v1);
}

Swift::Int sub_1001D80EC()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  Hasher.init(_seed:)();
  if (v2 == 1)
  {
    v1 = *&asc_1004940A8[4 * v1];
  }

  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

BOOL sub_1001D8198(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0x100000000) != 0)
  {
    if (a1 <= 2)
    {
      if (a1)
      {
        if (a1 == 1)
        {
          return (a2 & 0x100000000) != 0 && a2 == 1;
        }

        else
        {
          return (a2 & 0x100000000) != 0 && a2 == 2;
        }
      }

      else
      {
        return (a2 & 0x100000000) != 0 && !a2;
      }
    }

    else if (a1 > 4)
    {
      if (a1 == 5)
      {
        return (a2 & 0x100000000) != 0 && a2 == 5;
      }

      else
      {
        return (a2 & 0x100000000) != 0 && a2 > 5;
      }
    }

    else if (a1 == 3)
    {
      return (a2 & 0x100000000) != 0 && a2 == 3;
    }

    else
    {
      return (a2 & 0x100000000) != 0 && a2 == 4;
    }
  }

  else
  {
    if ((a2 & 0x100000000) != 0)
    {
      return 0;
    }

    return a1 == a2;
  }
}

BOOL sub_1001D8268(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0x100000000) != 0)
  {
    LODWORD(a1) = *&asc_1004940A8[4 * a1];
  }

  if ((a2 & 0x100000000) != 0)
  {
    LODWORD(a2) = *&asc_1004940A8[4 * a2];
  }

  return a1 < a2;
}

unint64_t sub_1001D828C()
{
  result = qword_1005908A0;
  if (!qword_1005908A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005908A0);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for AWDLElectionMetric(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for NANAttribute.RangingInformation(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for NANAttribute.RangingInformation(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 5) = v3;
  return result;
}

uint64_t sub_1001D8340(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001D835C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

BOOL static AWDLStatistics.LowLatencyStatistics.__derived_struct_equals(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (!_s7CoreP2P14AWDLStatisticsO20LowLatencyStatisticsV13ConfigurationV23__derived_struct_equalsySbAG_AGtFZ_0(a1, a2))
  {
    return 0;
  }

  v4 = type metadata accessor for AWDLStatistics.LowLatencyStatistics(0);
  v5 = &a1[*(v4 + 20)];
  v6 = *(v5 + 11);
  v33[10] = *(v5 + 10);
  v33[11] = v6;
  v33[12] = *(v5 + 12);
  v34 = *(v5 + 26);
  v7 = *(v5 + 7);
  v33[6] = *(v5 + 6);
  v33[7] = v7;
  v8 = *(v5 + 9);
  v33[8] = *(v5 + 8);
  v33[9] = v8;
  v9 = *(v5 + 3);
  v33[2] = *(v5 + 2);
  v33[3] = v9;
  v10 = *(v5 + 5);
  v33[4] = *(v5 + 4);
  v33[5] = v10;
  v11 = *(v5 + 1);
  v33[0] = *v5;
  v33[1] = v11;
  v13 = *(v5 + 264);
  v12 = *(v5 + 280);
  v31[2] = *(v5 + 248);
  v31[3] = v13;
  v14 = *(v5 + 232);
  v15 = *(v5 + 344);
  v31[7] = *(v5 + 328);
  v31[8] = v15;
  v16 = *(v5 + 312);
  v31[5] = *(v5 + 296);
  v31[6] = v16;
  v31[4] = v12;
  v31[0] = *(v5 + 216);
  v31[1] = v14;
  v17 = &a2[*(v4 + 20)];
  v18 = *(v17 + 11);
  v35[10] = *(v17 + 10);
  v35[11] = v18;
  v35[12] = *(v17 + 12);
  v36 = *(v17 + 26);
  v19 = *(v17 + 7);
  v35[6] = *(v17 + 6);
  v35[7] = v19;
  v20 = *(v17 + 9);
  v35[8] = *(v17 + 8);
  v35[9] = v20;
  v21 = *(v17 + 3);
  v35[2] = *(v17 + 2);
  v35[3] = v21;
  v22 = *(v17 + 5);
  v35[4] = *(v17 + 4);
  v35[5] = v22;
  v23 = *(v17 + 1);
  v35[0] = *v17;
  v35[1] = v23;
  v24 = *(v17 + 296);
  v25 = *(v17 + 328);
  v26 = *(v17 + 344);
  v32[6] = *(v17 + 312);
  v32[7] = v25;
  v32[8] = v26;
  v27 = *(v17 + 264);
  v28 = *(v17 + 280);
  v32[2] = *(v17 + 248);
  v32[3] = v27;
  v29 = *(v17 + 232);
  v32[4] = v28;
  v32[5] = v24;
  v32[0] = *(v17 + 216);
  v32[1] = v29;
  if (!_s7CoreP2P14AWDLStatisticsO20LowLatencyStatisticsV7TrafficV6CountsV23__derived_struct_equalsySbAI_AItFZ_0(v33, v35))
  {
    return 0;
  }

  return (_s7CoreP2P14AWDLStatisticsO20LowLatencyStatisticsV7TrafficV10HistogramsV23__derived_struct_equalsySbAI_AItFZ_0(v31, v32) & 1) != 0;
}

uint64_t AWDLStatistics.ServiceRejection.eventPayload.getter()
{
  v8 = &_swiftEmptyDictionarySingleton;
  v7 = &type metadata for String;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v0;
  sub_1000731DC(&v5, 0);
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = &type metadata for String;
  v5 = v1;
  v6 = v2;
  sub_1000731DC(&v5, 1);
  v3 = sub_1001D85F8(v8);

  return v3;
}

uint64_t sub_1001D85F8(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7;
    if (!v5)
    {
      break;
    }

LABEL_8:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v7 << 6);
    v12 = *(*(a1 + 48) + v11);
    sub_100002B30(*(a1 + 56) + 32 * v11, &v28);
    LOBYTE(v27) = v12;
    sub_100012400(&v27, v26, &qword_100590BB0, &qword_100494948);
    sub_1000840B4();
    if (swift_dynamicCast())
    {
      v13 = 0x6553657669746361;
      if (v12)
      {
        v13 = 0x64657463656A6572;
      }

      v24 = v13;
      v14 = 0xED00006563697672;
      if (v12)
      {
        v14 = 0xEF65636976726553;
      }

      v23 = v14;
      sub_100016290(&v27, &qword_100590BB0, &qword_100494948);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_100117A50(0, v8[2] + 1, 1, v8);
      }

      v16 = v8[2];
      v15 = v8[3];
      v17 = v16 + 1;
      if (v16 >= v15 >> 1)
      {
        v19 = sub_100117A50((v15 > 1), v16 + 1, 1, v8);
        v17 = v16 + 1;
        v8 = v19;
      }

      v8[2] = v17;
      v18 = &v8[3 * v16];
      v18[4] = v24;
      v18[5] = v23;
      v18[6] = v25;
    }

    else
    {
      sub_100016290(&v27, &qword_100590BB0, &qword_100494948);
    }
  }

  while (1)
  {
    v7 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    if (v7 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v7);
    ++v9;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  if (v8[2])
  {
    sub_10005DC58(&qword_10058F340, &qword_1004948F0);
    v20 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v20 = &_swiftEmptyDictionarySingleton;
  }

  v27 = v20;

  sub_100236478(v21, 1, &v27);

  return v27;
}

uint64_t sub_1001D88C0(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7;
    if (!v5)
    {
      break;
    }

LABEL_8:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v7 << 6);
    v12 = *(*(a1 + 48) + v11);
    sub_100002B30(*(a1 + 56) + 32 * v11, &v27);
    LOBYTE(v26) = v12;
    sub_100012400(&v26, v25, &qword_100590BA8, &qword_100494940);
    sub_1000840B4();
    if (swift_dynamicCast())
    {
      if (v12 <= 2)
      {
        if (v12)
        {
          if (v12 == 1)
          {
            v23 = 0xE700000000000000;
            v13 = 0x6172666E49796DLL;
          }

          else
          {
            v23 = 0xE900000000000061;
            v13 = 0x72666E4972656570;
          }
        }

        else
        {
          v23 = 0xE700000000000000;
          v13 = 0x65636976726573;
        }
      }

      else if (v12 > 4)
      {
        if (v12 == 5)
        {
          v22 = 0xD000000000000011;
          v23 = 0x80000001004B5FF0;
          goto LABEL_24;
        }

        v23 = 0xE800000000000000;
        v13 = 0x44495353656D6173;
      }

      else if (v12 == 3)
      {
        v23 = 0xE500000000000000;
        v13 = 0x424453796DLL;
      }

      else
      {
        v23 = 0xE700000000000000;
        v13 = 0x42445372656570;
      }

      v22 = v13;
LABEL_24:
      sub_100016290(&v26, &qword_100590BA8, &qword_100494940);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_100117A50(0, v8[2] + 1, 1, v8);
      }

      v15 = v8[2];
      v14 = v8[3];
      v16 = v15 + 1;
      if (v15 >= v14 >> 1)
      {
        v18 = sub_100117A50((v14 > 1), v15 + 1, 1, v8);
        v16 = v15 + 1;
        v8 = v18;
      }

      v8[2] = v16;
      v17 = &v8[3 * v15];
      v17[4] = v22;
      v17[5] = v23;
      v17[6] = v24;
    }

    else
    {
      sub_100016290(&v26, &qword_100590BA8, &qword_100494940);
    }
  }

  while (1)
  {
    v7 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    if (v7 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v7);
    ++v9;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  if (v8[2])
  {
    sub_10005DC58(&qword_10058F340, &qword_1004948F0);
    v19 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v19 = &_swiftEmptyDictionarySingleton;
  }

  v26 = v19;

  sub_100236478(v20, 1, &v26);

  return v26;
}

uint64_t sub_1001D8C38(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7;
    if (!v5)
    {
      break;
    }

LABEL_8:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v7 << 6);
    v12 = *(*(a1 + 48) + v11);
    sub_100002B30(*(a1 + 56) + 32 * v11, &v27);
    LOBYTE(v26) = v12;
    sub_100012400(&v26, v25, &qword_100590BA0, &qword_100494938);
    sub_1000840B4();
    if (swift_dynamicCast())
    {
      if (v12)
      {
        if (v12 == 1)
        {
          v22 = 0x616974696E497369;
          v23 = 0xEB00000000726F74;
          goto LABEL_16;
        }

        v23 = 0xE800000000000000;
        v13 = 0x6E6F697461727564;
      }

      else
      {
        v23 = 0xE700000000000000;
        v13 = 0x65636976726573;
      }

      v22 = v13;
LABEL_16:
      sub_100016290(&v26, &qword_100590BA0, &qword_100494938);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_100117A50(0, v8[2] + 1, 1, v8);
      }

      v15 = v8[2];
      v14 = v8[3];
      v16 = v15 + 1;
      if (v15 >= v14 >> 1)
      {
        v18 = sub_100117A50((v14 > 1), v15 + 1, 1, v8);
        v16 = v15 + 1;
        v8 = v18;
      }

      v8[2] = v16;
      v17 = &v8[3 * v15];
      v17[4] = v22;
      v17[5] = v23;
      v17[6] = v24;
    }

    else
    {
      sub_100016290(&v26, &qword_100590BA0, &qword_100494938);
    }
  }

  while (1)
  {
    v7 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    if (v7 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v7);
    ++v9;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  if (v8[2])
  {
    sub_10005DC58(&qword_10058F340, &qword_1004948F0);
    v19 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v19 = &_swiftEmptyDictionarySingleton;
  }

  v26 = v19;

  sub_100236478(v20, 1, &v26);

  return v26;
}

uint64_t sub_1001D8F1C(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7;
    if (!v5)
    {
      break;
    }

LABEL_8:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v7 << 6);
    v12 = *(*(a1 + 48) + v11);
    sub_100002B30(*(a1 + 56) + 32 * v11, &v28);
    LOBYTE(v27) = v12;
    sub_100012400(&v27, v26, &qword_100590B98, &qword_100494930);
    sub_1000840B4();
    if (swift_dynamicCast())
    {
      v13 = 0x65636976726573;
      if (v12)
      {
        v13 = 0x6E6F73616572;
      }

      v24 = v13;
      v14 = 0xE700000000000000;
      if (v12)
      {
        v14 = 0xE600000000000000;
      }

      v23 = v14;
      sub_100016290(&v27, &qword_100590B98, &qword_100494930);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_100117A50(0, v8[2] + 1, 1, v8);
      }

      v16 = v8[2];
      v15 = v8[3];
      v17 = v16 + 1;
      if (v16 >= v15 >> 1)
      {
        v19 = sub_100117A50((v15 > 1), v16 + 1, 1, v8);
        v17 = v16 + 1;
        v8 = v19;
      }

      v8[2] = v17;
      v18 = &v8[3 * v16];
      v18[4] = v24;
      v18[5] = v23;
      v18[6] = v25;
    }

    else
    {
      sub_100016290(&v27, &qword_100590B98, &qword_100494930);
    }
  }

  while (1)
  {
    v7 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    if (v7 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v7);
    ++v9;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  if (v8[2])
  {
    sub_10005DC58(&qword_10058F340, &qword_1004948F0);
    v20 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v20 = &_swiftEmptyDictionarySingleton;
  }

  v27 = v20;

  sub_100236478(v21, 1, &v27);

  return v27;
}

uint64_t sub_1001D91C8(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7;
    if (!v5)
    {
      break;
    }

LABEL_8:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v7 << 6);
    v12 = *(*(a1 + 48) + v11);
    sub_100002B30(*(a1 + 56) + 32 * v11, &v29);
    LOBYTE(v28) = v12;
    sub_100012400(&v28, v27, &qword_100590B88, &qword_100494920);
    sub_1000840B4();
    if (swift_dynamicCast())
    {
      v13 = 0x73657479427874;
      v14 = 0xE700000000000000;
      switch(v12)
      {
        case 1:
          v13 = 0x73657479427872;
          break;
        case 2:
          v14 = 0xED00006E6F697461;
          v13 = 0x7275446C61746F74;
          break;
        case 3:
          v13 = 0xD000000000000012;
          v14 = 0x80000001004B5790;
          break;
        case 4:
          v13 = 0xD000000000000012;
          v14 = 0x80000001004B57B0;
          break;
        case 5:
          v13 = 0xD000000000000011;
          v14 = 0x80000001004B57D0;
          break;
        case 6:
          v14 = 0xEE00746E756F4372;
          v13 = 0x6565506C61746F74;
          break;
        case 7:
          v13 = 0xD000000000000011;
          v14 = 0x80000001004B53D0;
          break;
        case 8:
          v13 = 0xD00000000000001DLL;
          v14 = 0x80000001004B5800;
          break;
        case 9:
          v13 = 0xD000000000000018;
          v14 = 0x80000001004B5820;
          break;
        case 10:
          v14 = 0xEF746E756F436465;
          v13 = 0x6C62616E45667370;
          break;
        case 11:
          v14 = 0xEB000000006E6F69;
          v13 = 0x737265566C647761;
          break;
        case 12:
          v13 = 0xD000000000000016;
          v14 = 0x80000001004B5400;
          break;
        case 13:
          v13 = 0xD000000000000010;
          v14 = 0x80000001004B5440;
          break;
        case 14:
          v13 = 0xD000000000000015;
          v14 = 0x80000001004B5850;
          break;
        case 15:
          v13 = 0xD000000000000010;
          v14 = 0x80000001004B54A0;
          break;
        case 16:
          v13 = 0xD000000000000015;
          v14 = 0x80000001004B5870;
          break;
        case 17:
          v14 = 0xEE006D726F667461;
          v13 = 0x6C507265646E6573;
          break;
        case 18:
          v14 = 0xEC00000049535352;
          v13 = 0x676E697472617473;
          break;
        case 19:
          v14 = 0xEB0000000065646FLL;
          v13 = 0x4D6F727465526E69;
          break;
        case 20:
          v14 = 0xEF6C656E6E616843;
          v13 = 0x7366446F54617363;
          break;
        case 21:
          v13 = 0xD000000000000011;
          v14 = 0x80000001004B58C0;
          break;
        case 22:
          v14 = 0xEC00000065646F4DLL;
          v13 = 0x79786F7250736664;
          break;
        case 23:
          v15 = 1718379891;
          goto LABEL_37;
        case 24:
          v15 = 1919247728;
LABEL_37:
          v13 = v15 | 0x4453734900000000;
          v14 = 0xE900000000000042;
          break;
        case 25:
          v13 = 0xD000000000000013;
          v14 = 0x80000001004B5900;
          break;
        case 26:
          v13 = 0xD000000000000015;
          v14 = 0x80000001004B5920;
          break;
        case 27:
          v13 = 0xD000000000000015;
          v14 = 0x80000001004B5940;
          break;
        case 28:
          v13 = 0xD000000000000017;
          v14 = 0x80000001004B5620;
          break;
        case 29:
          v13 = 0xD000000000000015;
          v14 = 0x80000001004B5960;
          break;
        default:
          break;
      }

      v24 = v14;
      v25 = v13;
      sub_100016290(&v28, &qword_100590B88, &qword_100494920);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_100117A50(0, v8[2] + 1, 1, v8);
      }

      v17 = v8[2];
      v16 = v8[3];
      v18 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        v20 = sub_100117A50((v16 > 1), v17 + 1, 1, v8);
        v18 = v17 + 1;
        v8 = v20;
      }

      v8[2] = v18;
      v19 = &v8[3 * v17];
      v19[4] = v25;
      v19[5] = v24;
      v19[6] = v26;
    }

    else
    {
      sub_100016290(&v28, &qword_100590B88, &qword_100494920);
    }
  }

  while (1)
  {
    v7 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    if (v7 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v7);
    ++v9;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  if (v8[2])
  {
    sub_10005DC58(&qword_10058F340, &qword_1004948F0);
    v21 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v21 = &_swiftEmptyDictionarySingleton;
  }

  v28 = v21;

  sub_100236478(v22, 1, &v28);

  return v28;
}

uint64_t sub_1001D9864(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  v13 = _swiftEmptyArrayStorage;
  while (1)
  {
    v14 = v12;
    if (!v10)
    {
      break;
    }

LABEL_8:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v16 = v15 | (v12 << 6);
    v17 = *(*(a1 + 48) + v16);
    sub_100002B30(*(a1 + 56) + 32 * v16, &v34);
    LOBYTE(v33) = v17;
    sub_100012400(&v33, v32, a2, a3);
    sub_1000840B4();
    if (swift_dynamicCast())
    {
      v18 = a4(v17);
      v28 = v19;
      v29 = v18;
      sub_100016290(&v33, a2, a3);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_100117A50(0, v13[2] + 1, 1, v13);
      }

      v21 = v13[2];
      v20 = v13[3];
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        v24 = sub_100117A50((v20 > 1), v21 + 1, 1, v13);
        v22 = v21 + 1;
        v13 = v24;
      }

      v13[2] = v22;
      v23 = &v13[3 * v21];
      v23[4] = v29;
      v23[5] = v28;
      v23[6] = v31;
    }

    else
    {
      sub_100016290(&v33, a2, a3);
    }
  }

  while (1)
  {
    v12 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    if (v12 >= v11)
    {
      break;
    }

    v10 = *(v7 + 8 * v12);
    ++v14;
    if (v10)
    {
      goto LABEL_8;
    }
  }

  if (v13[2])
  {
    sub_10005DC58(&qword_10058F340, &qword_1004948F0);
    v25 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v25 = &_swiftEmptyDictionarySingleton;
  }

  v33 = v25;

  sub_100236478(v26, 1, &v33);

  return v33;
}

uint64_t sub_1001D9B14(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7;
    if (!v5)
    {
      break;
    }

LABEL_8:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v7 << 6);
    v12 = *(*(a1 + 48) + v11);
    sub_100002B30(*(a1 + 56) + 32 * v11, &v27);
    LOBYTE(v26) = v12;
    sub_100012400(&v26, v25, &qword_100590B60, &qword_1004948F8);
    sub_1000840B4();
    if (swift_dynamicCast())
    {
      if (v12 <= 3)
      {
        if (v12 > 1)
        {
          if (v12 == 2)
          {
            v23 = 0x6269726373627573;
            v13 = 0xEE00746E756F4365;
          }

          else
          {
            v23 = 0xD000000000000016;
            v13 = 0x80000001004B7050;
          }
        }

        else if (v12)
        {
          v23 = 0x436873696C627570;
          v13 = 0xEC000000746E756FLL;
        }

        else
        {
          v23 = 0x664F7265626D756ELL;
          v13 = 0xEC00000073707041;
        }
      }

      else if (v12 <= 5)
      {
        if (v12 == 4)
        {
          v23 = 0xD000000000000016;
          v13 = 0x80000001004B7070;
        }

        else
        {
          v23 = 0xD000000000000011;
          v13 = 0x80000001004B7090;
        }
      }

      else if (v12 == 6)
      {
        v23 = 0xD000000000000013;
        v13 = 0x80000001004B70B0;
      }

      else
      {
        v23 = 0xD00000000000001BLL;
        if (v12 == 7)
        {
          v13 = 0x80000001004B70D0;
        }

        else
        {
          v13 = 0x80000001004B70F0;
        }
      }

      v22 = v13;
      sub_100016290(&v26, &qword_100590B60, &qword_1004948F8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_100117A50(0, v8[2] + 1, 1, v8);
      }

      v15 = v8[2];
      v14 = v8[3];
      v16 = v15 + 1;
      if (v15 >= v14 >> 1)
      {
        v18 = sub_100117A50((v14 > 1), v15 + 1, 1, v8);
        v16 = v15 + 1;
        v8 = v18;
      }

      v8[2] = v16;
      v17 = &v8[3 * v15];
      v17[4] = v23;
      v17[5] = v22;
      v17[6] = v24;
    }

    else
    {
      sub_100016290(&v26, &qword_100590B60, &qword_1004948F8);
    }
  }

  while (1)
  {
    v7 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    if (v7 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v7);
    ++v9;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  if (v8[2])
  {
    sub_10005DC58(&qword_10058F340, &qword_1004948F0);
    v19 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v19 = &_swiftEmptyDictionarySingleton;
  }

  v26 = v19;

  sub_100236478(v20, 1, &v26);

  return v26;
}

uint64_t sub_1001D9F1C(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7;
    if (!v5)
    {
      break;
    }

LABEL_8:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v7 << 6);
    v12 = *(*(a1 + 48) + v11);
    sub_100002B30(*(a1 + 56) + 32 * v11, &v27);
    LOBYTE(v26) = v12;
    sub_100012400(&v26, v25, &qword_100590B58, &qword_1004948E8);
    sub_1000840B4();
    if (swift_dynamicCast())
    {
      if (v12 > 5)
      {
        if (v12 > 8)
        {
          if (v12 == 9)
          {
            v23 = 0xD00000000000001BLL;
            v13 = 0x80000001004B7130;
          }

          else
          {
            v23 = 0xD000000000000023;
            if (v12 == 10)
            {
              v13 = 0x80000001004B7150;
            }

            else
            {
              v13 = 0x80000001004B7180;
            }
          }
        }

        else if (v12 == 6)
        {
          v23 = 0xD00000000000001BLL;
          v13 = 0x80000001004B70D0;
        }

        else if (v12 == 7)
        {
          v23 = 0xD00000000000001BLL;
          v13 = 0x80000001004B70F0;
        }

        else
        {
          v23 = 0xD000000000000019;
          v13 = 0x80000001004B7110;
        }
      }

      else if (v12 > 2)
      {
        if (v12 == 3)
        {
          v23 = 0xD000000000000016;
          v13 = 0x80000001004B7070;
        }

        else if (v12 == 4)
        {
          v23 = 0xD000000000000011;
          v13 = 0x80000001004B7090;
        }

        else
        {
          v23 = 0xD000000000000013;
          v13 = 0x80000001004B70B0;
        }
      }

      else if (v12)
      {
        if (v12 == 1)
        {
          v23 = 0x6269726373627573;
          v13 = 0xEE00746E756F4365;
        }

        else
        {
          v23 = 0xD000000000000016;
          v13 = 0x80000001004B7050;
        }
      }

      else
      {
        v23 = 0x436873696C627570;
        v13 = 0xEC000000746E756FLL;
      }

      v22 = v13;
      sub_100016290(&v26, &qword_100590B58, &qword_1004948E8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_100117A50(0, v8[2] + 1, 1, v8);
      }

      v15 = v8[2];
      v14 = v8[3];
      v16 = v15 + 1;
      if (v15 >= v14 >> 1)
      {
        v18 = sub_100117A50((v14 > 1), v15 + 1, 1, v8);
        v16 = v15 + 1;
        v8 = v18;
      }

      v8[2] = v16;
      v17 = &v8[3 * v15];
      v17[4] = v23;
      v17[5] = v22;
      v17[6] = v24;
    }

    else
    {
      sub_100016290(&v26, &qword_100590B58, &qword_1004948E8);
    }
  }

  while (1)
  {
    v7 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    if (v7 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v7);
    ++v9;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  if (v8[2])
  {
    sub_10005DC58(&qword_10058F340, &qword_1004948F0);
    v19 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v19 = &_swiftEmptyDictionarySingleton;
  }

  v26 = v19;

  sub_100236478(v20, 1, &v26);

  return v26;
}

uint64_t AWDLStatistics.TrafficRegistrationStart.eventPayload.getter(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  v4 = HIBYTE(a4);
  v7 = a4;
  v8 = HIBYTE(a4);
  v16 = &_swiftEmptyDictionarySingleton;
  v15 = &type metadata for String;
  v14[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14[1] = v9;
  sub_100073230(v14, 0);
  v15 = &type metadata for UInt32;
  if ((a2 & 0xFF00000000) == 0x300000000)
  {
    v10 = 0;
  }

  else
  {
    v10 = a2;
  }

  LODWORD(v14[0]) = v10;
  sub_100073230(v14, 1);
  v15 = &type metadata for UInt32;
  if ((a3 & 0xFF00000000) == 0x300000000)
  {
    v11 = 0;
  }

  else
  {
    v11 = a3;
  }

  LODWORD(v14[0]) = v11;
  sub_100073230(v14, 2);
  v15 = &type metadata for Bool;
  LOBYTE(v14[0]) = BYTE6(a3) & 1;
  sub_100073230(v14, 3);
  v15 = &type metadata for Bool;
  LOBYTE(v14[0]) = HIBYTE(a3) & 1;
  sub_100073230(v14, 4);
  if (v7 != 2)
  {
    v15 = &type metadata for Bool;
    LOBYTE(v14[0]) = v7 & 1;
    sub_100073230(v14, 5);
  }

  if (v8 != 2)
  {
    v15 = &type metadata for Bool;
    LOBYTE(v14[0]) = v4 & 1;
    sub_100073230(v14, 6);
  }

  v12 = sub_1001D88C0(v16);

  return v12;
}

uint64_t AWDLStatistics.TrafficRegistrationStop.duration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AWDLStatistics.TrafficRegistrationStop(0) + 24);
  v4 = type metadata accessor for DispatchTimeInterval();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AWDLStatistics.TrafficRegistrationStop.duration.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AWDLStatistics.TrafficRegistrationStop(0) + 24);
  v4 = type metadata accessor for DispatchTimeInterval();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AWDLStatistics.TrafficRegistrationStop.init(service:isInitiator:duration:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  v6 = *(type metadata accessor for AWDLStatistics.TrafficRegistrationStop(0) + 24);
  v7 = type metadata accessor for DispatchTimeInterval();
  v8 = *(*(v7 - 8) + 32);

  return v8(a4 + v6, a3, v7);
}

uint64_t AWDLStatistics.TrafficRegistrationStop.eventPayload.getter()
{
  v10 = &_swiftEmptyDictionarySingleton;
  v1 = *v0;
  v9 = &type metadata for String;
  v8[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8[1] = v2;
  sub_100073284(v8, 0);
  v3 = *(v0 + 8);
  v9 = &type metadata for Bool;
  LOBYTE(v8[0]) = v3;
  sub_100073284(v8, 1);
  v4 = v0 + *(type metadata accessor for AWDLStatistics.TrafficRegistrationStop(0) + 24);
  v5 = DispatchTimeInterval.rawSeconds.getter();
  v9 = &type metadata for Int;
  v8[0] = v5;
  sub_100073284(v8, 2);
  v6 = sub_1001D8C38(v10);

  return v6;
}

uint64_t AWDLStatistics.Failure.Reason.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x526E496B63757473;
  }

  if (a1 == 1)
  {
    return 0x536E496B63757473;
  }

  return 0xD000000000000014;
}

uint64_t sub_1001DA8C0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x536E496B63757473;
  v4 = 0xEB000000006E6163;
  v5 = 0x80000001004B6030;
  if (v2 != 1)
  {
    v3 = 0xD000000000000014;
    v4 = 0x80000001004B6030;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x526E496B63757473;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xEC0000006F727465;
  }

  v8 = 0x536E496B63757473;
  if (*a2 == 1)
  {
    v5 = 0xEB000000006E6163;
  }

  else
  {
    v8 = 0xD000000000000014;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x526E496B63757473;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xEC0000006F727465;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

unint64_t sub_1001DA9D0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7CoreP2P14AWDLStatisticsO7FailureV6ReasonO8rawValueAGSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_1001DAA00(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC0000006F727465;
  v4 = 0xEB000000006E6163;
  v5 = 0x536E496B63757473;
  if (v2 != 1)
  {
    v5 = 0xD000000000000014;
    v4 = 0x80000001004B6030;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x526E496B63757473;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

Swift::Int sub_1001DAA74()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001DAB2C()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1001DABD0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t AWDLStatistics.Failure.eventPayload.getter(uint64_t a1, char a2)
{
  v11 = &_swiftEmptyDictionarySingleton;
  v10 = &type metadata for String;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v3;
  sub_1000732D8(&v8, 0);
  if (a2)
  {
    v4 = 0x536E496B63757473;
    if (a2 == 1)
    {
      v5 = 0xEB000000006E6163;
    }

    else
    {
      v4 = 0xD000000000000014;
      v5 = 0x80000001004B6030;
    }
  }

  else
  {
    v5 = 0xEC0000006F727465;
    v4 = 0x526E496B63757473;
  }

  v10 = &type metadata for String;
  v8 = v4;
  v9 = v5;
  sub_1000732D8(&v8, 1);
  v6 = sub_1001D8F1C(v11);

  return v6;
}

uint64_t AWDLStatistics.Failure.hash(into:)()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();

  String.hash(into:)();
}

Swift::Int AWDLStatistics.Failure.hashValue.getter()
{
  Hasher.init(_seed:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();

  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1001DAF40()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return AWDLStatistics.Failure.hashValue.getter();
}

uint64_t sub_1001DAF4C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();

  String.hash(into:)();
}

Swift::Int sub_1001DB028()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();

  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t AWDLStatistics.LowLatencyStatistics.Configuration.selfPreSessionStartInfra.setter(uint64_t result)
{
  *(v1 + 32) = result;
  *(v1 + 36) = WORD2(result);
  return result;
}

uint64_t AWDLStatistics.LowLatencyStatistics.Configuration.selfPostSessionStartInfra.setter(uint64_t result)
{
  *(v1 + 40) = result;
  *(v1 + 44) = WORD2(result);
  return result;
}

uint64_t AWDLStatistics.LowLatencyStatistics.Configuration.peerPreSessionStartInfra.setter(uint64_t result)
{
  *(v1 + 48) = result;
  *(v1 + 52) = WORD2(result);
  return result;
}

uint64_t AWDLStatistics.LowLatencyStatistics.Configuration.peerPostSessionStartInfra.setter(uint64_t result)
{
  *(v1 + 56) = result;
  *(v1 + 60) = WORD2(result);
  return result;
}

uint64_t AWDLStatistics.LowLatencyStatistics.Configuration.sessionDuration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AWDLStatistics.LowLatencyStatistics.Configuration(0) + 80);
  v4 = type metadata accessor for DispatchTimeInterval();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AWDLStatistics.LowLatencyStatistics.Configuration.sessionDuration.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AWDLStatistics.LowLatencyStatistics.Configuration(0) + 80);
  v4 = type metadata accessor for DispatchTimeInterval();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AWDLStatistics.LowLatencyStatistics.Configuration.idleSlotsForScanCount.setter(uint64_t a1)
{
  result = type metadata accessor for AWDLStatistics.LowLatencyStatistics.Configuration(0);
  *(v1 + *(result + 84)) = a1;
  return result;
}

uint64_t AWDLStatistics.LowLatencyStatistics.Configuration.syncErrorsCount.setter(uint64_t a1)
{
  result = type metadata accessor for AWDLStatistics.LowLatencyStatistics.Configuration(0);
  *(v1 + *(result + 88)) = a1;
  return result;
}

uint64_t AWDLStatistics.LowLatencyStatistics.Configuration.channelSequenceMismatchCount.setter(uint64_t a1)
{
  result = type metadata accessor for AWDLStatistics.LowLatencyStatistics.Configuration(0);
  *(v1 + *(result + 92)) = a1;
  return result;
}

uint64_t AWDLStatistics.LowLatencyStatistics.Configuration.preferred5GChannelCount.setter(uint64_t a1)
{
  result = type metadata accessor for AWDLStatistics.LowLatencyStatistics.Configuration(0);
  *(v1 + *(result + 96)) = a1;
  return result;
}

uint64_t AWDLStatistics.LowLatencyStatistics.Configuration.preferred2GChannelCount.setter(uint64_t a1)
{
  result = type metadata accessor for AWDLStatistics.LowLatencyStatistics.Configuration(0);
  *(v1 + *(result + 100)) = a1;
  return result;
}

uint64_t AWDLStatistics.LowLatencyStatistics.Configuration.parentNodeChangeCount.setter(uint64_t a1)
{
  result = type metadata accessor for AWDLStatistics.LowLatencyStatistics.Configuration(0);
  *(v1 + *(result + 104)) = a1;
  return result;
}

uint64_t AWDLStatistics.LowLatencyStatistics.Configuration.rootNodeChangeCount.setter(uint64_t a1)
{
  result = type metadata accessor for AWDLStatistics.LowLatencyStatistics.Configuration(0);
  *(v1 + *(result + 108)) = a1;
  return result;
}

uint64_t AWDLStatistics.LowLatencyStatistics.Configuration.watchDogOrChipTrapCount.setter(uint64_t a1)
{
  result = type metadata accessor for AWDLStatistics.LowLatencyStatistics.Configuration(0);
  *(v1 + *(result + 112)) = a1;
  return result;
}

uint64_t AWDLStatistics.LowLatencyStatistics.Configuration.activeServicesBitMap.setter(int a1)
{
  result = type metadata accessor for AWDLStatistics.LowLatencyStatistics.Configuration(0);
  *(v1 + *(result + 116)) = a1;
  return result;
}

uint64_t AWDLStatistics.LowLatencyStatistics.Configuration.isRemoteCameraActive.setter(char a1)
{
  result = type metadata accessor for AWDLStatistics.LowLatencyStatistics.Configuration(0);
  *(v1 + *(result + 120)) = a1;
  return result;
}

uint64_t AWDLStatistics.LowLatencyStatistics.Configuration.isRemoteScreenActive.setter(char a1)
{
  result = type metadata accessor for AWDLStatistics.LowLatencyStatistics.Configuration(0);
  *(v1 + *(result + 124)) = a1;
  return result;
}